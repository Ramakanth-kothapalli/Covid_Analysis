[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared DefaultDestination = Lakehouse.Contents([EnableFolding = false]){[workspaceId = "a68d353b-44d9-44d7-b728-9328bf598b09"]}[Data]{[lakehouseId = "45793a36-e1b5-4026-b558-6c7006697404"]}[Data];
[BindToDefaultDestination = true]
shared ecdc_cases = let
  Source = Csv.Document(Web.Contents("https://myunt-my.sharepoint.com/personal/ramakanthkothapalli_my_unt_edu/Documents/Apps/Microsoft Power Query/Uploaded Files/ecdc_cases.csv"), [Delimiter = ",", Columns = 14, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"date_rep", type date}, {"day", Int64.Type}, {"month", Int64.Type}, {"year", Int64.Type}, {"cases", Int64.Type}, {"deaths", Int64.Type}, {"countries_and_territories", type text}, {"geo_id", type text}, {"country_territory_code", type text}, {"pop_data_2018", type text}, {"continent_exp", type text}, {"load_date", type datetime}, {"iso_country", type text}, {"daterep", type date}})
in
  #"Changed column type";
