# frozen_string_literal: false
# = Copy and modify uri/https.rb
#

require_relative 'http'

module WhatwgUrl

  # The default port for HTTPS URIs is 443, and the scheme is 'https:' rather
  # than 'http:'. Other than that, HTTPS URIs are identical to HTTP URIs;
  # see URI::HTTP.
  class HTTPS < HTTP
    # A Default port of 443 for URI::HTTPS
    DEFAULT_PORT = 443
  end
  @@schemes['HTTPS'] = HTTPS
end