class MeesController < ApplicationController
    def index
      @mees = Mee.order("created_at DESC").includes(:user)
    end
  
    def new
      @mee = Mee.new 
    end
  
  
    def create
      mee = Mee.new(mee_params)
      if mee.save
        binding.pry
        redirect_to root_path
      else
        @mees = Mee.all
        render :new
      end
    end
  
    def destroy
      @mee = Mee.find(params[:id])
    if @mee.destroy
      redirect_to root_path
  
    end
    end
    def edit
      @mee = Mee.find(params[:id])
    end
    def update
      @mee = Mee.find(params[:id])
     if @mee.update(mee_params)
      redirect_to root_path
     end
    end
    def show
      @mee = Mee.find(params[:id])
    end
  
    private
    def mee_params
      params.require(:mee).permit(:q_a, :q_b, :q_1, :q_2, :q_3, :q_4, :q_5, :q_6, :q_7, :image).merge(user_id: current_user.id)
    end
  end
  