require "prawn/table"
class ReportPdf < Prawn::Document
  def initialize(countries)
    super()
    @country = countries
    table_content
  end

  def table_content
      table country_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.column_widths = [40, 100]
    end
  end
  def country_rows
    [['Id', 'Name']] +
      @country.map do |country|
      [country.id, country.name]
    end
  end

 end