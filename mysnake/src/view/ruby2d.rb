require "ruby2d"

module View
    class Ruby2dView
        def initialize(app)
            @pixel_size = 50
            @app = app
        end

        def start(state) #Solo se llama una vez
            extend Ruby2D::DSL #DLS Esta especializado en aplicaciones gráficas
            set(
                title: "Snake", 
                width: @pixel_size * state.grid.cols, 
                height: @pixel_size * state.grid.rows)
            
            on :key_down do |event|
                # A key was pressed
                handle_key_event(event)
                puts event.key
            end            
                
            show
        end
        
        def render(state) #Se llama constantemente          
            render_food(state)
            render_snake(state)            
        end

        private

        def render_food(state)
            @food.remove if @food
            extend Ruby2D::DSL #DLS Esta especializado en aplicaciones gráficas
            food = state.food
            @food = Square.new(
                x: food.col * @pixel_size,
                y: food.row * @pixel_size,
                size: @pixel_size,
                color: 'yellow'
            )
        end

        def render_snake(state)
            # Opción 1
            #if @snake_positions
            #    @snake_positions.each do |pos|
            #        pos.remove
            #    end
            #end   
            # Opción 2
            @snake_positions.each(&:remove) if @snake_positions

            extend Ruby2D::DSL #DLS Esta especializado en aplicaciones gráficas
            snake = state.snake
            @snake_positions = snake.positions.map do |pos|
                Square.new(
                    x: pos.col * @pixel_size,
                    y: pos.row * @pixel_size,
                    size: @pixel_size,
                    color: 'green'
                )
            end
        end

        def handle_key_event(event)
            case event.key
            when "up"
                #Cambiar dirección hacia arriba
                @app.send_action(:change_direction, Model::Direction::UP)
            when "right"
                #Cambiar dirección hacia la derecha
                @app.send_action(:change_direction, Model::Direction::RIGHT)
            when "down"
                #Cambiar dirección hacia abajo
                @app.send_action(:change_direction, Model::Direction::DOWN)
            when "left"
                #Cambiar dirección hacia la izquierda
                @app.send_action(:change_direction, Model::Direction::LEFT)
            end
        end
    end
end