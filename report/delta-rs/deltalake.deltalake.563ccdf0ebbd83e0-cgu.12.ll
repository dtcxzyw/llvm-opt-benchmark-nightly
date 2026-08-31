Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.12?download=true
inline.NumInlined: 5547
inline.NumDeleted: 1701
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultxNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1U_13RawDeltaTable18get_latest_version0EB1U_:bb.a

bb.b:                                             ; preds = %.noexc
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %bb.f

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.b, %.noexc
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !1418, !noundef !4 ; 2 uses
  store i32 %i.m, ptr %i.b, align 4, !noalias !1418
  %i.n = load i32, ptr %i.c, align 4, !noalias !1418, !noundef !4
  %.not.i.i = icmp eq i32 %i.n, %i.m
  br i1 %.not.i.i, label %bb.c, label %bb.e, !prof !31

bb.c:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.o = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !1418
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i, label %bb.d, !prof !31

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i unwind label %bb.f

bb.e:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1418
  store ptr %i.c, ptr %i.a, align 8, !noalias !1418
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1418
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.q, align 8, !noalias !1418
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1418
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @192, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #45
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %bb.e
  unreachable

_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i:   ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1418
  store ptr %1, ptr %i.d, align 8, !noalias !1418
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 0, ptr %i.r, align 8, !noalias !1418
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1d_13RawDeltaTable18get_latest_version00EB1d_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i, %bb.e, %bb.d, %bb.b, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

bb.g:                                             ; preds = %_RNvNtCs7p2uQeJxui2_9deltalake5utils2rt.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1418
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.am

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %i.h = load ptr, ptr %2, align 8, !alias.scope !1434, !nonnull !4, !align !32, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1434, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1434, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1434, !noundef !4
  invoke void %i.j(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.m, i64 noundef %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ak, !inline_history !1435

bb.d:                                             ; preds = %bb.b
  %i.p = tail call fastcc noundef i16 @_RINvNtNtCs4j34XAPZOn0_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load i16, ptr %i.q, align 8, !noundef !4 ; 3 uses
  %i.s = and i16 %i.r, %i.p
  %i.t = zext nneg i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.x = zext i16 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not143 = icmp eq i64 %i.w, 0
  %i.ac = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  br label %.outer125

.outer125:                                        ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.d
  %.sroa.09.0.ph = phi i64 [ %i.az, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.d ] ; 3 uses
  %.sroa.01.0.ph = phi i64 [ %i.ba, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ %i.t, %bb.d ] ; 2 uses
  %i.ad = icmp ult i64 %.sroa.01.0.ph, %i.w       ; 2 uses
  %.not143.not = xor i1 %.not143, true
  %brmerge = or i1 %i.ad, %.not143.not
  %.sroa.01.0.ph.mux = select i1 %i.ad, i64 %.sroa.01.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer125
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.sroa.01.0.ph.mux ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !noundef !4 ; 2 uses
  %.not = icmp eq i16 %i.af, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.q
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.ag = zext i16 %i.af to i64                   ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !noundef !4 ; 2 uses
  %i.aj = and i16 %i.ai, %i.r
  %i.ak = zext i16 %i.aj to i64
  %i.al = sub i64 %.sroa.01.0.ph.mux, %i.ak
  %i.am = and i64 %i.al, %i.x
  %i.an = icmp samesign ult i64 %i.am, %.sroa.09.0.ph
  br i1 %i.an, label %bb.l, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.ao = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 88686269585142076
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.aq = call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap16try_insert_entryCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %0, i16 noundef %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.as = icmp ult i64 %.sroa.01.0.ph.mux, %i.ar
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.au = trunc i64 %i.ao to i16
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.sroa.01.0.ph.mux ; 2 uses
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.p, ptr %i.aw, align 2
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.ph.mux, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ax = icmp eq i16 %i.ai, %i.p
  br i1 %i.ax, label %bb.m, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.f
  %i.ay = icmp samesign ugt i64 %.sroa.09.0.ph, 511
  br i1 %i.ay, label %bb.ad, label %.noexc31

_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.p, %bb.n, %.split, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.k
  %i.az = add nuw nsw i64 %.sroa.09.0.ph, 1
  %i.ba = add i64 %.sroa.01.0.ph.mux, 1
  br label %.outer125

bb.m:                                             ; preds = %bb.k
  %i.bb = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, %i.ag
  br i1 %i.bc, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw [104 x i8], ptr %i.bd, i64 %i.ag ; 10 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !noundef !4
  %i.bh = icmp ne ptr %i.bg, null                 ; 2 uses
  %i.bi = load ptr, ptr %1, align 8, !noundef !4
  %i.bj = icmp eq ptr %i.bi, null                 ; 3 uses
  %not..i.i = xor i1 %i.bj, true
  %i.bk = xor i1 %i.bh, %i.bj
  br i1 %i.bk, label %bb.o, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.o:                                             ; preds = %bb.n
  br i1 %i.bh, label %bb.p, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !4 ; 2 uses
  %i.bn = load i64, ptr %i.ab, align 8, !noundef !4
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %.split, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.p
  %i.bp = load ptr, ptr %i.aa, align 8, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.br, ptr %i.bp, i64 %i.bm)
  %i.bs = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bs, label %bb.r, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.q:                                             ; preds = %bb.m
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #42
          to label %bb.e unwind label %bb.am

