require! 'ep_etherpad-lite/static/js/rjquery'.$

export ace-post-write-dom-line-HTML = (name, args) ->
  $ args.node .find '.anchor' .each ->
    unless $ this .children 'a' .length
      insides = @innerHTML
      a = $ '<a class="anchor">'
      for cls in @className.split(/ /) when /^anchor-/.test cls
        $ a .add-class cls
        c = cls.slice 7
        [key, val] = if /^href/.test c
          ['href' c.slice 4]
        else if /^title/.test c
          ['title' c.slice 5]
        else if /^name/.test c
          ['name' c.slice 4]
        $ a .attr key, decodeURIComponent val
      
      $ this .replace-with <| $ a .html insides

export ace-attribs-to-classes = (name, {key}) ->
  if /^class-anchor/.test key
    [key.slice 6]
  else
    []
