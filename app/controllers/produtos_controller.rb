class ProdutosController < ApplicationController
  def index
    #@produtos = Produto.order(:id).page params[:page]
    @produtos = Produto.where("categoria_id = ?", params[:categoria_id]).where(parent_id: nil).page params[:page]
    @categoria_atual = params[:categoria_id]
    @categorias = Categoria.all
    @titulo = Categoria.find(params[:categoria_id]).categoria

    @links = {
      1 => '/super_led',
      2 => '/led',
      3 => '/eletronicas',
      4 => '/halogenas',
      5 => '/vapor',
      6 => '/luminarias',
      7 => '/refletores'
    }


    @cor_destaque = Categoria.find(params[:categoria_id]).color

  end


  def ajax_modelos
    @modelos = Categoria.find(params[:categoria_id]).modelos
    respond_to do |format|
      format.js
    end
  end

  def new
    @produto = Produto.new
    @categorias = Categoria.all
    @modelos = Categoria.first.modelos

    if !@categoria
      @categoria = Categoria.first
      @modelo = @categoria.modelos.first
    end

  end

  def create
    @produto = Produto.new(produto_params)
    @categorias = Categoria.all
    @modelos = Categoria.find(params[:produto][:categoria_id]).modelos

    @categoria = Categoria.find(params[:produto][:categoria_id])
    @modelo = Modelo.find(params[:produto][:modelo_id])

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
    @produto = Produto.find(params[:id])

    if @produto.update_attributes(produto_params)
      redirect_to @produto, :notice => 'Cadastro alterado!'
    else
      render :edit
    end
  end

  private

  def produto_params
    params.require(:produto).permit(:cod, :categoria_id, :modelo_id, :tensao, :potencia, :cor, :bocal, :lumens, :qtd_caixa, :descricao, :preco_unitario, :preco_caixa, :preco_master ,:parent_id)
  end
end
