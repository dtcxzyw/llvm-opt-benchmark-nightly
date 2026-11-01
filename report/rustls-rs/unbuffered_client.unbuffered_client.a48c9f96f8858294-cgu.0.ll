Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/unbuffered_client.unbuffered_client.a48c9f96f8858294-cgu.0?download=true
inline.NumInlined: 313
inline.NumDeleted: 180
begin_hunk_0_@_RINvNtNtNtCsaKJjC64KgbL_3std3sys3net10connection9each_addrNtNtCs4wP2HXfJTCR_5alloc6string6StringNvNvMs3_NtB2_6socketNtB1E_9TcpStream7connect5innerB1Q_ECse7TjioWD9Jw_17unbuffered_client:bb.a
  %i.ao = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !118, !nonnull !7, !noundef !7 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.an
  br i1 %i.ap, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCse7TjioWD9Jw_17unbuffered_client.exit

bb.r:                                             ; preds = %bb.t, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit, %bb.s
  %.pn11 = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECse7TjioWD9Jw_17unbuffered_client.exit ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECse7TjioWD9Jw_17unbuffered_client.exit unwind label %bb.r

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECse7TjioWD9Jw_17unbuffered_client.exit: ; preds = %bb.t
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCse7TjioWD9Jw_17unbuffered_client.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !123, !alias.scope !124, !noundef !7
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !125
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !125, !nonnull !7, !noundef !7 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i
  %i.o = add i64 %i.e, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false)
  %i.p = add i64 %i.o, %i.i                       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCse7TjioWD9Jw_17unbuffered_client.exit.i ]
  store i8 %2, ptr %.sroa.0.0.lcssa28.i, align 1
  %i.q = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCse7TjioWD9Jw_17unbuffered_client.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCse7TjioWD9Jw_17unbuffered_client.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB5_11ReadTrafficNtNtNtB9_6client11client_conn20ClientConnectionDataE11next_recordCse7TjioWD9Jw_17unbuffered_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !align !11, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3pop(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.e = load i64, ptr %1, align 8, !range !6, !alias.scope !128, !noundef !7
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  resume { ptr, i32 } %i.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load i64, ptr %1, align 8, !range !6, !noundef !7
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit, %bb.d
  %.sink = phi i8 [ -1, %bb.d ], [ -2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECse7TjioWD9Jw_17unbuffered_client.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB5_12WriteTrafficNtNtNtB9_6client11client_conn20ClientConnectionDataE7encryptCse7TjioWD9Jw_17unbuffered_client(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [32 x i8], align 8                ; 12 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [56 x i8], align 8               ; 13 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0.i.sroa.9.i.i.i.i.i.i = alloca [68 x i8], align 4 ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.1028.i.i.i.i.i.i = alloca [68 x i8], align 4 ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [64 x i8], align 8               ; 39 uses
  %i.ak = alloca [64 x i8], align 8               ; 35 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %i.am = load ptr, ptr %1, align 8, !nonnull !7, !align !11, !noundef !7 ; 66 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 831 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !range !12, !alias.scope !327, !noundef !7
  %i.ap = trunc nuw i8 %i.ao to i1
  store i8 0, ptr %i.an, align 1, !alias.scope !327
  br i1 %i.ap, label %bb.b, label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE26maybe_refresh_traffic_keysCse7TjioWD9Jw_17unbuffered_client.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 896
  %i.ar = load i8, ptr %i.aq, align 8, !range !329, !alias.scope !330, !noundef !7 ; 3 uses
  %.not.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i, label %bb.eh, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  switch i8 %i.ar, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.g
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 5, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 6, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 7, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 8, label %bb.l
    i8 9, label %bb.aw
    i8 10, label %bb.ax
    i8 11, label %bb.ay
    i8 12, label %bb.dl
    i8 13, label %bb.ec
    i8 14, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 15, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 16, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 17, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 18, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 19, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 20, label %bb.ed
    i8 21, label %bb.ee
  ]

default.unreachable:                              ; preds = %bb.dl, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %.val.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !334, !nonnull !7, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %.val1.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !334, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !335
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, i64 noundef range(i64 0, 4611686018427387904) %.val1.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !336
  %i.au = load i64, ptr %i.ai, align 8, !range !13, !noalias !335, !noundef !7
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !14, !noalias !335, !noundef !7 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  br i1 %i.av, label %bb.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.az = load i64, ptr %i.ay, align 8, !noalias !335
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #21, !noalias !336
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !335, !nonnull !7, !noundef !7 ; 2 uses
  %i.bb = icmp samesign ule i64 %.val1.i.i.i, %i.ax
  tail call void @llvm.assume(i1 %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !335
  %.not.i.i.i.i.i = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i
  %i.bc = shl nuw nsw i64 %.val1.i.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull readonly align 1 %.val.i.i.i, i64 %i.bc, i1 false), !noalias !337
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i: ; preds = %bb.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 897
  %i.be = load i8, ptr %i.bd, align 1, !range !15, !alias.scope !334, !noundef !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 898
  %i.bg = load i8, ptr %i.bf, align 2, !alias.scope !334
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ax, ptr %i.bh, align 8, !alias.scope !332, !noalias !331
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.val1.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.be, ptr %i.bi, align 1, !alias.scope !332, !noalias !331
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.bg, ptr %i.bj, align 2, !alias.scope !332, !noalias !331
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.g:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %.val2.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !334, !nonnull !7, !noundef !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %.val3.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !334, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !338
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, i64 noundef range(i64 0, 4611686018427387904) %.val3.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !339
  %i.bm = load i64, ptr %i.ah, align 8, !range !13, !noalias !338, !noundef !7
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !14, !noalias !338, !noundef !7 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  br i1 %i.bn, label %bb.h, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i4.i.i.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.br = load i64, ptr %i.bq, align 8, !noalias !338
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bp, i64 %i.br) #21, !noalias !339
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i4.i.i.i: ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bq, align 8, !noalias !338, !nonnull !7, !noundef !7 ; 2 uses
  %i.bt = icmp samesign ule i64 %.val3.i.i.i, %i.bp
  tail call void @llvm.assume(i1 %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !338
  %.not.i.i5.i.i.i = icmp eq i64 %.val3.i.i.i, 0
  br i1 %.not.i.i5.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i4.i.i.i
  %i.bu = shl nuw nsw i64 %.val3.i.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %.val2.i.i.i, i64 %i.bu, i1 false), !noalias !340
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i: ; preds = %bb.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i4.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 897
  %i.bw = load i8, ptr %i.bv, align 1, !range !341, !alias.scope !334, !noundef !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 898
  %i.by = load i8, ptr %i.bx, align 2, !alias.scope !334
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.bp, ptr %i.bz, align 8, !alias.scope !332, !noalias !331
  %.sroa.432.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.bs, ptr %.sroa.432.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.533.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.val3.i.i.i, ptr %.sroa.533.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.bw, ptr %i.ca, align 1, !alias.scope !332, !noalias !331
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.by, ptr %i.cb, align 2, !alias.scope !332, !noalias !331
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.j:                                             ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 897
  %i.cd = load i8, ptr %i.cc, align 1, !range !342, !alias.scope !334, !noundef !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.cd, ptr %i.ce, align 1, !alias.scope !332, !noalias !331
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.k:                                             ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %i.am, i64 904
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !alias.scope !343, !noalias !344
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.l:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %i.am, i64 904
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.ci = load i64, ptr %i.ch, align 8, !range !346, !alias.scope !347, !noundef !7 ; 3 uses
  %i.cj = icmp slt i64 %i.ci, -9223372036854775787
  br i1 %i.cj, label %_RNvXsE_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16PeerIncompatibleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i.i, label %_RNvXsE_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16PeerIncompatibleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %.val.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %.val3.i.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !347, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !349
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, i64 noundef range(i64 0, 82351536043346213) %.val3.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 112), !noalias !350
  %i.cm = load i64, ptr %i.af, align 8, !range !13, !noalias !349, !noundef !7
  %i.cn = trunc nuw i64 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !14, !noalias !349, !noundef !7 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  br i1 %i.cn, label %bb.o, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !349
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.cp, i64 %i.cr) #21, !noalias !351
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i: ; preds = %bb.n
  %i.cs = load ptr, ptr %i.cq, align 8, !noalias !349, !nonnull !7, !noundef !7 ; 4 uses
  %i.ct = icmp samesign ule i64 %.val3.i.i.i.i, %i.cp
  tail call void @llvm.assume(i1 %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !349
  store i64 %i.cp, ptr %i.ag, align 8, !noalias !349
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.cs, ptr %i.cu, align 8, !noalias !349
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs8_NtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB5_12WriteTrafficNtNtNtB9_6client11client_conn20ClientConnectionDataE7encryptCse7TjioWD9Jw_17unbuffered_client:bb.a
  store i64 %i.ot, ptr %i.pd, align 8, !alias.scope !444, !noalias !437
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i25.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i25.i.i.i: ; preds = %bb.do, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i23.i.i.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.am, i64 944
  %.val.i26.i.i.i = load ptr, ptr %i.pf, align 8, !alias.scope !436, !nonnull !7, !noundef !7
  %i.pg = getelementptr inbounds nuw i8, ptr %i.am, i64 952
  %.val2.i.i.i.i = load i64, ptr %i.pg, align 8, !alias.scope !436, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !446
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 576460752303423488) %.val2.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i27.i.i.i unwind label %bb.dx, !noalias !447

