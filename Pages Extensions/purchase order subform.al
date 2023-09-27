/// <summary>
/// PageExtension postedpurch (ID 500017) extends Record Posted Purch. Invoice Subform.
/// </summary>
pageextension 50017 postedpurch extends "Posted Purch. Invoice Subform"
{
    layout
    {
        addafter("Job No.")
        {


            field("Index no"; Rec."Index no")
            {
                ApplicationArea = all;

            }
            field(Plank_no; Rec.Plank_no)
            {

                ApplicationArea = all;

            }
            field("Currency Capacity"; Rec."Currency Capacity")
            {
                ApplicationArea = all;

            }
            field("unit od specification"; Rec."unit od specification")
            {
                ApplicationArea = all;

            } // Add changes to page layout here
        }
    }



    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}