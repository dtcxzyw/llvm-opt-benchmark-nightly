Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_server-cb478365b72cce50.actix_server.31bc02354b125ea4-cgu.0?download=true
inline.NumInlined: 3999
inline.NumDeleted: 1944
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 40
begin_hunk_0
@317 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9cf0ac7f455bdc38E" }>, align 8
@318 = private unnamed_addr constant [5 x i8] c"Token", align 1
@319 = private unnamed_addr constant [77 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/vec/mod.rs\00", align 1
@320 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @319, [16 x i8] c"L\00\00\00\00\00\00\00\0B\08\00\00\0D\00\00\00" }>, align 8
@321 = private unnamed_addr constant [80 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/boxed/iter.rs\00", align 1
@322 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @321, [16 x i8] c"O\00\00\00\00\00\00\00\90\00\00\00.\00\00\00" }>, align 8
@323 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..convert..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$GT$17h49802f4c4a847031E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN256_$LT$alloc..boxed..convert..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Display$GT$3fmt17h1f592ea278fae292E" }>, align 8
@324 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..convert..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$GT$17h49802f4c4a847031E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN254_$LT$alloc..boxed..convert..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Debug$GT$3fmt17h807799a12417eabdE", ptr @"_ZN256_$LT$alloc..boxed..convert..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Display$GT$3fmt17h1f592ea278fae292E", ptr @323, ptr @_ZN4core5error5Error6source17ha35b21d570c22cf4E, ptr @_ZN4core5error5Error7type_id17hbdee5f4bdca243acE, ptr @_ZN4core5error5Error11description17h511832e21abfaa32E, ptr @_ZN4core5error5Error5cause17h4be74cdb823fb4caE, ptr @_ZN4core5error5Error7provide17hc0bc31cf8a689fc6E }>, align 8
@325 = private unnamed_addr constant [81 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/raw_vec/mod.rs\00", align 1
@326 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @325, [16 x i8] c"P\00\00\00\00\00\00\00*\02\00\00\11\00\00\00" }>, align 8
@327 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/sync/mpsc/list.rs\00", align 1
@328 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @327, [16 x i8] c"g\00\00\00\00\00\00\00\A0\01\00\00-\00\00\00" }>, align 8
@329 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/sync/oneshot.rs\00", align 1
@330 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @329, [16 x i8] c"e\00\00\00\00\00\00\00o\02\00\00'\00\00\00" }>, align 8
@331 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @329, [16 x i8] c"e\00\00\00\00\00\00\00\84\02\00\002\00\00\00" }>, align 8
@332 = private unnamed_addr constant [92 x i8] c"Local tasks can only be spawned on a LocalRuntime from the thread the runtime was created on", align 1
@333 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @332, [8 x i8] c"\\\00\00\00\00\00\00\00" }>, align 8
@334 = private unnamed_addr constant [82 x i8] c"`spawn_local` called from outside of a `task::LocalSet` or `runtime::LocalRuntime`", align 1
@335 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @334, [8 x i8] c"R\00\00\00\00\00\00\00" }>, align 8
@336 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/task/local.rs\00", align 1
@337 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @336, [16 x i8] c"c\00\00\00\00\00\00\00\A8\01\00\00,\00\00\00" }>, align 8
@_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE = external global { i64 }
@338 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @336, [16 x i8] c"c\00\00\00\00\00\00\00\BD\01\00\00\1D\00\00\00" }>, align 8
@339 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @336, [16 x i8] c"c\00\00\00\00\00\00\00\BE\01\00\008\00\00\00" }>, align 8
@"_ZN5tokio4task5local7CURRENT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17he5b9cc286f6d8af9E" = external thread_local global { { { ptr, i8, [7 x i8] } }, i8, [7 x i8] }
@340 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @336, [16 x i8] c"c\00\00\00\00\00\00\00\CA\02\00\00\05\00\00\00" }>, align 8
@341 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/util/linked_list.rs\00", align 1
@342 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @341, [16 x i8] c"i\00\00\00\00\00\00\00\84\00\00\00\09\00\00\00" }>, align 8
@343 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/util/sharded_list.rs\00", align 1
@344 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @343, [16 x i8] c"j\00\00\00\00\00\00\00\8E\00\00\00\09\00\00\00" }>, align 8
@345 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_ZN5tokio7runtime4task3raw4poll17hae6b08d5ee64d6f7E, ptr @_ZN5tokio7runtime4task3raw8schedule17hba8f9d3c1c67464eE, ptr @_ZN5tokio7runtime4task3raw7dealloc17h3490076189202470E, ptr @_ZN5tokio7runtime4task3raw15try_read_output17hc25dad0817f12cc8E, ptr @_ZN5tokio7runtime4task3raw21drop_join_handle_slow17hcd00344d1b379f5eE, ptr @_ZN5tokio7runtime4task3raw17drop_abort_handle17h52d6832d7f90684cE, ptr @_ZN5tokio7runtime4task3raw8shutdown17h4f0604d50283be2bE, [24 x i8] c"\B0\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@346 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_ZN5tokio7runtime4task3raw4poll17hb3afda82d630c17bE, ptr @_ZN5tokio7runtime4task3raw8schedule17hba8f9d3c1c67464eE, ptr @_ZN5tokio7runtime4task3raw7dealloc17h5e8d1baa9c8ba5c8E, ptr @_ZN5tokio7runtime4task3raw15try_read_output17hfc086eb0419ef3b6E, ptr @_ZN5tokio7runtime4task3raw21drop_join_handle_slow17h725865edba9766d7E, ptr @_ZN5tokio7runtime4task3raw17drop_abort_handle17ha0e4c13ee06e1775E, ptr @_ZN5tokio7runtime4task3raw8shutdown17hbbd9b133005a9315E, [24 x i8] c"0\01\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@347 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_ZN5tokio7runtime4task3raw4poll17hfff6135bea75e003E, ptr @_ZN5tokio7runtime4task3raw8schedule17hba8f9d3c1c67464eE, ptr @_ZN5tokio7runtime4task3raw7dealloc17ha4f272df60b11c29E, ptr @_ZN5tokio7runtime4task3raw15try_read_output17h3930fe5b094fffe0E, ptr @_ZN5tokio7runtime4task3raw21drop_join_handle_slow17h99dc4c21e0c78c80E, ptr @_ZN5tokio7runtime4task3raw17drop_abort_handle17hec993bb93049a846E, ptr @_ZN5tokio7runtime4task3raw8shutdown17hf014a6b8969c477dE, [24 x i8] c"\F0\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@348 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_ZN5tokio7runtime4task3raw4poll17hfc0f7b05b349aa70E, ptr @_ZN5tokio7runtime4task3raw8schedule17h379e733a4e39e5b6E, ptr @_ZN5tokio7runtime4task3raw7dealloc17hfebc92f82a5b8827E, ptr @_ZN5tokio7runtime4task3raw15try_read_output17h50ba7f26862410e3E, ptr @_ZN5tokio7runtime4task3raw21drop_join_handle_slow17h86d2f7fbac8a40b4E, ptr @_ZN5tokio7runtime4task3raw17drop_abort_handle17h37c9c8d121cd1e1eE, ptr @_ZN5tokio7runtime4task3raw8shutdown17h3e21c560b0158b1bE, [24 x i8] c"\F0\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@349 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_ZN5tokio7runtime4task3raw4poll17h97543f300089c877E, ptr @_ZN5tokio7runtime4task3raw8schedule17h379e733a4e39e5b6E, ptr @_ZN5tokio7runtime4task3raw7dealloc17hf0f22b849c0fda3fE, ptr @_ZN5tokio7runtime4task3raw15try_read_output17h5c4283269395449dE, ptr @_ZN5tokio7runtime4task3raw21drop_join_handle_slow17h5c6d8f02b155792bE, ptr @_ZN5tokio7runtime4task3raw17drop_abort_handle17h3ec1457ad5b0c8f6E, ptr @_ZN5tokio7runtime4task3raw8shutdown17h27425edc676949f3E, [24 x i8] c"\B0\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@350 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_ZN5tokio7runtime4task3raw4poll17h8d1cba1c4250ea72E, ptr @_ZN5tokio7runtime4task3raw8schedule17h379e733a4e39e5b6E, ptr @_ZN5tokio7runtime4task3raw7dealloc17h897558de23075250E, ptr @_ZN5tokio7runtime4task3raw15try_read_output17h2b22ab23c78f4965E, ptr @_ZN5tokio7runtime4task3raw21drop_join_handle_slow17hda2b46b79cfe490eE, ptr @_ZN5tokio7runtime4task3raw17drop_abort_handle17hc13299b6a29be89eE, ptr @_ZN5tokio7runtime4task3raw8shutdown17h3b8baea0af685e5eE, [24 x i8] c"0\01\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@351 = private unnamed_addr constant [34 x i8] c"JoinHandle polled after completion", align 1
@352 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @351, [8 x i8] c"\22\00\00\00\00\00\00\00" }>, align 8
@353 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/runtime/task/core.rs\00", align 1
@354 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @353, [16 x i8] c"j\00\00\00\00\00\00\00\A6\01\00\00\16\00\00\00" }>, align 8
@355 = private unnamed_addr constant [58 x i8] c"internal error: entered unreachable code: unexpected stage", align 1
@356 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @355, [8 x i8] c":\00\00\00\00\00\00\00" }>, align 8
@357 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @353, [16 x i8] c"j\00\00\00\00\00\00\00p\01\00\00\1A\00\00\00" }>, align 8
@_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E = external global { ptr, ptr, ptr, ptr }
@358 = private unnamed_addr constant [21 x i8] c"failed to park thread", align 1
@359 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/runtime/handle.rs\00", align 1
@360 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @359, [16 x i8] c"g\00\00\00\00\00\00\00q\01\00\00'\00\00\00" }>, align 8
@"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE" = external thread_local global { { { { { i64, { { i64, [1 x i64] } } }, i64 }, i64, ptr, i64, { { { i32, [2 x i32] } } }, { { { { i8, [1 x i8] } } } }, i8, [1 x i8] } }, i8, [7 x i8] }
@361 = private unnamed_addr constant [113 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/runtime/context/current.rs\00", align 1
@362 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @361, [16 x i8] c"p\00\00\00\00\00\00\00)\00\00\005\00\00\00" }>, align 8
@363 = private unnamed_addr constant [193 x i8] c"Cannot start a runtime from within a runtime. This happens because a function (like `block_on`) attempted to block the current thread while the thread is being used to drive asynchronous tasks.", align 1
@364 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @363, [8 x i8] c"\C1\00\00\00\00\00\00\00" }>, align 8
@365 = private unnamed_addr constant [124 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/runtime/scheduler/multi_thread/mod.rs\00", align 1
@366 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @365, [16 x i8] c"{\00\00\00\00\00\00\00[\00\00\00\09\00\00\00" }>, align 8
@367 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @365, [16 x i8] c"{\00\00\00\00\00\00\00\\\00\00\00'\00\00\00" }>, align 8
@368 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"}\00\00\00\00\00\00\00\82\01\00\00\11\00\00\00" }>, align 8
@369 = private unnamed_addr constant [126 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/runtime/scheduler/current_thread/mod.rs\00", align 1
@370 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @369, [16 x i8] c"}\00\00\00\00\00\00\00\CD\00\00\00!\00\00\00" }>, align 8
@371 = private unnamed_addr constant [27 x i8] c"Failed to `Enter::block_on`", align 1
@372 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @369, [16 x i8] c"}\00\00\00\00\00\00\00\DE\00\00\00\1A\00\00\00" }>, align 8
@373 = private unnamed_addr constant [12 x i8] c"core missing", align 1
@374 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @369, [16 x i8] c"}\00\00\00\00\00\00\00\C6\01\00\002\00\00\00" }>, align 8
@375 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @369, [16 x i8] c"}\00\00\00\00\00\00\00\C6\01\00\00\1E\00\00\00" }>, align 8
@376 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @369, [16 x i8] c"}\00\00\00\00\00\00\00\C0\01\00\00\14\00\00\00" }>, align 8
@377 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @369, [16 x i8] c"}\00\00\00\00\00\00\00[\03\00\00$\00\00\00" }>, align 8
@378 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @369, [16 x i8] c"}\00\00\00\00\00\00\00^\03\00\005\00\00\00" }>, align 8
@379 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @369, [16 x i8] c"}\00\00\00\00\00\00\00c\03\00\00\17\00\00\00" }>, align 8
@380 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @369, [16 x i8] c"}\00\00\00\00\00\00\00^\03\00\00!\00\00\00" }>, align 8
@381 = private unnamed_addr constant [85 x i8] c"a spawned task panicked and the runtime is configured to shut down on unhandled panic", align 1
@382 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @381, [8 x i8] c"U\00\00\00\00\00\00\00" }>, align 8
@383 = private unnamed_addr constant [9 x i8] c"RecvError", align 1
@384 = private unnamed_addr constant [2 x i8] c"Ip", align 1
@385 = private unnamed_addr constant [4 x i8] c"Ipv4", align 1
@386 = private unnamed_addr constant [4 x i8] c"Ipv6", align 1
@387 = private unnamed_addr constant [6 x i8] c"Socket", align 1
@388 = private unnamed_addr constant [8 x i8] c"SocketV4", align 1
@389 = private unnamed_addr constant [8 x i8] c"SocketV6", align 1
@390 = private unnamed_addr constant [18 x i8] c"Unknown SocketAddr", align 1
@391 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@392 = private unnamed_addr constant [6 x i8] c"Cancel", align 1
@393 = private unnamed_addr constant [5 x i8] c"OsInt", align 1
@394 = private unnamed_addr constant [6 x i8] c"OsTerm", align 1
@395 = private unnamed_addr constant [6 x i8] c"OsQuit", align 1
@396 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h98608e5e97afc20aE" }>, align 8
@397 = private unnamed_addr constant [14 x i8] c"AddrParseError", align 1
@398 = private unnamed_addr constant [62 x i8] c"fatal runtime error: thread result panicked on drop, aborting\0A", align 1
@399 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @398, [8 x i8] c">\00\00\00\00\00\00\00" }>, align 8
@400 = private unnamed_addr constant [29 x i8] c"Cancellation token or channel", align 1
@401 = private unnamed_addr constant [6 x i8] c"SIGINT", align 1
@402 = private unnamed_addr constant [7 x i8] c"SIGTERM", align 1
@403 = private unnamed_addr constant [7 x i8] c"SIGQUIT", align 1
@404 = private unnamed_addr constant [9 x i8] c"SendError", align 1
@405 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7271186107a99984E" }>, align 8
@406 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1
@"_ZN81_$LT$actix_server..signals..OsSignals$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h90f169885bc52bafE" = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @"_ZN81_$LT$actix_server..signals..OsSignals$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17ha2f984b0506a2179E", [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@407 = private unnamed_addr constant [112 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/signals.rs:124", align 1
@"_ZN81_$LT$actix_server..signals..OsSignals$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17ha2f984b0506a2179E" = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00|\00\00\00", ptr @407, [8 x i8] c"p\00\00\00\00\00\00\00", ptr @220, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @"_ZN81_$LT$actix_server..signals..OsSignals$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h90f169885bc52bafE", ptr @46, ptr @220, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @221, [9 x i8] c"f\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@408 = private unnamed_addr constant [9 x i8] c" received", align 1
@409 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @408, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h1b98b180cdeaa07bE" = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17h42e36a64e12b4316E", [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E" = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17hf382a07eb44c58fcE", [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h4591ba5541d6483aE" = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17hbde0df3b0663f1ebE", [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h46d12b6bbc37ce3bE" = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17h12296edd3868b808E", [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17hac645a90eeab5ee4E" = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17h7e3119f9e97736f8E", [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@410 = private unnamed_addr constant [111 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/worker.rs:597", align 1
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17h12296edd3868b808E" = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00U\02\00\00", ptr @410, [8 x i8] c"o\00\00\00\00\00\00\00", ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h46d12b6bbc37ce3bE", ptr @46, ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @141, [9 x i8] c"e\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@411 = private unnamed_addr constant [111 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/worker.rs:691", align 1
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17h42e36a64e12b4316E" = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\B3\02\00\00", ptr @411, [8 x i8] c"o\00\00\00\00\00\00\00", ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h1b98b180cdeaa07bE", ptr @46, ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @141, [9 x i8] c"e\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@412 = private unnamed_addr constant [111 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/worker.rs:593", align 1
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17h7e3119f9e97736f8E" = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00Q\02\00\00", ptr @412, [8 x i8] c"o\00\00\00\00\00\00\00", ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17hac645a90eeab5ee4E", ptr @46, ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @141, [9 x i8] c"e\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@413 = private unnamed_addr constant [111 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/worker.rs:606", align 1
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17hbde0df3b0663f1ebE" = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00^\02\00\00", ptr @413, [8 x i8] c"o\00\00\00\00\00\00\00", ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h4591ba5541d6483aE", ptr @46, ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @141, [9 x i8] c"e\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@414 = private unnamed_addr constant [111 x i8] c"event /home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/worker.rs:641", align 1
@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE4META17hf382a07eb44c58fcE" = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\81\02\00\00", ptr @414, [8 x i8] c"o\00\00\00\00\00\00\00", ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", ptr @46, ptr @140, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @141, [9 x i8] c"e\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@415 = private unnamed_addr constant [25 x i8] c"shutting down idle worker", align 1
@416 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @415, [8 x i8] c"\19\00\00\00\00\00\00\00" }>, align 8
@417 = private unnamed_addr constant [31 x i8] c"force shutdown worker, closing ", align 1
@418 = private unnamed_addr constant [12 x i8] c" connections", align 1
@419 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @417, [8 x i8] c"\1F\00\00\00\00\00\00\00", ptr @418, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@420 = private unnamed_addr constant [36 x i8] c"graceful worker shutdown; finishing ", align 1
@421 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @420, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @418, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@422 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00Y\02\00\00%\00\00\00" }>, align 8
@423 = private unnamed_addr constant [21 x i8] c"worker is unavailable", align 1
@424 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @423, [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@425 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00\C1\02\00\00!\00\00\00" }>, align 8
@426 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00\7F\02\00\00\11\00\00\00" }>, align 8
@427 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00\83\02\00\00\15\00\00\00" }>, align 8
@428 = private unnamed_addr constant [19 x i8] c" has been restarted", align 1
@429 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @146, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @428, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@430 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00\86\02\00\00\11\00\00\00" }>, align 8
@431 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00{\02\00\00\1D\00\00\00" }>, align 8
@432 = private unnamed_addr constant [16 x i8] c"Can not restart ", align 1
@433 = private unnamed_addr constant [8 x i8] c" service", align 1
@434 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @432, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @433, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@435 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @144, [16 x i8] c"e\00\00\00\00\00\00\00y\02\00\00\19\00\00\00" }>, align 8
@436 = private unnamed_addr constant [75 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/slice.rs\00", align 1
@437 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @436, [16 x i8] c"J\00\00\00\00\00\00\00\BD\01\00\00\1D\00\00\00" }>, align 8
@438 = private unnamed_addr constant [21 x i8] c"called after complete", align 1
@439 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @438, [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@440 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @329, [16 x i8] c"e\00\00\00\00\00\00\00\09\05\00\00\0D\00\00\00" }>, align 8
@441 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-server-2.6.0/src/join_all.rs\00", align 1
@442 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @441, [16 x i8] c"g\00\00\00\00\00\00\005\00\00\00'\00\00\00" }>, align 8
@443 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @441, [16 x i8] c"g\00\00\00\00\00\00\005\00\00\00\19\00\00\00" }>, align 8
@"_ZN8actix_rt7arbiter6HANDLE29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h05a7b5e4fdb050eeE" = external thread_local global { { { i64, ptr } }, i8, [7 x i8] }
@_ZN8actix_rt7arbiter5COUNT17h226b663ed74f88b9E = external global { i64 }
@444 = private unnamed_addr constant [16 x i8] c"actix-rt|system:", align 1
@445 = private unnamed_addr constant [9 x i8] c"|arbiter:", align 1
@446 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @444, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @445, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@447 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-rt-2.11.0/src/arbiter.rs\00", align 1
@448 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00|\00\00\00\18\00\00\00" }>, align 8
@449 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00\99\00\00\00\19\00\00\00" }>, align 8
@450 = private unnamed_addr constant [31 x i8] c"Cannot spawn Arbiter's thread: ", align 1
@451 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @450, [8 x i8] c"\1F\00\00\00\00\00\00\00", ptr @89, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@452 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00\97\00\00\00#\00\00\00" }>, align 8
@453 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00\8C\00\00\00'\00\00\00" }>, align 8
@454 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00\8F\00\00\00\18\00\00\00" }>, align 8
@455 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @447, [16 x i8] c"c\00\00\00\00\00\00\00\85\00\00\00.\00\00\00" }>, align 8
@456 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17h371f559d1343384aE", [16 x i8] c"p\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$17hb2d649d431f0ba3aE" }>, align 8
@switch.table._ZN3std2io5error5Error4kind17hcef9c5606d2f7459E = private unnamed_addr constant [122 x i8] c"\01\00)#))\22)))\0D&\01))\1C\0C\1F)\0E\0F\14)))\1D\1B\18\19\11 \0B))\1E!)$\10\12))))))))))))))))))))))))))))))))))))))))))))))))))))))$))\08\09\0A\05)\06\03))\07))\16\02)\04)'\13)))))\1A", align 1
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h98608e5e97afc20aE" = private unnamed_addr constant [6 x i8] c"\02\04\04\06\08\08", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h98608e5e97afc20aE.938" = private unnamed_addr constant [6 x ptr] [ptr @384, ptr @385, ptr @386, ptr @387, ptr @388, ptr @389], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE" = private unnamed_addr constant [4 x i8] c"\06\05\06\06", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE.939" = private unnamed_addr constant [4 x ptr] [ptr @392, ptr @393, ptr @394, ptr @395], align 8
@"switch.table._ZN72_$LT$actix_server..signals..SignalKind$u20$as$u20$core..fmt..Display$GT$3fmt17h255a8914c3332e9aE" = private unnamed_addr constant [4 x i8] c"\1D\06\07\07", align 8
@"switch.table._ZN72_$LT$actix_server..signals..SignalKind$u20$as$u20$core..fmt..Display$GT$3fmt17h255a8914c3332e9aE.941" = private unnamed_addr constant [4 x ptr] [ptr @400, ptr @401, ptr @402, ptr @403], align 8

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @"_ZN103_$LT$std..sys..thread_local..abort_on_dtor_unwind..DtorUnwindGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c3f4de280ab1089E"() unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.g, align 8
  %i.h = call fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h81b6540b7d8872e3E(ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.b)
  store ptr %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE"(ptr noalias noundef align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN3std7process5abort17h97870e46d5a4dcf2E() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63d1fb350182e039E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.8.i.i.i = alloca [32 x i8], align 8      ; 2 uses
  %.sroa.4.i.i.i = alloca [8 x i8], align 8       ; 5 uses
  %.sroa.7.i.i.i = alloca [8 x i8], align 8       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3, !noalias !6, !nonnull !8, !align !9, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.i = load i64, ptr %i.g, align 8, !alias.scope !23, !noalias !28, !noundef !8 ; 3 uses
  %i.j = load i64, ptr %i.h, align 8, !alias.scope !31, !noalias !32, !noundef !8
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %"_ZN4core3ptr156drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$$GT$17h3e75b9e8634d4af8E.exit"

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw i64 %i.i, 1
  store i64 %i.l, ptr %i.g, align 8, !alias.scope !33, !noalias !34
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !39, !noalias !40, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !39, !noalias !40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !42, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !42, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.r, 4       ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2b02a3aa9a3d856dE.exit.i.i.thread.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2b02a3aa9a3d856dE.exit.i.i.thread.i.i.i.i.i.i.i.i.i": ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !noalias !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hd97c327d28b9d987E.exit.i.i.i.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !54
  %i.v = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx.i.i.i.i.i, i64 noundef range(i64 1, 9) 8) #24, !noalias !54 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %.preheader.i.i.preheader.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %.idx.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #35, !noalias !45
  unreachable

.preheader.i.i.preheader.i.i.i.i.i.i.i.i.i:       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"
  store i64 %i.r, ptr %i.a, align 8, !noalias !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.v, ptr %i.x, align 8, !noalias !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.d, %.preheader.i.i.preheader.i.i.i.i.i.i.i.i.i
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.d ], [ 0, %.preheader.i.i.preheader.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.val21.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !noalias !65, !nonnull !8, !align !72, !noundef !8
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !65, !nonnull !8, !align !9, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !8, !noalias !73, !nonnull !8
  %i.ad = invoke { ptr, ptr } %i.ac(ptr noundef nonnull align 1 %.val21.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.d unwind label %.body.i.i.i.i.i.i.i.i.i, !noalias !65, !inline_history !76 ; 2 uses

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %i.af = extractvalue { ptr, ptr } %i.ad, 1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %i.ae, ptr %i.ag, align 8, !noalias !77
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.ah, align 8, !noalias !77
  %i.ai = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.r
  br i1 %i.aj, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd97c327d28b9d987E.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.y, align 8, !alias.scope !84, !noalias !85
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #36
          to label %common.resume.i.i.i.i unwind label %bb.e, !noalias !45

bb.e:                                             ; preds = %.body.i.i.i.i.i.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !45
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.j, %.body.i.i.i.i.i.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.j ], [ %i.ak, %.body.i.i.i.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hd97c327d28b9d987E.exit.i.i.i.i.i: ; preds = %bb.d, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2b02a3aa9a3d856dE.exit.i.i.thread.i.i.i.i.i.i.i.i.i"
  %i.am = phi ptr [ %i.u, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2b02a3aa9a3d856dE.exit.i.i.thread.i.i.i.i.i.i.i.i.i" ], [ %i.y, %bb.d ]
  store i64 %i.r, ptr %i.am, align 8, !alias.scope !84, !noalias !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i) ]
  %i.an = load ptr, ptr %.val2.i.i.i.i, align 8, !noalias !42, !nonnull !8, !noundef !8
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !noalias !42
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %"_ZN12actix_server6accept6Accept5start28_$u7b$$u7b$closure$u7d$$u7d$17hc1b896911df38361E.exit.i.i.i.i"

bb.f:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd97c327d28b9d987E.exit.i.i.i.i.i
  tail call void @llvm.trap()
  unreachable

"_ZN12actix_server6accept6Accept5start28_$u7b$$u7b$closure$u7d$$u7d$17hc1b896911df38361E.exit.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd97c327d28b9d987E.exit.i.i.i.i.i
  %i.aq = load ptr, ptr %.val2.i.i.i.i, align 8, !noalias !42, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !noalias !42
  call void @_ZN12actix_server6worker12ServerWorker5start17h8fdf57bb04bb382eE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, i64 noundef %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b), !noalias !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !41 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !41 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.as = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, null
  br i1 %i.as, label %bb.g, label %bb.i

bb.g:                                             ; preds = %"_ZN12actix_server6accept6Accept5start28_$u7b$$u7b$closure$u7d$$u7d$17hc1b896911df38361E.exit.i.i.i.i"
  %i.at = load ptr, ptr %i.f, align 8, !alias.scope !89, !noalias !92, !noundef !8
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i" unwind label %bb.j, !noalias !92

bb.i:                                             ; preds = %"_ZN12actix_server6accept6Accept5start28_$u7b$$u7b$closure$u7d$$u7d$17hc1b896911df38361E.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.4.i.i.i, align 8, !alias.scope !94, !noalias !95
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5f5167bbc96a3a5aE.exit"

bb.j:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %i.f, align 8, !alias.scope !13, !noalias !92
  br label %common.resume.i.i.i.i

"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i": ; preds = %bb.h, %bb.g
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %i.f, align 8, !alias.scope !13, !noalias !92
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5f5167bbc96a3a5aE.exit"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5f5167bbc96a3a5aE.exit": ; preds = %bb.i, %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i"
  %.sink.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %bb.i ], [ %.sroa.4.i.i.i, %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i" ]
  %.sroa.4.0.copyload.sink.i.i.i.i = phi ptr [ %.sroa.4.0.copyload.i.i.i.i, %bb.i ], [ null, %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$std..io..error..Error$GT$$GT$$GT$17hc83e4209ee830c59E.exit.i.i.i.i.i" ]
  store ptr %.sroa.4.0.copyload.sink.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i, align 8, !alias.scope !94, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i = load i64, ptr %.sroa.4.i.i.i, align 8, !alias.scope !96, !noalias !38 ; 2 uses
  %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i = load i64, ptr %.sroa.7.i.i.i, align 8, !alias.scope !96, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not = icmp eq i64 %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i, 0
  br i1 %.not, label %"_ZN4core3ptr156drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$$GT$17h3e75b9e8634d4af8E.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5f5167bbc96a3a5aE.exit"
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i.i, i64 32, i1 false)
  store i64 %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i, ptr %0, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %"_ZN4core3ptr156drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$$GT$17h3e75b9e8634d4af8E.exit"
  ret void

"_ZN4core3ptr156drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$$GT$17h3e75b9e8634d4af8E.exit": ; preds = %bb.a, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5f5167bbc96a3a5aE.exit"
  store ptr null, ptr %0, align 8
  br label %bb.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbbad0528db99efE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !105, !noalias !100 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !105, !noalias !100, !nonnull !8, !noundef !8 ; 2 uses
  %i.r = icmp eq ptr %.promoted.i, %i.q
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.09.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.09.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.52.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.538.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.427.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.431.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.433.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.534.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2edd89eb831d551aE.exit.i", %.lr.ph.i
  %i.ag = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.ah, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2edd89eb831d551aE.exit.i" ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  store ptr %i.ah, ptr %1, align 8, !alias.scope !105, !noalias !100
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !114
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.ai, ptr %i.o, align 8, !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !116
  %i.aj = load i32, ptr %i.ag, align 4, !alias.scope !118, !noalias !119, !noundef !8
  call void @_ZN5tokio6signal4unix6signal17hff30f32247fd52d0E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, i32 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225), !noalias !119
  %i.ak = load ptr, ptr %i.n, align 8, !noalias !116, !noundef !8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  %i.am = load ptr, ptr %i.s, align 8, !noalias !116, !nonnull !8, !noundef !8 ; 2 uses
  br i1 %i.al, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !116
  store ptr %i.am, ptr %i.m, align 8, !noalias !120
  %i.an = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8, !noalias !120
  %i.ao = icmp ult i64 %i.an, 5
  br i1 %i.ao, label %bb.e, label %.thread47.i.i.i.i

bb.d:                                             ; preds = %bb.q, %bb.o, %bb.n, %bb.l, %.noexc42.i.i.i.i, %bb.k, %bb.i, %.thread.i.i.i.i, %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #36
          to label %bb.u unwind label %bb.t, !noalias !119

bb.e:                                             ; preds = %bb.c
  %i.aq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfa4919a7f7337360E", i64 16) monotonic, align 8, !noalias !120 ; 3 uses
  switch i8 %i.aq, label %bb.f [
    i8 0, label %.thread47.i.i.i.i
    i8 1, label %.thread.i.i.i.i
    i8 2, label %.thread.i.i.i.i
  ], !prof !123

bb.f:                                             ; preds = %bb.e
  %i.ar = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfa4919a7f7337360E")
          to label %bb.g unwind label %bb.d, !noalias !124 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %.thread47.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.e, %bb.g, %bb.e
  %.sroa.07.046.i.i.i.i = phi i8 [ %i.ar, %bb.g ], [ %i.aq, %bb.e ], [ %i.aq, %bb.e ]
  %i.at = load ptr, ptr @"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfa4919a7f7337360E", align 8, !noalias !120, !nonnull !8, !align !9, !noundef !8
  %i.au = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at, i8 noundef %.sroa.07.046.i.i.i.i)
          to label %bb.h unwind label %bb.d, !noalias !124

bb.h:                                             ; preds = %.thread.i.i.i.i
  br i1 %i.au, label %bb.i, label %.thread47.i.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !120
  %i.av = load ptr, ptr @"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfa4919a7f7337360E", align 8, !noalias !120, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !120
  store ptr %i.o, ptr %i.i, align 8, !noalias !120
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE", ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !120
  store ptr %i.m, ptr %i.t, align 8, !noalias !120
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !120
  store ptr @229, ptr %i.j, align 8, !noalias !120
  store i64 2, ptr %i.u, align 8, !noalias !120
  store ptr null, ptr %i.v, align 8, !noalias !120
  store ptr %i.i, ptr %i.w, align 8, !noalias !120
  store i64 2, ptr %i.x, align 8, !noalias !120
  store ptr %i.j, ptr %i.k, align 8, !noalias !120
  store ptr @51, ptr %i.y, align 8, !noalias !120
  store i64 1, ptr %i.l, align 8, !noalias !120
  store ptr %i.k, ptr %.sroa.09.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !120
  store i64 1, ptr %.sroa.09.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !120
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !120
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !119

.noexc.i.i.i.i:                                   ; preds = %bb.i
  %i.ax = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !125
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %bb.s

bb.j:                                             ; preds = %.noexc.i.i.i.i
  %i.az = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !125 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 6
  call void @llvm.assume(i1 %i.ba)
  %.not.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr @"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfa4919a7f7337360E", align 8, !noalias !125, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !119, !nonnull !8, !align !72, !noundef !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !noalias !119, !noundef !8
  store i64 1, ptr %i.b, align 8, !noalias !125
  store ptr %i.bd, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i, align 8, !noalias !125
  store i64 %i.bf, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !125
  %i.bg = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc42.i.i.i.i unwind label %bb.d, !noalias !119 ; 2 uses

.noexc42.i.i.i.i:                                 ; preds = %bb.k
  %i.bh = extractvalue { ptr, ptr } %i.bg, 0      ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !invariant.load !8, !noalias !119, !nonnull !8
  %i.bl = invoke noundef zeroext i1 %i.bk(ptr noundef align 1 %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc43.i.i.i.i unwind label %bb.d, !noalias !119, !inline_history !128

.noexc43.i.i.i.i:                                 ; preds = %.noexc42.i.i.i.i
  br i1 %i.bl, label %bb.l, label %bb.s

bb.l:                                             ; preds = %.noexc43.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !125
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bb, ptr noundef nonnull align 1 %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc44.i.i.i.i unwind label %bb.d, !noalias !119

.noexc44.i.i.i.i:                                 ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  br label %bb.s

.thread47.i.i.i.i:                                ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.bm = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !120
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2edd89eb831d551aE.exit.i"

bb.m:                                             ; preds = %.thread47.i.i.i.i
  %i.bo = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !120 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 6
  call void @llvm.assume(i1 %i.bp)
  %.not41.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not41.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2edd89eb831d551aE.exit.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr @"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfa4919a7f7337360E", align 8, !noalias !120, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !124, !nonnull !8, !align !72, !noundef !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !124, !noundef !8
  store i64 1, ptr %i.h, align 8, !noalias !120
  store ptr %i.bs, ptr %.sroa.538.0..sroa_idx.i.i.i.i, align 8, !noalias !120
  store i64 %i.bu, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !120
  %i.bv = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.o unwind label %bb.d, !noalias !124 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bw = extractvalue { ptr, ptr } %i.bv, 0      ; 2 uses
  %i.bx = extractvalue { ptr, ptr } %i.bv, 1      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !8, !noalias !124, !nonnull !8
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef align 1 %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.p unwind label %bb.d, !noalias !124

bb.p:                                             ; preds = %bb.o
  br i1 %i.ca, label %bb.q, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2edd89eb831d551aE.exit.i"

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !120
  %i.cb = load ptr, ptr @"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17hfa4919a7f7337360E", align 8, !noalias !120, !nonnull !8, !align !9, !noundef !8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !120
  store ptr %i.o, ptr %i.d, align 8, !noalias !120
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE", ptr %.sroa.427.0..sroa_idx.i.i.i.i, align 8, !noalias !120
  store ptr %i.m, ptr %i.z, align 8, !noalias !120
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.431.0..sroa_idx.i.i.i.i, align 8, !noalias !120
  store ptr @229, ptr %i.e, align 8, !noalias !120
  store i64 2, ptr %i.aa, align 8, !noalias !120
  store ptr null, ptr %i.ab, align 8, !noalias !120
  store ptr %i.d, ptr %i.ac, align 8, !noalias !120
  store i64 2, ptr %i.ad, align 8, !noalias !120
  store ptr %i.e, ptr %i.f, align 8, !noalias !120
  store ptr @51, ptr %i.ae, align 8, !noalias !120
  store i64 1, ptr %i.g, align 8, !noalias !120
  store ptr %i.f, ptr %.sroa.433.0..sroa_idx.i.i.i.i, align 8, !noalias !120
  store i64 1, ptr %.sroa.534.0..sroa_idx.i.i.i.i, align 8, !noalias !120
  store ptr %i.cc, ptr %i.af, align 8, !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !120
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bq, ptr noundef nonnull align 1 %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.r unwind label %bb.d, !noalias !119

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !120
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2edd89eb831d551aE.exit.i"

bb.s:                                             ; preds = %.noexc44.i.i.i.i, %.noexc43.i.i.i.i, %bb.j, %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !120
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2edd89eb831d551aE.exit.i"

bb.t:                                             ; preds = %bb.d
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !119
  unreachable

bb.u:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ap

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2edd89eb831d551aE.exit.i": ; preds = %bb.s, %bb.r, %bb.p, %bb.m, %.thread47.i.i.i.i
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !114
  %i.ce = icmp eq ptr %i.ah, %i.q
  br i1 %i.ce, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h2edd89eb831d551aE.exit.i", %bb.a
  store i8 4, ptr %0, align 8, !alias.scope !100, !noalias !103
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17haa52fa0431b58d31E.exit"

bb.v:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.cg = load i8, ptr %i.cf, align 4, !range !129, !alias.scope !118, !noalias !119, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !114
  store i8 %i.cg, ptr %0, align 8, !alias.scope !100, !noalias !103
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !100, !noalias !103
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !100, !noalias !103
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17haa52fa0431b58d31E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17haa52fa0431b58d31E.exit": ; preds = %._crit_edge.i, %bb.v
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN12actix_server11test_server10TestServer11unused_addr17h1de1c4a1c871dcc8E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 4 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [136 x i8], align 8               ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [4 x i8], align 4                 ; 7 uses
  %i.m = alloca [32 x i8], align 4                ; 6 uses
  %i.n = alloca [32 x i8], align 4                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @"_ZN4core3net6parser91_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$core..net..socket_addr..SocketAddr$GT$8from_str17h0c3023f1a5db3cefE"(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @11, i64 noundef 11)
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.o = load i16, ptr %i.m, align 4, !range !135, !alias.scope !133, !noalias !130, !noundef !8
  %i.p = icmp eq i16 %i.o, 2
  br i1 %i.p, label %bb.b, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h363d79edbfaf52b6E.exit", !prof !136

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !137
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.r = load i8, ptr %i.q, align 2, !range !138, !alias.scope !133, !noalias !130, !noundef !8
  store i8 %i.r, ptr %i.c, align 1, !noalias !137
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @312, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #35, !noalias !137
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h363d79edbfaf52b6E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.n, ptr noundef nonnull align 4 dereferenceable(32) %i.m, i64 32, i1 false), !alias.scope !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.s = load i16, ptr %i.n, align 4, !range !139, !noundef !8
  %i.t = trunc nuw i16 %i.s to i1
  %. = select i1 %i.t, i32 10, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_ZN7socket26socket6Socket3new17hdf425db4e3184e50E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, i32 noundef %., i32 noundef 1, i32 noundef 1, i32 6)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.u = load i32, ptr %i.k, align 8, !range !143, !alias.scope !140, !noundef !8
  %i.v = trunc nuw i32 %i.u to i1
  br i1 %i.v, label %bb.c, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3687581b4c0776dfE.exit", !prof !136

bb.c:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h363d79edbfaf52b6E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !140
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !140, !nonnull !8, !noundef !8
  store ptr %i.x, ptr %i.b, align 8, !noalias !140
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #35
          to label %bb.e unwind label %bb.d, !noalias !140

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #36
          to label %common.resume unwind label %bb.f, !noalias !140

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !140
  unreachable

common.resume.sink.split:                         ; preds = %.body.thread27, %bb.i, %bb.n, %bb.t, %bb.y, %bb.ab, %bb.ae
  %.sink = phi i32 [ %i.ap, %bb.ab ], [ %i.ap, %bb.ae ], [ %i.ac, %bb.y ], [ %i.ac, %bb.t ], [ %i.ac, %bb.n ], [ %i.ac, %bb.i ], [ %i.ac, %.body.thread27 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.aq, %bb.ab ], [ %i.av, %bb.ae ], [ %i.an, %bb.y ], [ %i.ak, %bb.t ], [ %i.ah, %bb.n ], [ %i.ae, %bb.i ], [ %lpad.thr_comm, %.body.thread27 ]
  %i.aa = call noundef i32 @close(i32 noundef %.sink) #24 ; 0 uses
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.d ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3687581b4c0776dfE.exit": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h363d79edbfaf52b6E.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !range !144, !alias.scope !140, !noundef !8 ; 7 uses
  store i32 %i.ac, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ad = invoke noundef ptr @_ZN7socket26socket6Socket17set_reuse_address17hc9ed0aaa1ca137b1E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.l, i1 noundef zeroext true)
          to label %bb.g unwind label %.body.thread27 ; 2 uses

.body.thread27:                                   ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3687581b4c0776dfE.exit", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit8", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit18", %bb.q, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit13"
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.g:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h3687581b4c0776dfE.exit"
  %.not.i14 = icmp eq ptr %i.ad, null
  br i1 %.not.i14, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit18", label %bb.h, !prof !145

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !146
  store ptr %i.ad, ptr %i.d, align 8, !noalias !146
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #35
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #36
          to label %common.resume.sink.split unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit18": ; preds = %bb.g
  %i.ag = invoke noundef ptr @_ZN7socket26socket6Socket15set_nonblocking17h79554382ceaeb149E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.l, i1 noundef zeroext true)
          to label %bb.l unwind label %.body.thread27 ; 2 uses

bb.l:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit18"
  %.not.i9 = icmp eq ptr %i.ag, null
  br i1 %.not.i9, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit13", label %bb.m, !prof !145

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !149
  store ptr %i.ag, ptr %i.e, align 8, !noalias !149
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #35
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #36
          to label %common.resume.sink.split unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit13": ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN109_$LT$socket2..sockaddr..SockAddr$u20$as$u20$core..convert..From$LT$core..net..socket_addr..SocketAddr$GT$$GT$4from17h56bb4033b3fa0c84E"(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(32) %i.n)
          to label %bb.q unwind label %.body.thread27

bb.q:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit13"
  %i.aj = invoke noundef ptr @_ZN7socket26socket6Socket4bind17hd134eb7858c031f6E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.j)
          to label %bb.r unwind label %.body.thread27 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not.i4 = icmp eq ptr %i.aj, null
  br i1 %.not.i4, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit8", label %bb.s, !prof !145

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !152
  store ptr %i.aj, ptr %i.f, align 8, !noalias !152
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #35
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #36
          to label %common.resume.sink.split unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit8": ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.am = invoke noundef ptr @_ZN7socket26socket6Socket6listen17ha885df6e4268e1f6E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.l, i32 noundef 1024)
          to label %bb.w unwind label %.body.thread27 ; 2 uses

