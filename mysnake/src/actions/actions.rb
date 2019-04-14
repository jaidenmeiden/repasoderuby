module Actions
    def self.move_snake(state)
        next_direction = state.next_direction
        next_position = calc_next_position(state)
        #verificar que la siguiente casilla es valida
        if next_position_is_valid? (state, next_position)
            move_snake_to(state, next_position)
        else
            end_game(state)
        end
        #si no es valida -> termina el juego
        #si es valida -> movemos la serpiente
    end
end

def calc_next_position(state)
    case state.next_direction
    when UP
        #Decrementar la fila
        new_position = Model::Coord.new(
            new_position.row - 1, 
            new_position.col)
    when RIGHT
        #Incrementar la columna
        new_position = Model::Coord.new(
            new_position.row, 
            new_position.col + 1)
    when DOWN
        #Incrementar la fila
        new_position = Model::Coord.new(
            new_position.row + 1, 
            new_position.col)
    when LEFT
        #Decrementar la columna
        new_position = Model::Coord.new(
            new_position.row, 
            new_position.col - 1)
    end
end