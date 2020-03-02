pageextension 53100 CustomerListExt extends "Customer List"
{
    layout
    {
        addafter(Name)
        {
            field(ExampleField; "Name 2")
            {
                Caption = 'Example Field';
                ApplicationArea = ExampleAppArea;
                ToolTip = 'This is a field added by an example extension';
                Importance = Promoted;
            }
        }
    }

    trigger OnOpenPage()
    var
        EnableExampleExtension: Codeunit "Enable Example Extension";
    begin
        if EnableExampleExtension.IsExampleApplicationAreaEnabled() then
            Message('App published: Example Extension');
    end;
}