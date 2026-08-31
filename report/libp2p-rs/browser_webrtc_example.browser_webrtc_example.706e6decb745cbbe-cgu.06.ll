Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/browser_webrtc_example.browser_webrtc_example.706e6decb745cbbe-cgu.06?download=true
inline.NumInlined: 1382
inline.NumDeleted: 602
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.4.2/src/header/map.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\C9\04\00\00\0C\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\C9\05\00\00\0C\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\D5\05\00\00\11\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00:\05\00\00\0C\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00F\05\00\00\11\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\FA\05\00\00=\00\00\00" }>, align 8
@7 = private unnamed_addr constant [19 x i8] c"header_read_timeout", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\EE\0C\00\00\1E\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\FD\08\00\00\12\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00:\07\00\00\22\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00D\07\00\00\16\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00I\07\00\00\16\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00I\07\00\00&\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00L\07\00\00\19\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00Q\07\00\00\16\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00Q\07\00\00&\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00T\07\00\00\19\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00Z\07\00\00\19\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00[\07\00\00\19\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\83\07\00\00&\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\83\07\00\00;\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\88\07\00\00\1D\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\90\07\00\00&\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\90\07\00\00;\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\95\07\00\00\1D\00\00\00" }>, align 8
@26 = private unnamed_addr constant [23 x i8] c"size overflows MAX_SIZE", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\D9\02\00\00\0E\00\00\00" }>, align 8
@28 = private unnamed_addr constant [36 x i8] c"expected a header name, but got None", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00u\08\00\00 \00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00z\08\00\008\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\008\0B\00\00\0E\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\99\05\00\00\0E\00\00\00" }>, align 8
@33 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/net/tcp/listener.rs\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"i\00\00\00\00\00\00\00f\00\00\00Q\00\00\00" }>, align 8
@35 = private unnamed_addr constant [32 x i8] c"could not resolve to any address", align 1
@36 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/axum-0.8.9/src/serve/mod.rs\00", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"`\00\00\00\00\00\00\00\85\01\00\00\12\00\00\00" }>, align 8
@_RNvNCNCNvNtCs9DIU3UKMbTt_4axum5serve17handle_connection0s1_010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@38 = private unnamed_addr constant [35 x i8] c"\1Cfailed to serve connection: \C1 \00\80`\00", align 1
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs9Bqz0CSWZZv_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@_RNvNCNCNvNtCs9DIU3UKMbTt_4axum5serve17handle_connection0s1_0s_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@40 = private unnamed_addr constant [51 x i8] c"signal received in task, starting graceful shutdown", align 1
@41 = private unnamed_addr constant [53 x i8] c"all branches are disabled and there is no else branch", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"`\00\00\00\00\00\00\00\90\01\00\00\0D\00\00\00" }>, align 8
@_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS = external local_unnamed_addr global { { { i8 } } }
@_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@43 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate5ErrorECs9Et6OYOsIUY_22browser_webrtc_example, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificateNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate5ErrorECs9Et6OYOsIUY_22browser_webrtc_example, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificateNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs4_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificateNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @43, ptr @_RNvXs3_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificateNtB5_5ErrorNtNtCskKLDkoKarTP_4core5error5Error6source, ptr @_RNvYNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RNvYNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RNvYNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RNvYNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs9Et6OYOsIUY_22browser_webrtc_example }>, align 8
@_RNvNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve010___CALLSITE = external hidden global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@45 = private unnamed_addr constant [1 x i8] c"/", align 1
@46 = private unnamed_addr constant [36 x i8] c"examples/browser-webrtc/src/main.rs\00", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"#\00\00\00\00\00\00\00`\00\00\00\0A\00\00\00" }>, align 8
@48 = private unnamed_addr constant [11 x i8] c"/index.html", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"#\00\00\00\00\00\00\00a\00\00\00\0A\00\00\00" }>, align 8
@50 = private unnamed_addr constant [6 x i8] c"/:path", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"#\00\00\00\00\00\00\00b\00\00\00\0A\00\00\00" }>, align 8
@52 = private unnamed_addr constant [27 x i8] c"Serving client files at url", align 1
@53 = private unnamed_addr constant [10 x i8] c"\07http://\C0\00", align 1
@54 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Value6recordCs9Et6OYOsIUY_22browser_webrtc_example }>, align 8
@55 = private unnamed_addr constant [31 x i8] c"Expected 1st protocol to be IP4", align 1
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"#\00\00\00\00\00\00\00\\\00\00\00\09\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"#\00\00\00\00\00\00\00Z\00\00\008\00\00\00" }>, align 8
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"#\00\00\00\00\00\00\00p\00\00\006\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @46, [16 x i8] c"#\00\00\00\00\00\00\00t\00\00\00\06\00\00\00" }>, align 8
@60 = private unnamed_addr constant [58 x i8] c"internal error: entered unreachable code: unexpected stage", align 1
@61 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/runtime/task/core.rs\00", align 1
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @61, [16 x i8] c"j\00\00\00\00\00\00\00u\01\00\00\1A\00\00\00" }>, align 8
@63 = private unnamed_addr constant [10 x i8] c"\C0\06 span=\C0\00", align 1
@64 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs14_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_14MaxSizeReachedNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9Et6OYOsIUY_22browser_webrtc_example, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt }>, align 8
@66 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@67 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes13static_to_vec, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes13static_to_mut, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop }>, align 8
@68 = private unnamed_addr constant [71 x i8] c"Dinternal error: entered unreachable code: write_body invalid state: \C0\00", align 1
@69 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hyper-1.11.0/src/proto/h1/conn.rs\00", align 1
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c"f\00\00\00\00\00\00\00\D3\02\00\00\12\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\14", [23 x i8] undef }>, align 8
@72 = private unnamed_addr constant [10 x i8] c"keep-alive", align 1
@73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\09\05\00\00#\00\00\00" }>, align 8
@74 = private unnamed_addr constant [25 x i8] c"HTTP/1.1 100 Continue\0D\0A\0D\0A", align 1
@75 = private unnamed_addr constant [75 x i8] c"Hinternal error: entered unreachable code: poll_read_body invalid state: \C0\00", align 1
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c"f\00\00\00\00\00\00\00\A5\01\00\00\12\00\00\00" }>, align 8
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c"f\00\00\00\00\00\00\00\DD\00\00\00 \00\00\00" }>, align 8
@78 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00C", [23 x i8] undef }>, align 8
@79 = private unnamed_addr constant [75 x i8] c"Hinternal error: entered unreachable code: write_trailers invalid state: \C0\00", align 1
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c"f\00\00\00\00\00\00\00\EE\02\00\00\12\00\00\00" }>, align 8
@81 = private unnamed_addr constant [5 x i8] c"close", align 1
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c"f\00\00\00\00\00\00\00\00\03\00\00\12\00\00\00" }>, align 8
@83 = private unnamed_addr constant [5 x i8] c"0\0D\0A\0D\0A", align 1
@84 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout16TransportTimeoutINtNtBG_3map3MapINtNtBG_6choice11OrTransportINtNtBG_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtBI_6muxing5boxed14StreamMuxerBoxEEIB1K_IB1K_NtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio9transport9TransportNCNCNCNvCs9Et6OYOsIUY_22browser_webrtc_example4main000ENCINvMNtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase15other_transportINtB6A_12SwarmBuilderNtNtB6y_8provider5TokioINtB6w_19OtherTransportPhaseB2r_EE20with_other_transportB3K_B4t_INtNtB4_6result6ResultB4t_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtBax_4SyncEL_EENCB5B_0E0EENCB6s_s_0EEEB5F_, [16 x i8] c"\90\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCsdTHTBGblh3Z_11libp2p_core9transport5boxedINtNtB4_7timeout16TransportTimeoutINtNtB4_3map3MapINtNtB4_6choice11OrTransportINtNtB4_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxEEIB1m_IB1m_NtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio9transport9TransportNCNCNCNvCs9Et6OYOsIUY_22browser_webrtc_example4main000ENCINvMNtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase15other_transportINtB6c_12SwarmBuilderNtNtB6a_8provider5TokioINtB68_19OtherTransportPhaseB23_EE20with_other_transportB3m_B45_INtNtCskKLDkoKarTP_4core6result6ResultB45_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8T_5error5ErrorNtNtB8T_6marker4SendNtBaq_4SyncEL_EENCB5d_0E0EENCB64_s_0EEINtB2_8AbstractB2x_E9listen_onB5h_, ptr @_RNvXNtNtCsdTHTBGblh3Z_11libp2p_core9transport5boxedINtNtB4_7timeout16TransportTimeoutINtNtB4_3map3MapINtNtB4_6choice11OrTransportINtNtB4_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxEEIB1m_IB1m_NtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio9transport9TransportNCNCNCNvCs9Et6OYOsIUY_22browser_webrtc_example4main000ENCINvMNtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase15other_transportINtB6c_12SwarmBuilderNtNtB6a_8provider5TokioINtB68_19OtherTransportPhaseB23_EE20with_other_transportB3m_B45_INtNtCskKLDkoKarTP_4core6result6ResultB45_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8T_5error5ErrorNtNtB8T_6marker4SendNtBaq_4SyncEL_EENCB5d_0E0EENCB64_s_0EEINtB2_8AbstractB2x_E15remove_listenerB5h_, ptr @_RNvXNtNtCsdTHTBGblh3Z_11libp2p_core9transport5boxedINtNtB4_7timeout16TransportTimeoutINtNtB4_3map3MapINtNtB4_6choice11OrTransportINtNtB4_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxEEIB1m_IB1m_NtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio9transport9TransportNCNCNCNvCs9Et6OYOsIUY_22browser_webrtc_example4main000ENCINvMNtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase15other_transportINtB6c_12SwarmBuilderNtNtB6a_8provider5TokioINtB68_19OtherTransportPhaseB23_EE20with_other_transportB3m_B45_INtNtCskKLDkoKarTP_4core6result6ResultB45_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8T_5error5ErrorNtNtB8T_6marker4SendNtBaq_4SyncEL_EENCB5d_0E0EENCB64_s_0EEINtB2_8AbstractB2x_E4dialB5h_, ptr @_RNvXNtNtCsdTHTBGblh3Z_11libp2p_core9transport5boxedINtNtB4_7timeout16TransportTimeoutINtNtB4_3map3MapINtNtB4_6choice11OrTransportINtNtB4_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxEEIB1m_IB1m_NtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio9transport9TransportNCNCNCNvCs9Et6OYOsIUY_22browser_webrtc_example4main000ENCINvMNtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase15other_transportINtB6c_12SwarmBuilderNtNtB6a_8provider5TokioINtB68_19OtherTransportPhaseB23_EE20with_other_transportB3m_B45_INtNtCskKLDkoKarTP_4core6result6ResultB45_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8T_5error5ErrorNtNtB8T_6marker4SendNtBaq_4SyncEL_EENCB5d_0E0EENCB64_s_0EEINtB2_8AbstractB2x_E4pollB5h_ }>, align 8
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00M\06\00\00\09\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00b\06\00\00\22\00\00\00" }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00c\06\00\00\22\00\00\00" }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00p\06\00\00\19\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00V\05\00\00*\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00Z\05\00\00&\00\00\00" }>, align 8
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\1A\07\00\00!\00\00\00" }>, align 8
@92 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB4V_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB4T_17into_make_service15IntoMakeServiceB4R_EB4R_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB22_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB2S_2rt5tokio13TokioExecutorEEEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB4Y_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB4W_17into_make_service15IntoMakeServiceB4U_EB4U_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB25_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB2V_2rt5tokio13TokioExecutorEEEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB57_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB55_17into_make_service15IntoMakeServiceB53_EB53_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB2e_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB34_2rt5tokio13TokioExecutorEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB5d_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB5b_17into_make_service15IntoMakeServiceB59_EB59_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB2k_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB3a_2rt5tokio13TokioExecutorEEEINtNtB1H_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB59_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB57_17into_make_service15IntoMakeServiceB55_EB55_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB2g_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB36_2rt5tokio13TokioExecutorEEEINtNtB1D_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB4Z_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB4X_17into_make_service15IntoMakeServiceB4V_EB4V_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB26_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB2W_2rt5tokio13TokioExecutorEEEINtNtB1t_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB4V_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB4T_17into_make_service15IntoMakeServiceB4R_EB4R_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB22_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB2S_2rt5tokio13TokioExecutorEEEINtNtB1p_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB4Y_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB4W_17into_make_service15IntoMakeServiceB4U_EB4U_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB25_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB2V_2rt5tokio13TokioExecutorEEEINtNtB1s_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB57_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB55_17into_make_service15IntoMakeServiceB53_EB53_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB2e_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB34_2rt5tokio13TokioExecutorEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB5d_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB5b_17into_make_service15IntoMakeServiceB59_EB59_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB2k_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB3a_2rt5tokio13TokioExecutorEEEINtNtB1H_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB59_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB57_17into_make_service15IntoMakeServiceB55_EB55_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB2g_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB36_2rt5tokio13TokioExecutorEEEINtNtB1D_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB4Z_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB4X_17into_make_service15IntoMakeServiceB4V_EB4V_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB26_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB2W_2rt5tokio13TokioExecutorEEEINtNtB1t_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@94 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1H_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1D_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1t_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@95 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1p_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1s_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1H_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1D_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEINtNtB1t_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@96 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB22_7routing17into_make_service15IntoMakeServiceNtB3u_6RouterEB4i_E0s1_0EEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB25_7routing17into_make_service15IntoMakeServiceNtB3x_6RouterEB4l_E0s1_0EEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB2e_7routing17into_make_service15IntoMakeServiceNtB3G_6RouterEB4u_E0s1_0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB2k_7routing17into_make_service15IntoMakeServiceNtB3M_6RouterEB4A_E0s1_0EEINtNtB1H_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB2g_7routing17into_make_service15IntoMakeServiceNtB3I_6RouterEB4w_E0s1_0EEINtNtB1D_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB26_7routing17into_make_service15IntoMakeServiceNtB3y_6RouterEB4m_E0s1_0EEINtNtB1t_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@97 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB22_7routing17into_make_service15IntoMakeServiceNtB3u_6RouterEB4i_E0s1_0EEINtNtB1p_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB25_7routing17into_make_service15IntoMakeServiceNtB3x_6RouterEB4l_E0s1_0EEINtNtB1s_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB2e_7routing17into_make_service15IntoMakeServiceNtB3G_6RouterEB4u_E0s1_0EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB2k_7routing17into_make_service15IntoMakeServiceNtB3M_6RouterEB4A_E0s1_0EEINtNtB1H_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB2g_7routing17into_make_service15IntoMakeServiceNtB3I_6RouterEB4w_E0s1_0EEINtNtB1D_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB26_7routing17into_make_service15IntoMakeServiceNtB3y_6RouterEB4m_E0s1_0EEINtNtB1t_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB1X_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB20_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB29_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1H_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2f_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1D_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1t_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB21_, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1p_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB1X_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1s_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB20_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB29_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1H_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2f_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1D_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2b_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEINtNtB1t_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB21_, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@100 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB3Q_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB3O_17into_make_service15IntoMakeServiceB3M_EB3M_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtBX_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB1N_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB3T_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB3R_17into_make_service15IntoMakeServiceB3P_EB3P_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB10_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB1Q_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB42_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB40_17into_make_service15IntoMakeServiceB3Y_EB3Y_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB19_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB1Z_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB48_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB46_17into_make_service15IntoMakeServiceB44_EB44_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB1f_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB25_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB44_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB42_17into_make_service15IntoMakeServiceB40_EB40_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB1b_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB21_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB3U_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB3S_17into_make_service15IntoMakeServiceB3Q_EB3Q_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB11_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB1R_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"\B8\01\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB3Q_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB3O_17into_make_service15IntoMakeServiceB3M_EB3M_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtBX_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB1N_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB3T_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB3R_17into_make_service15IntoMakeServiceB3P_EB3P_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB10_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB1Q_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB42_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB40_17into_make_service15IntoMakeServiceB3Y_EB3Y_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB19_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB1Z_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB48_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB46_17into_make_service15IntoMakeServiceB44_EB44_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB1f_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB25_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB44_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB42_17into_make_service15IntoMakeServiceB40_EB40_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB1b_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB21_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtNtNtCse0yMYRRwETY_5hyper5proto2h26server8H2StreamINtNtNtCs5IbPN03UQpS_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCshOIO9ZZXjgm_5tower4util11map_request10MapRequestNtNtCs9DIU3UKMbTt_4axum7routing6RouterNCNCINvNtB3U_5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtB3S_17into_make_service15IntoMakeServiceB3Q_EB3Q_E0s0_0EINtNtCscwxJ8MeEu7n_4http7request7RequestNtNtNtB11_4body8incoming8IncomingEENtNtCsf7xb2awyBix_9axum_core4body4BodyNtNtNtB1R_2rt5tokio13TokioExecutorEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"\B8\01\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"h\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"h\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@104 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtBX_7routing17into_make_service15IntoMakeServiceNtB2p_6RouterEB3c_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB10_7routing17into_make_service15IntoMakeServiceNtB2s_6RouterEB3g_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB19_7routing17into_make_service15IntoMakeServiceNtB2B_6RouterEB3p_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB1f_7routing17into_make_service15IntoMakeServiceNtB2H_6RouterEB3v_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB1b_7routing17into_make_service15IntoMakeServiceNtB2D_6RouterEB3r_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB11_7routing17into_make_service15IntoMakeServiceNtB2t_6RouterEB3h_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"\B8\07\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@105 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtBX_7routing17into_make_service15IntoMakeServiceNtB2p_6RouterEB3c_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB10_7routing17into_make_service15IntoMakeServiceNtB2s_6RouterEB3g_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB19_7routing17into_make_service15IntoMakeServiceNtB2B_6RouterEB3p_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB1f_7routing17into_make_service15IntoMakeServiceNtB2H_6RouterEB3v_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB1b_7routing17into_make_service15IntoMakeServiceNtB2D_6RouterEB3r_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownNCNCINvNtCs9DIU3UKMbTt_4axum5serve17handle_connectionNtNtNtNtB8_3net3tcp8listener11TcpListenerINtNtNtB11_7routing17into_make_service15IntoMakeServiceNtB2t_6RouterEB3h_E0s1_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, [24 x i8] c"\B8\07\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@106 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEBS_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEBV_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB14_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB1a_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEBW_, [24 x i8] c"\D0\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@107 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEBS_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEBV_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB14_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB1a_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB16_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEBW_, [24 x i8] c"\D0\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\009\0D\00\00*\00\00\00" }>, align 8
@_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00!\0B\00\00!\00\00\00" }>, align 8
@110 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate4KindECs9Et6OYOsIUY_22browser_webrtc_example, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificateNtB5_4KindNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate4KindECs9Et6OYOsIUY_22browser_webrtc_example, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificateNtB5_4KindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs8_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificateNtB5_4KindNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @110, ptr @_RNvXs7_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificateNtB5_4KindNtNtCskKLDkoKarTP_4core5error5Error6source, ptr @_RNvYNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate4KindNtNtCskKLDkoKarTP_4core5error5Error7type_idCs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RNvYNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate4KindNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RNvYNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate4KindNtNtCskKLDkoKarTP_4core5error5Error5causeCs9Et6OYOsIUY_22browser_webrtc_example, ptr @_RNvYNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate4KindNtNtCskKLDkoKarTP_4core5error5Error7provideCs9Et6OYOsIUY_22browser_webrtc_example }>, align 8
@112 = private unnamed_addr constant [51 x i8] c"upgradeable server connection missing after upgrade", align 1
@113 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hyper-1.11.0/src/server/conn/http1.rs\00", align 1
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @113, [16 x i8] c"j\00\00\00\00\00\00\00/\02\00\00\1A\00\00\00" }>, align 8
@115 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio11certificate4KindNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example }>, align 8
@116 = private unnamed_addr constant [5 x i8] c"Error", align 1
@117 = private unnamed_addr constant [4 x i8] c"Init", align 1
@118 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example }>, align 8
@119 = private unnamed_addr constant [8 x i8] c"Continue", align 1
@120 = private unnamed_addr constant [4 x i8] c"Body", align 1
@121 = private unnamed_addr constant [9 x i8] c"KeepAlive", align 1
@122 = private unnamed_addr constant [6 x i8] c"Closed", align 1
@123 = private unnamed_addr constant [8 x i8] c"\03-- \C0\01;\00", align 1
@124 = private unnamed_addr constant [13 x i8] c"tracing::span", align 1
@125 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\\\0C\00\000\00\00\00" }>, align 8
@126 = private unnamed_addr constant [31 x i8] c"`Ready` polled after completion", align 1
@127 = private unnamed_addr constant [81 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/future/ready.rs\00", align 1
@128 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @127, [16 x i8] c"P\00\00\00\00\00\00\00\17\00\00\00#\00\00\00" }>, align 8
@129 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsbCXxVlMkWND_6webrtc5error5ErrorNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example }>, align 8
@130 = private unnamed_addr constant [10 x i8] c"InvalidPEM", align 1
@131 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\F7\09\00\00\1A\00\00\00" }>, align 8
@132 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@133 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6191205484640283521 to ptr), ptr inttoptr (i64 4261058431017129795 to ptr) }>, align 8
@134 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4255786594461853005 to ptr), ptr inttoptr (i64 -9133003972524444209 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap10try_entry2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.833 = alloca [16 x i8], align 8          ; 2 uses
  %i.a = invoke noundef zeroext i1 @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
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
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.d

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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.e:                                             ; preds = %bb.b
  %i.m = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 3 uses
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

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
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.o, %.thread, %bb.d, %bb.c, %bb.h
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = invoke noundef zeroext i1 @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.av

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !78, !noundef !12
  %i.h = load ptr, ptr %3, align 8, !alias.scope !78, !nonnull !12, !align !79, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !78, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !78, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !78, !noundef !12
  invoke void %i.j(ptr noundef %i.g, ptr noundef %i.l, i64 noundef %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %bb.at, !inline_history !80

bb.d:                                             ; preds = %bb.b
  %i.o = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i16, ptr %i.p, align 8, !noundef !12 ; 3 uses
  %i.r = and i16 %i.q, %i.o
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !12 ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !nonnull !12
  %i.x = zext i16 %i.q to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8              ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !12 ; 3 uses
  %i.ac = load ptr, ptr %2, align 8               ; 9 uses
  %i.ad = icmp eq ptr %i.ac, null                 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !27
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8            ; 9 uses
  %i.ai = load ptr, ptr %i.ae, align 8            ; 8 uses
  %.not212 = icmp eq i64 %i.v, 0
  br label %.outer197

.outer197:                                        ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, %bb.d
  %.sroa.08.0.ph = phi i64 [ %i.bx, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.d ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.by, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ %i.s, %bb.d ] ; 2 uses
  %i.aj = icmp ult i64 %.sroa.0.0.ph, %i.v        ; 2 uses
  %.not212.not = xor i1 %.not212, true
  %brmerge = or i1 %i.aj, %.not212.not
  %.sroa.0.0.ph.mux = select i1 %i.aj, i64 %.sroa.0.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer197
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !noundef !12 ; 2 uses
  %.not = icmp eq i16 %i.al, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.z
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.am = zext i16 %i.al to i64                   ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !noundef !12 ; 2 uses
  %i.ap = and i16 %i.ao, %i.q
  %i.aq = zext i16 %i.ap to i64
  %i.ar = sub i64 %.sroa.0.0.ph.mux, %i.aq
  %i.as = and i64 %i.ar, %i.x
  %i.at = icmp samesign ult i64 %i.as, %.sroa.08.0.ph
  br i1 %i.at, label %bb.ad, label %bb.u

bb.g:                                             ; preds = %.loopexit
  %i.au = icmp ult i64 %i.z, 88686269585142076
  tail call void @llvm.assume(i1 %i.au)
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.695.0.copyload = load ptr, ptr %.sroa.695.0..sroa_idx, align 8 ; 3 uses
  %.sroa.096.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.598.0.copyload = load ptr, ptr %.sroa.598.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6101.0.copyload = load i64, ptr %.sroa.6101.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7104.0.copyload = load ptr, ptr %.sroa.7104.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.8107.0.copyload = load i64, ptr %.sroa.8107.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.av = icmp samesign ugt i64 %i.z, 32767
  br i1 %i.av, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !84
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 %i.o, ptr %i.ax, align 8, !noalias !84
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ac, ptr %i.ay, align 8, !noalias !87
  %.sroa.680.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.ai, ptr %.sroa.680.0..sroa_idx81, align 8, !noalias !87
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.ah, ptr %.sroa.884.0..sroa_idx85, align 8, !noalias !87
  %.sroa.1088.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.sroa.695.0.copyload, ptr %.sroa.1088.0..sroa_idx89, align 8, !noalias !87
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.096.0.copyload, ptr %i.az, align 8, !noalias !88
  %.sroa.598.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.598.0.copyload, ptr %.sroa.598.0..sroa_idx99, align 8, !noalias !88
  %.sroa.6101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.6101.0.copyload, ptr %.sroa.6101.0..sroa_idx102, align 8, !noalias !88
  %.sroa.7104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.7104.0.copyload, ptr %.sroa.7104.0..sroa_idx105, align 8, !noalias !88
  %.sroa.8107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.8107.0.copyload, ptr %.sroa.8107.0..sroa_idx108, align 8, !noalias !88
  store i64 0, ptr %i.b, align 8, !noalias !84
  %i.ba = load i64, ptr %i.aw, align 8, !range !89, !alias.scope !90, !noalias !93, !noundef !12
  %i.bb = icmp eq i64 %i.z, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCsdXHxuUs9k1_10tower_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %._crit_edge165 unwind label %bb.j, !noalias !93

._crit_edge165:                                   ; preds = %bb.i
  %.pre166 = load ptr, ptr %i.aa, align 8, !alias.scope !90, !noalias !93
  br label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit40 unwind label %bb.k, !noalias !95

bb.k:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !93
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.096.0.copyload) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.096.0.copyload, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !96, !nonnull !12, !noundef !12
  invoke void %i.bf(ptr noundef %.sroa.7104.0.copyload, ptr noundef %.sroa.598.0.copyload, i64 noundef %.sroa.6101.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i unwind label %bb.n, !noalias !84, !inline_history !80

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.l
  br i1 %i.ad, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !103, !nonnull !12, !noundef !12
  tail call void %i.bh(ptr noundef %.sroa.695.0.copyload, ptr noundef %i.ai, i64 noundef %i.ah), !inline_history !116
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !117, !nonnull !12, !noundef !12
  invoke void %i.bk(ptr noundef %.sroa.695.0.copyload, ptr noundef %i.ai, i64 noundef %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit40 unwind label %bb.p, !noalias !84, !inline_history !68

bb.p:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !84
  unreachable

bb.q:                                             ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.bm, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.r:                                             ; preds = %._crit_edge165, %bb.h
  %i.bn = phi ptr [ %.pre166, %._crit_edge165 ], [ %i.ab, %bb.h ]
  %i.bo = getelementptr inbounds nuw [104 x i8], ptr %i.bn, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !95
  %i.bp = add nuw nsw i64 %i.z, 1
  store i64 %i.bp, ptr %i.y, align 8, !alias.scope !90, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !84
  %i.bq = load i64, ptr %i.u, align 8, !noundef !12 ; 2 uses
  %i.br = icmp ult i64 %.sroa.0.0.ph.mux, %i.bq
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = load ptr, ptr %i.t, align 8, !nonnull !12, !noundef !12
  %i.bt = trunc nuw nsw i64 %i.z to i16
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.0.0.ph.mux ; 2 uses
  store i16 %i.bt, ptr %i.bu, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i16 %i.o, ptr %i.bv, align 2
  br label %.thread

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.ph.mux, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #25
  unreachable

.thread:                                          ; preds = %bb.aq, %bb.ap, %bb.s
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.u:                                             ; preds = %bb.f
  %i.bw = icmp eq i16 %i.ao, %i.o
  br i1 %i.bw, label %bb.v, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.y, %bb.w, %.split, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.u
  %i.bx = add nuw nsw i64 %.sroa.08.0.ph, 1
  %i.by = add i64 %.sroa.0.0.ph.mux, 1
  br label %.outer197

bb.v:                                             ; preds = %bb.u
  %i.bz = icmp ugt i64 %i.z, %i.am
  br i1 %i.bz, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.am ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !noundef !12
  %i.cd = icmp ne ptr %i.cc, null                 ; 2 uses
  %i.ce = xor i1 %i.cd, %i.ad
  br i1 %i.ce, label %bb.x, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.x:                                             ; preds = %bb.w
  br i1 %i.cd, label %bb.y, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !12
  %i.ch = icmp eq i64 %i.cg, %i.ah
  br i1 %i.ch, label %.split, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !noundef !12
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.cj, ptr %i.ai, i64 %i.ah)
  %i.ck = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ck, label %bb.aa, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.z:                                             ; preds = %bb.v
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
          to label %bb.e unwind label %bb.av

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.x
  tail call void @llvm.assume(i1 %i.ad)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cm = load i8, ptr %i.cl, align 8, !range !27, !noundef !12
  %i.cn = icmp eq i8 %i.cm, %i.af
  br i1 %i.cn, label %bb.aa, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.aa:                                            ; preds = %.split, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap15insert_occupiedCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef align 8 dereferenceable(96) %1, i64 noundef %i.am, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %3)
          to label %bb.ab unwind label %bb.as

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %.sroa.3.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0.copyload16 = load i8, ptr %.sroa.3.0..sroa_idx15, align 8
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx19, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.3.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.3.0.copyload16, ptr %.sroa.3.0..sroa_idx17, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !148, !noundef !12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !148, !nonnull !12, !noundef !12
  tail call void %i.cr(ptr noundef %i.cp, ptr noundef %i.ai, i64 noundef %i.ah), !noalias !148, !inline_history !26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit, %bb.ac, %bb.ab, %bb.q, %bb.ar, %.thread
  ret void

bb.ad:                                            ; preds = %bb.f
  %i.cs = icmp samesign ugt i64 %.sroa.08.0.ph, 511
  %i.ct = load i64, ptr %1, align 8, !range !28
  %i.cu = icmp ne i64 %i.ct, 2
  %.sroa.013.0 = select i1 %i.cs, i1 %i.cu, i1 false
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.663.0.copyload = load ptr, ptr %.sroa.663.0..sroa_idx, align 8 ; 3 uses
  %.sroa.064.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.566.0.copyload = load ptr, ptr %.sroa.566.0..sroa_idx, align 8 ; 2 uses
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.669.0.copyload = load i64, ptr %.sroa.669.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.874.0.copyload = load i64, ptr %.sroa.874.0..sroa_idx, align 8
  %i.cv = icmp ult i64 %i.z, 88686269585142076
  tail call void @llvm.assume(i1 %i.cv)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.cw = icmp samesign ugt i64 %i.z, 32767
  br i1 %i.cw, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !152
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i16 %i.o, ptr %i.cy, align 8, !noalias !152
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ac, ptr %i.cz, align 8, !noalias !155
  %.sroa.6.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.ai, ptr %.sroa.6.0..sroa_idx52, align 8, !noalias !155
  %.sroa.8.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.ah, ptr %.sroa.8.0..sroa_idx55, align 8, !noalias !155
  %.sroa.10.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %.sroa.663.0.copyload, ptr %.sroa.10.0..sroa_idx58, align 8, !noalias !155
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.064.0.copyload, ptr %i.da, align 8, !noalias !156
  %.sroa.566.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.566.0.copyload, ptr %.sroa.566.0..sroa_idx67, align 8, !noalias !156
  %.sroa.669.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.669.0.copyload, ptr %.sroa.669.0..sroa_idx70, align 8, !noalias !156
  %.sroa.7.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx72, align 8, !noalias !156
  %.sroa.874.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.874.0.copyload, ptr %.sroa.874.0..sroa_idx75, align 8, !noalias !156
  store i64 0, ptr %i.a, align 8, !noalias !152
  %i.db = load i64, ptr %i.cx, align 8, !range !89, !alias.scope !157, !noalias !160, !noundef !12
  %i.dc = icmp eq i64 %i.z, %i.db
  br i1 %i.dc, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCsdXHxuUs9k1_10tower_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %._crit_edge unwind label %bb.ag, !noalias !160

._crit_edge:                                      ; preds = %bb.af
  %.pre = load ptr, ptr %i.aa, align 8, !alias.scope !157, !noalias !160
  br label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.a) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit40 unwind label %bb.ah, !noalias !162

