inline.NumInlined: 5547
inline.NumDeleted: 1701
begin_hunk_0_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultxNtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1U_13RawDeltaTable18get_latest_version0EB1U_:bb.a
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
          to label %bb.b unwind label %bb.ak

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
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ai, !inline_history !1435

bb.d:                                             ; preds = %bb.b
  %i.p = tail call fastcc noundef i16 @_RINvNtNtCs4j34XAPZOn0_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load i16, ptr %i.q, align 8, !noundef !4 ; 3 uses
  %i.s = and i16 %i.r, %i.p
  %i.t = zext nneg i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !nonnull !4
  %i.y = zext i16 %i.r to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i64, ptr %i.z, align 8             ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = icmp eq ptr %i.ad, null                 ; 3 uses
  %not..i.i = xor i1 %i.ae, true
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !range !1436
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = load ptr, ptr %i.af, align 8
  %.not135 = icmp eq i64 %i.w, 0
  br label %.outer119

.outer119:                                        ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.d
  %.sroa.09.0.ph = phi i64 [ %i.be, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.d ] ; 3 uses
  %.sroa.01.0.ph = phi i64 [ %i.bf, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ %i.t, %bb.d ] ; 2 uses
  %i.ak = icmp ult i64 %.sroa.01.0.ph, %i.w       ; 2 uses
  %.not135.not = xor i1 %.not135, true
  %brmerge = or i1 %i.ak, %.not135.not
  %.sroa.01.0.ph.mux = select i1 %i.ak, i64 %.sroa.01.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer119
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.sroa.01.0.ph.mux ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !noundef !4 ; 2 uses
  %.not = icmp eq i16 %i.am, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.q
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.an = zext i16 %i.am to i64                   ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ap = load i16, ptr %i.ao, align 2, !noundef !4 ; 2 uses
  %i.aq = and i16 %i.ap, %i.r
  %i.ar = zext i16 %i.aq to i64
  %i.as = sub i64 %.sroa.01.0.ph.mux, %i.ar
  %i.at = and i64 %i.as, %i.y
  %i.au = icmp samesign ult i64 %i.at, %.sroa.09.0.ph
  br i1 %i.au, label %.noexc31, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.av = icmp ult i64 %i.aa, 88686269585142076
  tail call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.aw = call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap16try_insert_entryCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %0, i16 noundef %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.ay = icmp ult i64 %.sroa.01.0.ph.mux, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.ba = trunc i64 %i.aa to i16
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.sroa.01.0.ph.mux ; 2 uses
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i16 %i.p, ptr %i.bc, align 2
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.ph.mux, i64 noundef %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.bd = icmp eq i16 %i.ap, %i.p
  br i1 %i.bd, label %bb.l, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.o, %bb.m, %bb.p, %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.k
  %i.be = add nuw nsw i64 %.sroa.09.0.ph, 1
  %i.bf = add i64 %.sroa.01.0.ph.mux, 1
  br label %.outer119

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ugt i64 %i.aa, %i.an
  br i1 %i.bg, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw [104 x i8], ptr %i.ac, i64 %i.an ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !noundef !4
  %i.bk = icmp ne ptr %i.bj, null                 ; 2 uses
  %i.bl = xor i1 %i.bk, %i.ae
  br i1 %i.bl, label %bb.n, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.bk, label %bb.o, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.assume(i1 %not..i.i)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4
  %i.bo = icmp eq i64 %i.bn, %i.ai
  br i1 %i.bo, label %bb.p, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.bq, ptr %i.aj, i64 %i.ai)
  %i.br = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.br, label %bb.r, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.q:                                             ; preds = %bb.l
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #42
          to label %bb.e unwind label %bb.ak

