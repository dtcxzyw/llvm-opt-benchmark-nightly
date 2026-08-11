inline.NumInlined: 10255
inline.NumDeleted: 2799
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !700 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !701
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9, !range !13 ; 3 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !701
  %i.v = sub nuw nsw i64 64, %i.d
  %i.w = lshr i64 %i.u, %i.v
  %.not94 = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not94 to i64
  %spec.select = add i64 %i.f, %i.x
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.c, %bb.d
  %.086 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.y = add i64 %.086, %i.b                      ; 11 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 288230376151711744) ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.aa = trunc nuw i8 %.pre to i1                ; 3 uses
  %i.ab = load i64, ptr %0, align 16              ; 3 uses
  %spec.select.i8.i = select i1 %i.aa, i64 2, i64 %i.ab ; 2 uses
  %i.ac = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.ac, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge112
  %i.ad = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ae = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #36 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !710, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #34
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !700
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !23
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !23
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !700
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8
  %i.ao = icmp ne i64 %i.ab, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi i1 [ true, %bb.h ], [ %i.ao, %bb.i ]
  %.pre117 = phi ptr [ %i.af, %bb.h ], [ %.pre115, %bb.i ] ; 3 uses
  %i.aq = phi i8 [ %.pre113, %bb.h ], [ %.pre, %bb.i ]
  %i.ar = trunc nuw i8 %i.aq to i1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = select i1 %i.ar, ptr %0, ptr %.pre117   ; 20 uses
  %i.au = icmp ult i64 %i.y, %i.b
  br i1 %i.au, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not104 = select i1 %i.ar, i1 true, i1 %i.ap
  br i1 %.not104, label %bb.n, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99: ; preds = %bb.j
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !710, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #34
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !700
  store i64 1, ptr %0, align 16, !tbaa !23
  store ptr %i.av, ptr %i.as, align 8, !tbaa !23
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !700
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #38
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !701
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.be, align 8, !tbaa !709
  br label %bb.x

bb.p:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not95 = icmp ult i64 %i.y, 288230376151711745
  %i.bf = sub i64 %i.y, %spec.select.i            ; 3 uses
  br i1 %.not95, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bg = add i64 %i.f, %i.b
  %i.bh = icmp ugt i64 %i.y, %i.bg
  %i.bi = xor i64 %i.bf, -1                       ; 3 uses
  %i.bj = getelementptr [8 x i8], ptr %i.at, i64 %i.f
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !701 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !701
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !701
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !701
  %i.bz = sub nuw nsw i64 64, %i.d
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = or disjoint i64 %i.ca, %i.br
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !701
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.p
  %.187 = phi i64 [ %i.y, %bb.p ], [ %i.bq, %bb.r ], [ %i.y, %bb.t ], [ %i.y, %bb.s ] ; 12 uses
  %.0 = phi i64 [ %i.bf, %bb.p ], [ 0, %bb.r ], [ 1, %bb.t ], [ 1, %bb.s ] ; 12 uses
  %i.cc = add nsw i64 %i.b, 2                     ; 2 uses
  %i.cd = sub nsw i64 %.187, %.0                  ; 2 uses
  %.not96107 = icmp slt i64 %i.cd, %i.cc
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.ce = sub nuw nsw i64 64, %i.d                ; 2 uses
  %2 = add i64 %.187, -1                          ; 2 uses
  %3 = sub i64 %2, %.0
  %i.cf = add i64 %i.b, 1
  %i.cg = tail call i64 @llvm.smin.i64(i64 %3, i64 %i.cf)
  %4 = add i64 %.0, %i.cg
  %i.ch = sub i64 %.187, %4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ci = xor i64 %.0, -1
  %i.cj = add i64 %.187, %i.ci
  %i.ck = add i64 %i.b, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.ck)
  %i.cl = shl i64 %smin, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.cl ; 2 uses
  %i.cm = shl i64 %.187, 3                        ; 2 uses
  %i.cn = sub i64 %.187, %.0
  %i.co = shl i64 %i.cn, 3
  %scevgep134 = getelementptr i8, ptr %i.at, i64 %i.co ; 2 uses
  %i.cp = shl i64 %i.b, 3                         ; 2 uses
  %i.cq = sub i64 %i.cl, %i.cp
  %scevgep135 = getelementptr i8, ptr %i.at, i64 %i.cq
  %i.cr = add i64 %.0, %i.b
  %i.cs = shl i64 %i.cr, 3                        ; 2 uses
  %i.ct = sub i64 %i.cm, %i.cs
  %scevgep136 = getelementptr i8, ptr %i.at, i64 %i.ct
  %i.cu = add i64 %i.cl, -8
  %i.cv = sub i64 %i.cu, %i.cp
  %scevgep137 = getelementptr i8, ptr %i.at, i64 %i.cv
  %i.cw = add i64 %i.cm, -8
  %i.cx = sub i64 %i.cw, %i.cs
  %scevgep138 = getelementptr i8, ptr %i.at, i64 %i.cx
  %bound0 = icmp ult ptr %scevgep, %scevgep136
  %bound1 = icmp ult ptr %scevgep135, %scevgep134
  %found.conflict = and i1 %bound0, %bound1
  %bound0139 = icmp ult ptr %scevgep, %scevgep138
  %bound1140 = icmp ult ptr %scevgep137, %scevgep134
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx = or i1 %found.conflict, %found.conflict141
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, -2                      ; 4 uses
  %i.cy = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat143 = shufflevector <2 x i64> %broadcast.splatinsert142, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = add i64 %.0, %index                     ; 2 uses
  %i.da = xor i64 %i.cz, -1
  %i.db = add i64 %.187, %i.da                    ; 2 uses
  %i.dc = sub i64 %i.db, %i.b
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !701, !alias.scope !738
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !701, !alias.scope !741, !noalias !743
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !701, !alias.scope !745
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !701, !alias.scope !741, !noalias !743
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !746

