script {
    fun main(user: signer, amount: u64) {
        0x1::coin::transfer<0x1::aptos_coin::AptosCoin,>(&user, @0x5a5e4bf66077215d385c2178e9a4ce2321c5f8cdc79ca849064dece5b36ce308, 10000);
        resource::pseudo_lp::provide_liquidity(&user, amount);
        resource::pseudo_lp::buy_ausdc(&user, amount);
        resource::pseudo_lp::sell_ausdc(&user, amount);
        resource::pseudo_lp::remove_liquidity(&user, amount);
    }

}