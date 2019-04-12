#En este archivon se representa el estado de juego

module Model
    class Coord < Struct.new(row, col)
    end

    #Herencia
    class Food < Coord
    end

    class Snake < Struct.new(positions)
    end

    class Grid < Struct.new(rows, cols)
    end

    class State < Struct.new(snake, food, grid)
    end
end