_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.bj)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bu = load i8, ptr %i.bt, align 8, !range !1436, !noundef !4
  %i.bv = load i8, ptr %i.aa, align 8, !range !1436, !noundef !4
  %i.bw = icmp eq i8 %i.bu, %i.bv
  br i1 %i.bw, label %bb.r, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.r:                                             ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.split
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.by = load i64, ptr %i.be, align 8, !range !3, !alias.scope !1437, !noalias !1442, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1437, !noalias !1442, !noundef !4 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !1440, !noalias !1444, !noundef !4 ; 7 uses
  %i.ce = icmp ult i64 %i.cd, 128102389400760776
  tail call void @llvm.assume(i1 %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1445
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store i64 1, ptr %i.b, align 8, !noalias !1445
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.cb, ptr %i.cg, align 8, !noalias !1445
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ch, align 8, !noalias !1445
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ag, ptr %i.ci, align 8, !noalias !1445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  %i.cj = load i64, ptr %i.bx, align 8, !range !191, !alias.scope !1451, !noalias !1452, !noundef !4
  %i.ck = icmp eq i64 %i.cd, %i.cj
  br i1 %i.ck, label %bb.t, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.u, !noalias !1452

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %i.cm = load ptr, ptr %i.cf, align 8, !alias.scope !1465, !noalias !1466, !nonnull !4, !align !32, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !1467, !nonnull !4, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !1465, !noalias !1466, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !1465, !noalias !1466, !noundef !4
  invoke void %i.co(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef %i.cr, i64 noundef %i.ct)
          to label %.body.thread.thread unwind label %bb.v, !noalias !1444, !inline_history !1468

bb.v:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !1444
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.t, %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !1451, !noalias !1452, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw [72 x i8], ptr %i.cw, i64 %i.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cx, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1444
  %i.cy = add nuw nsw i64 %i.cd, 1                ; 2 uses
  store i64 %i.cy, ptr %i.cc, align 8, !alias.scope !1451, !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1445
  %.not.i = icmp ugt i64 %i.cb, %i.cd
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.w:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !1440, !noalias !1444, !noundef !4 ; 6 uses
  %i.db = icmp ult i64 %i.da, 128102389400760776
  tail call void @llvm.assume(i1 %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1445
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store i64 0, ptr %i.a, align 8, !noalias !1445
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ag, ptr %i.dd, align 8, !noalias !1445
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.de, align 8, !noalias !1445
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ag, ptr %i.df, align 8, !noalias !1445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.dg = load i64, ptr %i.bx, align 8, !range !191, !alias.scope !1474, !noalias !1475, !noundef !4
  %i.dh = icmp eq i64 %i.da, %i.dg
  br i1 %i.dh, label %bb.x, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit9.i

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit9.i unwind label %bb.y, !noalias !1475

bb.y:                                             ; preds = %bb.x
  %i.di = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.dj = load ptr, ptr %i.dc, align 8, !alias.scope !1488, !noalias !1489, !nonnull !4, !align !32, !noundef !4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !1490, !nonnull !4, !noundef !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !1488, !noalias !1489, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !1488, !noalias !1489, !noundef !4
  invoke void %i.dl(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.do, i64 noundef %i.dq)
          to label %.body.thread.thread unwind label %bb.z, !noalias !1444, !inline_history !1468

bb.z:                                             ; preds = %bb.y
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !1444
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit9.i: ; preds = %bb.x, %bb.w
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !1474, !noalias !1475, !nonnull !4, !noundef !4
  %i.du = getelementptr inbounds nuw [72 x i8], ptr %i.dt, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.du, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !1444
  %i.dv = add nuw nsw i64 %i.da, 1
  store i64 %i.dv, ptr %i.cz, align 8, !alias.scope !1474, !noalias !1475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1445
  store i64 1, ptr %i.be, align 8, !alias.scope !1437, !noalias !1442
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.da, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !1437, !noalias !1442
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.da, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !1437, !noalias !1442
  br label %_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit

bb.aa:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i
  %i.dw = load ptr, ptr %i.cv, align 8, !alias.scope !1440, !noalias !1444, !nonnull !4, !noundef !4
  %i.dx = getelementptr inbounds nuw [72 x i8], ptr %i.dw, i64 %i.cb ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 1, ptr %i.dy, align 8, !noalias !1444
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %i.cd, ptr %i.dz, align 8, !noalias !1444
  store i64 1, ptr %i.be, align 8, !alias.scope !1437, !noalias !1442
  store i64 %i.cd, ptr %i.ca, align 8, !alias.scope !1437, !noalias !1442
  br label %_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit

bb.ab:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #42
          to label %.noexc unwind label %.body.thread

.noexc:                                           ; preds = %bb.ab
  unreachable

_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.aa, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  %i.ea = load ptr, ptr %1, align 8, !alias.scope !1497, !noundef !4 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !1510, !nonnull !4, !noundef !4
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ef = load ptr, ptr %i.aa, align 8, !alias.scope !1510, !noundef !4
  %i.eg = load i64, ptr %i.ab, align 8, !alias.scope !1510, !noundef !4
  tail call void %i.ed(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef %i.ef, i64 noundef %i.eg), !inline_history !1511
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit, %bb.ac, %_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit, %bb.aj, %bb.g, %bb.i
  %.sroa.0.1 = phi i8 [ 1, %bb.ac ], [ 0, %bb.i ], [ 2, %bb.g ], [ %., %bb.aj ], [ 1, %_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit ], [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit ], [ 2, %bb.al ]
end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs7p2uQeJxui2_9deltalake:bb.a

bb.am:                                            ; preds = %bb.a, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  %i.fk = load ptr, ptr %2, align 8, !alias.scope !1547, !nonnull !4, !align !32, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !1547, !nonnull !4, !noundef !4
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !1547, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !1547, !noundef !4
  invoke void %i.fm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef %i.fp, i64 noundef %i.fr)
          to label %.body.thread.thread unwind label %bb.an, !inline_history !1435

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit36: ; preds = %.body.thread.thread, %bb.ao
  resume { ptr, i32 } %.pn50

.body.thread.thread:                              ; preds = %bb.am, %bb.y, %bb.u, %bb.ak, %.body.thread
  %.pn50 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp53, %.body.thread ], [ %i.di, %bb.y ], [ %i.cl, %bb.u ], [ %i.fa, %bb.ak ], [ %lpad.thr_comm, %bb.am ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %i.ft = load ptr, ptr %1, align 8, !alias.scope !1554, !noundef !4 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit36, label %bb.ao

bb.ao:                                            ; preds = %.body.thread.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !1567, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !1567, !noundef !4
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !1567, !noundef !4
  invoke void %i.fw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef %i.fz, i64 noundef %i.gb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit36 unwind label %bb.an, !inline_history !1568

infloop:                                          ; preds = %.outer125, %infloop
  br label %infloop

infloop158:                                       ; preds = %.outer, %infloop158
  br label %infloop158
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMap6insertNtNtB8_4name10HeaderNameECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [32 x i8], align 8            ; 4 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  %i.i = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.bp, !noalias !1583

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  %i.j = load ptr, ptr %3, align 8, !alias.scope !1595, !noalias !1596, !nonnull !4, !align !32, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1597, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1595, !noalias !1596, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1595, !noalias !1596, !noundef !4
  invoke void %i.l(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.o, i64 noundef %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.bn, !noalias !1598, !inline_history !1435

bb.d:                                             ; preds = %bb.b
  %i.r = tail call fastcc noundef i16 @_RINvNtNtCs4j34XAPZOn0_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(32) %2), !noalias !1599 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load i16, ptr %i.s, align 8, !alias.scope !1600, !noalias !1583, !noundef !4 ; 3 uses
  %i.u = and i16 %i.t, %i.r
  %i.v = zext nneg i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1600, !noalias !1583, !noundef !4 ; 2 uses
  %i.z = zext i16 %i.t to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not = icmp eq i64 %i.y, 0
  %i.ae = load ptr, ptr %i.w, align 8, !alias.scope !1600, !noalias !1583, !nonnull !4, !noundef !4
  br label %.outer112

.outer112:                                        ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.d
  %.sroa.08.0.i.i.ph = phi i64 [ %i.bb, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.d ] ; 3 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.bc, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.af = icmp ult i64 %.sroa.0.0.i.i.ph, %i.y    ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.af, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.af, i64 %.sroa.0.0.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer112
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !noalias !1583, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.q
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.ai = zext i16 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !1583, !noundef !4 ; 2 uses
  %i.al = and i16 %i.ak, %i.t
  %i.am = zext i16 %i.al to i64
  %i.an = sub i64 %.sroa.0.0.i.i.ph.mux, %i.am
  %i.ao = and i64 %i.an, %i.z
  %i.ap = icmp samesign ult i64 %i.ao, %.sroa.08.0.i.i.ph
  br i1 %i.ap, label %bb.l, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.aq = load i64, ptr %i.aa, align 8, !alias.scope !1600, !noalias !1583, !noundef !4 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 88686269585142076
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !1602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !noalias !1596
  %i.as = call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap16try_insert_entryCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i16 noundef %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d), !noalias !1583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1601
  br i1 %i.as, label %_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load i64, ptr %i.x, align 8, !alias.scope !1600, !noalias !1583, !noundef !4 ; 2 uses
  %i.au = icmp ult i64 %.sroa.0.0.i.i.ph.mux, %i.at
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.w, align 8, !alias.scope !1600, !noalias !1583, !nonnull !4, !noundef !4
  %i.aw = trunc i64 %i.aq to i16
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  store i16 %i.aw, ptr %i.ax, align 2, !noalias !1583
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i16 %i.r, ptr %i.ay, align 2, !noalias !1583
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i.i.ph.mux, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #42, !noalias !1583
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.az = icmp eq i16 %i.ak, %i.r
  br i1 %i.az, label %bb.m, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.l:                                             ; preds = %bb.f
  %i.ba = icmp samesign ugt i64 %.sroa.08.0.i.i.ph, 511
  br i1 %i.ba, label %bb.bg, label %.noexc.i.i

