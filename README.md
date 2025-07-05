# SmartCarContract
The SmartCarContract is a smart contract designed to facilitate the purchase and sale of cars using blockchain technology. This contract enables secure and transparent transactions between car buyers and sellers by leveraging the power of smart contracts on the Ethereum blockchain.

# Description and Rationale:
The purpose of the SmartCarContract is to streamline the process of buying and selling cars by eliminating intermediaries and ensuring trust through blockchain technology. This smart contract uses the Ethereum blockchain to create a decentralized and tamper-resistant record of car transactions.

# Advantages:
Transparent and tamper-proof records of transactions.
Elimination of intermediaries, reducing transaction costs.
Automated execution of the purchase process.

# Disadvantages:
Limited to digital transactions.
Requires familiarity with blockchain technology.

# Key Points:
* `owner`: The Ethereum address of the car owner, who initiates the contract.
* `carDetails`: A string containing details about the car being sold (e.g., make, model, year).
* `price`: The price in Ether (ETH) that the buyer must pay to purchase the car.
* `isCarSold`: A boolean value indicating whether the car has been sold.
  
# Modifiers:
* `onlyOwner()`: A modifier ensuring that only the car owner can perform specific actions.
* `carNotSold()`: A modifier ensuring that the car has not been sold before certain actions can be executed.
  
# Functions:
* `constructor(string memory _carDetails, uint256 _price)`: A constructor that initializes the contract with the car's details and price.
* `purchaseCar() external payable`: A function allowing buyers to purchase the car by sending the specified amount of Ether. The car must not have been sold already.
* `withdrawFunds() external onlyOwner`: A function allowing the car owner to withdraw the Ether balance after the car has been sold.
  
# Events:
* `CarPurchased(address indexed buyer, uint256 price)`: An event emitted when a car is successfully purchased. It includes the buyer's address and the amount paid.

# Usage:
Deploy the `SmartCarContract` to the Ethereum blockchain.
Provide the car details and price when deploying the contract.
Buyers can call the purchaseCar function and send the correct amount of Ether to purchase the car.
Once the car is sold, the car owner can call the withdrawFunds function to retrieve the sale proceeds.

Code Example:
Here's an example of how to interact with the SmartCarContract using JavaScript and the web3.js library:

```javascript
// Initialize web3.js and connect to the contract
const web3 = new Web3(provider);
const contract = new web3.eth.Contract(abi, contractAddress);

// Example of purchasing a car
const buyerAddress = "0x...";
const weiAmount = web3.utils.toWei("2", "ether"); // Example price
contract.methods.purchaseCar().send({ from: buyerAddress, value: weiAmount });

// Example of withdrawing funds after the car is sold
contract.methods.withdrawFunds().send({ from: ownerAddress });
```
# Recommendations and Precautions:
Make sure to test the contract thoroughly on test networks before deploying it on the mainnet.
Keep your private keys secure and consider using hardware wallets for added security.

# Conclusion:
The SmartCarContract simplifies the car buying and selling process by leveraging the capabilities of blockchain technology. By ensuring transparency and security, this contract enhances trust and reduces friction in car transactions.
## 📜 License

This project is licensed under a **Custom NonCommercial Attribution License**.

- ✅ Free to use, modify, and share for **non-commercial** and **educational** purposes
- ❌ **Commercial use, resale, or monetization** is strictly prohibited without prior written consent
- 📛 Attribution required: Developed by Mohammad Nasser Haji Hashemabad (https://mohammadnasser.com)

📬 For commercial licensing or inquiries: [info@mohammadnasser.com](mailto:info@mohammadnasser.com)

