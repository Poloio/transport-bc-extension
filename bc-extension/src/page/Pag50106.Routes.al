page 50106 Routes
{
    ApplicationArea = All;
    CardPageID = "Route card";
    Caption = 'Rutas de envío';
    PageType = List;
    SourceTable = Route;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Number; Rec.Number)
                {
                    ToolTip = 'Specifies the value of the Número field.';
                    ApplicationArea = All;
                }
                field("Driver Employee Code"; Rec."Driver Employee Code")
                {
                    ToolTip = 'Specifies the value of the Cod. Conductor field.';
                    ApplicationArea = All;
                }
                field("Vehicle Code"; Rec."Vehicle Code")
                {
                    ToolTip = 'Specifies the value of the Cod. Vehículo field.';
                    ApplicationArea = All;
                }
                field("Pick-up Province"; Rec."Pick-up Province")
                {
                    ToolTip = 'Specifies the value of the Provincia de origen field.';
                    ApplicationArea = All;
                }
                field("Pick-up Address"; Rec."Pick-up Address")
                {
                    ToolTip = 'Specifies the value of the Dirección de recogida field.';
                    ApplicationArea = All;
                }
                field("Delivery Province"; Rec."Delivery Province")
                {
                    ToolTip = 'Specifies the value of the Provincia de destino field.';
                    ApplicationArea = All;
                }
                field("Delivery Address"; Rec."Delivery Address")
                {
                    ToolTip = 'Specifies the value of the Dirección de entrega field.';
                    ApplicationArea = All;
                }
                field(Distance; Rec.Distance)
                {
                    ToolTip = 'Specifies the value of the Distance field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