bb.ah:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !160
  unreachable

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.064.0.copyload) ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.064.0.copyload, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !163, !nonnull !12, !noundef !12
  invoke void %i.dg(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.566.0.copyload, i64 noundef %.sroa.669.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i43 unwind label %bb.ak, !noalias !152, !inline_history !80

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i43: ; preds = %bb.ai
  br i1 %i.ad, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i43
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !170, !nonnull !12, !noundef !12
  tail call void %i.di(ptr noundef %.sroa.663.0.copyload, ptr noundef %i.ai, i64 noundef %i.ah), !inline_history !116
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit40, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !183, !nonnull !12, !noundef !12
  invoke void %i.dl(ptr noundef %.sroa.663.0.copyload, ptr noundef %i.ai, i64 noundef %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit40 unwind label %bb.am, !noalias !152, !inline_history !68

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !152
  unreachable

bb.an:                                            ; preds = %._crit_edge, %bb.ae
  %i.dn = phi ptr [ %.pre, %._crit_edge ], [ %i.ab, %bb.ae ]
  %i.do = getelementptr inbounds nuw [104 x i8], ptr %i.dn, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.do, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !162
  %i.dp = add nuw nsw i64 %i.z, 1
  store i64 %i.dp, ptr %i.y, align 8, !alias.scope !157, !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !152
  %i.dq = load ptr, ptr %i.t, align 8, !alias.scope !196, !noalias !199, !nonnull !12, !noundef !12
  %i.dr = load i64, ptr %i.u, align 8, !alias.scope !196, !noalias !199, !noundef !12 ; 2 uses
  %i.ds = trunc nuw nsw i64 %i.z to i16
  %.not213 = icmp eq i64 %i.dr, 0
  br label %.outer

.outer:                                           ; preds = %bb.ao, %bb.an
  %.sroa.6.0.i.ph = phi i16 [ %i.dz, %bb.ao ], [ %i.o, %bb.an ] ; 2 uses
  %.sroa.09.0.i.ph = phi i16 [ %i.dv, %bb.ao ], [ %i.ds, %bb.an ] ; 2 uses
  %.sroa.07.0.i.ph = phi i64 [ %i.dy, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.ea, %bb.ao ], [ %.sroa.0.0.ph.mux, %bb.an ] ; 2 uses
  %i.dt = icmp ult i64 %.sroa.0.0.i.ph, %i.dr     ; 2 uses
  %.not213.not = xor i1 %.not213, true
  %brmerge225 = or i1 %i.dt, %.not213.not
  %.sroa.0.0.i.ph.mux = select i1 %i.dt, i64 %.sroa.0.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge225, label %.loopexit211, label %infloop224

.loopexit211:                                     ; preds = %.outer
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.sroa.0.0.i.ph.mux ; 4 uses
  %i.dv = load i16, ptr %i.du, align 2, !noalias !199, !noundef !12 ; 2 uses
  %i.dw = icmp eq i16 %i.dv, -1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 2 ; 3 uses
  br i1 %i.dw, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.loopexit211
  %i.dy = add i64 %.sroa.07.0.i.ph, 1
  %i.dz = load i16, ptr %i.dx, align 2, !noalias !199, !noundef !12
  store i16 %.sroa.09.0.i.ph, ptr %i.du, align 2, !noalias !199
  store i16 %.sroa.6.0.i.ph, ptr %i.dx, align 2, !noalias !199
  %i.ea = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.ap:                                            ; preds = %.loopexit211
  store i16 %.sroa.09.0.i.ph, ptr %i.du, align 2, !noalias !199
  store i16 %.sroa.6.0.i.ph, ptr %i.dx, align 2, !noalias !199
  %i.eb = icmp ugt i64 %.sroa.07.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.013.0, i1 true, i1 %i.eb
  %i.ec = load i64, ptr %1, align 8, !range !28, !alias.scope !196, !noalias !199
  %i.ed = icmp eq i64 %i.ec, 0
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ed, i1 false
  br i1 %or.cond3.i, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  store i64 1, ptr %1, align 8, !alias.scope !196, !noalias !199
  br label %.thread

bb.ar:                                            ; preds = %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i43
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.ee, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.as:                                            ; preds = %bb.aa
  %lpad.thr_comm.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %.thread121

bb.at:                                            ; preds = %bb.c
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.thread121

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.eg = load ptr, ptr %2, align 8, !alias.scope !208, !noundef !12 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.au

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !221, !noundef !12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !221, !nonnull !12, !noundef !12
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !221, !noundef !12
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !221, !noundef !12
  tail call void %i.el(ptr noundef %i.ej, ptr noundef %i.en, i64 noundef %i.ep), !noalias !221, !inline_history !26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.av:                                            ; preds = %bb.z, %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !231, !noundef !12
  %i.es = load ptr, ptr %3, align 8, !alias.scope !231, !nonnull !12, !align !79, !noundef !12
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !231, !nonnull !12, !noundef !12
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !231, !noundef !12
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !231, !noundef !12
  invoke void %i.eu(ptr noundef %i.er, ptr noundef %i.ew, i64 noundef %i.ey)
          to label %.thread121 unwind label %bb.aw, !inline_history !80

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit40: ; preds = %bb.o, %bb.n, %bb.j, %bb.al, %bb.ak, %bb.ag, %.thread121, %bb.ax
  %.pn124 = phi { ptr, i32 } [ %.pn125, %.thread121 ], [ %i.dj, %bb.ak ], [ %.pn125, %bb.ax ], [ %i.bi, %bb.n ], [ %i.bc, %bb.j ], [ %i.bi, %bb.o ], [ %i.dd, %bb.ag ], [ %i.dj, %bb.al ]
  resume { ptr, i32 } %.pn124

.thread121:                                       ; preds = %bb.av, %bb.at, %bb.as
  %.pn125 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp131, %bb.as ], [ %i.ef, %bb.at ], [ %lpad.thr_comm.split-lp, %bb.av ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.fa = load ptr, ptr %2, align 8, !alias.scope !238, !noundef !12 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit40, label %bb.ax

bb.ax:                                            ; preds = %.thread121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !251, !noundef !12
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !251, !nonnull !12, !noundef !12
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !251, !noundef !12
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !251, !noundef !12
  invoke void %i.ff(ptr noundef %i.fd, ptr noundef %i.fh, i64 noundef %i.fj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit40 unwind label %bb.aw, !inline_history !68

infloop:                                          ; preds = %.outer197, %infloop
  br label %infloop

infloop224:                                       ; preds = %.outer, %infloop224
  br label %infloop224
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap12contains_keyRNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !252, !noalias !255, !noundef !12 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !255 ; 2 uses
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
  br i1 %.not.i, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !257, !noundef !12 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ab
  br i1 %i.ac, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.d

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
  br i1 %i.av, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !27, !noalias !257, !noundef !12
  %i.ay = load i8, ptr %i.q, align 8, !range !27, !noalias !257, !noundef !12
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28, !noalias !257
  unreachable

_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %.split.i, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.loopexit, %bb.c, %bb.a
  %i.ba = phi i1 [ false, %bb.a ], [ true, %.split.i ], [ true, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i ], [ false, %.loopexit ], [ false, %bb.c ]
  ret i1 %i.ba

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !267, !noalias !268, !noundef !12 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit_crit_edge, label %bb.b

._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !271
  br label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !268 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !267, !noalias !268, !noundef !12 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !267, !noalias !268, !noundef !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !267, !noalias !268, !nonnull !12
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !267, !noalias !268, !nonnull !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 6 uses
  %i.t = icmp eq ptr %i.s, null                   ; 3 uses
  %i.u = load i8, ptr %i.q, align 8, !range !27
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, %bb.b
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.k   ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !276, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.z, -1
  br i1 %.not.i.i.i, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !276, !noundef !12 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.i.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.i.ph, %i.ag
  br i1 %i.ah, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !276, !noundef !12
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !276, !noundef !12
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i.i.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split.i.i.i:                                     ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !276, !noundef !12
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !276
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !27, !noalias !276, !noundef !12
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !295, !noundef !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !295, !nonnull !12, !noundef !12
  invoke void %i.bf(ptr noundef %i.bd, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %bb.m, !inline_history !68

_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.c, %.loopexit, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit_crit_edge, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  %i.bg = phi ptr [ %i.s, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i ], [ %.pre, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit_crit_edge ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i ], [ null, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit_crit_edge ], [ null, %.loopexit ], [ null, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !310, !noundef !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !310, !nonnull !12, !noundef !12
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !310, !noundef !12
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !310, !noundef !12
  tail call void %i.bl(ptr noundef %i.bj, ptr noundef %i.bn, i64 noundef %i.bp), !noalias !310, !inline_history !26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit2: ; preds = %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, %bb.l
  ret ptr %.sroa.0.0.i

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bb

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap3getRNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !317, !noalias !318, !noundef !12 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !318 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !317, !noalias !318, !noundef !12 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !317, !noalias !318, !noundef !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !317, !noalias !318, !nonnull !12
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !317, !noalias !318, !nonnull !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.ae, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.af, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !320, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, -1
  br i1 %.not.i.i, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !320, !noundef !12 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ab
  br i1 %i.ac, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !320, !noundef !12
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !noalias !320, !noundef !12 ; 2 uses
  %i.am = icmp eq ptr %i.al, null                 ; 2 uses
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !320, !noundef !12 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !320, !noundef !12
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.split.i.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.as = load ptr, ptr %i.q, align 8, !noalias !320, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !320, !noundef !12
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.as, i64 %i.ap), !noalias !320
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !27, !noalias !320, !noundef !12
  %i.ay = load i8, ptr %i.q, align 8, !range !27, !noalias !320, !noundef !12
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28, !noalias !320
  unreachable

_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  br label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %.loopexit, %bb.c, %bb.a, %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit.i ], [ null, %bb.a ], [ null, %bb.c ], [ null, %.loopexit ]
  ret ptr %.sroa.0.0.i

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap6removeNtNtB8_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 16 uses
  %.sroa.013 = alloca [64 x i8], align 8          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.013, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !327, !noalias !328, !noundef !12 ; 5 uses
  %i.f = icmp ult i64 %i.e, 88686269585142076
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %..loopexit20_crit_edge, label %bb.b

..loopexit20_crit_edge:                           ; preds = %bb.a
  %.pre36.pre = load ptr, ptr %2, align 8, !alias.scope !331
  br label %.loopexit20

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 %2), !noalias !328 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8, !alias.scope !327, !noalias !328, !noundef !12 ; 3 uses
  %i.k = and i16 %i.j, %i.h
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !327, !noalias !328, !noundef !12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !327, !noalias !328, !nonnull !12
  %i.q = zext i16 %i.j to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !327, !noalias !328, !nonnull !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %2, align 8                ; 7 uses
  %i.w = icmp eq ptr %i.v, null                   ; 3 uses
  %i.x = load i8, ptr %i.t, align 8, !range !27
  %i.y = load i64, ptr %i.u, align 8              ; 3 uses
  %i.z = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br label %.outer72

.outer72:                                         ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.am, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.an, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.aa = icmp ult i64 %.sroa.0.0.i.i.ph, %i.n    ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.aa, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.aa, i64 %.sroa.0.0.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit81, label %infloop

.loopexit81:                                      ; preds = %.outer72
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !336, !noundef !12 ; 3 uses
  %.not.i.i = icmp eq i16 %i.ac, -1
  br i1 %.not.i.i, label %.loopexit20, label %bb.c

bb.c:                                             ; preds = %.loopexit81
  %i.ad = zext i16 %i.ac to i64                   ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.af = load i16, ptr %i.ae, align 2, !noalias !336, !noundef !12 ; 2 uses
  %i.ag = and i16 %i.af, %i.j
  %i.ah = zext i16 %i.ag to i64
  %i.ai = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ah
  %i.aj = and i64 %i.ai, %i.q
  %i.ak = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.aj
  br i1 %i.ak, label %.loopexit20, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = icmp eq i16 %i.af, %i.h
  br i1 %i.al, label %bb.e, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.am = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.an = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer72

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp samesign ugt i64 %i.e, %i.ad
  br i1 %i.ao, label %bb.f, label %.invoke

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw [104 x i8], ptr %i.s, i64 %i.ad ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !336, !noundef !12
  %i.as = icmp ne ptr %i.ar, null                 ; 2 uses
  %i.at = xor i1 %i.as, %i.w
  br i1 %i.at, label %bb.g, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.as, label %bb.h, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.av = load i64, ptr %i.au, align 8, !noalias !336, !noundef !12
  %i.aw = icmp eq i64 %i.av, %i.y
  br i1 %i.aw, label %.split.i.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !336, !noundef !12
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ay, ptr %i.z, i64 %i.y), !noalias !336
  %i.az = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.az, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.w)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.bb = load i8, ptr %i.ba, align 8, !range !27, !noalias !336, !noundef !12
  %i.bc = icmp eq i8 %i.bb, %i.x
  br i1 %i.bc, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.invoke:                                          ; preds = %bb.e, %bb.m
  %i.bd = phi i64 [ %.sroa.0.0.i.i.ph.mux, %bb.m ], [ %i.ad, %bb.e ]
  %i.be = phi i64 [ %i.dd, %bb.m ], [ %i.e, %bb.e ]
  %i.bf = phi ptr [ @85, %bb.m ], [ @6, %bb.e ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit19:                                      ; preds = %bb.l, %.noexc5
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %bb.k, %._crit_edge.i, %bb.o, %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit19, %.loopexit.split-lp, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.dz, %bb.t ], [ %lpad.loopexit, %.loopexit19 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.i

bb.i:                                             ; preds = %.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !355, !noundef !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !355, !nonnull !12, !noundef !12
  invoke void %i.bj(ptr noundef %i.bh, ptr noundef %i.z, i64 noundef %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %bb.af, !inline_history !68

.loopexit20:                                      ; preds = %.loopexit81, %bb.c, %..loopexit20_crit_edge
  %.pre36 = phi ptr [ %.pre36.pre, %..loopexit20_crit_edge ], [ %i.v, %bb.c ], [ %i.v, %.loopexit81 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.bk, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit12

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit12: ; preds = %bb.ae, %.loopexit, %.loopexit20
  %i.bl = phi ptr [ %.pre36, %.loopexit20 ], [ %i.v, %.loopexit ], [ %i.v, %bb.ae ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit3, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !370, !noundef !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !370, !nonnull !12, !noundef !12
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !370, !noundef !12
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !370, !noundef !12
  tail call void %i.bq(ptr noundef %i.bo, ptr noundef %i.bs, i64 noundef %i.bu), !noalias !370, !inline_history !26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example.exit12, %bb.j
  ret void

_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.bv = load i64, ptr %i.ap, align 8, !range !371, !noundef !12
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !372
  invoke fastcc void @_RINvNtNtCscwxJ8MeEu7n_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.s, i64 noundef %i.e, ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz, i64 noundef %i.by) #29
          to label %.noexc4 unwind label %.loopexit.split-lp

.noexc4:                                          ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !range !371, !noalias !372, !noundef !12
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.noexc4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.l

bb.l:                                             ; preds = %.noexc6, %.lr.ph.i
  %i.ci = load i64, ptr %i.cd, align 8, !noalias !372, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.cj = load ptr, ptr %i.cf, align 8, !alias.scope !387, !noalias !372, !noundef !12
  %i.ck = load ptr, ptr %i.ce, align 8, !alias.scope !387, !noalias !372, !nonnull !12, !align !79, !noundef !12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !388, !nonnull !12, !noundef !12
  %i.cn = load ptr, ptr %i.cg, align 8, !alias.scope !387, !noalias !372, !noundef !12
  %i.co = load i64, ptr %i.ch, align 8, !alias.scope !387, !noalias !372, !noundef !12
  invoke void %i.cm(ptr noundef %i.cj, ptr noundef %i.cn, i64 noundef %i.co)
          to label %.noexc5 unwind label %.loopexit19, !inline_history !389

.noexc5:                                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !372
  %i.cp = load ptr, ptr %i.r, align 8, !alias.scope !372, !nonnull !12, !noundef !12
  %i.cq = load i64, ptr %i.d, align 8, !alias.scope !372, !noundef !12
  invoke fastcc void @_RINvNtNtCscwxJ8MeEu7n_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull %i.cp, i64 noundef %i.cq, ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz, i64 noundef %i.ci) #29
          to label %.noexc6 unwind label %.loopexit19

.noexc6:                                          ; preds = %.noexc5
  %i.cr = load i64, ptr %i.ca, align 8, !range !371, !noalias !372, !noundef !12
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc6, %.noexc4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !402, !noalias !372, !noundef !12
  %i.cw = load ptr, ptr %i.ct, align 8, !alias.scope !402, !noalias !372, !nonnull !12, !align !79, !noundef !12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !403, !nonnull !12, !noundef !12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !402, !noalias !372, !noundef !12
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !402, !noalias !372, !noundef !12
  invoke void %i.cy(ptr noundef %i.cv, ptr noundef %i.da, i64 noundef %i.dc)
          to label %_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %.loopexit.split-lp, !inline_history !389

_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !372
  %.pre = load i64, ptr %i.m, align 8, !alias.scope !404, !noalias !407
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs9Et6OYOsIUY_22browser_webrtc_example.exit, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit
  %i.dd = phi i64 [ %.pre, %_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs9Et6OYOsIUY_22browser_webrtc_example.exit ], [ %i.n, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.de = icmp ult i64 %.sroa.0.0.i.i.ph.mux, %i.dd
  br i1 %i.de, label %bb.n, label %.invoke

bb.n:                                             ; preds = %bb.m
  %i.df = load ptr, ptr %i.o, align 8, !alias.scope !404, !noalias !407, !nonnull !12, !noundef !12 ; 5 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  store i16 -1, ptr %i.dg, align 2, !noalias !409
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i16 0, ptr %i.dh, align 2, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !409
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.di = load i64, ptr %i.d, align 8, !alias.scope !413, !noalias !414, !noundef !12 ; 4 uses
  %i.dj = icmp ult i64 %i.di, 88686269585142076
  tail call void @llvm.assume(i1 %i.dj)
  %.not.i.i8 = icmp samesign ugt i64 %i.di, %i.ad
  br i1 %.not.i.i8, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, label %bb.o, !prof !416

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %i.ad, i64 noundef %i.di) #28
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %bb.o
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.n
  %i.dk = load ptr, ptr %i.r, align 8, !alias.scope !413, !noalias !414, !nonnull !12, !noundef !12 ; 2 uses
  %i.dl = getelementptr inbounds nuw [104 x i8], ptr %i.dk, i64 %i.ad ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.dl, i64 104, i1 false), !noalias !417
  %i.dm = add nsw i64 %i.di, -1                   ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvXs6_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMapINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendINtB6_5DrainB2z_EECs9Et6OYOsIUY_22browser_webrtc_example:bb.a
  %.sroa.10128.sroa.11.0..sroa_idx148 = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  %.sroa.10128.sroa.11.0.copyload149 = load i64, ptr %.sroa.10128.sroa.11.0..sroa_idx148, align 8, !noalias !3757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.ay:                                            ; preds = %.noexc32
  %i.ei = load ptr, ptr %i.du, align 8, !noalias !3758, !nonnull !12, !noundef !12
  %i.ej = getelementptr inbounds nuw [104 x i8], ptr %i.ei, i64 %.sroa.799.0
  invoke fastcc void @_RINvNtNtCscwxJ8MeEu7n_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example(i64 noundef %.sroa.799.0, ptr noalias nofree noundef align 8 dereferenceable(104) %i.ej, ptr noalias nofree noundef align 8 dereferenceable(24) %i.dv, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e)
          to label %_RNvMsO_NtNtCscwxJ8MeEu7n_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %.body.thread176.loopexit.split.loop.exit.split-lp

bb.az:                                            ; preds = %.noexc32
  %spec.select.le516 = select i1 %i.dy, i64 %i.dz, i64 %i.dw
  store i64 %i.bs, ptr %i.aq, align 8
  store i64 %i.dx, ptr %i.j, align 8
  store i64 %spec.select.le516, ptr %i.ag, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.799.0, i64 noundef %i.eb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #25
          to label %bb.ba unwind label %bb.bb, !noalias !3758

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = extractelement <2 x ptr> %i.ea, i64 0
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !noalias !3761, !nonnull !12, !noundef !12
  %i.eo = extractelement <2 x ptr> %i.ea, i64 1
  invoke void %i.en(ptr noundef %.sroa.10128.sroa.10.0.copyload147, ptr noundef %i.eo, i64 noundef %.sroa.10128.sroa.9.0.copyload143)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %bb.bc, !noalias !3758, !inline_history !80

bb.bc:                                            ; preds = %bb.bb
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3758
  unreachable

_RNvMsO_NtNtCscwxJ8MeEu7n_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %i.dy, label %bb.ar, label %._crit_edge

.loopexit:                                        ; preds = %bb.v
  %lpad.loopexit199 = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bs, ptr %i.aq, align 8
  store i64 %.sink.i30270.lcssa278, ptr %i.j, align 8
  store i64 %.lcssa273286, ptr %i.ag, align 8
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi201 = phi { ptr, i32 } [ %lpad.loopexit199, %.loopexit ], [ %lpad.loopexit.split-lp200, %.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.044.0) ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !3768, !nonnull !12, !noundef !12
  invoke void %i.er(ptr noundef %.sroa.9.0, ptr noundef %.sroa.7.0, i64 noundef %.sroa.8.0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %bb.u, !inline_history !80

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit
  resume { ptr, i32 } %.pn

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMapINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTNtNtB8_4name10HeaderNameNtNtB8_5value11HeaderValueEE6extendINtNtB12_6option6OptionB1M_EECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = alloca [104 x i8], align 8               ; 15 uses
  %i.d = alloca [40 x i8], align 8                ; 13 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !12 ; 2 uses
  %i.h = icmp ult i64 %i.g, 88686269585142076
  tail call void @llvm.assume(i1 %i.h)
  %.sroa.0.0.in.in.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.in.in = load i8, ptr %.sroa.0.0.in.in.in, align 8, !range !456, !noundef !12
  %.sroa.0.0.in = icmp ne i8 %.sroa.0.0.in.in, 2
  %.sroa.0.0 = zext i1 %.sroa.0.0.in to i64
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 24576, i64 %i.g)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %.sroa.0.0)
  %i.j = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap11try_reserveCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %..i)
          to label %bb.b unwind label %bb.ay

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCscwxJ8MeEu7n_4http6header3map14MaxSizeReachedE6expectCs9Et6OYOsIUY_22browser_webrtc_example.exit, !prof !3665

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCscwxJ8MeEu7n_4http6header3map14MaxSizeReachedE6expectCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 11 uses
  %.sroa.6.0..sroa_idx.promoted = load i8, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3775 ; 2 uses
  %.not102 = icmp eq i8 %.sroa.6.0..sroa_idx.promoted, 2
  br i1 %.not102, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCscwxJ8MeEu7n_4http6header3map14MaxSizeReachedE6expectCs9Et6OYOsIUY_22browser_webrtc_example.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 65
  %.sroa.6.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.7.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %.sroa.561.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %.sroa.664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.6.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.8.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.10.0..sroa_idx54.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.561.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.664.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.869.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.675.0..sroa_idx76.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.879.0..sroa_idx80.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.1083.0..sroa_idx84.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.593.0..sroa_idx94.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.696.0..sroa_idx97.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.799.0..sroa_idx100.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.8102.0..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  store i8 %.sroa.6.0..sroa_idx.promoted, ptr %.sroa.6.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.32..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.k, i64 7, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3784)
  %i.ab = invoke noundef zeroext i1 @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.d unwind label %.loopexit, !noalias !3786

