require "collectnik"

SEARCH_BIRDS = JSON.parse(%q<{
  "nyplAPI":{
    "request":{
      "page":"1",
      "perPage":"10",
      "search_text":"birds",
      "totalPages":"1199"
    },
    "response":{
      "headers":{
        "code":"200",
        "message":"OK",
        "status":"success"
      },
      "numResults":"11985",
      "result":[
        {
          "imageID":"820261",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?820261",
          "title":" Wading Birds.",
          "uuid":"510d47e0-d4fd-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"821523",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?821523",
          "title":" Toxostoma Curvirostris.",
          "uuid":"510d47e1-0424-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"820999",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?820999",
          "title":"The  Communities Of Birds.",
          "uuid":"510d47e0-dac3-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"821048",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?821048",
          "title":" Orchard Oriole.",
          "uuid":"510d47e1-28aa-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"820568",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?820568",
          "title":" Frigate, And Tropic-Birds.",
          "uuid":"510d47e0-d92c-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"820808",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?820808",
          "title":" Great Blue Heron.",
          "uuid":"510d47e0-d999-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"821616",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?821616",
          "title":" Tailor-Bird -- Orthot\u00f3mus Longicaudus.",
          "uuid":"510d47e1-0404-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"820090",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?820090",
          "title":" Various Birds On Attached Cards.]",
          "uuid":"510d47e1-3f27-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"820091",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?820091",
          "title":" Various Birds On Attached Cards.]",
          "uuid":"510d47e1-3f34-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"820129",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?820129",
          "title":" Various Kinds Of Birds.",
          "uuid":"510d47e1-3f72-a3d9-e040-e00a18064a99"
        }
      ]
    }
  }
}>)

SEARCH_BIRDS2 = JSON.parse(%q<{
  "nyplAPI":{
    "request":{
      "page":"2",
      "perPage":"10",
      "search_text":"birds",
      "totalPages":"1199"
    },
    "response":{
      "headers":{
        "code":"200",
        "message":"OK",
        "status":"success"
      },
      "numResults":"11985",
      "result":[
        {
          "imageID":"1140323",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1140323",
          "title":" Blackcap.",
          "typeOfResource":"still image",
          "uuid":"510d47da-c080-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"1133231",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1133231",
          "title":" Bearded tit.",
          "typeOfResource":"still image",
          "uuid":"510d47da-c083-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"1133204",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1133204",
          "title":"The  ptarmign.",
          "typeOfResource":"still image",
          "uuid":"510d47da-c04d-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"1133213",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1133213",
          "title":" Jackdaw.",
          "typeOfResource":"still image",
          "uuid":"510d47da-c05f-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"1133222",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1133222",
          "title":" Common tern.",
          "typeOfResource":"still image",
          "uuid":"510d47da-c071-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"1140322",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1140322",
          "title":" Blue titmouse.",
          "typeOfResource":"still image",
          "uuid":"510d47da-c07e-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"1140304",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1140304",
          "title":" Linnet.",
          "typeOfResource":"still image",
          "uuid":"510d47da-c05a-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"1140313",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1140313",
          "title":" Golden eagle.",
          "typeOfResource":"still image",
          "uuid":"510d47da-c06c-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"1133230",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1133230",
          "title":" Blackbird.",
          "typeOfResource":"still image",
          "uuid":"510d47da-c081-a3d9-e040-e00a18064a99"
        },
        {
          "imageID":"1133203",
          "itemLink":"http://digitalgallery.nypl.org/nypldigital/id?1133203",
          "title":" Mouse sparrow.",
          "typeOfResource":"still image",
          "uuid":"510d47da-c04b-a3d9-e040-e00a18064a99"
        }
      ]
    }
  }
}>)

SEARCH_NO_RESULTS = JSON.parse(%q<{
  "nyplAPI":{
    "request":{
      "page":"0",
      "perPage":"0",
      "search_text":"qwertyuiop",
      "totalPages":"0"
    },
    "response":{
      "headers":{
        "code":"200",
        "message":"OK",
        "status":"success"
      },
      "numResults":"0"
    }
  }
}>)