bb.w:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit8"
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h34bad2762be078e0E.exit", label %bb.x, !prof !145

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !155
  store ptr %i.am, ptr %i.g, align 8, !noalias !155
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #35
end_hunk_0
begin_hunk_1_@_ZN12actix_server6server11ServerInner8run_sync17h5588d64d57df2709E:bb.a
  %i.mk = load i64, ptr %i.bb, align 8, !range !182, !alias.scope !861, !noalias !862, !noundef !8
  %i.ml = icmp eq i64 %i.mi, %i.mk
  br i1 %i.ml, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha8d761eeec586e1dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.mi, i64 noundef range(i64 1, 0) 1, i64 noundef 48)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i" unwind label %bb.bv

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !861, !noalias !862
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.mm = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i" ], [ %i.mh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.mn = getelementptr inbounds nuw [48 x i8], ptr %i.mm, i64 %i.mi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mn, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false), !noalias !863
  %i.mo = add nuw nsw i64 %i.mi, 1                ; 4 uses
  store i64 %i.mo, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !861, !noalias !862
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63d1fb350182e039E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.az)
          to label %.noexc6.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i, !noalias !849

.noexc6.i.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.mp = load ptr, ptr %i.ay, align 8, !noalias !859, !noundef !8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.mq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$17hed9d79695ebb42a7E"(ptr noalias noundef align 8 dereferenceable(48) %i.ay) #36
          to label %.body.i.i.i.i.i.i.i.i.i unwind label %bb.bw, !noalias !863

