page 50111 "Support Ticket Page"
{
    ApplicationArea = All;
    Caption = 'Support Ticket Page';
    PageType = List;
    SourceTable = "Support Ticket table";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Ticket ID"; Rec."Ticket ID")
                {
                    ToolTip = 'Specifies the value of the Ticket ID field.';
                }
                field("Assigned Consultant"; Rec."Assigned Consultant")
                {
                    ToolTip = 'Specifies the value of the Assigned Consultant field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Logged Hours"; Rec."Logged Hours")
                {
                    ToolTip = 'Specifies the value of the Logged Hours field.';
                }
                field(Priority; Rec.Priority)
                {
                    ToolTip = 'Specifies the value of the Priority field.';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Log Support Call")
            {
                Caption = 'Log Support Call';
                ApplicationArea = All;
                trigger OnAction()
                var
                    TicketRec: Record "Support Ticket Table";
                begin
                    TicketRec.Init();
                    TicketRec.Description := '';
                    TicketRec.Priority := TicketRec.Priority::Medium;
                    TicketRec.Status := TicketRec.Status::Open;
                    TicketRec.Insert(true);
                    Page.Run(Page::"Support Ticket Card", TicketRec);
                end;
            }
        }
    }
}