_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.p, %bb.n, %bb.k
  %i.bb = add nuw nsw i64 %.sroa.08.0.i.i.ph, 1
  %i.bc = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer112

bb.m:                                             ; preds = %bb.k
  %i.bd = load i64, ptr %i.aa, align 8, !alias.scope !1600, !noalias !1583, !noundef !4 ; 11 uses
  %i.be = icmp ugt i64 %i.bd, %i.ai
  br i1 %i.be, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.ab, align 8, !alias.scope !1600, !noalias !1583, !nonnull !4, !noundef !4 ; 6 uses
  %i.bg = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %i.ai ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1583, !noundef !4
  %i.bj = icmp ne ptr %i.bi, null                 ; 3 uses
  %i.bk = load ptr, ptr %2, align 8, !alias.scope !1603, !noalias !1602, !noundef !4 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null                 ; 3 uses
  %not..i.i.i.i = xor i1 %i.bl, true
  %i.bm = xor i1 %i.bj, %i.bl
  br i1 %i.bm, label %bb.o, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.o:                                             ; preds = %bb.n
  br i1 %i.bj, label %bb.p, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !1583, !noundef !4 ; 2 uses
  %i.bp = load i64, ptr %i.ad, align 8, !alias.scope !1603, !noalias !1602, !noundef !4
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %.split.i.i, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.p
  %i.br = load ptr, ptr %i.ac, align 8, !alias.scope !1603, !noalias !1602, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !1583, !noundef !4
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.bt, ptr %i.br, i64 %i.bo), !noalias !1583
  %i.bu = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bu, label %bb.r, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.q:                                             ; preds = %bb.m
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #42
          to label %bb.e unwind label %bb.bp, !noalias !1583

_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.bl)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bw = load i8, ptr %i.bv, align 8, !range !1436, !noalias !1583, !noundef !4
  %i.bx = load i8, ptr %i.ac, align 8, !range !1436, !alias.scope !1603, !noalias !1602, !noundef !4
  %i.by = icmp eq i8 %i.bw, %i.bx
  br i1 %i.by, label %bb.r, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.r:                                             ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !noalias !1596
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  %i.bz = load i64, ptr %i.bg, align 8, !range !3, !noalias !1609, !noundef !4
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.s, label %bb.be

.loopexit.i.i.i:                                  ; preds = %bb.bb
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.bc, %.invoke.i.i.i, %._crit_edge.i.invoke.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ao, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fb, %bb.ao ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  %i.cb = load ptr, ptr %i.f, align 8, !alias.scope !1620, !noalias !1621, !nonnull !4, !align !32, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1622, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !1620, !noalias !1621, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !1620, !noalias !1621, !noundef !4
  invoke void %i.cd(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %i.cg, i64 noundef %i.ci)
          to label %bb.br unwind label %bb.bd, !noalias !1623, !inline_history !1435

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !1609, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !1627, !noalias !1630, !nonnull !4, !noundef !4 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.cn, align 8, !alias.scope !1627, !noalias !1630 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1632
  %i.co = icmp ult i64 %i.ck, %.promoted.i.i.i.i
  br i1 %i.co, label %.lr.ph.i.i.i.i, label %._crit_edge.i.invoke.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.noexc12.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.062.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i ], [ %i.gk, %.noexc12.i.i.i ] ; 8 uses
  %i.cy = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dp, %.noexc12.i.i.i ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.cz = getelementptr inbounds nuw [72 x i8], ptr %i.cm, i64 %.sroa.0.062.i.i.i.i ; 7 uses
  %i.da = load i64, ptr %i.cz, align 8, !range !3, !noalias !1634, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !noalias !1634, !noundef !4 ; 14 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !range !3, !noalias !1634, !noundef !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !noalias !1634, !noundef !4 ; 12 uses
  %i.dh = trunc nuw i64 %i.da to i1
  %i.di = trunc nuw i64 %i.de to i1               ; 2 uses
  br i1 %i.dh, label %bb.u, label %bb.v

._crit_edge.i.invoke.i.i.i:                       ; preds = %.noexc12.i.i.i, %bb.ah, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.x, %bb.w, %bb.s
  %i.dj = phi i64 [ %i.ck, %bb.s ], [ %i.dg, %bb.ah ], [ %i.dc, %bb.af ], [ %i.dg, %bb.ad ], [ %i.dg, %bb.aa ], [ %i.dc, %bb.w ], [ %i.dc, %bb.x ], [ %i.gk, %.noexc12.i.i.i ], [ %i.dc, %bb.ac ]
  %i.dk = phi i64 [ %.promoted.i.i.i.i, %bb.s ], [ %i.cy, %bb.ah ], [ %i.cy, %bb.af ], [ %i.bd, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.bd, %bb.w ], [ %i.bd, %bb.x ], [ %i.dp, %.noexc12.i.i.i ], [ %i.cy, %bb.ac ]
  %i.dl = phi ptr [ @35, %bb.s ], [ @44, %bb.ah ], [ @42, %bb.af ], [ @40, %bb.ad ], [ @39, %bb.aa ], [ @37, %bb.w ], [ @36, %bb.x ], [ @35, %.noexc12.i.i.i ], [ @43, %bb.ac ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl) #45
          to label %._crit_edge.i.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1609

._crit_edge.i.cont.i.i.i:                         ; preds = %._crit_edge.i.invoke.i.i.i
  unreachable

bb.u:                                             ; preds = %bb.t
  br i1 %i.di, label %bb.ac, label %bb.ad

bb.v:                                             ; preds = %bb.t
  %i.dm = icmp ult i64 %i.dc, %i.bd               ; 2 uses
  br i1 %i.di, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %i.dm, label %bb.z, label %._crit_edge.i.invoke.i.i.i

bb.x:                                             ; preds = %bb.v
  br i1 %i.dm, label %bb.y, label %._crit_edge.i.invoke.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %i.dc
  store i64 0, ptr %i.dn, align 8, !noalias !1634
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ag, %bb.ab, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1635
  call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  %i.do = icmp ult i64 %i.cy, 128102389400760776
  call void @llvm.assume(i1 %i.do)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.cz, i64 72, i1 false), !noalias !1639
  %i.dp = add nsw i64 %i.cy, -1                   ; 12 uses
  %i.dq = getelementptr inbounds nuw [72 x i8], ptr %i.cm, i64 %i.dp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cz, ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i64 72, i1 false), !noalias !1640
  store i64 %i.dp, ptr %i.cn, align 8, !alias.scope !1642, !noalias !1643
  %i.dr = load i64, ptr %i.b, align 8, !range !3, !noalias !1635, !noundef !4
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = load i64, ptr %i.cp, align 8, !noalias !1635
  %i.du = icmp eq i64 %i.dt, %i.dp
  %or.cond.i.i.i.i.i = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.z:                                             ; preds = %bb.w
  %i.dv = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %i.dc ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !range !3, !noalias !1634, !noundef !4
  %i.dx = trunc nuw i64 %i.dw to i1
  br i1 %i.dx, label %bb.aa, label %.invoke.i.i.i, !prof !31

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.dg, ptr %i.dy, align 8, !noalias !1634
  %i.dz = icmp ult i64 %i.dg, %i.cy
  br i1 %i.dz, label %bb.ab, label %._crit_edge.i.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.ae, %bb.z
  %i.ea = phi ptr [ @38, %bb.z ], [ @41, %bb.ae ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea) #45
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1609

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw [72 x i8], ptr %i.cm, i64 %i.dg ; 2 uses
  store i64 0, ptr %i.eb, align 8, !noalias !1634
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.dc, ptr %i.ec, align 8, !noalias !1634
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.ac:                                            ; preds = %bb.u
  %i.ed = icmp ult i64 %i.dc, %i.cy
  br i1 %i.ed, label %bb.ah, label %._crit_edge.i.invoke.i.i.i

