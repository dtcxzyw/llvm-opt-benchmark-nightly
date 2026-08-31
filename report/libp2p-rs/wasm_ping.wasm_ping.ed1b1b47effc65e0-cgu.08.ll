Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/wasm_ping.wasm_ping.ed1b1b47effc65e0-cgu.08?download=true
inline.NumInlined: 1190
inline.NumDeleted: 670
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sharded-slab-0.1.7/src/shard.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\00\FC\00\00\00\0A\00\00\00" }>, align 8
@2 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.4.2/src/header/map.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\C9\04\00\00\0C\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\C9\05\00\00\0C\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\D5\05\00\00\11\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\FA\05\00\00=\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs9DIU3UKMbTt_4axum5boxedINtB5_17MakeErasedHandlerNvCskm6LeB9lWb4_9wasm_ping14serve_wasm_pkgNtBX_9TestStateEINtB5_15ErasedIntoRouteB1B_zE9clone_boxBX_, ptr @_RNvXs2_NtCs9DIU3UKMbTt_4axum5boxedINtB5_17MakeErasedHandlerNvCskm6LeB9lWb4_9wasm_ping14serve_wasm_pkgNtBX_9TestStateEINtB5_15ErasedIntoRouteB1B_zE10into_routeBX_, ptr @_RNvXs2_NtCs9DIU3UKMbTt_4axum5boxedINtB5_17MakeErasedHandlerNvCskm6LeB9lWb4_9wasm_ping14serve_wasm_pkgNtBX_9TestStateEINtB5_15ErasedIntoRouteB1B_zE15call_with_stateBX_ }>, align 8
@8 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/runtime/scheduler/mod.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"n\00\00\00\00\00\00\00\9E\00\00\00-\00\00\00" }>, align 8
@10 = private unnamed_addr constant [127 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/runtime/scheduler/multi_thread/handle.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"~\00\00\00\00\00\00\00A\00\00\00\09\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\EE\0C\00\00\1E\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\FD\08\00\00\12\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00:\07\00\00\22\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00D\07\00\00\16\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00I\07\00\00\16\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00I\07\00\00&\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00L\07\00\00\19\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00Q\07\00\00\16\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00Q\07\00\00&\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00T\07\00\00\19\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00Z\07\00\00\19\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00[\07\00\00\19\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\83\07\00\00&\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\83\07\00\00;\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\88\07\00\00\1D\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\90\07\00\00&\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\90\07\00\00;\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\95\07\00\00\1D\00\00\00" }>, align 8
@30 = private unnamed_addr constant [2 x i8] c"Ok", align 1
@31 = private unnamed_addr constant [3 x i8] c"Err", align 1
@32 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @30, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @31, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@33 = private unnamed_addr constant [23 x i8] c"size overflows MAX_SIZE", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\D9\02\00\00\0E\00\00\00" }>, align 8
@35 = private unnamed_addr constant [36 x i8] c"expected a header name, but got None", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00u\08\00\00 \00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00z\08\00\008\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\008\0B\00\00\0E\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\99\05\00\00\0E\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCscWOm1fvf9pm_10serde_core2deNtNvXs19_NtB4_5implsyNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCskm6LeB9lWb4_9wasm_ping }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshOIO9ZZXjgm_5tower4util10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB1y_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping14serve_wasm_pkgTNtNtNtCsf7xb2awyBix_9axum_core7extract7private8ViaPartsNtNtCscwxJ8MeEu7n_4http3uri3UriENtB2W_9TestStateEENCINvMNtBG_16boxed_clone_syncINtB5o_19BoxCloneSyncServiceINtNtB4y_7request7RequestNtNtB3H_4body4BodyEINtNtB4y_8response8ResponseB6C_EzE3newB1t_E0EEB2W_, [16 x i8] c"0\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB14_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping14serve_wasm_pkgTNtNtNtCsf7xb2awyBix_9axum_core7extract7private8ViaPartsNtNtCscwxJ8MeEu7n_4http3uri3UriENtB2s_9TestStateEENCINvMNtB6_16boxed_clone_syncINtB4U_19BoxCloneSyncServiceINtNtB44_7request7RequestNtNtB3d_4body4BodyEINtNtB44_8response8ResponseB68_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB5J_E10poll_readyB2s_, ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB14_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping14serve_wasm_pkgTNtNtNtCsf7xb2awyBix_9axum_core7extract7private8ViaPartsNtNtCscwxJ8MeEu7n_4http3uri3UriENtB2s_9TestStateEENCINvMNtB6_16boxed_clone_syncINtB4U_19BoxCloneSyncServiceINtNtB44_7request7RequestNtNtB3d_4body4BodyEINtNtB44_8response8ResponseB68_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB5J_E4callB2s_, ptr @_RNvXs1_NtNtCshOIO9ZZXjgm_5tower4util16boxed_clone_syncINtNtB7_10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB1p_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping14serve_wasm_pkgTNtNtNtCsf7xb2awyBix_9axum_core7extract7private8ViaPartsNtNtCscwxJ8MeEu7n_4http3uri3UriENtB2N_9TestStateEENCINvMB5_INtB5_19BoxCloneSyncServiceINtNtB4p_7request7RequestNtNtB3y_4body4BodyEINtNtB4p_8response8ResponseB68_EzE3newB1k_E0EINtB5_12CloneServiceB5J_E9clone_boxB2N_ }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9DIU3UKMbTt_4axum4util21MapIntoResponseFutureNCNCNvMs2_NtNtBG_7routing14method_routingINtB1B_12MethodRouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE3new00EEB2t_, [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs9DIU3UKMbTt_4axum4utilINtB5_21MapIntoResponseFutureNCNCNvMs2_NtNtB7_7routing14method_routingINtB18_12MethodRouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE3new00ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB20_ }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9DIU3UKMbTt_4axum4util21MapIntoResponseFutureINtNtNtCshOIO9ZZXjgm_5tower4util7map_err12MapErrFutureINtNtCsdXHxuUs9k1_10tower_http4cors14ResponseFutureINtNtNtBG_7routing5route11RouteFuturezEENvYzINtNtB4_7convert4IntozE4intoEEECskm6LeB9lWb4_9wasm_ping, [16 x i8] c"\F0\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs9DIU3UKMbTt_4axum4utilINtB5_21MapIntoResponseFutureINtNtNtCshOIO9ZZXjgm_5tower4util7map_err12MapErrFutureINtNtCsdXHxuUs9k1_10tower_http4cors14ResponseFutureINtNtNtB7_7routing5route11RouteFuturezEENvYzINtNtCskKLDkoKarTP_4core7convert4IntozE4intoEENtNtNtB3s_6future6future6Future4pollCskm6LeB9lWb4_9wasm_ping }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9DIU3UKMbTt_4axum4util21MapIntoResponseFutureINtNtNtCshOIO9ZZXjgm_5tower4util7map_err12MapErrFutureINtNtNtCsdXHxuUs9k1_10tower_http5trace6future14ResponseFutureINtNtNtBG_7routing5route11RouteFuturezENtNtB2q_8classify22ServerErrorsAsFailuresENvYzINtNtB4_7convert4IntozE4intoEEECskm6LeB9lWb4_9wasm_ping, [16 x i8] c"\B0\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs9DIU3UKMbTt_4axum4utilINtB5_21MapIntoResponseFutureINtNtNtCshOIO9ZZXjgm_5tower4util7map_err12MapErrFutureINtNtNtCsdXHxuUs9k1_10tower_http5trace6future14ResponseFutureINtNtNtB7_7routing5route11RouteFuturezENtNtB1X_8classify22ServerErrorsAsFailuresENvYzINtNtCskKLDkoKarTP_4core7convert4IntozE4intoEENtNtNtB4h_6future6future6Future4pollCskm6LeB9lWb4_9wasm_ping }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9DIU3UKMbTt_4axum4util21MapIntoResponseFutureINtNtNtBG_7handler6future17IntoServiceFutureINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtCscwxJ8MeEu7n_4http8response8ResponseNtNtCsf7xb2awyBix_9axum_core4body4BodyENtNtB4_6marker4SendEL_EEEEECskm6LeB9lWb4_9wasm_ping, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs9DIU3UKMbTt_4axum4utilINtB5_21MapIntoResponseFutureINtNtNtB7_7handler6future17IntoServiceFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1L_6future6future6Futurep6OutputINtNtCscwxJ8MeEu7n_4http8response8ResponseNtNtCsf7xb2awyBix_9axum_core4body4BodyENtNtB1L_6marker4SendEL_EEEEB2M_4pollCskm6LeB9lWb4_9wasm_ping }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9DIU3UKMbTt_4axum4util21MapIntoResponseFutureINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultINtNtCscwxJ8MeEu7n_4http8response8ResponseNtNtCsf7xb2awyBix_9axum_core4body4BodyEzEEEECskm6LeB9lWb4_9wasm_ping, [16 x i8] c"\80\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs9DIU3UKMbTt_4axum4utilINtB5_21MapIntoResponseFutureINtNtNtCskKLDkoKarTP_4core6future5ready5ReadyINtNtB15_6result6ResultINtNtCscwxJ8MeEu7n_4http8response8ResponseNtNtCsf7xb2awyBix_9axum_core4body4BodyEzEEENtNtB13_6future6Future4pollCskm6LeB9lWb4_9wasm_ping }>, align 8
@47 = private unnamed_addr constant [40 x i8] c"page must have been allocated to insert!", align 1
@48 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sharded-slab-0.1.7/src/page/mod.rs\00", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @48, [16 x i8] c"g\00\00\00\00\00\00\00\18\01\00\00\12\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @48, [16 x i8] c"g\00\00\00\00\00\00\00\19\01\00\00\19\00\00\00" }>, align 8
@_RNvNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@_RNvNCNKNvNtNtCshEYSjulKtIJ_18tracing_subscriber6filter13layer_filters9FILTERING0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { i64, i8, [7 x i8] }, i64 }
@_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\003\01\00\00\0D\00\00\00" }>, align 8
@52 = private unnamed_addr constant [71 x i8] c"a shard can only be inserted by the thread that owns it, this is a bug!", align 1
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\00\95\01\00\00\0E\00\00\00" }>, align 8
@54 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtCshEYSjulKtIJ_18tracing_subscriber6filter13layer_filters9FILTERING0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_NtB8_11FilterStateEEEE9call_onceCskm6LeB9lWb4_9wasm_ping, align 8
@_RNvNvXs3_NtNtCs9DIU3UKMbTt_4axum7routing5routeINtB7_11RouteFuturepENtNtNtCskKLDkoKarTP_4core6future6future6Future4poll10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS = external local_unnamed_addr global { { { i8 } } }
@_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@55 = private unnamed_addr constant [10 x i8] c"\C0\06 span=\C0\00", align 1
@56 = private unnamed_addr constant [78 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/mod.rs\00", align 1
@57 = private unnamed_addr constant [33 x i8] c"assertion failed: k <= self.len()", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @56, [16 x i8] c"M\00\00\00\00\00\00\00n\0F\00\00\09\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs14_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_14MaxSizeReachedNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCskKLDkoKarTP_4core3fmtOINtNtNtNtCskeoOuuhwsQF_12sharded_slab4sync5inner5alloc5TrackINtNtBE_5shard5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBE_3cfg13DefaultConfigEENtB5_5Debug3fmtCskm6LeB9lWb4_9wasm_ping }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00M\06\00\00\09\00\00\00" }>, align 8
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00b\06\00\00\22\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00c\06\00\00\22\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00p\06\00\00\19\00\00\00" }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00V\05\00\00*\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00Z\05\00\00&\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\1A\07\00\00!\00\00\00" }>, align 8
@68 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseNtNtNtB14_7routing9not_found8NotFoundENCINvMNtB6_16boxed_clone_syncINtB2r_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB3l_8response8ResponseB3U_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB3g_E10poll_readyCskm6LeB9lWb4_9wasm_ping, ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseNtNtNtB14_7routing9not_found8NotFoundENCINvMNtB6_16boxed_clone_syncINtB2r_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB3l_8response8ResponseB3U_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB3g_E4callCskm6LeB9lWb4_9wasm_ping, ptr @_RNvXs1_NtNtCshOIO9ZZXjgm_5tower4util16boxed_clone_syncINtNtB7_10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseNtNtNtB1p_7routing9not_found8NotFoundENCINvMB5_INtB5_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB3l_8response8ResponseB3U_EzE3newB1k_E0EINtB5_12CloneServiceB3g_E9clone_boxCskm6LeB9lWb4_9wasm_ping }>, align 8
@69 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@70 = private unnamed_addr constant [74 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/sync.rs\00", align 1
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @70, [16 x i8] c"I\00\00\00\00\00\00\00-\11\00\00'\00\00\00" }>, align 8
@72 = private unnamed_addr constant [8 x i8] c"\00\10\00\00\00\00\00\00", align 8
@73 = private unnamed_addr constant [88 x i8] c"AThread count overflowed the configured max count. Thread index = \C0\10, max threads = \C0\01.\00", align 1
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\00'\01\00\00\09\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\009\0D\00\00*\00\00\00" }>, align 8
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00!\0B\00\00!\00\00\00" }>, align 8
@77 = private unnamed_addr constant [10 x i8] c"a sequence", align 1
@78 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@79 = private unnamed_addr constant [87 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/sys/sync/once/futex.rs\00", align 1
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @79, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@81 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtB6_10service_fn9ServiceFnNCNvMs2_NtNtB14_7routing14method_routingINtB2l_12MethodRouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE3new0EENCINvMNtB6_16boxed_clone_syncINtB40_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB4U_8response8ResponseB5t_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB4P_E10poll_readyB3e_, ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtB6_10service_fn9ServiceFnNCNvMs2_NtNtB14_7routing14method_routingINtB2l_12MethodRouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE3new0EENCINvMNtB6_16boxed_clone_syncINtB40_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB4U_8response8ResponseB5t_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB4P_E4callB3e_, ptr @_RNvXs1_NtNtCshOIO9ZZXjgm_5tower4util16boxed_clone_syncINtNtB7_10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtB7_10service_fn9ServiceFnNCNvMs2_NtNtB1p_7routing14method_routingINtB2G_12MethodRouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE3new0EENCINvMB5_INtB5_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB4U_8response8ResponseB5t_EzE3newB1k_E0EINtB5_12CloneServiceB4P_E9clone_boxB3z_ }>, align 8
@82 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshOIO9ZZXjgm_5tower4util10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtBG_7map_err6MapErrINtNtCsdXHxuUs9k1_10tower_http4cors4CorsNtNtNtB1y_7routing5route5RouteENvYzINtNtB4_7convert4IntozE4intoEENCINvMNtBG_16boxed_clone_syncINtB4n_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB5h_8response8ResponseB5Q_EzE3newB1t_E0EECskm6LeB9lWb4_9wasm_ping, [16 x i8] c"(\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtB6_7map_err6MapErrINtNtCsdXHxuUs9k1_10tower_http4cors4CorsNtNtNtB14_7routing5route5RouteENvYzINtNtCskKLDkoKarTP_4core7convert4IntozE4intoEENCINvMNtB6_16boxed_clone_syncINtB49_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB53_8response8ResponseB5C_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB4Y_E10poll_readyCskm6LeB9lWb4_9wasm_ping, ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtB6_7map_err6MapErrINtNtCsdXHxuUs9k1_10tower_http4cors4CorsNtNtNtB14_7routing5route5RouteENvYzINtNtCskKLDkoKarTP_4core7convert4IntozE4intoEENCINvMNtB6_16boxed_clone_syncINtB49_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB53_8response8ResponseB5C_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB4Y_E4callCskm6LeB9lWb4_9wasm_ping, ptr @_RNvXs1_NtNtCshOIO9ZZXjgm_5tower4util16boxed_clone_syncINtNtB7_10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtB7_7map_err6MapErrINtNtCsdXHxuUs9k1_10tower_http4cors4CorsNtNtNtB1p_7routing5route5RouteENvYzINtNtCskKLDkoKarTP_4core7convert4IntozE4intoEENCINvMB5_INtB5_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB53_8response8ResponseB5C_EzE3newB1k_E0EINtB5_12CloneServiceB4Y_E9clone_boxCskm6LeB9lWb4_9wasm_ping }>, align 8
@83 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshOIO9ZZXjgm_5tower4util10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtBG_7map_err6MapErrINtNtNtCsdXHxuUs9k1_10tower_http5trace7service5TraceNtNtNtB1y_7routing5route5RouteINtNtB2H_8classify16SharedClassifierNtB3X_22ServerErrorsAsFailuresEENvYzINtNtB4_7convert4IntozE4intoEENCINvMNtBG_16boxed_clone_syncINtB5E_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB6y_8response8ResponseB77_EzE3newB1t_E0EECskm6LeB9lWb4_9wasm_ping, [16 x i8] c"X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtB6_7map_err6MapErrINtNtNtCsdXHxuUs9k1_10tower_http5trace7service5TraceNtNtNtB14_7routing5route5RouteINtNtB2d_8classify16SharedClassifierNtB3t_22ServerErrorsAsFailuresEENvYzINtNtCskKLDkoKarTP_4core7convert4IntozE4intoEENCINvMNtB6_16boxed_clone_syncINtB5q_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB6k_8response8ResponseB6T_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB6f_E10poll_readyCskm6LeB9lWb4_9wasm_ping, ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtB6_7map_err6MapErrINtNtNtCsdXHxuUs9k1_10tower_http5trace7service5TraceNtNtNtB14_7routing5route5RouteINtNtB2d_8classify16SharedClassifierNtB3t_22ServerErrorsAsFailuresEENvYzINtNtCskKLDkoKarTP_4core7convert4IntozE4intoEENCINvMNtB6_16boxed_clone_syncINtB5q_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB6k_8response8ResponseB6T_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB6f_E4callCskm6LeB9lWb4_9wasm_ping, ptr @_RNvXs1_NtNtCshOIO9ZZXjgm_5tower4util16boxed_clone_syncINtNtB7_10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtB7_7map_err6MapErrINtNtNtCsdXHxuUs9k1_10tower_http5trace7service5TraceNtNtNtB1p_7routing5route5RouteINtNtB2y_8classify16SharedClassifierNtB3O_22ServerErrorsAsFailuresEENvYzINtNtCskKLDkoKarTP_4core7convert4IntozE4intoEENCINvMB5_INtB5_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtCsf7xb2awyBix_9axum_core4body4BodyEINtNtB6k_8response8ResponseB6T_EzE3newB1k_E0EINtB5_12CloneServiceB6f_E9clone_boxCskm6LeB9lWb4_9wasm_ping }>, align 8
@84 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshOIO9ZZXjgm_5tower4util10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB1y_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping11redis_blpopTNtNtNtCsf7xb2awyBix_9axum_core7extract7private10ViaRequestINtNtNtB1y_7extract5state5StateNtB2W_9TestStateEINtNtB1y_4json4JsonNtCs44McOc0n4RX_13interop_tests12BlpopRequestEEB4Z_EENCINvMNtBG_16boxed_clone_syncINtB6w_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3E_4body4BodyEINtNtB7q_8response8ResponseB7Z_EzE3newB1t_E0EEB2W_, [16 x i8] c"0\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB14_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping11redis_blpopTNtNtNtCsf7xb2awyBix_9axum_core7extract7private10ViaRequestINtNtNtB14_7extract5state5StateNtB2s_9TestStateEINtNtB14_4json4JsonNtCs44McOc0n4RX_13interop_tests12BlpopRequestEEB4v_EENCINvMNtB6_16boxed_clone_syncINtB62_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3a_4body4BodyEINtNtB6W_8response8ResponseB7v_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB6R_E10poll_readyB2s_, ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB14_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping11redis_blpopTNtNtNtCsf7xb2awyBix_9axum_core7extract7private10ViaRequestINtNtNtB14_7extract5state5StateNtB2s_9TestStateEINtNtB14_4json4JsonNtCs44McOc0n4RX_13interop_tests12BlpopRequestEEB4v_EENCINvMNtB6_16boxed_clone_syncINtB62_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3a_4body4BodyEINtNtB6W_8response8ResponseB7v_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB6R_E4callB2s_, ptr @_RNvXs1_NtNtCshOIO9ZZXjgm_5tower4util16boxed_clone_syncINtNtB7_10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB1p_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping11redis_blpopTNtNtNtCsf7xb2awyBix_9axum_core7extract7private10ViaRequestINtNtNtB1p_7extract5state5StateNtB2N_9TestStateEINtNtB1p_4json4JsonNtCs44McOc0n4RX_13interop_tests12BlpopRequestEEB4Q_EENCINvMB5_INtB5_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3v_4body4BodyEINtNtB6W_8response8ResponseB7v_EzE3newB1k_E0EINtB5_12CloneServiceB6R_E9clone_boxB2N_ }>, align 8
@85 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshOIO9ZZXjgm_5tower4util10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB1y_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping12post_resultsTNtNtNtCsf7xb2awyBix_9axum_core7extract7private10ViaRequestINtNtNtB1y_7extract5state5StateNtB2W_9TestStateEINtNtB1y_4json4JsonINtNtB4_6result6ResultNtCs44McOc0n4RX_13interop_tests6ReportNtNtCsexYYUdYSQU6_5alloc6string6StringEEEB50_EENCINvMNtBG_16boxed_clone_syncINtB7p_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3F_4body4BodyEINtNtB8j_8response8ResponseB8S_EzE3newB1t_E0EEB2W_, [16 x i8] c"0\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB14_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping12post_resultsTNtNtNtCsf7xb2awyBix_9axum_core7extract7private10ViaRequestINtNtNtB14_7extract5state5StateNtB2s_9TestStateEINtNtB14_4json4JsonINtNtCskKLDkoKarTP_4core6result6ResultNtCs44McOc0n4RX_13interop_tests6ReportNtNtCsexYYUdYSQU6_5alloc6string6StringEEEB4w_EENCINvMNtB6_16boxed_clone_syncINtB7b_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3b_4body4BodyEINtNtB85_8response8ResponseB8E_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB80_E10poll_readyB2s_, ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB14_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping12post_resultsTNtNtNtCsf7xb2awyBix_9axum_core7extract7private10ViaRequestINtNtNtB14_7extract5state5StateNtB2s_9TestStateEINtNtB14_4json4JsonINtNtCskKLDkoKarTP_4core6result6ResultNtCs44McOc0n4RX_13interop_tests6ReportNtNtCsexYYUdYSQU6_5alloc6string6StringEEEB4w_EENCINvMNtB6_16boxed_clone_syncINtB7b_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3b_4body4BodyEINtNtB85_8response8ResponseB8E_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB80_E4callB2s_, ptr @_RNvXs1_NtNtCshOIO9ZZXjgm_5tower4util16boxed_clone_syncINtNtB7_10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB1p_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping12post_resultsTNtNtNtCsf7xb2awyBix_9axum_core7extract7private10ViaRequestINtNtNtB1p_7extract5state5StateNtB2N_9TestStateEINtNtB1p_4json4JsonINtNtCskKLDkoKarTP_4core6result6ResultNtCs44McOc0n4RX_13interop_tests6ReportNtNtCsexYYUdYSQU6_5alloc6string6StringEEEB4R_EENCINvMB5_INtB5_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3w_4body4BodyEINtNtB85_8response8ResponseB8E_EzE3newB1k_E0EINtB5_12CloneServiceB80_E9clone_boxB2N_ }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshOIO9ZZXjgm_5tower4util10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB1y_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping16serve_index_htmlTNtNtNtCsf7xb2awyBix_9axum_core7extract7private8ViaPartsINtNtNtB1y_7extract5state5StateNtB2W_9TestStateEEB51_EENCINvMNtBG_16boxed_clone_syncINtB5v_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3J_4body4BodyEINtNtB6p_8response8ResponseB6Y_EzE3newB1t_E0EEB2W_, [16 x i8] c"0\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB14_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping16serve_index_htmlTNtNtNtCsf7xb2awyBix_9axum_core7extract7private8ViaPartsINtNtNtB14_7extract5state5StateNtB2s_9TestStateEEB4x_EENCINvMNtB6_16boxed_clone_syncINtB51_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3f_4body4BodyEINtNtB5V_8response8ResponseB6u_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB5Q_E10poll_readyB2s_, ptr @_RNvXs_NtNtCshOIO9ZZXjgm_5tower4util10map_futureINtB4_9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB14_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping16serve_index_htmlTNtNtNtCsf7xb2awyBix_9axum_core7extract7private8ViaPartsINtNtNtB14_7extract5state5StateNtB2s_9TestStateEEB4x_EENCINvMNtB6_16boxed_clone_syncINtB51_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3f_4body4BodyEINtNtB5V_8response8ResponseB6u_EzE3newBZ_E0EINtCseYwBceZKGZd_13tower_service7ServiceB5Q_E4callB2s_, ptr @_RNvXs1_NtNtCshOIO9ZZXjgm_5tower4util16boxed_clone_syncINtNtB7_10map_future9MapFutureINtNtCs9DIU3UKMbTt_4axum4util15MapIntoResponseINtNtNtB1p_7handler7service14HandlerServiceNvCskm6LeB9lWb4_9wasm_ping16serve_index_htmlTNtNtNtCsf7xb2awyBix_9axum_core7extract7private8ViaPartsINtNtNtB1p_7extract5state5StateNtB2N_9TestStateEEB4S_EENCINvMB5_INtB5_19BoxCloneSyncServiceINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtB3A_4body4BodyEINtNtB5V_8response8ResponseB6u_EzE3newB1k_E0EINtB5_12CloneServiceB5Q_E9clone_boxB2N_ }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @70, [16 x i8] c"I\00\00\00\00\00\00\00;\11\00\00\1F\00\00\00" }>, align 8
@88 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\000", [23 x i8] undef }>, align 8
@89 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00I", [23 x i8] undef }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\00Q\01\00\00\22\00\00\00" }>, align 8
@91 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\18", [23 x i8] undef }>, align 8
@92 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00E", [23 x i8] undef }>, align 8
@_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@93 = private unnamed_addr constant [38 x i8] c"response to CONNECT with nonempty body", align 1
@94 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs9Bqz0CSWZZv_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@95 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tower-http-0.7.0/src/trace/service.rs\00", align 1
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @95, [16 x i8] c"j\00\00\00\00\00\00\00\18\00\00\00\11\00\00\00" }>, align 8
@97 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@98 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @97, [24 x i8] zeroinitializer }>, align 8
@_RNvNvXs5_NtNtCshEYSjulKtIJ_18tracing_subscriber8registry7shardedNtB7_9DataInnerNtNtCskKLDkoKarTP_4core7default7Default7default13NULL_METADATA = external global { i64, { i32, [1 x i32] }, { ptr, i64 }, { ptr, i64 }, { { ptr, i64 }, { { ptr, ptr } } }, { ptr, [1 x i64] }, { ptr, [1 x i64] }, i8, [7 x i8] }
@99 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCskm6LeB9lWb4_9wasm_ping, align 8
@100 = private unnamed_addr constant [8 x i8] c"\03-- \C0\01;\00", align 1
@101 = private unnamed_addr constant [13 x i8] c"tracing::span", align 1
@102 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs1_NtCs9DIU3UKMbTt_4axum7routingINtBd_6RouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE5layerINtNtNtCsdXHxuUs9k1_10tower_http5trace5layer10TraceLayerINtNtB1H_8classify16SharedClassifierNtB2x_22ServerErrorsAsFailuresEEE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBd_5route5RouteEE9call_once6vtableBV_, ptr @_RNvXs7_NtCs9DIU3UKMbTt_4axum5boxedNCINvMs1_NtB7_7routingINtBF_6RouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE5layerINtNtNtCsdXHxuUs9k1_10tower_http5trace5layer10TraceLayerINtNtB1T_8classify16SharedClassifierNtB2J_22ServerErrorsAsFailuresEEE0INtB5_7LayerFnzzE9clone_boxB17_ }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs1_NtCs9DIU3UKMbTt_4axum7routingINtBK_6RouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE5layerNtNtCsdXHxuUs9k1_10tower_http4cors9CorsLayerE0EB1s_, [16 x i8] c"\18\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs1_NtCs9DIU3UKMbTt_4axum7routingINtBd_6RouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE5layerNtNtCsdXHxuUs9k1_10tower_http4cors9CorsLayerE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBd_5route5RouteEE9call_once6vtableBV_, ptr @_RNvXs7_NtCs9DIU3UKMbTt_4axum5boxedNCINvMs1_NtB7_7routingINtBF_6RouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE5layerNtNtCsdXHxuUs9k1_10tower_http4cors9CorsLayerE0INtB5_7LayerFnzzE9clone_boxB17_ }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\\\0C\00\000\00\00\00" }>, align 8
@105 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tower-http-0.7.0/src/cors/mod.rs\00", align 1
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"e\00\00\00\00\00\00\00\1F\02\00\00\11\00\00\00" }>, align 8
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\22\09\00\00&\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00*\09\00\003\00\00\00" }>, align 8
@109 = private unnamed_addr constant [65 x i8] c":internal error: entered unreachable code: weird lifecycle \C1 \00\80`\00", align 1
@110 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sharded-slab-0.1.7/src/page/slot.rs\00", align 1
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @110, [16 x i8] c"h\00\00\00\00\00\00\00\94\02\00\00\18\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\F7\09\00\00\1A\00\00\00" }>, align 8
@switch.table._RNvXsa_NtCs9DIU3UKMbTt_4axum7routingINtB5_8FallbackuENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping = private unnamed_addr constant [3 x i8] c"((\18", align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap10try_entry2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.833 = alloca [16 x i8], align 8          ; 2 uses
  %i.a = invoke noundef zeroext i1 @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 -1, ptr %i.b, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.c = load ptr, ptr %2, align 8, !alias.scope !11, !noundef !12 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !25, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !25, !nonnull !12, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !25, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !25, !noundef !12
  tail call void %i.h(ptr noundef %i.f, ptr noundef %i.j, i64 noundef %i.l), !noalias !25, !inline_history !26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

