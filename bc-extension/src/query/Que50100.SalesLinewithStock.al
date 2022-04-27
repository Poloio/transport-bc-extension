query 50100 "Sales Line with Stock"
{
    APIGroup = 'exercise';
    APIPublisher = 'vssSistemas';
    APIVersion = 'v1.0';
    EntityName = 'line';
    EntitySetName = 'lines';
    QueryType = API;

    elements
    {
        dataitem(salesLine; "Sales Line")
        {
            column(documentNo; "Document No.")
            {
            }
            column(lineNo; "Line No.")
            {
            }
            column(no; "No.")
            {
            }
            column(quantity; Quantity)
            {
            }
            dataitem(productInfo; Item)
            {
                DataItemLink = "No." = salesLine."No.";
                SqlJoinType = InnerJoin;
                column(unitsInStock; Inventory)
                {
                }
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
