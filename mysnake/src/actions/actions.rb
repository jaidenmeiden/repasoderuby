module Actions
    def self.move_snake(state)
        next_direction = state.next_direction
        next_position = calc_next_position(state)
        #verificar que la siguiente casilla es valida
        if position_is_valid(state, next_position)
            move_snake_to(state, next_position)
        else
            end_game(state)
        end
        #si no es valida -> termina el juego
        #si es valida -> movemos la serpiente
    end

    private

    def self.calc_next_position(state)
        curr_position = state.snake.positions.first
        case state.next_direction
        when Model::Direction::UP
            #Decrementar la fila
            return Model::Coord.new(
                curr_position.row - 1, 
                curr_position.col)
        when Model::Direction::RIGHT
            #Incrementar la columna
            return Model::Coord.new(
                curr_position.row, 
                curr_position.col + 1)
        when Model::Direction::DOWN
            #Incrementar la fila
            return Model::Coord.new(
                curr_position.row + 1, 
                curr_position.col)
        when Model::Direction::LEFT
            #Decrementar la columna
            return Model::Coord.new(
                curr_position.row, 
                curr_position.col - 1)
        end
    end

    def self.position_is_valid(state, position)
        # Verificar que este sobre la grilla
        #Opción 1
        #if position.row >= state.grid.rows ||
        #  position.row < 0) || 
        #  (position.col >= state.grid.cols ||
        #  position.col < 0
        #    return false
        #else
        #    return true
        #end
        
        #Opción 2
        is_invalid = ((position.row >= state.grid.rows ||
        position.row < 0) || 
        (position.col >= state.grid.cols ||
        position.col < 0))
        return false if is_invalid
        # Verificar que no este suyperponiendo a la serpiente
        return !(state.snake.positions.include? position)
    end

    def self.move_snake_to(state, next_position)
        # 
        # [(1,1),(1,0))]
        new_positions = [next_position] + state.snake.positions[0...-1]
        state.snake.positions = new_positions
        state
    end

    def self.end_game(state)
        state.gameover = true
        state
    end
end    