bb.bw:                                            ; preds = %bb.bv
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !863
  unreachable

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i:             ; preds = %bb.bu
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i, %bb.bv
  %eh.lpad-body.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.mq, %bb.bv ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$$GT$17h055a353169a909b6E"(ptr noalias noundef align 8 dereferenceable(24) %i.bb) #36
          to label %.body.i.i.i.i unwind label %bb.bx, !noalias !849

bb.bx:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i, %bb.bs
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !849
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.by, %.body.i.i.i.i.i.i.i.i.i, %bb.bs
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.mu, %bb.by ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i ], [ %i.mf, %bb.bs ] ; 2 uses
  %i.mt = load ptr, ptr %i.bd, align 8, !noalias !809, !noundef !8
  %.not.i.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i.i, label %.body92.i, label %bb.cg

bb.by:                                            ; preds = %bb.br
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.bz:                                            ; preds = %.noexc6.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload15.pre.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !864 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !819
  %i.mv = load ptr, ptr %i.bd, align 8, !noalias !809, !noundef !8 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.not.i.i.i.i, label %bb.cj, label %.preheader.preheader.i

.thread233:                                       ; preds = %.noexc5.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !819
  %i.mw = load ptr, ptr %i.bd, align 8, !noalias !809, !noundef !8 ; 2 uses
  %.not.not.i.i.i.i237 = icmp eq ptr %i.mw, null
  br i1 %.not.not.i.i.i.i237, label %.sink.split, label %.preheader.preheader.i

