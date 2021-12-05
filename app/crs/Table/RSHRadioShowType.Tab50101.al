table 50101 "RSH Radio Show Type"
{
    Caption = 'RSH Radio Show Type';
    DataClassification = ToBeClassified;
    LookupPageId = "RSH Radio Show Type";
    DrillDownPageId = "RSH Radio Show Type";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(10; Discription; Text[50])
        {
            Caption = 'Discription';
            DataClassification = CustomerContent;
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
