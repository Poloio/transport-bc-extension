codeunit 50102 ItemQueries
{
    TableNo = Item;

    procedure GetItemsFromIDArray(requestBody: Text): Text
    var
        itemIDArray: JsonArray;
        returnIDArray:
    begin
        itemIDArray.ReadFrom(requestBody);
        // TODO finish later
    end;

}
