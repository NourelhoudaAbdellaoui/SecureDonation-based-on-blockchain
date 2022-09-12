                                        Secure Donation Project 
based on truffle /metamask/ganache 
Your guide to build a project donation based on blockchain in order to ensure the traceability and the security of your money donation.
Steps : 
Step 1:Setup your IDE coding in my case i choose VS code 
1-I install  the extension of truffle on VS Code .and I learn the basics of truffle thanks to the official site :
https://trufflesuite.com/docs/truffle/
![image](https://user-images.githubusercontent.com/87576820/189738543-653c6101-efdc-4a18-9173-079b39959093.png)
by the way truffle is just a development environment to code and compile your smart contract and is testing framework for blockchains using the ethereum virtual machine .So let’s take the first step :
I created a folder named Nour project using this command : mkdir NourProject and also inside it i created 2 other folders  :mkdir frontend and mkdir Blockchain ![image](https://user-images.githubusercontent.com/87576820/189738690-0bb02319-26d2-4054-a8f0-a585be90118e.png)
Step2:Start with truffle 
so now let’s create our truffle project inside Nourproject/Blockchain thanks to the command truffle init![image](https://user-images.githubusercontent.com/87576820/189739775-5ebfa47d-0edf-474f-b89e-46ab8aba975f.png)
Now let’s create our smart contract named Donation.sol in Nourproject/Blockchain/contracts 
and in direction Nourproject/Blockchain/migration/Donation.js fo deploying later your smart contract on ganache we will use this fil!e .js ![image](https://user-images.githubusercontent.com/87576820/189739874-02e3b5cd-570f-4d09-8e4c-63a2a951a8e4.png)
So our smart Contract looks like:pragma solidity ^0.8.0;
//so
contract Donation{
   //struct :define your type Donor
   //inside struct you can grouping your different information that you wanna track it
   struct Donor{
       //uint (only integer without minus)
       uint id ;//id of donor
       string name;// the name of donor
       uint256 amount;// the amount of donor
       address sender_address;//Donprs wallet address
   }
   uint256 id=0;
   //Mapping is Mapping is a reference type as arrays and structs as dictionnary in python is composed essentially by key =>value
   mapping(uint=>Donor)public sender;
   //function to add another donor to take a place
   //payble is function its role to recieve ETH from donors in oder to store
   //donors data and the amount paid
   function addDonor(string memory name)public payable {
       id+=1;
       sender[id]=Donor(id,name,msg.value,msg.sender);
   }

So now let’s how to complelete the donation.js in migration 
![image](https://user-images.githubusercontent.com/87576820/189740071-897a133b-f538-435d-b53e-2b6ede6b623b.png)
so after coding our smart contract we have install ganache thanks to this link:
https://trufflesuite.com/ganache/
so now let’s compile the smart contract thans to this command truffle compile ![image](https://user-images.githubusercontent.com/87576820/189740219-aea2b30a-2d17-43c4-936f-493a08e58d1a.png)
before we deploy it into ganache we have to add the project into ganache 
![image](https://user-images.githubusercontent.com/87576820/189740363-6b0110fb-7c5b-479f-a6d9-fb382ed2a7e9.png)
![image](https://user-images.githubusercontent.com/87576820/189740502-62f45f78-a36e-4c1a-b8a2-a5006237b464.png)
now let’s relate ganache to truffle test 
![image](https://user-images.githubusercontent.com/87576820/189740579-703d29d6-e8fa-4384-b752-2ee2afee7922.png)
![image](https://user-images.githubusercontent.com/87576820/189740616-4ac63934-26c2-4700-93d4-b7b17c2d039d.png)
so let’s deploy it into the ganache (local blockchain test ):
truffle migrate
![image](https://user-images.githubusercontent.com/87576820/189740700-88e98bd7-d592-49ef-9f88-ef7369003a11.png)
![image](https://user-images.githubusercontent.com/87576820/189740750-4ac8970f-0eef-4729-95e7-621b19306db7.png)
Step3 :Frontend part 
this part based on html /css/js

So in this part just we use the basic tools of html/css/js  as u see here in the  image bellow :
![image](https://user-images.githubusercontent.com/87576820/189740817-0b63091b-711d-4a7a-9190-7618f81ee20b.png)
so let’s understand some buttons function as the button connect  this button it’s main function is to extract address account from metamask 
so the steps that you should follow it in this part just build a simple button thanks to bootstrap 
https://getbootstrap.com/docs/5.2/getting-started/introduction/ and create a simple squelette of form 
and add some animation thanks to css 
so let’s add the script of  web3.js to let our website worked on blockchain browser thanks to this script 
script src="https://cdn.jsdelivr.net/npm/web3@latest/dist/web3.min.js"></script>
so enable it by writing this piece of code 
//Enable Web3
async function loadWeb3(){
   if(window.ethereum) {
       window.web3 = new Web3(window.ethereum);
   }
}

and then load smart contract from truffle thanks to it’s ABI and it’s address :
you can find the ABI in build file it will create automatic when you built your contract 
so in my case my ABI is located in the direction of build /Donation.json 
![image](https://user-images.githubusercontent.com/87576820/189741147-e03d2979-d587-4184-836b-da708ce987aa.png)
So the address is the same of the contract address :
![image](https://user-images.githubusercontent.com/87576820/189741358-bd92b7f7-e4d8-469a-b011-d537ab56351d.png)
so after loading the smart contract thanks to it’s ABI and address you can read data from and load all of it’s function by some code in js and then connect to the metamask wallet and get the address of the account after just donate by the button donate 

all of :this detail is written in code js you can say it in code js in the code file 


wish that document is helpful 
 So as you see 
 ![image](https://user-images.githubusercontent.com/87576820/189741475-2a1c6817-88cd-4cf4-8a70-c17f687dfe9c.png)
 after donate to ether thanks for some fake ethers in the metamask wallet which is take it fro the ganache balances 
with simple steps just open metmask extension>settings >add network>then add the url rpc of your ganache
![image](https://user-images.githubusercontent.com/87576820/189741554-95b36789-fb4f-4c97-8d93-aa2ea08ffd27.png)
and in the id chain write 1337
after passing the transaction another block added in the ganache
![image](https://user-images.githubusercontent.com/87576820/189741642-27c74bb4-b968-400b-a53e-179a5e700ff2.png)
so that’s all wish this documentation was helpful to you to understand the code how it running 








