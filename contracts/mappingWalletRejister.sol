// SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.2;

contract walletRejister {
    struct Persona{
        string nombre;
        uint8 edad;
    }

    mapping (address => Persona) public personas;

    function registrarPorWallet( string memory _nombre , uint8 _edad) public {
        personas[msg.sender] Persona(_nombre,_edad)
        
    }

    function revisarPorWallet () public view returns(string memory ,uint8) {
        memory person = personas[msg.sender];
        return (person.nombre, person.edad)
    }

}