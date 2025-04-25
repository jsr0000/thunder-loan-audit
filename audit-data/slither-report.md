**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [events-maths](#events-maths) (1 results) (Low)
 - [reentrancy-benign](#reentrancy-benign) (2 results) (Low)
 - [reentrancy-events](#reentrancy-events) (1 results) (Low)
## events-maths
Impact: Low
Confidence: Medium
 - [ ] ID-0
[ThunderLoan.updateFlashLoanFee(uint256)](src/protocol/ThunderLoan.sol#L327-L333) should emit an event for: 
	- [s_flashLoanFee = newFee](src/protocol/ThunderLoan.sol#L332) 

src/protocol/ThunderLoan.sol#L327-L333


## reentrancy-benign
Impact: Low
Confidence: Medium
 - [ ] ID-1
Reentrancy in [ThunderLoan.flashloan(address,IERC20,uint256,bytes)](src/protocol/ThunderLoan.sol#L222-L270):
	External calls:
	- [assetToken.updateExchangeRate(fee)](src/protocol/ThunderLoan.sol#L242)
	State variables written after the call(s):
	- [s_currentlyFlashLoaning[token] = true](src/protocol/ThunderLoan.sol#L246)

src/protocol/ThunderLoan.sol#L222-L270


 - [ ] ID-2
Reentrancy in [ThunderLoan.flashloan(address,IERC20,uint256,bytes)](src/protocol/ThunderLoan.sol#L222-L270):
	External calls:
	- [assetToken.updateExchangeRate(fee)](src/protocol/ThunderLoan.sol#L242)
	- [assetToken.transferUnderlyingTo(receiverAddress,amount)](src/protocol/ThunderLoan.sol#L247)
	- [receiverAddress.functionCall(abi.encodeCall(IFlashLoanReceiver.executeOperation,(address(token),amount,fee,msg.sender,params)))](src/protocol/ThunderLoan.sol#L249-L260)
	State variables written after the call(s):
	- [s_currentlyFlashLoaning[token] = false](src/protocol/ThunderLoan.sol#L269)

src/protocol/ThunderLoan.sol#L222-L270


## reentrancy-events
Impact: Low
Confidence: Medium
 - [ ] ID-3
Reentrancy in [ThunderLoan.flashloan(address,IERC20,uint256,bytes)](src/protocol/ThunderLoan.sol#L222-L270):
	External calls:
	- [assetToken.updateExchangeRate(fee)](src/protocol/ThunderLoan.sol#L242)
	Event emitted after the call(s):
	- [FlashLoan(receiverAddress,token,amount,fee,params)](src/protocol/ThunderLoan.sol#L244)

src/protocol/ThunderLoan.sol#L222-L270


