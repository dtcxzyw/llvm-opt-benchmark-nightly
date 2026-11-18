Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.11?download=true
inline.NumInlined: 3078
inline.NumDeleted: 1228
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCsexYYUdYSQU6_5alloc2io4read22default_read_buf_exactINtNtCsgrcu2UPjJtD_14futures_rustls6common15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs2Bxje7pdMIr_13libp2p_server:bb.a

bb.g:                                             ; preds = %.split12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4076
  %i.ad = and i64 %i.j, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  call void @llvm.assume(i1 %i.s)
  call void @llvm.assume(i1 %i.ae)
  br label %bb.i

bb.h:                                             ; preds = %.split
  %i.af = getelementptr i8, ptr %i.i, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4077
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store ptr %i.af, ptr %i.g, align 8, !alias.scope !4078, !noalias !4077
  store i8 3, ptr %i.a, align 8, !alias.scope !4078, !noalias !4077
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i64, ptr %i.d, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %bb.e
  %i.ag = phi i64 [ %.pre, %bb.i ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ah = load i64, ptr %i.c, align 8, !noundef !16
  %.not = icmp eq i64 %i.ah, %i.ag
  br i1 %.not, label %.loopexit, label %bb.b

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #34
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCsf6yrgnUmEzM_17prometheus_client8encoding4text6encodeNtNtCsexYYUdYSQU6_5alloc6string6StringECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @37, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.b = call noundef zeroext i1 @_RNvMNtCsf6yrgnUmEzM_17prometheus_client8registryNtB2_8Registry6encode(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 6), !noalias !4087
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4088, !noundef !16 ; 2 uses
  %i.e = icmp sgt i64 %i.d, -1
  call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !4088, !nonnull !16, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(6) @38, i64 6, i1 false)
  %.pre.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !4088
  %i.i = add i64 %.pre.i.i.i, 6
  store i64 %i.i, ptr %i.c, align 8, !alias.scope !4088
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtNtCsgrcu2UPjJtD_14futures_rustls6common16SyncWriteAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @42, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtCsgrcu2UPjJtD_14futures_rustls6common16SyncWriteAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #34
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noundef !16 ; 5 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit, !prof !61

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4093
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i
    i64 1, label %bb.h
  ], !prof !33

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !4094, !noalias !4093
  store i8 3, ptr %i.a, align 8, !alias.scope !4094, !noalias !4093
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !4093
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4093
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #40
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtCsgrcu2UPjJtD_14futures_rustls6common15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs2Bxje7pdMIr_13libp2p_server(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = call { i64, ptr } @_RNvXs0_NtNtCs62FBUrD8956_10libp2p_tcp8provider5tokioNtB5_9TcpStreamNtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull %i.c, i64 noundef 32) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 5 uses
  switch i64 %i.g, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit [
    i64 2, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread
    i64 0, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread6
  ]

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread6: ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = icmp ult ptr %i.h, inttoptr (i64 33 to ptr)
  br i1 %i.j, label %.noexc7, label %bb.d, !prof !4101

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.b
  br label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread: ; preds = %bb.b, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit
  %storemerge = phi i64 [ %i.g, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit ], [ 1, %bb.b ]
  %.sroa.4.0.i3 = phi ptr [ %i.h, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit ], [ inttoptr (i64 55834574851 to ptr), %bb.b ] ; 11 uses
  store i64 %storemerge, ptr %i.b, align 8
  store ptr %.sroa.4.0.i3, ptr %i.d, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i3) ]
  %i.k = ptrtoint ptr %.sroa.4.0.i3 to i64        ; 4 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %.split14
    i64 0, label %.split15
    i64 1, label %.split
  ], !prof !33

default.unreachable:                              ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread
  unreachable

bb.c:                                             ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  %i.n = lshr i64 %i.k, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !16, !noundef !16
  %i.r = invoke noundef zeroext i1 %i.q(i32 noundef %i.o)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.i, !inline_history !7

