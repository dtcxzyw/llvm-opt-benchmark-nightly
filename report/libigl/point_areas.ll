inline.NumInlined: 12872
inline.NumDeleted: 5809
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !1405 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1408, !range !295, !noundef !48
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1414
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !1408, !range !295 ; 3 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1414
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
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #39 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !1409, !range !295, !noundef !48
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #40
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !1408, !range !295
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !1408
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1405
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !99
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !99
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !1405
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
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !1409, !range !295, !noundef !48
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #40
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !1408, !range !295
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !1408
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !1405
  store i64 1, ptr %0, align 16, !tbaa !99
  store ptr %i.av, ptr %i.as, align 8, !tbaa !99
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !1405
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #38
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !1414
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.be, align 8, !tbaa !1407
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
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !1414 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !1414
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !1414
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1414
  %i.bz = sub nuw nsw i64 64, %i.d
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = or disjoint i64 %i.ca, %i.br
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !1414
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.p
  %.187 = phi i64 [ %i.y, %bb.p ], [ %i.bq, %bb.r ], [ %i.y, %bb.t ], [ %i.y, %bb.s ] ; 12 uses
  %.0 = phi i64 [ %i.bf, %bb.p ], [ 0, %bb.r ], [ 1, %bb.t ], [ 1, %bb.s ] ; 11 uses
  %i.cc = add nsw i64 %i.b, 2                     ; 2 uses
  %i.cd = sub nsw i64 %.187, %.0                  ; 2 uses
  %.not96107 = icmp slt i64 %i.cd, %i.cc
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.ce = sub nuw nsw i64 64, %i.d                ; 2 uses
  %2 = sub i64 %.187, %.0                         ; 2 uses
  %3 = add i64 %2, -1
  %i.cf = add i64 %i.b, 1
  %i.cg = tail call i64 @llvm.smin.i64(i64 %3, i64 %i.cf)
  %i.ch = sub i64 %2, %i.cg                       ; 3 uses
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
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !1414, !alias.scope !1472
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !1414, !alias.scope !1475, !noalias !1477
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !1414, !alias.scope !1479
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !1414, !alias.scope !1475, !noalias !1477
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !1480

middle.block:                                     ; preds = %vector.body
  %i.dp = add i64 %.0, %n.vec
  %i.dq = sub i64 %.187, %i.dp
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
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !1414
  %i.dw = shl i64 %i.dv, %i.d                     ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ds ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !1414
  %i.dy = add i64 %.1108, %i.b
  %i.dz = sub i64 %invariant.op, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !1414
  %i.ec = lshr i64 %i.eb, %i.ce
  %i.ed = or disjoint i64 %i.ec, %i.dw
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !1414
  %i.ee = add i64 %.1108, 1                       ; 3 uses
  %i.ef = sub nsw i64 %.187, %i.ee                ; 2 uses
  %.not96 = icmp slt i64 %i.ef, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !1481

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
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !1414
  %i.em = shl i64 %i.el, %i.d
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ei
  store i64 %i.em, ptr %i.en, align 8, !tbaa !1414
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
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multiprecision::detail::minus", align 1 ; 3 uses
  %4 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"union.boost::multiprecision::backends::cpp_int_base<512, 18446744073709551615, boost::multiprecision::signed_magnitude, boost::multiprecision::unchecked, std::allocator<unsigned long long>>::data_type", align 16 ; 4 uses
  %7 = alloca %"class.boost::multiprecision::number.1955", align 16 ; 14 uses
  %8 = alloca %"struct.boost::multiprecision::detail::expression.1964", align 8 ; 5 uses
  %9 = alloca %"struct.boost::multiprecision::detail::shift_left", align 1 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1482, !noalias !1484, !nonnull !48, !align !1437
  %i.b = icmp eq ptr %i.a, %0                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1433, !noalias !1487, !nonnull !48, !align !1437 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, label %.thread

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit: ; preds = %bb.a
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i64 0, ptr %7, align 16, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 1, ptr %i.g, align 16, !tbaa !1405
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !1407
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 73 ; 4 uses
  store i8 1, ptr %i.i, align 1, !tbaa !1408
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 74 ; 4 uses
  store i8 0, ptr %i.j, align 2, !tbaa !1409
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit unwind label %bb.c, !inline_history !1490

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !1408, !range !295, !noundef !48
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load i8, ptr %i.j, align 2, !range !295
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %7, align 16
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #40, !inline_history !1432
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(75) %7, i64 64, i1 false), !tbaa.struct !1441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %7, ptr noundef nonnull align 16 dereferenceable(75) %0, i64 64, i1 false), !tbaa.struct !1441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !1441
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load i8, ptr %i.h, align 8, !tbaa !105, !range !295, !noundef !48
  %i.v = load i8, ptr %i.t, align 8, !tbaa !105, !range !295, !noundef !48
  store i8 %i.v, ptr %i.h, align 8, !tbaa !105
  store i8 %i.u, ptr %i.t, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.x = load i8, ptr %i.i, align 1, !tbaa !105, !range !295, !noundef !48
  %i.y = load i8, ptr %i.w, align 1, !tbaa !105, !range !295, !noundef !48 ; 2 uses
  store i8 %i.y, ptr %i.i, align 1, !tbaa !105
  store i8 %i.x, ptr %i.w, align 1, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.g, align 16, !tbaa !45
  %i.ab = load i64, ptr %i.z, align 16, !tbaa !45
  store i64 %i.ab, ptr %i.g, align 16, !tbaa !45
  store i64 %i.aa, ptr %i.z, align 16, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ad = load i8, ptr %i.j, align 2, !tbaa !105, !range !295, !noundef !48
  %i.ae = load i8, ptr %i.ac, align 2, !tbaa !105, !range !295, !noundef !48 ; 2 uses
  store i8 %i.ae, ptr %i.j, align 2, !tbaa !105
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !105
  %i.af = or i8 %i.ae, %i.y
  %or.cond.i.i25.not = icmp eq i8 %i.af, 0
  br i1 %or.cond.i.i25.not, label %bb.e, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load i64, ptr %7, align 16
  %i.aj = shl i64 %i.ai, 3
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.aj) #40
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

