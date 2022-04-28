query 50101 "Sales Header with Item Qt."
{
    APIGroup = 'exercise';
    APIPublisher = 'vss';
    APIVersion = 'v1.0';
    EntityName = 'header';
    EntitySetName = 'headers';
    QueryType = API;

    elements
    {
        dataitem(salesHeader; "Sales Header")
        {
            column(no; "No.")
            {
            }
            column(sellToCustomerNo; "Sell-to Customer No.")
            {
            }
            column(sellToCustomerName; "Sell-to Customer Name")
            {
            }
            column(orderDate; "Order Date")
            {
            }
            dataitem(lineQuantity; "Sales Line")
            {
                DataItemLink = "Document No." = salesHeader."No.";
                SqlJoinType = InnerJoin;
                column(totalItems; Quantity)
                {
                    Method = Sum;
                }
            }
            column(status; Status)
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
