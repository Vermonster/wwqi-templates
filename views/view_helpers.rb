#encoding: utf-8
require 'ostruct'

module ViewHelpers
  def load_example_item! 
    @item = OpenStruct.new
    @item.thumbnail = "http://d19ob2c2hogwg9.cloudfront.net/thumbs/it_1527.jpg"
    @item.description_en =<<DESC
A satirical anthology of poetry that uses Iranian foods to make fun of
government elites, both men and women.
<br/>
This description is cut off in the interest of not having to fight with UTF-8
Encodings and serve.
DESC
    @item.instance_eval do 
      def has_creator? 
        true
      end
    end
    @item.creator = OpenStruct.new
    @item.creator.name_en = "Mayil Afshar Shaykh al-Shu'ara"


    @item.date = OpenStruct.new
    @item.date.representation_en = "[ca. 1873 or 1874]"

    @item.title_en_with_date = "Anthology of Food, #{@item.date.representation_en}"

    @item.notes_en =<<NOTES
The date of the text must be after the formation of the consultative body in
1275 AH or 1289 AH (the text refers to the chairman of the consultative
assembly) and before 1297 AH (when it was entered in the library).
<br/>
On the last page of the text is written: "This book was received from Aqa Muslim
[?] [on] 1297 AH and entered in my library in the month of Muharram 1298 AH."
<br/>
The stamp of Muhammad Sadiq Tabataba'i appears on the last page of the text.
NOTES
    @item.dimensions_en = "17.5cm x 22cm"
    @item.collections = [OpenStruct.new(link: "#", title_en: "Majlis Library, Museum and Document Center")]
    @item.repository_en = "Majlis Library, Museum and Document Center, Tehran, Iran (MS. 1197-T)"
    @item.restrictions_en = "Use of collection materials for publication purposes must cite Majlis Library, Museum and Document Center (Tehran, Iran) as current repository."
    @item.created_at_en = "14 January 2011"
    @item.updated_at_en = "14 September 2011"
    @item.accession_number = "1018A10"
    @item.genres = [
      OpenStruct.new(name_en: "manuscripts & lithographs", link_to_facet: "#")
    ]
    @item.people = [
      OpenStruct.new(name_en: "Nasir al-Din Shah",link: "#"),
      OpenStruct.new(name_en: "Ziya' al-Saltanah [I]",link: "#"),
      OpenStruct.new(name_en: "Mayil Afshar Shaykh al-Shu'ara",link: "#"),
      OpenStruct.new(name_en: "Aqa Vajih",link: "#"),
      OpenStruct.new(name_en: "Fakhr al-Muluk",link: "#"),
      OpenStruct.new(name_en: "'Ismat al-Dawlah",link: "#"),
      OpenStruct.new(name_en: "Nazim al-Bika'",link: "#"),
      OpenStruct.new(name_en: "Shaykh al-Islam",link: "#"),
      OpenStruct.new(name_en: "I'timad al-Saltanah",link: "#"),
      OpenStruct.new(name_en: "Atabak A'zam",link: "#"),
      OpenStruct.new(name_en: "Imam Jum'ah",link: "#"),
      OpenStruct.new(name_en: "Amin Aqdas",link: "#"),
      OpenStruct.new(name_en: "Hajiyah Khanum",link: "#"),
      OpenStruct.new(name_en: "'A'ishah Khanum",link: "#"),
      OpenStruct.new(name_en: "'Iffat al-Saltanah",link: "#"),
      OpenStruct.new(name_en: "Zaynab al-Saltanah",link: "#"),
      OpenStruct.new(name_en: "Badr al-Saltanah",link: "#"),
      OpenStruct.new(name_en: "Akhtar al-Saltanah",link: "#"),
      OpenStruct.new(name_en: "Shams al-Dawlah",link: "#"),
      OpenStruct.new(name_en: "Taj al-Dawlah",link: "#"),
      OpenStruct.new(name_en: "Shukuh al-Saltanah [I]",link: "#"),
      OpenStruct.new(name_en: "Inis al-Dawlah",link: "#"),
      OpenStruct.new(name_en: "Tuman Aqa",link: "#"),
      OpenStruct.new(name_en: "Turan Aqa",link: "#"),
      OpenStruct.new(name_en: "Amin al-Saltanah",link: "#")
    ]

    @item.subjects = [
      OpenStruct.new(name_en: "food", link_to_facet: "#"),
      OpenStruct.new(name_en: "satire", link_to_facet: "#"),
      OpenStruct.new(name_en: "poetry", link_to_facet: "#"),
      OpenStruct.new(name_en: "cookbooks", link_to_facet: "#"),
      OpenStruct.new(name_en: "cooking", link_to_facet: "#"),
      OpenStruct.new(name_en: "courtiers", link_to_facet: "#")
    ]

    @item.places = [
      OpenStruct.new(name_en: "Bushihr", link: "#")
    ]
  end
  
  
end
