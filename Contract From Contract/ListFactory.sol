//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;
import "./SimplePROJECT.sol";
contract listFACTORY is SimplePROJECT{
    SimplePROJECT[] public simpleList;
    function makesimplePROJECTcontracts() public{
        SimplePROJECT simplePROJECT = new SimplePROJECT();
        simpleList.push(simplePROJECT);
    }

    function lFstore(uint256 _contractindex,uint _contractmyNum) public{
        SimplePROJECT(address(simpleList[_contractindex])).store(_contractmyNum);

    }


    function getContractmhyNum(uint256 _contractindex)public view returns(uint256,address){
        SimplePROJECT simplePROJECT=SimplePROJECT(address(simpleList[_contractindex]));
        return (simplePROJECT.retrieve(),address(simplePROJECT));
    }
    
}
