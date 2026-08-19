inline.NumInlined: 1089
inline.NumDeleted: 516
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvXs_NtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB4_20NonrepeatingIteratorNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next:bb.a
_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs84qwSrTN5pO_7uu_shuf.exit.thread.i: ; preds = %bb.n
  store ptr %i.cn, ptr %i.bz, align 8, !alias.scope !1272, !noalias !1209
  store i64 %i.bq, ptr %i.d, align 8, !alias.scope !1272, !noalias !1209
  br label %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cm) #27, !noalias !1257
  unreachable

bb.p:                                             ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6removeyECs84qwSrTN5pO_7uu_shuf.exit.i
  %i.cp = load ptr, ptr %i.bm, align 8, !noalias !1257, !nonnull !9, !align !181, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1257
  %i.cq = ptrtoint ptr %i.cp to i64
  br label %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit

bb.q:                                             ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6removeyECs84qwSrTN5pO_7uu_shuf.exit.i
  %i.cr = load i64, ptr %i.bm, align 8, !noalias !1257, !noundef !9 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1257
  %i.cs = icmp eq i64 %i.l, %i.cr
  br i1 %i.cs, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %i.ct = mul i64 %i.cr, -1065810590584100411     ; 2 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cw = icmp eq i64 %i.bh, 0
  br i1 %i.cw, label %bb.s, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.cx = tail call { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE14reserve_rehashNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 1, ptr noalias nofree nonnull readonly captures(address, read_provenance) poison, i1 noundef zeroext true) #28, !noalias !1279 ; 0 uses
  %.val.i.i.pre.i = load ptr, ptr %i.d, align 8, !alias.scope !1281, !noalias !1282
  %.val5.i.i.pre.i = load i64, ptr %i.q, align 8, !alias.scope !1281, !noalias !1282
  br label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.val5.i.i.i = phi i64 [ %.val5.i.i.pre.i, %bb.s ], [ %i.r, %bb.r ] ; 4 uses
  %.val.i.i.i = phi ptr [ %.val.i.i.pre.i, %bb.s ], [ %i.s, %bb.r ] ; 8 uses
  %i.cy = lshr i64 %i.cu, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 3 uses
  %i.da = insertelement <16 x i8> poison, i8 %i.cz, i64 0
  %i.db = shufflevector <16 x i8> %i.da, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.cu, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i ], [ %i.ea, %bb.w ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i ], [ %.sroa.4.124.i.i.i.i, %bb.w ]
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i ], [ %.sroa.04.126.i.i.i.i, %bb.w ]
  %i.dc = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTyyEE7reserveNCINvNtB8_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECs84qwSrTN5pO_7uu_shuf.exit.i.i.i ], [ %i.dz, %bb.w ]
  %.sroa.0.021.i.i.i.i = and i64 %.pn.i.i.i.i, %.val5.i.i.i ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.021.i.i.i.i
  %.sroa.0.0.copyload.i31.i.i.i.i = load <16 x i8>, ptr %i.dd, align 1, !noalias !1284 ; 3 uses
  %i.de = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, %i.db
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %.not32.i.i.i.i = icmp eq i16 %i.df, 0
  br i1 %.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.u
  %.sroa.01.033.i.i.i.i = phi i16 [ %i.dp, %bb.u ], [ %i.df, %bb.t ] ; 3 uses
  %i.dg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i.i.i, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = add i64 %.sroa.0.021.i.i.i.i, %i.dh
  %i.dj = and i64 %i.di, %.val5.i.i.i
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [16 x i8], ptr %.val.i.i.i, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -16
  %.val2.i.i.i.i.i = load i64, ptr %i.dm, align 8, !noalias !1287, !noundef !9
  %i.dn = icmp eq i64 %i.cr, %.val2.i.i.i.i.i
  br i1 %i.dn, label %bb.aa, label %bb.u, !prof !70

