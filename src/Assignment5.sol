// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assignment5 {
    // 1. Declare a public unsigned integer variable called `counter`
    uint32 public counter;
    // 2. Declare a public boolean variable called `isActive`
    bool public isActive;
    // 3. Create a public mapping from an address to a string called `userNames`
    mapping(address => string) public userNames;
    // 4. Define a struct `User` with fields: `id` (uint), `name` (string)
    struct User {
        id: uint;
        name: string;
        }
    // 5. Create a public array of `User` called `users`
    User[] public users;
    // Constructor
    // Initialize `isActive` to true
    constructor() {
        // Fill in the logic
        isActive = true;
    }

    // Function to increment the counter
    // This function should:
    // - Be external
    // - Use a for loop to increment `counter` by 1 for 5 iterations
    function incrementCounter() external {
        // Fill in the logic
        for (unit i = 1;i<5;i++){
            counter++;
        }
    }

    // Function to toggle `isActive`
    // This function should:
    // - Be public
    // - Use an if statement to toggle `isActive` between true and false
    function toggleActive() public {
        // Fill in the logic
        if(isActive == true){
            isActive = false;
        }
        else {
            isActive = true;
        }
    }

    // Function to add a user
    // This function should:
    // - Be public
    // - Take three parameters: `id` (uint) and `name` (string) and userAddress (address)
        // Hint: Define string as `string memory`
        // The memory keyword will be explained later
    // - Add a new user to the `users` array
    // - Update the `userNames` mapping with the address and name
    function addUser(unit id , string memory name , address userAddress) public {
        // Fill in the logic
        User memory user;
        user.id = id;
        user.name = name;
        users.push(user);
        userNames[userAddress] = name;
        // Hint: you have to use the keyword `memory` to define the struct
            // For example: User memory user
            // This keyword will be explained later

    }

    // Function to get the total number of users
    // This function should:
    // - Be public and view
    // - Return the length of the `users` array
    function getUserCount() public view {
        // Fill in the logic
        Return users.length;
    }
}
