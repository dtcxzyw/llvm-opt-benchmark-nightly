Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_private_example.ipfs_private_example.c9cf337336d19c9e-cgu.08?download=true
inline.NumInlined: 1499
inline.NumDeleted: 923
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsinjenlOLFM6_11libp2p_pnet12crypt_writer14poll_flush_bufNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECshke30g4Hb4g_20ipfs_private_example:bb.a
  switch i64 %i.q, label %default.unreachable [
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 0, label %bb.j
    i64 1, label %bb.k
  ], !prof !13

default.unreachable:                              ; preds = %bb.p, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.r = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc26 unwind label %bb.t

.noexc26:                                         ; preds = %bb.h
  %i.s = lshr i64 %i.p, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6
  %i.w = invoke noundef i8 %i.v(i32 noundef %i.t)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.t, !inline_history !0

bb.i:                                             ; preds = %bb.g
  %i.x = lshr i64 %i.p, 32
  %i.y = icmp ult ptr %i.o, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.x to i8   ; 2 uses
  %i.z = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  call void @llvm.assume(i1 %i.z)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.j:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !14, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.k:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.o, i64 31
  %i.ad = load i8, ptr %i.ac, align 8, !range !14, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.l:                                             ; preds = %bb.f
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 29)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshke30g4Hb4g_20ipfs_private_example.exit32 unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.l
  %i.af = add i64 %.sroa.0.031, %i.p
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.n
  %.sroa.0.1 = phi i64 [ %.sroa.0.031, %bb.s ], [ %i.af, %bb.n ] ; 3 uses
  %i.ag = icmp ult i64 %.sroa.0.1, %i.e
  br i1 %i.ag, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshke30g4Hb4g_20ipfs_private_example.exit32

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.k, %bb.j, %bb.i, %.noexc26
  %.sroa.0.0.i = phi i8 [ %i.ad, %bb.k ], [ %switch.idx.cast.i.i.i, %bb.i ], [ %i.ab, %bb.j ], [ %i.w, %.noexc26 ]
  %.not12 = icmp eq i8 %.sroa.0.0.i, 35
  br i1 %.not12, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshke30g4Hb4g_20ipfs_private_example.exit39

bb.p:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !233
  switch i64 %i.q, label %default.unreachable [
    i64 2, label %bb.s
    i64 3, label %bb.q
    i64 0, label %bb.s
    i64 1, label %bb.r
  ], !prof !13

bb.q:                                             ; preds = %bb.p
  %i.ah = icmp ult ptr %i.o, inttoptr (i64 188978561024 to ptr)
  %i.ai = and i64 %i.p, 1095216660480
  %i.aj = icmp ne i64 %i.ai, 1095216660480
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.assume(i1 %i.aj)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ak = getelementptr i8, ptr %i.o, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  store ptr %i.ak, ptr %i.h, align 8, !alias.scope !234, !noalias !233
  store i8 3, ptr %i.a, align 8, !alias.scope !234, !noalias !233
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.p, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshke30g4Hb4g_20ipfs_private_example.exit39: ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshke30g4Hb4g_20ipfs_private_example.exit32

bb.t:                                             ; preds = %.noexc26, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #30
          to label %bb.e unwind label %bb.u

bb.u:                                             ; preds = %bb.e, %bb.t
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshke30g4Hb4g_20ipfs_private_example.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.023)
          to label %bb.w unwind label %.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshke30g4Hb4g_20ipfs_private_example.exit32.thread: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshke30g4Hb4g_20ipfs_private_example.exit32, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.0.0562 = phi i64 [ %.sroa.0.05, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.0.05, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshke30g4Hb4g_20ipfs_private_example.exit32 ], [ 0, %bb.a ]
  %.sroa.14.061 = phi ptr [ %.sroa.14.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.14.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshke30g4Hb4g_20ipfs_private_example.exit32 ], [ null, %bb.a ]
  %i.an = insertvalue { i64, ptr } poison, i64 %.sroa.0.0562, 0
  %i.ao = insertvalue { i64, ptr } %i.an, ptr %.sroa.14.061, 1
  ret { i64, ptr } %i.ao

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainhENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECshke30g4Hb4g_20ipfs_private_example.exit unwind label %.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainhEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshke30g4Hb4g_20ipfs_private_example.exit32.thread

bb.x:                                             ; preds = %bb.d
  unreachable

bb.y:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn15
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = load i8, ptr %0, align 8, !range !277, !noundef !6 ; 4 uses
  %i.i = icmp eq i8 %i.h, -4
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !278, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !278
  %i.k = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit
    i64 3, label %bb.c
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit
    i64 1, label %bb.d
  ], !prof !13

default.unreachable:                              ; preds = %bb.ab, %bb.y, %bb.t, %bb.n, %bb.k, %bb.h, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.n = and i64 %i.k, 1095216660480
  %i.o = icmp ne i64 %i.n, 1095216660480
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !279, !noalias !278
  store i8 3, ptr %i.g, align 8, !alias.scope !279, !noalias !278
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q), !noalias !278
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !278
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %.not.i = icmp eq i8 %i.h, -3
  br i1 %.not.i, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.r = icmp eq i8 %i.h, -2
  br i1 %i.r, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.s, align 8, !range !18, !alias.scope !282, !noundef !6 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.t, align 8, !alias.scope !282 ; 9 uses
  %.not.i.i.i = icmp eq i64 %.val.i.i, -1
  %i.u = ptrtoint ptr %.val1.i.i to i64           ; 4 uses
  %i.v = and i64 %i.u, 3                          ; 3 uses
  br i1 %.not.i.i.i, label %bb.n, label %1