.thread:                                          ; preds = %bb.a
  br i1 %i.b, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  store ptr %i.d, ptr %8, align 8, !tbaa !1419, !alias.scope !1491
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load i32, ptr %i.e, align 8, !tbaa !1424, !noalias !1491
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !1424, !alias.scope !1491
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_10shift_leftES9_ivvEESD_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

.critedge:                                        ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, %.thread
  %i.am = load i32, ptr %i.e, align 8, !tbaa !1424, !noalias !1494 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr @.str.34, ptr %5, align 8, !tbaa !1448
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.35, ptr %i.ao, align 8, !tbaa !1450
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1474, ptr %i.ap, align 8, !tbaa !1451
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 87, ptr %i.aq, align 4, !tbaa !1452
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #37
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_4plusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_:bb.a
  resume { ptr, i32 } %common.resume.op

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail4plusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(75) %7, i64 64, i1 false), !tbaa.struct !1441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %7, ptr noundef nonnull align 16 dereferenceable(75) %0, i64 64, i1 false), !tbaa.struct !1441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !1441
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load i8, ptr %i.h, align 8, !tbaa !105, !range !295, !noundef !48
  %i.v = load i8, ptr %i.t, align 8, !tbaa !105, !range !295, !noundef !48
  store i8 %i.v, ptr %i.h, align 8, !tbaa !105
  store i8 %i.u, ptr %i.t, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.x = load i8, ptr %i.i, align 1, !tbaa !105, !range !295, !noundef !48
  %i.y = load i8, ptr %i.w, align 1, !tbaa !105, !range !295, !noundef !48 ; 2 uses
  store i8 %i.y, ptr %i.i, align 1, !tbaa !105
  store i8 %i.x, ptr %i.w, align 1, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.g, align 16, !tbaa !45
  %i.ab = load i64, ptr %i.z, align 16, !tbaa !45
  store i64 %i.ab, ptr %i.g, align 16, !tbaa !45
  store i64 %i.aa, ptr %i.z, align 16, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ad = load i8, ptr %i.j, align 2, !tbaa !105, !range !295, !noundef !48
  %i.ae = load i8, ptr %i.ac, align 2, !tbaa !105, !range !295, !noundef !48 ; 2 uses
  store i8 %i.ae, ptr %i.j, align 2, !tbaa !105
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !105
  %i.af = or i8 %i.ae, %i.y
  %or.cond.i.i22.not = icmp eq i8 %i.af, 0
  br i1 %or.cond.i.i22.not, label %bb.e, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail4plusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load i64, ptr %7, align 16
  %i.aj = shl i64 %i.ai, 3
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.aj) #40
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail4plusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE6do_addINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit25