_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.ae)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bt = load i8, ptr %i.bs, align 8, !range !1436, !noundef !4
  %i.bu = icmp eq i8 %i.bt, %i.ag
  br i1 %i.bu, label %bb.r, label %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.r:                                             ; preds = %_RNvXsy_NtNtCs4j34XAPZOn0_4http6header4nameNtB5_10HeaderNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.bw = load i64, ptr %i.bh, align 8, !range !3, !alias.scope !1437, !noalias !1442, !noundef !4
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !1437, !noalias !1442, !noundef !4 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1440, !noalias !1444, !noundef !4 ; 7 uses
  %i.cc = icmp ult i64 %i.cb, 128102389400760776
  tail call void @llvm.assume(i1 %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1445
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store i64 1, ptr %i.b, align 8, !noalias !1445
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bz, ptr %i.ce, align 8, !noalias !1445
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.cf, align 8, !noalias !1445
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.an, ptr %i.cg, align 8, !noalias !1445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  %i.ch = load i64, ptr %i.bv, align 8, !range !191, !alias.scope !1451, !noalias !1452, !noundef !4
  %i.ci = icmp eq i64 %i.cb, %i.ch
  br i1 %i.ci, label %bb.t, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.u, !noalias !1452

bb.u:                                             ; preds = %bb.t
  %i.cj = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %i.ck = load ptr, ptr %i.cd, align 8, !alias.scope !1465, !noalias !1466, !nonnull !4, !align !32, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !1467, !nonnull !4, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !1465, !noalias !1466, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !1465, !noalias !1466, !noundef !4
  invoke void %i.cm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.cp, i64 noundef %i.cr)
          to label %.body.thread.thread unwind label %bb.v, !noalias !1444, !inline_history !1468

bb.v:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !1444
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.t, %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !1451, !noalias !1452, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw [72 x i8], ptr %i.cu, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cv, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1444
  %i.cw = add nuw nsw i64 %i.cb, 1                ; 2 uses
  store i64 %i.cw, ptr %i.ca, align 8, !alias.scope !1451, !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1445
  %.not.i = icmp ugt i64 %i.bz, %i.cb
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.w:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !1440, !noalias !1444, !noundef !4 ; 6 uses
  %i.cz = icmp ult i64 %i.cy, 128102389400760776
  tail call void @llvm.assume(i1 %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1445
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store i64 0, ptr %i.a, align 8, !noalias !1445
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.an, ptr %i.db, align 8, !noalias !1445
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.dc, align 8, !noalias !1445
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.an, ptr %i.dd, align 8, !noalias !1445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.de = load i64, ptr %i.bv, align 8, !range !191, !alias.scope !1474, !noalias !1475, !noundef !4
  %i.df = icmp eq i64 %i.cy, %i.de
  br i1 %i.df, label %bb.x, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit9.i

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit9.i unwind label %bb.y, !noalias !1475

bb.y:                                             ; preds = %bb.x
  %i.dg = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.dh = load ptr, ptr %i.da, align 8, !alias.scope !1488, !noalias !1489, !nonnull !4, !align !32, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !1490, !nonnull !4, !noundef !4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !1488, !noalias !1489, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !1488, !noalias !1489, !noundef !4
  invoke void %i.dj(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef %i.dm, i64 noundef %i.do)
          to label %.body.thread.thread unwind label %bb.z, !noalias !1444, !inline_history !1468

bb.z:                                             ; preds = %bb.y
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !1444
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit9.i: ; preds = %bb.x, %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !1474, !noalias !1475, !nonnull !4, !noundef !4
  %i.ds = getelementptr inbounds nuw [72 x i8], ptr %i.dr, i64 %i.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ds, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !1444
  %i.dt = add nuw nsw i64 %i.cy, 1
  store i64 %i.dt, ptr %i.cx, align 8, !alias.scope !1474, !noalias !1475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1445
  store i64 1, ptr %i.bh, align 8, !alias.scope !1437, !noalias !1442
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.cy, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !1437, !noalias !1442
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.cy, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !1437, !noalias !1442
  br label %_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit

bb.aa:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i
  %i.du = load ptr, ptr %i.ct, align 8, !alias.scope !1440, !noalias !1444, !nonnull !4, !noundef !4
  %i.dv = getelementptr inbounds nuw [72 x i8], ptr %i.du, i64 %i.bz ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 1, ptr %i.dw, align 8, !noalias !1444
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store i64 %i.cb, ptr %i.dx, align 8, !noalias !1444
  store i64 1, ptr %i.bh, align 8, !alias.scope !1437, !noalias !1442
  store i64 %i.cb, ptr %i.by, align 8, !alias.scope !1437, !noalias !1442
  br label %_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit

bb.ab:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bz, i64 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #42
          to label %.noexc unwind label %.body.thread

.noexc:                                           ; preds = %bb.ab
  unreachable

_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.aa, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCs7p2uQeJxui2_9deltalake.exit9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  %i.dy = load ptr, ptr %1, align 8, !alias.scope !1497, !noundef !4 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !1510, !nonnull !4, !noundef !4
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ed = load ptr, ptr %i.af, align 8, !alias.scope !1510, !noundef !4
  %i.ee = load i64, ptr %i.ah, align 8, !alias.scope !1510, !noundef !4
  tail call void %i.eb(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef %i.ed, i64 noundef %i.ee), !inline_history !1511
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit, %bb.ac, %_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit, %bb.ah, %bb.g, %bb.i
  %.sroa.0.1 = phi i8 [ 1, %bb.ac ], [ 0, %bb.i ], [ 2, %bb.g ], [ %., %bb.ah ], [ 1, %_RINvNtNtCs4j34XAPZOn0_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit ], [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit ], [ 2, %bb.aj ]
  ret i8 %.sroa.0.1

.noexc31:                                         ; preds = %bb.f
  %i.ef = icmp samesign ugt i64 %.sroa.09.0.ph, 511
  %i.eg = load i64, ptr %0, align 8, !range !165
  %i.eh = icmp ne i64 %i.eg, 2
  %.sroa.016.0 = select i1 %i.ef, i1 %i.eh, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.ei = icmp ult i64 %i.aa, 88686269585142076
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap16try_insert_entryCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i16 noundef range(i16 0, -32768) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e) #47
  br i1 %i.ej, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %.noexc31
  %i.ek = load ptr, ptr %i.u, align 8, !alias.scope !1512, !noalias !1515, !nonnull !4, !noundef !4
  %i.el = load i64, ptr %i.v, align 8, !alias.scope !1512, !noalias !1515, !noundef !4 ; 2 uses
  %i.em = trunc i64 %i.aa to i16
  %.not136 = icmp eq i64 %i.el, 0
  br label %.outer