.noexc.i27.i.i.i:                                 ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i25.i.i.i
  %i.ph = load i64, ptr %i.c, align 8, !range !13, !noalias !446, !noundef !7
  %i.pi = trunc nuw i64 %i.ph to i1
  %i.pj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.pk = load i64, ptr %i.pj, align 8, !range !14, !noalias !446, !noundef !7 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.pi, label %bb.dp, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i3.i.i.i.i, !prof !10

bb.dp:                                            ; preds = %.noexc.i27.i.i.i
  %i.pm = load i64, ptr %i.pl, align 8, !noalias !446
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.pk, i64 %i.pm) #21
          to label %.noexc5.i.i.i.i unwind label %bb.dx, !noalias !447

.noexc5.i.i.i.i:                                  ; preds = %bb.dp
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i3.i.i.i.i: ; preds = %.noexc.i27.i.i.i
  %i.pn = load ptr, ptr %i.pl, align 8, !noalias !446, !nonnull !7, !noundef !7 ; 2 uses
  %i.po = icmp samesign ule i64 %.val2.i.i.i.i, %i.pk
  tail call void @llvm.assume(i1 %i.po)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !446
  %.not.i.i4.i.i.i.i = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %.not.i.i4.i.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i28.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i3.i.i.i.i
  %i.pp = shl nuw nsw i64 %.val2.i.i.i.i, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.pn, ptr nonnull readonly align 8 %.val.i26.i.i.i, i64 %i.pp, i1 false), !noalias !448
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i28.i.i.i