.thread:                                          ; preds = %bb.a
  br i1 %i.b, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  store ptr %i.d, ptr %8, align 8, !tbaa !1419, !alias.scope !1672
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load i32, ptr %i.e, align 8, !tbaa !1424, !noalias !1672
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !1424, !alias.scope !1672
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE6do_addINS0_6detail10expressionINSB_10shift_leftES9_ivvEESD_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE6do_addINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit25

.critedge:                                        ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, %.thread
  %i.am = load i32, ptr %i.e, align 8, !tbaa !1424, !noalias !1675 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr @.str.34, ptr %5, align 8, !tbaa !1448
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.35, ptr %i.ao, align 8, !tbaa !1450
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1474, ptr %i.ap, align 8, !tbaa !1451
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 87, ptr %i.aq, align 4, !tbaa !1452
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #37
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit: ; preds = %.critedge
  %i.as = zext nneg i32 %i.am to i64
  tail call void @_ZN5boost14multiprecision11default_ops15eval_left_shiftINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES8_mEEvRT_RKT0_T1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.d, i64 noundef %i.as)
  %i.at = load ptr, ptr %1, align 8, !tbaa !1663, !noalias !1678, !nonnull !48, !align !1437 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load i8, ptr %i.au, align 8, !tbaa !1407, !range !295, !noundef !48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !1407, !range !295, !noundef !48
  %.not.i.i24 = icmp eq i8 %i.av, %i.ax
  br i1 %.not.i.i24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit
  tail call void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.at)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE6do_addINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit25

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit
  tail call void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.at)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE6do_addINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit25

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE6do_addINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit25: ; preds = %bb.k, %bb.j, %bb.f, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSB_IiLin1ELin1ELi0ELin1ELin1EEESC_NSB_IdLin1ELi1ELi0ELin1ELi1EEESC_EEvRKNSA_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EERNSA_15PlainObjectBaseIT2_EERNSS_IT3_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS6_IlSZ_EEbSG_S11_mEUllmE_S12_EEbSG_S11_RKSO_RKST_mEUlllmE_RlS1B_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !52     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #37
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #39 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !60
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #39
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEESB_NSA_IdLin1ELi1ELi0ELin1ELi1EEESB_EEvRKNS9_10MatrixBaseIT_EERKNSE_IT0_EERKNSE_IT1_EERNS9_15PlainObjectBaseIT2_EERNSR_IT3_EEEUliE_EEbSF_RKSJ_mEUlmE_ZNS5_IlSY_EEbSF_S10_mEUllmE_S11_EEbSF_S10_RKSN_RKSS_mEUlllmE_llmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !45
  store i64 %i.t, ptr %i.s, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !45
  store i64 %i.v, ptr %i.u, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !45
  store i64 %i.x, ptr %i.w, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !31
  store i64 %i.z, ptr %i.y, align 8, !tbaa !31
  store ptr %i.r, ptr %6, align 8, !tbaa !68
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !68    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #32, !inline_history !70
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !68    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #32, !inline_history !70
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %7 = sub i64 %i.m, %i.e
  %8 = add i64 %7, -8                             ; 2 uses
  %i.aj = lshr i64 %8, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.al = add i64 %i.m, -8
  %i.am = sub i64 %i.al, %i.e
  %i.an = and i64 %i.am, -8
  %i.ao = add i64 %i.an, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.ao
  %scevgep54 = getelementptr i8, ptr %i.c, i64 %i.ao
  %bound0 = icmp ult ptr %i.p, %scevgep54
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.p, i64 %i.ap   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.as ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.c, i64 %i.as ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  %i.at = getelementptr i8, ptr %next.gep55, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !45, !alias.scope !1686, !noalias !1681
  %wide.load56 = load <2 x i64>, ptr %i.at, align 8, !tbaa !45, !alias.scope !1686, !noalias !1681
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !45, !alias.scope !1689, !noalias !1686
  store <2 x i64> %wide.load56, ptr %i.au, align 8, !tbaa !45, !alias.scope !1689, !noalias !1686
  store <2 x i64> zeroinitializer, ptr %next.gep55, align 8, !tbaa !45, !alias.scope !1686, !noalias !1681
  store <2 x i64> zeroinitializer, ptr %i.at, align 8, !tbaa !45, !alias.scope !1686, !noalias !1681
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1691

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader80