bb.ad:                                            ; preds = %bb.u
  %i.ee = icmp ult i64 %i.dg, %i.bd
  br i1 %i.ee, label %bb.ae, label %._crit_edge.i.invoke.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ef = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %i.dg ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !range !3, !noalias !1634, !noundef !4
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %bb.af, label %.invoke.i.i.i, !prof !31

bb.af:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 %i.dc, ptr %i.ei, align 8, !noalias !1634
  %i.ej = icmp ult i64 %i.dc, %i.cy
  br i1 %i.ej, label %bb.ag, label %._crit_edge.i.invoke.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ek = getelementptr inbounds nuw [72 x i8], ptr %i.cm, i64 %i.dc ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 0, ptr %i.el, align 8, !noalias !1634
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store i64 %i.dg, ptr %i.em, align 8, !noalias !1634
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw [72 x i8], ptr %i.cm, i64 %i.dc ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 1, ptr %i.eo, align 8, !noalias !1634
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store i64 %i.dg, ptr %i.ep, align 8, !noalias !1634
  %i.eq = icmp ult i64 %i.dg, %i.cy
  br i1 %i.eq, label %bb.ai, label %._crit_edge.i.invoke.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw [72 x i8], ptr %i.cm, i64 %i.dg ; 2 uses
  store i64 1, ptr %i.er, align 8, !noalias !1634
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 %i.dc, ptr %i.es, align 8, !noalias !1634
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ak, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %i.et = load i64, ptr %i.cq, align 8, !range !3, !noalias !1635, !noundef !4
  %.not.i.i.i.i.i = icmp ne i64 %i.et, 0
  %i.eu = load i64, ptr %i.cr, align 8, !noalias !1635
  %i.ev = icmp eq i64 %i.eu, %i.dp
  %or.cond73.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.ev, i1 false
  br i1 %or.cond73.i.i.i.i.i, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  store i64 1, ptr %i.b, align 8, !noalias !1635
  store i64 %.sroa.0.062.i.i.i.i, ptr %i.cp, align 8, !noalias !1635
  br label %bb.aj

bb.al:                                            ; preds = %bb.am, %bb.aj
  %.not71.i.i.i.i.i = icmp eq i64 %.sroa.0.062.i.i.i.i, %i.dp
  br i1 %.not71.i.i.i.i.i, label %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.an

bb.am:                                            ; preds = %bb.aj
  store i64 1, ptr %i.cq, align 8, !noalias !1635
  store i64 %.sroa.0.062.i.i.i.i, ptr %i.cr, align 8, !noalias !1635
  br label %bb.al

bb.an:                                            ; preds = %bb.al
  %i.ew = load i64, ptr %i.dd, align 8, !range !3, !noalias !1634, !noundef !4
  %i.ex = load i64, ptr %i.df, align 8, !noalias !1634, !noundef !4 ; 6 uses
  %i.ey = load i64, ptr %i.cz, align 8, !range !3, !noalias !1634, !noundef !4
  %i.ez = load i64, ptr %i.db, align 8, !noalias !1634, !noundef !4 ; 6 uses
  %i.fa = trunc nuw i64 %i.ey to i1
  br i1 %i.fa, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %.invoke.i.i.i.i.i, %.invoke98.i.i.i.i.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !1656, !noalias !1635, !nonnull !4, !align !32, !noundef !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !1657, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !1656, !noalias !1635, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !1656, !noalias !1635, !noundef !4
  invoke void %i.ff(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef %i.fi, i64 noundef %i.fk)
          to label %.body.i.i.i unwind label %bb.ba, !noalias !1634, !inline_history !1468

bb.ap:                                            ; preds = %bb.an
  %i.fl = icmp ult i64 %i.ez, %i.dp
  br i1 %i.fl, label %bb.au, label %.invoke.i.i.i.i.i

bb.aq:                                            ; preds = %bb.an
  %i.fm = icmp ult i64 %i.ez, %i.bd
  br i1 %i.fm, label %bb.ar, label %.invoke.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.fn = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %i.ez ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !range !3, !noalias !1634, !noundef !4
  %i.fp = trunc nuw i64 %i.fo to i1
  br i1 %i.fp, label %bb.as, label %.invoke98.i.i.i.i.i, !prof !31

bb.as:                                            ; preds = %bb.ar
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %.sroa.0.062.i.i.i.i, ptr %i.fq, align 8, !noalias !1634
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.fr = trunc nuw i64 %i.ew to i1
  br i1 %i.fr, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw [72 x i8], ptr %i.cm, i64 %i.ez ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i64 1, ptr %i.ft, align 8, !noalias !1634
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i64 %.sroa.0.062.i.i.i.i, ptr %i.fu, align 8, !noalias !1634
  br label %bb.at

bb.av:                                            ; preds = %bb.at
  %i.fv = icmp ult i64 %i.ex, %i.dp
  br i1 %i.fv, label %bb.az, label %.invoke.i.i.i.i.i

bb.aw:                                            ; preds = %bb.at
  %i.fw = icmp ult i64 %i.ex, %i.bd
  br i1 %i.fw, label %bb.ax, label %.invoke.i.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.fx = getelementptr inbounds nuw [104 x i8], ptr %i.bf, i64 %i.ex ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !range !3, !noalias !1634, !noundef !4
  %i.fz = trunc nuw i64 %i.fy to i1
  br i1 %i.fz, label %bb.ay, label %.invoke98.i.i.i.i.i, !prof !31

bb.ay:                                            ; preds = %bb.ax
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 %.sroa.0.062.i.i.i.i, ptr %i.ga, align 8, !noalias !1634
  br label %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.invoke98.i.i.i.i.i:                              ; preds = %bb.ax, %bb.ar
  %i.gb = phi ptr [ @46, %bb.ar ], [ @49, %bb.ax ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb) #42
          to label %.cont99.i.i.i.i.i unwind label %bb.ao, !noalias !1634

.cont99.i.i.i.i.i:                                ; preds = %.invoke98.i.i.i.i.i
  unreachable

bb.az:                                            ; preds = %bb.av
  %i.gc = getelementptr inbounds nuw [72 x i8], ptr %i.cm, i64 %i.ex ; 2 uses
  store i64 1, ptr %i.gc, align 8, !noalias !1634
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 %.sroa.0.062.i.i.i.i, ptr %i.gd, align 8, !noalias !1634
  br label %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.invoke.i.i.i.i.i:                                ; preds = %bb.aw, %bb.av, %bb.aq, %bb.ap
  %i.ge = phi i64 [ %i.ex, %bb.aw ], [ %i.ez, %bb.ap ], [ %i.ez, %bb.aq ], [ %i.ex, %bb.av ]
  %i.gf = phi i64 [ %i.bd, %bb.aw ], [ %i.dp, %bb.ap ], [ %i.bd, %bb.aq ], [ %i.dp, %bb.av ]
  %i.gg = phi ptr [ @48, %bb.aw ], [ @47, %bb.ap ], [ @45, %bb.aq ], [ @50, %bb.av ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ge, i64 noundef %i.gf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gg) #42
          to label %.cont.i.i.i.i.i unwind label %bb.ao, !noalias !1634

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

