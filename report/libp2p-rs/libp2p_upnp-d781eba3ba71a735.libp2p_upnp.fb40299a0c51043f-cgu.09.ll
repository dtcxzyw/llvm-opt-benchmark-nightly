Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_upnp-d781eba3ba71a735.libp2p_upnp.fb40299a0c51043f-cgu.09?download=true
inline.NumInlined: 964
inline.NumDeleted: 476
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.4.2/src/header/map.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\C9\04\00\00\0C\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00:\05\00\00\0C\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00F\05\00\00\11\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\FA\05\00\00=\00\00\00" }>, align 8
@5 = private unnamed_addr constant [23 x i8] c"size overflows MAX_SIZE", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\A1\04\00\00\1D\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\8D\0A\00\00\0E\00\00\00" }>, align 8
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
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\D9\02\00\00\0E\00\00\00" }>, align 8
@27 = private unnamed_addr constant [36 x i8] c"expected a header name, but got None", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00u\08\00\00 \00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00z\08\00\008\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\008\0B\00\00\0E\00\00\00" }>, align 8
@31 = private unnamed_addr constant [17 x i8] c"DeletePortMapping", align 1
@32 = private unnamed_addr constant [14 x i8] c"AddPortMapping", align 1
@33 = private unnamed_addr constant [5 x i8] c"\C0\01:\C0\00", align 1
@34 = private unnamed_addr constant [30 x i8] c"uri host is valid header value", align 1
@35 = private unnamed_addr constant [115 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hyper-util-0.1.20/src/client/legacy/client.rs\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"r\00\00\00\00\00\00\004\01\00\00\16\00\00\00" }>, align 8
@37 = private unnamed_addr constant [22 x i8] c"authority implies host", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"r\00\00\00\00\00\00\00-\01\00\00/\00\00\00" }>, align 8
@39 = private unnamed_addr constant [66 x i8] c"\22urn:schemas-upnp-org:service:WANIPConnection:1#DeletePortMapping\22", align 1
@40 = private unnamed_addr constant [25 x i8] c"DeletePortMappingResponse", align 1
@41 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/igd-next-0.17.1/src/aio/gateway.rs\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"g\00\00\00\00\00\00\00\F2\00\00\00w\00\00\00" }>, align 8
@43 = private unnamed_addr constant [69 x i8] c"\22urn:schemas-upnp-org:service:WANIPConnection:1#GetExternalIPAddress\22", align 1
@44 = private unnamed_addr constant [28 x i8] c"GetExternalIPAddressResponse", align 1
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"g\00\00\00\00\00\00\00%\00\00\00O\00\00\00" }>, align 8
@46 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"g\00\00\00\00\00\00\00\1E\00\00\00q\00\00\00" }>, align 8
@48 = private unnamed_addr constant [63 x i8] c"\22urn:schemas-upnp-org:service:WANIPConnection:1#AddPortMapping\22", align 1
@49 = private unnamed_addr constant [22 x i8] c"AddPortMappingResponse", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"g\00\00\00\00\00\00\00\C2\00\00\00#\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"g\00\00\00\00\00\00\00\E0\00\00\00#\00\00\00" }>, align 8
@52 = private unnamed_addr constant [58 x i8] c"internal error: entered unreachable code: unexpected stage", align 1
@53 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.53.1/src/runtime/task/core.rs\00", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @53, [16 x i8] c"j\00\00\00\00\00\00\00u\01\00\00\1A\00\00\00" }>, align 8
@55 = private unnamed_addr constant [28 x i8] c"protocols/upnp/src/tokio.rs\00", align 1
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c"\1B\00\00\00\00\00\00\00c\00\00\00\12\00\00\00" }>, align 8
@57 = private unnamed_addr constant [19 x i8] c"rust-libp2p mapping", align 1
@58 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/igd-next-0.17.1/src/aio/tokio.rs\00", align 1
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @58, [16 x i8] c"e\00\00\00\00\00\00\001\00\00\00\0B\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @58, [16 x i8] c"e\00\00\00\00\00\00\00/\00\00\00\\\00\00\00" }>, align 8
@61 = private unnamed_addr constant [4 x i8] c"POST", align 1
@62 = private unnamed_addr constant [10 x i8] c"SOAPAction", align 1
@63 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\1D", [23 x i8] undef }>, align 8
@64 = private unnamed_addr constant [8 x i8] c"text/xml", align 1
@65 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\18", [23 x i8] undef }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @58, [16 x i8] c"e\00\00\00\00\00\00\00\1A\00\00\00^\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs14_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_14MaxSizeReachedNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCscwxJ8MeEu7n_4http6header5valueNtB5_18InvalidHeaderValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@69 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes13static_to_vec, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes13static_to_mut, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique, ptr @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop }>, align 8
@70 = private unnamed_addr constant [71 x i8] c"Dinternal error: entered unreachable code: write_body invalid state: \C0\00", align 1
@71 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hyper-1.11.0/src/proto/h1/conn.rs\00", align 1
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @71, [16 x i8] c"f\00\00\00\00\00\00\00\D3\02\00\00\12\00\00\00" }>, align 8
@73 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\14", [23 x i8] undef }>, align 8
@74 = private unnamed_addr constant [10 x i8] c"keep-alive", align 1
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\09\05\00\00#\00\00\00" }>, align 8
@76 = private unnamed_addr constant [25 x i8] c"HTTP/1.1 100 Continue\0D\0A\0D\0A", align 1
@77 = private unnamed_addr constant [75 x i8] c"Hinternal error: entered unreachable code: poll_read_body invalid state: \C0\00", align 1
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @71, [16 x i8] c"f\00\00\00\00\00\00\00\A5\01\00\00\12\00\00\00" }>, align 8
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @71, [16 x i8] c"f\00\00\00\00\00\00\00\DD\00\00\00 \00\00\00" }>, align 8
@80 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00C", [23 x i8] undef }>, align 8
@81 = private unnamed_addr constant [75 x i8] c"Hinternal error: entered unreachable code: write_trailers invalid state: \C0\00", align 1
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @71, [16 x i8] c"f\00\00\00\00\00\00\00\EE\02\00\00\12\00\00\00" }>, align 8
@83 = private unnamed_addr constant [5 x i8] c"close", align 1
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @71, [16 x i8] c"f\00\00\00\00\00\00\00\00\03\00\00\12\00\00\00" }>, align 8
@85 = private unnamed_addr constant [5 x i8] c"0\0D\0A\0D\0A", align 1
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00V\05\00\00*\00\00\00" }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\1A\07\00\00!\00\00\00" }>, align 8
@88 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBT_6future6future6Futurep6OutputuNtNtBT_6marker4SendEL_EEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBW_6future6future6Futurep6OutputuNtNtBW_6marker4SendEL_EEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1b_6future6future6Futurep6OutputuNtNtB1b_6marker4SendEL_EEINtNtB1H_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB17_6future6future6Futurep6OutputuNtNtB17_6marker4SendEL_EEINtNtB1D_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBX_6future6future6Futurep6OutputuNtNtBX_6marker4SendEL_EEINtNtB1t_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBT_6future6future6Futurep6OutputuNtNtBT_6marker4SendEL_EEINtNtB1p_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBW_6future6future6Futurep6OutputuNtNtBW_6marker4SendEL_EEINtNtB1s_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1b_6future6future6Futurep6OutputuNtNtB1b_6marker4SendEL_EEINtNtB1H_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB17_6future6future6Futurep6OutputuNtNtB17_6marker4SendEL_EEINtNtB1D_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBX_6future6future6Futurep6OutputuNtNtBX_6marker4SendEL_EEINtNtB1t_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBP_IB1l_DNtNtNtBT_6future6future6Futurep6OutputuNtNtBT_6marker4SendEL_EEEEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBS_IB1o_DNtNtNtBW_6future6future6Futurep6OutputuNtNtBW_6marker4SendEL_EEEEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB17_IB1D_DNtNtNtB1b_6future6future6Futurep6OutputuNtNtB1b_6marker4SendEL_EEEEINtNtB1H_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB13_IB1z_DNtNtNtB17_6future6future6Futurep6OutputuNtNtB17_6marker4SendEL_EEEEINtNtB1D_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBT_IB1p_DNtNtNtBX_6future6future6Futurep6OutputuNtNtBX_6marker4SendEL_EEEEINtNtB1t_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@91 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBP_IB1l_DNtNtNtBT_6future6future6Futurep6OutputuNtNtBT_6marker4SendEL_EEEEINtNtB1p_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBS_IB1o_DNtNtNtBW_6future6future6Futurep6OutputuNtNtBW_6marker4SendEL_EEEEINtNtB1s_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB17_IB1D_DNtNtNtB1b_6future6future6Futurep6OutputuNtNtB1b_6marker4SendEL_EEEEINtNtB1H_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIB13_IB1z_DNtNtNtB17_6future6future6Futurep6OutputuNtNtB17_6marker4SendEL_EEEEINtNtB1D_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxIBT_IB1p_DNtNtNtBX_6future6future6Futurep6OutputuNtNtBX_6marker4SendEL_EEEEINtNtB1t_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@92 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1p_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB1Z_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB22_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2b_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1H_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2h_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1D_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB2d_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1t_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB23_, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1p_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB1Z_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1s_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB22_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1B_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2b_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1H_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2h_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1D_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB2d_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0EEINtNtB1t_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB23_, [24 x i8] c"P\00\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@94 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEBU_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEBX_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB1c_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB18_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEBY_, [24 x i8] c"\00\0B\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@95 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }> <{ ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw4pollNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEBU_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8scheduleINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECslzoSl9yxMOF_11libp2p_upnp, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw7deallocNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEBX_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw15try_read_outputNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB16_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw21drop_join_handle_slowNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB1c_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw17drop_abort_handleNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB18_, ptr @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownNCNvNtCslzoSl9yxMOF_11libp2p_upnp5tokio14search_gateway0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEBY_, [24 x i8] c"\00\0B\00\00\00\00\00\00 \00\00\00\00\00\00\00(\00\00\00\00\00\00\00" }>, align 8
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\009\0D\00\00*\00\00\00" }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00!\0B\00\00!\00\00\00" }>, align 8
@98 = private unnamed_addr constant [4 x i8] c"Init", align 1
@99 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16decode7DecoderNtB6_5Debug3fmtCslzoSl9yxMOF_11libp2p_upnp }>, align 8
@100 = private unnamed_addr constant [8 x i8] c"Continue", align 1
@101 = private unnamed_addr constant [4 x i8] c"Body", align 1
@102 = private unnamed_addr constant [9 x i8] c"KeepAlive", align 1
@103 = private unnamed_addr constant [6 x i8] c"Closed", align 1
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\\\0C\00\000\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap10try_entry2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.833 = alloca [16 x i8], align 8          ; 2 uses
  %i.a = invoke noundef zeroext i1 @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 -1, ptr %i.b, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.c = load ptr, ptr %2, align 8, !alias.scope !10, !noundef !11 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !24, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !24, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !24, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !24, !noundef !11
  tail call void %i.h(ptr noundef %i.f, ptr noundef %i.j, i64 noundef %i.l), !noalias !24, !inline_history !25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit

