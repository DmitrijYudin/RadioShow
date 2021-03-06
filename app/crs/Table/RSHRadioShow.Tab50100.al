table 50100 "RSH Radio Show"
{
    Caption = 'RSH Radio Show';
    DataClassification = CustomerContent;
    LookupPageId = "RSH Radio Show List";
    DrillDownPageId = "RSH Radio Show List";
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.', comment = 'ESP="Code."';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                RadioShowSetup: Record "RSH Radio Show Setup";
                NoSeriesMgt: Codeunit NoSeriesManagement;
            begin
                if "No." <> xRec."No." then begin
                    TestNoSeries(RadioShowSetup);
                    NoSeriesMgt.TestManual(RadioShowSetup."Radio Show Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(10; "Radio Show Type"; Code[10])
        {
            Caption = 'Radio Show Type';
            DataClassification = CustomerContent;
            TableRelation = "RSH Radio Show Type";

        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(40; "Run Time"; Duration)
        {
            Caption = 'Run Time';
            DataClassification = CustomerContent;
        }
        field(50; "Host No."; Code[20])
        {
            Caption = 'Host No.';
            DataClassification = CustomerContent;
        }
        field(60; "Host Name"; Text[50])
        {
            Caption = 'Host Name';
            DataClassification = CustomerContent;
        }
        field(100; "Average Listeners"; Decimal)
        {
            Caption = 'Average Listeners';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("RSH Listenership Entry"."Listener Count" where(Date = field("Date Filter")));
            Description = 'FlowField:Listener Statistics';
        }
        field(110; "Audience Share"; Decimal)
        {
            Caption = 'Audience Share';
            Editable = false;
            CalcFormula = average("RSH Listenership Entry"."Audience Share" where(Date = field("Date Filter")));
            Description = 'FlowField: Listener Statistics';
            FieldClass = FlowField;
        }
        field(120; "Advertising Revenue"; Decimal)
        {
            Caption = 'Advertising Revenue';
            Editable = false;
            CalcFormula = sum("RSH Radio Show Entry"."Fee Amount" where(Date = field("Date Filter"),
                                                                        "Data format" = filter(Advertisement)));
            Description = 'FlowField: Playlist Ledger';
            FieldClass = FlowField;
        }
        field(130; "Royalty Cost"; Decimal)
        {
            Caption = 'Royalty Cost';
            Editable = false;
            CalcFormula = sum("RSH Radio Show Entry"."Fee Amount" where(Date = field("Date Filter"),
                                                                       "Data format" = filter(Vinyl | CD | MP3)));
            Description = 'FlowField: Playlist Ledger';
            FieldClass = FlowField;
        }

        field(140; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        // field(1000; Frequency; Option)
        // {
        //     Caption = 'Frequency';
        //     DataClassification = ToBeClassified;
        //     OptionMembers = Hourly,Daily,Weekly,Mounthly;
        // }
        field(1000; Frequency; Enum "RSH Frequency")
        {
            Caption = 'Frequency';
            DataClassification = ToBeClassified;

        }

        field(1010; "PSA Planned Quantity"; Integer)
        {
            Caption = 'PSA Planned Quantity';
            DataClassification = ToBeClassified;
        }
        field(1020; "Ads Planned Quantity"; Integer)
        {
            Caption = 'Ads Planned Quantity';
            DataClassification = ToBeClassified;
        }
        field(1030; "News Required"; Boolean)
        {
            Caption = 'News Required';
            DataClassification = ToBeClassified;
            InitValue = true;
        }
        field(1040; "News Duration"; Duration)
        {
            Caption = 'News Duration';
            DataClassification = ToBeClassified;
        }
        field(1050; "Sports Required"; Boolean)
        {
            Caption = 'Sports Required';
            InitValue = true;
            DataClassification = ToBeClassified;
        }
        field(1060; "Sports Duration"; Duration)
        {
            Caption = 'Sports Duration';
            DataClassification = ToBeClassified;
        }

        field(1070; "Weather Required"; Boolean)
        {
            Caption = 'Weather Required';
            InitValue = true;
            DataClassification = ToBeClassified;
        }

        field(1080; "Weather Duration"; Duration)
        {
            Caption = 'Weather Duration';
            DataClassification = ToBeClassified;
        }

        field(1090; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }

    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Name; Name)
        {
        }
        key(HostName; "Host Name")
        {
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, "Host Name", "Radio Show Type")
        {
        }
        fieldgroup(Brick; "No.", Name, "Audience Share")
        {
        }
    }

    trigger OnInsert()
    begin
        InitInsert();
    end;

    local procedure InitInsert()
    var
        RadioShowSetup: Record "RSH Radio Show Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "No." <> '' then
            exit;
        TestNoSeries(RadioShowSetup);
        NoSeriesMgt.InitSeries(RadioShowSetup."Radio Show Nos.", xRec."No. Series", 0D, "No.", "No. Series");
    end;

    local procedure TestNoSeries(var RadioShowSetup: Record "RSH Radio Show Setup")
    // var
    //     RadioShowNosErr: Label 'The field %1 should not be empty in Table %2!', Comment = '%1 = fieldCaption,%2 = TableCaption';
    begin
        if not RadioShowSetup.get() then begin
            RadioShowSetup.Insert();
            Commit();
        end;
        RadioShowSetup.TestField("Radio Show Nos.");
        // if RadioShowSetup."Radio Show Nos." = '' then
        //     Error(RadioShowNosErr, RadioShowSetup.FieldCaption("Radio Show Nos."), RadioShowSetup.TableCaption());
    end;
}

