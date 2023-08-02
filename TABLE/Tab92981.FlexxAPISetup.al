table 92981 "Flexx API Setup"
{
    Caption = 'Flexx API Setup';
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "key"; Code[20])
        {
            Caption = 'key';
            DataClassification = CustomerContent;
        }

        field(2; URL; Text[250])
        {
            Caption = 'Url';
            DataClassification = CustomerContent;
        }

        field(3; Email; Text[250])
        {
            Caption = '';
            DataClassification = CustomerContent;
        }

        field(4; "Api Token"; Text[250])
        {
            Caption = 'Api Token';
            DataClassification = CustomerContent;
        }

        field(5; Password; Text[250])
        {
            Caption = '';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Key")
        {
            Clustered = true;
        }
    }
}
