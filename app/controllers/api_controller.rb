class ApiController < ApplicationController
    
  @@initial_button=["공과대학", "농업생명환경대학", "사범대학", "사회과학대학", "생활과학대학", "인문대학", "의과대학","자연과학대학","전자정보대학"]
  @@parameter_content="공과대학"
  @@layer_depth=2
  
  def self.make_home_button(data) #버튼과 텍스트만 다룰 때

      @msg={
            message: {
                text: "홈으로",

              },
              keyboard: {
                type: "buttons",
                buttons:data
              }
            }
      return @msg
  end 
  
  def self.show_detail(content, button) #사진과 링크도 포함시 사용하는 함수
      @msg={
                     message: {
                     text: content
                     
                    },
                     keyboard: {
                       type: "buttons",
                      buttons:button
                     }
              }
      return @msg
  end
  
  
  def self.make_list(data)
      @button_layer=Array.new
      @button_layer.push("홈으로")
      if (data.first.nil?)
        
      else
          for i in 1..data.maximum("id")
            if data.where(id:i).empty?
                next
            end
            @button_layer.push(data.find(i).name)     
          end#버튼 생성
      end
      return @button_layer
  end
  
  def self.make_button(data) #버튼과 텍스트만 다룰 때
          @text=@@parameter_content+" 리스트입니다."
          
      @msg={
            message: {
                text: @text,

              },
              keyboard: {
                type: "buttons",
                buttons:data
              }
            }
      return @msg
  end
  
  
  
    def api_init
            @msg =
            {
              type: "buttons",
              buttons: @@initial_button
            }
        render json: @msg, status: :ok
       
    end
    
    def api_message
        @response=params[:content]
        
        if @@layer_depth==1
            if @response=="공과대학"
                @discount_information=Engineering.all
                @button_layer=Array.new
                @@parameter_content="공과대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="농업생명환경대학"
                @discount_information=Agriculture.all
                @button_layer=Array.new
                @@parameter_content="농업생명환경대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="사범대학"
                @discount_information=Teacher.all
                @button_layer=Array.new
                @@parameter_content="사범대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="사회과학대학"
                @discount_information=Social.all
                @button_layer=Array.new
                @@parameter_content="사회과학대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="생활과학대학"
                @discount_information=Lifescience.all
                @button_layer=Array.new
                @@parameter_content="생활과학대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
            
            elsif @response=="인문대학"
                @discount_information=Humanity.all
                @button_layer=Array.new
                @@parameter_content="인문대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="의과대학"
                @discount_information=Medical.all
                @button_layer=Array.new
                @@parameter_content="의과대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
            
            elsif @response=="자연과학대학"
                @discount_information=Natural.all
                @button_layer=Array.new
                @@parameter_content="전자정보대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="전자정보대학"
                @discount_information=Electronic.all
                @button_layer=Array.new
                @@parameter_content="전자정보대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            else  #임시 예외처리
            @@parameter_content="홈으로"
            @@layer_depth=1
            @msg = ApiController.make_home_button(@@initial_button)
            render json: @msg, status: :ok
      
            end
            
            
            
            
        elsif @@layer_depth==2
            if @response=="홈으로"
                @@parameter_content="홈으로"
                @@layer_depth=1
                @msg = ApiController.make_home_button(@@initial_button)
                render json: @msg, status: :ok
                
            elsif @response=="공과대학"
                @discount_information=Engineering.all
                @button_layer=Array.new
                @@parameter_content="공과대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="농업생명환경대학"
                @discount_information=Agriculture.all
                @button_layer=Array.new
                @@parameter_content="농업생명환경대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="사범대학"
                @discount_information=Teacher.all
                @button_layer=Array.new
                @@parameter_content="사범대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="사회과학대학"
                @discount_information=Social.all
                @button_layer=Array.new
                @@parameter_content="사회과학대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="생활과학대학"
                @discount_information=Lifescience.all
                @button_layer=Array.new
                @@parameter_content="생활과학대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
            
            elsif @response=="인문대학"
                @discount_information=Humanity.all
                @button_layer=Array.new
                @@parameter_content="인문대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="의과대학"
                @discount_information=Medical.all
                @button_layer=Array.new
                @@parameter_content="의과대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="자연과학대학"
                @discount_information=Natural.all
                @button_layer=Array.new
                @@parameter_content="자연과학대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            elsif @response=="전자정보대학"
                @discount_information=Electronic.all
                @button_layer=Array.new
                @@parameter_content="전자정보대학"
                @@layer_depth = 2
                
                @button_layer=ApiController.make_list(@discount_information)
                @msg=ApiController.make_button(@button_layer)
                render json: @msg, status: :ok
                
            #####################idle error control#################################
                
            elsif @@parameter_content=="공과대학"
                @button_layer=Array.new 
                @content_information=Engineering.all 
                @button_layer=ApiController.make_list(@content_information) #버튼 만들기
                
            
                for i in 1..@content_information.maximum("id")  #DB많아지면 연산이 길다
                    if @content_information.where(id:i).empty?
                        next
                    end
                    @content_case=@content_information.find(i).name #DB의 업체 이름 비교대상

                    if @response==@content_case   
                        @content=@content_information.find(i).discount #해당 업체의 할인정보
                        @msg=ApiController.show_detail(@content, @button_layer)
                        i=9999 #강제로 for문 탈출
                        render json: @msg, status: :ok
                    end #if end
                end #for end
                
            elsif @@parameter_content=="농업생명환경대학"
                @button_layer=Array.new 
                @content_information=Agriculture.all 
                @button_layer=ApiController.make_list(@content_information) #버튼 만들기
                
            
                for i in 1..@content_information.maximum("id")  #DB많아지면 연산이 길다
                    if @content_information.where(id:i).empty?
                        next
                    end
                    @content_case=@content_information.find(i).name #DB의 업체 이름 비교대상

                    if @response==@content_case   
                        @content=@content_information.find(i).discount #해당 업체의 할인정보
                        @msg=ApiController.show_detail(@content, @button_layer)
                        i=9999 #강제로 for문 탈출
                        render json: @msg, status: :ok
                    end #if end
                end #for end
                
            elsif @@parameter_content=="사범대학"
                @button_layer=Array.new 
                @content_information=Teacher.all 
                @button_layer=ApiController.make_list(@content_information) #버튼 만들기
                
            
                for i in 1..@content_information.maximum("id")  #DB많아지면 연산이 길다
                    if @content_information.where(id:i).empty?
                        next
                    end
                    @content_case=@content_information.find(i).name #DB의 업체 이름 비교대상

                    if @response==@content_case   
                        @content=@content_information.find(i).discount #해당 업체의 할인정보
                        @msg=ApiController.show_detail(@content, @button_layer)
                        i=9999 #강제로 for문 탈출
                        render json: @msg, status: :ok
                    end #if end
                end #for end
                
            elsif @@parameter_content=="사회과학대학"
                @button_layer=Array.new 
                @content_information=Social.all 
                @button_layer=ApiController.make_list(@content_information) #버튼 만들기
                
            
                for i in 1..@content_information.maximum("id")  #DB많아지면 연산이 길다
                    if @content_information.where(id:i).empty?
                        next
                    end
                    @content_case=@content_information.find(i).name #DB의 업체 이름 비교대상

                    if @response==@content_case   
                        @content=@content_information.find(i).discount #해당 업체의 할인정보
                        @msg=ApiController.show_detail(@content, @button_layer)
                        i=9999 #강제로 for문 탈출
                        render json: @msg, status: :ok
                    end #if end
                end #for end
                
            elsif @@parameter_content=="생활과학대학"
                @button_layer=Array.new 
                @content_information=Lifescience.all 
                @button_layer=ApiController.make_list(@content_information) #버튼 만들기
                
            
                for i in 1..@content_information.maximum("id")  #DB많아지면 연산이 길다
                    if @content_information.where(id:i).empty?
                        next
                    end
                    @content_case=@content_information.find(i).name #DB의 업체 이름 비교대상

                    if @response==@content_case   
                        @content=@content_information.find(i).discount #해당 업체의 할인정보
                        @msg=ApiController.show_detail(@content, @button_layer)
                        i=9999 #강제로 for문 탈출
                        render json: @msg, status: :ok
                    end #if end
                end #for end
                
            elsif @@parameter_content=="인문대학"
                @button_layer=Array.new 
                @content_information=Humanity.all 
                @button_layer=ApiController.make_list(@content_information) #버튼 만들기
                
            
                for i in 1..@content_information.maximum("id")  #DB많아지면 연산이 길다
                    if @content_information.where(id:i).empty?
                        next
                    end
                    @content_case=@content_information.find(i).name #DB의 업체 이름 비교대상

                    if @response==@content_case   
                        @content=@content_information.find(i).discount #해당 업체의 할인정보
                        @msg=ApiController.show_detail(@content, @button_layer)
                        i=9999 #강제로 for문 탈출
                        render json: @msg, status: :ok
                    end #if end
                end #for end
                
            elsif @@parameter_content=="의과대학"
                @button_layer=Array.new 
                @content_information=Medical.all 
                @button_layer=ApiController.make_list(@content_information) #버튼 만들기
                
            
                for i in 1..@content_information.maximum("id")  #DB많아지면 연산이 길다
                    if @content_information.where(id:i).empty?
                        next
                    end
                    @content_case=@content_information.find(i).name #DB의 업체 이름 비교대상

                    if @response==@content_case   
                        @content=@content_information.find(i).discount #해당 업체의 할인정보
                        @msg=ApiController.show_detail(@content, @button_layer)
                        i=9999 #강제로 for문 탈출
                        render json: @msg, status: :ok
                    end #if end
                end #for end
                
            elsif @@parameter_content=="자연과학대학"
                @button_layer=Array.new 
                @content_information=Natural.all 
                @button_layer=ApiController.make_list(@content_information) #버튼 만들기
                
            
                for i in 1..@content_information.maximum("id")  #DB많아지면 연산이 길다
                    if @content_information.where(id:i).empty?
                        next
                    end
                    @content_case=@content_information.find(i).name #DB의 업체 이름 비교대상

                    if @response==@content_case   
                        @content=@content_information.find(i).discount #해당 업체의 할인정보
                        @msg=ApiController.show_detail(@content, @button_layer)
                        i=9999 #강제로 for문 탈출
                        render json: @msg, status: :ok
                    end #if end
                end #for end
                
            elsif @@parameter_content=="전자정보대학"
                @button_layer=Array.new 
                @content_information=Electronic.all 
                @button_layer=ApiController.make_list(@content_information) #버튼 만들기
                
            
                for i in 1..@content_information.maximum("id")  #DB많아지면 연산이 길다
                    if @content_information.where(id:i).empty?
                        next
                    end
                    @content_case=@content_information.find(i).name #DB의 업체 이름 비교대상

                    if @response==@content_case   
                        @content=@content_information.find(i).discount #해당 업체의 할인정보
                        @msg=ApiController.show_detail(@content, @button_layer)
                        i=9999 #강제로 for문 탈출
                        render json: @msg, status: :ok
                    end #if end
                end #for end
                
            else 
            @@parameter_content="홈으로"
            @@layer_depth=1
            @msg = ApiController.make_home_button(@@initial_button)
            render json: @msg, status: :ok
            
            end #layer_depth 2 controll end
 
        
        end #layer_depth end
            
        
        
    end  #api_message end
  
  
end #class end