ITEMS_510d47e2 = JSON.parse(%q<{
  "nyplAPI": {
    "request": {
      "page": "0",
      "perPage": "0",
      "totalPages": "0",
      "uuid": "510d47e2-8e15-a3d9-e040-e00a18064a99"
    },
    "response": {
      "headers": {
        "code": "200",
        "message": "ok",
        "status": "success"
      },
      "numResults": "0"
    }
  }
}>)

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

MODS_510d47e2 = JSON.parse(%q<{
  "nyplAPI":{
    "request":{
      "uuid":{
        "$":"510d47e2-8e15-a3d9-e040-e00a18064a99"
      }
    },
    "response":{
      "headers":{
        "code":{
          "$":"200"
        },
        "message":{
          "$":"OK"
        },
        "status":{
          "$":"success"
        }
      },
      "mods":{
        "genre":{
          "$":"Pochoir prints"
        },
        "identifier":[
          {
            "$":"1617433",
            "displayLabel":"Dynix",
            "type":"local_other"
          },
          {
            "$":"b17540797",
            "displayLabel":"NYPL catalog ID (B-number)",
            "type":"local_bnumber"
          },
          {
            "$":"1017240",
            "displayLabel":"Hades struc ID (legacy)",
            "type":"local_hades"
          },
          {
            "$":"33333201354160",
            "displayLabel":"Barcode",
            "type":"local_barcode"
          }
        ],
        "location":[
          {
            "physicalLocation":[
              {
                "$":"nn",
                "authority":"marcorg",
                "type":"repository"
              },
              {
                "$":"Art and Picture Collection",
                "type":"division"
              }
            ]
          },
          {
            "shelfLocator":{
              "$":"PC NEW YC-Skyl"
            }
          },
          {
            "physicalLocation":{
              "$":"Art and Picture Collection",
              "type":"division"
            }
          }
        ],
        "name":{
          "affiliation":{

          },
          "authority":"",
          "namePart":{
            "$":"Franz Huld"
          },
          "role":{
            "roleTerm":[
              {
                "$":"pbl",
                "authority":"marcrelator",
                "type":"code",
                "valueURI":"http://id.loc.gov/vocabulary/relators/pbl"
              },
              {
                "$":"Publisher",
                "authority":"marcrelator",
                "type":"text",
                "valueURI":"http://id.loc.gov/vocabulary/relators/pbl"
              }
            ]
          },
          "type":"corporate",
          "valueURI":""
        },
        "originInfo":{
          "place":{
            "placeTerm":{
              "$":"New York"
            }
          }
        },
        "relatedItem":{
          "identifier":{
            "$":"e6b85000-c55f-012f-27fc-58d385a7bc34",
            "type":"uuid"
          },
          "relatedItem":{
            "identifier":{
              "$":"79d4a650-c52e-012f-67ad-58d385a7bc34",
              "type":"uuid"
            },
            "titleInfo":{
              "title":{
                "$":"Mid-Manhattan Picture Collection"
              }
            },
            "type":"host"
          },
          "titleInfo":{
            "title":{
              "$":"New York City -- skyline"
            }
          },
          "type":"host"
        },
        "schemaLocation":"http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd",
        "subject":[
          {
            "topic":{
              "$":"Sunrises & sunsets -- New York (State) -- New York",
              "authority":"lctgm"
            }
          },
          {
            "topic":{
              "$":"Skyscrapers -- New York (State) -- New York -- 1900-1909",
              "authority":"lctgm"
            }
          },
          {
            "cartographics":{

            },
            "geographic":{
              "$":"New York (N.Y.) -- 1900-1909",
              "authority":"naf"
            }
          }
        ],
        "titleInfo":[
          {
            "lang":"eng",
            "supplied":"no",
            "title":{
              "$":"Mid-Manhattan Picture Collection"
            },
            "usage":"primary"
          },
          {
            "supplied":"no",
            "title":{
              "$":"New York City -- Skyline"
            },
            "usage":"primary"
          },
          {
            "lang":"eng",
            "supplied":"no",
            "title":{
              "$":"High buildings in New York at night."
            },
            "usage":"primary"
          }
        ],
        "typeOfResource":{
          "$":"still image"
        },
        "version":"3.4"
      }
    }
  }
}>)
