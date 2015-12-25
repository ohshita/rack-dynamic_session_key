require "rack/dynamic_session_key/version"

module Rack
  module DynamicSessionKey; end

  module Session
    module Abstract
      class ID
        def call_with_dynamic(env)
          @original_key ||= @key
          @key = @original_key.call(env) if @original_key.respond_to?(:call)
          call_without_dynamic(env)
        end

        alias_method :call_without_dynamic, :call
        alias_method :call, :call_with_dynamic
      end
    end
  end
end