.lr.ph.i.i.i.preheader80:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader80, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  %i.aw = load i64, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !1684, !noalias !1681
  store i64 %i.aw, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !1681, !noalias !1684
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !1684, !noalias !1681
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !1692

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.aq, %middle.block ], [ %i.ay, %.lr.ph.i.i.i ] ; 2 uses
  %i.az = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %9 = sub i64 %i.d, %i.m
  %10 = add i64 %9, -8                            ; 2 uses
  %i.ba = lshr i64 %10, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check65 = icmp ult i64 %10, 152
  br i1 %min.iters.check65, label %.lr.ph.i.i.i30.preheader79, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i30.preheader
  %i.bc = add i64 %i.d, -8
  %i.bd = sub i64 %i.bc, %i.m
  %i.be = and i64 %i.bd, -8                       ; 2 uses
  %i.bf = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.be
  %scevgep59 = getelementptr i8, ptr %i.bf, i64 16
  %i.bg = getelementptr i8, ptr %1, i64 %i.be
  %scevgep60 = getelementptr i8, ptr %i.bg, i64 8
  %bound061 = icmp ult ptr %i.az, %scevgep60
  %bound162 = icmp ult ptr %1, %scevgep59
  %found.conflict63 = and i1 %bound061, %bound162
  br i1 %found.conflict63, label %.lr.ph.i.i.i30.preheader79, label %vector.ph66

vector.ph66:                                      ; preds = %vector.memcheck58
  %n.vec67 = and i64 %i.bb, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec67, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.az, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 %i.bh
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next74, %vector.body68 ] ; 2 uses
  %i.bk = shl i64 %index69, 3                     ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.az, i64 %i.bk ; 2 uses
  %next.gep71 = getelementptr i8, ptr %1, i64 %i.bk ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  %i.bl = getelementptr i8, ptr %next.gep71, i64 16 ; 2 uses
  %wide.load72 = load <2 x i64>, ptr %next.gep71, align 8, !tbaa !45, !alias.scope !1698, !noalias !1693
  %wide.load73 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !45, !alias.scope !1698, !noalias !1693
  %i.bm = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x i64> %wide.load72, ptr %next.gep70, align 8, !tbaa !45, !alias.scope !1701, !noalias !1698
  store <2 x i64> %wide.load73, ptr %i.bm, align 8, !tbaa !45, !alias.scope !1701, !noalias !1698
  store <2 x i64> zeroinitializer, ptr %next.gep71, align 8, !tbaa !45, !alias.scope !1698, !noalias !1693
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !45, !alias.scope !1698, !noalias !1693
  %index.next74 = add nuw i64 %index69, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.bn, label %middle.block75, label %vector.body68, !llvm.loop !1703

middle.block75:                                   ; preds = %vector.body68
  %cmp.n76 = icmp eq i64 %i.bb, %n.vec67
  br i1 %cmp.n76, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader79

