class ProdutosController < ApplicationController
  def index
    @produtos = Produto.order(:id).page params[:page]
  end

  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(produto_params)

    if @produto.save
      redirect_to @produto, :notice => 'Cadastro criado com sucesso!'
    else
      render :new
    end
  end

  def show
    @produto = Produto.find(params[:id])
    @fotos = @produto.fotos
    @foto = Foto.new # para o form
  end

  def edit
  end

  def update
  end

  private

  def produto_params
    params.require(:produto).permit(:cod, :categoria_id, :modelo_id, :tensao, :potencia, :cor, :bocal, :lumens, :qtd_caixa, :descricao, :preco_unitario, :preco_caixa, :preco_master ,:parent_id)
  end
end
