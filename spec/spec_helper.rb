require "collectnik"

ITEMS_5fa75050 = JSON.parse(%q<{
  "nyplAPI":{
    "request":{
      "uuid":"5fa75050-c6c7-012f-e24b-58d385a7bc34",
      "perPage":"10",
      "page":"1",
      "totalPages":"13"
    },
    "response":{
      "headers":{
        "status":"success",
        "code":"200",
        "message":"ok"
      },
      "numResults":"125",
      "capture":[
        {
          "uuid":"510d47e3-6c3e-a3d9-e040-e00a18064a99",
          "imageID":"1582665",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1582665",
          "title":" Fra Angelico, Windsor, 163 verso. [St. Lawrence, a woman holding a child, and a youth with clasped hands.]"
        },
        {
          "uuid":"510d47e3-6c3c-a3d9-e040-e00a18064a99",
          "imageID":"1582663",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1582663",
          "title":" Fra Angelico, British museum, 162. [The youthful David with a crown on his curly head, sitting on a settle, singing and playing on the psaltery.]"
        },
        {
          "uuid":"510d47e3-6c3a-a3d9-e040-e00a18064a99",
          "imageID":"1582661",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1582661",
          "title":" Title page.]"
        },
        {
          "uuid":"510d47e3-6c3f-a3d9-e040-e00a18064a99",
          "imageID":"1582666",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1582666",
          "title":" Domenico di Michelino, Louvre, 1752. [Group of saints.]"
        },
        {
          "uuid":"510d47e3-6c3b-a3d9-e040-e00a18064a99",
          "imageID":"1582662",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1582662",
          "title":" Agnolo Gaddi, Louvre, 758. [The blessed virgin ascending steps of a temple.]"
        },
        {
          "uuid":"510d47e3-6c41-a3d9-e040-e00a18064a99",
          "imageID":"1582668",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1582668",
          "title":" Benozzo, British museum, 540. [The Madonna appearing to a girl saint, who sits up in her bed.]"
        },
        {
          "uuid":"510d47e3-6c3d-a3d9-e040-e00a18064a99",
          "imageID":"1582664",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1582664",
          "title":" Fra Angelico, Windsor, 163. [Bust of St. Lawrence.]"
        },
        {
          "uuid":"510d47e3-6c40-a3d9-e040-e00a18064a99",
          "imageID":"1582667",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1582667",
          "title":" Benozzo, Dresden, 532. [The full-length figure of St. Michael holding the hilt of a sword in his right hand, and a globe in his left..]"
        },
        {
          "uuid":"510d47e3-6c42-a3d9-e040-e00a18064a99",
          "imageID":"1582669",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1582669",
          "title":" Benozzo, Uffizi, 537. [A cardinal followed by an acolyte.]"
        },
        {
          "uuid":"510d47e3-6c43-a3d9-e040-e00a18064a99",
          "imageID":"1582670",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1582670",
          "title":" Benozzo, British museum, 542. [A bare-headed young man, in a cloak, pointing with his right hand as he walks.]"
        }
      ]
    }
  }
}>)

ITEM_1582665 = JSON.parse(%q<{
  "uuid":"510d47e3-6c3e-a3d9-e040-e00a18064a99",
  "imageID":"1582665",
  "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1582665",
  "title":"Fra Angelico, Windsor, 163 verso. [St. Lawrence, a woman holding a child, and a youth with clasped hands.]"
}>)

MODS_1582665 = JSON.parse(%q<{
  "nyplAPI":{
    "request":{
      "uuid":{
        "$":"510d47e3-6c3e-a3d9-e040-e00a18064a99"
      }
    },
    "response":{
      "headers":{
        "status":{
          "$":"success"
        },
        "code":{
          "$":"200"
        },
        "message":{
          "$":"OK"
        }
      },
      "mods":{
        "version":"3.4",
        "schemaLocation":"http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd",
        "titleInfo":[
          {
            "lang":"eng",
            "supplied":"no",
            "usage":"primary",
            "title":{
              "$":"Drawings of Florentine painters, classified, criticised, and studied as documents in the history and appreciation of Tucson [sic] Art. With a copious Catalogue raissonn\u00e9."
            }
          },
          {
            "supplied":"no",
            "usage":"primary",
            "title":{
              "$":"Fra Angelico, Windsor, 163 verso. [St. Lawrence, a woman holding a child, and a youth with clasped hands.]"
            }
          }
        ],
        "typeOfResource":{
          "$":"still image"
        },
        "originInfo":{
          "dateIssued":{
            "encoding":"w3cdtf",
            "keyDate":"yes",
            "$":"1903"
          },
          "place":{
            "placeTerm":{
              "$":"New York"
            }
          },
          "publisher":{
            "$":"E.P. Dutton and Co."
          }
        },
        "identifier":[
          {
            "displayLabel":"RLIN/OCLC",
            "type":"local_other",
            "$":"40687640"
          },
          {
            "displayLabel":"CATNYP ID (legacy)",
            "type":"local_catnyp",
            "$":"b5572501"
          },
          {
            "displayLabel":"NYPL catalog ID (B-number)",
            "type":"local_bnumber",
            "$":"b13987862"
          },
          {
            "displayLabel":"Hades struc ID (legacy)",
            "type":"local_hades",
            "$":"1067384"
          }
        ],
        "location":[
          {
            "physicalLocation":[
              {
                "authority":"marcorg",
                "type":"repository",
                "$":"nn"
              },
              {
                "type":"division",
                "$":"Wallach Division: Art & Architecture Collection"
              }
            ],
            "shelfLocator":{
              "$":"MBH++ (Berenson, B. Drawings of Floretine painters, classified, criticised, and studied)"
            }
          },
          {
            "physicalLocation":{
              "type":"division",
              "$":"Wallach Division: Art & Architecture Collection"
            }
          }
        ],
        "relatedItem":{
          "type":"host",
          "titleInfo":{
            "title":{
              "$":"Drawings of Florentine painters, classified, criticised, and studied as documents in the history and appreciation of Tucson [sic] Art. With a copious Catalogue raissonn\u00e9."
            }
          },
          "identifier":{
            "type":"uuid",
            "$":"5fa75050-c6c7-012f-e24b-58d385a7bc34"
          }
        }
      }
    }
  }
}>)