middle.block:                                     ; preds = %vector.body
  %5 = add i64 %n.vec, -1
  %i.dp = add i64 %.0, %5
  %i.dq = sub i64 %2, %i.dp
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.cy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.ee, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dr = xor i64 %.1108, -1
  %i.ds = add i64 %.187, %i.dr                    ; 2 uses
  %i.dt = sub i64 %i.ds, %i.b
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !701
  %i.dw = shl i64 %i.dv, %i.d                     ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ds ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !701
  %i.dy = add i64 %.1108, %i.b
  %i.dz = sub i64 %invariant.op, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !701
  %i.ec = lshr i64 %i.eb, %i.ce
  %i.ed = or disjoint i64 %i.ec, %i.dw
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !701
  %i.ee = add i64 %.1108, 1                       ; 3 uses
  %i.ef = sub nsw i64 %.187, %i.ee                ; 2 uses
  %.not96 = icmp slt i64 %i.ef, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !747

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.u
  %.1.lcssa = phi i64 [ %.0, %bb.u ], [ %i.cy, %middle.block ], [ %i.ee, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.cd, %bb.u ], [ %i.dq, %middle.block ], [ %i.ef, %scalar.ph ]
  %i.eg = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.eg
  br i1 %.not97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.eh = xor i64 %.1.lcssa, -1
  %i.ei = add i64 %.187, %i.eh                    ; 2 uses
  %i.ej = sub i64 %i.ei, %i.b
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !701
  %i.em = shl i64 %i.el, %i.d
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ei
  store i64 %i.em, ptr %i.en, align 8, !tbaa !701
  %i.eo = add i64 %.1.lcssa, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %.2 = phi i64 [ %i.eo, %bb.v ], [ %.1.lcssa, %._crit_edge ]
  %i.ep = sub i64 %.187, %.2
  %i.eq = shl i64 %i.ep, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.eq, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.w, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_6negateES9_vvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !748, !noalias !751, !nonnull !14, !align !754 ; 6 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 16, !tbaa !700
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !tbaa !700
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 288230376151711744) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9, !range !13, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1                  ; 3 uses
  %i.i = load i64, ptr %0, align 16               ; 2 uses
  %spec.select.i8.i.i.i = select i1 %i.h, i64 2, i64 %i.i ; 2 uses
  %i.j = icmp ugt i64 %spec.select.i.i.i, %spec.select.i8.i.i.i
  br i1 %i.j, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %spec.select.i8.i.i.i, 2
  %.sroa.speculated16.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %spec.select.i.i.i)
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i.i, i64 288230376151711744) ; 2 uses
  %i.l = shl nuw nsw i64 %.sroa.speculated.i.i.i, 3
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.q = load i8, ptr %i.p, align 2, !tbaa !710, !range !13, !noundef !14
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = shl i64 %i.i, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #34
  %.pre.pre.i.i = load i8, ptr %i.f, align 1, !tbaa !9, !range !13
  %i.t = trunc nuw i8 %.pre.pre.i.i to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  store i8 0, ptr %i.f, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre.i.i = phi i1 [ false, %bb.e ], [ %i.t, %bb.d ]
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !700
  store i64 %.sroa.speculated.i.i.i, ptr %0, align 16, !tbaa !23
  store ptr %i.m, ptr %i.n, align 8, !tbaa !23
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

