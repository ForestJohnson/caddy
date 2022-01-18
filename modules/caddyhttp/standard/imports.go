package standard

import (
	// standard Caddy HTTP app modules
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/caddyauth"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/encode"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/encode/brotli"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/encode/gzip"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/encode/zstd"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/fileserver"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/headers"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/map"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/push"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/requestbody"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/reverseproxy"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/reverseproxy/fastcgi"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/rewrite"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/templates"
)
