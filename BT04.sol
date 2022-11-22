// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.1;

// Arrays:
// fixed size arrays
// dynamic size arrays

// Loops:
// while
// for
// do while

// if-else:

// structures:
struct Student {
    uint roll;
    string name;
}

// fallbacks:

contract Array 
{
    uint[4] public a = [10, 20, 30, 40];
    uint[] public b;

    Student public st;

    mapping(address => uint) balance; 

    constructor(uint rn, string memory nm) 
    {
        st.roll = rn;
        st.name = nm;
    }

    function setArInd(uint ind, uint val) public 
    {
        if (ind < 0 || ind > a.length) {
            
        }
        else {
            a[ind] = val;
        }
    }

    function getLen() public view returns(uint)
    {
        return a.length;
    }

    function pushElement(uint item) public
    {
        b.push(item);

        // b.pop()
        // b.length()
    }

    function incrementArray(uint add) public
    {
        uint n = a.length;
        uint cur = 0;
        while (cur < n) {
            a[cur] = a[cur]+add;
            cur = cur+1;
        }

        for (uint i = 0; i<n; i++)
            a[cur] = a[cur]+add;

        cur = 0;
        do {
            a[cur] = a[cur]+add;
            cur = cur+1;
        }
        while (cur<n);
    }

    function structurePart(uint nrn) public
    {
        st.roll = nrn;
    }

    function() external payable
    {
        // balance[msg.sender] += msg.value;
    }
}