module Kubelogic
  module Security
    class Payload

      DEFAULTS = {
        algorithm: 'RS256'
      }

      def initialize(opts = {})
        @opts = DEFAULTS.merge(opts)
        unless opts[:private_key].nil?
          @secret = decode_key(opts[:private_key])
        end
      end

      def sign(payload)
        JWT.encode(payload, @secret, @opts[:algorithm])
      end

      def verify(payload)
        JWT.decode(payload, @opts[:public_key], true, @opts)
      end

      private

      def decode_key(key)
        OpenSSL::PKey::RSA.new(Base64.urlsafe_decode64(key))
      end

    end
  end
end