.loopexit30:                                      ; preds = %bb.ac
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3775
  br label %.body

.loopexit.split-lp31:                             ; preds = %.invoke, %bb.t, %bb.aw
  %lpad.loopexit.split-lp33 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit30, %.loopexit.split-lp31, %bb.l, %bb.o, %bb.p, %bb.ag, %bb.aj, %bb.ak, %.thread.i, %bb.av
  %eh.lpad-body = phi { ptr, i32 } [ %i.dm, %bb.ak ], [ %.pn119.i, %.thread.i ], [ %i.dm, %bb.aj ], [ %.pn119.i, %bb.av ], [ %i.bt, %bb.o ], [ %i.bl, %bb.l ], [ %i.bt, %bb.p ], [ %i.di, %bb.ag ], [ %lpad.loopexit32, %.loopexit30 ], [ %lpad.loopexit.split-lp33, %.loopexit.split-lp31 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterTNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameNtNtB14_5value11HeaderValueEEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(72) %i.e) #27
          to label %.thread unwind label %bb.ax

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 2, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3793)
  %i.ac = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3796, !noalias !3797, !noundef !12
  %i.ad = load ptr, ptr %i.d, align 8, !alias.scope !3796, !noalias !3797, !nonnull !12, !align !79, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !3798, !nonnull !12, !noundef !12
  %i.ag = load ptr, ptr %.sroa.561.0..sroa_idx.i, align 8, !alias.scope !3796, !noalias !3797, !noundef !12
  %i.ah = load i64, ptr %.sroa.664.0..sroa_idx.i, align 8, !alias.scope !3796, !noalias !3797, !noundef !12
  invoke void %i.af(ptr noundef %i.ac, ptr noundef %i.ag, i64 noundef %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i unwind label %bb.ar, !noalias !3786, !inline_history !80

bb.f:                                             ; preds = %bb.d
  %i.ai = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1) ; 6 uses
  %i.aj = load i16, ptr %i.l, align 8, !alias.scope !3779, !noalias !3786, !noundef !12 ; 3 uses
  %i.ak = and i16 %i.aj, %i.ai
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = load i64, ptr %i.n, align 8, !alias.scope !3779, !noalias !3786, !noundef !12 ; 2 uses
  %i.an = load ptr, ptr %i.m, align 8, !alias.scope !3779, !noalias !3786, !nonnull !12
  %i.ao = zext i16 %i.aj to i64
  %i.ap = load i64, ptr %i.f, align 8, !alias.scope !3779, !noalias !3786 ; 14 uses
  %i.aq = load ptr, ptr %i.o, align 8, !alias.scope !3779, !noalias !3786, !nonnull !12 ; 3 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !3782, !noalias !3799 ; 9 uses
  %i.as = icmp eq ptr %i.ar, null                 ; 7 uses
  %i.at = load i8, ptr %i.p, align 8, !range !27, !alias.scope !3782, !noalias !3799
  %i.au = load i64, ptr %i.q, align 8, !alias.scope !3782, !noalias !3799 ; 9 uses
  %i.av = load ptr, ptr %i.p, align 8, !alias.scope !3782, !noalias !3799 ; 8 uses
  %.not = icmp eq i64 %i.am, 0
  br label %.outer207