.outer:                                           ; preds = %bb.af, %bb.ad
  %.sroa.6.0.i.ph = phi i16 [ %i.ew, %bb.af ], [ %i.p, %bb.ad ] ; 2 uses
  %.sroa.09.0.i.ph = phi i16 [ %i.ep, %bb.af ], [ %i.em, %bb.ad ] ; 2 uses
  %.sroa.07.0.i.ph = phi i64 [ %i.ev, %bb.af ], [ 0, %bb.ad ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.ex, %bb.af ], [ %.sroa.01.0.ph.mux, %bb.ad ] ; 2 uses
  %i.en = icmp ult i64 %.sroa.0.0.i.ph, %i.el     ; 2 uses
  %.not136.not = xor i1 %.not136, true
  %brmerge149 = or i1 %i.en, %.not136.not
  %.sroa.0.0.i.ph.mux = select i1 %i.en, i64 %.sroa.0.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge149, label %.loopexit134, label %infloop148

.loopexit134:                                     ; preds = %.outer
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.sroa.0.0.i.ph.mux ; 4 uses
  %i.ep = load i16, ptr %i.eo, align 2, !noalias !1515, !noundef !4 ; 2 uses
  %i.eq = icmp eq i16 %i.ep, -1
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 2 ; 3 uses
  br i1 %i.eq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.loopexit134
  store i16 %.sroa.09.0.i.ph, ptr %i.eo, align 2, !noalias !1515
  store i16 %.sroa.6.0.i.ph, ptr %i.er, align 2, !noalias !1515
  %i.es = icmp ugt i64 %.sroa.07.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.016.0, i1 true, i1 %i.es
  %i.et = load i64, ptr %0, align 8, !range !165, !alias.scope !1512, !noalias !1515
  %i.eu = icmp eq i64 %i.et, 0
  %or.cond3.i = select i1 %or.cond.i, i1 %i.eu, i1 false
  br i1 %or.cond3.i, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %.loopexit134
  %i.ev = add i64 %.sroa.07.0.i.ph, 1
  %i.ew = load i16, ptr %i.er, align 2, !noalias !1515, !noundef !4
  store i16 %.sroa.09.0.i.ph, ptr %i.eo, align 2, !noalias !1515
  store i16 %.sroa.6.0.i.ph, ptr %i.er, align 2, !noalias !1515
  %i.ex = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.ag:                                            ; preds = %bb.ae
  store i64 1, ptr %0, align 8, !alias.scope !1512, !noalias !1515
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae, %.noexc31
  %. = phi i8 [ 2, %.noexc31 ], [ 0, %bb.ae ], [ 0, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit

.body.thread:                                     ; preds = %bb.ab
  %lpad.thr_comm.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.thread

bb.ai:                                            ; preds = %bb.c
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.ez = load ptr, ptr %1, align 8, !alias.scope !1524, !noundef !4 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs7p2uQeJxui2_9deltalake.exit, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs7p2uQeJxui2_9deltalake.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !1537, !nonnull !4, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