bb.e:                                             ; preds = %bb.b
  %i.m = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load i16, ptr %i.n, align 8, !noundef !11 ; 3 uses
  %i.p = and i16 %i.o, %i.m
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !11
  %i.v = zext i16 %i.o to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !11
  %i.aa = load ptr, ptr %2, align 8               ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !26
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
  %i.al = load i16, ptr %i.ak, align 2, !noundef !11 ; 2 uses
  %.not = icmp eq i16 %i.al, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.n
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.am = zext i16 %i.al to i64                   ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !noundef !11 ; 2 uses
  %i.ap = and i16 %i.ao, %i.o
  %i.aq = zext i16 %i.ap to i64
  %i.ar = sub i64 %.sroa.0.0.ph.mux, %i.aq
  %i.as = and i64 %i.ar, %i.v
  %i.at = icmp samesign ult i64 %i.as, %.sroa.07.0.ph
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit, %bb.g
  %i.au = icmp samesign ugt i64 %.sroa.07.0.ph, 511
  %i.av = load i64, ptr %1, align 8, !range !27
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit

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
  %i.bd = load ptr, ptr %i.bc, align 8, !noundef !11
  %i.be = icmp ne ptr %i.bd, null                 ; 2 uses
  %i.bf = xor i1 %i.be, %i.ab
  br i1 %i.bf, label %bb.l, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.k
  br i1 %i.be, label %bb.m, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !11
  %i.bi = icmp eq i64 %i.bh, %i.af
  br i1 %i.bi, label %.split, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !noundef !11
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.bk, ptr %i.ag, i64 %i.af)
  %i.bl = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bl, label %bb.o, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %bb.j
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
          to label %bb.f unwind label %bb.p

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l
  tail call void @llvm.assume(i1 %i.ab)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bn = load i8, ptr %i.bm, align 8, !range !26, !noundef !11
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit

