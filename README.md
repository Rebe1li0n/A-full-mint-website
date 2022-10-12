# A sketchy NFT mint website

### Introduction	

The author of this document is not a professional writer, nor has he received professional writing training. If there is any unclearness, please forgive me.

This project fully refer to [**This youtuber's detailed tutorial**](https://www.youtube.com/watch?v=ynFNLBP2TPs), **you can find the Installation and Usage from his video.**

Contract is deployed in **Goerli Testnet**, you can check it in [here](https://goerli.etherscan.io/address/0xf86fc0ee33b567ee863441e3531dd6d5bfb7fb11).

And you also can check the final demo in [here](http://45.32.250.214:3000/)

### Problems you might meet

+ **Which testnet to deploy?**

  Because of Ethereum' merge, Etherscan set to 'Deprecate' Ethereum's Ropsten and Rinkeby Testiest in 2022.10.5, you should choose migrate to **Goerli or Sepolia** networks

  You can get api from the following sites:

  infura: [https://infura.io/](https://infura.io/) 

  Alchemy:[https://www.alchemy.com/](https://www.alchemy.com/)

+ **Unable to verify contract by hardhat through etherscan**

  Most of the time, the "Unable to verify" error returned by Etherscan is caused by people specifying the wrong constructor arguments.

  And don't use relative path to import

### Other website maybe useful

Faucet: [https://faucet.paradigm.xyz/](https://faucet.paradigm.xyz/)

assets file download: [https://1drv.ms/u/s!Al1l2sA-axg8gep2j...](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqa3RqUEJxSDE4Q2xDT21wQzh6czd4Z0J3dTNVUXxBQ3Jtc0tuakpJMWkzNUVmWGc4VXlKWjl0MHJRdVZiRHJpQ3NkRTdxVDB5ZkwtcUZDSG44OUJXSEJJV05PN0xkakRkaFVPUjM1ZXFhRnZTNzBOT21XTWxUNExvQTJOM3U3eUVLZGgydmJkc0o2SmtZYmtDVHpSTQ&q=https%3A%2F%2F1drv.ms%2Fu%2Fs!Al1l2sA-axg8gep2j3h4WqOXh-N4Ug%3Fe%3DMPsEP9&v=ynFNLBP2TPs)

create-react-app: [https://create-react-app.dev/](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbFpRNlYtaGwtUUtZZzFfeW40Rmtxck84RWl1d3xBQ3Jtc0tsTnBnclRhMHJ5V0w4ZHo4TWo4NllYNlFBbEUzZ21DRXNydnV6Y2dVWWhQQzU1RTZIZ1hIMVBNYXdNRndSNzBzZnNjRmdzenlrRWtob3BSMlRROG1helBNOFZTUGMzdlZxX2xSb2hSZ052U3lGLXBhUQ&q=https%3A%2F%2Fcreate-react-app.dev%2F&v=ynFNLBP2TPs) 

hardhat: [https://hardhat.org/](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbVdpR1k1NDg0UkQ1Wl9nMGpVdVY0VmxsMndrZ3xBQ3Jtc0tuZ0dlY1FaWWpzV0hNNkctSWlLR1ZYUEdNbHdzVFVUZWwtdE8xV1dOYlBURW5OWU11YlpST3ZYZ3IxR0ZBTWMxcEhpSE1MQlFPbWpvTE9hNV9EUXNXVURHR3V5T2thZzNWSDZsZi1ON3l6bHRDSF9VQQ&q=https%3A%2F%2Fhardhat.org%2F&v=ynFNLBP2TPs) 

etherscan: [https://etherscan.io/](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbVpGSjlxNTNacE1meFJPdFV0cG1RcDlibldod3xBQ3Jtc0tuZVRHYkxNVVZVNXBkbEJGaExXd1hkQjdZRUxfcVF6ZXprd3gxQ1NjeVNjTDRtNlZFNXF5aU1ORTZYNV9qR25MQzV0dUE5VkdGVFNiclM5YUFhNG5CcUFEUDdDalFRVS1XLVVhaEFraWpGVUxhci1kQQ&q=https%3A%2F%2Fetherscan.io%2F&v=ynFNLBP2TPs) 

node: [https://nodejs.org/en/download/](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbVZzemlRc2kzTUxBTnRSbGJPUm9SSmFoUHZUZ3xBQ3Jtc0trTFQxaE1uTDlRRnlReG1mdFdBLXdhNkNQYTBaQS1lUy14TUV1UGtGT0RQbVg2dFFhdFNwOVdKekdiWHNfMXpjV2RvaGxQNk5ienlwc3FnQlRoSzdWUTVvSE9IeWg0ZHNYOHdmM3ZQQWZCMHNMM1lWZw&q=https%3A%2F%2Fnodejs.org%2Fen%2Fdownload%2F&v=ynFNLBP2TPs)

chakra ui: [https://chakra-ui.com/docs/getting-st...](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbXNtUUhodGREV1J0eDdqSHhUZnp2STJnakZnQXxBQ3Jtc0tuX0htTHRURWlqa1R2Vk50NHdYSmtldUs2QmZBd3NGMnZMdmRRUGhUMTNNZl9UWkI1X3BJQ092NHlhMzB2VFFKSTc0NFpqS1RIRkprekM4UEZLdkJ2b3lPNlM3ZzN6LTk5WmZ4MUVRalI3YkwxMXlHUQ&q=https%3A%2F%2Fchakra-ui.com%2Fdocs%2Fgetting-started&v=ynFNLBP2TPs)