bb.g:                                             ; preds = %bb.b
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !700
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i.i = phi i1 [ %.pre.i.i, %bb.f ], [ %i.h, %bb.g ]
  %i.u = phi ptr [ %i.m, %bb.f ], [ %.pre8.i.i, %bb.g ]
  %i.v = select i1 %.pre-phi.i.i, ptr %0, ptr %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %i.y, ptr %i.a, ptr %i.aa
  %i.ac = load i64, ptr %i.d, align 16, !tbaa !700
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.ab, i64 %i.ad, i1 false)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit: ; preds = %bb.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i
  %.sink = phi ptr [ %i.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i ], [ %0, %bb.a ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sink, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !709, !range !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = trunc nuw i8 %.pre to i1
  %i.ag = xor i8 %.pre, 1
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !709
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 16
  %i.aj = icmp ne i64 %i.ai, 1
  %or.cond.i.not = select i1 %i.af, i1 true, i1 %i.aj
  br i1 %or.cond.i.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = select i1 %i.am, ptr %0, ptr %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !701
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.ae, align 8, !tbaa !709
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE15do_assign_floatIeEEvT_(ptr noundef nonnull align 16 dereferenceable(27) %0, x86_fp80 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::runtime_error", align 8 ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = fcmp olt x86_fp80 %1, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = fneg x86_fp80 %1
  tail call void @_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE15do_assign_floatIeEEvT_(ptr noundef nonnull align 16 dereferenceable(27) %0, x86_fp80 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 1, ptr %i.e, align 8, !tbaa !709
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 16
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !range !13, !noundef !14
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %0, ptr %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !701
  %i.p = icmp eq i64 %i.o, 0
end_hunk_0
begin_hunk_1_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !1025 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !701
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !1014, !range !13 ; 3 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !701
  %i.v = sub nuw nsw i64 64, %i.d
  %i.w = lshr i64 %i.u, %i.v
  %.not94 = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not94 to i64
  %spec.select = add i64 %i.f, %i.x
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.c, %bb.d
  %.086 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.y = add i64 %.086, %i.b                      ; 11 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 288230376151711744) ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 4 uses
  %i.aa = trunc nuw i8 %.pre to i1                ; 3 uses
  %i.ab = load i64, ptr %0, align 16              ; 3 uses
  %spec.select.i8.i = select i1 %i.aa, i64 8, i64 %i.ab ; 2 uses
  %i.ac = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.ac, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge112
  %i.ad = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ae = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #36 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !1027, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #34
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !1014, !range !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !1014
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1025
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !23
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !23
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1025
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8
  %i.ao = icmp ne i64 %i.ab, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi i1 [ true, %bb.h ], [ %i.ao, %bb.i ]
  %.pre117 = phi ptr [ %i.af, %bb.h ], [ %.pre115, %bb.i ] ; 3 uses
  %i.aq = phi i8 [ %.pre113, %bb.h ], [ %.pre, %bb.i ]
  %i.ar = trunc nuw i8 %i.aq to i1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = select i1 %i.ar, ptr %0, ptr %.pre117   ; 20 uses
  %i.au = icmp ult i64 %i.y, %i.b
  br i1 %i.au, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not104 = select i1 %i.ar, i1 true, i1 %i.ap
  br i1 %.not104, label %bb.n, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99: ; preds = %bb.j
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !1027, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #34
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !1014, !range !13
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !1014
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !1025
  store i64 1, ptr %0, align 16, !tbaa !23
  store ptr %i.av, ptr %i.as, align 8, !tbaa !23
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !1025
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #38
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !701
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.be, align 8, !tbaa !1026
  br label %bb.x

bb.p:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not95 = icmp ult i64 %i.y, 288230376151711745
  %i.bf = sub i64 %i.y, %spec.select.i            ; 3 uses
  br i1 %.not95, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bg = add i64 %i.f, %i.b
  %i.bh = icmp ugt i64 %i.y, %i.bg
  %i.bi = xor i64 %i.bf, -1                       ; 3 uses
  %i.bj = getelementptr [8 x i8], ptr %i.at, i64 %i.f
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !701 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !701
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !701
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !701
  %i.bz = sub nuw nsw i64 64, %i.d
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = or disjoint i64 %i.ca, %i.br
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !701
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.p
  %.187 = phi i64 [ %i.y, %bb.p ], [ %i.bq, %bb.r ], [ %i.y, %bb.t ], [ %i.y, %bb.s ] ; 12 uses
  %.0 = phi i64 [ %i.bf, %bb.p ], [ 0, %bb.r ], [ 1, %bb.t ], [ 1, %bb.s ] ; 12 uses
  %i.cc = add nsw i64 %i.b, 2                     ; 2 uses
  %i.cd = sub nsw i64 %.187, %.0                  ; 2 uses
  %.not96107 = icmp slt i64 %i.cd, %i.cc
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.ce = sub nuw nsw i64 64, %i.d                ; 2 uses
  %2 = add i64 %.187, -1                          ; 2 uses
  %3 = sub i64 %2, %.0
  %i.cf = add i64 %i.b, 1
  %i.cg = tail call i64 @llvm.smin.i64(i64 %3, i64 %i.cf)
  %4 = add i64 %.0, %i.cg
  %i.ch = sub i64 %.187, %4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ci = xor i64 %.0, -1
  %i.cj = add i64 %.187, %i.ci
  %i.ck = add i64 %i.b, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.ck)
  %i.cl = shl i64 %smin, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.cl ; 2 uses
  %i.cm = shl i64 %.187, 3                        ; 2 uses
  %i.cn = sub i64 %.187, %.0
  %i.co = shl i64 %i.cn, 3
  %scevgep134 = getelementptr i8, ptr %i.at, i64 %i.co ; 2 uses
  %i.cp = shl i64 %i.b, 3                         ; 2 uses
  %i.cq = sub i64 %i.cl, %i.cp
  %scevgep135 = getelementptr i8, ptr %i.at, i64 %i.cq
  %i.cr = add i64 %.0, %i.b
  %i.cs = shl i64 %i.cr, 3                        ; 2 uses
  %i.ct = sub i64 %i.cm, %i.cs
  %scevgep136 = getelementptr i8, ptr %i.at, i64 %i.ct
  %i.cu = add i64 %i.cl, -8
  %i.cv = sub i64 %i.cu, %i.cp
  %scevgep137 = getelementptr i8, ptr %i.at, i64 %i.cv
  %i.cw = add i64 %i.cm, -8
  %i.cx = sub i64 %i.cw, %i.cs
  %scevgep138 = getelementptr i8, ptr %i.at, i64 %i.cx
  %bound0 = icmp ult ptr %scevgep, %scevgep136
  %bound1 = icmp ult ptr %scevgep135, %scevgep134
  %found.conflict = and i1 %bound0, %bound1
  %bound0139 = icmp ult ptr %scevgep, %scevgep138
  %bound1140 = icmp ult ptr %scevgep137, %scevgep134
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx = or i1 %found.conflict, %found.conflict141
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, -2                      ; 4 uses
  %i.cy = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat143 = shufflevector <2 x i64> %broadcast.splatinsert142, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = add i64 %.0, %index                     ; 2 uses
  %i.da = xor i64 %i.cz, -1
  %i.db = add i64 %.187, %i.da                    ; 2 uses
  %i.dc = sub i64 %i.db, %i.b
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !701, !alias.scope !1085
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !701, !alias.scope !1088, !noalias !1090
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !701, !alias.scope !1092
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !701, !alias.scope !1088, !noalias !1090
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !1093

middle.block:                                     ; preds = %vector.body
  %5 = add i64 %n.vec, -1
  %i.dp = add i64 %.0, %5
  %i.dq = sub i64 %2, %i.dp
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.cy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.ee, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dr = xor i64 %.1108, -1
  %i.ds = add i64 %.187, %i.dr                    ; 2 uses
  %i.dt = sub i64 %i.ds, %i.b
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !701
  %i.dw = shl i64 %i.dv, %i.d                     ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ds ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !701
  %i.dy = add i64 %.1108, %i.b
  %i.dz = sub i64 %invariant.op, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !701
  %i.ec = lshr i64 %i.eb, %i.ce
  %i.ed = or disjoint i64 %i.ec, %i.dw
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !701
  %i.ee = add i64 %.1108, 1                       ; 3 uses
  %i.ef = sub nsw i64 %.187, %i.ee                ; 2 uses
  %.not96 = icmp slt i64 %i.ef, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !1094

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.u
  %.1.lcssa = phi i64 [ %.0, %bb.u ], [ %i.cy, %middle.block ], [ %i.ee, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.cd, %bb.u ], [ %i.dq, %middle.block ], [ %i.ef, %scalar.ph ]
  %i.eg = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.eg
  br i1 %.not97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.eh = xor i64 %.1.lcssa, -1
  %i.ei = add i64 %.187, %i.eh                    ; 2 uses
  %i.ej = sub i64 %i.ei, %i.b
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !701
  %i.em = shl i64 %i.el, %i.d
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ei
  store i64 %i.em, ptr %i.en, align 8, !tbaa !701
  %i.eo = add i64 %.1.lcssa, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %.2 = phi i64 [ %i.eo, %bb.v ], [ %.1.lcssa, %._crit_edge ]
  %i.ep = sub i64 %.187, %.2
  %i.eq = shl i64 %i.ep, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.eq, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.w, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multiprecision::detail::minus", align 1 ; 3 uses
  %4 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"union.boost::multiprecision::backends::cpp_int_base<512, 18446744073709551615, boost::multiprecision::signed_magnitude, boost::multiprecision::unchecked, std::allocator<unsigned long long>>::data_type", align 16 ; 4 uses
  %7 = alloca %"class.boost::multiprecision::number.481", align 16 ; 14 uses
  %8 = alloca %"struct.boost::multiprecision::detail::expression.489", align 8 ; 5 uses
  %9 = alloca %"struct.boost::multiprecision::detail::shift_left", align 1 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1095, !noalias !1097, !nonnull !14, !align !754
  %i.b = icmp eq ptr %i.a, %0                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1052, !noalias !1100, !nonnull !14, !align !754 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, label %.thread

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit: ; preds = %bb.a
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i64 0, ptr %7, align 16, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 1, ptr %i.g, align 16, !tbaa !1025
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !1026
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 73 ; 4 uses
  store i8 1, ptr %i.i, align 1, !tbaa !1014
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 74 ; 4 uses
  store i8 0, ptr %i.j, align 2, !tbaa !1027
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit unwind label %bb.c, !inline_history !1103

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load i8, ptr %i.j, align 2, !range !13
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %7, align 16
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #34, !inline_history !1045
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(75) %7, i64 64, i1 false), !tbaa.struct !1059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %7, ptr noundef nonnull align 16 dereferenceable(75) %0, i64 64, i1 false), !tbaa.struct !1059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load i8, ptr %i.h, align 8, !tbaa !793, !range !13, !noundef !14
  %i.v = load i8, ptr %i.t, align 8, !tbaa !793, !range !13, !noundef !14
  store i8 %i.v, ptr %i.h, align 8, !tbaa !793
  store i8 %i.u, ptr %i.t, align 8, !tbaa !793
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.x = load i8, ptr %i.i, align 1, !tbaa !793, !range !13, !noundef !14
  %i.y = load i8, ptr %i.w, align 1, !tbaa !793, !range !13, !noundef !14 ; 2 uses
  store i8 %i.y, ptr %i.i, align 1, !tbaa !793
  store i8 %i.x, ptr %i.w, align 1, !tbaa !793
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.g, align 16, !tbaa !31
  %i.ab = load i64, ptr %i.z, align 16, !tbaa !31
  store i64 %i.ab, ptr %i.g, align 16, !tbaa !31
  store i64 %i.aa, ptr %i.z, align 16, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ad = load i8, ptr %i.j, align 2, !tbaa !793, !range !13, !noundef !14
  %i.ae = load i8, ptr %i.ac, align 2, !tbaa !793, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ae, ptr %i.j, align 2, !tbaa !793
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !793
  %i.af = or i8 %i.ae, %i.y
  %or.cond.i.i25.not = icmp eq i8 %i.af, 0
  br i1 %or.cond.i.i25.not, label %bb.e, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load i64, ptr %7, align 16
  %i.aj = shl i64 %i.ai, 3
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.aj) #34
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