.thread.i:                                        ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !819
  %i.mx = load ptr, ptr %i.bd, align 8, !noalias !809, !noundef !8 ; 2 uses
  %.not.not.i.i.i293.i = icmp eq ptr %i.mx, null
  br i1 %.not.not.i.i.i293.i, label %.sink.split, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.thread233, %.thread.i, %bb.bz
  %i.my = phi ptr [ %i.mx, %.thread.i ], [ %i.mv, %bb.bz ], [ %i.mw, %.thread233 ]
  %.sroa.0.0.i.i.i298.i = phi i64 [ 0, %.thread.i ], [ %.sroa.0.0.copyload15.pre.i.i.i.i, %bb.bz ], [ 4, %.thread233 ] ; 4 uses
  %.sroa.7.0.i.i.i296.i = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i ], [ %i.mm, %bb.bz ], [ %i.md, %.thread233 ] ; 4 uses
  %.sroa.9.0.i.i.i294.i = phi i64 [ 0, %.thread.i ], [ %i.mo, %bb.bz ], [ 1, %.thread233 ] ; 4 uses
  %i.mz = icmp eq i64 %.sroa.9.0.i.i.i294.i, 0
  br i1 %i.mz, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8a9702a82b06aaceE.exit.i.i.i.i.i", label %.lr.ph447

