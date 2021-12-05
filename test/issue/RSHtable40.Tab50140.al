table 50140 "RSH table40"
{
    Caption = 'table40';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = CustomerContent;
        }
        field(2; "Text"; Text[150])
        {
            Caption = 'Text';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }

}
