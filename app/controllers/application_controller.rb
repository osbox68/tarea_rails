class ApplicationController < ActionController::Base
    Pagy::DEFAULT[:items] = 3
    include Pagy::Backend   

    require 'pagy/extras/bootstrap'
    #Pagy::I18n.load(locale: 'es', filepath: 'config/locales/es.yml')
end
