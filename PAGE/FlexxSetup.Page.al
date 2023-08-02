/// <summary>
/// Page Flexx Setup (ID 92980).
/// </summary>
page 92980 "Flexx Setup"
{
    Caption = 'Flexx API Setup';
    PageType = Card;
    SourceTable = "Flexx API Setup";
    UsageCategory = Administration;
    ApplicationArea = All;
    Editable = true;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(URL; Rec.URL)
                {
                    ToolTip = 'Specifies the value of the Url field.';
                    ApplicationArea = All;
                }

                field("Api Token"; Rec."Api Token")
                {
                    ToolTip = 'Specifies the value of the Api Token field.';
                    ApplicationArea = All;
                }

                field(Email; Rec.Email)
                {
                    Caption = 'Username Email';
                    ApplicationArea = ALL;
                    ToolTip = 'Specifies the value of the.';
                }
                field(Password; Rec.Password)
                {
                    Caption = 'Password';
                    ApplicationArea = ALL;
                    ToolTip = 'Specifies the value of the.';
                }

            }
        }

    }
    actions
    {
        area(Processing)
        {
            action(GetFlightDetails)
            {
                Caption = 'Get Flight Details';
                ApplicationArea = All;
                Image = GetLines;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    FlexxCodeunit: Codeunit "Flexx Integration";
                    DateDialog: Page "Flight date dialog";
                    fromdate: Date;
                    toDate: Date;
                begin
                    Clear(fromdate);
                    Clear(toDate);
                    if DateDialog.RunModal() = Action::OK then begin
                        fromdate := DateDialog.getFromdate();
                        toDate := DateDialog.getTodate();
                    end;
                    FlexxCodeunit.GetFilightDetails(Rec.URL, Rec."Api Token", fromdate, toDate);

                end;
            }
        }
    }

}