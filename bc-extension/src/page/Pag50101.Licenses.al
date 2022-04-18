page 50101 Licenses
{
    ApplicationArea = All;
    Caption = 'Licenses';
    PageType = List;
    SourceTable = License;
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
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Tipo field.';
                    ApplicationArea = All;
                }
                field("Expire Date"; Rec."Expire Date")
                {
                    ToolTip = 'Specifies the value of the Fecha de caducidad field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
