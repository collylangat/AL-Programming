page 50112 "Statements Card"
{
    PageType = Card;
    UsageCategory = Documents;
    Caption = 'Statements Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Difficulty; Difficulty)
                {
                    ApplicationArea = All;
                    Caption = 'Difficulty';
                    ToolTip = 'Enter difficulty';

                    trigger OnValidate()
                    var

                    begin
                        GetSuggestion();
                    end;
                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Suggestion; Suggestion)
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'Suggestion';
                    ToolTip = 'Enter a suggestion';
                }
                field(Level; Level)
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'Level';
                    ToolTip = 'Enter a level';
                }

            }
        }
    }

    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;

    local procedure GetSuggestion()
    var
    begin

        Level := '';
        Suggestion := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
        end;
    end;
}