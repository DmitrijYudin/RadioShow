table 50103 "RSH Playlist Line"
{
    Caption = 'RSH Playlist Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Code[20])
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        // field(10; Type; Option)
        // {
        //     Caption = 'Type';
        //     DataClassification = CustomerContent;
        //     OptionMembers = ,Resource,Show,Item;
        // }
        field(10; "Playlist Type"; Enum "RSH Playlist Line Type")
        {
            Caption = 'Playlist Type';
            DataClassification = ToBeClassified;
        }
        field(20; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            TableRelation =
            if ("Playlist Type" = const(Resource)) Resource."No."
            else
            if ("Playlist Type" = const(Show)) "RSH Radio Show"."No."
            else
            if ("Playlist Type" = const(Item)) Item."No.";
        }
        // field(30; "Data Format"; Option)
        // {
        //     Caption = 'Data Format';
        //     DataClassification = CustomerContent;
        //     OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
        // }
        field(30; "Data Format"; Enum "RSH Playlist Line Data Format")
        {
            Caption = 'Data Format';
            DataClassification = CustomerContent;
        }
        field(40; Publisher; Code[10])
        {
            Caption = 'Publisher';
            DataClassification = CustomerContent;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(60; "Duration"; Duration)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
        }
        field(70; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = CustomerContent;
        }
        field(80; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

}
