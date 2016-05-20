module Api  
  class ArticlesController < Api::BaseController

    private

      def article_params
        params.require(:article).permit(:title,:category)
      end

      def query_params
        params.permit(:title)
      end

  end
end  