.preheader.i:                                     ; preds = %.lr.ph447
  %i.na = icmp eq i64 %i.nc, %.sroa.9.0.i.i.i294.i
  br i1 %i.na, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8a9702a82b06aaceE.exit.i.i.i.i.i", label %.lr.ph447

.lr.ph447:                                        ; preds = %.preheader.preheader.i, %.preheader.i
  %.sroa.0.0.i.i.i.i.i.i.i446 = phi i64 [ %i.nc, %.preheader.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [48 x i8], ptr %.sroa.7.0.i.i.i296.i, i64 %.sroa.0.0.i.i.i.i.i.i.i446
  %i.nc = add i64 %.sroa.0.0.i.i.i.i.i.i.i446, 1  ; 4 uses
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$17hed9d79695ebb42a7E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.nb)
          to label %.preheader.i unwind label %bb.cb, !noalias !865

bb.ca:                                            ; preds = %.lr.ph450.a
  %i.nd = add i64 %.sroa.0.1.i.i.i.i.i.i.i448, 1  ; 2 uses
  %i.ne = icmp eq i64 %i.nd, %.sroa.9.0.i.i.i294.i
  br i1 %i.ne, label %.body.i.i.i.i.i, label %.lr.ph450.a

bb.cb:                                            ; preds = %.lr.ph447
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ng = icmp eq i64 %i.nc, %.sroa.9.0.i.i.i294.i
  br i1 %i.ng, label %.body.i.i.i.i.i, label %.lr.ph450.a

