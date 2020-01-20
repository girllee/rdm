R"===(// dozbray@gmail.com amd

/*
 * GPU configuration. You should play around with intensity and worksize as the fastest settings will vary.
 * index         - GPU index number usually starts from 0
 * intensity     - Number of parallel GPU threads (nothing to do with CPU threads)
 * worksize      - Number of local GPU threads (nothing to do with CPU threads)
 * affine_to_cpu - This will affine the thread to a CPU. This can make a GPU miner play along nicer with a CPU miner.
 * bfactor       - Enables running some kernel in smaller pieces.
 *                 0 or false = use a contiguous block of memory per thread
 * asm            - use gpu specific assembler code to perform the randomx kernel (supported for RX4XX, RX5XX, Vega and Radeon VII)
 * interleave    - Controls the starting point in time between two threads on the same GPU device relative to the last started thread.
 *                 This option has only an effect if two compute threads using the same GPU device: valid range [0;100]
 *                 0  = disable thread interleaving
 *                 40 = each working thread waits until 40% of the hash calculation of the previously started thread is finished
 * "gpu_threads_conf" :
 * [
 *     { "index" : 0, "intensity" : 1000, "worksize" : 8, "affine_to_cpu" : false,
 *       "asm" : true, "bfactor" : 6, "interleave" : 40
 *     },
 * ],
 * If you do not wish to mine with your AMD GPU(s) then use:
 * "gpu_threads_conf" :
 * null,
 */

"gpu_threads_conf" : [
GPUCONFIG
],

/*
 * number of rounds per intensity performed to find the best intensity settings
 *
 * WARNING: experimental option
 *
 * 0 = disable auto tuning
 * 10 or higher = recommended value if you don't already know the best intensity
 */
"auto_tune" : 0,

/*
 * Platform index. This will be 0 unless you have different OpenCL platform - eg. AMD and Intel.
 */
"platform_index" : PLATFORMINDEX,
)==="
