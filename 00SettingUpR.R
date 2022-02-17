con <- DBI::dbConnect(odbc::odbc(),
                      driver = "MySQL ODBC 8.0 Unicode Driver",
                      database = "farmers_market",
                      UID = rstudioapi::askForPassword("UID"),
                      PWD = rstudioapi::askForPassword("PWD"),
                      host = "localhost",
                      port = 3306)
