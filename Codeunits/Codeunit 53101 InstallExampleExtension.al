codeunit 53101 "Install Example Extension"
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    var
        EnableApplicationArea: Codeunit "Enable Example Extension";
    begin
        if (EnableApplicationArea.IsExampleApplicationAreaEnabled()) then
            exit;

        EnableApplicationArea.EnableExampleExtension();
    end;

}