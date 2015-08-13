module Web::Controllers::Home
  class Index
    include Web::Action

    def call(params)
      binding.pry
    end

  end
end
