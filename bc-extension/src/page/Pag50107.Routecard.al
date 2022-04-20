page 50107 "Route card"
{
    Caption = 'Route card';
    PageType = Card;
    UsageCategory = Tasks;
    SourceTable = Route;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Number; Rec.Number)
                {
                    ToolTip = 'Specifies the value of the Número field.';
                    ApplicationArea = All;
                }
                field("Delivery Note Code"; Rec."Delivery Note Code")
                {
                    ApplicationArea = All;
                }
                field("Driver Employee Code"; Rec."Driver Employee Code")
                {
                    ToolTip = 'Specifies the value of the Cod. Conductor field.';
                    ApplicationArea = All;
                    Enabled = TruckSelected;
                }
                field("Vehicle Code"; Rec."Vehicle Code")
                {
                    ToolTip = 'Specifies the value of the Cod. Vehículo field.';
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        if Rec."Vehicle Code" <> '' then begin
                            TruckSelected := true;
                        end else begin
                            TruckSelected := false;
                        end;
                        ;
                    end;
                }
                field("Needed Lic."; Rec."Needed Lic.")
                {
                    ToolTip = 'Specifies the value of the Perm. Necesario field.';
                    ApplicationArea = All;
                    Editable = false;
                }
            }

            group(Direcciones)
            {
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
            group(Transporte)
            {
                field("Departure Time"; Rec."Departure Time")
                {
                    ApplicationArea = All;
                }
                field("Delivery Time"; Rec."Delivery Time")
                {
                    ApplicationArea = All;
                }
                field("Return Time"; Rec."Return Time")
                {
                    ApplicationArea = All;
                }
                field("Fuel Cost"; Rec."Fuel Cost")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    var
        TruckSelected: Boolean;
}