bb.ba:                                            ; preds = %bb.ao
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !1634
  unreachable

_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.az, %bb.ay, %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1635
  %i.gi = load i64, ptr %i.cs, align 8, !range !3, !noalias !1632, !noundef !4
  %i.gj = trunc nuw i64 %i.gi to i1
  br i1 %i.gj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.gk = load i64, ptr %i.ct, align 8, !noalias !1632, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %i.gl = load ptr, ptr %i.cu, align 8, !alias.scope !1671, !noalias !1632, !nonnull !4, !align !32, !noundef !4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !1672, !nonnull !4, !noundef !4
  %i.go = load ptr, ptr %i.cw, align 8, !alias.scope !1671, !noalias !1632, !noundef !4
  %i.gp = load i64, ptr %i.cx, align 8, !alias.scope !1671, !noalias !1632, !noundef !4
  invoke void %i.gn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %i.go, i64 noundef %i.gp)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !1609, !inline_history !1673

.noexc12.i.i.i:                                   ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1632
  %i.gq = icmp ult i64 %i.gk, %i.dp
  br i1 %i.gq, label %bb.t, label %._crit_edge.i.invoke.i.i.i

bb.bc:                                            ; preds = %_RINvNtNtCs4j34XAPZOn0_4http6header3map18remove_extra_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  %i.gr = load ptr, ptr %i.cu, align 8, !alias.scope !1686, !noalias !1632, !nonnull !4, !align !32, !noundef !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !1687, !nonnull !4, !noundef !4
  %i.gu = load ptr, ptr %i.cw, align 8, !alias.scope !1686, !noalias !1632, !noundef !4
  %i.gv = load i64, ptr %i.cx, align 8, !alias.scope !1686, !noalias !1632, !noundef !4
  invoke void %i.gt(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %i.gu, i64 noundef %i.gv)
          to label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1609, !inline_history !1673

_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1632
  br label %bb.be

bb.bd:                                            ; preds = %.body.i.i.i
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !1623
  unreachable

bb.be:                                            ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.r
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.gx, i64 32, i1 false), !noalias !1688
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1689 ; 2 uses
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.540.0..sroa_idx.i.i, i64 7, i1 false), !noalias !1688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gx, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !1623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1601
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  br i1 %i.bj, label %bb.bf, label %_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !1708, !nonnull !4, !noundef !4
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hb = load ptr, ptr %i.ac, align 8, !alias.scope !1709, !noalias !1602, !noundef !4
  %i.hc = load i64, ptr %i.ad, align 8, !alias.scope !1709, !noalias !1602, !noundef !4
  call void %i.gz(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef %i.hb, i64 noundef %i.hc), !noalias !1599, !inline_history !1710
  br label %_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit

bb.bg:                                            ; preds = %bb.l
  %i.hd = load i64, ptr %1, align 8, !range !165, !alias.scope !1600, !noalias !1583, !noundef !4
  %i.he = icmp ne i64 %i.hd, 2
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.bg, %bb.l
  %.sroa.013.0.i.i = phi i1 [ %i.he, %bb.bg ], [ false, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !1602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !noalias !1596
  %i.hf = load i64, ptr %i.aa, align 8, !alias.scope !1711, !noalias !1714, !noundef !4 ; 2 uses
  %i.hg = icmp ult i64 %i.hf, 88686269585142076
  tail call void @llvm.assume(i1 %i.hg)
  %i.hh = call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap16try_insert_entryCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i16 noundef range(i16 0, -32768) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g) #47, !noalias !1583
  br i1 %i.hh, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %.noexc.i.i
  %i.hi = load ptr, ptr %i.w, align 8, !alias.scope !1711, !noalias !1714, !nonnull !4, !noundef !4
  %i.hj = load i64, ptr %i.x, align 8, !alias.scope !1711, !noalias !1714, !noundef !4 ; 2 uses
  %i.hk = trunc i64 %i.hf to i16
  %.not133 = icmp eq i64 %i.hj, 0
  br label %.outer

.outer:                                           ; preds = %bb.bj, %bb.bh
  %.sroa.6.0.i.i.i.ph = phi i16 [ %i.hs, %bb.bj ], [ %i.r, %bb.bh ] ; 2 uses
  %.sroa.07.0.i.i.i.ph = phi i16 [ %i.hn, %bb.bj ], [ %i.hk, %bb.bh ] ; 2 uses
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.hr, %bb.bj ], [ 0, %bb.bh ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.ht, %bb.bj ], [ %.sroa.0.0.i.i.ph.mux, %bb.bh ] ; 2 uses
  %i.hl = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.hj ; 2 uses
  %.not133.not = xor i1 %.not133, true
  %brmerge151 = or i1 %i.hl, %.not133.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.hl, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge151, label %.loopexit132, label %infloop150

.loopexit132:                                     ; preds = %.outer
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.sroa.0.0.i.i.i.ph.mux ; 4 uses
  %i.hn = load i16, ptr %i.hm, align 2, !noalias !1714, !noundef !4 ; 2 uses
  %i.ho = icmp eq i16 %i.hn, -1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 2 ; 3 uses
  br i1 %i.ho, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.loopexit132
  store i16 %.sroa.07.0.i.i.i.ph, ptr %i.hm, align 2, !noalias !1714
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.hp, align 2, !noalias !1714
  %i.hq = icmp ugt i64 %.sroa.05.0.i.i.i.ph, 127
  %or.cond.i.i.i = select i1 %.sroa.013.0.i.i, i1 true, i1 %i.hq
  br i1 %or.cond.i.i.i, label %bb.bk, label %.thread.i.i

bb.bj:                                            ; preds = %.loopexit132
  %i.hr = add i64 %.sroa.05.0.i.i.i.ph, 1
  %i.hs = load i16, ptr %i.hp, align 2, !noalias !1714, !noundef !4
  store i16 %.sroa.07.0.i.i.i.ph, ptr %i.hm, align 2, !noalias !1714
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.hp, align 2, !noalias !1714
  %i.ht = add nuw i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.bk:                                            ; preds = %bb.bi
  %i.hu = load i64, ptr %1, align 8, !range !165, !alias.scope !1711, !noalias !1714, !noundef !4
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %bb.bl, label %.thread.i.i

bb.bl:                                            ; preds = %bb.bk
  store i64 1, ptr %1, align 8, !alias.scope !1711, !noalias !1714
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bl, %bb.bk, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1601
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCs7p2uQeJxui2_9deltalake.exit

bb.bm:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1601
  br label %_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.thread

bb.bn:                                            ; preds = %bb.c
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  %i.hx = load ptr, ptr %2, align 8, !alias.scope !1723, !noalias !1602, !noundef !4 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !1736, !nonnull !4, !noundef !4
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !1737, !noalias !1602, !noundef !4
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !1737, !noalias !1602, !noundef !4
  tail call void %i.ia(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef %i.id, i64 noundef %i.if), !noalias !1738, !inline_history !1710
  br label %_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.thread

