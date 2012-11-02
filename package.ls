description: 'And Etherpad Lite Plugin. Adds anchor tag (link) pass-through support to Etherpad Lite.'
name: 'ep_anchor'
version: '0.0.2'
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
  url: 'git://github.com/gkz/ep_anchor.git'
