Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.12?download=true
inline.NumInlined: 1208
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.5.0/src/header/map.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\C9\05\00\00\0C\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\D5\05\00\00\11\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\FA\05\00\00=\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdjEEE10initializeNCINvMs4_NtBf_4syncINtB3l_8OnceCellBW_E11get_or_initNCNvMNtNtCskeugdADtBsi_12pingora_core7modules4httpNtB47_11HttpModules9build_ctxs_0E0NtNvMs4_B3l_IB3w_pE11get_or_init4VoidE0INtNtNtB2s_3ops8function6FnOnceuE9call_once6vtableB4b_, ptr @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdjEEE10initializeNCINvMs4_NtBa_4syncINtB3g_8OnceCellBR_E11get_or_initNCNvMNtNtCskeugdADtBsi_12pingora_core7modules4httpNtB42_11HttpModules9build_ctxs_0E0NtNvMs4_B3g_IB3r_pE11get_or_init4VoidE0B46_ }>, align 8
@5 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBf_4syncINtB2K_8OnceCellBW_E11get_or_initNCNvMs9_B2K_INtB2K_4LazyBW_E5force0E0NtNvMs4_B2K_IB2V_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCskeugdADtBsi_12pingora_core, ptr @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBa_4syncINtB2F_8OnceCellBR_E11get_or_initNCNvMs9_B2F_INtB2F_4LazyBR_E5force0E0NtNvMs4_B2F_IB2Q_pE11get_or_init4VoidE0CskeugdADtBsi_12pingora_core }>, align 8
@6 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTNtNtNtCs2awuzAz5vY4_5tokio7runtime6handle6HandleINtNtNtB1D_4sync7oneshot6SenderuEEEE10initializeNCINvMs4_NtBf_4syncINtB3e_8OnceCellBW_E11get_or_initNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB40_14OffloadRuntime11get_runtime0E0NtNvMs4_B3e_IB3p_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB44_, ptr @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTNtNtNtCs2awuzAz5vY4_5tokio7runtime6handle6HandleINtNtNtB1y_4sync7oneshot6SenderuEEEE10initializeNCINvMs4_NtBa_4syncINtB39_8OnceCellBR_E11get_or_initNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB3V_14OffloadRuntime11get_runtime0E0NtNvMs4_B39_IB3k_pE11get_or_init4VoidE0B3Z_ }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBf_4syncINtB31_8OnceCellBW_E11get_or_initNCNvMs_NtB1E_6digestNtB3P_12SocketDigest10local_addr0E0NtNvMs4_B31_IB3c_pE11get_or_init4VoidE0INtNtNtB11_3ops8function6FnOnceuE9call_once6vtableB1G_, ptr @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBa_4syncINtB2W_8OnceCellBR_E11get_or_initNCNvMs_NtB1z_6digestNtB3K_12SocketDigest10local_addr0E0NtNvMs4_B2W_IB37_pE11get_or_init4VoidE0B1B_ }>, align 8
@8 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBf_4syncINtB31_8OnceCellBW_E11get_or_initNCNvMs_NtB1E_6digestNtB3P_12SocketDigest12original_dst0E0NtNvMs4_B31_IB3c_pE11get_or_init4VoidE0INtNtNtB11_3ops8function6FnOnceuE9call_once6vtableB1G_, ptr @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBa_4syncINtB2W_8OnceCellBR_E11get_or_initNCNvMs_NtB1z_6digestNtB3K_12SocketDigest12original_dst0E0NtNvMs4_B2W_IB37_pE11get_or_init4VoidE0B1B_ }>, align 8
@9 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBf_4syncINtB31_8OnceCellBW_E11get_or_initNCNvMs_NtB1E_6digestNtB3P_12SocketDigest9peer_addr0E0NtNvMs4_B31_IB3c_pE11get_or_init4VoidE0INtNtNtB11_3ops8function6FnOnceuE9call_once6vtableB1G_, ptr @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBa_4syncINtB2W_8OnceCellBR_E11get_or_initNCNvMs_NtB1z_6digestNtB3K_12SocketDigest9peer_addr0E0NtNvMs4_B2W_IB37_pE11get_or_init4VoidE0B1B_ }>, align 8
@10 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellNtCskspKcFIsYcD_12pingora_http14ResponseHeaderE10initializeNCINvMs4_NtBf_4syncINtB22_8OnceCellBW_E11get_or_initNCNvMs9_B22_INtB22_4LazyBW_E5force0E0NtNvMs4_B22_IB2d_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCskeugdADtBsi_12pingora_core, ptr @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellNtCskspKcFIsYcD_12pingora_http14ResponseHeaderE10initializeNCINvMs4_NtBa_4syncINtB1X_8OnceCellBR_E11get_or_initNCNvMs9_B1X_INtB1X_4LazyBR_E5force0E0NtNvMs4_B1X_IB28_pE11get_or_init4VoidE0CskeugdADtBsi_12pingora_core }>, align 8
@11 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellNtNtNtCs6xJwbBeREfY_5regex5regex5bytes5RegexE10initializeNCINvMs4_NtBf_4syncINtB20_8OnceCellBW_E11get_or_initNCNvMs9_B20_INtB20_4LazyBW_E5force0E0NtNvMs4_B20_IB2b_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCskeugdADtBsi_12pingora_core, ptr @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellNtNtNtCs6xJwbBeREfY_5regex5regex5bytes5RegexE10initializeNCINvMs4_NtBa_4syncINtB1V_8OnceCellBR_E11get_or_initNCNvMs9_B1V_INtB1V_4LazyBR_E5force0E0NtNvMs4_B1V_IB26_pE11get_or_init4VoidE0CskeugdADtBsi_12pingora_core }>, align 8
@12 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellNtNtNtCs6xJwbBeREfY_5regex5regex6string5RegexE10initializeNCINvMs4_NtBf_4syncINtB21_8OnceCellBW_E11get_or_initNCNvMs9_B21_INtB21_4LazyBW_E5force0E0NtNvMs4_B21_IB2c_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCskeugdADtBsi_12pingora_core, ptr @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellNtNtNtCs6xJwbBeREfY_5regex5regex6string5RegexE10initializeNCINvMs4_NtBa_4syncINtB1W_8OnceCellBR_E11get_or_initNCNvMs9_B1W_INtB1W_4LazyBR_E5force0E0NtNvMs4_B1W_IB27_pE11get_or_init4VoidE0CskeugdADtBsi_12pingora_core }>, align 8
@13 = private unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!\00#$%&'\00\00*+\00-.\000123456789\00\00\00\00\00\00\00abcdefghijklmnopqrstuvwxyz\00\00\00^_`abcdefghijklmnopqrstuvwxyz\00|\00~\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@14 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/str/pattern.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"O\00\00\00\00\00\00\00A\06\00\00\14\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\FD\08\00\00\12\00\00\00" }>, align 8
@17 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/sync/atomic.rs\00", align 1
@18 = private unnamed_addr constant [52 x i8] c"there is no such thing as a release failure ordering", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"O\00\00\00\00\00\00\00\1E\10\00\00\1D\00\00\00" }>, align 8
@20 = private unnamed_addr constant [61 x i8] c"there is no such thing as an acquire-release failure ordering", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"O\00\00\00\00\00\00\00\1D\10\00\00\1C\00\00\00" }>, align 8
@22 = private unnamed_addr constant [25 x i8] c"cannot sample empty range", align 1
@23 = private unnamed_addr constant [91 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.8.8/src/rng.rs\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"Z\00\00\00\00\00\00\00\86\00\00\00\09\00\00\00" }>, align 8
@_RNvNCNKNvNtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { i64, i8, [7 x i8] }
@_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@25 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCskeugdADtBsi_12pingora_core, align 8
@26 = private unnamed_addr constant [24 x i8] c"duplicated filters found", align 1
@27 = private unnamed_addr constant [37 x i8] c"pingora-core/src/modules/http/mod.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"$\00\00\00\00\00\00\00\8F\00\00\00\19\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\14", [23 x i8] undef }>, align 8
@30 = private unnamed_addr constant [7 x i8] c"OPTIONS", align 1
@31 = private unnamed_addr constant [3 x i8] c"GET", align 1
@32 = private unnamed_addr constant [4 x i8] c"POST", align 1
@33 = private unnamed_addr constant [3 x i8] c"PUT", align 1
@34 = private unnamed_addr constant [6 x i8] c"DELETE", align 1
@35 = private unnamed_addr constant [4 x i8] c"HEAD", align 1
@36 = private unnamed_addr constant [5 x i8] c"TRACE", align 1
@37 = private unnamed_addr constant [7 x i8] c"CONNECT", align 1
@38 = private unnamed_addr constant [5 x i8] c"PATCH", align 1
@39 = private unnamed_addr constant [5 x i8] c"QUERY", align 1
@40 = private unnamed_addr constant [42 x i8] c"Lazy instance has previously been poisoned", align 1
@41 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/once_cell-1.21.4/src/lib.rs\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"`\00\00\00\00\00\00\00)\05\00\00\19\00\00\00" }>, align 8
@43 = private unnamed_addr constant [33 x i8] c"^\\w+ (?P<uri>.+) HTTP/\\d(?:\\.\\d)?", align 1
@44 = private unnamed_addr constant [45 x i8] c"pingora-core/src/protocols/http/v1/server.rs\00", align 1
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c",\00\00\00\00\00\00\00\E5\04\00\00C\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6xJwbBeREfY_5regex5error5ErrorECskeugdADtBsi_12pingora_core, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCs6xJwbBeREfY_5regex5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@47 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECskeugdADtBsi_12pingora_core, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtCsfsXztIhCltD_13pingora_error5ErrorENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@49 = private unnamed_addr constant [53 x i8] c"pingora-core/src/protocols/http/subrequest/server.rs\00", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @49, [16 x i8] c"4\00\00\00\00\00\00\00`\00\00\00\09\00\00\00" }>, align 8
@51 = private unnamed_addr constant [45 x i8] c"pingora-core/src/protocols/http/v1/client.rs\00", align 1
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c",\00\00\00\00\00\00\00\DE\01\00\00\22\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c",\00\00\00\00\00\00\00r\02\00\00;\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00E", [23 x i8] undef }>, align 8
@55 = private unnamed_addr constant [28 x i8] c"response header must be read", align 1
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c",\00\00\00\00\00\00\00\CA\00\00\00\0E\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\18", [23 x i8] undef }>, align 8
@58 = private unnamed_addr constant [10 x i8] c"Keep-Alive", align 1
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c",\00\00\00\00\00\00\00\E3\01\00\00\22\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes13static_to_vec, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes13static_to_mut, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop }>, align 8
@61 = private unnamed_addr constant [30 x i8] c"Request header is not read yet", align 1
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c",\00\00\00\00\00\00\00j\01\00\00\0E\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c",\00\00\00\00\00\00\00s\01\00\00\0E\00\00\00" }>, align 8
@64 = private unnamed_addr constant [1 x i8] c"-", align 1
@65 = private unnamed_addr constant [15 x i8] c"\C0\01 \C0\08, Host: \C0\00", align 1
@66 = private unnamed_addr constant [71 x i8] c"Unexpected UpgradedBody task received on un-upgraded downstream session", align 1
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c",\00\00\00\00\00\00\00\9C\04\00\00\11\00\00\00" }>, align 8
@68 = private unnamed_addr constant [60 x i8] c"Unexpected Body task received on upgraded downstream session", align 1
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c",\00\00\00\00\00\00\00\9A\04\00\00\11\00\00\00" }>, align 8
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c",\00\00\00\00\00\00\00f\03\00\00;\00\00\00" }>, align 8
@71 = private unnamed_addr constant [35 x i8] c"non-chunked final Transfer-Encoding", align 1
@72 = private unnamed_addr constant [57 x i8] c"HTTP/1.0 requests cannot include Transfer-Encoding header", align 1
@73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c",\00\00\00\00\00\00\00\C3\03\00\00\22\00\00\00" }>, align 8
@74 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00&", [23 x i8] undef }>, align 8
@75 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\1D", [23 x i8] undef }>, align 8
@76 = private unnamed_addr constant [20 x i8] c"application/grpc-web", align 1
@77 = private unnamed_addr constant [51 x i8] c"pingora-core/src/protocols/http/bridge/grpc_web.rs\00", align 1
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"2\00\00\00\00\00\00\00<\00\00\00\1C\00\00\00" }>, align 8
@79 = private unnamed_addr constant [16 x i8] c"application/grpc", align 1
@80 = private unnamed_addr constant [13 x i8] c"insert header", align 1
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"2\00\00\00\00\00\00\00D\00\00\00-\00\00\00" }>, align 8
@82 = private unnamed_addr constant [2 x i8] c"te", align 1
@83 = private unnamed_addr constant [8 x i8] c"trailers", align 1
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"2\00\00\00\00\00\00\00J\00\00\00-\00\00\00" }>, align 8
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"2\00\00\00\00\00\00\00r\00\00\00.\00\00\00" }>, align 8
@86 = private unnamed_addr constant [7 x i8] c"chunked", align 1
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"2\00\00\00\00\00\00\00w\00\00\00\0E\00\00\00" }>, align 8
@88 = private unnamed_addr constant [1 x i8] c":", align 1
@89 = private unnamed_addr constant [2 x i8] c"\0D\0A", align 1
@90 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCskeugdADtBsi_12pingora_core, align 8
@91 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.18/src/util/pool.rs\00", align 1
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @91, [16 x i8] c"k\00\00\00\00\00\00\00\9C\02\00\00\1C\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @91, [16 x i8] c"k\00\00\00\00\00\00\00\A9\02\00\002\00\00\00" }>, align 8
@_RNvNtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5inner17THREAD_ID_DROPPED = external global i64
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @91, [16 x i8] c"k\00\00\00\00\00\00\00?\03\00\00\15\00\00\00" }>, align 8
@_RNvNtCs1eA6bChxBZF_5bytes9bytes_mut13SHARED_VTABLE = external global { ptr, ptr, ptr, ptr, ptr }
@95 = private unnamed_addr constant [29 x i8] c"\C0\01 \C0\08, Host: \C0\0D (subrequest)\00", align 1
@96 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtNtCs2awuzAz5vY4_5tokio2io11async_write10AsyncWrite10poll_write, ptr @_RNvXs0_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtNtCs2awuzAz5vY4_5tokio2io11async_write10AsyncWrite10poll_flush, ptr @_RNvXs0_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtNtCs2awuzAz5vY4_5tokio2io11async_write10AsyncWrite13poll_shutdown, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtNtCs2awuzAz5vY4_5tokio2io11async_write10AsyncWrite19poll_write_vectoredBc_, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtNtCs2awuzAz5vY4_5tokio2io11async_write10AsyncWrite17is_write_vectoredBc_ }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtBb_8Shutdown8shutdown }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtBb_8UniqueID2id }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtBa_3Ssl7get_sslBc_, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtBa_3Ssl14get_ssl_digestBc_, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtBa_3Ssl19selected_alpn_protoBc_ }>, align 8
@100 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtBb_6digest15GetTimingDigest17get_timing_digest, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtBa_6digest15GetTimingDigest21get_read_pending_timeBc_, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtBa_6digest15GetTimingDigest22get_write_pending_timeBc_ }>, align 8
@101 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtBb_6digest14GetProxyDigest16get_proxy_digest, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtBa_6digest14GetProxyDigest16set_proxy_digestBc_ }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtBb_6digest15GetSocketDigest17get_socket_digest, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtBa_6digest15GetSocketDigest17set_socket_digestBc_ }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtBa_4Peek8try_peekBc_ }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@105 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB4_7DummyIONtNtNtCs2awuzAz5vY4_5tokio2io10async_read9AsyncRead9poll_read, ptr @_RNvXs0_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtNtCs2awuzAz5vY4_5tokio2io11async_write10AsyncWrite10poll_write, ptr @_RNvXs0_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtNtCs2awuzAz5vY4_5tokio2io11async_write10AsyncWrite10poll_flush, ptr @_RNvXs0_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtNtCs2awuzAz5vY4_5tokio2io11async_write10AsyncWrite13poll_shutdown, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtNtCs2awuzAz5vY4_5tokio2io11async_write10AsyncWrite19poll_write_vectoredBc_, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtNtCs2awuzAz5vY4_5tokio2io11async_write10AsyncWrite17is_write_vectoredBc_, ptr @96, ptr @_RNvXs8_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtBb_8Shutdown8shutdown, ptr @97, ptr @_RNvXs1_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtBb_8UniqueID2id, ptr @98, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtBa_3Ssl7get_sslBc_, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtBa_3Ssl14get_ssl_digestBc_, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtBa_3Ssl19selected_alpn_protoBc_, ptr @99, ptr @_RNvXs3_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtBb_6digest15GetTimingDigest17get_timing_digest, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtBa_6digest15GetTimingDigest21get_read_pending_timeBc_, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtBa_6digest15GetTimingDigest22get_write_pending_timeBc_, ptr @100, ptr @_RNvXs4_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtBb_6digest14GetProxyDigest16get_proxy_digest, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtBa_6digest14GetProxyDigest16set_proxy_digestBc_, ptr @101, ptr @_RNvXs5_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtBb_6digest15GetSocketDigest17get_socket_digest, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtNtBa_6digest15GetSocketDigest17set_socket_digestBc_, ptr @102, ptr @_RNvYNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtBa_4Peek8try_peekBc_, ptr @103, ptr @_RNvXs7_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB5_7DummyIONtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @104, ptr @_RNvXNtCskeugdADtBsi_12pingora_core9protocolsNtNtNtNtB2_4http10subrequest5dummy7DummyIONtB2_2IO6as_anyB4_, ptr @_RNvXNtCskeugdADtBsi_12pingora_core9protocolsNtNtNtNtB2_4http10subrequest5dummy7DummyIONtB2_2IO8into_anyB4_ }>, align 8
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @49, [16 x i8] c"4\00\00\00\00\00\00\00q\00\00\00.\00\00\00" }>, align 8
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @49, [16 x i8] c"4\00\00\00\00\00\00\00r\00\00\00*\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @49, [16 x i8] c"4\00\00\00\00\00\00\00s\00\00\00.\00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @49, [16 x i8] c"4\00\00\00\00\00\00\00t\00\00\000\00\00\00" }>, align 8
@110 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\16", [23 x i8] undef }>, align 8
@111 = private unnamed_addr constant [74 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/sync.rs\00", align 1
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @111, [16 x i8] c"I\00\00\00\00\00\00\00\E2\07\00\00\11\00\00\00" }>, align 8
@_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@113 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00G", [23 x i8] undef }>, align 8
@114 = private unnamed_addr constant [45 x i8] c"pingora-core/src/protocols/http/v1/common.rs\00", align 1
@115 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @114, [16 x i8] c",\00\00\00\00\00\00\00\95\00\00\00\1A\00\00\00" }>, align 8
@_RNvCsdYyxaOYRLxS_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@116 = private unnamed_addr constant [40 x i8] c"%negative content-length header value \C0\00", align 1
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @114, [16 x i8] c",\00\00\00\00\00\00\00\DB\00\00\00\1D\00\00\00" }>, align 8
@118 = private unnamed_addr constant [41 x i8] c"pingora_core::protocols::http::v1::common", align 1
@119 = private unnamed_addr constant [41 x i8] c"&negative Content-Length header value: \C0\00", align 1
@120 = private unnamed_addr constant [39 x i8] c"$invalid content-length header value \C0\00", align 1
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @114, [16 x i8] c",\00\00\00\00\00\00\00\E3\00\00\00\19\00\00\00" }>, align 8
@122 = private unnamed_addr constant [40 x i8] c"%invalid Content-Length header value: \C0\00", align 1
@123 = private unnamed_addr constant [38 x i8] c"invalid content-length header encoding", align 1
@124 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @114, [16 x i8] c",\00\00\00\00\00\00\00\EB\00\00\00\15\00\00\00" }>, align 8
@125 = private unnamed_addr constant [38 x i8] c"invalid Content-Length header encoding", align 1
@126 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\22", [23 x i8] undef }>, align 8
@127 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00Y\04\00\00*\00\00\00" }>, align 8
@128 = private unnamed_addr constant [32 x i8] c"duplicated Content-Length header", align 1
@_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16server18REQUEST_LINE_REGEX = internal global <{ [8 x i8], [24 x i8], [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [24 x i8] undef, [8 x i8] zeroinitializer, ptr @_RNvYNCNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16server18REQUEST_LINE_REGEX0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBe_ }>, align 8
@129 = private unnamed_addr constant [3 x i8] c"uri", align 1
@130 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\05\00\00P\00\00\00\00\00\00\00\80", align 4
@131 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c",\00\00\00\00\00\00\00\02\05\00\00'\00\00\00" }>, align 8
@132 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c",\00\00\00\00\00\00\00\F7\04\00\00'\00\00\00" }>, align 8
@133 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-1.13.1/src/regex/bytes.rs\00", align 1
@134 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @133, [16 x i8] c"d\00\00\00\00\00\00\00?\06\00\00\17\00\00\00" }>, align 8
@135 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @111, [16 x i8] c"I\00\00\00\00\00\00\008\0D\00\00\11\00\00\00" }>, align 8
@136 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5384140416553819892 to ptr), ptr inttoptr (i64 998107379007025686 to ptr) }>, align 8
@137 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIONtB2_3Any7type_idBB_ }>, align 8
@138 = private unnamed_addr constant [42 x i8] c"!cannot advance past `remaining`: \C0\04 <= \C0\00", align 1
@139 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.1/src/bytes.rs\00", align 1
@140 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @139, [16 x i8] c"^\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@141 = private unnamed_addr constant [15 x i8] c"EscapeIterInner", align 1
@142 = private unnamed_addr constant [6 x i8] c"\01'\C0\01'\00", align 1
@143 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtCskKLDkoKarTP_4core3fmtNtB5_9ArgumentsNtB5_5Debug3fmt }>, align 8
@144 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtB8_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@145 = private unnamed_addr constant [7 x i8] c"DummyIO", align 1
@146 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@147 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@148 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@149 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@150 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@151 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\D9\0B\00\003\00\00\00" }>, align 8
@152 = private unnamed_addr constant [11 x i8] c"CertWrapper", align 1
@153 = private unnamed_addr constant [11 x i8] c"WouldCycle\0A", align 1
@154 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@155 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtNtCskxN0Kp1MEon_2h25proto7streams12flow_control6WindowENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@156 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCsh7gMfcBfOe7_12tracing_core5fieldINtB5_12DisplayValueRReENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@157 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"O\00\00\00\00\00\00\00|\04\00\00$\00\00\00" }>, align 8
@158 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCskxN0Kp1MEon_2h25frame5FrameINtNtNtNtBB_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@159 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCskxN0Kp1MEon_2h26server11HandshakingINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_ENtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtB6_5Debug3fmtB1Q_ }>, align 8
@160 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCskxN0Kp1MEon_2h25frame4data4DataINtNtNtNtBD_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@161 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCskxN0Kp1MEon_2h25frame5FrameNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@162 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error9ErrorKindNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@163 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame13window_update12WindowUpdateNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@164 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame4data4DataNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@165 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame4ping4PingNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@166 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame5reset5ResetNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@167 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame6reason6ReasonNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@168 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame7go_away6GoAwayNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@169 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame7headers11PushPromiseNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@170 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame7headers7HeadersNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@171 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame8priority8PriorityNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@172 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame8settings8SettingsNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@173 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame9stream_id8StreamIdNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@174 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25proto10connection5StateNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@175 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25proto5error5ErrorNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@176 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25proto5error9InitiatorNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@177 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCskxN0Kp1MEon_2h25proto7streams5state5StateNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !65, !noundef !10 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !65, !noundef !10
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !65, !noundef !10
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !65, !noundef !10
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i.i.i.i.i ] ; 9 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i
    i32 13, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i
    i32 12, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i
    i32 11, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i
    i32 10, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i
    i32 9, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskeugdADtBsi_12pingora_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskeugdADtBsi_12pingora_core.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !66, !noundef !10
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !66, !noundef !10
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskeugdADtBsi_12pingora_core.exit

_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.e, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i, %bb.d
  %i.bi = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskeugdADtBsi_12pingora_core.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskeugdADtBsi_12pingora_core.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !67, !noundef !10 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit17.i.i.i.i.i

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.0, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !67, !noundef !10 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.0, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !67, !noundef !10 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.0, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !67, !noundef !10
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskeugdADtBsi_12pingora_core.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !68, !noundef !10
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !68, !noundef !10
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i6

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.0, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskeugdADtBsi_12pingora_core.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.0 to i64
  %i.do = sub i64 %i.aq, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i, %bb.t, %bb.a, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskeugdADtBsi_12pingora_core.exit, %bb.u
  %.sroa.0.02934 = phi i64 [ %i.c, %bb.u ], [ %i.c, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskeugdADtBsi_12pingora_core.exit ], [ 0, %bb.a ], [ %i.c, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %i.aq, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskeugdADtBsi_12pingora_core.exit ], [ 0, %bb.a ], [ %i.aq, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskeugdADtBsi_12pingora_core.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.02934
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02934
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre18trim_start_matchesReECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72
  call fastcc void @_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.b) #30, !noalias !73
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noalias !72, !noundef !10
  switch i64 %i.c, label %default.unreachable [
    i64 1, label %bb.d
    i64 2, label %.loopexit
    i64 0, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !72
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !72, !noundef !10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi i64 [ %i.e, %bb.d ], [ %1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !72
  %i.f = sub nuw i64 %1, %.sroa.0.0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.g, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.f, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [72 x i8], align 16               ; 13 uses
  %i.f = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.bh

.body.thread124:                                  ; preds = %bb.ap
  %lpad.thr_comm.split-lp138 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !258, !noundef !10
  %i.i = load ptr, ptr %2, align 8, !alias.scope !258, !nonnull !10, !align !12, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !258, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !258, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !258, !noundef !10
  invoke void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit unwind label %bb.bf, !inline_history !0

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.p = load i64, ptr %0, align 8, !range !11, !alias.scope !259, !noundef !10 ; 2 uses
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !259
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.s = load <2 x i64>, ptr %i.r, align 8, !alias.scope !259 ; 3 uses
  %i.t = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.u = xor <2 x i64> %i.t, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.u, ptr %i.e, align 16, !noalias !259
  %i.v = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.w = xor <2 x i64> %i.v, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.w, ptr %.sroa.513.0..sroa_idx.i, align 16, !noalias !259
  store <2 x i64> %i.s, ptr %.sroa.7.0..sroa_idx.i, align 16, !noalias !259
  %.sroa.915.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx.i, i8 0, i64 24, i1 false), !noalias !259
  %i.x = load ptr, ptr %1, align 8, !noalias !260, !noundef !10 ; 3 uses
  %i.y = icmp ne ptr %i.x, null
  %i.z = zext i1 %i.y to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !261
  store i64 %i.z, ptr %i.d, align 8, !noalias !261
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #30, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !261
  %.not.i.i.i = icmp eq ptr %i.x, null
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !260, !noundef !10 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.ab, align 8, !noalias !260, !noundef !10
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i) #30, !noalias !259
  %i.ac = ptrtoint ptr %.val.i.i.i to i64
  %i.ad = trunc i64 %i.ac to i8
  br label %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECskeugdADtBsi_12pingora_core.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr %i.aa, align 8, !range !13, !noalias !260, !noundef !10 ; 2 uses
  %i.af = zext nneg i8 %i.ae to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !262
  store i64 %i.af, ptr %i.c, align 8, !noalias !262
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #30, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !262
  br label %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECskeugdADtBsi_12pingora_core.exit.i

_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.g, %bb.f
  %i.ag = phi i8 [ %i.ae, %bb.g ], [ %i.ad, %bb.f ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 16, !alias.scope !263, !noalias !259
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !263, !noalias !259
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i, align 16, !alias.scope !263, !noalias !259 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.614.0..sroa_idx.i, align 8, !alias.scope !263, !noalias !259
  %i.ah = load i64, ptr %.sroa.915.0..sroa_idx.i, align 16, !alias.scope !263, !noalias !259, !noundef !10
  %i.ai = shl i64 %i.ah, 56
  %i.aj = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !263, !noalias !259, !noundef !10
  %i.ak = or i64 %i.ai, %i.aj                     ; 2 uses
  %i.al = xor i64 %i.ak, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.am = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.an = add i64 %i.al, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.ap = xor i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 16)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.an, %i.ap                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17)
  %i.aw = xor i64 %i.at, %i.av                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = xor i64 %i.au, %i.ak
  %i.bb = xor i64 %i.az, 255
  %i.bc = add i64 %i.ba, %i.aw                    ; 3 uses
  %i.bd = add i64 %i.ay, %i.bb                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 13)
  %i.bf = xor i64 %i.bc, %i.be                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16)
  %i.bh = xor i64 %i.bg, %i.bd                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd                    ; 3 uses
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 17)
  %i.bm = xor i64 %i.bj, %i.bl                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 21)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 3 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32)
  %i.bq = add i64 %i.bm, %i.bk                    ; 3 uses
  %i.br = add i64 %i.bo, %i.bp                    ; 2 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 13)
  %i.bt = xor i64 %i.bs, %i.bq                    ; 3 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 16)
  %i.bv = xor i64 %i.bu, %i.br                    ; 3 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bx = add i64 %i.bt, %i.br                    ; 3 uses
  %i.by = add i64 %i.bv, %i.bw                    ; 2 uses
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 17)
  %i.ca = xor i64 %i.bz, %i.bx                    ; 3 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 21)
  %i.cc = xor i64 %i.cb, %i.by                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 32)
  %i.ce = add i64 %i.ca, %i.by
  %i.cf = add i64 %i.cc, %i.cd                    ; 2 uses
  %i.cg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 13)
  %i.ch = xor i64 %i.cg, %i.ce                    ; 2 uses
  %i.ci = shl i64 %i.cc, 16
  %i.cj = xor i64 %i.ci, %i.cf
  %i.ck = add i64 %i.ch, %i.cf                    ; 2 uses
  %i.cl = lshr i64 %i.ch, 47
  %i.cm = lshr i64 %i.cj, 43
  %i.cn = lshr i64 %i.ck, 32
end_hunk_0