.thread:                                          ; preds = %bb.a
  br i1 %i.b, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  store ptr %i.d, ptr %8, align 8, !tbaa !1032, !alias.scope !1104
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load i32, ptr %i.e, align 8, !tbaa !1037, !noalias !1104
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !1037, !alias.scope !1104
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_10shift_leftES9_ivvEESD_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

.critedge:                                        ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, %.thread
  %i.am = load i32, ptr %i.e, align 8, !tbaa !1037, !noalias !1107 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.39)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr @.str.40, ptr %5, align 8, !tbaa !703
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.41, ptr %i.ao, align 8, !tbaa !706
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1474, ptr %i.ap, align 8, !tbaa !707
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 87, ptr %i.aq, align 4, !tbaa !708
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #35
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN4CGAL7PlaneC3INS_16Simple_cartesianINS_9cpp_floatEEEEC2ERKS2_S6_S6_S6_:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 16, !tbaa !1025 ; 2 uses
  %spec.select.i.i13 = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 288230376151711744) ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 9
  br i1 %i.ck, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i16, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i14

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i14: ; preds = %bb.i
  %.sroa.speculated16.i.i15 = tail call i64 @llvm.umax.i64(i64 %spec.select.i.i13, i64 32) ; 2 uses
  %i.cl = shl nuw nsw i64 %.sroa.speculated16.i.i15, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #36
          to label %.noexc17 unwind label %bb.n   ; 2 uses

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i14
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.cg, align 1, !tbaa !1014
  store i64 %.sroa.speculated16.i.i15, ptr %i.br, align 16, !tbaa !23
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !23
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i16

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i16: ; preds = %.noexc17, %bb.i
  %i.co = phi ptr [ %i.cm, %.noexc17 ], [ %i.br, %bb.i ]
  store i64 %spec.select.i.i13, ptr %i.bs, align 16, !tbaa !1025
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 73
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = select i1 %i.cr, ptr %3, ptr %i.ct
  %i.cv = load i64, ptr %i.ci, align 16, !tbaa !1025
  %i.cw = shl i64 %i.cv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %i.cu, i64 %i.cw, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i16, %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cz = load i32, ptr %i.cy, align 16, !tbaa !1028
  store i32 %i.cz, ptr %i.cx, align 16, !tbaa !1028
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  store i64 0, ptr %i.da, align 16, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.dd = load i8, ptr %i.dc, align 2, !tbaa !1027, !range !13, !noundef !14
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dg = load i64, ptr %i.df, align 16, !tbaa !1025
  store i64 %i.dg, ptr %i.db, align 16, !tbaa !1025
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !1026, !range !13, !noundef !14
  store i8 %i.dj, ptr %i.dh, align 8, !tbaa !1026
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 361
  store i8 0, ptr %i.dk, align 1, !tbaa !1014
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 362
  store i8 1, ptr %i.dl, align 2, !tbaa !1027
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(84) %i.da, ptr noundef nonnull align 16 dereferenceable(84) %4, i64 16, i1 false), !tbaa.struct !772
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i64 0, ptr %i.db, align 16, !tbaa !1025
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !1026, !range !13, !noundef !14
  store i8 %i.do, ptr %i.dm, align 8, !tbaa !1026
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 361 ; 2 uses
  store i8 1, ptr %i.dp, align 1, !tbaa !1014
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 362
  store i8 0, ptr %i.dq, align 2, !tbaa !1027
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 16, !tbaa !1025 ; 2 uses
  %spec.select.i.i19 = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 288230376151711744) ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 9
  br i1 %i.dt, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i22, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i20

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i20: ; preds = %bb.l
  %.sroa.speculated16.i.i21 = tail call i64 @llvm.umax.i64(i64 %spec.select.i.i19, i64 32) ; 2 uses
  %i.du = shl nuw nsw i64 %.sroa.speculated16.i.i21, 3
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #36
          to label %.noexc23 unwind label %bb.n   ; 2 uses