bb.o:                                             ; preds = %.split
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.523.0..sroa_idx26, align 8
  %.sroa.728.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %.sroa.728.0..sroa_idx31, align 8
  %.sroa.10.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.10.0..sroa_idx48, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !46, !noundef !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !46, !nonnull !11, !noundef !11
  tail call void %i.bs(ptr noundef %i.bq, ptr noundef %i.ag, i64 noundef %i.af), !noalias !46, !inline_history !25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.o, %.thread, %bb.d, %bb.c, %bb.h
  ret void

.noexc:                                           ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.bt

bb.p:                                             ; preds = %bb.a, %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.bu = load ptr, ptr %2, align 8, !alias.scope !53, !noundef !11 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.noexc, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !66, !noundef !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !66, !nonnull !11, !noundef !11
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !66, !noundef !11
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !66, !noundef !11
  invoke void %i.bz(ptr noundef %i.bx, ptr noundef %i.cb, i64 noundef %i.cd)
          to label %.noexc unwind label %bb.r, !inline_history !67

bb.r:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = invoke noundef zeroext i1 @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.av

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !77, !noundef !11
  %i.h = load ptr, ptr %3, align 8, !alias.scope !77, !nonnull !11, !align !78, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !77, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !77, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !77, !noundef !11
  invoke void %i.j(ptr noundef %i.g, ptr noundef %i.l, i64 noundef %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.at, !inline_history !79

bb.d:                                             ; preds = %bb.b
  %i.o = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i16, ptr %i.p, align 8, !noundef !11 ; 3 uses
  %i.r = and i16 %i.q, %i.o
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !11 ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !nonnull !11
  %i.x = zext i16 %i.q to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8              ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !11 ; 3 uses
  %i.ac = load ptr, ptr %2, align 8               ; 9 uses
  %i.ad = icmp eq ptr %i.ac, null                 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !26
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
  %i.al = load i16, ptr %i.ak, align 2, !noundef !11 ; 2 uses
  %.not = icmp eq i16 %i.al, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.z
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.am = zext i16 %i.al to i64                   ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !noundef !11 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.av = icmp samesign ugt i64 %i.z, 32767
  br i1 %i.av, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !83
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 %i.o, ptr %i.ax, align 8, !noalias !83
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ac, ptr %i.ay, align 8, !noalias !86
  %.sroa.680.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.ai, ptr %.sroa.680.0..sroa_idx81, align 8, !noalias !86
  %.sroa.884.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.ah, ptr %.sroa.884.0..sroa_idx85, align 8, !noalias !86
  %.sroa.1088.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.sroa.695.0.copyload, ptr %.sroa.1088.0..sroa_idx89, align 8, !noalias !86
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.096.0.copyload, ptr %i.az, align 8, !noalias !87
  %.sroa.598.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.598.0.copyload, ptr %.sroa.598.0..sroa_idx99, align 8, !noalias !87
  %.sroa.6101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.6101.0.copyload, ptr %.sroa.6101.0..sroa_idx102, align 8, !noalias !87
  %.sroa.7104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.7104.0.copyload, ptr %.sroa.7104.0..sroa_idx105, align 8, !noalias !87
  %.sroa.8107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.8107.0.copyload, ptr %.sroa.8107.0..sroa_idx108, align 8, !noalias !87
  store i64 0, ptr %i.b, align 8, !noalias !83
  %i.ba = load i64, ptr %i.aw, align 8, !range !88, !alias.scope !89, !noalias !92, !noundef !11
  %i.bb = icmp eq i64 %i.z, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs66a4hBEq2Hz_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %._crit_edge165 unwind label %bb.j, !noalias !92

._crit_edge165:                                   ; preds = %bb.i
  %.pre166 = load ptr, ptr %i.aa, align 8, !alias.scope !89, !noalias !92
  br label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit40 unwind label %bb.k, !noalias !94

bb.k:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !92
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.096.0.copyload) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.096.0.copyload, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !95, !nonnull !11, !noundef !11
  invoke void %i.bf(ptr noundef %.sroa.7104.0.copyload, ptr noundef %.sroa.598.0.copyload, i64 noundef %.sroa.6101.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i unwind label %bb.n, !noalias !83, !inline_history !79

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %bb.l
  br i1 %i.ad, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !102, !nonnull !11, !noundef !11
  tail call void %i.bh(ptr noundef %.sroa.695.0.copyload, ptr noundef %i.ai, i64 noundef %i.ah), !inline_history !115
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !116, !nonnull !11, !noundef !11
  invoke void %i.bk(ptr noundef %.sroa.695.0.copyload, ptr noundef %i.ai, i64 noundef %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit40 unwind label %bb.p, !noalias !83, !inline_history !67

bb.p:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !83
  unreachable

bb.q:                                             ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.bm, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit

bb.r:                                             ; preds = %._crit_edge165, %bb.h
  %i.bn = phi ptr [ %.pre166, %._crit_edge165 ], [ %i.ab, %bb.h ]
  %i.bo = getelementptr inbounds nuw [104 x i8], ptr %i.bn, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !94
  %i.bp = add nuw nsw i64 %i.z, 1
  store i64 %i.bp, ptr %i.y, align 8, !alias.scope !89, !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !83
  %i.bq = load i64, ptr %i.u, align 8, !noundef !11 ; 2 uses
  %i.br = icmp ult i64 %.sroa.0.0.ph.mux, %i.bq
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11
  %i.bt = trunc nuw nsw i64 %i.z to i16
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.0.0.ph.mux ; 2 uses
  store i16 %i.bt, ptr %i.bu, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i16 %i.o, ptr %i.bv, align 2
  br label %.thread

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.ph.mux, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22
  unreachable

.thread:                                          ; preds = %bb.aq, %bb.ap, %bb.s
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit

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
  %i.cc = load ptr, ptr %i.cb, align 8, !noundef !11
  %i.cd = icmp ne ptr %i.cc, null                 ; 2 uses
  %i.ce = xor i1 %i.cd, %i.ad
  br i1 %i.ce, label %bb.x, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.x:                                             ; preds = %bb.w
  br i1 %i.cd, label %bb.y, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !11
  %i.ch = icmp eq i64 %i.cg, %i.ah
  br i1 %i.ch, label %.split, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !noundef !11
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.cj, ptr %i.ai, i64 %i.ah)
  %i.ck = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ck, label %bb.aa, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.z:                                             ; preds = %bb.v
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %bb.e unwind label %bb.av

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.x
  tail call void @llvm.assume(i1 %i.ad)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cm = load i8, ptr %i.cl, align 8, !range !26, !noundef !11
  %i.cn = icmp eq i8 %i.cm, %i.af
  br i1 %i.cn, label %bb.aa, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.aa:                                            ; preds = %.split, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap15insert_occupiedCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef align 8 dereferenceable(96) %1, i64 noundef %i.am, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %3)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !147, !noundef !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !147, !nonnull !11, !noundef !11
  tail call void %i.cr(ptr noundef %i.cp, ptr noundef %i.ai, i64 noundef %i.ah), !noalias !147, !inline_history !25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit, %bb.ac, %bb.ab, %bb.q, %bb.ar, %.thread
  ret void

