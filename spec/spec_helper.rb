require "collectnik"

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