bb.dr:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !437
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.am, i64 928
  %i.pr = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %i.ps = load ptr, ptr %i.pr, align 8, !alias.scope !451, !nonnull !7, !noundef !7
  %i.pt = load i64, ptr %i.pq, align 8, !alias.scope !451, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !453
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.pt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !454
  %i.pu = load i64, ptr %i.b, align 8, !range !13, !noalias !453, !noundef !7
  %i.pv = trunc nuw i64 %i.pu to i1
  %i.pw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.px = load i64, ptr %i.pw, align 8, !range !14, !noalias !453, !noundef !7 ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.pv, label %bb.ds, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i6.i.i.i.i, !prof !10

bb.ds:                                            ; preds = %bb.dr
  %i.pz = load i64, ptr %i.py, align 8, !noalias !453
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.px, i64 %i.pz) #21, !noalias !454
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i6.i.i.i.i: ; preds = %bb.dr
  %i.qa = load ptr, ptr %i.py, align 8, !noalias !453, !nonnull !7, !noundef !7 ; 3 uses
  %i.qb = icmp samesign ule i64 %i.pt, %i.px
  tail call void @llvm.assume(i1 %i.qb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !453
  store i64 %i.px, ptr %i.e, align 8, !alias.scope !455, !noalias !437
  %i.qc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.qa, ptr %i.qc, align 8, !alias.scope !455, !noalias !437
  %i.qd = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.qd, align 8, !alias.scope !455, !noalias !437
  %.not.i.i7.i.i.i.i = icmp eq i64 %i.pt, 0
  %i.qe = inttoptr i64 %i.px to ptr
  br i1 %.not.i.i7.i.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit8.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i6.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qa, ptr nonnull readonly align 1 %i.ps, i64 range(i64 0, -9223372036854775808) %i.pt, i1 false), !noalias !456
  store i64 %i.pt, ptr %i.qd, align 8, !alias.scope !455, !noalias !437
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit8.i.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit8.i.i.i.i: ; preds = %bb.dt, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i6.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.qf = getelementptr inbounds nuw i8, ptr %i.am, i64 952
  %i.qg = getelementptr inbounds nuw i8, ptr %i.am, i64 944
  %i.qh = load ptr, ptr %i.qg, align 8, !alias.scope !458, !nonnull !7, !noundef !7
  %i.qi = load i64, ptr %i.qf, align 8, !alias.scope !458, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !459
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.qi, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc11.i.i.i.i unwind label %bb.dz, !noalias !447