bb.ad:                                            ; preds = %bb.f
  %i.cs = icmp samesign ugt i64 %.sroa.08.0.ph, 511
  %i.ct = load i64, ptr %1, align 8, !range !27
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.cw = icmp samesign ugt i64 %i.z, 32767
  br i1 %i.cw, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !151
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i16 %i.o, ptr %i.cy, align 8, !noalias !151
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ac, ptr %i.cz, align 8, !noalias !154
  %.sroa.6.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.ai, ptr %.sroa.6.0..sroa_idx52, align 8, !noalias !154
  %.sroa.8.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.ah, ptr %.sroa.8.0..sroa_idx55, align 8, !noalias !154
  %.sroa.10.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %.sroa.663.0.copyload, ptr %.sroa.10.0..sroa_idx58, align 8, !noalias !154
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.064.0.copyload, ptr %i.da, align 8, !noalias !155
  %.sroa.566.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.566.0.copyload, ptr %.sroa.566.0..sroa_idx67, align 8, !noalias !155
  %.sroa.669.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.669.0.copyload, ptr %.sroa.669.0..sroa_idx70, align 8, !noalias !155
  %.sroa.7.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx72, align 8, !noalias !155
  %.sroa.874.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.874.0.copyload, ptr %.sroa.874.0..sroa_idx75, align 8, !noalias !155
  store i64 0, ptr %i.a, align 8, !noalias !151
  %i.db = load i64, ptr %i.cx, align 8, !range !88, !alias.scope !156, !noalias !159, !noundef !11
  %i.dc = icmp eq i64 %i.z, %i.db
  br i1 %i.dc, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs66a4hBEq2Hz_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %._crit_edge unwind label %bb.ag, !noalias !159

