table 50111 "Support Ticket table"
{
    Caption = 'Support Ticket table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Ticket ID"; Integer)
        {
            Caption = 'Ticket ID';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; Description; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }
        field(3; Priority; Option)
        {
            Caption = 'Priority';
            DataClassification = ToBeClassified;
            OptionMembers = Low,Medium,High;
        }
        field(4; "Assigned Consultant"; Code[20])
        {
            Caption = 'Assigned Consultant';
            DataClassification = ToBeClassified;
            TableRelation = Employee."No.";
        }
        field(5; Status; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionMembers = Open,InProgress,Closed;
        }
        field(6; "Logged Hours"; Decimal)
        {
            Caption = 'Logged Hours';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Ticket ID")
        {
            Clustered = true;
        }
    }
}
