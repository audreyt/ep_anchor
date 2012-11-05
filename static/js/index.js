var $, acePostWriteDomLineHTML, aceAttribsToClasses, out$ = typeof exports != 'undefined' && exports || this;
$ = require('ep_etherpad-lite/static/js/rjquery').$;
out$.acePostWriteDomLineHTML = acePostWriteDomLineHTML = function(name, args){
  return $(args.node).find('.anchor').each(function(){
    var a, i$, ref$, len$, cls, c, ref1$, key, val;
    if (!$(this).children('a').length) {
      a = $('<a class="anchor">');
      for (i$ = 0, len$ = (ref$ = this.className.split(' ')).length; i$ < len$; ++i$) {
        cls = ref$[i$];
        if (/^anchor-/.exec(cls)) {
          $(a).addClass(cls);
          c = cls.slice(7);
          ref1$ = /^href/.exec(c)
            ? ['href', c.slice(4)]
            : /^title/.exec(c)
              ? ['title', c.slice(5)]
              : /^name/.exec(c) ? ['name', c.slice(4)] : void 8, key = ref1$[0], val = ref1$[1];
          $(a).attr(key, decodeURIComponent(val));
        }
      }
      return $(this).replaceWith($(a).html(this.innerHTML));
    }
  });
};
out$.aceAttribsToClasses = aceAttribsToClasses = function(name, arg$){
  var key;
  key = arg$.key;
  if (/^class-anchor/.exec(key)) {
    return [key.slice(6)];
  } else {
    return [];
  }
};