.lr.ph.i.i.i30.preheader79:                       ; preds = %vector.memcheck58, %.lr.ph.i.i.i30.preheader, %middle.block75
  %.012.i.i.i31.ph = phi ptr [ %i.az, %vector.memcheck58 ], [ %i.az, %.lr.ph.i.i.i30.preheader ], [ %i.bi, %middle.block75 ]
  %.0911.i.i.i32.ph = phi ptr [ %1, %vector.memcheck58 ], [ %1, %.lr.ph.i.i.i30.preheader ], [ %i.bj, %middle.block75 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader79, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.012.i.i.i31.ph, %.lr.ph.i.i.i30.preheader79 ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.bp, %.lr.ph.i.i.i30 ], [ %.0911.i.i.i32.ph, %.lr.ph.i.i.i30.preheader79 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !45, !alias.scope !1696, !noalias !1693
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !45, !alias.scope !1693, !noalias !1696
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !45, !alias.scope !1696, !noalias !1693
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1704

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block75, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.az, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block75 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !56
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #40
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !52
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !55
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !56
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.by = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #32 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #40
  invoke void @__cxa_rethrow() #37
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #38
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEESB_NSA_IdLin1ELi1ELi0ELin1ELi1EEESB_EEvRKNS9_10MatrixBaseIT_EERKNSE_IT0_EERKNSE_IT1_EERNS9_15PlainObjectBaseIT2_EERNSR_IT3_EEEUliE_EEbSF_RKSJ_mEUlmE_ZNS5_IlSY_EEbSF_S10_mEUllmE_S11_EEbSF_S10_RKSN_RKSS_mEUlllmE_llmEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #19 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEESB_NSA_IdLin1ELi1ELi0ELin1ELi1EEESB_EEvRKNS9_10MatrixBaseIT_EERKNSE_IT0_EERKNSE_IT1_EERNS9_15PlainObjectBaseIT2_EERNSR_IT3_EEEUliE_EEbSF_RKSJ_mEUlmE_ZNS5_IlSY_EEbSF_S10_mEUllmE_S11_EEbSF_S10_RKSN_RKSS_mEUlllmE_llmEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.f = icmp slt i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEESA_NS9_IdLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EERNS8_15PlainObjectBaseIT2_EERNSQ_IT3_EEEUliE_EEbSE_RKSI_mEUlmE_ZNS4_IlSX_EEbSE_SZ_mEUllmE_S10_EEbSE_SZ_RKSM_RKSR_mEUlllmE_llmEEEclEv.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1705, !nonnull !48, !align !49
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46, !nonnull !48, !align !49
  %i.i = trunc i64 %.06.i.i.i.i.i to i32
  tail call void @_ZZN3igl8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_NS4_IdLin1ELi1ELi0ELin1ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EERNSL_IT3_EEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef %i.i)
  %i.j = add i64 %.06.i.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.j, %i.e
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEESA_NS9_IdLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EERNS8_15PlainObjectBaseIT2_EERNSQ_IT3_EEEUliE_EEbSE_RKSI_mEUlmE_ZNS4_IlSX_EEbSE_SZ_mEUllmE_S10_EEbSE_SZ_RKSM_RKSR_mEUlllmE_llmEEEclEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1707

_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEESA_NS9_IdLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EERNS8_15PlainObjectBaseIT2_EERNSQ_IT3_EEEUliE_EEbSE_RKSI_mEUlmE_ZNS4_IlSX_EEbSE_SZ_mEUllmE_S10_EEbSE_SZ_RKSM_RKSR_mEUlllmE_llmEEEclEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSB_IiLin1ELin1ELi0ELin1ELin1EEESC_NSB_IdLin1ELi1ELi0ELin1ELi1EEESC_EEvRKNSA_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EERNSA_15PlainObjectBaseIT2_EERNSS_IT3_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS6_IlSZ_EEbSG_S11_mEUllmE_S12_EEbSG_S11_RKSO_RKST_mEUlllmE_RlRKlRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !52     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #37
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #39 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !60
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #39
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEESB_NSA_IdLin1ELi1ELi0ELin1ELi1EEESB_EEvRKNS9_10MatrixBaseIT_EERKNSE_IT0_EERKNSE_IT1_EERNS9_15PlainObjectBaseIT2_EERNSR_IT3_EEEUliE_EEbSF_RKSJ_mEUlmE_ZNS5_IlSY_EEbSF_S10_mEUllmE_S11_EEbSF_S10_RKSN_RKSS_mEUlllmE_llmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !45
  store i64 %i.t, ptr %i.s, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !45
  store i64 %i.v, ptr %i.u, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !45
  store i64 %i.x, ptr %i.w, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !31
  store i64 %i.z, ptr %i.y, align 8, !tbaa !31
  store ptr %i.r, ptr %6, align 8, !tbaa !68
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !68    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #32, !inline_history !71
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !68    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #32, !inline_history !71
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %7 = sub i64 %i.m, %i.e
  %8 = add i64 %7, -8                             ; 2 uses
  %i.aj = lshr i64 %8, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.al = add i64 %i.m, -8
  %i.am = sub i64 %i.al, %i.e
  %i.an = and i64 %i.am, -8
  %i.ao = add i64 %i.an, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.ao
  %scevgep54 = getelementptr i8, ptr %i.c, i64 %i.ao
  %bound0 = icmp ult ptr %i.p, %scevgep54
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.p, i64 %i.ap   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.as ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.c, i64 %i.as ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  %i.at = getelementptr i8, ptr %next.gep55, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !45, !alias.scope !1713, !noalias !1708
  %wide.load56 = load <2 x i64>, ptr %i.at, align 8, !tbaa !45, !alias.scope !1713, !noalias !1708
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !45, !alias.scope !1716, !noalias !1713
  store <2 x i64> %wide.load56, ptr %i.au, align 8, !tbaa !45, !alias.scope !1716, !noalias !1713
  store <2 x i64> zeroinitializer, ptr %next.gep55, align 8, !tbaa !45, !alias.scope !1713, !noalias !1708
  store <2 x i64> zeroinitializer, ptr %i.at, align 8, !tbaa !45, !alias.scope !1713, !noalias !1708
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1718

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader80

