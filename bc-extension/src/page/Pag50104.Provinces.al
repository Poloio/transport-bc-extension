page 50104 Provinces
{
    ApplicationArea = All;
    Caption = 'Provinces';
    PageType = List;
    SourceTable = Province;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Código field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
