// Abstract contract defining the basic structure for a token contract
abstract contract Token {
    function transfer(address recipient, uint256 amount) virtual public returns (bool);
    function balanceOf(address account) virtual public view returns (uint256);
}

// Interface defining the required functions for a contract to be considered a "minter"
interface Minter {
    function mint(address account, uint256 amount) external;
}

// Main contract that implements both the Token and Minter contracts
contract MyToken is Token, Minter {
    mapping(address => uint256) balances;
    uint256 totalSupply;

    // Implementation of the Token transfer function
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(amount <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
        emit Transfer(msg.sender, recipient, amount);
        return true;
    }

    // Implementation of the Token balanceOf function
    function balanceOf(address account) public override view returns (uint256) {
        return balances[account];
    }

    // Implementation of the Minter mint function
    function mint(address account, uint256 amount) public override {
        totalSupply += amount;
        balances[account] += amount;
        emit Transfer(address(0), account, amount);
    }

    // Event emitted when a transfer occurs
    event Transfer(address indexed sender, address indexed recipient, uint256 amount);
}
