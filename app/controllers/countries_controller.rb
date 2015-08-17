class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]

  
  def index
    @country = Country.all

    respond_to do |format|
      format.html
      format.pdf do
    pdf = ReportPdf.new(@country)
    #pdf.text "Hello World" 
    # filename = File.join(Rails.root, "app/views/countries", "report.pdf") 
    # pdf.render_file filename 
    send_data pdf.render, filename: 'report.pdf', type: 'application/pdf', disposition: 'inline'
    

    end
    end
  end

  def show

  end

  
  def new
    #@post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    # @post = Post.new(post_params)

    # respond_to do |format|
    #   if @post.save
    #     format.html { redirect_to @post, notice: 'Post was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @post }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @post.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @Country.update(country_params)
        format.html { redirect_to @Country, notice: 'Country was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @country.destroy
    respond_to do |format|
      format.html { redirect_to countries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_params
      params.require(:country).permit(:name)
    end

    def count
     
      
    end
end