.lr.ph.i.i.i.preheader80:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader80, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  %i.aw = load i64, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !1711, !noalias !1708
  store i64 %i.aw, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !1708, !noalias !1711
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !1711, !noalias !1708
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !1719

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.aq, %middle.block ], [ %i.ay, %.lr.ph.i.i.i ] ; 2 uses
  %i.az = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %9 = sub i64 %i.d, %i.m
  %10 = add i64 %9, -8                            ; 2 uses
  %i.ba = lshr i64 %10, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check65 = icmp ult i64 %10, 152
  br i1 %min.iters.check65, label %.lr.ph.i.i.i30.preheader79, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i30.preheader
  %i.bc = add i64 %i.d, -8
  %i.bd = sub i64 %i.bc, %i.m
  %i.be = and i64 %i.bd, -8                       ; 2 uses
  %i.bf = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.be
  %scevgep59 = getelementptr i8, ptr %i.bf, i64 16
  %i.bg = getelementptr i8, ptr %1, i64 %i.be
  %scevgep60 = getelementptr i8, ptr %i.bg, i64 8
  %bound061 = icmp ult ptr %i.az, %scevgep60
  %bound162 = icmp ult ptr %1, %scevgep59
  %found.conflict63 = and i1 %bound061, %bound162
  br i1 %found.conflict63, label %.lr.ph.i.i.i30.preheader79, label %vector.ph66

vector.ph66:                                      ; preds = %vector.memcheck58
  %n.vec67 = and i64 %i.bb, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec67, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.az, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 %i.bh
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next74, %vector.body68 ] ; 2 uses
  %i.bk = shl i64 %index69, 3                     ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.az, i64 %i.bk ; 2 uses
  %next.gep71 = getelementptr i8, ptr %1, i64 %i.bk ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %i.bl = getelementptr i8, ptr %next.gep71, i64 16 ; 2 uses
  %wide.load72 = load <2 x i64>, ptr %next.gep71, align 8, !tbaa !45, !alias.scope !1725, !noalias !1720
  %wide.load73 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !45, !alias.scope !1725, !noalias !1720
  %i.bm = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x i64> %wide.load72, ptr %next.gep70, align 8, !tbaa !45, !alias.scope !1728, !noalias !1725
  store <2 x i64> %wide.load73, ptr %i.bm, align 8, !tbaa !45, !alias.scope !1728, !noalias !1725
  store <2 x i64> zeroinitializer, ptr %next.gep71, align 8, !tbaa !45, !alias.scope !1725, !noalias !1720
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !45, !alias.scope !1725, !noalias !1720
  %index.next74 = add nuw i64 %index69, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.bn, label %middle.block75, label %vector.body68, !llvm.loop !1730

middle.block75:                                   ; preds = %vector.body68
  %cmp.n76 = icmp eq i64 %i.bb, %n.vec67
  br i1 %cmp.n76, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader79