.lr.ph450.a:                                      ; preds = %bb.cb, %bb.ca
  %.sroa.0.1.i.i.i.i.i.i.i448 = phi i64 [ %i.nd, %bb.ca ], [ %i.nc, %bb.cb ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [48 x i8], ptr %.sroa.7.0.i.i.i296.i, i64 %.sroa.0.1.i.i.i.i.i.i.i448
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$17hed9d79695ebb42a7E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.nh) #36
          to label %bb.ca unwind label %bb.cc, !noalias !865

bb.cc:                                            ; preds = %.lr.ph450.a
  %i.ni = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !868
  unreachable

.body.i.i.i.i.i:                                  ; preds = %bb.ca, %bb.cb
  %i.nj = icmp eq i64 %.sroa.0.0.i.i.i298.i, 0
  br i1 %i.nj, label %.body92.i, label %bb.cd

bb.cd:                                            ; preds = %.body.i.i.i.i.i
  %i.nk = mul nuw i64 %.sroa.0.0.i.i.i298.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i.i296.i, i64 noundef %i.nk, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !865
  br label %.body92.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8a9702a82b06aaceE.exit.i.i.i.i.i": ; preds = %.preheader.i, %.preheader.preheader.i
  %i.nl = icmp eq i64 %.sroa.0.0.i.i.i298.i, 0
  br i1 %i.nl, label %.thread165.i, label %bb.ce

bb.ce:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8a9702a82b06aaceE.exit.i.i.i.i.i"
  %i.nm = mul nuw i64 %.sroa.0.0.i.i.i298.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i.i296.i, i64 noundef %i.nm, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !865
  br label %.thread165.i

bb.cf:                                            ; preds = %bb.cg
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !843
  unreachable

bb.cg:                                            ; preds = %.body.i.i.i.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bd)
          to label %.body92.i unwind label %bb.cf, !noalias !843

.body92.i:                                        ; preds = %.critedge.i, %.body.i95.i, %bb.ci, %bb.cg, %bb.cd, %.body.i.i.i.i.i, %.body.i.i.i.i
  %.sroa.044.2.i = phi i8 [ 0, %.critedge.i ], [ 1, %.body.i.i.i.i ], [ 1, %bb.cg ], [ 1, %bb.cd ], [ 1, %.body.i.i.i.i.i ], [ 0, %bb.ci ], [ 1, %.body.i95.i ] ; 2 uses
  %.pn77.i = phi { ptr, i32 } [ %.pn.pn.i, %.critedge.i ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.cg ], [ %i.nf, %bb.cd ], [ %i.nf, %.body.i.i.i.i.i ], [ %i.nr, %bb.ci ], [ %eh.lpad-body.i.i, %.body.i95.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.no = load ptr, ptr %i.bq, align 8, !alias.scope !880, !noalias !789, !nonnull !8, !noundef !8
  %i.np = atomicrmw sub ptr %i.no, i64 1 release, align 8, !noalias !881
  %i.nq = icmp eq i64 %i.np, 1
  br i1 %i.nq, label %bb.ch, label %.body90.i

bb.ch:                                            ; preds = %.body92.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bq)
          to label %.body90.i unwind label %bb.hn, !noalias !792

bb.ci:                                            ; preds = %bb.hl
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %.body92.i

.thread165.i:                                     ; preds = %bb.ce, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8a9702a82b06aaceE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !809
  br label %bb.ck

