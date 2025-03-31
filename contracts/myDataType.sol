// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Rejistro{
    struct Persona{
        string nombre;
        uint8 edad;
        address walletKey;
    }    

    Persona[] public persona;

    function rejistrar (string memory _nombre,uint8 _edad ) public {
        persona.push(Persona(_nombre,_edad,msg.sender));
    }

    function  obtenerPersona(uint _index) public view returns(string memory , uint8, address){
        Persona memory p = persona[_index];
        return (p.nombre , p.edad, p.walletKey);
        
    }

    function totalPersonas() public view returns ( uint ) {
        return persona.length;   
    }

    function esMayor (uint _index )public  view returns (bool){
        Persona memory p = persona[_index];
        
        if(p.edad >= 18){
            return  true;
        }else {
            return  false;

        }

    }
}