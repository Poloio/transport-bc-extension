page 50103 Vehicles
{
    ApplicationArea = All;
    Caption = 'Vehículos';
    PageType = List;
    CardPageId = "Vehicle card";
    SourceTable = Vehicle;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Plate Code"; Rec."Plate Code")
                {
                    ToolTipML = ENG = 'Specifies the value of the Matrícula field.', ESP = 'Especifica la matrícula del vehículo.';
                    ApplicationArea = All;
                }
                field("License Type"; Rec."License Type")
                {
                    ToolTip = 'Specifies the value of the Tipo de licencia field.';
                    ApplicationArea = All;
                }
                field(Model; Rec.Model)
                {
                    ToolTip = 'Specifies the value of the Modelo field.';
                    ApplicationArea = All;
                }
                field("Max. Palets Count"; Rec."Max. Palets Count")
                {
                    ToolTip = 'Specifies the value of the Max. cantidad de palets field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
