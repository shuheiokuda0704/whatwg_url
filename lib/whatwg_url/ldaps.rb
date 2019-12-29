# frozen_string_literal: false
# = Copy and modify uri/ldaps.rb
#

require_relative 'ldap'

module WhatwgUrl

  # The default port for LDAPS URIs is 636, and the scheme is 'ldaps:' rather
  # than 'ldap:'. Other than that, LDAPS URIs are identical to LDAP URIs;
  # see URI::LDAP.
  class LDAPS < LDAP
    # A Default port of 636 for URI::LDAPS
    DEFAULT_PORT = 636
  end
  @@schemes['LDAPS'] = LDAPS
end