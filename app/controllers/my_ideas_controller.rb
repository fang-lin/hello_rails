class MyIdeasController < ApplicationController
  before_action :set_my_idea, only: [:show, :edit, :update, :destroy]

  # GET /my_ideas
  # GET /my_ideas.json
  def index
    @my_ideas = MyIdea.all
  end

  # GET /my_ideas/1
  # GET /my_ideas/1.json
  def show
  end

  # GET /my_ideas/new
  def new
    @my_idea = MyIdea.new
  end

  # GET /my_ideas/1/edit
  def edit
  end

  # POST /my_ideas
  # POST /my_ideas.json
  def create
    @my_idea = MyIdea.new(my_idea_params)

    respond_to do |format|
      if @my_idea.save
        format.html { redirect_to @my_idea, notice: 'My idea was successfully created.' }
        format.json { render :show, status: :created, location: @my_idea }
      else
        format.html { render :new }
        format.json { render json: @my_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_ideas/1
  # PATCH/PUT /my_ideas/1.json
  def update
    respond_to do |format|
      if @my_idea.update(my_idea_params)
        format.html { redirect_to @my_idea, notice: 'My idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_idea }
      else
        format.html { render :edit }
        format.json { render json: @my_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_ideas/1
  # DELETE /my_ideas/1.json
  def destroy
    @my_idea.destroy
    respond_to do |format|
      format.html { redirect_to my_ideas_url, notice: 'My idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_idea
      @my_idea = MyIdea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_idea_params
      params.require(:my_idea).permit(:picture_des, :picture)
    end
end
