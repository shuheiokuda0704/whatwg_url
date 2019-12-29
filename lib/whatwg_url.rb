require "whatwg_url/common"
require "whatwg_url/file"
require "whatwg_url/ftp"
require "whatwg_url/generic"
require "whatwg_url/http"
require "whatwg_url/https"
require "whatwg_url/ldap"
require "whatwg_url/mailto"
require "whatwg_url/rfc2396_parser"
require "whatwg_url/rfc3986_parser"
require "whatwg_url/version"
require "whatwg_url/whatwg_parser"

module WhatwgUrl
  class Error < StandardError; end
  class TypeError < StandardError; end

end