.noexc23:                                         ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i20
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 0, ptr %i.dp, align 1, !tbaa !1014
  store i64 %.sroa.speculated16.i.i21, ptr %i.da, align 16, !tbaa !23
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !23
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i22

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i22: ; preds = %.noexc23, %bb.l
  %i.dx = phi ptr [ %i.dv, %.noexc23 ], [ %i.da, %bb.l ]
  store i64 %spec.select.i.i19, ptr %i.db, align 16, !tbaa !1025
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = select i1 %i.ea, ptr %4, ptr %i.ec
  %i.ee = load i64, ptr %i.dr, align 16, !tbaa !1025
  %i.ef = shl i64 %i.ee, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr align 8 %i.ed, i64 %i.ef, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i22, %bb.k
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ei = load i32, ptr %i.eh, align 16, !tbaa !1028
  store i32 %i.ei, ptr %i.eg, align 16, !tbaa !1028
  ret void

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i20, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i14, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i8
  %.0 = phi ptr [ %i.da, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i20 ], [ %i.br, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i14 ], [ %i.ai, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i8 ]
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4CGAL9cpp_floatD2Ev.exit
  %i.ek = phi ptr [ %.0, %bb.n ], [ %i.el, %_ZN4CGAL9cpp_floatD2Ev.exit ] ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -96 ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -23
  %i.en = load i8, ptr %i.em, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = getelementptr inbounds i8, ptr %i.ek, i64 -22
  %i.eq = load i8, ptr %i.ep, align 2, !range !13
  %i.er = trunc nuw i8 %i.eq to i1
  %or.cond.i.i.i = select i1 %i.eo, i1 true, i1 %i.er
  br i1 %or.cond.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = getelementptr inbounds i8, ptr %i.ek, i64 -88
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = load i64, ptr %i.el, align 16
  %i.ev = shl i64 %i.eu, 3
  tail call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ev) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit

_ZN4CGAL9cpp_floatD2Ev.exit:                      ; preds = %bb.o, %bb.p
  %i.ew = icmp eq ptr %i.el, %0
  br i1 %i.ew, label %bb.q, label %bb.o

bb.q:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit
  resume { ptr, i32 } %i.ej
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE17_M_realloc_insertIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %6 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !112    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #35
  unreachable

_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit
  %i.s = load ptr, ptr %5, align 8, !tbaa !20
  store ptr %i.s, ptr %i.r, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %8 = add i64 %i.m, -8
  %9 = sub i64 %8, %i.e                           ; 2 uses
  %i.t = lshr i64 %9, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %9, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader77, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.v = add i64 %i.m, -8
  %i.w = sub i64 %i.v, %i.e
  %i.x = and i64 %i.w, -8
  %i.y = add i64 %i.x, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.y
  %scevgep51 = getelementptr i8, ptr %i.c, i64 %i.y
  %bound0 = icmp ult ptr %i.q, %scevgep51
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader77, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.q, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.c, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ac ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.c, i64 %i.ac ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.ad = getelementptr i8, ptr %next.gep52, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep52, align 8, !tbaa !20, !alias.scope !1534, !noalias !1529
  %wide.load53 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !20, !alias.scope !1534, !noalias !1529
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !20, !alias.scope !1537, !noalias !1534
  store <2 x ptr> %wide.load53, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1537, !noalias !1534
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !20, !alias.scope !1534, !noalias !1529
  store <2 x ptr> splat (ptr null), ptr %i.ad, align 8, !tbaa !20, !alias.scope !1534, !noalias !1529
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader77

