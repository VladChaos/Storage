class BouqetsController < ApplicationController
	def index
		@bouqets = Bouqet.all

	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @bouqets }
	    end
	end

	def new
		@bouqet = Bouqet.new

	    respond_to do |format|
	      format.html
	      format.json { render json: @bouqet }
	    end
	end	

	def edit
	    @bouqet = Bouqet.find(params[:id])
	end

	def create
		@bouqet = Bouqet.new(params[:bouqet])

	    respond_to do |format|
	      if @bouqet.save
	        format.html { redirect_to @bouqet, notice: 'Bouqet was successfully created.' }
	        format.json { render json: @bouqet, status: :created, location: @bouqet }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @bouqet.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def update
	    @bouqet = Bouqet.find(params[:id])

	    respond_to do |format|
		    if @bouqet.update_attributes(params[:bouqet])
		        format.html { redirect_to @bouqet, notice: 'Bouqet was successfully updated.' }
		        format.json { head :no_content }
		    else
		        format.html { render action: "edit" }
		        format.json { render json: @bouqet.errors, status: :unprocessable_entity }
		    end
	    end
	end

	def show
		@bouqet = Bouqet.find(params[:id])
		@money = (@bouqet.cost)*(@bouqet.amount)

	    respond_to do |format|
	      format.html # show.html.erb
	      format.json { render json: @bouqet }
	    end
	end

	def destroy
	    @bouqet = Bouqet.find(params[:id])
	    @bouqet.destroy

	    respond_to do |format|
	      format.html { redirect_to bouqets_url }
	      format.json { head :no_content }
	    end
	end
	def cost
		@bouqet = Bouqet.find(params[:id])
		@money = (@bouqet.cost*@bouqet.amount)
	end
end
