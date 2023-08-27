// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SmartCarContract {
    address public owner;
    string public carDetails;
    uint256 public price;
    bool public isCarSold;

    event CarPurchased(address indexed buyer, uint256 price);

    constructor(string memory _carDetails, uint256 _price) {
        owner = msg.sender;
        carDetails = _carDetails;
        price = _price;
        isCarSold = false;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    modifier carNotSold() {
        require(!isCarSold, "The car has already been sold");
        _;
    }

    function purchaseCar() external payable carNotSold {
        require(msg.value == price, "Incorrect amount sent");
        isCarSold = true;
        emit CarPurchased(msg.sender, msg.value);
    }

    function withdrawFunds() external onlyOwner {
        require(isCarSold, "The car must be sold first");
        payable(owner).transfer(address(this).balance);
    }
}
