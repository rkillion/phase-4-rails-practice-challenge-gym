class ClientsController < ApplicationController
    
    def index
        clients = Client.all
        render json: clients
    end
    
    def show
        client = Client.find(params[:id])
        render json: client, serializer: ClientShowSerializerSerializer
    end

end
