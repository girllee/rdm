R"===(// dozbray@gmail.com [base]
/*
 * pool_address    - Pool address should be entered as "pool_address:port" (e.g "pool.ryo-currency.com:4444"). Only stratum pools are supported.
 * wallet_address  - Your wallet, or pool login.
 * rig_id          - Rig identifier for pool-side statistics (needs pool support).
 * pool_password   - Can be empty in most cases or "x".
 * use_nicehash    - Limit the nonce to 3 bytes as required by nicehash.
 * use_tls         - This option will make us connect using Transport Layer Security.
 * tls_fingerprint - Server's SHA256 fingerprint. If this string is non-empty then we will check the server's cert against it.
 * pool_weight     - Pool weight is a number telling the miner how important the pool is. Miner will mine mostly at the pool
 *                   with the highest weight, unless the pool fails. Weight must be an integer larger than 0.
 */

"pool_list" :
[
POOLCONF],

/*
 * Currency to mine. Supported values:
 *
 *    arqma
 *    loki
 *    monero
 *    wownero
 *
 * Native algorithms which do not depend on any block versions:
 *
 *    # 256KiB scratchpad memory
 *    randomx_arqma
 *    # 1MiB scratchpad memory
 *    randomx_wow
 *    # 2MiB scratchpad memory
 *    randomx
 *    randomx_loki
 */

"currency" : "CURRENCY",
)==="