package standard

import (
	// standard Caddy modules
	_ "git.sequentialread.com/forest/caddy/v2/caddyconfig/caddyfile"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddyhttp/standard"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddypki"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddypki/acmeserver"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddytls"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddytls/distributedstek"
	_ "git.sequentialread.com/forest/caddy/v2/modules/caddytls/standardstek"
	_ "git.sequentialread.com/forest/caddy/v2/modules/filestorage"
	_ "git.sequentialread.com/forest/caddy/v2/modules/logging"
	_ "git.sequentialread.com/forest/caddy/v2/modules/metrics"
)
