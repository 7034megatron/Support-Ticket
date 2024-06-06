page 50101 "Support Ticket Card"
{
    PageType = Card;
    SourceTable = "Support Ticket Table";
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Ticket ID"; Rec."Ticket ID")
                {
                    Editable = false;
                }
                field("Description"; Rec.Description)
                {
                }
                field("Priority"; Rec.Priority)
                {
                }
                field("Assigned Consultant"; Rec."Assigned Consultant")
                {
                }
                field("Status"; Rec.Status)
                {
                }
                field("Logged Hours"; Rec."Logged Hours")
                {
                }
            }
        }
    }
}
