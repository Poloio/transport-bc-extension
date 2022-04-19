tableextension 50100 "Driver Info" extends Employee
{
    fields
    {
        field(50100; "NIF/License"; Code[9])
        {
            Caption = 'DNI/Permiso';
            TableRelation = License;
            DataClassification = ToBeClassified;
            //Updates Lic. Type field whenever user changes this field's value
            trigger OnValidate()
            begin
                CalcFields("License type");
            end;
        }

        field(50101; "License type"; Code[5])
        {
            FieldClass = FlowField;
            //References Type value from License table where Number equals the employee NIF
            CalcFormula = LookUp(License.Type WHERE(Number = FIELD("NIF/License")));
            Caption = 'Tipo de permiso';
            Editable = false;
        }
    }
}
