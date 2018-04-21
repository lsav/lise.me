require 'time'

# Prompt for title & format it correctly
def get_input(str)
  print str
  STDIN.gets.strip
end

# Publish a draft
def publish_draft(src)
  # create new file with with timestamp in _posts directory
  cur_time = Time.now.getlocal("-07:00")
  target = "_posts/#{cur_time.strftime('%Y-%m-%d')}-#{src.gsub('_drafts/', '')}"
  File.open(target, 'w') do |file| file.write <<-EOS
---
date: #{Time.now.getlocal("-07:00")}
EOS
  end
  
  # copy draft over, but remove the first line
  File.readlines(src).drop(1).each do |line| 
    File.open(target, "a+") { |file| file.write(line) }
  end
  
  # delete the draft & return path to new post
  File.delete(src)
  target
end

# Create new draft
desc "Create a new draft."
task :draft do
  title = get_input('Post title: ')
  filename = title.downcase.gsub(' ', '-').gsub(/[^0-9a-z-]/i, '')
  path = File.join("_drafts", "#{filename}.md")
  if File.exist?(path)
    puts "Draft already exists at #{path}."
  else
    File.open(path, 'w') do |file| file.write <<-EOS
---
title: #{title}
---
EOS
    end
  end
end

# build with correct variables
desc "Build site"
task :build do
  sh "JEKYLL_ENV=production bundle exec jekyll build"
end

# Publish an existing draft
desc "Publish existing draft"
task :publish do
  drafts = Dir.glob("_drafts/*")
  num = drafts.length
  
  if num == 0
    answer = get_input('No drafts to publish. Create a new draft? ')
    if ['y', 'yes', 'Yes'].include? answer
      Rake::Task[':draft'].invoke
    end
  else
    # check if "all" command was passed
    if ARGV[1] == "all"
      task :all do ; end
      drafts.each do |draft|
        publish_draft(draft)
      end
      puts "Published #{num} drafts."
    else
      puts "Found #{num} drafts:"
      drafts.each_with_index { |val, index| puts "\t#{index}: #{val.gsub('_drafts/', '')}" }
      src = drafts[get_input('Which draft would you like to publish? ').to_i]
      
      target = publish_draft(src)
      puts "Post created at #{target}"
    end
  end
end

# Default task is to make a new draft
task :default => [:build]