bb.e:                                             ; preds = %bb.b
  %i.m = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load i16, ptr %i.n, align 8, !noundef !12 ; 3 uses
  %i.p = and i16 %i.o, %i.m
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !noundef !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !12
  %i.v = zext i16 %i.o to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !12
  %i.aa = load ptr, ptr %2, align 8               ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !27
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %.not153 = icmp eq i64 %i.s, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, %bb.e
  %.sroa.07.0.ph = phi i64 [ %i.ay, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.az, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ %i.q, %bb.e ] ; 2 uses
  %i.aj = icmp ult i64 %.sroa.0.0.ph, %i.s        ; 2 uses
  %.not153.not = xor i1 %.not153, true
  %brmerge = or i1 %i.aj, %.not153.not
  %.sroa.0.0.ph.mux = select i1 %i.aj, i64 %.sroa.0.0.ph, i64 0 ; 6 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !noundef !12 ; 2 uses
  %.not = icmp eq i16 %i.al, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.n
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.am = zext i16 %i.al to i64                   ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !noundef !12 ; 2 uses
  %i.ap = and i16 %i.ao, %i.o
  %i.aq = zext i16 %i.ap to i64
  %i.ar = sub i64 %.sroa.0.0.ph.mux, %i.aq
  %i.as = and i64 %i.ar, %i.v
  %i.at = icmp samesign ult i64 %i.as, %.sroa.07.0.ph
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit, %bb.g
  %i.au = icmp samesign ugt i64 %.sroa.07.0.ph, 511
  %i.av = load i64, ptr %1, align 8, !range !28
  %i.aw = icmp ne i64 %i.av, 2
  %narrow = select i1 %i.au, i1 %i.aw, i1 false
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %.sroa.10.0 = zext i1 %narrow to i8
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %.sroa.523.0..sroa_idx24, align 8
  %.sroa.728.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.728.0..sroa_idx29, align 8
  %.sroa.833.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833, i64 16, i1 false)
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.836.0..sroa_idx37, align 8
  %.sroa.941.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %i.m, ptr %.sroa.941.0..sroa_idx42, align 8
  %.sroa.10.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx46, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = icmp eq i16 %i.ao, %i.m
  br i1 %i.ax, label %bb.j, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.m, %bb.k, %.split, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.i
  %i.ay = add nuw nsw i64 %.sroa.07.0.ph, 1
  %i.az = add i64 %.sroa.0.0.ph.mux, 1
  br label %.outer

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp ugt i64 %i.x, %i.am
  br i1 %i.ba, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw [104 x i8], ptr %i.z, i64 %i.am ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !noundef !12
  %i.be = icmp ne ptr %i.bd, null                 ; 2 uses
  %i.bf = xor i1 %i.be, %i.ab
  br i1 %i.bf, label %bb.l, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.k
  br i1 %i.be, label %bb.m, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !12
  %i.bi = icmp eq i64 %i.bh, %i.af
  br i1 %i.bi, label %.split, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !noundef !12
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.bk, ptr %i.ag, i64 %i.af)
  %i.bl = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bl, label %bb.o, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %bb.j
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #35
          to label %bb.f unwind label %bb.p

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l
  tail call void @llvm.assume(i1 %i.ab)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bn = load i8, ptr %i.bm, align 8, !range !27, !noundef !12
  %i.bo = icmp eq i8 %i.bn, %i.ad
  br i1 %i.bo, label %.thread, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.thread:                                          ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx2677 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.523.0..sroa_idx2677, align 8
  %.sroa.728.0..sroa_idx3178 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %.sroa.728.0..sroa_idx3178, align 8
  %.sroa.10.0..sroa_idx4880 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.10.0..sroa_idx4880, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