.outer207:                                        ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i, %bb.f
  %.sroa.09.0.i.ph = phi i64 [ %i.ch, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ 0, %bb.f ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ %i.ci, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.al, %bb.f ] ; 2 uses
  %i.aw = icmp ult i64 %.sroa.01.0.i.ph, %i.am    ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.aw, %.not.not
  %.sroa.01.0.i.ph.mux = select i1 %i.aw, i64 %.sroa.01.0.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit219, label %infloop

.loopexit219:                                     ; preds = %.outer207
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.01.0.i.ph.mux ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !3786, !noundef !12 ; 2 uses
  %.not.i = icmp eq i16 %i.ay, -1
  br i1 %.not.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.z
  unreachable

bb.h:                                             ; preds = %.loopexit219
  %i.az = zext i16 %i.ay to i64                   ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !noalias !3786, !noundef !12 ; 2 uses
  %i.bc = and i16 %i.bb, %i.aj
  %i.bd = zext i16 %i.bc to i64
  %i.be = sub i64 %.sroa.01.0.i.ph.mux, %i.bd
  %i.bf = and i64 %i.be, %i.ao
  %i.bg = icmp samesign ult i64 %i.bf, %.sroa.09.0.i.ph
  br i1 %i.bg, label %bb.ad, label %bb.u

bb.i:                                             ; preds = %.loopexit219
  %i.bh = icmp ult i64 %i.ap, 88686269585142076
  tail call void @llvm.assume(i1 %i.bh)
  %.sroa.690.0.copyload.i = load ptr, ptr %i.s, align 8, !alias.scope !3782, !noalias !3799 ; 3 uses
  %.sroa.091.0.copyload.i = load ptr, ptr %i.d, align 8, !alias.scope !3784, !noalias !3797 ; 3 uses
  %.sroa.593.0.copyload.i = load ptr, ptr %.sroa.561.0..sroa_idx.i, align 8, !alias.scope !3784, !noalias !3797 ; 2 uses
  %.sroa.696.0.copyload.i = load i64, ptr %.sroa.664.0..sroa_idx.i, align 8, !alias.scope !3784, !noalias !3797 ; 2 uses
  %.sroa.799.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3784, !noalias !3797 ; 2 uses
  %.sroa.8102.0.copyload.i = load i64, ptr %.sroa.6.32..sroa_idx, align 8, !alias.scope !3784, !noalias !3797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3800)
  %i.bi = icmp samesign ugt i64 %i.ap, 32767
  br i1 %i.bi, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3803
  store i16 %i.ai, ptr %i.x, align 8, !noalias !3803
  store ptr %i.ar, ptr %i.y, align 8, !noalias !3806
  store ptr %i.av, ptr %.sroa.675.0..sroa_idx76.i, align 8, !noalias !3806
  store i64 %i.au, ptr %.sroa.879.0..sroa_idx80.i, align 8, !noalias !3806
  store ptr %.sroa.690.0.copyload.i, ptr %.sroa.1083.0..sroa_idx84.i, align 8, !noalias !3806
  store ptr %.sroa.091.0.copyload.i, ptr %i.z, align 8, !noalias !3807
  store ptr %.sroa.593.0.copyload.i, ptr %.sroa.593.0..sroa_idx94.i, align 8, !noalias !3807
  store i64 %.sroa.696.0.copyload.i, ptr %.sroa.696.0..sroa_idx97.i, align 8, !noalias !3807
  store ptr %.sroa.799.0.copyload.i, ptr %.sroa.799.0..sroa_idx100.i, align 8, !noalias !3807
  store i64 %.sroa.8102.0.copyload.i, ptr %.sroa.8102.0..sroa_idx103.i, align 8, !noalias !3807
  store i64 0, ptr %i.c, align 8, !noalias !3803
  %i.bj = load i64, ptr %i.t, align 8, !range !89, !alias.scope !3808, !noalias !3811, !noundef !12
  %i.bk = icmp eq i64 %i.ap, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCsdXHxuUs9k1_10tower_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %._crit_edge161.i unwind label %bb.l, !noalias !3811

