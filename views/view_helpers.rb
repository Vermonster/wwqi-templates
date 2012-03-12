#encoding: utf-8
require 'ostruct'

module ViewHelpers
  def load_example_item! 
    @object = OpenStruct.new
    @object.thumbnail = "http://d19ob2c2hogwg9.cloudfront.net/thumbs/it_1527.jpg"
    @object.description =<<DESC
A satirical anthology of poetry that uses Iranian foods to make fun of
government elites, both men and women.
<br/>
This description is cut off in the interest of not having to fight with UTF-8
Encodings and serve.
DESC
    @object.instance_eval do 
      def has_creator? 
        true
      end
    end
    @object.creator = OpenStruct.new
    @object.creator.name = "Mayil Afshar Shaykh al-Shu'ara"


    @object.date = OpenStruct.new
    @object.date.representation = "[ca. 1873 or 1874]"

    @object.title = "Anthology of Food, #{@object.date.representation}"

    @object.notes =<<NOTES
The date of the text must be after the formation of the consultative body in
1275 AH or 1289 AH (the text refers to the chairman of the consultative
assembly) and before 1297 AH (when it was entered in the library).
<br/>
On the last page of the text is written: "This book was received from Aqa Muslim
[?] [on] 1297 AH and entered in my library in the month of Muharram 1298 AH."
<br/>
The stamp of Muhammad Sadiq Tabataba'i appears on the last page of the text.
NOTES
    @object.dimensions = "17.5cm x 22cm"
    @object.collections = [OpenStruct.new(url: "#", title: "Majlis Library, Museum and Document Center")]
    @object.repository = "Majlis Library, Museum and Document Center, Tehran, Iran (MS. 1197-T)"
    @object.restrictions = "Use of collection materials for publication purposes must cite Majlis Library, Museum and Document Center (Tehran, Iran) as current repository."
    @object.created = "14 January 2011"
    @object.created.instance_eval do
      def strftime(*_)
        self
      end
    end
    @object.updated = "14 September 2011"
    @object.updated.instance_eval do
      def strftime(*_)
        self
      end
    end

    @object.instance_eval do
      def url
        "#"
      end
    end

    @object.accession_number = "1018A10"
    @object.genres = [
      OpenStruct.new(name: "manuscripts & lithographs", url_to_facet: "#")
    ]
    @object.people = [
      OpenStruct.new(name: "Nasir al-Din Shah", url: "#"),
      OpenStruct.new(name: "Ziya' al-Saltanah [I]", url: "#"),
      OpenStruct.new(name: "Mayil Afshar Shaykh al-Shu'ara", url: "#"),
      OpenStruct.new(name: "Aqa Vajih", url: "#"),
      OpenStruct.new(name: "Fakhr al-Muluk", url: "#"),
      OpenStruct.new(name: "'Ismat al-Dawlah", url: "#"),
      OpenStruct.new(name: "Nazim al-Bika'", url: "#"),
      OpenStruct.new(name: "Shaykh al-Islam", url: "#"),
      OpenStruct.new(name: "I'timad al-Saltanah", url: "#"),
      OpenStruct.new(name: "Atabak A'zam", url: "#"),
      OpenStruct.new(name: "Imam Jum'ah", url: "#"),
      OpenStruct.new(name: "Amin Aqdas", url: "#"),
      OpenStruct.new(name: "Hajiyah Khanum", url: "#"),
      OpenStruct.new(name: "'A'ishah Khanum", url: "#"),
      OpenStruct.new(name: "'Iffat al-Saltanah", url: "#"),
      OpenStruct.new(name: "Zaynab al-Saltanah", url: "#"),
      OpenStruct.new(name: "Badr al-Saltanah", url: "#"),
      OpenStruct.new(name: "Akhtar al-Saltanah", url: "#"),
      OpenStruct.new(name: "Shams al-Dawlah", url: "#"),
      OpenStruct.new(name: "Taj al-Dawlah", url: "#"),
      OpenStruct.new(name: "Shukuh al-Saltanah [I]", url: "#"),
      OpenStruct.new(name: "Inis al-Dawlah", url: "#"),
      OpenStruct.new(name: "Tuman Aqa", url: "#"),
      OpenStruct.new(name: "Turan Aqa", url: "#"),
      OpenStruct.new(name: "Amin al-Saltanah", url: "#")
    ]

    @object.subjects = [
      OpenStruct.new(name: "food", url_to_facet: "#"),
      OpenStruct.new(name: "satire", url_to_facet: "#"),
      OpenStruct.new(name: "poetry", url_to_facet: "#"),
      OpenStruct.new(name: "cookbooks", url_to_facet: "#"),
      OpenStruct.new(name: "cooking", url_to_facet: "#"),
      OpenStruct.new(name: "courtiers", url_to_facet: "#")
    ]

    @object.places = [
      OpenStruct.new(name: "Bushihr", url: "#")
    ]
  end
  
  def stylesheet(name, opts = {})
    extra = opts.inject("") { |a,(key, value)| a << "#{key}=\"#{value}\" " } if opts.keys.any?
    %Q|<link rel="stylesheet" href="/stylesheets/#{name}.css" #{extra} />|
  end
  
end
