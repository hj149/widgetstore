var path = require('path');
var conf = require(path.resolve(__filename,'../../fis-video-conf.js'));
fis.config.init(conf);
fis.config.merge({
    namespace :'fashion'
});

fis.config.set('roadmap.domain', 'http://vs5.bdstatic.com,http://vs6.bdstatic.com');

fis.config.set('pack', {
   'pkg/index_js.js': [
      '/static/ui/**.js',
      '/widget/**.js'
   ],
   'pkg/index.css' : [
	   "/static/page/layout.less",
	   '/widget/**.less'
   ]
});