._crit_edge161.i:                                 ; preds = %bb.k
  %.pre162.i = load ptr, ptr %i.o, align 8, !alias.scope !3808, !noalias !3811
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3775
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.c) #27
          to label %.body unwind label %bb.m, !noalias !3813

bb.m:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3811
  unreachable

bb.n:                                             ; preds = %bb.i
  store i8 2, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3775
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.091.0.copyload.i) ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.091.0.copyload.i, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !3814, !nonnull !12, !noundef !12
  invoke void %i.bo(ptr noundef %.sroa.799.0.copyload.i, ptr noundef %.sroa.593.0.copyload.i, i64 noundef %.sroa.696.0.copyload.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i unwind label %bb.o, !noalias !3821, !inline_history !80

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i: ; preds = %bb.n
  br i1 %i.as, label %bb.aw, label %.invoke

.invoke:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i39.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i, %bb.as
  %i.bp = phi ptr [ %i.ek, %bb.as ], [ %.sroa.690.0.copyload.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i ], [ %.sroa.658.0.copyload.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i39.i ]
  %i.bq = phi ptr [ %i.el, %bb.as ], [ %i.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i ], [ %i.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i39.i ]
  %i.br = phi i64 [ %i.em, %bb.as ], [ %i.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i ], [ %i.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i39.i ]
  %.pn = phi ptr [ %i.ei, %bb.as ], [ %i.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i ], [ %i.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i39.i ]
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %i.bs = load ptr, ptr %.in, align 8, !noalias !3786, !nonnull !12, !noundef !12
  invoke void %i.bs(ptr noundef %i.bp, ptr noundef %i.bq, i64 noundef %i.br)
          to label %bb.aw unwind label %.loopexit.split-lp31, !inline_history !3822

bb.o:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.as, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !3823, !nonnull !12, !noundef !12
  invoke void %i.bv(ptr noundef %.sroa.690.0.copyload.i, ptr noundef %i.av, i64 noundef %i.au)
          to label %.body unwind label %bb.q, !noalias !3821, !inline_history !68

bb.q:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3821
  unreachable

bb.r:                                             ; preds = %._crit_edge161.i, %bb.j
  %i.bx = phi ptr [ %.pre162.i, %._crit_edge161.i ], [ %i.aq, %bb.j ]
  %i.by = getelementptr inbounds nuw [104 x i8], ptr %i.bx, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.c, i64 104, i1 false), !noalias !3813
  %i.bz = add nuw nsw i64 %i.ap, 1
  store i64 %i.bz, ptr %i.f, align 8, !alias.scope !3808, !noalias !3811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3803
  %i.ca = load i64, ptr %i.n, align 8, !alias.scope !3779, !noalias !3786, !noundef !12 ; 2 uses
  %i.cb = icmp ult i64 %.sroa.01.0.i.ph.mux, %i.ca
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %i.m, align 8, !alias.scope !3779, !noalias !3786, !nonnull !12, !noundef !12
  %i.cd = trunc nuw nsw i64 %i.ap to i16
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.sroa.01.0.i.ph.mux ; 2 uses
  store i16 %i.cd, ptr %i.ce, align 2, !noalias !3786
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i16 %i.ai, ptr %i.cf, align 2, !noalias !3786
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCscwxJ8MeEu7n_4http6header3map14MaxSizeReachedE6expectCs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.t:                                             ; preds = %bb.r
  store i8 2, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3775
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.i.ph.mux, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
          to label %.noexc6 unwind label %.loopexit.split-lp31