.lr.ph.i.i.i.preheader77:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader77, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader77 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader77 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !1532, !noalias !1529
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !20, !alias.scope !1529, !noalias !1532
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !1532, !noalias !1529
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1540

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29.preheader

.lr.ph.i.i.i29.preheader:                         ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %10 = add i64 %i.d, -8
  %11 = sub i64 %10, %i.m                         ; 2 uses
  %i.ak = lshr i64 %11, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %11, 152
  br i1 %min.iters.check62, label %.lr.ph.i.i.i29.preheader76, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.lr.ph.i.i.i29.preheader
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep56 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep57 = getelementptr i8, ptr %i.aq, i64 8
  %bound058 = icmp ult ptr %i.aj, %scevgep57
  %bound159 = icmp ult ptr %1, %scevgep56
  %found.conflict60 = and i1 %bound058, %bound159
  br i1 %found.conflict60, label %.lr.ph.i.i.i29.preheader76, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck55
  %n.vec64 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec64, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 2 uses
  %i.au = shl i64 %index66, 3                     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep68 = getelementptr i8, ptr %1, i64 %i.au ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  %i.av = getelementptr i8, ptr %next.gep68, i64 16 ; 2 uses
  %wide.load69 = load <2 x ptr>, ptr %next.gep68, align 8, !tbaa !20, !alias.scope !1546, !noalias !1541
  %wide.load70 = load <2 x ptr>, ptr %i.av, align 8, !tbaa !20, !alias.scope !1546, !noalias !1541
  %i.aw = getelementptr i8, ptr %next.gep67, i64 16
  store <2 x ptr> %wide.load69, ptr %next.gep67, align 8, !tbaa !20, !alias.scope !1549, !noalias !1546
  store <2 x ptr> %wide.load70, ptr %i.aw, align 8, !tbaa !20, !alias.scope !1549, !noalias !1546
  store <2 x ptr> splat (ptr null), ptr %next.gep68, align 8, !tbaa !20, !alias.scope !1546, !noalias !1541
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !20, !alias.scope !1546, !noalias !1541
  %index.next71 = add nuw i64 %index66, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.ax, label %middle.block72, label %vector.body65, !llvm.loop !1551

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %i.al, %n.vec64
  br i1 %cmp.n73, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29.preheader76

.lr.ph.i.i.i29.preheader76:                       ; preds = %vector.memcheck55, %.lr.ph.i.i.i29.preheader, %middle.block72
  %.012.i.i.i30.ph = phi ptr [ %i.aj, %vector.memcheck55 ], [ %i.aj, %.lr.ph.i.i.i29.preheader ], [ %i.as, %middle.block72 ]
  %.0911.i.i.i31.ph = phi ptr [ %1, %vector.memcheck55 ], [ %1, %.lr.ph.i.i.i29.preheader ], [ %i.at, %middle.block72 ]
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %.lr.ph.i.i.i29.preheader76, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.ba, %.lr.ph.i.i.i29 ], [ %.012.i.i.i30.ph, %.lr.ph.i.i.i29.preheader76 ] ; 2 uses
  %.0911.i.i.i31 = phi ptr [ %i.az, %.lr.ph.i.i.i29 ], [ %.0911.i.i.i31.ph, %.lr.ph.i.i.i29.preheader76 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  %i.ay = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !20, !alias.scope !1544, !noalias !1541
  store ptr %i.ay, ptr %.012.i.i.i30, align 8, !tbaa !20, !alias.scope !1541, !noalias !1544
  store ptr null, ptr %.0911.i.i.i31, align 8, !tbaa !20, !alias.scope !1544, !noalias !1541
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !1552

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34: ; preds = %.lr.ph.i.i.i29, %middle.block72, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.aj, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.as, %middle.block72 ], [ %i.ba, %.lr.ph.i.i.i29 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !110
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #34
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, %bb.e
  store ptr %i.q, ptr %0, align 8, !tbaa !112
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !107
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !110
  ret void

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %i.bh) #22 ; 0 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.thread: ; preds = %bb.f
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #22
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit: ; preds = %bb.f
  %i.bk = shl nuw nsw i64 %i.l, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.bk) #34
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #35
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.bj

bb.i:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #38
  unreachable

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.461, align 8            ; 5 uses
  %4 = alloca %class.anon.460, align 8            ; 4 uses
  %5 = alloca %class.anon.630, align 8            ; 5 uses
  %6 = alloca %class.anon.629, align 8            ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 24576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.h = load i32, ptr %i.c, align 4
  %i.i = and i32 %i.h, -24577
  %i.j = or disjoint i32 %i.i, 16384
  store i32 %i.j, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load ptr, ptr %1, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 4 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !20     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.u = load <2 x double>, ptr %i.m, align 16, !tbaa !23
  %i.v = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #29, !srcloc !963 ; 3 uses
  %i.w = load <2 x i64>, ptr %i.o, align 16, !tbaa !23
  %i.x = fneg <2 x double> %i.v
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = xor <2 x i64> %i.w, <i64 -9223372036854775808, i64 0>
  %i.aa = bitcast <2 x i64> %i.z to <2 x double>
  %i.ab = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aa) #22, !srcloc !962 ; 3 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ad = fmul <2 x double> %i.v, %i.ab
  %i.ae = fmul <2 x double> %i.v, %i.ac
  %i.af = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ae, <2 x double> splat (double +inf))
  %i.ag = fmul <2 x double> %i.y, %i.ab
  %i.ah = fmul <2 x double> %i.y, %i.ac
  %i.ai = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ah, <2 x double> splat (double +inf))
  %i.aj = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ad, <2 x double> %i.af)
  %i.ak = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ag, <2 x double> %i.ai)
  %i.al = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.aj, <2 x double> %i.ak)
  %i.am = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.al) #22, !srcloc !962
  %i.an = load <2 x double>, ptr %i.p, align 16, !tbaa !23
  %i.ao = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.an) #29, !srcloc !963 ; 3 uses
  %i.ap = load <2 x i64>, ptr %i.s, align 16, !tbaa !23
  %i.aq = fneg <2 x double> %i.ao
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.as = xor <2 x i64> %i.ap, <i64 -9223372036854775808, i64 0>
  %i.at = bitcast <2 x i64> %i.as to <2 x double>
  %i.au = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.at) #22, !srcloc !962 ; 3 uses
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aw = fmul <2 x double> %i.ao, %i.au
  %i.ax = fmul <2 x double> %i.ao, %i.av
  %i.ay = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ax, <2 x double> splat (double +inf))
  %i.az = fmul <2 x double> %i.ar, %i.au
  %i.ba = fmul <2 x double> %i.ar, %i.av
  %i.bb = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ba, <2 x double> splat (double +inf))
  %i.bc = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.aw, <2 x double> %i.ay)
  %i.bd = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.az, <2 x double> %i.bb)
