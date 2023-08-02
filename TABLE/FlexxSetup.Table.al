/// <summary>
/// Table Flexx Setup (ID 92980).
/// </summary>
table 92980 "Flexx Setup"
{
    //Caption = 'Flexx API Setup';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "key"; Code[20])
        {
            Caption = 'key';
            DataClassification = ToBeClassified;
        }

        field(2; accessor_owner_email; Text[250])
        {
            Caption = 'accessor_owner_email';
            DataClassification = ToBeClassified;
        }
        field(3; accessor_owner_password; Text[250])
        {
            Caption = 'accessor_owner_password';
            DataClassification = ToBeClassified;
        }
        field(4; accessor_api_key_email; Text[250])
        {
            Caption = 'accessor_api_key_email';
            DataClassification = ToBeClassified;
        }
        field(5; accessor_api_key_password; Text[250])
        {
            Caption = 'accessor_api_key_password';
            DataClassification = ToBeClassified;
            ExtendedDatatype = Masked;
        }
        field(6; URL; Text[250])
        {
            Caption = 'Url';
            DataClassification = ToBeClassified;
        }
        field(7; "Api Token"; Text[250])
        {
            Caption = 'Api Token';
        }
        field(8; "Main ID"; Text[250])
        {
            Caption = 'Main Id';
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