.noexc6:                                          ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.h
  %i.cg = icmp eq i16 %i.bb, %i.ai
  br i1 %i.cg, label %bb.v, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.y, %bb.w, %bb.u
  %i.ch = add nuw nsw i64 %.sroa.09.0.i.ph, 1
  %i.ci = add i64 %.sroa.01.0.i.ph.mux, 1
  br label %.outer207

bb.v:                                             ; preds = %bb.u
  %i.cj = icmp ugt i64 %i.ap, %i.az
  br i1 %i.cj, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw [104 x i8], ptr %i.aq, i64 %i.az ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !3786, !noundef !12
  %i.cn = icmp ne ptr %i.cm, null                 ; 2 uses
  %i.co = xor i1 %i.as, %i.cn
  br i1 %i.co, label %bb.x, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.x:                                             ; preds = %bb.w
  br i1 %i.cn, label %bb.y, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !3786, !noundef !12
  %i.cr = icmp eq i64 %i.cq, %i.au
  br i1 %i.cr, label %.split.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

.split.i:                                         ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !3786, !noundef !12
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ct, ptr %i.av, i64 %i.au), !noalias !3786
  %i.cu = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cu, label %bb.aa, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.z:                                             ; preds = %bb.v
  store i8 2, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3775
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.az, i64 noundef %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #25
          to label %bb.g unwind label %.loopexit.split-lp, !noalias !3786

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.x
  tail call void @llvm.assume(i1 %i.as)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cw = load i8, ptr %i.cv, align 8, !range !27, !noalias !3786, !noundef !12
  %i.cx = icmp eq i8 %i.cw, %i.at
  br i1 %i.cx, label %bb.aa, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.aa:                                            ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.split.i
  invoke fastcc void @_RINvNtNtCscwxJ8MeEu7n_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example(i64 noundef %i.az, ptr noalias nofree noundef align 8 dereferenceable(104) %i.ck, ptr noalias nofree noundef align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.ab unwind label %bb.aq, !noalias !3782

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3839)
  br i1 %i.as, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCscwxJ8MeEu7n_4http6header3map14MaxSizeReachedE6expectCs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3851)
  %i.cy = load ptr, ptr %i.s, align 8, !alias.scope !3854, !noalias !3799, !noundef !12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !3855, !nonnull !12, !noundef !12
  invoke void %i.da(ptr noundef %i.cy, ptr noundef %i.av, i64 noundef %i.au)
          to label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCscwxJ8MeEu7n_4http6header3map14MaxSizeReachedE6expectCs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %.loopexit30, !inline_history !3822

