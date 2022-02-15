client = game.Players.LocalPlayer
nation = client.leaderstats.Country
capital = workspace.CountryData[nation].Capital

--modlist
modlist = {286073467,165881970,178076512,36942410,731826417,582785312,889073499,199611834,42416882,33857533,197873406,63603700,40658655}
secondaryModlist = {"M0tHeLL","ImNotACan","SmuthMudelar","halfmatthewhicat","Dadeylus","Bowniez","Green_Castaway","GrayshaValor","cadjosrez","Freasaloz","SykiRBLX","Robertmy6","Hyperant"}

textcodes_syn = {
--these codes are used to simulate user input when typing
    A = "0x41"
    B = "0x42"
    C = "0x43"
    D = "0x44"
    E = "0x45"
    F = "0x46"
    G = "0x47"
    H = "0x48"
    I = "0x49"
    J = "0x4A"
    K = "0x4B"
    L = "0x4C"
    M = "0x4D"
    N = "0x4E"
    O = "0x4F"
    P = "0x50"
    Q = "0x51"
    R = "0x52"
    S = "0x53"
    T = "0x54"
    U = "0x55"
    V = "0x56"
    W = "0x57"
    X = "0x58"
    Y = "0x59"
    Z = "0x5A"
}

whitelist = {} --scan through all games and get their jobIDs as long as a mod isnt there
blacklist = {} --servers where mod is detected or someone threatens to report you
--add value after these ^^^ whenever using them while programming
--many scripts in this repository wont work without setVariables!!
