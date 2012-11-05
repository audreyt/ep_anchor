ep_anchor
=========
An Etherpad Lite plugin.
Requires the ep lite plugin `ep_stylish` to also be installed.

Adds anchor tag (link) pass-through support to Etherpad Lite.

Use (href, name, and title are all optional):

    <span class="anchor [anchor-href#{encodeURIComponent href}] [anchor-name#{encodeURIComponent name}] [anchor-title#{encodeURIComponent title}]">#{content}</span>

Development:

    npm run prepublish

to compile JS and package.json
