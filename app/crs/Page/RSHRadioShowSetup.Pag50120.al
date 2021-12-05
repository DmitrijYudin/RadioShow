page 50120 "RSH Radio Show Setup"
{
    Caption = 'RSH Radio Show Setup';
    PageType = Card;
    SourceTable = "RSH Radio Show Setup";
    ApplicationArea = all;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Radio Show Nos."; Rec."Radio Show Nos.")
                {
                    ToolTip = 'Specifies the value of the Radio Show Nos. field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