bb.ad:                                            ; preds = %bb.h
  %i.db = icmp samesign ugt i64 %.sroa.09.0.i.ph, 511
  %i.dc = load i64, ptr %0, align 8, !range !28, !alias.scope !3779, !noalias !3786
  %i.dd = icmp ne i64 %i.dc, 2
  %.sroa.016.0.i = select i1 %i.db, i1 %i.dd, i1 false
  %.sroa.658.0.copyload.i = load ptr, ptr %i.s, align 8, !alias.scope !3782, !noalias !3799 ; 3 uses
  %.sroa.059.0.copyload.i = load ptr, ptr %i.d, align 8, !alias.scope !3784, !noalias !3797 ; 3 uses
  %.sroa.561.0.copyload.i = load ptr, ptr %.sroa.561.0..sroa_idx.i, align 8, !alias.scope !3784, !noalias !3797 ; 2 uses
  %.sroa.664.0.copyload.i = load i64, ptr %.sroa.664.0..sroa_idx.i, align 8, !alias.scope !3784, !noalias !3797 ; 2 uses
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3784, !noalias !3797 ; 2 uses
  %.sroa.869.0.copyload.i = load i64, ptr %.sroa.6.32..sroa_idx, align 8, !alias.scope !3784, !noalias !3797
  %i.de = icmp ult i64 %i.ap, 88686269585142076
  tail call void @llvm.assume(i1 %i.de)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3856)
  %i.df = icmp samesign ugt i64 %i.ap, 32767
  br i1 %i.df, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3859
  store i16 %i.ai, ptr %i.u, align 8, !noalias !3859
  store ptr %i.ar, ptr %i.v, align 8, !noalias !3862
  store ptr %i.av, ptr %.sroa.6.0..sroa_idx48.i, align 8, !noalias !3862
  store i64 %i.au, ptr %.sroa.8.0..sroa_idx51.i, align 8, !noalias !3862
  store ptr %.sroa.658.0.copyload.i, ptr %.sroa.10.0..sroa_idx54.i, align 8, !noalias !3862
  store ptr %.sroa.059.0.copyload.i, ptr %i.w, align 8, !noalias !3863
  store ptr %.sroa.561.0.copyload.i, ptr %.sroa.561.0..sroa_idx62.i, align 8, !noalias !3863
  store i64 %.sroa.664.0.copyload.i, ptr %.sroa.664.0..sroa_idx65.i, align 8, !noalias !3863
  store ptr %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx67.i, align 8, !noalias !3863
  store i64 %.sroa.869.0.copyload.i, ptr %.sroa.869.0..sroa_idx70.i, align 8, !noalias !3863
  store i64 0, ptr %i.b, align 8, !noalias !3859
  %i.dg = load i64, ptr %i.t, align 8, !range !89, !alias.scope !3864, !noalias !3867, !noundef !12
  %i.dh = icmp eq i64 %i.ap, %i.dg
  br i1 %i.dh, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCsdXHxuUs9k1_10tower_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %._crit_edge.i unwind label %bb.ag, !noalias !3867

._crit_edge.i:                                    ; preds = %bb.af
  %.pre.i = load ptr, ptr %i.o, align 8, !alias.scope !3864, !noalias !3867
  br label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.di = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3775
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #27
          to label %.body unwind label %bb.ah, !noalias !3869

bb.ah:                                            ; preds = %bb.ag
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3867
  unreachable