.noexc11.i.i.i.i:                                 ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit8.i.i.i.i
  %i.qj = load i64, ptr %i.a, align 8, !range !13, !noalias !459, !noundef !7
  %i.qk = trunc nuw i64 %i.qj to i1
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.qm = load i64, ptr %i.ql, align 8, !range !14, !noalias !459, !noundef !7 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.qk, label %bb.du, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i9.i.i.i.i, !prof !10

bb.du:                                            ; preds = %.noexc11.i.i.i.i
  %i.qo = load i64, ptr %i.qn, align 8, !noalias !459
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.qm, i64 %i.qo) #21
          to label %.noexc12.i.i.i.i unwind label %bb.dz, !noalias !447

.noexc12.i.i.i.i:                                 ; preds = %bb.du
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i9.i.i.i.i: ; preds = %.noexc11.i.i.i.i
  %i.qp = load ptr, ptr %i.qn, align 8, !noalias !459, !nonnull !7, !noundef !7 ; 2 uses
  %i.qq = icmp samesign ule i64 %i.qi, %i.qm
  tail call void @llvm.assume(i1 %i.qq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !459
  %.not.i.i10.i.i.i.i = icmp eq i64 %i.qi, 0
  br i1 %.not.i.i10.i.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit13.i.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i9.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qp, ptr nonnull readonly align 1 %i.qh, i64 range(i64 0, -9223372036854775808) %i.qi, i1 false), !noalias !460
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit13.i.i.i.i

bb.dw:                                            ; preds = %bb.dl
  %i.qr = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %i.qs = load ptr, ptr %i.qr, align 8, !alias.scope !436, !nonnull !7, !noundef !7 ; 2 uses
  %i.qt = atomicrmw add ptr %i.qs, i64 1 monotonic, align 8, !noalias !447
  %i.qu = icmp slt i64 %i.qt, 0
  br i1 %i.qu, label %bb.eb, label %bb.ea

bb.dx:                                            ; preds = %bb.dp, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i25.i.i.i
  %i.qv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.dy, !noalias !447

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i28.i.i.i: ; preds = %bb.dq, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i3.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !437
  br label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.dy:                                            ; preds = %bb.dz, %bb.dx
  %i.qw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !447
  unreachable

bb.dz:                                            ; preds = %bb.du, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit8.i.i.i.i
  %i.qx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume.i unwind label %bb.dy, !noalias !447

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit13.i.i.i.i: ; preds = %bb.dv, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i9.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !437
  br label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.ea:                                            ; preds = %bb.dw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %i.qz = load ptr, ptr %i.qy, align 8, !alias.scope !436, !nonnull !7, !align !11, !noundef !7
  br label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.eb:                                            ; preds = %bb.dw
  tail call void @llvm.trap()
  unreachable

