module Api  
  class ApiArticlesController < Api::BaseController

    private

      def album_params
        params.require(:article).permit(:title)
      end

      def query_params
        params.permit(:title)
      end

  end
end  