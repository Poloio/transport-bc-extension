codeunit 50100 "Test Ping"
{
    [ServiceEnabled]
    procedure Ping(ping: Integer): Integer
    begin
        exit(-ping);
    end;

    [ServiceEnabled]
    procedure FirstDayOfNextMonth(date: Date): Date
    var
        formula: Text[30];
    begin
        formula := '<-CM+2M-1D>';
        exit(CalcDate(formula, date));
    end;
}