bb.o:                                             ; preds = %.split
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.523.0..sroa_idx26, align 8
  %.sroa.728.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %.sroa.728.0..sroa_idx31, align 8
  %.sroa.10.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.10.0..sroa_idx48, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !47, !noundef !12
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !47, !nonnull !12, !noundef !12
  tail call void %i.bs(ptr noundef %i.bq, ptr noundef %i.ag, i64 noundef %i.af), !noalias !47, !inline_history !26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.o, %.thread, %bb.d, %bb.c, %bb.h
  ret void

.noexc:                                           ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.bt

bb.p:                                             ; preds = %bb.a, %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.bu = load ptr, ptr %2, align 8, !alias.scope !54, !noundef !12 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.noexc, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !67, !noundef !12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !67, !nonnull !12, !noundef !12
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !67, !noundef !12
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !67, !noundef !12
  invoke void %i.bz(ptr noundef %i.bx, ptr noundef %i.cb, i64 noundef %i.cd)
          to label %.noexc unwind label %bb.r, !inline_history !68

bb.r:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = invoke noundef zeroext i1 @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.at

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !78, !noundef !12
  %i.f = load ptr, ptr %2, align 8, !alias.scope !78, !nonnull !12, !align !79, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !78, !nonnull !12, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !78, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !78, !noundef !12
  invoke void %i.h(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.ar, !inline_history !80

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load i16, ptr %i.n, align 8, !noundef !12 ; 3 uses
  %i.p = and i16 %i.o, %i.m
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !12 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !nonnull !12
  %i.v = zext i16 %i.o to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 14 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !12 ; 3 uses
  %i.aa = load ptr, ptr %1, align 8               ; 9 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !27
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8            ; 9 uses
  %i.ag = load ptr, ptr %i.ac, align 8            ; 8 uses
  %.not211 = icmp eq i64 %i.t, 0
  br label %.outer195

.outer195:                                        ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, %bb.d
  %.sroa.09.0.ph = phi i64 [ %i.bu, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.d ] ; 3 uses
  %.sroa.01.0.ph = phi i64 [ %i.bv, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ %i.q, %bb.d ] ; 2 uses
  %i.ah = icmp ult i64 %.sroa.01.0.ph, %i.t       ; 2 uses
  %.not211.not = xor i1 %.not211, true
  %brmerge = or i1 %i.ah, %.not211.not
  %.sroa.01.0.ph.mux = select i1 %i.ah, i64 %.sroa.01.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer195
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.01.0.ph.mux ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !noundef !12 ; 2 uses
  %.not = icmp eq i16 %i.aj, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.y
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.ak = zext i16 %i.aj to i64                   ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.am = load i16, ptr %i.al, align 2, !noundef !12 ; 2 uses
  %i.an = and i16 %i.am, %i.o
  %i.ao = zext i16 %i.an to i64
  %i.ap = sub i64 %.sroa.01.0.ph.mux, %i.ao
  %i.aq = and i64 %i.ap, %i.v
  %i.ar = icmp samesign ult i64 %i.aq, %.sroa.09.0.ph
  br i1 %i.ar, label %bb.ac, label %bb.t

bb.g:                                             ; preds = %.loopexit
  %i.as = icmp ult i64 %i.x, 88686269585142076
  tail call void @llvm.assume(i1 %i.as)
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.690.0.copyload = load ptr, ptr %.sroa.690.0..sroa_idx, align 8 ; 3 uses
  %.sroa.091.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.593.0.copyload = load ptr, ptr %.sroa.593.0..sroa_idx, align 8 ; 2 uses
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.696.0.copyload = load i64, ptr %.sroa.696.0..sroa_idx, align 8 ; 2 uses
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.799.0.copyload = load ptr, ptr %.sroa.799.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8102.0.copyload = load i64, ptr %.sroa.8102.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.at = icmp samesign ugt i64 %i.x, 32767
  br i1 %i.at, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !84
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 %i.m, ptr %i.av, align 8, !noalias !84
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.aa, ptr %i.aw, align 8, !noalias !87
  %.sroa.675.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.ag, ptr %.sroa.675.0..sroa_idx76, align 8, !noalias !87
  %.sroa.879.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.af, ptr %.sroa.879.0..sroa_idx80, align 8, !noalias !87
  %.sroa.1083.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.sroa.690.0.copyload, ptr %.sroa.1083.0..sroa_idx84, align 8, !noalias !87
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.091.0.copyload, ptr %i.ax, align 8, !noalias !88
  %.sroa.593.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.593.0.copyload, ptr %.sroa.593.0..sroa_idx94, align 8, !noalias !88
  %.sroa.696.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.696.0.copyload, ptr %.sroa.696.0..sroa_idx97, align 8, !noalias !88
  %.sroa.799.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.799.0.copyload, ptr %.sroa.799.0..sroa_idx100, align 8, !noalias !88
  %.sroa.8102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.8102.0.copyload, ptr %.sroa.8102.0..sroa_idx103, align 8, !noalias !88
  store i64 0, ptr %i.b, align 8, !noalias !84
  %i.ay = load i64, ptr %i.au, align 8, !range !89, !alias.scope !90, !noalias !93, !noundef !12
  %i.az = icmp eq i64 %i.x, %i.ay
  br i1 %i.az, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCsdXHxuUs9k1_10tower_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %._crit_edge161 unwind label %bb.j, !noalias !93

._crit_edge161:                                   ; preds = %bb.i
  %.pre162 = load ptr, ptr %i.y, align 8, !alias.scope !90, !noalias !93
  br label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #37
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit36 unwind label %bb.k, !noalias !95

bb.k:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !93
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.091.0.copyload) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.091.0.copyload, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !96, !nonnull !12, !noundef !12
  invoke void %i.bd(ptr noundef %.sroa.799.0.copyload, ptr noundef %.sroa.593.0.copyload, i64 noundef %.sroa.696.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.n, !noalias !84, !inline_history !80

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.l
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !103, !nonnull !12, !noundef !12
  tail call void %i.bf(ptr noundef %.sroa.690.0.copyload, ptr noundef %i.ag, i64 noundef %i.af), !inline_history !116
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

bb.n:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit36, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !117, !nonnull !12, !noundef !12
  invoke void %i.bi(ptr noundef %.sroa.690.0.copyload, ptr noundef %i.ag, i64 noundef %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit36 unwind label %bb.p, !noalias !84, !inline_history !68

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !84
  unreachable

bb.q:                                             ; preds = %._crit_edge161, %bb.h
  %i.bk = phi ptr [ %.pre162, %._crit_edge161 ], [ %i.z, %bb.h ]
  %i.bl = getelementptr inbounds nuw [104 x i8], ptr %i.bk, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !95
  %i.bm = add nuw nsw i64 %i.x, 1
  store i64 %i.bm, ptr %i.w, align 8, !alias.scope !90, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !84
  %i.bn = load i64, ptr %i.s, align 8, !noundef !12 ; 2 uses
  %i.bo = icmp ult i64 %.sroa.01.0.ph.mux, %i.bn
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %i.r, align 8, !nonnull !12, !noundef !12
  %i.bq = trunc nuw nsw i64 %i.x to i16
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.sroa.01.0.ph.mux ; 2 uses
  store i16 %i.bq, ptr %i.br, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i16 %i.m, ptr %i.bs, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.ph.mux, i64 noundef %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #35
  unreachable

bb.t:                                             ; preds = %bb.f
  %i.bt = icmp eq i16 %i.am, %i.m
  br i1 %i.bt, label %bb.u, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.x, %bb.v, %.split, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.t
  %i.bu = add nuw nsw i64 %.sroa.09.0.ph, 1
  %i.bv = add i64 %.sroa.01.0.ph.mux, 1
  br label %.outer195

bb.u:                                             ; preds = %bb.t
  %i.bw = icmp ugt i64 %i.x, %i.ak
  br i1 %i.bw, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw [104 x i8], ptr %i.z, i64 %i.ak ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !noundef !12
  %i.ca = icmp ne ptr %i.bz, null                 ; 2 uses
  %i.cb = xor i1 %i.ca, %i.ab
  br i1 %i.cb, label %bb.w, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.w:                                             ; preds = %bb.v
  br i1 %i.ca, label %bb.x, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !12
  %i.ce = icmp eq i64 %i.cd, %i.af
  br i1 %i.ce, label %.split, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !noundef !12
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.cg, ptr %i.ag, i64 %i.af)
  %i.ch = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ch, label %bb.z, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.y:                                             ; preds = %bb.u
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
          to label %bb.e unwind label %bb.at

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.w
  tail call void @llvm.assume(i1 %i.ab)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.cj = load i8, ptr %i.ci, align 8, !range !27, !noundef !12
  %i.ck = icmp eq i8 %i.cj, %i.ad
  br i1 %i.ck, label %bb.z, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.z:                                             ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %.split
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtNtCscwxJ8MeEu7n_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskm6LeB9lWb4_9wasm_ping(i64 noundef %i.ak, ptr noalias nofree noundef align 8 dereferenceable(104) %i.bx, ptr noalias nofree noundef align 8 dereferenceable(24) %i.cl, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %2)
          to label %bb.aa unwind label %bb.aq

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !148, !noundef !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !148, !nonnull !12, !noundef !12
  tail call void %i.cp(ptr noundef %i.cn, ptr noundef %i.ag, i64 noundef %i.af), !noalias !148, !inline_history !26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.ao, %bb.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i39, %bb.ai, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit, %bb.ab, %bb.aa, %bb.r
  %.sroa.0.1 = phi i8 [ 1, %bb.ab ], [ 0, %bb.r ], [ 2, %bb.as ], [ 2, %bb.m ], [ 1, %bb.aa ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i39 ], [ 2, %bb.ai ]
  ret i8 %.sroa.0.1

bb.ac:                                            ; preds = %bb.f
  %i.cq = icmp samesign ugt i64 %.sroa.09.0.ph, 511
  %i.cr = load i64, ptr %0, align 8, !range !28
  %i.cs = icmp ne i64 %i.cr, 2
  %.sroa.016.0 = select i1 %i.cq, i1 %i.cs, i1 false
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.658.0.copyload = load ptr, ptr %.sroa.658.0..sroa_idx, align 8 ; 3 uses
  %.sroa.059.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.561.0.copyload = load ptr, ptr %.sroa.561.0..sroa_idx, align 8 ; 2 uses
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.664.0.copyload = load i64, ptr %.sroa.664.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.869.0.copyload = load i64, ptr %.sroa.869.0..sroa_idx, align 8
  %i.ct = icmp ult i64 %i.x, 88686269585142076
  tail call void @llvm.assume(i1 %i.ct)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.cu = icmp samesign ugt i64 %i.x, 32767
  br i1 %i.cu, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !152
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i16 %i.m, ptr %i.cw, align 8, !noalias !152
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.aa, ptr %i.cx, align 8, !noalias !155
  %.sroa.6.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.ag, ptr %.sroa.6.0..sroa_idx48, align 8, !noalias !155
  %.sroa.8.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.af, ptr %.sroa.8.0..sroa_idx51, align 8, !noalias !155
  %.sroa.10.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %.sroa.658.0.copyload, ptr %.sroa.10.0..sroa_idx54, align 8, !noalias !155
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.059.0.copyload, ptr %i.cy, align 8, !noalias !156
  %.sroa.561.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.561.0.copyload, ptr %.sroa.561.0..sroa_idx62, align 8, !noalias !156
  %.sroa.664.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.664.0.copyload, ptr %.sroa.664.0..sroa_idx65, align 8, !noalias !156
  %.sroa.7.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx67, align 8, !noalias !156
  %.sroa.869.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.869.0.copyload, ptr %.sroa.869.0..sroa_idx70, align 8, !noalias !156
  store i64 0, ptr %i.a, align 8, !noalias !152
  %i.cz = load i64, ptr %i.cv, align 8, !range !89, !alias.scope !157, !noalias !160, !noundef !12
  %i.da = icmp eq i64 %i.x, %i.cz
  br i1 %i.da, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCsdXHxuUs9k1_10tower_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %._crit_edge unwind label %bb.af, !noalias !160

._crit_edge:                                      ; preds = %bb.ae
  %.pre = load ptr, ptr %i.y, align 8, !alias.scope !157, !noalias !160
  br label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.a) #37
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit36 unwind label %bb.ag, !noalias !162

