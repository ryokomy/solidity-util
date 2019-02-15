pragma solidity >0.4.24 <0.6.0;

/**
 * Addresses Library
 * 
 * @author Ryo Komiyama <ryokomy@kyuzan.com>
 */

library Addresses {
    function toBytes(address a)
        internal
        pure 
        returns (bytes memory b)
    {
        // solium-disable-next-line security/no-inline-assembly
        assembly {
            let m := mload(0x40)
            mstore(add(m, 20), xor(0x140000000000000000000000000000000000000000, a))
            mstore(0x40, add(m, 52))
            b := m
        }
    }
}