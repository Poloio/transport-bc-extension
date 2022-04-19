page 50108 "Vehicle card"
{
    Caption = 'Ficha de vehículo';
    PageType = Card;
    SourceTable = Vehicle;
    UsageCategory = Tasks;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Plate Code"; Rec."Plate Code")
                {
                    ToolTip = 'Specifies the value of the Matrícula field.';
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
