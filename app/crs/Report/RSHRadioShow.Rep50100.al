report 50100 "RSH Radio Show"
{
    Caption = 'RSH Radio Show';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    WordLayout = 'crs\layout\RSHRadioShows.docx';
    RDLCLayout = 'crs\layout\RSHRadioShows.RDLC';
    DefaultLayout = Word;

    dataset
    {
        dataitem("RSH RadioShow"; "RSH Radio Show")
        {
            column(No; "No.")
            {
                IncludeCaption = true;
            }
            column(RadioShowType; "Radio Show Type")
            {
                IncludeCaption = true;
            }
            column(Name; Name)
            {
                IncludeCaption = true;
            }
            column(RunTime; "Run Time")
            {
                IncludeCaption = true;
            }
            column(HostNo; "Host No.")
            {
                IncludeCaption = true;
            }
            column(HostName; "Host Name")
            {
                IncludeCaption = true;
            }
            column(AverageListeners; "Average Listeners")
            {
                IncludeCaption = true;
            }
            column(AudienceShare; "Audience Share")
            {
                IncludeCaption = true;
            }
            column(AdvertisingRevenue; "Advertising Revenue")
            {
                IncludeCaption = true;
            }
            column(RoyaltyCost; "Royalty Cost")
            {
                IncludeCaption = true;
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
