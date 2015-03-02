class FotosController < ApplicationController
  def new
  	@foto = Foto.new
  end

  def create
    @produto = Produto.find(params[:foto][:produto_id])

    cnt = @produto.fotos.count
    if cnt == 0
      params[:foto][:principal] = true
    else
      params[:foto][:principal] = false
    end

    # máximo de 3 fotos por produto
    if cnt >= 3
      redirect_to @produto, :notice => 'Máximo de 3 fotos por produto'
    else
      if @foto = Foto.create(foto_params)
        @produto = @foto.produto
        redirect_to @produto, :notice => 'Foto armazenada com sucesso!'
      end
    end
  	
  end

  def show
  	@foto = Foto.find(params[:id])
  end

  private

  def foto_params
	   params.require(:foto).permit(:avatar, :produto_id)
  end
end