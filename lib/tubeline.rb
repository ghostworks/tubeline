require "nokogiri"
require "net/http"

module Tubeline
  VERSION = "0.1"

  def self.status
    doc = Nokogiri::XML.parse Net::HTTP.get URI.parse "http://cloud.tfl.gov.uk/TrackerNet/LineStatus"
    doc.css("LineStatus").inject(Hash.new) do |hash, line_status|
      status = Hash[line_status.css("Status").first.attributes.map{|k, v| [k, v.to_s] }]
      line = Hash[line_status.css("Line").first.attributes.map{|k, v| [k, v.to_s]}]
      line_status = Hash[line_status.attributes.map{|k, v| [k, v.to_s] }]

      hash.update(line["Name"].gsub(/\W/, "_").downcase.to_sym => {
        name: line["Name"],
        line_id: line["ID"].to_i,
        active: status["IsActive"] == "true",
        technical: status["CssClass"],
        description: status["Description"],
        explanation: line_status["StatusDetails"]
      })
    end
  end
end