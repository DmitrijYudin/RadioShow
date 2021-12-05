table 50120 "RSH Radio Show Setup"
{
    Caption = 'RSH Radio Show Setup';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; "Radio Show Nos."; Code[20])
        {
            Caption = 'Radio Show Nos.';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }

}