._crit_edge.i.i.i.i:                              ; preds = %bb.u, %bb.t
  %.not12.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i, 1
  br i1 %.not12.i.i.i.i, label %.thread.i.i.i.i, label %bb.v, !prof !10

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add i16 %.sroa.01.033.i.i.i.i, -1
  %i.dp = and i16 %i.do, %.sroa.01.033.i.i.i.i    ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dp, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dq = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, zeroinitializer
  %i.dr = bitcast <16 x i1> %i.dq to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.dr, 0
  br i1 %.not.i.i.i.i.i, label %bb.w, label %.thread28.i.i.i.i, !prof !10

.thread28.i.i.i.i:                                ; preds = %bb.v
  %i.ds = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dr, i1 true)
  %i.dt = zext nneg i16 %i.ds to i64
  %i.du = add i64 %.sroa.0.021.i.i.i.i, %i.dt
  %i.dv = and i64 %i.du, %.val5.i.i.i
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread28.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.4.125.i.i.i.i = phi i64 [ %i.dv, %.thread28.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.dw = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, splat (i8 -1)
  %i.dx = bitcast <16 x i1> %i.dw to i16
  %i.dy = icmp eq i16 %i.dx, 0
  br i1 %i.dy, label %bb.w, label %bb.x, !prof !10

bb.w:                                             ; preds = %.thread.i.i.i.i, %bb.v
  %.sroa.04.126.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.v ]
  %.sroa.4.124.i.i.i.i = phi i64 [ %.sroa.4.125.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.v ]
  %i.dz = add i64 %i.dc, 16                       ; 2 uses
  %i.ea = add i64 %i.dz, %.sroa.0.021.i.i.i.i
  br label %bb.t

bb.x:                                             ; preds = %.thread.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.125.i.i.i.i
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !1290, !noundef !9 ; 2 uses
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %bb.y, label %bb.z, !prof !10

