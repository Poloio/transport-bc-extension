table 50102 "License Type"
{
    Caption = 'Tipo de licencia';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Type"; Code[5])
        {
            Caption = 'Tipo';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Type")
        {
            Clustered = true;
        }
    }
}
