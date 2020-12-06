class Application

    def call(new)
        resp = Rack::Response.new

        time = Time.now.hour

        resp.write "The hour in military time is #{time}.\n"

        if time < 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end