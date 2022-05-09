
codeunit 50101 "Item Crud"
{
    TableNo = Item;
    [ServiceEnabled]
    procedure CreateFromParams(no: Text; description: Text; standardCost: Decimal; unitCost: Decimal; lastDirectCost: Decimal; profitPercent: Decimal;
                                unitPrice: Decimal; overheadRate: Decimal; indirectCostPercent: Decimal)
    var
        newItem: Record Item;
    begin
        newItem.Init(); //Initialize new Item object
        newItem."No." := no;
        newItem.Description := description;
        newItem."Standard Cost" := standardCost;
        newItem."Unit Cost" := unitCost;
        newItem."Last Direct Cost" := lastDirectCost;
        newItem."Profit %" := profitPercent;
        newItem."Unit Price" := unitPrice;
        newItem."Overhead Rate" := overheadRate;
        newItem."Indirect Cost %" := indirectCostPercent;
        newItem.Insert(true); //Inserts it in the table including triggers
    end;


    [ServiceEnabled]
    procedure CreateFromString(itemJson: Text)
    // TODO Needs a proper formatted string passed as a json value -> {"value": "{ \"property\": \"value\"}
    var
        jItem: JsonObject;
        newItem: Record Item;
        isValid: Boolean;
        jToken: JsonToken;
    begin
        isValid := jItem.ReadFrom(itemJson);
        if isValid then begin
            newItem.Init();
            //Set new Item from json object
            jItem.Get('no', jToken);
            newItem."No." := jToken.AsValue().AsText();

            jItem.Get('description', jToken);
            newItem.Description := jToken.AsValue().AsText();

            jItem.Get('standardCost', jToken);
            newItem."Standard Cost" := jToken.AsValue().AsDecimal();

            jItem.Get('unitCost', jToken);
            newItem."Unit Cost" := jToken.AsValue().AsDecimal();

            jItem.Get('lastDirectCost', jToken);
            newItem."Last Direct Cost" := jToken.AsValue().AsDecimal();

            jItem.Get('profitPercent', jToken);
            newItem."Profit %" := jToken.AsValue().AsDecimal();

            jItem.Get('unitPrice', jToken);
            newItem."Unit Price" := jToken.AsValue().AsDecimal();

            jItem.Get('overheadRate', jToken);
            newItem."Overhead Rate" := jToken.AsValue().AsDecimal();

            jItem.Get('indirectCostPercent', jToken);
            newItem."Indirect Cost %" := jToken.AsValue().AsDecimal();
            //Finally inserting new object
            newItem.Insert(true);
        end else begin
            Error('JSON error');
        end;
    end;
}
