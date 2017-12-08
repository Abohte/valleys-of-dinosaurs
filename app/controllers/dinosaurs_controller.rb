class DinosaursController < ApplicationController
  def index
    @dinosaurs = Dinosaur.all
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
  end

  def new
    @dinosaur = Dinosaur.new
    load_valleys
  end

  def create

    @dinosaur = Dinosaur.new(dinosaur_params)

    if @dinosaur.save
      redirect_to @dinosaur
    else
      render 'new'
    end
  end

  def edit
    @dinosaur = Dinosaur.find(params[:id])
    load_valleys
  end

  def update
    @dinosaur = Dinosaur.find(params[:id])

    if @dinosaur.update_attributes(dinosaur_params)
      redirect_to @dinosaur
    else
      render 'edit'
    end
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])

    @dinosaur.destroy

    redirect_to root_path
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :age, :image_url, :valley_id)
  end

  def load_valleys
    @valleys = Valley.all
  end

end
