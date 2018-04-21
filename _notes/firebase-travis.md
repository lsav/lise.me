This document contains instructions for setting up a Jekyll site to be hosted on Firebase, with push-to-deploy using Github and Travis CI.

## Firebase

### Install NodeJS

On Ubuntu:

```
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
```

On Windows: download [installer](https://nodejs.org/en/#download).

### Firebase CLI

```
npm install -g firebase-tools
firebase login
```

From the Jekyll project's root directory:

```
firebase init
```

You want "hosting." This will create two files, ```firebase.json``` and ```.firebaserc``` in the project directory.

Overwrite ```firebase.json``` with the following:

```
{
  "hosting": {
    "public": "_site",
    "ignore": [
      "**/.*",
      "firebase.json",
      "rakefile.rb"
    ],
  }
}
```

(This tells firebase to deploy the ```_site``` folder; otherwise, it tries to find and use the ```public``` folder instead.)

You can also add whatever other ignores you want.

You can check out the result with ```firebase serve```.

## Travis

Generate a Firebase CI token for use with Travis:

```
firebase login:ci
```

On [travis-ci.org](https://travis-ci.org/), enable Travis on the website repository. Under "Settings" for that repository, add an environment variable, ```FIREBASE_TOKEN```, with the token Firebase just generated.

Add the [.travis.yml](https://github.com/lsav/lsav.github.io/blob/firebase/.travis.yml) file to the repository root.

Somethings you might want to change:

```
branches:
  only:
  - firebase
```

Currently I'm only triggering Travis on this branch. Maybe you want to change that.

```
script:
  - set -e
  - JEKYLL_ENV=production bundle exec jekyll build
```

I use the ```JEKYLL_ENV``` variable to set whether or not to add the Google Analytics tag. Maybe you don't need that, or use something different.
