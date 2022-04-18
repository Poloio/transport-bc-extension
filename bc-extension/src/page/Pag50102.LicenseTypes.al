page 50102 "License Types"
{
    ApplicationArea = All;
    Caption = 'License Types';
    PageType = List;
    SourceTable = "License Type";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Tipo field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
