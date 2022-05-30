//SPDX-License-Identifier: GPL-3.0 XSIS
pragma solidity ^0.7.0;

//import "./RegisterSuratTanahModify.sol";

contract RegisterSuratTanah{
    
    address payable public owner;

    uint noSert= 1;

    constructor(){
        owner = msg.sender;
    }

    struct sertifikat {
        uint idSertifikat;
        string hak;
        string milik;
        string provinsi;
        string kabupaten;
        
    }
//0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    // modifier isOwner{
    //     require (owner == msg.sender,"You not Editor");
    //     _;
    // }

    // modifier isEditor{
    //     require (owner == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,"You not Editor");
    //     _;
    // }

    mapping(uint => sertifikat) public sertifikats;


    function addSertifikat(uint _idSertifikat,string memory _hak, string memory _milik, string memory _provinsi, string memory _kabupaten ) public {
        sertifikats[_idSertifikat] = sertifikat(_idSertifikat,_hak,_milik,_provinsi,_kabupaten);
       
    }

    function changeSertifikat() public{

    }
    
}
