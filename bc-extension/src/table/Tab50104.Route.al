table 50105 Route
{
    Caption = 'Route';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Number"; Integer)
        {
            Caption = 'Número';
            AutoIncrement = true;
            DataClassification = ToBeClassified;
        }
        field(2; "Driver Employee Code"; Code[10])
        {
            Caption = 'Cod. Conductor';
            TableRelation = Employee;
            DataClassification = ToBeClassified;
        }
        field(3; "Vehicle Code"; Code[7])
        {
            Caption = 'Cod. Vehículo';
            TableRelation = Vehicle;
            DataClassification = ToBeClassified;
        }
        field(4; "Pick-up Province"; Code[3])
        {
            Caption = 'Provincia de origen';
            TableRelation = Province;
            DataClassification = ToBeClassified;
        }

        field(5; "Pick-up Address"; Text[100])
        {
            Caption = 'Dirección de recogida';
            DataClassification = ToBeClassified;
        }

        field(6; "Delivery Province"; Code[3])
        {
            Caption = 'Provincia de destino';
            TableRelation = Province;
            DataClassification = ToBeClassified;
        }

        field(7; "Delivery Address"; Text[100])
        {
            Caption = 'Dirección de entrega';
            DataClassification = ToBeClassified;
        }

        field(8; Distance; Integer)
        {
            Caption = 'Distance';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Number")
        {
            Clustered = true;
        }
    }
}
