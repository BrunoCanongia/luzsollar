class ProdutosController < ApplicationController
  def index
    #@produtos = Produto.order(:id).page params[:page]
    @produtos = Produto.where("categoria_id = ?", params[:categoria_id]).page params[:page]
    @categoria_atual = params[:categoria_id]
    @categorias = Categoria.all
    @titulo = Categoria.find(params[:categoria_id]).categoria

    @links = {
      1 => '/super_led',
      2 => '/luminarias',
      3 => '/refletores',
      4 => '/eletronicas'
    }

    cor_destaque = {
      1 => '#43AFA4',
      2 => '#39B485',
      3 => '#A6163A',
      4 => '#F05F1E'
    }

    @cor_destaque = cor_destaque[@categoria_atual]

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
