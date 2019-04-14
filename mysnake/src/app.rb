require_relative "view/ruby2d"
require_relative "model/state"
require_relative "../src/actions/actions"

class App
    def initialize
        @state = Model::initial_state
    end

    def Start
        @view = View::Ruby2dView.new(self)
        initial_state = Model::initial_state
        timer_thread = Thread.new {init_timer}
        @view.start(@state)
        #Indica esperar al que el timer se cierre 
        #antes de cerrar la ventana al finalizar 
        #la ejecución
        timer_thread.join
    end

    def init_timer
        loop do         
            if @state.gameover
                puts "End Game"
                puts "Score: #{@state.snake.positions.length}"
                break
            end
            #trigger movement   
            @state = Actions::move_snake(@state)
            @view.render(@state)
            sleep 0.5
        end
    end

    #Example=> :change_direction, Model::Direction::UP
    def send_action(action, params)
        #Example=> :change_direction, Model::Direction::UP
        new_state = Actions.send(action, @state, params)
        if new_state.hash != @state.hash
            @state = new_state
            @view.render(@state)
        end        
    end
end

app = App.new
app.Start