bb.ag:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !160
  unreachable

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.059.0.copyload) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !163, !nonnull !12, !noundef !12
  invoke void %i.de(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.561.0.copyload, i64 noundef %.sroa.664.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i39 unwind label %bb.aj, !noalias !152, !inline_history !80

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i39: ; preds = %bb.ah
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit.i39
  %i.df = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !170, !nonnull !12, !noundef !12
  tail call void %i.dg(ptr noundef %.sroa.658.0.copyload, ptr noundef %i.ag, i64 noundef %i.af), !inline_history !116
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

bb.aj:                                            ; preds = %bb.ah
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit36, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !183, !nonnull !12, !noundef !12
  invoke void %i.dj(ptr noundef %.sroa.658.0.copyload, ptr noundef %i.ag, i64 noundef %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit36 unwind label %bb.al, !noalias !152, !inline_history !68

bb.al:                                            ; preds = %bb.ak
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !152
  unreachable

bb.am:                                            ; preds = %._crit_edge, %bb.ad
  %i.dl = phi ptr [ %.pre, %._crit_edge ], [ %i.z, %bb.ad ]
  %i.dm = getelementptr inbounds nuw [104 x i8], ptr %i.dl, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !162
  %i.dn = add nuw nsw i64 %i.x, 1
  store i64 %i.dn, ptr %i.w, align 8, !alias.scope !157, !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !152
  %i.do = load ptr, ptr %i.r, align 8, !alias.scope !196, !noalias !199, !nonnull !12, !noundef !12
  %i.dp = load i64, ptr %i.s, align 8, !alias.scope !196, !noalias !199, !noundef !12 ; 2 uses
  %i.dq = trunc nuw nsw i64 %i.x to i16
  %.not212 = icmp eq i64 %i.dp, 0
  br label %.outer

.outer:                                           ; preds = %bb.an, %bb.am
  %.sroa.6.0.i.ph = phi i16 [ %i.dx, %bb.an ], [ %i.m, %bb.am ] ; 2 uses
  %.sroa.09.0.i.ph = phi i16 [ %i.dt, %bb.an ], [ %i.dq, %bb.am ] ; 2 uses
  %.sroa.07.0.i.ph = phi i64 [ %i.dw, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.dy, %bb.an ], [ %.sroa.01.0.ph.mux, %bb.am ] ; 2 uses
  %i.dr = icmp ult i64 %.sroa.0.0.i.ph, %i.dp     ; 2 uses
  %.not212.not = xor i1 %.not212, true
  %brmerge225 = or i1 %i.dr, %.not212.not
  %.sroa.0.0.i.ph.mux = select i1 %i.dr, i64 %.sroa.0.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge225, label %.loopexit210, label %infloop224

.loopexit210:                                     ; preds = %.outer
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.sroa.0.0.i.ph.mux ; 4 uses
  %i.dt = load i16, ptr %i.ds, align 2, !noalias !199, !noundef !12 ; 2 uses
  %i.du = icmp eq i16 %i.dt, -1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 2 ; 3 uses
  br i1 %i.du, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.loopexit210
  %i.dw = add i64 %.sroa.07.0.i.ph, 1
  %i.dx = load i16, ptr %i.dv, align 2, !noalias !199, !noundef !12
  store i16 %.sroa.09.0.i.ph, ptr %i.ds, align 2, !noalias !199
  store i16 %.sroa.6.0.i.ph, ptr %i.dv, align 2, !noalias !199
  %i.dy = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.ao:                                            ; preds = %.loopexit210
  store i16 %.sroa.09.0.i.ph, ptr %i.ds, align 2, !noalias !199
  store i16 %.sroa.6.0.i.ph, ptr %i.dv, align 2, !noalias !199
  %i.dz = icmp ugt i64 %.sroa.07.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.016.0, i1 true, i1 %i.dz
  %i.ea = load i64, ptr %0, align 8, !range !28, !alias.scope !196, !noalias !199
  %i.eb = icmp eq i64 %i.ea, 0
  %or.cond3.i = select i1 %or.cond.i, i1 %i.eb, i1 false
  br i1 %or.cond3.i, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

bb.ap:                                            ; preds = %bb.ao
  store i64 1, ptr %0, align 8, !alias.scope !196, !noalias !199
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

bb.aq:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp125 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ar:                                            ; preds = %bb.c
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.ed = load ptr, ptr %1, align 8, !alias.scope !208, !noundef !12 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.as

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !221, !noundef !12
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !221, !nonnull !12, !noundef !12
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !221, !noundef !12
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !221, !noundef !12
  tail call void %i.ei(ptr noundef %i.eg, ptr noundef %i.ek, i64 noundef %i.em), !noalias !221, !inline_history !26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

bb.at:                                            ; preds = %bb.a, %bb.y
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !231, !noundef !12
  %i.ep = load ptr, ptr %2, align 8, !alias.scope !231, !nonnull !12, !align !79, !noundef !12
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !231, !nonnull !12, !noundef !12
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !231, !noundef !12
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !231, !noundef !12
  invoke void %i.er(ptr noundef %i.eo, ptr noundef %i.et, i64 noundef %i.ev)
          to label %.thread unwind label %bb.au, !inline_history !80

bb.au:                                            ; preds = %bb.av, %bb.at
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit36: ; preds = %bb.o, %bb.n, %bb.j, %bb.ak, %bb.aj, %bb.af, %.thread, %bb.av
  %.pn118 = phi { ptr, i32 } [ %.pn119, %.thread ], [ %i.dh, %bb.aj ], [ %.pn119, %bb.av ], [ %i.bg, %bb.n ], [ %i.ba, %bb.j ], [ %i.bg, %bb.o ], [ %i.db, %bb.af ], [ %i.dh, %bb.ak ]
  resume { ptr, i32 } %.pn118

.thread:                                          ; preds = %bb.at, %bb.ar, %bb.aq
  %.pn119 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp125, %bb.aq ], [ %i.ec, %bb.ar ], [ %lpad.thr_comm, %bb.at ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.ex = load ptr, ptr %1, align 8, !alias.scope !238, !noundef !12 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit36, label %bb.av

bb.av:                                            ; preds = %.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !251, !noundef !12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !251, !nonnull !12, !noundef !12
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !251, !noundef !12
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !251, !noundef !12
  invoke void %i.fc(ptr noundef %i.fa, ptr noundef %i.fe, i64 noundef %i.fg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit36 unwind label %bb.au, !inline_history !68

infloop:                                          ; preds = %.outer195, %infloop
  br label %infloop

infloop224:                                       ; preds = %.outer, %infloop224
  br label %infloop224
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap12contains_keyRNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !252, !noalias !255, !noundef !12 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !255 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !252, !noalias !255, !noundef !12 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !252, !noalias !255, !noundef !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !252, !noalias !255, !nonnull !12
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !252, !noalias !255, !nonnull !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i, %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.ae, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.af, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !257, !noundef !12 ; 2 uses
  %.not.i = icmp eq i16 %i.u, -1
  br i1 %.not.i, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !257, !noundef !12 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ab
  br i1 %i.ac, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !257, !noundef !12
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !noalias !257, !noundef !12 ; 2 uses
  %i.am = icmp eq ptr %i.al, null                 ; 2 uses
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !257, !noundef !12 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !257, !noundef !12
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.split.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

.split.i:                                         ; preds = %bb.h
  %i.as = load ptr, ptr %i.q, align 8, !noalias !257, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !257, !noundef !12
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.as, i64 %i.ap), !noalias !257
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !27, !noalias !257, !noundef !12
  %i.ay = load i8, ptr %i.q, align 8, !range !27, !noalias !257, !noundef !12
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #38, !noalias !257
  unreachable

_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %.split.i, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.loopexit, %bb.c, %bb.a
  %i.ba = phi i1 [ false, %bb.a ], [ true, %.split.i ], [ true, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i ], [ false, %.loopexit ], [ false, %bb.c ]
  ret i1 %i.ba

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !264, !noalias !265, !noundef !12 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit_crit_edge, label %bb.b

._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !267
  br label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !265 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !264, !noalias !265, !noundef !12 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !264, !noalias !265, !noundef !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !264, !noalias !265, !nonnull !12
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !264, !noalias !265, !nonnull !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 6 uses
  %i.t = icmp eq ptr %i.s, null                   ; 3 uses
  %i.u = load i8, ptr %i.q, align 8, !range !27
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !272, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq i16 %i.z, -1
  br i1 %.not.i.i, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !272, !noundef !12 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ag
  br i1 %i.ah, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !272, !noundef !12
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !272, !noundef !12
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !272, !noundef !12
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !272
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !27, !noalias !272, !noundef !12
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #38
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !291, !noundef !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !291, !nonnull !12, !noundef !12
  invoke void %i.bf(ptr noundef %i.bd, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.m, !inline_history !68

_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.c, %.loopexit, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit_crit_edge, %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit.i
  %i.bg = phi ptr [ %i.s, %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit.i ], [ %.pre, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit_crit_edge ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit.i ], [ null, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit_crit_edge ], [ null, %.loopexit ], [ null, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !306, !noundef !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !306, !nonnull !12, !noundef !12
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !306, !noundef !12
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !306, !noundef !12
  tail call void %i.bl(ptr noundef %i.bj, ptr noundef %i.bn, i64 noundef %i.bp), !noalias !306, !inline_history !26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit2: ; preds = %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, %bb.l
  ret ptr %.sroa.0.0.i

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bb

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap6removeNtNtB8_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 16 uses
  %.sroa.013 = alloca [64 x i8], align 8          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.013, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !307, !noalias !310, !noundef !12 ; 5 uses
  %i.f = icmp ult i64 %i.e, 88686269585142076
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %..loopexit20_crit_edge, label %bb.b

..loopexit20_crit_edge:                           ; preds = %bb.a
  %.pre36.pre = load ptr, ptr %2, align 8, !alias.scope !312
  br label %.loopexit20

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 %2), !noalias !310 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8, !alias.scope !307, !noalias !310, !noundef !12 ; 3 uses
  %i.k = and i16 %i.j, %i.h
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !307, !noalias !310, !noundef !12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !307, !noalias !310, !nonnull !12
  %i.q = zext i16 %i.j to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !307, !noalias !310, !nonnull !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %2, align 8                ; 7 uses
  %i.w = icmp eq ptr %i.v, null                   ; 3 uses
  %i.x = load i8, ptr %i.t, align 8, !range !27
  %i.y = load i64, ptr %i.u, align 8              ; 3 uses
  %i.z = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br label %.outer72

.outer72:                                         ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i, %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.am, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.an, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.aa = icmp ult i64 %.sroa.0.0.i.ph, %i.n      ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.aa, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.aa, i64 %.sroa.0.0.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit81, label %infloop

.loopexit81:                                      ; preds = %.outer72
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !317, !noundef !12 ; 3 uses
  %.not.i11 = icmp eq i16 %i.ac, -1
  br i1 %.not.i11, label %.loopexit20, label %bb.c

bb.c:                                             ; preds = %.loopexit81
  %i.ad = zext i16 %i.ac to i64                   ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.af = load i16, ptr %i.ae, align 2, !noalias !317, !noundef !12 ; 2 uses
  %i.ag = and i16 %i.af, %i.j
  %i.ah = zext i16 %i.ag to i64
  %i.ai = sub i64 %.sroa.0.0.i.ph.mux, %i.ah
  %i.aj = and i64 %i.ai, %i.q
  %i.ak = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.aj
  br i1 %i.ak, label %.loopexit20, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = icmp eq i16 %i.af, %i.h
  br i1 %i.al, label %bb.e, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.h, %bb.f, %bb.d
  %i.am = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.an = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer72

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp samesign ugt i64 %i.e, %i.ad
  br i1 %i.ao, label %bb.f, label %.invoke

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw [104 x i8], ptr %i.s, i64 %i.ad ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !317, !noundef !12
  %i.as = icmp ne ptr %i.ar, null                 ; 2 uses
  %i.at = xor i1 %i.as, %i.w
  br i1 %i.at, label %bb.g, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.as, label %bb.h, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.av = load i64, ptr %i.au, align 8, !noalias !317, !noundef !12
  %i.aw = icmp eq i64 %i.av, %i.y
  br i1 %i.aw, label %.split.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

.split.i:                                         ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !317, !noundef !12
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ay, ptr %i.z, i64 %i.y), !noalias !317
  %i.az = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.az, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.w)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.bb = load i8, ptr %i.ba, align 8, !range !27, !noalias !317, !noundef !12
  %i.bc = icmp eq i8 %i.bb, %i.x
  br i1 %i.bc, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

.loopexit19:                                      ; preds = %bb.l, %.noexc4
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %bb.k, %._crit_edge.i, %bb.o, %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit19, %.loopexit.split-lp, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.dz, %bb.t ], [ %lpad.loopexit, %.loopexit19 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit, label %bb.i

bb.i:                                             ; preds = %.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !336, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !336, !nonnull !12, !noundef !12
  invoke void %i.bg(ptr noundef %i.be, ptr noundef %i.z, i64 noundef %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.af, !inline_history !68

.loopexit20:                                      ; preds = %bb.c, %.loopexit81, %..loopexit20_crit_edge
  %.pre36 = phi ptr [ %.pre36.pre, %..loopexit20_crit_edge ], [ %i.v, %.loopexit81 ], [ %i.v, %bb.c ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.bh, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit10

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit10: ; preds = %bb.ae, %.loopexit, %.loopexit20
  %i.bi = phi ptr [ %.pre36, %.loopexit20 ], [ %i.v, %.loopexit ], [ %i.v, %bb.ae ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit2, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !351, !noundef !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !351, !nonnull !12, !noundef !12
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !351, !noundef !12
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !351, !noundef !12
  tail call void %i.bn(ptr noundef %i.bl, ptr noundef %i.bp, i64 noundef %i.br), !noalias !351, !inline_history !26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit10, %bb.j
  ret void

_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %.split.i, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i
  %i.bs = load i64, ptr %i.ap, align 8, !range !352, !noundef !12
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !353
  invoke fastcc void @_RINvNtNtCscwxJ8MeEu7n_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.s, i64 noundef %i.e, ptr noalias nofree noundef align 8 dereferenceable(24) %i.bw, i64 noundef %i.bv) #39
          to label %.noexc3 unwind label %.loopexit.split-lp

.noexc3:                                          ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !range !352, !noalias !353, !noundef !12
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.noexc3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.l

bb.l:                                             ; preds = %.noexc5, %.lr.ph.i
  %i.cf = load i64, ptr %i.ca, align 8, !noalias !353, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.cg = load ptr, ptr %i.cc, align 8, !alias.scope !368, !noalias !353, !noundef !12
  %i.ch = load ptr, ptr %i.cb, align 8, !alias.scope !368, !noalias !353, !nonnull !12, !align !79, !noundef !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !369, !nonnull !12, !noundef !12
  %i.ck = load ptr, ptr %i.cd, align 8, !alias.scope !368, !noalias !353, !noundef !12
  %i.cl = load i64, ptr %i.ce, align 8, !alias.scope !368, !noalias !353, !noundef !12
  invoke void %i.cj(ptr noundef %i.cg, ptr noundef %i.ck, i64 noundef %i.cl)
          to label %.noexc4 unwind label %.loopexit19, !inline_history !370

.noexc4:                                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !353
  %i.cm = load ptr, ptr %i.r, align 8, !alias.scope !353, !nonnull !12, !noundef !12
  %i.cn = load i64, ptr %i.d, align 8, !alias.scope !353, !noundef !12
  invoke fastcc void @_RINvNtNtCscwxJ8MeEu7n_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.cm, i64 noundef %i.cn, ptr noalias nofree noundef align 8 dereferenceable(24) %i.bw, i64 noundef %i.cf) #39
          to label %.noexc5 unwind label %.loopexit19

.noexc5:                                          ; preds = %.noexc4
  %i.co = load i64, ptr %i.bx, align 8, !range !352, !noalias !353, !noundef !12
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc5, %.noexc3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !383, !noalias !353, !noundef !12
  %i.ct = load ptr, ptr %i.cq, align 8, !alias.scope !383, !noalias !353, !nonnull !12, !align !79, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !384, !nonnull !12, !noundef !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !383, !noalias !353, !noundef !12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !383, !noalias !353, !noundef !12
  invoke void %i.cv(ptr noundef %i.cs, ptr noundef %i.cx, i64 noundef %i.cz)
          to label %_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCskm6LeB9lWb4_9wasm_ping.exit unwind label %.loopexit.split-lp, !inline_history !370

_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !353
  %.pre = load i64, ptr %i.m, align 8, !alias.scope !385, !noalias !388
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCskm6LeB9lWb4_9wasm_ping.exit, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit
  %i.da = phi i64 [ %.pre, %_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCskm6LeB9lWb4_9wasm_ping.exit ], [ %i.n, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.db = icmp ult i64 %.sroa.0.0.i.ph.mux, %i.da
  br i1 %i.db, label %bb.n, label %.invoke

bb.n:                                             ; preds = %bb.m
  %i.dc = load ptr, ptr %i.o, align 8, !alias.scope !385, !noalias !388, !nonnull !12, !noundef !12 ; 5 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  store i16 -1, ptr %i.dd, align 2, !noalias !390
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  store i16 0, ptr %i.de, align 2, !noalias !390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.df = load i64, ptr %i.d, align 8, !alias.scope !394, !noalias !395, !noundef !12 ; 4 uses
  %i.dg = icmp ult i64 %i.df, 88686269585142076
  tail call void @llvm.assume(i1 %i.dg)
  %.not.i.i = icmp samesign ugt i64 %i.df, %i.ad
  br i1 %.not.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCskm6LeB9lWb4_9wasm_ping.exit.i, label %bb.o, !prof !397

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %i.ad, i64 noundef %i.df) #38
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %bb.o
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.n
  %i.dh = load ptr, ptr %i.r, align 8, !alias.scope !394, !noalias !395, !nonnull !12, !noundef !12 ; 2 uses
  %i.di = getelementptr inbounds nuw [104 x i8], ptr %i.dh, i64 %i.ad ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.di, i64 104, i1 false), !noalias !398
  %i.dj = add nsw i64 %i.df, -1                   ; 5 uses
  %i.dk = getelementptr inbounds nuw [104 x i8], ptr %i.dh, i64 %i.dj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.di, ptr noundef nonnull align 8 dereferenceable(104) %i.dk, i64 104, i1 false), !noalias !399
  store i64 %i.dj, ptr %i.d, align 8, !alias.scope !394, !noalias !395
  %i.dl = icmp samesign ugt i64 %i.dj, %i.ad
  br i1 %i.dl, label %bb.p, label %bb.q

.invoke:                                          ; preds = %bb.e, %bb.m
  %i.dm = phi i64 [ %.sroa.0.0.i.ph.mux, %bb.m ], [ %i.ad, %bb.e ]
  %i.dn = phi i64 [ %i.da, %bb.m ], [ %i.e, %bb.e ]
  %i.do = phi ptr [ @61, %bb.m ], [ @6, %bb.e ]
end_hunk_0
