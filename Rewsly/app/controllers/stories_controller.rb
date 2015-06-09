class StoriesController < ApplicationController
    def index #front page
        
        @stories = Story.all
    end
   
   
    def new 
        #authenticate_user!
        @stories = Story.new 
    end
    
    def create 
    
        safe_story_params = params.require(:story).permit(:title,:link,:upvotes,:category) 
        @stories = Story.new safe_story_params  
        @stories.save 
        
        redirect_to @stories 
    end
    
    def search
        @stories = Story.find_by title: params[:title]
    end
    
    def show
        @stories = Story.find params[:id]
    end
    
    

end 

#Law of Demeter? keeping methods as seperate and deconsturcted as possible?