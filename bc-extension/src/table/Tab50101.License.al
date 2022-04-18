table 50101 License
{
    Caption = 'Licencia de conducir';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Number; Text[9])
        {
            Caption = 'Número';
            DataClassification = ToBeClassified;
        }
        field(2; "Type"; Code[5])
        {
            Caption = 'Tipo';
            TableRelation = "License Type";
            DataClassification = ToBeClassified;
        }
        field(3; "Expire Date"; Date)
        {
            Caption = 'Fecha de caducidad';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Number)
        {
            Clustered = true;
        }
    }
}
