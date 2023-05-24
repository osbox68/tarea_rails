class Colaborator < ApplicationRecord
    include PgSearch::Model 

    pg_search_scope :search_full_text,
    against: {
        name: 'A',
        email: 'B',
        id: 'C',
    },
    using: {
        tsearch: {
            prefix: true,      # Coincidencias de prefijo
            any_word: true,    # Coincidencias intermedias
            dictionary: "spanish"  # Diccionario para búsqueda en español (opcional, reemplaza "spanish" según necesites)
        }
    }
    
end
