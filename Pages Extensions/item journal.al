/// <summary>
/// PageExtension item journal (ID 50029) extends Record Item Journal.
/// </summary>
pageextension 50029 "item journal" extends "Item Journal"
{
    layout
    {
        addafter("Posting Date")
        {
            field("Journal Template Name"; Rec."Journal Template Name")
            {
                ApplicationArea = all;

            }
            field("Journal Batch Name"; Rec."Journal Batch Name")
            {
                ApplicationArea = all;
            }
            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = all;
            }
            field(HEat_no; Rec.HEat_no)
            {
                ApplicationArea = all;
            }
            field("Shortcut Dimension 1 "; Rec."Shortcut Dimension 1 Code")
            {
                ApplicationArea = all;
            }
            field("Shortcut Dimension 2 "; Rec."Shortcut Dimension 2 Code")
            {
                ApplicationArea = all;
            }
            field("Prod. Order Comp. Line No."; Rec."Prod. Order Comp. Line No.")
            {
                ApplicationArea = all;
            }

        }
    }
    actions
    {
        addafter("F&unctions")
        {
            action(ImportItemJournals)
            {
                Caption = 'import item journal through xml port';
                // Promoted = true;
                // PromotedCategory = Process;
                Image = Import;
                ApplicationArea = all;
                trigger OnAction()
                begin
                    Xmlport.Run(Xmlport::ItemJournalXmlport, false, true);
                end;

            }
        }
    }

}