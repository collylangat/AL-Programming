page 50111 "Expressions Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Expressions Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Value1; Value1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a value for Value 1';
                    Caption = 'Value 1';
                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a value for Value 2';
                    Caption = 'Value 2';
                }
            }
            group(OutPut)
            {
                Caption = 'Output';
                field(Result; Result)
                {
                    ApplicationArea = All;
                    ToolTip = 'The result of operation. ';
                    Caption = 'Result';
                    Editable = false;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {

                ApplicationArea = All;
                Caption = 'Execute';
                ToolTip = 'Click to calculate';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    Result := Value1 - Value2;

                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        Result: Integer;
}