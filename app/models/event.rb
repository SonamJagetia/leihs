# Timeline event

class Event
  require 'rexml/document'
  include REXML

  attr_accessor :start,
                :end,
                :title,
                :isDuration,
                :action,   # hand_over, take_back
                :inventory_pool,
                :user,
                :contract_lines,
                :quantity
                
  def initialize(start_date = Date.today,
                 end_date = Date.today,
                 title = "",
                 isDuration = true,
                 action = "hand_over",
                 inventory_pool = nil,
                 user = nil,
                 contract_line = nil)
    @start = start_date
    @end = end_date
    @title = title
    @isDuration = isDuration
    @action = action
    @inventory_pool = inventory_pool
    @user = user
    @contract_lines = [contract_line]
  end

  #alias
  def date
    start
  end
  
  def quantity
    @contract_lines.collect(&:quantity).sum
  end

  # compares two objects in order to sort them
  def <=>(other)
    self.date <=> other.date
  end  

############################################################################

  def to_xml
    xml = Document.new()
    e = Element.new("event")
    e.attributes["start"] = @start.strftime("%c %Z")
    e.attributes["end"] = @end.strftime("%c %Z")
    e.attributes["title"] = @title
    e.attributes["isDuration"] = @isDuration
    e.attributes["icon"] = "api/images/dull-red-circle.png" if @action == "take_back"
    e.text = "" # TODO description
    xml << e
    xml
  end


  def self.xml_wrap(events)
    xml = Document.new()
    @d = Element.new("data")
    events.each do |e|
      @d << e.to_xml  
    end
    xml << @d
    xml
  end

end


#class Event < ActiveRecord::Base
#  self.abstract_class = true
#
#  def self.columns() @columns ||= []; end
#  def self.column(name, sql_type = nil, default = nil, null = true)
#    columns << ActiveRecord::ConnectionAdapters::Column.new(name.to_s, default, sql_type.to_s, null)
#  end
#
#  self.column :start, :date
#  self.column :end,  :date
#  self.column :title,  :string
#  self.column :isDuration, :boolean
#
#end
