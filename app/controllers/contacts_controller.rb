class ContactsController < ApplicationController
  def new
		@contact = Contact.new
  end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
      flash[:notice] = 'Obrigado pela mensagem! Entraremos em contato em breve.'
      redirect_to :root
		else
			flash.now[:error] = 'Sua mensagem não pôde ser enviada.'
      render :new
		end
  end
end
