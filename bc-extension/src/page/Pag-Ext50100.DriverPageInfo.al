pageextension 50100 DriverPageInfo extends "Employee Card"
{
    layout
    {
        addlast(Personal)
        {
            field("NIF/License"; Rec."NIF/License")
            {
                ApplicationArea = All;
                Caption = 'DNI/Permiso de conducir';
            }
        }
    }
}
