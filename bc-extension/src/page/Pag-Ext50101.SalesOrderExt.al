pageextension 50101 "Sales Order Ext" extends "Sales Order"
{
    actions
    {
        addafter(Release)
        {
            action("Prepare route")
            {
                Promoted = true;
                Image = Shipment;
                RunObject = page "Route card";
                ApplicationArea = All;
            }
        }
    }
}
