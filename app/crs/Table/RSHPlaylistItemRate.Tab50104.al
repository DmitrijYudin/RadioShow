table 50104 "RSH Playlist Item Rate"
{
    Caption = 'RSH Playlist Item Rate';
    DataClassification = ToBeClassified;

    fields
    {
        // field(1; "Sourse Type"; Option)
        // {
        //     Caption = 'Sourse Type';
        //     DataClassification = CustomerContent;
        //     OptionMembers = Vendor,Customer;
        // }
        field(1; "Source Type"; Enum "RSH Playlist Item Source Type")
        {
            Caption = 'Source Type';
            DataClassification = CustomerContent;
        }

        field(20; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            DataClassification = CustomerContent;
            TableRelation = if ("Source Type" = const(Vendor)) Vendor."No."
            else
            if ("Source Type" = const(Customer)) Customer."No.";
        }
        field(30; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
        }
        field(40; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = CustomerContent;
        }
        field(50; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = CustomerContent;
        }
        field(60; "Rate Amount"; Decimal)
        {
            Caption = 'Rate Amount';
            DataClassification = CustomerContent;
        }
        field(70; "Publisher Code"; Code[20])
        {
            Caption = 'Publisher Code';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Source Type")
        {
            Clustered = true;
        }
    }

}