._crit_edge:                                      ; preds = %bb.af
  %.pre = load ptr, ptr %i.aa, align 8, !alias.scope !156, !noalias !159
  br label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.a) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit40 unwind label %bb.ah, !noalias !161

bb.ah:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !159
  unreachable

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.064.0.copyload) ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.064.0.copyload, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !162, !nonnull !11, !noundef !11
  invoke void %i.dg(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.566.0.copyload, i64 noundef %.sroa.669.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i43 unwind label %bb.ak, !noalias !151, !inline_history !79

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i43: ; preds = %bb.ai
  br i1 %i.ad, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i43
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !169, !nonnull !11, !noundef !11
  tail call void %i.di(ptr noundef %.sroa.663.0.copyload, ptr noundef %i.ai, i64 noundef %i.ah), !inline_history !115
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit40, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !182, !nonnull !11, !noundef !11
  invoke void %i.dl(ptr noundef %.sroa.663.0.copyload, ptr noundef %i.ai, i64 noundef %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit40 unwind label %bb.am, !noalias !151, !inline_history !67

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !151
  unreachable

bb.an:                                            ; preds = %._crit_edge, %bb.ae
  %i.dn = phi ptr [ %.pre, %._crit_edge ], [ %i.ab, %bb.ae ]
  %i.do = getelementptr inbounds nuw [104 x i8], ptr %i.dn, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.do, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !161
  %i.dp = add nuw nsw i64 %i.z, 1
  store i64 %i.dp, ptr %i.y, align 8, !alias.scope !156, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !151
  %i.dq = load ptr, ptr %i.t, align 8, !alias.scope !195, !noalias !198, !nonnull !11, !noundef !11
  %i.dr = load i64, ptr %i.u, align 8, !alias.scope !195, !noalias !198, !noundef !11 ; 2 uses
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
  %i.dv = load i16, ptr %i.du, align 2, !noalias !198, !noundef !11 ; 2 uses
  %i.dw = icmp eq i16 %i.dv, -1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 2 ; 3 uses
  br i1 %i.dw, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.loopexit211
  %i.dy = add i64 %.sroa.07.0.i.ph, 1
  %i.dz = load i16, ptr %i.dx, align 2, !noalias !198, !noundef !11
  store i16 %.sroa.09.0.i.ph, ptr %i.du, align 2, !noalias !198
  store i16 %.sroa.6.0.i.ph, ptr %i.dx, align 2, !noalias !198
  %i.ea = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.ap:                                            ; preds = %.loopexit211
  store i16 %.sroa.09.0.i.ph, ptr %i.du, align 2, !noalias !198
  store i16 %.sroa.6.0.i.ph, ptr %i.dx, align 2, !noalias !198
  %i.eb = icmp ugt i64 %.sroa.07.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.013.0, i1 true, i1 %i.eb
  %i.ec = load i64, ptr %1, align 8, !range !27, !alias.scope !195, !noalias !198
  %i.ed = icmp eq i64 %i.ec, 0
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ed, i1 false
  br i1 %or.cond3.i, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  store i64 1, ptr %1, align 8, !alias.scope !195, !noalias !198
  br label %.thread

bb.ar:                                            ; preds = %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i43
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.ee, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit

bb.as:                                            ; preds = %bb.aa
  %lpad.thr_comm.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %.thread121

bb.at:                                            ; preds = %bb.c
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.thread121

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.eg = load ptr, ptr %2, align 8, !alias.scope !207, !noundef !11 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.au

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !220, !noundef !11
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !220, !nonnull !11, !noundef !11
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !220, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !220, !noundef !11
  tail call void %i.el(ptr noundef %i.ej, ptr noundef %i.en, i64 noundef %i.ep), !noalias !220, !inline_history !25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit

bb.av:                                            ; preds = %bb.z, %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !230, !noundef !11
  %i.es = load ptr, ptr %3, align 8, !alias.scope !230, !nonnull !11, !align !78, !noundef !11
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !230, !nonnull !11, !noundef !11
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !230, !noundef !11
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !230, !noundef !11
  invoke void %i.eu(ptr noundef %i.er, ptr noundef %i.ew, i64 noundef %i.ey)
          to label %.thread121 unwind label %bb.aw, !inline_history !79

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit40: ; preds = %bb.o, %bb.n, %bb.j, %bb.al, %bb.ak, %bb.ag, %.thread121, %bb.ax
  %.pn124 = phi { ptr, i32 } [ %.pn125, %.thread121 ], [ %i.dj, %bb.ak ], [ %.pn125, %bb.ax ], [ %i.bi, %bb.n ], [ %i.bc, %bb.j ], [ %i.bi, %bb.o ], [ %i.dd, %bb.ag ], [ %i.dj, %bb.al ]
  resume { ptr, i32 } %.pn124

.thread121:                                       ; preds = %bb.av, %bb.at, %bb.as
  %.pn125 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp131, %bb.as ], [ %i.ef, %bb.at ], [ %lpad.thr_comm.split-lp, %bb.av ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.fa = load ptr, ptr %2, align 8, !alias.scope !237, !noundef !11 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit40, label %bb.ax

bb.ax:                                            ; preds = %.thread121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !250, !noundef !11
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !250, !nonnull !11, !noundef !11
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !250, !noundef !11
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !250, !noundef !11
  invoke void %i.ff(ptr noundef %i.fd, ptr noundef %i.fh, i64 noundef %i.fj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit40 unwind label %bb.aw, !inline_history !67

infloop:                                          ; preds = %.outer197, %infloop
  br label %infloop

infloop224:                                       ; preds = %.outer, %infloop224
  br label %infloop224
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !260, !noalias !261, !noundef !11 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit_crit_edge, label %bb.b

._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !264
  br label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !261 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !260, !noalias !261, !noundef !11 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !260, !noalias !261, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !260, !noalias !261, !nonnull !11
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !260, !noalias !261, !nonnull !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 6 uses
  %i.t = icmp eq ptr %i.s, null                   ; 3 uses
  %i.u = load i8, ptr %i.q, align 8, !range !26
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
  %i.z = load i16, ptr %i.y, align 2, !noalias !269, !noundef !11 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.z, -1
  br i1 %.not.i.i.i, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !269, !noundef !11 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.i.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.i.ph, %i.ag
  br i1 %i.ah, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.d

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
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !269, !noundef !11
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !269, !noundef !11
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i.i.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split.i.i.i:                                     ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !269, !noundef !11
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !269
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !26, !noalias !269, !noundef !11
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !288, !noundef !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !288, !nonnull !11, !noundef !11
  invoke void %i.bf(ptr noundef %i.bd, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit unwind label %bb.m, !inline_history !67

_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.c, %.loopexit, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit_crit_edge, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i
  %i.bg = phi ptr [ %i.s, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i ], [ %.pre, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit_crit_edge ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECslzoSl9yxMOF_11libp2p_upnp.exit.i ], [ null, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit_crit_edge ], [ null, %.loopexit ], [ null, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !303, !noundef !11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !303, !nonnull !11, !noundef !11
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !303, !noundef !11
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !303, !noundef !11
  tail call void %i.bl(ptr noundef %i.bj, ptr noundef %i.bn, i64 noundef %i.bp), !noalias !303, !inline_history !25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit2: ; preds = %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit, %bb.l
  ret ptr %.sroa.0.0.i

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bb

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap5entryNtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap10try_entry2NtNtB8_4name10HeaderNameECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.d = load i8, ptr %i.c, align 2, !range !309, !alias.scope !307, !noalias !310, !noundef !11
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCscwxJ8MeEu7n_4http6header3map5EntryNtNtBM_5value11HeaderValueENtBK_14MaxSizeReachedE6expectCslzoSl9yxMOF_11libp2p_upnp.exit, !prof !312

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #25, !noalias !313
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCscwxJ8MeEu7n_4http6header3map5EntryNtNtBM_5value11HeaderValueENtBK_14MaxSizeReachedE6expectCslzoSl9yxMOF_11libp2p_upnp.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, i64 56, i1 false), !alias.scope !313, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtNtCsldfkUAjPaVH_3xml6reader5lexerNtB6_5Lexer10next_tokenINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.e = load i8, ptr %i.d, align 1, !range !315, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4, !range !315, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1114130, ptr %i.j, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load <2 x i64>, ptr %i.k, align 8
  store <2 x i64> %i.m, ptr %i.l, align 8
  store i8 1, ptr %i.g, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.n = tail call noundef i32 @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequecE9pop_frontCslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.not82 = icmp eq i32 %i.n, -1
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %i.p = phi i32 [ %i.n, %.lr.ph ], [ %i.aa, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs1_NtNtCsldfkUAjPaVH_3xml6reader5lexerNtB5_5Lexer13dispatch_char(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %i.p) #26
  %i.q = load i64, ptr %i.c, align 8, !range !316, !noundef !11 ; 2 uses
  %.not67 = icmp eq i64 %i.q, -2
  %i.r = load i32, ptr %i.o, align 8              ; 3 uses
  br i1 %.not67, label %bb.h, label %bb.g

._crit_edge:                                      ; preds = %bb.j, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 79
  store i8 0, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 78 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs3_NtCsldfkUAjPaVH_3xml4utilNtB6_10CharReader14next_char_fromINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECslzoSl9yxMOF_11libp2p_upnp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull dereferenceable(1) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !317, !noundef !11 ; 2 uses
  %.not6383 = icmp eq i8 %i.v, -1
  br i1 %.not6383, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.o

bb.g:                                             ; preds = %bb.f
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.542.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.q, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.r, ptr %.sroa.444.0..sroa_idx, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not68 = icmp eq i32 %i.r, -1
  br i1 %.not68, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.g, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.r, ptr %i.z, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.k
end_hunk_0