.split14:                                         ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread
  %i.s = lshr i64 %i.k, 32
  %i.t = icmp ult ptr %.sroa.4.0.i3, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.s to i8
  %spec.select.i.i.i = select i1 %i.t, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.u = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.v, label %bb.g, label %.loopexit

.split15:                                         ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i3, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !62, !noundef !16
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %.thread17, label %.loopexit

.split:                                           ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread
  %i.z = getelementptr i8, ptr %.sroa.4.0.i3, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !62, !noundef !16
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.h, label %.loopexit

bb.d:                                             ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread6
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.i, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #40
  unreachable

.noexc7:                                          ; preds = %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_15SyncReadAdapterNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2Bxje7pdMIr_13libp2p_server.exit.thread6
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !4102, !noundef !16 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !4102, !nonnull !16, !noundef !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.c, i64 %i.i, i1 false)
  %.pre.i = load i64, ptr %i.ac, align 8, !alias.scope !4102
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc7
  %i.ai = phi i64 [ %.pre.i, %bb.e ], [ %i.ad, %.noexc7 ]
  %i.aj = add i64 %i.ai, %i.i
  store i64 %i.aj, ptr %i.ac, align 8, !alias.scope !4102
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split14, %.split15, %bb.f
  %.sroa.3.0 = phi ptr [ %i.h, %bb.f ], [ %.sroa.4.0.i3, %.split15 ], [ %.sroa.4.0.i3, %.split14 ], [ %.sroa.4.0.i3, %.split ], [ %.sroa.4.0.i3, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  %.sroa.0.0 = phi i64 [ 0, %bb.f ], [ 1, %.split15 ], [ 1, %.split14 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.al

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.r, label %.thread17, label %.loopexit

.thread17:                                        ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4103
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit

bb.g:                                             ; preds = %.split14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4103
  %i.am = and i64 %i.k, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 %i.an)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit

bb.h:                                             ; preds = %.split
  %i.ao = getelementptr i8, ptr %.sroa.4.0.i3, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4103
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %i.e, align 8, !alias.scope !4104, !noalias !4103
  store i8 3, ptr %i.a, align 8, !alias.scope !4104, !noalias !4103
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !4103
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.g, %bb.h, %.thread17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.i:                                             ; preds = %bb.c, %.noexc
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #34
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.k:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB6_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error6customNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4111
  store i64 0, ptr %i.c, align 8, !noalias !4111
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4111
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4111
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.e, align 8, !noalias !4111
  store ptr %i.c, ptr %i.b, align 8, !noalias !4111
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @37, ptr %i.f, align 8, !noalias !4111
  %i.g = invoke noundef zeroext i1 @_RNvXNtCsbli3iz7XG76_9multiaddr6errorsNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !4112

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %.body unwind label %bb.e, !noalias !4112

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g, !prof !61

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @418, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @134, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @420) #36
          to label %.noexc.i.i unwind label %bb.b, !noalias !4112

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !4112
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.h, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #34
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4111
  %i.k = invoke noundef nonnull align 8 ptr @_RNvNtCs79iw4ZC9yCo_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(24) %0)
  ret ptr %i.k

bb.i:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB6_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error6customNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4120
  store i64 0, ptr %i.c, align 8, !noalias !4120
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4120
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4120
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.e, align 8, !noalias !4120
  store ptr %i.c, ptr %i.b, align 8, !noalias !4120
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @37, ptr %i.f, align 8, !noalias !4120
  %i.g = invoke noundef zeroext i1 @_RNvXs0_NtCsexYYUdYSQU6_5alloc6stringNtB5_13FromUtf8ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !4121

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %.body unwind label %bb.e, !noalias !4121

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g, !prof !61

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @418, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @134, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @420) #36
          to label %.noexc.i.i unwind label %bb.b, !noalias !4121

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !4121
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.h, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #34
          to label %common.resume unwind label %bb.k

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4120
  %i.k = invoke noundef nonnull align 8 ptr @_RNvNtCs79iw4ZC9yCo_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  ret ptr %i.k

bb.k:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
end_hunk_0
