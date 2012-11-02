description: 'Add anchor tag (link) pass-through support to Etherpad Lite.'
name: 'ep_anchor'
version: '0.0.1'
author:
  name: 'George Zahariev'
  email: 'z@georgezahariev.com'
dependencies: {}
engines:
  node: '*'
scripts:
  prepublish: '''
    ./node_modules/.bin/livescript -cj package.ls &&
    ./node_modules/.bin/livescript -bc -o static/js src/js
  '''
homepage: 'https://github.com/gkz/ep_anchor'
devDependencies:
  LiveScript: '1.1.x'
repository:
  type: 'git'