bb.ai:                                            ; preds = %bb.ad
  store i8 2, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3775
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.059.0.copyload.i) ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload.i, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !3870, !nonnull !12, !noundef !12
  invoke void %i.dl(ptr noundef %.sroa.7.0.copyload.i, ptr noundef %.sroa.561.0.copyload.i, i64 noundef %.sroa.664.0.copyload.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i39.i unwind label %bb.aj, !noalias !3877, !inline_history !80

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i39.i: ; preds = %bb.ai
  br i1 %i.as, label %bb.aw, label %.invoke

bb.aj:                                            ; preds = %bb.ai
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.as, label %.body, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !3878, !nonnull !12, !noundef !12
  invoke void %i.do(ptr noundef %.sroa.658.0.copyload.i, ptr noundef %i.av, i64 noundef %i.au)
          to label %.body unwind label %bb.al, !noalias !3877, !inline_history !68

bb.al:                                            ; preds = %bb.ak
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3877
  unreachable

bb.am:                                            ; preds = %._crit_edge.i, %bb.ae
  %i.dq = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.aq, %bb.ae ]
  %i.dr = getelementptr inbounds nuw [104 x i8], ptr %i.dq, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dr, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !3869
  %i.ds = add nuw nsw i64 %i.ap, 1
  store i64 %i.ds, ptr %i.f, align 8, !alias.scope !3864, !noalias !3867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3859
  %i.dt = load ptr, ptr %i.m, align 8, !alias.scope !3891, !noalias !3894, !nonnull !12, !noundef !12
  %i.du = load i64, ptr %i.n, align 8, !alias.scope !3891, !noalias !3894, !noundef !12 ; 2 uses
  %i.dv = trunc nuw nsw i64 %i.ap to i16
  %.not224 = icmp eq i64 %i.du, 0
  br label %.outer

.outer:                                           ; preds = %bb.an, %bb.am
  %.sroa.6.0.i.i.ph = phi i16 [ %i.ec, %bb.an ], [ %i.ai, %bb.am ] ; 2 uses
  %.sroa.09.0.i.i.ph = phi i16 [ %i.dy, %bb.an ], [ %i.dv, %bb.am ] ; 2 uses
  %.sroa.07.0.i.i.ph = phi i64 [ %i.eb, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ed, %bb.an ], [ %.sroa.01.0.i.ph.mux, %bb.am ] ; 2 uses
  %i.dw = icmp ult i64 %.sroa.0.0.i.i.ph, %i.du   ; 2 uses
  %.not224.not = xor i1 %.not224, true
  %brmerge237 = or i1 %i.dw, %.not224.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.dw, i64 %.sroa.0.0.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge237, label %.loopexit223, label %infloop236

.loopexit223:                                     ; preds = %.outer
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.sroa.0.0.i.i.ph.mux ; 4 uses
  %i.dy = load i16, ptr %i.dx, align 2, !noalias !3894, !noundef !12 ; 2 uses
  %i.dz = icmp eq i16 %i.dy, -1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 2 ; 3 uses
  br i1 %i.dz, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.loopexit223
  %i.eb = add i64 %.sroa.07.0.i.i.ph, 1
  %i.ec = load i16, ptr %i.ea, align 2, !noalias !3894, !noundef !12
  store i16 %.sroa.09.0.i.i.ph, ptr %i.dx, align 2, !noalias !3894
  store i16 %.sroa.6.0.i.i.ph, ptr %i.ea, align 2, !noalias !3894
  %i.ed = add nuw i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.ao:                                            ; preds = %.loopexit223
  store i16 %.sroa.09.0.i.i.ph, ptr %i.dx, align 2, !noalias !3894
  store i16 %.sroa.6.0.i.i.ph, ptr %i.ea, align 2, !noalias !3894
  %i.ee = icmp ugt i64 %.sroa.07.0.i.i.ph, 127
  %or.cond.i.i = select i1 %.sroa.016.0.i, i1 true, i1 %i.ee
  %i.ef = load i64, ptr %0, align 8, !range !28, !alias.scope !3891, !noalias !3894
  %i.eg = icmp eq i64 %i.ef, 0
  %or.cond3.i.i = select i1 %or.cond.i.i, i1 %i.eg, i1 false
  br i1 %or.cond3.i.i, label %bb.ap, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCscwxJ8MeEu7n_4http6header3map14MaxSizeReachedE6expectCs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.ap:                                            ; preds = %bb.ao
  store i64 1, ptr %0, align 8, !alias.scope !3891, !noalias !3894
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCscwxJ8MeEu7n_4http6header3map14MaxSizeReachedE6expectCs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.aq:                                            ; preds = %bb.aa
  %lpad.thr_comm.split-lp125.i = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3775
  br label %.thread.i

bb.ar:                                            ; preds = %bb.e
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.e
  %i.ei = load ptr, ptr %1, align 8, !alias.scope !3897, !noalias !3799, !noundef !12 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  %i.ek = load ptr, ptr %i.s, align 8, !alias.scope !3902, !noalias !3799, !noundef !12
  %i.el = load ptr, ptr %i.p, align 8, !alias.scope !3902, !noalias !3799, !noundef !12
  %i.em = load i64, ptr %i.q, align 8, !alias.scope !3902, !noalias !3799, !noundef !12
end_hunk_1
begin_hunk_2_@_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE4pollB12_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageB12_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !2840, !noundef !12
  %i.d = invoke noundef i64 @_RNvMs2_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.c)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !range !2216, !noundef !12
  switch i32 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEB1w_.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EBF_(ptr noundef nonnull align 8 %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEB1w_.exit unwind label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4727)
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4727, !noundef !12
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEB1w_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4727, !noundef !12 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4727 ; 6 uses
  %i.m = icmp eq ptr %.val.i.i, null
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEB1w_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.n = load ptr, ptr %.val1.i.i, align 8, !invariant.load !12, !noalias !4727 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.n(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j, !noalias !4727

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !89, !invariant.load !12, !noalias !4727 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEB1w_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !797, !invariant.load !12, !noalias !4727
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #31, !noalias !4727
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEB1w_.exit

bb.j:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !89, !invariant.load !12, !noalias !4727 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !797, !invariant.load !12, !noalias !4727
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #31, !noalias !4727
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.t, %bb.k ], [ %i.t, %bb.j ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  invoke void @_RNvXs3_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEB1w_.exit: ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %bb.b, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  call void @_RNvXs3_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %.body, %bb.n
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread:                                          ; preds = %.body, %bb.n
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ab, %bb.n ]
  resume { ptr, i32 } %.pn8

bb.n:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core5StageNCNvCs9Et6OYOsIUY_22browser_webrtc_example5serve0EEB1w_(ptr noundef nonnull align 8 %1) #27
          to label %.thread unwind label %bb.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @67, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6format(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  %i.d = lshr i64 %i.b, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4730)
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4736)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4739
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !4739
  %i.e = load i64, ptr %i.a, align 8, !range !371, !noalias !4739, !noundef !12
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !4517, !noalias !4739, !noundef !12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i, !prof !3665

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !noalias !4739
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #25, !noalias !4739
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !noalias !4739, !nonnull !12, !noundef !12 ; 2 uses
  %i.l = icmp ule i64 %i.d, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4739
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_RNvYNvYeNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTReEE9call_onceCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 @53, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !4746
  br label %_RNvYNvYeNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTReEE9call_onceCs9Et6OYOsIUY_22browser_webrtc_example.exit.i

_RNvYNvYeNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTReEE9call_onceCs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.d, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i
  store i64 %i.h, ptr %0, align 8, !alias.scope !4747, !noalias !4748
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !4747, !noalias !4748
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !4747, !noalias !4748
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @53, ptr noundef nonnull %1), !noalias !4749
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %_RNvYNvYeNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTReEE9call_onceCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameINtB2_10EquivalentRBq_E10equivalentCs9Et6OYOsIUY_22browser_webrtc_example(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !12, !align !79, !noundef !12 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !noundef !12
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  %i.c = load ptr, ptr %.val, align 8, !noundef !12 ; 2 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !12
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !12
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.n, ptr %i.l, i64 %i.g)
  %i.o = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !27, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !27, !noundef !12
  %i.t = icmp eq i8 %i.q, %i.s
  br label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.shrunk.i.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameINtB2_10EquivalentBq_E10equivalentCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !align !79, !noundef !12 ; 4 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !12, !align !79, !noundef !12 ; 4 uses
  %i.a = load ptr, ptr %.val, align 8, !noundef !12
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  %i.c = load ptr, ptr %.val1, align 8, !noundef !12 ; 2 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameNtB7_9PartialEq2eqCs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !12
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameNtB7_9PartialEq2eqCs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !12
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.n, ptr %i.l, i64 %i.g)
  %i.o = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameNtB7_9PartialEq2eqCs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !27, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !27, !noundef !12
  %i.t = icmp eq i8 %i.q, %i.s
  br label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameNtB7_9PartialEq2eqCs9Et6OYOsIUY_22browser_webrtc_example.exit

_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameNtB7_9PartialEq2eqCs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.shrunk.i.i.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i.i.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4753)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4750, !noalias !4753, !noundef !12
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !4750, !noalias !4753
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4750, !noalias !4753, !noundef !12 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !4755, !noalias !4750
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !4755, !noalias !4750
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !4755, !noalias !4750, !noundef !12
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !4750, !noalias !4753, !noundef !12
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !4750, !noalias !4753
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0.i            ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !4750, !noalias !4753
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19.i = load i64, ptr %i.aj, align 8, !alias.scope !4750, !noalias !4753
  %.promoted20.i = load i64, ptr %i.ak, align 8, !alias.scope !4758, !noalias !4753
  %.promoted22.i = load i64, ptr %i.al, align 8, !alias.scope !4758, !noalias !4753
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !4750, !noalias !4753, !noundef !12
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !4761, !noalias !4753, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !4761, !noalias !4753, !noundef !12 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !4761, !noalias !4753, !noundef !12
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !4761, !noalias !4753
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !4761, !noalias !4753
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !4761, !noalias !4753
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8, !alias.scope !4750, !noalias !4753
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.bj = add i64 %i.e, %2
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9Et6OYOsIUY_22browser_webrtc_example.exit

._crit_edge.i:                                    ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8, !alias.scope !4750, !noalias !4753
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !4758, !noalias !4753
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !4758, !noalias !4753
  store i64 %i.da, ptr %0, align 8, !alias.scope !4750, !noalias !4753
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %i.db, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.bl, align 1, !alias.scope !4764, !noalias !4750
  %i.bm = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bq, align 1, !alias.scope !4764, !noalias !4750
  %i.br = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11.i
  %i.bv = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !4764, !noalias !4750, !noundef !12
  %i.cb = zext i8 %i.ca to i64
end_hunk_2
