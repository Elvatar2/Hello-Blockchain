# Hello Blockchain Smart Contract

A simple Solidity smart contract that stores and updates a message. This project is built, formatted, and tested using the **Foundry** development toolkit.

## Prerequisites

To run this project, you need to have [Foundry](https://book.getfoundry.sh/getting-started/installation) installed on your system.

## Installation & Setup

1. Clone the repository:
```bash
git clone <YOUR_REPOSITORY_URL>
cd Hello-Blockchain
```

2. Install the required dependencies (Foundry standard library):
```bash
forge install foundry-rs/forge-std --no-commit
```

## Testing

This project includes comprehensive tests to ensure the contract behaves as expected. To run the test suite, execute:

```bash
forge test
```

For more detailed output (including gas usage and event logs), use the verbose flag:

```bash
forge test -vvv
```

## Project Structure

- `contracts/` : Contains the main smart contract (`HelloBlockchain.sol`).
- `test/`      : Contains the Foundry test suite (`HelloBlockchain.t.sol`).
- `script/`    : Contains deployment scripts (for future use).
- `foundry.toml` : Foundry project configuration file.
- `.gitignore`   : Specifies intentionally untracked files to ignore (e.g., `lib/`, `cache/`, `out/`).

## Useful Commands

- **Build**: `forge build`
- **Format**: `forge fmt`
- **Gas Snapshot**: `forge snapshot`
- **Clean**: `forge clean`