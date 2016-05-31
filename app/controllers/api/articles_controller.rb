module Api  
  class ArticlesController < Api::BaseController
  	before_action :authenticate

  	def index
  		plural_resource_name = "@#{resource_name.pluralize}"
  		resources = Article.user_id(session[:user_id])
  		instance_variable_set(plural_resource_name, resources)
  		respond_with instance_variable_get(plural_resource_name)
  	end

  	def show
  		#resource = Article.find(params[:id]).user_id(session[:user_id])
  		resource = get_resource
  		#resource = resource.user_id(session[:user_id])
  		if resource.user_id.to_i == session[:user_id]
  			respond_with resource
  		else
  			render json: "#{resource.user_id.to_i.class}, #{session[:user_id].class}, #{resource.user_id.eql? session[:user_id]} ", status: 401
  		end
  	end

    private

      def article_params
        params.require(:article).permit(:title,:category)
      end

      def query_params
        params.permit(:title)
      end

  end
end