/// <summary>
/// PageExtension ItemExt (ID 50100) extends Record Item List.
/// </summary>
pageextension 50106 "Item Extendslist" extends "Item List"
{
    actions
    {
        addafter(History)
        {
            action(ImportItemsviaXMLport)
            {
                Caption = 'Import Items via XMLport';
                Promoted = true;
                PromotedCategory = Process;
                Image = Import;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Xmlport.Run(Xmlport::"Import Items XmlPort", false, true);
                end;
            }
        }
    }
}