bb.y:                                             ; preds = %bb.x
  %.val2.i23.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !1290
  %i.ee = icmp slt <16 x i8> %.val2.i23.i.i.i.i, zeroinitializer
  %i.ef = bitcast <16 x i1> %i.ee to i16          ; 2 uses
  %.not.i24.i.i.i.i = icmp ne i16 %i.ef, 0
  %i.eg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ef, i1 true)
  %i.eh = zext nneg i16 %i.eg to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i24.i.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.eh
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !1291
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ei = phi i8 [ %.pre.i.i, %bb.y ], [ %i.ec, %bb.x ]
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.eh, %bb.y ], [ %.sroa.4.125.i.i.i.i, %bb.x ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i
  %i.ek = and i8 %i.ei, 1
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.en = and i64 %i.em, %.val5.i.i.i
  store i8 %i.cz, ptr %i.ej, align 1, !noalias !1291
  %i.eo = getelementptr i8, ptr %.val.i.i.i, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  store i8 %i.cz, ptr %i.ep, align 1, !noalias !1291
  %i.eq = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !1295, !noalias !1209
  %i.er = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.el, i64 0
  %i.es = sub <2 x i64> %i.eq, %i.er
  store <2 x i64> %i.es, ptr %i.cv, align 8, !alias.scope !1295, !noalias !1209
  %i.et = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.eu = getelementptr inbounds [16 x i8], ptr %.val.i.i.i, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -16
  store i64 %i.cr, ptr %i.ev, align 8, !noalias !1291
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -8
  store i64 %storemerge.i.i.i.i, ptr %i.ew, align 8, !noalias !1291
  br label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ex = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !1296, !noundef !9
  store i64 %storemerge.i.i.i.i, ptr %i.ex, align 8, !noalias !1296
  br label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i: ; preds = %bb.aa, %bb.z, %bb.q
  %.sroa.02.2.i = phi i64 [ %storemerge.i.i.i.i, %bb.q ], [ %i.cr, %bb.z ], [ %i.ey, %bb.aa ]
  %i.ez = load i64, ptr %i.k, align 8, !alias.scope !1206, !noalias !1209, !noundef !9
  %i.fa = add i64 %i.ez, 1
  store i64 %i.fa, ptr %i.k, align 8, !alias.scope !1206, !noalias !1209
  store i8 0, ptr %i.e, align 8, !alias.scope !1206, !noalias !1209
  br label %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit

_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit: ; preds = %bb.m, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs84qwSrTN5pO_7uu_shuf.exit.thread.i, %bb.h, %bb.p, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i
  %.sroa.08.0 = phi ptr [ %i.bl, %bb.p ], [ %i.bs, %bb.h ], [ null, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i ], [ null, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs84qwSrTN5pO_7uu_shuf.exit.thread.i ], [ null, %bb.m ]
  %.sroa.7.0 = phi i64 [ %i.cq, %bb.p ], [ %i.bv, %bb.h ], [ %.sroa.02.2.i, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCs84qwSrTN5pO_7uu_shuf.exit.i ], [ %i.ch, %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs84qwSrTN5pO_7uu_shuf.exit.thread.i ], [ %i.ch, %bb.m ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0, ptr %i.fb, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %bb.ac, %bb.a, %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit
  %.sink = phi i64 [ 0, %bb.ac ], [ 1, %_RNvMNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iteratorNtB2_20NonrepeatingIterator7produce.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.ac:                                            ; preds = %bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fd = load i64, ptr %i.fc, align 8, !noundef !9 ; 12 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ff = load i64, ptr %i.fe, align 8, !noundef !9 ; 8 uses
  %.not1 = icmp ugt i64 %i.fd, %i.ff
  br i1 %.not1, label %bb.ab, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fh = load i64, ptr %i.fg, align 8, !noundef !9 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !noundef !9 ; 4 uses
  %i.fk = add i64 %i.fj, %i.fh
  %.not2 = icmp ult i64 %i.fh, %i.fk
  br i1 %.not2, label %bb.c, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1300
  %i.fl = sub nuw i64 %i.ff, %i.fd                ; 7 uses
  %.not.i.i = icmp eq i64 %i.fl, -1
  %i.fm = add nuw i64 %i.fl, 1                    ; 2 uses
  br i1 %.not.i.i, label %bb.ap, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.thread.i.i, !prof !1306

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.thread.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i
  %i.fn = shl i64 %i.fm, 3                        ; 4 uses
  %i.fo = icmp ugt i64 %i.fl, 2305843009213693950
  %.not.i.i.i.i5 = icmp ugt i64 %i.fn, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.fo, %.not.i.i.i.i5
  br i1 %or.cond.i.i.i.i, label %bb.af, label %bb.ae, !prof !13

bb.ae:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.thread.i.i
  %i.fp = icmp eq i64 %i.fn, 0
  br i1 %i.fp, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.ae
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1307
  %i.fq = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.fn, i64 noundef range(i64 1, 9) 8) #26, !noalias !1307 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.af, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i.i.i

bb.af:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.thread.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.thread.i.i ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.fn) #27, !noalias !1300
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i.i.i: ; preds = %bb.ae, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ae ], [ %i.fq, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.fm, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 3 uses
  %i.fs = icmp samesign ult i64 %i.fl, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.fs)
  store i64 %.sroa.4.0.i.i.i, ptr %i.a, align 8, !noalias !1300
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %i.ft, align 8, !noalias !1300
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.fu, align 8, !noalias !1300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.fv = sub nuw i64 %i.ff, %i.fd                ; 3 uses
  %.not.i.i1.i.i = icmp eq i64 %i.fv, -1
  %i.fw = add nuw i64 %i.fv, 1
  br i1 %.not.i.i1.i.i, label %bb.ao, label %bb.ag, !prof !1072

