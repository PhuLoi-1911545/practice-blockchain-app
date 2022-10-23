/*
 * Copyright 2020 ICONLOOP Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.iconloop.score.example;

import com.iconloop.score.token.irc3.IRC3Basic;
import score.Address;
import score.Context;
import score.annotation.External;

import score.DictDB;

import java.math.BigInteger;
// import java.util.List;
// import java.util.Map;

public class IRC3BasicToken extends IRC3Basic {
    public IRC3BasicToken(String _name, String _symbol) {
        super(_name, _symbol);
    }
    private DictDB<BigInteger, String> storage = Context.newDictDB("storaged-data", String.class);

    private BigInteger tmp = BigInteger.valueOf(0);


    @External
    public void mint(BigInteger _tokenId, String _uri) {
        // simple access control - only the contract owner can mint new token
        Context.require(Context.getCaller().equals(Context.getOwner()));
        super._mint(Context.getCaller(), _tokenId);
        storage.set(_tokenId, _uri);
    }

    @External
    public String getURI(BigInteger _tokenId) {
        return  storage.get(_tokenId);
    }

    @External
    public void setTMP(BigInteger tmp) {
        this.tmp = tmp;
    }

    @External(readonly = true)
    public String gettmp() {
        return  tmp.toString(0);
    }

    @External
    public void burn(BigInteger _tokenId) {
        // simple access control - only the owner of token can burn it
        Address owner = ownerOf(_tokenId);
        Context.require(Context.getCaller().equals(owner));
        super._burn(_tokenId);
    }
}
