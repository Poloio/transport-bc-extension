table 50104 Province
{
    Caption = 'Province';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[3])
        {
            Caption = 'Código';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
