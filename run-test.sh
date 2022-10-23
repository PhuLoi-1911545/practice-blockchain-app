#!/bin/bash
# goloop rpc --uri http://localhost:9082/api/v3 \
# txresult 0x203962a162f9b6297fa12295908c9d23f3b856d670c8fc1de4f525d669e57bdd

# if [ "$1" = 1 ]
# then
    # goloop rpc sendtx call --to cxed6a19c5be587d934cbcb73fb394000e1a965112 \
    #     --uri http://127.0.0.1:9082/api/v3 \
    #     --key_store /$HOME/gochain-local/data/godWallet.json --key_password gochain \
    #     --nid 0x3 --step_limit 10000000 \
    #     --method setTMP \
    #     --param tmp=1000000000000000000000000000000000000000
        # --param _tokenId=12345689123456789123456789 \
        # --param _uri="testing uri"
# else if [ "$1" = 2 ]
# then
    goloop rpc --uri http://localhost:9082/api/v3 \
    call --to cxed6a19c5be587d934cbcb73fb394000e1a965112 \
    --method gettmp \
    # --param _tokenId=12345689123456789123456789

# else if [ "$1" = 3 ]
# then
# goloop rpc sendtx deploy ./irc3-token/build/libs/irc3-token-0.9.0-optimized.jar \
#     --uri http://127.0.0.1:9082/api/v3 \
#     --key_store /$HOME/gochain-local/data/godWallet.json --key_password gochain \
#     --nid 0x3 --step_limit 10000000000 \
#     --content_type application/java \
#     --param _name='Phu Loi' \
#     --param _symbol='BK'   

# else 
    # goloop rpc --uri http://localhost:9082/api/v3 txresult "0x628a6850caeadcd6d7ead19ead30b857eaf410f5aca54064afd9ebdb65ab23da" 
# fi 

# goloop rpc --uri http://localhost:9082/api/v3 call --to cx1b9849096b8c5870834eb6347549024b0b82d2e3  --method getGreeting

# goloop rpc --uri http://localhost:9082/api/v3 txresult "0x2109c4db6973f6eff326d1b06da826d942e79b27227594a45463f553a0fb1e5f" 