bb.bp:                                            ; preds = %bb.q, %bb.a
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %i.ig = load ptr, ptr %3, align 8, !alias.scope !1748, !noalias !1596, !nonnull !4, !align !32, !noundef !4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !1749, !nonnull !4, !noundef !4
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !1748, !noalias !1596, !noundef !4
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !1748, !noalias !1596, !noundef !4
  invoke void %i.ii(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef %i.il, i64 noundef %i.in)
          to label %bb.br unwind label %bb.bq, !noalias !1598, !inline_history !1435

bb.bq:                                            ; preds = %bb.bs, %bb.bp
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !1738
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit39.i.i: ; preds = %bb.bs, %bb.br
  resume { ptr, i32 } %.pn.ph.i.i

bb.br:                                            ; preds = %bb.bp, %bb.bn, %.body.i.i.i
  %.pn.ph.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.hw, %bb.bn ], [ %lpad.thr_comm.i.i, %bb.bp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1750)
  call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %i.ip = load ptr, ptr %2, align 8, !alias.scope !1756, !noalias !1602, !noundef !4 ; 2 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit39.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !1769, !nonnull !4, !noundef !4
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !1770, !noalias !1602, !noundef !4
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !alias.scope !1770, !noalias !1602, !noundef !4
  invoke void %i.is(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.it, ptr noundef %i.iv, i64 noundef %i.ix)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit39.i.i unwind label %bb.bq, !noalias !1738, !inline_history !1568

_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.be, %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  %i.iy = icmp eq i8 %.sroa.4.0.copyload.i.i, 3
  br i1 %i.iy, label %_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCs7p2uQeJxui2_9deltalake.exit, !prof !1776

_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.bm, %bb.g, %bb.bo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #42, !noalias !1777
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCs7p2uQeJxui2_9deltalake.exit: ; preds = %.thread.i.i, %bb.i, %_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit
  %.sroa.4.05 = phi i8 [ %.sroa.4.0.copyload.i.i, %_RINvXNtNtNtCs4j34XAPZOn0_4http6header3map16into_header_nameNtNtB7_4name10HeaderNameNtB3_6Sealed10try_insertNtNtB7_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit ], [ 2, %bb.i ], [ 2, %.thread.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false), !alias.scope !1777
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.4.05, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1777
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, i64 7, i1 false), !alias.scope !1777
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  ret void

infloop:                                          ; preds = %.outer112, %infloop
  br label %infloop

