module Rulers
  class Application
    def get_controller_and_action(env)
      # _ ==> is a normal variable name usually used
      # to store smth you will ignore or don't care about
      _, cont, action, after = env["PATH_INFO"].split('/', 4)
      cont = cont.capitalize
      cont += "Controller"

      # const_get ==> look up any name starting with a capital
      # letter - in this case, your controller class
      [Object.const_get(cont), action]
    end
  end
end