_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.ea, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit13.i.i.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i28.i.i.i, %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl, %bb.dl
  %.sroa.2559.0.i.i.i = phi i64 [ undef, %bb.dl ], [ undef, %bb.dl ], [ %.val2.i.i.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i28.i.i.i ], [ %i.qi, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit13.i.i.i.i ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.ea ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ]
  %.sroa.23.0.i.i.i = phi ptr [ undef, %bb.dl ], [ undef, %bb.dl ], [ %i.pn, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i28.i.i.i ], [ %i.qp, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit13.i.i.i.i ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.ea ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ]
  %.sroa.2158.0.i.i.i = phi i64 [ undef, %bb.dl ], [ undef, %bb.dl ], [ %i.pk, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i28.i.i.i ], [ %i.qm, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit13.i.i.i.i ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.ea ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ]
  %.sroa.21.0.i.i.i = phi i64 [ undef, %bb.dl ], [ undef, %bb.dl ], [ %i.ot, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i28.i.i.i ], [ %i.pt, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit13.i.i.i.i ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.ea ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ]
  %.sroa.20.0.i.i.i = phi ptr [ undef, %bb.dl ], [ undef, %bb.dl ], [ %i.pa, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i28.i.i.i ], [ %i.qa, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit13.i.i.i.i ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ %i.qz, %bb.ea ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ]
  %.sroa.17.0.i.i.i = phi ptr [ undef, %bb.dl ], [ undef, %bb.dl ], [ %i.pe, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i28.i.i.i ], [ %i.qe, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit13.i.i.i.i ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ %i.qs, %bb.ea ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ], [ undef, %bb.dl ]
  %i.ra = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.op, ptr %i.ra, align 8, !alias.scope !332, !noalias !331
  %.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %.sroa.17.0.i.i.i, ptr %.sroa.17.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.20.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %.sroa.20.0.i.i.i, ptr %.sroa.20.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 %.sroa.21.0.i.i.i, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.2158.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 %.sroa.2158.0.i.i.i, ptr %.sroa.2158.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr %.sroa.23.0.i.i.i, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.2559.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store i64 %.sroa.2559.0.i.i.i, ptr %.sroa.2559.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.ec:                                            ; preds = %bb.c
  %i.rb = getelementptr inbounds nuw i8, ptr %i.am, i64 904
  %i.rc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.rc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rb), !noalias !344
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.ed:                                            ; preds = %bb.c
  %i.rd = getelementptr inbounds nuw i8, ptr %i.am, i64 897
  %i.re = load i8, ptr %i.rd, align 1, !range !12, !alias.scope !334, !noundef !7
  %i.rf = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.re, ptr %i.rf, align 1, !alias.scope !332, !noalias !331
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.ee:                                            ; preds = %bb.c
  %i.rg = getelementptr inbounds nuw i8, ptr %i.am, i64 904
  %i.rh = load ptr, ptr %i.rg, align 8, !alias.scope !334, !nonnull !7, !noundef !7 ; 2 uses
  %i.ri = atomicrmw add ptr %i.rh, i64 1 monotonic, align 8, !noalias !461
  %i.rj = icmp slt i64 %i.ri, 0
  br i1 %i.rj, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %6 = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %7 = load ptr, ptr %6, align 8, !alias.scope !334, !nonnull !7, !align !11, !noundef !7
  %i.rk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.rh, ptr %i.rk, align 8, !alias.scope !332, !noalias !331
  %8 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %7, ptr %8, align 8, !alias.scope !332, !noalias !331
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.eg:                                            ; preds = %bb.ee
  tail call void @llvm.trap()
  unreachable

_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.ef, %bb.ed, %bb.ec, %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, %bb.ax, %bb.aw, %_RNvXsE_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16PeerIncompatibleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, %bb.k, %bb.j, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  store i8 %i.ar, ptr %i.aj, align 8, !alias.scope !332, !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 64, i1 false), !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !331
  br label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCse7TjioWD9Jw_17unbuffered_client.exit.i

bb.eh:                                            ; preds = %bb.b
  %i.rl = getelementptr inbounds nuw i8, ptr %i.am, i64 904
  %i.rm = load ptr, ptr %i.rl, align 8, !alias.scope !330, !nonnull !7, !noundef !7
  %i.rn = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %i.ro = load ptr, ptr %i.rn, align 8, !alias.scope !330, !nonnull !7, !align !11, !noundef !7
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 48
  %i.rq = load ptr, ptr %i.rp, align 8, !invariant.load !7, !noalias !462, !nonnull !7
  call void %i.rq(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ak, ptr noundef nonnull %i.rm, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.am) #22, !inline_history !280
  br label %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCse7TjioWD9Jw_17unbuffered_client.exit.i

_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCse7TjioWD9Jw_17unbuffered_client.exit.i: ; preds = %bb.eh, %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.rr = load i8, ptr %i.ak, align 8, !range !329, !alias.scope !463, !noalias !327, !noundef !7 ; 2 uses
  %i.rs = icmp eq i8 %i.rr, -1
  br i1 %i.rs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i, label %bb.ei

bb.ei:                                            ; preds = %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysCse7TjioWD9Jw_17unbuffered_client.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  switch i8 %i.rr, label %bb.ej [
    i8 0, label %bb.el
    i8 1, label %bb.em
    i8 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 4, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 5, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 6, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 7, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 8, label %bb.en
    i8 9, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 10, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 11, label %bb.ev
    i8 12, label %bb.fn
    i8 13, label %bb.fv
    i8 14, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 15, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 16, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 17, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 18, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 19, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i8 20, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.ru = load ptr, ptr %i.rt, align 8, !alias.scope !468, !noalias !327, !nonnull !7, !noundef !7
  %i.rv = atomicrmw add ptr %i.ru, i64 -1 release, align 8, !noalias !468
  %i.rw = icmp eq i64 %i.rv, 1
  br i1 %i.rw, label %bb.ek, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i

bb.ek:                                            ; preds = %bb.ej
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.rt) #23
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i

bb.el:                                            ; preds = %bb.ei
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rx)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i

bb.em:                                            ; preds = %bb.ei
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ry)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i

