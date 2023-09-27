/// <summary>
/// TableExtension postedpurchline (ID 50018) extends Record Purch. Inv. Line.
/// </summary>
tableextension 50019 postedpurchline extends "Purch. Inv. Line"
{
    fields
    {
        // Add changes to table fields here
        field(124; "Index no"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(117; Plank_no; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(118; "Currency Capacity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(119; "unit od specification"; option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = basic,medium,high;
        }
    }

    var
        myInt: Integer;
}