bb.ag:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i.i.i
  %.not36.i.i.i.i = icmp ult i64 %i.fv, %.sroa.4.0.i.i.i
  br i1 %.not36.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.ah, !prof !1073

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %i.fw, i64 noundef 8, i64 noundef 8) #26, !noalias !1316
  %.pre.i.i6 = load ptr, ptr %i.ft, align 8, !alias.scope !1319, !noalias !1316
  %.pre16.i.i = load i64, ptr %i.fu, align 8, !alias.scope !1319, !noalias !1316
  br label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ah, %bb.ag
  %.ph.i.i = phi i64 [ 0, %bb.ag ], [ %.pre16.i.i, %bb.ah ] ; 6 uses
  %.ph26.i.i = phi ptr [ %.sroa.10.0.i.i.i, %bb.ag ], [ %.pre.i.i6, %bb.ah ] ; 4 uses
  %i.fx = icmp ult i64 %i.fd, %i.ff
  br i1 %i.fx, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fz = icmp eq i64 %i.fh, 0
  %i.ga = load i64, ptr %i.fy, align 8, !alias.scope !1297, !noalias !1320 ; 3 uses
  %i.gb = load ptr, ptr %i.d, align 8, !alias.scope !1297, !noalias !1320, !nonnull !9 ; 2 uses
  br i1 %i.fz, label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.split.i

_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.fl, 4
  br i1 %min.iters.check, label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93, label %vector.ph

vector.ph:                                        ; preds = %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader
  %n.vec = and i64 %i.fl, 2305843009213693948     ; 4 uses
  %i.gc = add i64 %.ph.i.i, %n.vec                ; 2 uses
  %i.gd = sub i64 %i.ff, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ff, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ge = add <2 x i64> %broadcast.splat, <i64 0, i64 -1>
  %i.gf = getelementptr [8 x i8], ptr %.ph26.i.i, i64 %.ph.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %i.ge, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind, splat (i64 -2)
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %index ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <2 x i64> %vec.ind, ptr %i.gg, align 8, !noalias !1321
  store <2 x i64> %step.add, ptr %i.gh, align 8, !noalias !1321
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 -4)
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !1345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fl, %n.vec
  br i1 %cmp.n, label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit, label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93

_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93: ; preds = %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader, %middle.block
  %.ph = phi i64 [ %.ph.i.i, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader ], [ %i.gc, %middle.block ]
  %.ph94 = phi i64 [ %i.ff, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader ], [ %i.gd, %middle.block ]
  br label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i

_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i: ; preds = %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i
  %i.gj = phi i64 [ %i.gn, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i ], [ %.ph, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93 ] ; 2 uses
  %i.gk = phi i64 [ %i.gl, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i ], [ %.ph94, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i.preheader93 ] ; 2 uses
  %i.gl = add i64 %i.gk, -1                       ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.ph26.i.i, i64 %i.gj
  store i64 %i.gk, ptr %i.gm, align 8, !noalias !1321
  %i.gn = add i64 %i.gj, 1                        ; 2 uses
  %i.go = icmp ult i64 %i.fd, %i.gl
  br i1 %i.go, label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i, label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit, !llvm.loop !1346

