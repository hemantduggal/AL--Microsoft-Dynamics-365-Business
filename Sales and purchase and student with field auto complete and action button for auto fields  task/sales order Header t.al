/// <summary>
/// TableExtension items (ID 50104) extends Record Item.
/// </summary>
tableextension 50105 salesorders extends "Sales Header"
{
    fields
    {



        field(111; StudentNO; code[20])
        {
            Caption = 'StudentNO';
            DataClassification = ToBeClassified;
            TableRelation = "Student Header Table";
            trigger OnValidate()
            var
                recstudent: record "Student Header Table";
            begin
                if recstudent.get(Rec.StudentNO) then
                    rec.StudentName := recstudent.Name;
                rec.StudentAddress := recstudent.Address;
                rec.StudentPhone := recstudent.PhoneNo;
                rec.StudentState := recstudent.State;
                rec.StudentCity := recstudent.City;

                Rec.Modify()



            end;






        }
        field(112; StudentName; Text[50])
        {
            Caption = 'StudentName';
            DataClassification = ToBeClassified;
            //TableRelation = "Student Header Table";

        }
        field(113; StudentAddress; Text[100])
        {

            DataClassification = ToBeClassified;
            //TableRelation = "Student Header Table";

        }
        field(1111; StudentPhone; Integer)
        {
            Caption = 'StudentPhone';
            DataClassification = ToBeClassified;
            //TableRelation = "Student Header Table";
        }
        field(1117; StudentState; Text[20])
        {
            Caption = 'StudentState';
            // OptionMembers = Delhi,Haryana,Up,Gujrat,"Andhra-Pradesh","Arunachal Pradesh",Assam,Bihar,Chhattisgarh,Goa;
            DataClassification = ToBeClassified;
            // TableRelation = "Student Header Table";
        }
        field(1118; StudentCity; text[20])
        {
            Caption = 'Studentcity';
            //OptionMembers = Mumbai,chennai,banglore,kolkata,pune,jaipur,ahmedabad,faridabad,okhla,raipur;

            DataClassification = ToBeClassified;
            //TableRelation = "Student Header Table";

        }
        field(1119; "Contact person"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";
            trigger OnValidate()
            var
                sh: record Customer;
            begin
                if sh.get(Rec."Sell-to Customer No.") then
                    Rec."Contact person" := sh.Contact;




                Rec.Modify()
            end;
        }
        field(1120; "Remarks"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(1121; Deal_date; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(1122; "order category"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Process,Raw,Finished;


        }
        modify("External Document No.")
        {
            trigger OnBeforeValidate()
            var
                SL: record "Sales Line";
            begin
                sl.Reset();
                sl.SetRange("Document Type", sl."Document Type"::Order);
                sl.SetRange("Document No.", "No.");

                if sl.FindSet() then
                    sl."External Doc no" := rec."External Document No.";

                sl.Modify();
                rec.Modify();


            end;

        }

        field(1123; "Maintenance type"; Option)
        {
            OptionMembers = a,b,c,d;
            DataClassification = ToBeClassified;

        }
        field(1124; "Time Based"; Option)
        {
            OptionMembers = daily,QTLY,Half,YRL;
            DataClassification = ToBeClassified;
        }
        field(1125; visible; boolean)
        {
            DataClassification = ToBeClassified;
        }


    }
}
