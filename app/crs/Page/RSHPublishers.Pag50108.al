page 50108 "RSH Publishers"
{
    Caption = 'RSH Publishers';
    PageType = List;
    SourceTable = "RSH Publisher";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                    ApplicationArea = All;
                }
                field(Discription; Rec.Discription)
                {
                    ToolTip = 'Specifies the value of the Discription field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