.lr.ph.i.i.i30.preheader79:                       ; preds = %vector.memcheck58, %.lr.ph.i.i.i30.preheader, %middle.block75
  %.012.i.i.i31.ph = phi ptr [ %i.az, %vector.memcheck58 ], [ %i.az, %.lr.ph.i.i.i30.preheader ], [ %i.bi, %middle.block75 ]
  %.0911.i.i.i32.ph = phi ptr [ %1, %vector.memcheck58 ], [ %1, %.lr.ph.i.i.i30.preheader ], [ %i.bj, %middle.block75 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader79, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.012.i.i.i31.ph, %.lr.ph.i.i.i30.preheader79 ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.bp, %.lr.ph.i.i.i30 ], [ %.0911.i.i.i32.ph, %.lr.ph.i.i.i30.preheader79 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !45, !alias.scope !1723, !noalias !1720
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !45, !alias.scope !1720, !noalias !1723
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !45, !alias.scope !1723, !noalias !1720
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1731

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block75, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.az, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block75 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !56
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #40
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !52
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !55
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !56
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.by = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #32 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #40
  invoke void @__cxa_rethrow() #37
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #38
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_point_areas.cpp() #33 section ".text.startup" {
bb.a:
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL4lastE) ; 0 uses
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN5EigenL6lastp1E) ; 0 uses
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL3allE) ; 0 uses
  %i.d = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef -52) #32
  %i.e = fadd double %i.d, 1.000000e+00
  store double %i.e, ptr @_ZN4COREL6relEpsE, align 8, !tbaa !17
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL6relEpsE) ; 0 uses
  store i64 0, ptr @_ZN4COREL12EXTLONG_ZEROE, align 8, !tbaa !1732
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_ZEROE, i64 8), align 8, !tbaa !1734
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_ZEROE) ; 0 uses
  store i64 1, ptr @_ZN4COREL11EXTLONG_ONEE, align 8, !tbaa !1732
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_ONEE, i64 8), align 8, !tbaa !1734
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_ONEE) ; 0 uses
  store i64 2, ptr @_ZN4COREL11EXTLONG_TWOE, align 8, !tbaa !1732
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_TWOE, i64 8), align 8, !tbaa !1734
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_TWOE) ; 0 uses
  store i64 3, ptr @_ZN4COREL13EXTLONG_THREEE, align 8, !tbaa !1732
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_THREEE, i64 8), align 8, !tbaa !1734
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_THREEE) ; 0 uses
  store i64 4, ptr @_ZN4COREL12EXTLONG_FOURE, align 8, !tbaa !1732
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FOURE, i64 8), align 8, !tbaa !1734
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FOURE) ; 0 uses
  store i64 5, ptr @_ZN4COREL12EXTLONG_FIVEE, align 8, !tbaa !1732
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FIVEE, i64 8), align 8, !tbaa !1734
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FIVEE) ; 0 uses
  store i64 6, ptr @_ZN4COREL11EXTLONG_SIXE, align 8, !tbaa !1732
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_SIXE, i64 8), align 8, !tbaa !1734
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_SIXE) ; 0 uses
  store i64 7, ptr @_ZN4COREL13EXTLONG_SEVENE, align 8, !tbaa !1732
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SEVENE, i64 8), align 8, !tbaa !1734
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SEVENE) ; 0 uses
  store i64 8, ptr @_ZN4COREL13EXTLONG_EIGHTE, align 8, !tbaa !1732
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_EIGHTE, i64 8), align 8, !tbaa !1734
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_EIGHTE) ; 0 uses
  store i64 1073741824, ptr @_ZN4COREL11EXTLONG_BIGE, align 8, !tbaa !1732
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_BIGE, i64 8), align 8, !tbaa !1734
  %i.p = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_BIGE) ; 0 uses
  store i64 -1073741824, ptr @_ZN4COREL13EXTLONG_SMALLE, align 8, !tbaa !1732
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SMALLE, i64 8), align 8, !tbaa !1734
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SMALLE) ; 0 uses
  store double f0x4002934F0979A371, ptr @_ZN4COREL5log_5E, align 8, !tbaa !17
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL5log_5E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #22

end_hunk_1