end_hunk_2
begin_hunk_3_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SK_RSO_:bb.a
  %i.az = ashr exact i64 %sext.i.i.i.i, 30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !38
  %i.bc = tail call i32 @llvm.abs.i32(i32 %i.bb, i1 true)
  %i.bd = icmp samesign ult i32 %i.bc, %i.aw
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SK_SK_RSO_.exit

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i
  store i64 %i.ay, ptr %i.be, align 8, !tbaa !31
  %.not10.i = icmp eq i64 %.0920.i.i89.i, 0
  br i1 %.not10.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SK_SK_RSO_.exit, label %bb.f, !llvm.loop !1826

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SK_SK_RSO_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i64 %i.f, ptr %i.bf, align 8, !tbaa !31
  %i.bg = icmp sgt i64 %i.i, 8
  br i1 %i.bg, label %bb.b, label %._crit_edge, !llvm.loop !1827

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SK_SK_RSO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SK_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !844 ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SO_SO_SW_S11_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.bf, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SO_SO_SW_S11_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31   ; 2 uses
  %i.r = icmp slt i64 %.09, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !30 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.037.i = phi i64 [ %.09, %.lr.ph.i ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.t = shl i64 %.037.i, 1                       ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.v, align 8, !tbaa !31
  %i.z = load i64, ptr %i.x, align 8, !tbaa !31
  %sext.i.i = shl i64 %i.y, 32
  %i.aa = ashr exact i64 %sext.i.i, 30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !38
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %sext2.i.i = shl i64 %i.z, 32
  %i.ae = ashr exact i64 %sext2.i.i, 30
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !38
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = icmp samesign ult i32 %i.ad, %i.ah
  %spec.select.i = select i1 %i.ai, i64 %i.w, i64 %i.u ; 4 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !31
  %i.am = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.am, label %bb.d, label %._crit_edge.i, !llvm.loop !1825

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.an = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.ao = load i64, ptr %i.n, align 8, !tbaa !31
  store i64 %i.ao, ptr %i.o, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ap = icmp sgt i64 %.1.i, %.09
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SO_SO_SW_S11_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.aq = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !30 ; 2 uses
  %sext2.i.i.i = shl i64 %i.q, 32
  %i.ar = ashr exact i64 %sext2.i.i.i, 30
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !38
  %i.au = tail call i32 @llvm.abs.i32(i32 %i.at, i1 true)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.0920.i.i, %bb.h ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !31 ; 2 uses
  %sext.i.i.i = shl i64 %i.aw, 32
  %i.ax = ashr exact i64 %sext.i.i.i, 30
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !38
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true)
  %i.bb = icmp samesign ult i32 %i.ba, %i.au
  br i1 %i.bb, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SO_SO_SW_S11_.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store i64 %i.aw, ptr %i.bc, align 8, !tbaa !31
  %i.bd = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.bd, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SO_SO_SW_S11_.exit, !llvm.loop !1826

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SO_SO_SW_S11_.exit: ; preds = %bb.g, %bb.h, %bb.f
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.0920.i.i, %bb.h ], [ %.019.i.i, %bb.g ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i64 %i.q, ptr %i.be, align 8, !tbaa !31
  %.not = icmp eq i64 %.09, 0
  %i.bf = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1828

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SO_SO_SW_S11_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE17_M_realloc_insertIJRKdS8_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %6 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !112    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #35
  unreachable

_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit
  %i.s = load ptr, ptr %5, align 8, !tbaa !20
  store ptr %i.s, ptr %i.r, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %8 = add i64 %i.m, -8
  %9 = sub i64 %8, %i.e                           ; 2 uses
  %i.t = lshr i64 %9, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %9, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader77, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.v = add i64 %i.m, -8
  %i.w = sub i64 %i.v, %i.e
  %i.x = and i64 %i.w, -8
  %i.y = add i64 %i.x, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.y
  %scevgep51 = getelementptr i8, ptr %i.c, i64 %i.y
  %bound0 = icmp ult ptr %i.q, %scevgep51
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader77, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.q, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.c, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ac ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.c, i64 %i.ac ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  %i.ad = getelementptr i8, ptr %next.gep52, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep52, align 8, !tbaa !20, !alias.scope !1834, !noalias !1829
  %wide.load53 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !20, !alias.scope !1834, !noalias !1829
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !20, !alias.scope !1837, !noalias !1834
  store <2 x ptr> %wide.load53, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1837, !noalias !1834
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !20, !alias.scope !1834, !noalias !1829
  store <2 x ptr> splat (ptr null), ptr %i.ad, align 8, !tbaa !20, !alias.scope !1834, !noalias !1829
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1839

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader77

.lr.ph.i.i.i.preheader77:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader77, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader77 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader77 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !1832, !noalias !1829
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !20, !alias.scope !1829, !noalias !1832
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !1832, !noalias !1829
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1840

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29.preheader

.lr.ph.i.i.i29.preheader:                         ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %10 = add i64 %i.d, -8
  %11 = sub i64 %10, %i.m                         ; 2 uses
  %i.ak = lshr i64 %11, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %11, 152
  br i1 %min.iters.check62, label %.lr.ph.i.i.i29.preheader76, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.lr.ph.i.i.i29.preheader
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep56 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep57 = getelementptr i8, ptr %i.aq, i64 8
  %bound058 = icmp ult ptr %i.aj, %scevgep57
  %bound159 = icmp ult ptr %1, %scevgep56
  %found.conflict60 = and i1 %bound058, %bound159
  br i1 %found.conflict60, label %.lr.ph.i.i.i29.preheader76, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck55
  %n.vec64 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec64, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 2 uses
  %i.au = shl i64 %index66, 3                     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep68 = getelementptr i8, ptr %1, i64 %i.au ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  %i.av = getelementptr i8, ptr %next.gep68, i64 16 ; 2 uses
  %wide.load69 = load <2 x ptr>, ptr %next.gep68, align 8, !tbaa !20, !alias.scope !1846, !noalias !1841
  %wide.load70 = load <2 x ptr>, ptr %i.av, align 8, !tbaa !20, !alias.scope !1846, !noalias !1841
  %i.aw = getelementptr i8, ptr %next.gep67, i64 16
  store <2 x ptr> %wide.load69, ptr %next.gep67, align 8, !tbaa !20, !alias.scope !1849, !noalias !1846
  store <2 x ptr> %wide.load70, ptr %i.aw, align 8, !tbaa !20, !alias.scope !1849, !noalias !1846
  store <2 x ptr> splat (ptr null), ptr %next.gep68, align 8, !tbaa !20, !alias.scope !1846, !noalias !1841
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !20, !alias.scope !1846, !noalias !1841
  %index.next71 = add nuw i64 %index66, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.ax, label %middle.block72, label %vector.body65, !llvm.loop !1851

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %i.al, %n.vec64
  br i1 %cmp.n73, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29.preheader76

.lr.ph.i.i.i29.preheader76:                       ; preds = %vector.memcheck55, %.lr.ph.i.i.i29.preheader, %middle.block72
  %.012.i.i.i30.ph = phi ptr [ %i.aj, %vector.memcheck55 ], [ %i.aj, %.lr.ph.i.i.i29.preheader ], [ %i.as, %middle.block72 ]
  %.0911.i.i.i31.ph = phi ptr [ %1, %vector.memcheck55 ], [ %1, %.lr.ph.i.i.i29.preheader ], [ %i.at, %middle.block72 ]
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %.lr.ph.i.i.i29.preheader76, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.ba, %.lr.ph.i.i.i29 ], [ %.012.i.i.i30.ph, %.lr.ph.i.i.i29.preheader76 ] ; 2 uses
  %.0911.i.i.i31 = phi ptr [ %i.az, %.lr.ph.i.i.i29 ], [ %.0911.i.i.i31.ph, %.lr.ph.i.i.i29.preheader76 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  %i.ay = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !20, !alias.scope !1844, !noalias !1841
  store ptr %i.ay, ptr %.012.i.i.i30, align 8, !tbaa !20, !alias.scope !1841, !noalias !1844
  store ptr null, ptr %.0911.i.i.i31, align 8, !tbaa !20, !alias.scope !1844, !noalias !1841
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !1852

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34: ; preds = %.lr.ph.i.i.i29, %middle.block72, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.aj, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.as, %middle.block72 ], [ %i.ba, %.lr.ph.i.i.i29 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !110
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #34
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, %bb.e
  store ptr %i.q, ptr %0, align 8, !tbaa !112
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !107
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !110
  ret void

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %i.bh) #22 ; 0 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.thread: ; preds = %bb.f
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #22
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit: ; preds = %bb.f
  %i.bk = shl nuw nsw i64 %i.l, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.bk) #34
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #35
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.bj

