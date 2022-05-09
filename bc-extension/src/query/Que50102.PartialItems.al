query 50102 PartialItems
{
    APIGroup = 'queries';
    APIPublisher = 'vss';
    APIVersion = 'v1.0';
    EntityName = 'item';
    EntitySetName = 'items';
    QueryType = API;

    elements
    {
        dataitem(item; Item)
        {
            column(no; "No.")
            {
            }
            column(description; Description)
            {
            }
        }
    }
}