bb.cj:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !809
  %i.ns = icmp eq i64 %.sroa.0.0.copyload15.pre.i.i.i.i, -9223372036854775808
  br i1 %i.ns, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %.thread165.i
  %.sroa.5.0170.i = phi ptr [ %i.my, %.thread165.i ], [ %i.mm, %bb.cj ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0170.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.hq

.sink.split:                                      ; preds = %.thread.i, %.thread233
  %.sroa.9.0.i.i.i295306.i.ph = phi i64 [ 1, %.thread233 ], [ 0, %.thread.i ]
  %.sroa.7.0.i.i.i297305.i.ph = phi ptr [ %i.md, %.thread233 ], [ inttoptr (i64 8 to ptr), %.thread.i ]
  %.sroa.0.0.i.i.i299304.i.ph = phi i64 [ 4, %.thread233 ], [ 0, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !809
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split, %bb.cj
  %.sroa.9.0.i.i.i295306.i = phi i64 [ %i.mo, %bb.cj ], [ %.sroa.9.0.i.i.i295306.i.ph, %.sink.split ] ; 5 uses
  %.sroa.7.0.i.i.i297305.i = phi ptr [ %i.mm, %bb.cj ], [ %.sroa.7.0.i.i.i297305.i.ph, %.sink.split ] ; 4 uses
  %.sroa.0.0.i.i.i299304.i = phi i64 [ %.sroa.0.0.copyload15.pre.i.i.i.i, %bb.cj ], [ %.sroa.0.0.i.i.i299304.i.ph, %.sink.split ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i.i297305.i) ]
  %i.nt = icmp samesign ult i64 %.sroa.9.0.i.i.i295306.i, 192153584101141163
  call void @llvm.assume(i1 %i.nt)
  %.idx.i = mul nuw nsw i64 %.sroa.9.0.i.i.i295306.i, 48
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i.i297305.i, i64 %.idx.i
  store ptr %.sroa.7.0.i.i.i297305.i, ptr %i.bm, align 8, !alias.scope !882, !noalias !885
  %i.nv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %.sroa.0.0.i.i.i299304.i, ptr %i.nv, align 8, !alias.scope !882, !noalias !885
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.sroa.7.0.i.i.i297305.i, ptr %i.nw, align 8, !alias.scope !882, !noalias !885
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.nu, ptr %i.nx, align 8, !alias.scope !882, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !887
  store i64 0, ptr %i.ax, align 8, !alias.scope !891, !noalias !887
  %.sroa.4.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !alias.scope !891, !noalias !887
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i, i8 0, i64 16, i1 false), !alias.scope !891, !noalias !887
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !891, !noalias !887
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !891, !noalias !887
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %.not3.i.i.i = icmp eq i64 %.sroa.9.0.i.i.i295306.i, 0
  br i1 %.not3.i.i.i, label %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17h9f2de54b4d96e6d6E.exit.i.i.i", label %bb.cn

"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17h9f2de54b4d96e6d6E.exit.i.i.i": ; preds = %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17haa0a7371b2d2b1a1E.exit.i.i.i", %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !noalias !901
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.nz = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8, !alias.scope !902, !noalias !909, !nonnull !8, !noundef !8 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.ob, align 8, !alias.scope !902, !noalias !909 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.oa
  br i1 %.not7.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h4ddf4bdaa999049dE.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17h9f2de54b4d96e6d6E.exit.i.i.i"
  %i.oc = load ptr, ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !alias.scope !910, !noalias !913, !nonnull !8, !noundef !8
  %i.od = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !917, !noalias !920, !nonnull !8, !noundef !8
  %.promoted8.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !alias.scope !910, !noalias !913
  %.promoted10.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !917, !noalias !920
  br label %bb.cm

._crit_edge.i.i.i.i:                              ; preds = %bb.cm
  store ptr %i.oh, ptr %i.ob, align 8, !alias.scope !902, !noalias !909
  store i64 %i.ok, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8, !alias.scope !910, !noalias !913
  store i64 %i.oo, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !917, !noalias !920
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h4ddf4bdaa999049dE.exit.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h4ddf4bdaa999049dE.exit.i.i.i": ; preds = %._crit_edge.i.i.i.i, %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17h9f2de54b4d96e6d6E.exit.i.i.i"
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$$GT$17h6b703382dd5aee87E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %bb.cs unwind label %bb.cq, !noalias !921

bb.cm:                                            ; preds = %bb.cm, %.lr.ph.i.i.i.i
  %i.oe = phi i64 [ %.promoted10.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.oo, %bb.cm ] ; 3 uses
  %i.of = phi i64 [ %.promoted8.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ok, %bb.cm ] ; 3 uses
  %i.og = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.oh, %bb.cm ] ; 4 uses
  %.sroa.26.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %.sroa.26.0.copyload.i.i.i.i = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !noalias !922, !nonnull !8, !noundef !8
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.og, i64 40
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !922
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 48 ; 3 uses
  %i.oi = icmp ult i64 %i.of, 288230376151711744
  call void @llvm.assume(i1 %i.oi)
  %i.oj = getelementptr inbounds nuw [32 x i8], ptr %i.oc, i64 %i.of
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oj, ptr noundef nonnull align 8 dereferenceable(32) %i.og, i64 32, i1 false), !noalias !922
  %i.ok = add nuw nsw i64 %i.of, 1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.ol = icmp ult i64 %i.oe, 576460752303423488
  call void @llvm.assume(i1 %i.ol)
  %i.om = getelementptr inbounds nuw [16 x i8], ptr %i.od, i64 %i.oe ; 2 uses
  store ptr %.sroa.26.0.copyload.i.i.i.i, ptr %i.om, align 8, !noalias !924
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  store i64 %.sroa.3.0.copyload.i.i.i.i, ptr %i.on, align 8, !noalias !924
  %i.oo = add nuw nsw i64 %i.oe, 1                ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.oh, %i.oa
  br i1 %.not.i5.i.i.i, label %._crit_edge.i.i.i.i, label %bb.cm

bb.cn:                                            ; preds = %bb.cl
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha8d761eeec586e1dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 0, i64 noundef range(i64 1, 0) %.sroa.9.0.i.i.i295306.i, i64 noundef 32)
          to label %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17haa0a7371b2d2b1a1E.exit.i.i.i" unwind label %bb.co

"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17haa0a7371b2d2b1a1E.exit.i.i.i": ; preds = %bb.cn
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha8d761eeec586e1dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ny, i64 noundef 0, i64 noundef range(i64 1, 0) %.sroa.9.0.i.i.i295306.i, i64 noundef 16)
          to label %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17h9f2de54b4d96e6d6E.exit.i.i.i" unwind label %bb.co

bb.co:                                            ; preds = %bb.cn, %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17haa0a7371b2d2b1a1E.exit.i.i.i"
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$$GT$17h6b703382dd5aee87E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bm) #36
          to label %.body.i95.i unwind label %bb.cp, !noalias !925

bb.cp:                                            ; preds = %bb.co
  %i.op = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !926
  unreachable

bb.cq:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h4ddf4bdaa999049dE.exit.i.i.i"
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i95.i

.body.i95.i:                                      ; preds = %bb.cq, %bb.co
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.oq, %bb.cq ], [ %lpad.thr_comm.i.i.i, %bb.co ]
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$$LP$alloc..vec..Vec$LT$actix_server..worker..WorkerHandleAccept$GT$$C$alloc..vec..Vec$LT$actix_server..worker..WorkerHandleServer$GT$$RP$$GT$17hda476e2da976c66bE"(ptr noalias noundef align 8 dereferenceable(48) %i.ax) #36
          to label %.body92.i unwind label %bb.cr, !noalias !921

bb.cr:                                            ; preds = %.body.i95.i
  %i.or = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !921
  unreachable

bb.cs:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h4ddf4bdaa999049dE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i64 48, i1 false), !noalias !927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !789
  %i.os = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.os, i64 24, i1 false), !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6140.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6140.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6140.sroa.7.i)
  %i.ot = load ptr, ptr %i.bq, align 8, !noalias !789, !nonnull !8, !noundef !8
  %i.ou = atomicrmw add ptr %i.ot, i64 1 monotonic, align 8, !noalias !792
  %i.ov = icmp slt i64 %i.ou, 0
  br i1 %i.ov, label %bb.ev, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ow = load ptr, ptr %i.bq, align 8, !noalias !789, !nonnull !8, !noundef !8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !789
  store i32 %i.lg, ptr %i.av, align 4, !noalias !933
  store ptr %i.ow, ptr %i.au, align 8, !noalias !933
  store ptr %i.kv, ptr %i.at, align 8, !noalias !933
  %i.ox = icmp sgt i64 %i.jv, -1
  call void @llvm.assume(i1 %i.ox)
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 %i.jv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !935
  store ptr null, ptr %i.as, align 8, !noalias !935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !952
  store ptr %.sroa.01.0.i.i.i.i.i, ptr %i.aq, align 8, !alias.scope !959, !noalias !963
  %.sroa.033.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %i.kr, ptr %.sroa.033.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !959, !noalias !963
  %.sroa.033.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.oy, ptr %.sroa.033.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !959, !noalias !963
  %.sroa.4.0..sroa_idx.i99.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i99.i, align 8, !alias.scope !959, !noalias !963
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !959, !noalias !964
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !971
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  call void @llvm.experimental.noalias.scope.decl(metadata !980), !noalias !983
  call void @llvm.experimental.noalias.scope.decl(metadata !984), !noalias !983
  call void @llvm.experimental.noalias.scope.decl(metadata !987), !noalias !983
  call void @llvm.experimental.noalias.scope.decl(metadata !989), !noalias !983
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i, %.sroa.4208.0.copyload
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cx, label %bb.cu