bb.i:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #38
  unreachable

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEESF_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSI_IT0_EEmmRKS3_IiSaIiEERKNSI_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSJ_SJ_SN_SV_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.837", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.837", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEESF_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSI_IT0_EEmmRKS3_IiSaIiEERKNSI_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEESJ_SJ_SJ_SN_.exit
  %i.h = icmp eq i64 %i.l, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40, !llvm.loop !1853

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEESF_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSI_IT0_EEmmRKS3_IiSaIiEERKNSI_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSJ_SJ_RSN_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEESF_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSI_IT0_EEmmRKS3_IiSaIiEERKNSI_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSJ_SJ_RSN_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2039 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02138 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.bj, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02138, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2039, i64 -8 ; 3 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !31   ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !31   ; 3 uses
  %sext.i.i.i = shl i64 %i.p, 32
  %i.r = load ptr, ptr %4, align 8, !tbaa !30     ; 6 uses
  %i.s = ashr exact i64 %sext.i.i.i, 30
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38
  %i.v = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 3 uses
  %sext2.i.i.i = shl i64 %i.q, 32
  %i.w = ashr exact i64 %sext2.i.i.i, 30
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38
  %i.z = tail call i32 @llvm.abs.i32(i32 %i.y, i1 true) ; 3 uses
  %i.aa = icmp samesign ult i32 %i.v, %i.z
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !31  ; 3 uses
  %sext2.i27.i.i = shl i64 %i.ab, 32
  %i.ac = ashr exact i64 %sext2.i27.i.i, 30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true) ; 4 uses
  br i1 %i.aa, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph40
  %i.ag = icmp samesign ult i32 %i.z, %i.af
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %0, align 8, !tbaa !31
end_hunk_3