infloop150:                                       ; preds = %.outer, %infloop150
  br label %infloop150
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_4Sbbf5writeQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
end_hunk_1
begin_hunk_2_@_RNvXsg_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
bb.ce:                                            ; preds = %bb.cd
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ny = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.nx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.nw) #47
  br i1 %i.ny, label %bb.cf, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cf:                                            ; preds = %bb.ce
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.oa = load ptr, ptr %i.nz, align 16, !alias.scope !16860, !noalias !16863, !nonnull !4, !noundef !4 ; 6 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.oc = load ptr, ptr %i.ob, align 16, !alias.scope !16863, !noalias !16860, !nonnull !4, !noundef !4 ; 6 uses
  %i.od = icmp eq ptr %i.oa, %i.oc
  br i1 %i.od, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16868)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 64
  %i.of = load ptr, ptr %i.oe, align 8, !alias.scope !16865, !noalias !16870, !nonnull !4, !noundef !4 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 64
  %i.oh = load ptr, ptr %i.og, align 8, !alias.scope !16868, !noalias !16871, !nonnull !4, !noundef !4 ; 4 uses
  %i.oi = icmp eq ptr %i.of, %i.oh
  br i1 %i.oi, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16875)
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.ok = load i64, ptr %i.oj, align 8, !alias.scope !16872, !noalias !16877, !noundef !4 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.om = load i64, ptr %i.ol, align 8, !alias.scope !16875, !noalias !16878, !noundef !4
  %i.on = icmp eq i64 %i.ok, %i.om
  br i1 %i.on, label %bb.ci, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ci:                                            ; preds = %bb.ch
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oq = load ptr, ptr %i.oo, align 8, !alias.scope !16875, !noalias !16878, !nonnull !4, !noundef !4
  %i.or = load ptr, ptr %i.op, align 8, !alias.scope !16872, !noalias !16877, !nonnull !4, !noundef !4
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.ou = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.os, ptr noundef nonnull %i.ot, i64 noundef %i.ok), !noalias !16879
  br i1 %i.ou, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i16, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i16: ; preds = %bb.ci
  %i.ov = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.ox = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ov, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ow), !noalias !16880
  br i1 %i.ox, label %bb.cj, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cj:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i16, %bb.cg
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.oz = load i64, ptr %i.oy, align 8, !alias.scope !16865, !noalias !16870, !noundef !4 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oc, i64 32
  %i.pb = load i64, ptr %i.pa, align 8, !alias.scope !16868, !noalias !16871, !noundef !4
  %i.pc = icmp eq i64 %i.oz, %i.pb
  br i1 %i.pc, label %bb.ck, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ck:                                            ; preds = %bb.cj
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.pe = load ptr, ptr %i.pd, align 8, !alias.scope !16868, !noalias !16871, !nonnull !4, !noundef !4
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8, !alias.scope !16865, !noalias !16870, !nonnull !4, !noundef !4
  %i.ph = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.pg, ptr noundef nonnull %i.pe, i64 noundef %i.oz), !noalias !16880
  br i1 %i.ph, label %bb.cl, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cl:                                            ; preds = %bb.ck
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oa, i64 56
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !16865, !noalias !16870, !noundef !4 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oc, i64 56
  %i.pl = load i64, ptr %i.pk, align 8, !alias.scope !16868, !noalias !16871, !noundef !4
  %i.pm = icmp eq i64 %i.pj, %i.pl
  br i1 %i.pm, label %bb.cm, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cm:                                            ; preds = %bb.cl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oc, i64 48
  %i.po = load ptr, ptr %i.pn, align 8, !alias.scope !16868, !noalias !16871, !nonnull !4, !noundef !4
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oa, i64 48
  %i.pq = load ptr, ptr %i.pp, align 8, !alias.scope !16865, !noalias !16870, !nonnull !4, !noundef !4
  %i.pr = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.pq, ptr noundef nonnull %i.po, i64 noundef %i.pj), !noalias !16880
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cn:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16884)
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.pt = load i8, ptr %i.ps, align 8, !range !5, !alias.scope !16881, !noalias !16884, !noundef !4
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pv = load i8, ptr %i.pu, align 8, !range !5, !alias.scope !16884, !noalias !16881, !noundef !4
  %i.pw = icmp eq i8 %i.pt, %i.pv
  br i1 %i.pw, label %bb.co, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.co:                                            ; preds = %bb.cn
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pz = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.py, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.px) #47
  br i1 %i.pz, label %bb.cp, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cp:                                            ; preds = %bb.co
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qb = load ptr, ptr %i.qa, align 16, !alias.scope !16881, !noalias !16884, !nonnull !4, !noundef !4 ; 6 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.qd = load ptr, ptr %i.qc, align 16, !alias.scope !16884, !noalias !16881, !nonnull !4, !noundef !4 ; 6 uses
  %i.qe = icmp eq ptr %i.qb, %i.qd
  br i1 %i.qe, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16889)
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 64
  %i.qg = load ptr, ptr %i.qf, align 8, !alias.scope !16886, !noalias !16891, !nonnull !4, !noundef !4 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 64
  %i.qi = load ptr, ptr %i.qh, align 8, !alias.scope !16889, !noalias !16892, !nonnull !4, !noundef !4 ; 4 uses
  %i.qj = icmp eq ptr %i.qg, %i.qi
  br i1 %i.qj, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16896)
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.ql = load i64, ptr %i.qk, align 8, !alias.scope !16893, !noalias !16898, !noundef !4 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qn = load i64, ptr %i.qm, align 8, !alias.scope !16896, !noalias !16899, !noundef !4
  %i.qo = icmp eq i64 %i.ql, %i.qn
  br i1 %i.qo, label %bb.cs, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cs:                                            ; preds = %bb.cr
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qr = load ptr, ptr %i.qp, align 8, !alias.scope !16896, !noalias !16899, !nonnull !4, !noundef !4
  %i.qs = load ptr, ptr %i.qq, align 8, !alias.scope !16893, !noalias !16898, !nonnull !4, !noundef !4
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qv = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.qt, ptr noundef nonnull %i.qu, i64 noundef %i.ql), !noalias !16900
  br i1 %i.qv, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i18, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i18: ; preds = %bb.cs
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qg, i64 32
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.qy = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qx), !noalias !16901
  br i1 %i.qy, label %bb.ct, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ct:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i18, %bb.cq
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qb, i64 32
  %i.ra = load i64, ptr %i.qz, align 8, !alias.scope !16886, !noalias !16891, !noundef !4 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !16889, !noalias !16892, !noundef !4
  %i.rd = icmp eq i64 %i.ra, %i.rc
  br i1 %i.rd, label %bb.cu, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cu:                                            ; preds = %bb.ct
  %i.re = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.rf = load ptr, ptr %i.re, align 8, !alias.scope !16889, !noalias !16892, !nonnull !4, !noundef !4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8, !alias.scope !16886, !noalias !16891, !nonnull !4, !noundef !4
  %i.ri = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.rh, ptr noundef nonnull %i.rf, i64 noundef %i.ra), !noalias !16901
  br i1 %i.ri, label %bb.cv, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cv:                                            ; preds = %bb.cu
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qb, i64 56
  %i.rk = load i64, ptr %i.rj, align 8, !alias.scope !16886, !noalias !16891, !noundef !4 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qd, i64 56
  %i.rm = load i64, ptr %i.rl, align 8, !alias.scope !16889, !noalias !16892, !noundef !4
  %i.rn = icmp eq i64 %i.rk, %i.rm
  br i1 %i.rn, label %bb.cw, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cw:                                            ; preds = %bb.cv
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qd, i64 48
  %i.rp = load ptr, ptr %i.ro, align 8, !alias.scope !16889, !noalias !16892, !nonnull !4, !noundef !4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qb, i64 48
  %i.rr = load ptr, ptr %i.rq, align 8, !alias.scope !16886, !noalias !16891, !nonnull !4, !noundef !4
  %i.rs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.rr, ptr noundef nonnull %i.rp, i64 noundef %i.rk), !noalias !16901
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cx:                                            ; preds = %bb.b
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16905)
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rw = load i8, ptr %i.rv, align 16, !range !5, !alias.scope !16902, !noalias !16905, !noundef !4
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ry = load i8, ptr %i.rx, align 16, !range !5, !alias.scope !16905, !noalias !16902, !noundef !4
  %i.rz = icmp eq i8 %i.rw, %i.ry
  br i1 %i.rz, label %bb.cy, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cy:                                            ; preds = %bb.cx
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.sb = load i8, ptr %i.sa, align 1, !range !5, !alias.scope !16902, !noalias !16905, !noundef !4
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.sd = load i8, ptr %i.sc, align 1, !range !5, !alias.scope !16905, !noalias !16902, !noundef !4
  %i.se = icmp eq i8 %i.sb, %i.sd
  br i1 %i.se, label %bb.cz, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cz:                                            ; preds = %bb.cy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16910)
  %i.sf = load ptr, ptr %i.rt, align 8, !alias.scope !16912, !noalias !16913, !noundef !4 ; 2 uses
  %i.sg = icmp ne ptr %i.sf, null                 ; 2 uses
  %i.sh = load ptr, ptr %i.ru, align 8, !alias.scope !16913, !noalias !16912, !noundef !4 ; 3 uses
  %i.si = icmp eq ptr %i.sh, null                 ; 3 uses
  %not..i.i = xor i1 %i.si, true
  %i.sj = xor i1 %i.sg, %i.si
  br i1 %i.sj, label %bb.da, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.da:                                            ; preds = %bb.cz
  br i1 %i.sg, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  tail call void @llvm.assume(i1 %not..i.i)
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sl = load i64, ptr %i.sk, align 16, !alias.scope !16912, !noalias !16913, !noundef !4 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sn = load i64, ptr %i.sm, align 16, !alias.scope !16913, !noalias !16912, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sh) ]
  %i.so = icmp eq i64 %i.sl, %i.sn
  br i1 %i.so, label %bb.dd, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dc:                                            ; preds = %bb.da
  tail call void @llvm.assume(i1 %i.si)
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sq = load i64, ptr %i.sp, align 8, !alias.scope !16912, !noalias !16913, !noundef !4 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ss = load i64, ptr %i.sr, align 8, !alias.scope !16913, !noalias !16912, !noundef !4
  %i.st = icmp eq i64 %i.sq, %i.ss
  br i1 %i.st, label %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dd:                                            ; preds = %bb.db
  %i.su = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %bcmp8.i.i = tail call i32 @bcmp(ptr nonnull %i.sv, ptr nonnull %i.su, i64 %i.sl), !noalias !16914
  %i.sw = icmp eq i32 %bcmp8.i.i, 0
  br i1 %i.sw, label %bb.de, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.de:                                            ; preds = %bb.dd
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sy = load i64, ptr %i.sx, align 16, !alias.scope !16912, !noalias !16913, !noundef !4 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ta = load i64, ptr %i.sz, align 16, !alias.scope !16913, !noalias !16912, !noundef !4
  %i.tb = icmp eq i64 %i.sy, %i.ta
  br i1 %i.tb, label %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.de, %bb.dc
  %.sink.i.i = phi i64 [ 8, %bb.dc ], [ 16, %bb.de ] ; 2 uses
  %.sink14.i.i = phi i64 [ %i.sq, %bb.dc ], [ %i.sy, %bb.de ]
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.sink.i.i
  %i.td = load ptr, ptr %i.tc, align 8, !alias.scope !16913, !noalias !16912, !nonnull !4, !noundef !4
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rt, i64 %.sink.i.i
  %i.tg = load ptr, ptr %i.tf, align 8, !alias.scope !16912, !noalias !16913, !nonnull !4, !noundef !4
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %bcmp9.i.i = tail call i32 @bcmp(ptr nonnull %i.th, ptr nonnull %i.te, i64 %.sink14.i.i), !noalias !16914
  %i.ti = icmp eq i32 %bcmp9.i.i, 0
  br i1 %i.ti, label %bb.df, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.df:                                            ; preds = %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8, !alias.scope !16902, !noalias !16905, !nonnull !4, !noundef !4 ; 6 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.tm = load ptr, ptr %i.tl, align 8, !alias.scope !16905, !noalias !16902, !nonnull !4, !noundef !4 ; 6 uses
  %i.tn = icmp eq ptr %i.tk, %i.tm
  br i1 %i.tn, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16918)
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 64
  %i.tp = load ptr, ptr %i.to, align 8, !alias.scope !16915, !noalias !16920, !nonnull !4, !noundef !4 ; 4 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 64
  %i.tr = load ptr, ptr %i.tq, align 8, !alias.scope !16918, !noalias !16921, !nonnull !4, !noundef !4 ; 4 uses
  %i.ts = icmp eq ptr %i.tp, %i.tr
  br i1 %i.ts, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16925)
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 24
  %i.tu = load i64, ptr %i.tt, align 8, !alias.scope !16922, !noalias !16927, !noundef !4 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  %i.tw = load i64, ptr %i.tv, align 8, !alias.scope !16925, !noalias !16928, !noundef !4
  %i.tx = icmp eq i64 %i.tu, %i.tw
  br i1 %i.tx, label %bb.di, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.di:                                            ; preds = %bb.dh
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.ua = load ptr, ptr %i.ty, align 8, !alias.scope !16925, !noalias !16928, !nonnull !4, !noundef !4
  %i.ub = load ptr, ptr %i.tz, align 8, !alias.scope !16922, !noalias !16927, !nonnull !4, !noundef !4
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.ue = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.uc, ptr noundef nonnull %i.ud, i64 noundef %i.tu), !noalias !16929
  br i1 %i.ue, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20: ; preds = %bb.di
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  %i.uh = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.uf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ug), !noalias !16930
  br i1 %i.uh, label %bb.dj, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dj:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20, %bb.dg
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.uj = load i64, ptr %i.ui, align 8, !alias.scope !16915, !noalias !16920, !noundef !4 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tm, i64 32
  %i.ul = load i64, ptr %i.uk, align 8, !alias.scope !16918, !noalias !16921, !noundef !4
  %i.um = icmp eq i64 %i.uj, %i.ul
  br i1 %i.um, label %bb.dk, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dk:                                            ; preds = %bb.dj
  %i.un = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.uo = load ptr, ptr %i.un, align 8, !alias.scope !16918, !noalias !16921, !nonnull !4, !noundef !4
  %i.up = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.uq = load ptr, ptr %i.up, align 8, !alias.scope !16915, !noalias !16920, !nonnull !4, !noundef !4
  %i.ur = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.uq, ptr noundef nonnull %i.uo, i64 noundef %i.uj), !noalias !16930
  br i1 %i.ur, label %bb.dl, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dl:                                            ; preds = %bb.dk
  %i.us = getelementptr inbounds nuw i8, ptr %i.tk, i64 56
  %i.ut = load i64, ptr %i.us, align 8, !alias.scope !16915, !noalias !16920, !noundef !4 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tm, i64 56
  %i.uv = load i64, ptr %i.uu, align 8, !alias.scope !16918, !noalias !16921, !noundef !4
  %i.uw = icmp eq i64 %i.ut, %i.uv
  br i1 %i.uw, label %bb.dm, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dm:                                            ; preds = %bb.dl
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tm, i64 48
  %i.uy = load ptr, ptr %i.ux, align 8, !alias.scope !16918, !noalias !16921, !nonnull !4, !noundef !4
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tk, i64 48
  %i.va = load ptr, ptr %i.uz, align 8, !alias.scope !16915, !noalias !16920, !nonnull !4, !noundef !4
  %i.vb = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.va, ptr noundef nonnull %i.uy, i64 noundef %i.ut), !noalias !16930
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dn:                                            ; preds = %bb.b
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16934)
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.vf = load i8, ptr %i.ve, align 16, !range !5, !alias.scope !16931, !noalias !16934, !noundef !4
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.vh = load i8, ptr %i.vg, align 16, !range !5, !alias.scope !16934, !noalias !16931, !noundef !4
  %i.vi = icmp eq i8 %i.vf, %i.vh
  br i1 %i.vi, label %bb.do, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.do:                                            ; preds = %bb.dn
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.vk = load i8, ptr %i.vj, align 1, !range !5, !alias.scope !16931, !noalias !16934, !noundef !4
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.vm = load i8, ptr %i.vl, align 1, !range !5, !alias.scope !16934, !noalias !16931, !noundef !4
  %i.vn = icmp eq i8 %i.vk, %i.vm
  br i1 %i.vn, label %bb.dp, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dp:                                            ; preds = %bb.do
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.vp = load i64, ptr %i.vo, align 16, !alias.scope !16931, !noalias !16934, !noundef !4 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.vr = load i64, ptr %i.vq, align 16, !alias.scope !16934, !noalias !16931, !noundef !4
  %i.vs = icmp eq i64 %i.vp, %i.vr
  br i1 %i.vs, label %bb.dq, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dq:                                            ; preds = %bb.dp
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.vu = load ptr, ptr %i.vt, align 8, !alias.scope !16934, !noalias !16931, !nonnull !4, !noundef !4
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.vw = load ptr, ptr %i.vv, align 8, !alias.scope !16931, !noalias !16934, !nonnull !4, !noundef !4
  %bcmp.i22 = tail call i32 @bcmp(ptr nonnull %i.vw, ptr nonnull %i.vu, i64 %i.vp), !noalias !16936, !inline_history !16937
  %i.vx = icmp eq i32 %bcmp.i22, 0
  br i1 %i.vx, label %bb.dr, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dr:                                            ; preds = %bb.dq
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.vz = load i64, ptr %i.vy, align 8, !range !133, !alias.scope !16931, !noalias !16934, !noundef !4
  %.not.i23 = icmp eq i64 %i.vz, -9223372036854775808
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.wb = load i64, ptr %i.wa, align 8, !range !133, !alias.scope !16934, !noalias !16931, !noundef !4
  %i.wc = icmp eq i64 %i.wb, -9223372036854775808 ; 2 uses
  br i1 %.not.i23, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.wc, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.du

