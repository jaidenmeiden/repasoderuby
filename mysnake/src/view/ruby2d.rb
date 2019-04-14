require "ruby2d"

module View
    class Ruby2dView
        def initialize
            @pixel_size = 50
        end

        def start(state) #Solo se llama una vez
            extend Ruby2D::DSL #DLS Esta especializado en aplicaciones gráficas
            set(
                title: "Snake", 
                width: @pixel_size * state.grid.cols, 
                height: @pixel_size * state.grid.rows
            )
            show
        end
        
        def render(state) #Se llama constantemente          
            render_food(state)
            render_snake(state)            
        end

        private

        def render_food(state)
            extend Ruby2D::DSL #DLS Esta especializado en aplicaciones gráficas
            food = state.food
            Square.new(
                x: food.col * @pixel_size,
                y: food.row * @pixel_size,
                size: @pixel_size,
                color: 'yellow'
            )
        end

        def render_snake(state)
            extend Ruby2D::DSL #DLS Esta especializado en aplicaciones gráficas
            snake = state.snake
            snake.positions.each do |pos|
                Square.new(
                    x: pos.col * @pixel_size,
                    y: pos.row * @pixel_size,
                    size: @pixel_size,
                    color: 'green'
                )
            end
        end
    end
end