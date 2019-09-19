# frozen_string_literal: true

class ClientesController < ApplicationController
  def index; end

  def new
    @clientes = Cliente.new
  end

  def create
    @clientes = current_user.clientes.build(client_params)
    if @clientes.save
      flash[:success] = 'Cliente inserido com sucesso'
      redirect_to current_user_path
    else
      render 'new'
    end
  end

  private

  def client_params
    params.require(:cliente).permit(:nome, :telefone, :morada, :concelho, :telefone, :nomecontacto)
  end
end