bb.en:                                            ; preds = %bb.ei
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.sa = load i64, ptr %i.rz, align 8, !range !346, !alias.scope !470, !noalias !327, !noundef !7 ; 2 uses
  %switch.i.i.i.i = icmp slt i64 %i.sa, -9223372036854775787
  br i1 %switch.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.sb = icmp eq i64 %i.sa, -1
  br i1 %i.sb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.sd = load ptr, ptr %i.sc, align 8, !alias.scope !474, !noalias !327, !nonnull !7, !noundef !7 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.sf = load i64, ptr %i.se, align 8, !alias.scope !474, !noalias !327, !noundef !7 ; 4 uses
  %i.sg = icmp eq i64 %i.sf, 0
  br i1 %i.sg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i, label %.lr.ph251

bb.eq:                                            ; preds = %.lr.ph251
  %i.sh = icmp eq i64 %i.sj, %i.sf
  br i1 %i.sh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i, label %.lr.ph251

.lr.ph251:                                        ; preds = %bb.ep, %bb.eq
  %.sroa.0.0.i.i.i.i.i.i.i5.i250 = phi i64 [ %i.sj, %bb.eq ], [ 0, %bb.ep ] ; 2 uses
  %i.si = getelementptr inbounds nuw [112 x i8], ptr %i.sd, i64 %.sroa.0.0.i.i.i.i.i.i.i5.i250
  %i.sj = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i5.i250, 1 ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadECse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef align 8 dereferenceable(112) %i.si)
          to label %bb.eq unwind label %bb.es, !noalias !474

bb.er:                                            ; preds = %.lr.ph253
  %i.sk = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i.i6.i252, 1 ; 2 uses
  %i.sl = icmp eq i64 %i.sk, %i.sf
  br i1 %i.sl, label %.body.i.i.i.i.i7.i, label %.lr.ph253

bb.es:                                            ; preds = %.lr.ph251
  %i.sm = landingpad { ptr, i32 }
          cleanup
  %i.sn = icmp eq i64 %i.sj, %i.sf
  br i1 %i.sn, label %.body.i.i.i.i.i7.i, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.es, %bb.er
  %.sroa.0.1.i.i.i.i.i.i.i6.i252 = phi i64 [ %i.sk, %bb.er ], [ %i.sj, %bb.es ] ; 2 uses
  %i.so = getelementptr inbounds nuw [112 x i8], ptr %i.sd, i64 %.sroa.0.1.i.i.i.i.i.i.i6.i252
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadECse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef align 8 dereferenceable(112) %i.so) #18
          to label %bb.er unwind label %bb.et, !noalias !474

bb.et:                                            ; preds = %.lr.ph253
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !474
  unreachable

.body.i.i.i.i.i7.i:                               ; preds = %bb.er, %bb.es
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rz)
          to label %common.resume.i unwind label %bb.eu

bb.eu:                                            ; preds = %.body.i.i.i.i.i7.i
  %i.sq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i: ; preds = %bb.eq, %bb.ep
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.rz)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i

bb.ev:                                            ; preds = %bb.ei
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.ss = load i64, ptr %i.sr, align 8, !range !394, !alias.scope !476, !noalias !327, !noundef !7 ; 3 uses
  %i.st = icmp ne i64 %i.ss, -9223372036854775792
  call void @llvm.assume(i1 %i.st)
  %i.su = xor i64 %i.ss, -9223372036854775808
  %i.sv = icmp slt i64 %i.ss, 0
  %i.sw = select i1 %i.sv, i64 %i.su, i64 16
  switch i64 %i.sw, label %bb.ew [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 4, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 5, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 6, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 7, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 8, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 9, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 10, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 11, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 12, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 13, label %bb.ey
    i64 14, label %bb.ez
    i64 15, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 16, label %bb.fa
    i64 17, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 18, label %bb.fd
    i64 19, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
    i64 20, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i
  ]

bb.ew:                                            ; preds = %bb.ev
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.sy = load ptr, ptr %i.sx, align 8, !alias.scope !480, !noalias !327, !nonnull !7, !noundef !7
  %i.sz = atomicrmw add ptr %i.sy, i64 -1 release, align 8, !noalias !480
  %i.ta = icmp eq i64 %i.sz, 1
  br i1 %i.ta, label %bb.ex, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i

bb.ex:                                            ; preds = %bb.ew
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.sx) #23
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEECse7TjioWD9Jw_17unbuffered_client.exit.i

bb.ey:                                            ; preds = %bb.ev
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
end_hunk_1
