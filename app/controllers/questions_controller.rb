class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end

	def new
    	@question = Question.new
 	end
 
  	def create
    	@question = Question.new(params[:question])
    	if @question.save
      		redirect_to questions_url
    	else
      		render action: "new"
    	end
    end

    def edit
    	@question = Question.find(params[:id])
  	end
 
  	def update
    	@question = Question.find(params[:id])
 
    	if @question.update_attributes(params[:question])
		    redirect_to questions_path
		else
      		render action: "edit"
    	end
    end	
    
    def show
    	@question = Question.find(params[:id])
  	end

  	def destroy
    	@question = Question.find(params[:id])
    	@question.destroy
    	redirect_to questions_url
  	end
end

