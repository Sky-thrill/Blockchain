// SPDX-License-Identifier:MIT

pragma solidity >=0.8.0 <0.9.0;
import "hardhat/console.sol";

contract vehicles
{
    string public t;
    string[] vid;
    string[] vname;

    function regvehicles(string memory idin, string memory namein) public {

            vname.push(namein);
            vid.push(idin);
    }

    function vids() public view returns(string[] memory) {

        return vid;
        
    }
    function vnames() public view returns(string[] memory) {

        return vname;
    }
    function wsd(uint x)public view returns(string memory, string memory)
    {
        string memory idv;
        string memory namev;
        idv=vid[x];
        namev=vname[x];
        return (idv, namev);
    }
    function sensors(string memory warn)public returns(string memory) {
            t=warn;
            return t;
    }

}

contract pedestrians
{
    string[] pid;
    string[] pname;

    function regpedestrians(string memory idin, string memory namein) public {

            pname.push(namein);
            pid.push(idin);
    }
    
    function pids() public view returns(string[] memory) {

        return pid;
        
    }
    function pnames() public view returns(string[] memory) {

        return pname;
    }
}

contract rsu
{
    string[] rid;
    string[] rname;

    function regrsu(string memory idin, string memory namein) public {

            rname.push(namein);
            rid.push(idin);
    }

    function rids() public view returns(string[] memory) {

        return rid;
        
    }
    function rnames() public view returns(string[] memory) {

        return rname;
    }
}

contract authority is pedestrians, vehicles, rsu{
    // function sendata() public pure returns(int) {
    //     string memory warn="there is traffic ahead";
    //     return 1;
    // }
}

contract comm is authority{



    
    function data() public view returns(string memory){
        return t;
    }
    function view1() public view {
        
    }
}