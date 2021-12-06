tableextension 50100 "RSH Item" extends Item
{
    fields
    {
        field(50100; "RSH Publisher Code"; Code[20])
        {
            Caption = 'Publisher Code';
            DataClassification = CustomerContent;
        }
        field(50101; "RSH ACSAP ID"; Integer)
        {
            Caption = 'ACSAP ID';
            DataClassification = CustomerContent;
        }
        field(50102; "RSH Duration"; Integer)
        {
            Caption = 'RSH Duration';
            DataClassification = CustomerContent;
        }
        field(50103; "RSH Data format"; Enum "RSH Playlist Line Data Format")
        {
            Caption = 'RSH Data format';
            DataClassification = CustomerContent;
        }
        field(50104; "RSH MP3 Location"; Text[250])
        {
            Caption = 'RSH MP3 Location';
            DataClassification = CustomerContent;
        }

    }
}

