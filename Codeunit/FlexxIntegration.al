/// <summary>
/// Codeunit Flexx Integration (ID 92980).
/// </summary>
codeunit 92980 "Flexx Integration"
{
    trigger OnRun()
    var

    begin


    end;

    /// <summary>
    /// </summary>
    /// <param name="Url">VAR Text.</param>
    /// <param name="Token">Text.</param>
    /// <param name="FromDate">Date.</param>
    /// <param name="Todate">Date.</param>
    procedure GetFilightDetails(var Url: Text; Token: Text; FromDate: Date; Todate: Date)
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        Request: HttpRequestMessage;
        Content: HttpContent;
        httpHeader: HttpHeaders;
        RequestString: text;
        ContentTxt: text;
        ResponseTxt: Text;
        Jobject: JsonObject;
        JToken: JsonToken;
        fromDateTXT: Text;
        TodateTxt: Text;
    begin
        fromDateTXT := Format(FromDate);
        TodateTxt := Format(Todate);
        HttpHeader.Clear();
        HttpHeader.Add('Content-Type', 'application/json');
        request.GetHeaders(HttpHeader);
        httpHeader.Add('Autorization', 'X-Auth-Token : ' + Token);
        RequestString := Url + '/external/flight/flights?from=' + fromDateTXT + '&to=' + TodateTxt;
        Request.SetRequestUri(RequestString);
        Request.Method('GET');
        if Client.Send(Request, Response) THEN begin
            if Response.IsSuccessStatusCode() then begin
                if Response.Content().ReadAs(ResponseTxt) then begin
                    Message('%1', ResponseTxt);
                end
                else
                    Error('Reponse filte type is invalid');
            end else
                error('Http Request Failed, return value(%1)(%2)', Response.HttpStatusCode(), ContentTxt)
        end else
            Error('Cannot connect to server');


    end;

    /// <summary>
    /// CreateAuth.
    /// </summary>
    /// <param name="Token">Text.</param>
    /// <returns>Return value of type Text.</returns>
    procedure CreateAuth(Token: Text): Text
    Var
        Base64Convert: Codeunit "Base64 Convert";
    begin
        exit('X-Auth-Token : ' + Base64Convert.ToBase64(Token));
    end;
}