1:                                                ; preds = %bb.g
  %2 = icmp eq i64 %.val.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  br i1 %2, label %bb.h, label %bb.k

bb.h:                                             ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !283
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i
    i64 3, label %bb.i
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i
    i64 1, label %bb.j
  ], !prof !13

bb.i:                                             ; preds = %bb.h
  %i.w = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.x = and i64 %i.u, 1095216660480
  %i.y = icmp ne i64 %i.x, 1095216660480
  tail call void @llvm.assume(i1 %i.w)
  tail call void @llvm.assume(i1 %i.y)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !284, !noalias !283
  store i8 3, ptr %i.f, align 8, !alias.scope !284, !noalias !283
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa), !noalias !283
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !283
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit

bb.k:                                             ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !285
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i
    i64 1, label %bb.m
  ], !prof !13

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ac = and i64 %i.u, 1095216660480
  %i.ad = icmp ne i64 %i.ac, 1095216660480
  tail call void @llvm.assume(i1 %i.ab)
  tail call void @llvm.assume(i1 %i.ad)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !286, !noalias !285
  store i8 3, ptr %i.e, align 8, !alias.scope !286, !noalias !285
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af), !noalias !285
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !285
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit

bb.n:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !287
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
    i64 3, label %bb.o
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
    i64 1, label %bb.p
  ], !prof !13

bb.o:                                             ; preds = %bb.n
  %i.ag = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ah = and i64 %i.u, 1095216660480
  %i.ai = icmp ne i64 %i.ah, 1095216660480
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ai)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.aj = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !288, !noalias !287
  store i8 3, ptr %i.d, align 8, !alias.scope !288, !noalias !287
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak), !noalias !287
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !287
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit

bb.q:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.al = icmp eq i8 %i.h, -1
  br i1 %i.al, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.an = load i64, ptr %i.am, align 8, !range !19, !alias.scope !291, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.an, -1
  br i1 %.not.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !294, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !294
  %i.aq = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.ar = and i64 %i.aq, 3
  switch i64 %i.ar, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i
    i64 3, label %bb.u
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i
    i64 1, label %bb.v
  ], !prof !13

bb.u:                                             ; preds = %bb.t
  %i.as = icmp ult ptr %.val.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.at = and i64 %i.aq, 1095216660480
  %i.au = icmp ne i64 %i.at, 1095216660480
  tail call void @llvm.assume(i1 %i.as)
  tail call void @llvm.assume(i1 %i.au)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.av = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !295, !noalias !294
  store i8 3, ptr %i.c, align 8, !alias.scope !295, !noalias !294
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw), !noalias !294
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !294
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit

bb.w:                                             ; preds = %bb.q
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshuexzQAPOo_12libp2p_noise5ErrorECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit

bb.x:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i2 = load i64, ptr %i.ax, align 8, !range !20, !alias.scope !280, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.ay, align 8, !alias.scope !280 ; 8 uses
  switch i64 %.val.i2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit [
    i64 -2, label %bb.ab
    i64 0, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !296
  %i.az = ptrtoint ptr %.val1.i to i64            ; 2 uses
  %i.ba = and i64 %i.az, 3
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i2.i
    i64 3, label %bb.z
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i2.i
    i64 1, label %bb.aa
  ], !prof !13

bb.z:                                             ; preds = %bb.y
  %i.bb = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.bc = and i64 %i.az, 1095216660480
  %i.bd = icmp ne i64 %i.bc, 1095216660480
  tail call void @llvm.assume(i1 %i.bb)
  tail call void @llvm.assume(i1 %i.bd)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i2.i

bb.aa:                                            ; preds = %bb.y
  %i.be = getelementptr i8, ptr %.val1.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !297, !noalias !296
  store i8 3, ptr %i.b, align 8, !alias.scope !297, !noalias !296
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf), !noalias !296
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i2.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i2.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !296
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit

bb.ab:                                            ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !298
  %i.bg = ptrtoint ptr %.val1.i to i64            ; 2 uses
  %i.bh = and i64 %i.bg, 3
  switch i64 %i.bh, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i
    i64 3, label %bb.ac
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i
    i64 1, label %bb.ad
  ], !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.bi = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.bj = and i64 %i.bg, 1095216660480
  %i.bk = icmp ne i64 %i.bj, 1095216660480
  tail call void @llvm.assume(i1 %i.bi)
  tail call void @llvm.assume(i1 %i.bk)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bl = getelementptr i8, ptr %.val1.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !299, !noalias !298
  store i8 3, ptr %i.a, align 8, !alias.scope !299, !noalias !298
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm), !noalias !298
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !298
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i2.i, %bb.x, %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i, %bb.s, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsa9Jrx9KOzzM_16hickory_resolver6lookup6LookupNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EEECshke30g4Hb4g_20ipfs_private_example(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsa9Jrx9KOzzM_16hickory_resolver6lookup6LookupNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !22, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsa9Jrx9KOzzM_16hickory_resolver6lookup6LookupNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsa9Jrx9KOzzM_16hickory_resolver6lookup6LookupNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
