require! 'ep_etherpad-lite/static/js/rjquery'.$

export ace-post-write-dom-line-HTML = (name, args) ->
  $ args.node .find '.anchor' .each ->
    unless $ this .children 'a' .length
      a = $ '<a class="anchor">'
      for cls in @class-name.split ' ' when /^anchor-/ is cls
        $ a .add-class cls
        c = cls.slice 7
        [key, val] = if /^href/ is c
          [\href c.slice 4]
        else if /^title/ is c
          [\title c.slice 5]
        else if /^name/ is c
          [\name c.slice 4]
        $ a .attr key, decode-URI-component val
      
      $ this .replace-with <| $ a .html @inner-HTML

export ace-attribs-to-classes = (name, {key}) ->
  if /^class-anchor/ is key
    [key.slice 6]
  else
    []
