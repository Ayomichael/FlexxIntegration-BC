/// <summary>
/// Page Flight date dialog (ID 92981).
/// </summary>
page 92981 "Flight date dialog"
{
    Caption = 'Flight date dialog';
    PageType = StandardDialog;


    layout
    {
        area(content)
        {
            group(General)
            {
                field(FromDate; FromDate)
                {
                    Caption = 'From Date';
                    ApplicationArea = All;

                }
                field(Todate; Todate)
                {
                    Caption = 'To Date';
                    ApplicationArea = All;
                }
            }
        }
    }
    /// <summary>
    /// getFromdate.
    /// </summary>
    /// <returns>Return value of type Date.</returns>
    procedure getFromdate(): Date
    begin
        exit(FromDate);
    end;

    /// <summary>
    /// getTodate.
    /// </summary>
    /// <returns>Return value of type Date.</returns>
    procedure getTodate(): Date
    begin
        exit(Todate);
    end;

    var
        FromDate: Date;
        Todate: date;

}
