class ProductSearch
  attr_reader :price_from, :price_to

  # attr_reader :date_from, :date_to

  def initialize(params)
    params ||= {}

    @price_from = params[:price_from]
    @price_to   = params[:price_to]

    # @date_from = parsed_date(params[:date_from],5.days.ago.to_date.to_s)
    # @date_to   = parsed_date(params[:date_to],Date.today.to_s)

  end

  def scoup
    Product.where( 'price BETWEEN ? AND ?', @price_from, @price_to )
  end

  # def scoup
  #   Product.where( 'date BETWEEN ? AND ?', @date_from, @date_to )
  # end

  private

  # def parsed_date(date_string,default)
  #   Date.parse(date_string)
  # rescue ArgumentError, TypeError
  #   default
  # end

end