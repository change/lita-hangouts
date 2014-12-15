module Lita
  module Handlers
    class Hangouts < Handler
      class << self
        def default_config(config)
          config.namespace = nil
        end
      end

      route(/^hangouts!/i, :new_hangout, help: {
        "hangouts!" => "Creates a new Google hangout and pastes the link in the room."
      })

      def new_hangout(response)
        timestamp = Time.now.utc.strftime("%Y-%m-%d_T%H%M%S_UTC")
        namespace = Lita.config.handlers.hangouts.namespace
        return response.reply("Sorry, you must specify a Hangouts namespace in your lita_config") if namespace.nil?

        response.reply("https://plus.google.com/hangouts/_/#{namespace}/#{timestamp}")
      end
    end

    Lita.register_handler(Hangouts)
  end
end