.body.i101.i:                                     ; preds = %bb.ea, %bb.dt, %.body.i.i.i.i100.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ta, %bb.ea ], [ %.pn.i.i.i.i.i, %.body.i.i.i.i100.i ], [ %.pn.i.i.i.i.i, %bb.dt ]
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_server..handle..ServerHandle$GT$17h22a7caa4898d49c3E"(ptr noalias noundef align 8 dereferenceable(8) %i.at) #36
          to label %.body24.i.i unwind label %bb.ej, !noalias !992

bb.cu:                                            ; preds = %bb.ct
  %.sroa.033.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.0.i.i.i.i.i, align 8, !noalias !993 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.oz, ptr %.sroa.033.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !998, !noalias !999
end_hunk_1
begin_hunk_2_@"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17heaab7690effae0faE":bb.a
.noexc5:                                          ; preds = %.noexc4
  %i.i = and i64 %i.h, 8
  %.not2.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not2.i.i.i.i, label %bb.e, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit"

bb.e:                                             ; preds = %.noexc5
  invoke void @_ZN5tokio7runtime4task4core7Trailer9set_waker17h4ecbb5fce603c1a0E(ptr noundef nonnull align 8 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
          to label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc4, %bb.d, %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.k)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !8, !noalias !8301 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.l, !noalias !8301

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !182, !invariant.load !8, !noalias !8301 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !604, !invariant.load !8, !noalias !8301 ; 2 uses
  %i.v = icmp ult i64 %i.u, -9223372036854775807
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.k
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.u) #24, !noalias !8301
  br label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit"

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !182, !invariant.load !8, !noalias !8301 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !604, !invariant.load !8, !noalias !8301 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.l
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #24, !noalias !8301
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.x, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i" ], [ %i.x, %bb.l ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit": ; preds = %.noexc5, %bb.c, %.noexc, %bb.e, %bb.h, %bb.k, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = call noundef ptr @"_ZN5tokio4task5local111_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$7release17h7991126e01e3ac1cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.af, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State22transition_to_terminal17hbe80bd7489bcd841E(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit", %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit"
  ret void

bb.n:                                             ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit"
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17hb71a7039b7716641E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit" unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %common.resume

"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit": ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN63_$LT$std..sync..mpsc..RecvError$u20$as$u20$core..fmt..Debug$GT$3fmt17hdeba002334009339E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @383, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8ecb3dc82f7e4766E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !72, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !9, !noundef !8
  %i.d = tail call noundef zeroext i1 @"_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h210a165857e155fbE"(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN69_$LT$actix_server..socket..SocketAddr$u20$as$u20$core..fmt..Debug$GT$3fmt17h612ae67f8322567fE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i32, ptr %0, align 4, !range !307, !noundef !8
  switch i32 %i.g, label %default.unreachable35 [
    i32 0, label %bb.b
    i32 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17
    i32 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22
  ]

default.unreachable35:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.h, align 8
  %.val11 = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val12, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !8, !noalias !8304, !nonnull !8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 1 %.val11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @390, i64 noundef 18), !noalias !8304, !inline_history !8307
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.l, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e405d77764e4babE", ptr %.sroa.47.0..sroa_idx, align 8
  %.val9 = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8308
  store ptr @391, ptr %i.b, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.725.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.826.0..sroa_idx, align 8
  %.sroa.1027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1027.0..sroa_idx, align 8
  %i.n = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !8308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.o, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7b199ada190c657cE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8311
  store ptr @391, ptr %i.a, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.731.0..sroa_idx, align 8
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.832.0..sroa_idx, align 8
  %.sroa.1033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1033.0..sroa_idx, align 8
  %i.q = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.k, %bb.b ], [ %i.n, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17 ], [ %i.q, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN70_$LT$actix_server..socket..MioListener$u20$as$u20$core..fmt..Debug$GT$3fmt17hab9dbe7990e98dc5E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i32, ptr %0, align 4, !range !143, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = trunc nuw i32 %i.g to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.i, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcda7efab78711dd4E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val9 = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %.val10 = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8314
  store ptr @391, ptr %i.b, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.1020.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1020.0..sroa_idx, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !8314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7d191b1424e95564E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %.val8 = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8317
  store ptr @391, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.k, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.l, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$core..net..parser..AddrParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h5b3d5d51fc865fbeE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @397, i64 noundef 14, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @396)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$actix_server..socket..SocketAddr$u20$as$u20$core..fmt..Display$GT$3fmt17h4d98a367e1fd69d8E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i32, ptr %0, align 4, !range !307, !noundef !8
  switch i32 %i.g, label %default.unreachable35 [
    i32 0, label %bb.b
    i32 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17
    i32 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22
  ]

default.unreachable35:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.h, align 8
  %.val11 = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val12, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !8, !noalias !8320, !nonnull !8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 1 %.val11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @390, i64 noundef 18), !noalias !8320, !inline_history !8307
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.l, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he38fc04a783af194E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val9 = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8323
  store ptr @391, ptr %i.b, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.725.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.826.0..sroa_idx, align 8
  %.sroa.1027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1027.0..sroa_idx, align 8
  %i.n = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !8323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.o, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7b199ada190c657cE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8326
  store ptr @391, ptr %i.a, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.731.0..sroa_idx, align 8
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.832.0..sroa_idx, align 8
  %.sroa.1033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1033.0..sroa_idx, align 8
  %i.q = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.k, %bb.b ], [ %i.n, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit17 ], [ %i.q, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit22 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$actix_server..signals..SignalKind$u20$as$u20$core..fmt..Display$GT$3fmt17h255a8914c3332e9aE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !129, !noundef !8 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN72_$LT$actix_server..signals..SignalKind$u20$as$u20$core..fmt..Display$GT$3fmt17h255a8914c3332e9aE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN72_$LT$actix_server..signals..SignalKind$u20$as$u20$core..fmt..Display$GT$3fmt17h255a8914c3332e9aE.941", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$actix_server..socket..MioListener$u20$as$u20$core..fmt..Display$GT$3fmt17ha0c9d56828bee366E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i32, ptr %0, align 4, !range !143, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = trunc nuw i32 %i.g to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.i, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcda7efab78711dd4E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val9 = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %.val10 = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8329
  store ptr @391, ptr %i.b, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.1020.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1020.0..sroa_idx, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !8329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7d191b1424e95564E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %.val8 = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8332
  store ptr @391, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.l = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.k, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.l, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$std..sync..mpsc..SendError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h018e776fe8812075E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @404, i64 noundef 9)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$std..sync..mpsc..SendError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcf73f973ef52652cE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @404, i64 noundef 9)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define { ptr, i64 } @"_ZN74_$LT$actix_server..worker..WorkerCounter$u20$as$u20$core..clone..Clone$GT$5clone17h05a2e4cb26944596E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %.val.i = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %i.d = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.e, ptr %i.c, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hbda590f5cdfdfcc2E.exit, !prof !136

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hbda590f5cdfdfcc2E.exit: ; preds = %bb.a
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.b, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$tokio..sync..oneshot..error..RecvError$u20$as$u20$core..fmt..Debug$GT$3fmt17h29f9f401cd5371e3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @383, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @405)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN76_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83093687d1e3a7e9E"(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef ptr @_ZN8actix_rt7arbiter7Arbiter11try_current17h363e53880c2e3f80E() ; 6 uses
  store ptr %i.b, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_rt..arbiter..ArbiterHandle$GT$$GT$17h7f03f5b6e50d97e9E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN8actix_rt7arbiter13ArbiterHandle4stop17h3dca8a88ed770d41E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !8335)
  call void @llvm.experimental.noalias.scope.decl(metadata !8338)
  call void @llvm.experimental.noalias.scope.decl(metadata !8341)
  call void @llvm.experimental.noalias.scope.decl(metadata !8344)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %i.e = atomicrmw sub ptr %i.d, i64 1 acq_rel, align 8, !noalias !8347
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5121bd2d41adeb8eE.exit.i.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.i = atomicrmw add ptr %i.h, i64 1 acquire, align 8, !noalias !8347
  %i.j = invoke fastcc noundef nonnull ptr @"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$10find_block17he9129a4524166ed1E"(ptr noundef nonnull align 8 %i.g, i64 noundef %i.i)
          to label %.noexc.i.i.i.i unwind label %bb.e, !noalias !8347

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 528
  %i.l = atomicrmw or ptr %i.k, i64 8589934592 release, align 8, !noalias !8347 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8 %i.m)
          to label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5121bd2d41adeb8eE.exit.i.i.i.i" unwind label %bb.e, !noalias !8347

bb.e:                                             ; preds = %.noexc.i.i.i.i, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8348)
  call void @llvm.experimental.noalias.scope.decl(metadata !8351)
  %i.o = load ptr, ptr %i.a, align 8, !alias.scope !8354, !nonnull !8, !noundef !8
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !8354
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcff2d799f1d375ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.h

"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5121bd2d41adeb8eE.exit.i.i.i.i": ; preds = %.noexc.i.i.i.i, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !8355)
end_hunk_2
