pageextension 50101 "Sales Order Ext" extends "Sales Order"
{
    actions
    {
        addafter(Action21)
        {
            group(Transport)
            {
                Image = Delivery;
                Caption = 'Transportes';
                action("Prepare route")
                {
                    Caption = 'Preparar ruta';
                    Image = Shipment;
                    RunObject = page "Route card";
                    RunPageLink = "Order Code" = field("No.");
                    ApplicationArea = All;
                }
            }
        }
    }
}
