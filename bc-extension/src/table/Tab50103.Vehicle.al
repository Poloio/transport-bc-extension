table 50103 Vehicle
{
    Caption = 'Vehículo';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Plate Code"; Code[7])
        {
            Caption = 'Matrícula';
            DataClassification = ToBeClassified;
        }
        field(2; "License Type"; Code[5])
        {
            Caption = 'Tipo de licencia';
            TableRelation = "License Type";
            DataClassification = ToBeClassified;
        }
        field(3; Model; Text[50])
        {
            Caption = 'Modelo';
            DataClassification = ToBeClassified;
        }
        field(4; "Max. Palets Count"; Integer)
        {
            Caption = 'Max. cantidad de palets';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Plate Code")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Plate code", Model, "License Type", "Max. Palets Count")
        { }
    }
}