.lr.ph.i.i.i.i.i.i.i.i.split.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i
  %i.gp = phi i64 [ %i.ht, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i ], [ %.ph.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gq = phi i64 [ %i.gr, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.gr = add i64 %i.gq, -1                       ; 2 uses
  %i.gs = mul i64 %i.gq, -1065810590584100411     ; 2 uses
  %i.gt = tail call noundef i64 @llvm.fshl.i64(i64 %i.gs, i64 %i.gs, i64 26) ; 2 uses
  %i.gu = lshr i64 %i.gt, 57
  %i.gv = trunc nuw nsw i64 %i.gu to i8
  %i.gw = insertelement <16 x i8> poison, i8 %i.gv, i64 0
  %i.gx = shufflevector <16 x i8> %i.gw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph.i.i.i.i.i.i.i.i.split.i
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.i ], [ %i.ho, %bb.ak ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gt, %.lr.ph.i.i.i.i.i.i.i.i.split.i ], [ %i.hp, %bb.ak ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ga ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gy, align 1, !noalias !1347 ; 2 uses
  %i.gz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gx
  %i.ha = bitcast <16 x i1> %i.gz to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ha, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ai, %bb.aj
  %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.hn, %bb.aj ], [ %i.ha, %bb.ai ] ; 3 uses
  %i.hb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.hc = zext nneg i16 %i.hb to i64
  %i.hd = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hc
  %i.he = and i64 %i.hd, %i.ga
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = getelementptr inbounds [16 x i8], ptr %i.gb, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -16
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hh, align 8, !noalias !1357, !noundef !9
  %i.hi = icmp eq i64 %i.gq, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.hi, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj, !prof !70

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.aj, %bb.ai
  %i.hj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hk = bitcast <16 x i1> %i.hj to i16
  %i.hl = icmp eq i16 %i.hk, 0
  br i1 %i.hl, label %bb.ak, label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i, !prof !10

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hn = and i16 %i.hm, %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hn, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.hp = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ho
  br label %bb.ai

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = getelementptr inbounds i8, ptr %i.hg, i64 -8
  %.else.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hq, align 8, !noalias !1360, !noundef !9
  br label %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i

_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hr = phi i64 [ %.else.val.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gq, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.ph26.i.i, i64 %i.gp
  store i64 %i.hr, ptr %i.hs, align 8, !noalias !1321
  %i.ht = add i64 %i.gp, 1                        ; 2 uses
  %i.hu = icmp ult i64 %i.fd, %i.gr
  br i1 %i.hu, label %.lr.ph.i.i.i.i.i.i.i.i.split.i, label %.thread.i.i.i.i.i.i.i.i.thread22.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.hv = icmp eq i64 %i.fh, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  br i1 %i.hv, label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit, label %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge

.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge: ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1364, !noalias !1369
  br label %.thread.i.i.i.i.i.i.i.i.thread22.i

.thread.i.i.i.i.i.i.i.i.thread22.i:               ; preds = %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge
  %i.hw = phi i64 [ %.pre, %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge ], [ %i.ga, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i24.i = phi i64 [ %.ph.i.i, %.thread.i.i.i.i.i.i.i.i.i..thread.i.i.i.i.i.i.i.i.thread22.i_crit_edge ], [ %i.ht, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hx = mul i64 %i.fd, -1065810590584100411     ; 2 uses
  %i.hy = tail call noundef i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.hz = lshr i64 %i.hy, 57
  %i.ia = trunc nuw nsw i64 %i.hz to i8
  %i.ib = load ptr, ptr %i.d, align 8, !alias.scope !1364, !noalias !1369, !nonnull !9, !noundef !9 ; 2 uses
  %i.ic = insertelement <16 x i8> poison, i8 %i.ia, i64 0
  %i.id = shufflevector <16 x i8> %i.ic, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.thread.i.i.i.i.i.i.i.i.thread22.i
  %.sroa.9.0.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.thread.i.i.i.i.i.i.i.i.thread22.i ], [ %i.iu, %bb.an ]
  %.pn.i.i.i.i.i9.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hy, %.thread.i.i.i.i.i.i.i.i.thread22.i ], [ %i.iv, %bb.an ]
  %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i9.i.i.i.i.i.i.i.i.i, %i.hw ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ie, align 1, !noalias !1377 ; 2 uses
  %i.if = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i11.i.i.i.i.i.i.i.i.i, %i.id
  %i.ig = bitcast <16 x i1> %i.if to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ig, 0
  br i1 %.not.i.not30.i.i.i.i.i12.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i:             ; preds = %bb.al, %bb.am
  %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i = phi i16 [ %i.it, %bb.am ], [ %i.ig, %bb.al ] ; 3 uses
  %i.ih = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ii = zext nneg i16 %i.ih to i64
  %i.ij = add i64 %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i, %i.ii
  %i.ik = and i64 %i.ij, %i.hw
  %i.il = sub nsw i64 0, %i.ik
  %i.im = getelementptr inbounds [16 x i8], ptr %i.ib, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -16
  %.val2.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i = load i64, ptr %i.in, align 8, !noalias !1380, !noundef !9
  %i.io = icmp eq i64 %i.fd, %.val2.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i
  br i1 %i.io, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i, label %bb.am, !prof !70

._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i:        ; preds = %bb.am, %bb.al
  %i.ip = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.iq = bitcast <16 x i1> %i.ip to i16
  %i.ir = icmp eq i16 %i.iq, 0
  br i1 %i.ir, label %bb.an, label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit, !prof !10

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i
  %i.is = add i16 %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i, -1
  %i.it = and i16 %i.is, %.sroa.06.0.i31.i.i.i.i.i14.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i16.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.it, 0
  br i1 %.not.i.not.i.i.i.i.i16.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i
  %i.iu = add i64 %.sroa.9.0.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.iv = add i64 %.sroa.01.0.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i, %i.iu
  br label %bb.al

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i13.i.i.i.i.i.i.i.i.i
  %i.iw = getelementptr inbounds i8, ptr %i.im, i64 -8
  %.else.val.i.i.i19.i.i.i.i.i.i.i.i.i = load i64, ptr %i.iw, align 8, !noalias !1383, !noundef !9
  br label %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit

bb.ao:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29, !noalias !1384
  unreachable

bb.ap:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_3rev3RevINtNtNtBb_3ops5range14RangeInclusiveyEENCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_.exit.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #29, !noalias !1300
  unreachable

_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit: ; preds = %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i, %middle.block, %.thread.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i21.i = phi i64 [ %.sroa.5.0.i.i.i.i.i.i.i24.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i ], [ %.ph.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.gn, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i ], [ %i.gc, %middle.block ], [ %.sroa.5.0.i.i.i.i.i.i.i24.i, %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ix = phi i64 [ %.else.val.i.i.i19.i.i.i.i.i.i.i.i.i, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapyyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE3getyECs84qwSrTN5pO_7uu_shuf.exit.else.i.i.i18.i.i.i.i.i.i.i.i.i ], [ %i.fd, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.fd, %_RNCINvMNtNtCs6JMX4GRUq9U_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uyNCINvNtNtNtB9_4iter8adapters3map8map_foldyyuNCNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec0NCINvNvNtNtNtB1u_6traits8iterator8Iterator8for_each4callyNCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4d_3VecyE14extend_trustedINtB1q_3MapINtNtB1s_3rev3RevINtNtB7_5range14RangeInclusiveyEEB23_EE0E0E0E0B29_.exit.i.i.i.i.i.i.i.i.us.i ], [ %i.fd, %middle.block ], [ %i.fd, %._crit_edge.i.i.i.i.i17.i.i.i.i.i.i.i.i.i ]
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.ph26.i.i, i64 %.sroa.5.0.i.i.i.i.i.i.i21.i
  store i64 %i.ix, ptr %i.iy, align 8, !noalias !1385
  %.pre34 = load i8, ptr %i.e, align 8, !range !1205, !alias.scope !1390
  %i.iz = add i64 %.sroa.5.0.i.i.i.i.i.i.i21.i, 1
  store i64 %i.iz, ptr %i.fu, align 8, !alias.scope !1319, !noalias !1393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.ja = icmp eq i8 %.pre34, 2
  br i1 %i.ja, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit
  %.val.i = load i64, ptr %i.d, align 8, !range !96, !alias.scope !1390, !noundef !9 ; 2 uses
  %i.jb = icmp eq i64 %.val.i, 0
  br i1 %i.jb, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.jc, align 8, !alias.scope !1390, !nonnull !9, !noundef !9
  %i.jd = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.jd, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1390
  br label %.thread

bb.as:                                            ; preds = %_RNvNtCs84qwSrTN5pO_7uu_shuf21nonrepeating_iterator14hashmap_to_vec.exit
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !1390 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.je, align 8, !alias.scope !1390, !noundef !9 ; 3 uses
  %i.jf = icmp eq i64 %.val3.i, 0
  br i1 %i.jf, label %.thread, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.as
  %i.jg = shl i64 %.val3.i, 4                     ; 2 uses
  %i.jh = add i64 %i.jg, 16                       ; 2 uses
  %i.ji = add i64 %.val3.i, 17
  %i.jj = add i64 %i.ji, %i.jh                    ; 4 uses
  %i.jk = icmp uge i64 %i.jj, %i.jh
end_hunk_0
