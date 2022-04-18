tableextension 50100 "Driver Info" extends Employee
{
    fields
    {
        field(50100; "NIF/License"; Code[9])
        {
            Caption = 'DNI/Permiso';
            TableRelation = License;
            DataClassification = ToBeClassified;
        }
    }
}
