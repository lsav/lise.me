require 'time'

# Prompt for title & format it correctly
def get_input(str)
  print str
  STDIN.gets.strip
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
layout: post
title: #{title}
---
EOS
    end
  end
  system "c9 open #{path}"  # Open draft for editing
end

# Publish an existing draft
desc "Publish existing draft"
task :publish do
  drafts = Dir.glob("_drafts/*")
  if drafts.length == 0
    answer = get_input('No drafts to publish. Create a new draft? ')
    if ['y', 'yes', 'Yes'].include? answer
      Rake::Task[':draft'].invoke
    end
  else
    puts "Found #{drafts.length} drafts:"
    drafts.each_with_index { |val, index| puts "    #{index}: #{val.gsub('_drafts/', '')}" }
    source = drafts[get_input('Which draft would you like to publish? ').to_i]
    
    # create a new file in _posts with the date
    target = "_posts/#{Time.now.getlocal("-07:00").strftime('%Y-%m-%d')}-#{source.gsub('_drafts/', '')}"
    File.open(target, 'w') do |file| file.write <<-EOS
---
date: #{Time.now.getlocal("-07:00")}
EOS
    end
    
    # copy everything except opening line from draft file
    File.readlines(source).drop(1).each do |line| 
      File.open(target, "a+") { |file| file.write(line) }
    end
    
    # delete the draft & announce the new post
    File.delete(source)
    puts "Post created at #{target}"
    
  end
end