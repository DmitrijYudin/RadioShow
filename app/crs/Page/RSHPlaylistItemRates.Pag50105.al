page 50105 "RSH Playlist Item Rates"
{

    ApplicationArea = All;
    Caption = 'RSH Playlist Item Rates';
    PageType = List;
    SourceTable = "RSH Playlist Item Rate";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Sourse Type"; Rec."Source Type")
                {
                    ToolTip = 'Specifies the value of the Sourse Type field.';
                    ApplicationArea = All;
                }
                field("Playlist Item Rate Sourse Type"; Rec."Source Type")
                {
                    ToolTip = 'Specifies the value of the Playlist Item Rate Sourse Type field.';
                    ApplicationArea = All;
                }
                field("Sourse No."; Rec."Source No.")
                {
                    ToolTip = 'Specifies the value of the Sourse No. field.';
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field.';
                    ApplicationArea = All;
                }
                field("Start Time"; Rec."Start Time")
                {
                    ToolTip = 'Specifies the value of the Start Time field.';
                    ApplicationArea = All;
                }
                field("End Time"; Rec."End Time")
                {
                    ToolTip = 'Specifies the value of the End Time field.';
                    ApplicationArea = All;
                }
                field("Rate Amount"; Rec."Rate Amount")
                {
                    ToolTip = 'Specifies the value of the Rate Amount field.';
                    ApplicationArea = All;
                }
                field("Publisher Code"; Rec."Publisher Code")
                {
                    ToolTip = 'Specifies the value of the Publisher Code field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
