#include <sourcemod>

#include <connect>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo = {
    name        = "Connect Redux Test",
    author      = "Forward Command Post",
    description = "a plugin to test Connect Redux",
    version     = "0.1.0",
    url         = "https://github.com/fwdcp/sourcemod-connect-redux"
};

public bool OnClientPreConnect(const char[] name, char password[255], const char[] ip, const char[] steamID, char rejectReason[255]) {
    PrintToServer("Detected client connecting - name: %s, password: %s, IP address: %s, Steam ID: %s", name, password, ip, steamID);

    rejectReason = "Thank you for participating in this test.";

    return false;
}
