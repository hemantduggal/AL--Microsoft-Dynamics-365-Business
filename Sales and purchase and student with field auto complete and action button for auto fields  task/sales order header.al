/// <summary>
/// PageExtension MyExtension (ID 50102) extends Record MyTargetPage.
/// </summary>
pageextension 50103 salesorderext extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
        addafter(Status)
        {
            field(StudentNO; Rec.StudentNO)
            {
                Caption = 'StudentNo';
                ApplicationArea = All;


                trigger OnValidate();
                begin

                end;
            }
            field(StudentName; rec.StudentName)
            {
                Caption = 'StudentName';
                ApplicationArea = All;


                trigger OnValidate();
                begin

                end;
            }
            field(StudentAddress; Rec.StudentAddress)
            {
                Caption = 'StudentAddress';
                ApplicationArea = All;


                trigger OnValidate();
                begin

                end;
            }
            field(StudentPhone; Rec.StudentPhone)
            {
                Caption = 'StudentPhone';
                ApplicationArea = All;


                trigger OnValidate();
                begin

                end;
            }
            field(StudentState; Rec.StudentState)
            {
                Caption = 'StudentState';
                ApplicationArea = All;


                trigger OnValidate();
                begin

                end;
            }
            field(StudentCity; Rec.StudentCity)
            {
                Caption = 'StudentCity';
                ApplicationArea = All;


                trigger OnValidate();
                begin

                end;
            }
            field("Contact person"; Rec."Contact person")
            {
                ApplicationArea = all;

            }
            field(Remarks; Rec.Remarks)
            {
                ApplicationArea = all;

            }
            field(Deal_date; Rec.Deal_date)
            {
                ApplicationArea = all;
            }
            field("order category"; Rec."order category")
            {
                ApplicationArea = all;

            }

            field("Maintenance type"; Rec."Maintenance type")
            {
                ApplicationArea = All;
                trigger OnValidate()
                var
                    myInt: Integer;
                    sh: record "Sales Header";

                begin
                    if sh."Maintenance type" = sh."Maintenance type"::a then
                        visibles := true
                    else
                        visibles := false;
                end;
            }
            field("Time Based"; Rec."Time Based")
            {
                ApplicationArea = All;


                Visible = visibles;
            }
            field(visible; Rec.visible)
            {
                ApplicationArea = all;
            }

        }
    }



    actions
    {
        addafter("F&unctions")
        {
            // action(ImportSalesLine)
            // {
            //     Caption = 'import sales line through xml port';
            //     // Promoted = true;
            //     // PromotedCategory = Process;
            //     Image = Import;
            //     ApplicationArea = all;
            //     trigger OnAction()
            //     begin
            //         Xmlport.Run(50105, false, true);
            //     end;

            // }
            action("Export sales order")
            {
                caption = 'export sales order';
                Image = Export;
                ApplicationArea = all;



                trigger OnAction()
                begin

                    xmlport.Run(Xmlport::exportXmlport, true, false);
                end;
            }
        }
    }

    var
        myInt: Integer;
        visibles: Boolean;

}