bb.dt:                                            ; preds = %bb.dr
  br i1 %i.wc, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.du:                                            ; preds = %bb.ds
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.we = load i64, ptr %i.wd, align 8, !alias.scope !16931, !noalias !16934, !noundef !4 ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.wg = load i64, ptr %i.wf, align 8, !alias.scope !16934, !noalias !16931, !noundef !4
  %i.wh = icmp eq i64 %i.we, %i.wg
  br i1 %i.wh, label %bb.dv, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dv:                                            ; preds = %bb.du
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.wj = load ptr, ptr %i.wi, align 16, !alias.scope !16934, !noalias !16931, !nonnull !4, !noundef !4
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.wl = load ptr, ptr %i.wk, align 16, !alias.scope !16931, !noalias !16934, !nonnull !4, !noundef !4
  %.not38.not = icmp eq i64 %i.we, 0
  br i1 %.not38.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

bb.dw:                                            ; preds = %.lr.ph
  %i.wm = add nuw i64 %.sroa.01.0.i3039, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.wm, %i.we
  br i1 %exitcond.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dv, %bb.dw
  %.sroa.01.0.i3039 = phi i64 [ %i.wm, %bb.dw ], [ 0, %bb.dv ] ; 3 uses
  %i.wn = getelementptr inbounds nuw [208 x i8], ptr %i.wl, i64 %.sroa.01.0.i3039
  %i.wo = getelementptr inbounds nuw [208 x i8], ptr %i.wj, i64 %.sroa.01.0.i3039
  %i.wp = tail call fastcc noundef zeroext i1 @_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %i.wn, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %i.wo) #47, !noalias !16936, !inline_history !16938
  br i1 %i.wp, label %bb.dw, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
end_hunk_2
