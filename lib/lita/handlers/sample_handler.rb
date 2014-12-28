module Lita
  module Handlers
    class SampleHandler < Handler
      config :element

      # Temperature routes
      route(/^!execute\s*(.*)/i, :execute)

      def execute(response)
        Lita.logger.debug response.matches[0][0] # Gotta deref it this way.  '!' appears of optional matcher isn't matched
        Lita.logger.debug response.user
        response.reply 'yeah'
      end
    end
    Lita.register_handler(SampleHandler)
  end
end
