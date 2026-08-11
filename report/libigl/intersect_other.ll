inline.NumInlined: 13174
inline.NumDeleted: 5391
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !251 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !252
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
  %i.u = load i64, ptr %i.t, align 8, !tbaa !252
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
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #45 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !260, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #40
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !251
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !24
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !251
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
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !260, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #40
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !251
  store i64 1, ptr %0, align 16, !tbaa !24
  store ptr %i.av, ptr %i.as, align 8, !tbaa !24
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !251
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #41
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !252
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.be, align 8, !tbaa !259
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
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !252 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !252
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !252
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !252
  %i.bz = sub nuw nsw i64 64, %i.d
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = or disjoint i64 %i.ca, %i.br
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !252
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
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !252, !alias.scope !289
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !252, !alias.scope !292, !noalias !294
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !252, !alias.scope !296
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !252, !alias.scope !292, !noalias !294
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !297

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
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !252
  %i.dw = shl i64 %i.dv, %i.d                     ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ds ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !252
  %i.dy = add i64 %.1108, %i.b
  %i.dz = sub i64 %invariant.op, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !252
  %i.ec = lshr i64 %i.eb, %i.ce
  %i.ed = or disjoint i64 %i.ec, %i.dw
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !252
  %i.ee = add i64 %.1108, 1                       ; 3 uses
  %i.ef = sub nsw i64 %.187, %i.ee                ; 2 uses
  %.not96 = icmp slt i64 %i.ef, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !300

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
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !252
  %i.em = shl i64 %i.el, %i.d
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ei
  store i64 %i.em, ptr %i.en, align 8, !tbaa !252
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
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_6negateES9_vvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !301, !noalias !304, !nonnull !14, !align !307 ; 6 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 16, !tbaa !251
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !tbaa !251
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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #45 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.q = load i8, ptr %i.p, align 2, !tbaa !260, !range !13, !noundef !14
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = shl i64 %i.i, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #40
  %.pre.pre.i.i = load i8, ptr %i.f, align 1, !tbaa !9, !range !13
  %i.t = trunc nuw i8 %.pre.pre.i.i to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  store i8 0, ptr %i.f, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre.i.i = phi i1 [ false, %bb.e ], [ %i.t, %bb.d ]
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !251
  store i64 %.sroa.speculated.i.i.i, ptr %0, align 16, !tbaa !24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !24
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

bb.g:                                             ; preds = %bb.b
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !251
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
  %i.ac = load i64, ptr %i.d, align 16, !tbaa !251
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.ab, i64 %i.ad, i1 false)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit: ; preds = %bb.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i
  %.sink = phi ptr [ %i.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i ], [ %0, %bb.a ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sink, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !259, !range !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = trunc nuw i8 %.pre to i1
  %i.ag = xor i8 %.pre, 1
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !259
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
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !252
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.ae, align 8, !tbaa !259
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE15do_assign_floatIeEEvT_(ptr noundef nonnull align 16 dereferenceable(27) %0, x86_fp80 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i8 1, ptr %i.e, align 8, !tbaa !259
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
  %i.o = load i64, ptr %i.n, align 8, !tbaa !252
  %i.p = icmp eq i64 %i.o, 0
end_hunk_0
begin_hunk_1_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !598 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !587, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !252
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !587, !range !13 ; 3 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !252
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
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #45 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !600, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #40
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !587, !range !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !587
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !598
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !24
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !598
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
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !600, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #40
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !587, !range !13
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !587
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !598
  store i64 1, ptr %0, align 16, !tbaa !24
  store ptr %i.av, ptr %i.as, align 8, !tbaa !24
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !598
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #41
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !252
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.be, align 8, !tbaa !599
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
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !252 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !252
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !252
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !252
  %i.bz = sub nuw nsw i64 64, %i.d
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = or disjoint i64 %i.ca, %i.br
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !252
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
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !252, !alias.scope !703
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !252, !alias.scope !706, !noalias !708
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !252, !alias.scope !710
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !252, !alias.scope !706, !noalias !708
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !711

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
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !252
  %i.dw = shl i64 %i.dv, %i.d                     ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ds ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !252
  %i.dy = add i64 %.1108, %i.b
  %i.dz = sub i64 %invariant.op, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !252
  %i.ec = lshr i64 %i.eb, %i.ce
  %i.ed = or disjoint i64 %i.ec, %i.dw
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !252
  %i.ee = add i64 %.1108, 1                       ; 3 uses
  %i.ef = sub nsw i64 %.187, %i.ee                ; 2 uses
  %.not96 = icmp slt i64 %i.ef, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !712

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
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !252
  %i.em = shl i64 %i.el, %i.d
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ei
  store i64 %i.em, ptr %i.en, align 8, !tbaa !252
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
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_4plusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multiprecision::detail::plus", align 1 ; 3 uses
  %4 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"union.boost::multiprecision::backends::cpp_int_base<512, 18446744073709551615, boost::multiprecision::signed_magnitude, boost::multiprecision::unchecked, std::allocator<unsigned long long>>::data_type", align 16 ; 4 uses
  %7 = alloca %"class.boost::multiprecision::number.192", align 16 ; 14 uses
  %8 = alloca %"struct.boost::multiprecision::detail::expression.206", align 8 ; 5 uses
  %9 = alloca %"struct.boost::multiprecision::detail::shift_left", align 1 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !713, !noalias !715, !nonnull !14, !align !307
  %i.b = icmp eq ptr %i.a, %0                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !680, !noalias !718, !nonnull !14, !align !307 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, label %.thread

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit: ; preds = %bb.a
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i64 0, ptr %7, align 16, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 1, ptr %i.g, align 16, !tbaa !598
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !599
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 73 ; 4 uses
  store i8 1, ptr %i.i, align 1, !tbaa !587
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 74 ; 4 uses
  store i8 0, ptr %i.j, align 2, !tbaa !600
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_4plusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail4plusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit unwind label %bb.c, !inline_history !721

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !587, !range !13, !noundef !14
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
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #40, !inline_history !655
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail4plusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(75) %7, i64 64, i1 false), !tbaa.struct !687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %7, ptr noundef nonnull align 16 dereferenceable(75) %0, i64 64, i1 false), !tbaa.struct !687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !687
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load i8, ptr %i.h, align 8, !tbaa !345, !range !13, !noundef !14
  %i.v = load i8, ptr %i.t, align 8, !tbaa !345, !range !13, !noundef !14
  store i8 %i.v, ptr %i.h, align 8, !tbaa !345
  store i8 %i.u, ptr %i.t, align 8, !tbaa !345
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.x = load i8, ptr %i.i, align 1, !tbaa !345, !range !13, !noundef !14
  %i.y = load i8, ptr %i.w, align 1, !tbaa !345, !range !13, !noundef !14 ; 2 uses
  store i8 %i.y, ptr %i.i, align 1, !tbaa !345
  store i8 %i.x, ptr %i.w, align 1, !tbaa !345
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.g, align 16, !tbaa !25
  %i.ab = load i64, ptr %i.z, align 16, !tbaa !25
  store i64 %i.ab, ptr %i.g, align 16, !tbaa !25
  store i64 %i.aa, ptr %i.z, align 16, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ad = load i8, ptr %i.j, align 2, !tbaa !345, !range !13, !noundef !14
  %i.ae = load i8, ptr %i.ac, align 2, !tbaa !345, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ae, ptr %i.j, align 2, !tbaa !345
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !345
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE6do_addINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit25

.thread:                                          ; preds = %bb.a
  br i1 %i.b, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  store ptr %i.d, ptr %8, align 8, !tbaa !605, !alias.scope !722
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load i32, ptr %i.e, align 8, !tbaa !610, !noalias !722
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !610, !alias.scope !722
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE6do_addINS0_6detail10expressionINSB_10shift_leftES9_ivvEESD_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE6do_addINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit25

.critedge:                                        ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, %.thread
  %i.am = load i32, ptr %i.e, align 8, !tbaa !610, !noalias !725 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr @.str.34, ptr %5, align 8, !tbaa !254
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.35, ptr %i.ao, align 8, !tbaa !256
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1474, ptr %i.ap, align 8, !tbaa !257
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 87, ptr %i.aq, align 4, !tbaa !258
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #43
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEEC2IJRS1B_EEERKSN_RKSO_DpOT_:bb.a
bb.a:
  %4 = alloca %"struct.CGAL::Object::Any_from_variant", align 1 ; 3 uses
  %5 = alloca %"class.CGAL::Object", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = load ptr, ptr %3, align 8, !tbaa !205
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load i8, ptr %i.d, align 16, !tbaa !2201, !range !13, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  br i1 %i.f, label %bb.b, label %_ZN4CGAL6ObjectC2IJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKSt8optionalISt7variantIJDpT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef ptr @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIPN5boost3anyEEEN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS7_7Point_3INS7_16Simple_cartesianINS7_11Interval_ntILb0EEEEEEENS7_9Segment_3ISF_EENS7_10Triangle_3ISF_EESt6vectorISG_SaISG_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(176) %i.c)
  br label %_ZN4CGAL6ObjectC2IJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKSt8optionalISt7variantIJDpT_EEE.exit

_ZN4CGAL6ObjectC2IJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKSt8optionalISt7variantIJDpT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !492
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5boost3anyEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.j = load ptr, ptr %5, align 8, !tbaa !492, !nonnull !14, !noundef !14 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1291 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNK5boost3any4typeEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4CGAL6ObjectC2IJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKSt8optionalISt7variantIJDpT_EEE.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #22, !inline_history !2769 ; 0 uses
  br label %_ZNK5boost3any4typeEv.exit.i.i.i

_ZNK5boost3any4typeEv.exit.i.i.i:                 ; preds = %bb.c, %_ZN4CGAL6ObjectC2IJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKSt8optionalISt7variantIJDpT_EEE.exit
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !1291
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %1, align 4, !tbaa !2763
  %i.s = sext i32 %i.r to i64
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !2214
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !2230
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEE, i64 16), ptr %0, align 16, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, ptr noundef nonnull align 16 dereferenceable(48) %i.u, i64 48, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.x, align 16, !tbaa !2707
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.y, align 8, !tbaa !2235
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !159  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN4CGAL6ObjectD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost3any4typeEv.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.aa, align 8, !tbaa !161
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !163
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #22, !inline_history !561
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #22, !inline_history !561
  br label %_ZN4CGAL6ObjectD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i9 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.ad, %bb.g ], [ %i.an, %bb.h ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.i, label %_ZN4CGAL6ObjectD2Ev.exit, !prof !148

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #22
  br label %_ZN4CGAL6ObjectD2Ev.exit

_ZN4CGAL6ObjectD2Ev.exit:                         ; preds = %_ZNK5boost3any4typeEv.exit.i.i.i, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aq = load i32, ptr %2, align 4, !tbaa !47
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20Ith_for_intersectionIS6_EENSM_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESU_ISV_IJSL_NSW_ISK_EENSY_ISK_EES10_ISL_SaISL_EEEEESS_EEEEE, i64 16), ptr %0, align 16, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load ptr, ptr %3, align 8, !tbaa !205   ; 2 uses
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !205
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i10 = icmp eq i8 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL6ObjectD2Ev.exit
  %i.av = load atomic i32, ptr %i.au monotonic, align 4
  %i.aw = add nsw i32 %i.av, 1
  store atomic i32 %i.aw, ptr %i.au monotonic, align 4
  br label %bb.l

bb.k:                                             ; preds = %_ZN4CGAL6ObjectD2Ev.exit
  %i.ax = atomicrmw add ptr %i.au, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2727 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2730   ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2212
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN4CGAL7Point_3INS2_5EpeckEEEmEET_S7_T0_(ptr noundef %i.b, i64 noundef %1)
  store ptr %i.p, ptr %i.a, align 8, !tbaa !2727
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.138) #43
  unreachable

_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #45 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = invoke noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN4CGAL7Point_3INS2_5EpeckEEEmEET_S7_T0_(ptr noundef nonnull %i.v, i64 noundef %1)
          to label %_ZSt27__uninitialized_default_n_aIPN4CGAL7Point_3INS0_5EpeckEEEmS3_ET_S5_T0_RSaIT1_E.exit unwind label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit ; 0 uses

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.t) #40
  invoke void @__cxa_rethrow() #43
          to label %bb.k unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.aa

_ZSt27__uninitialized_default_n_aIPN4CGAL7Point_3INS0_5EpeckEEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt27__uninitialized_default_n_aIPN4CGAL7Point_3INS0_5EpeckEEEmS3_ET_S5_T0_RSaIT1_E.exit
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ab = lshr i64 %3, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ad = add i64 %i.d, -8
  %i.ae = sub i64 %i.ad, %i.e
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ag
  %scevgep34 = getelementptr i8, ptr %i.c, i64 %i.ag
  %bound0 = icmp ult ptr %i.u, %scevgep34
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.u, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.c, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ak ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.ak ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  %i.al = getelementptr i8, ptr %next.gep35, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep35, align 8, !tbaa !205, !alias.scope !2775, !noalias !2770
  %wide.load36 = load <2 x ptr>, ptr %i.al, align 8, !tbaa !205, !alias.scope !2775, !noalias !2770
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !205, !alias.scope !2778, !noalias !2775
  store <2 x ptr> %wide.load36, ptr %i.am, align 8, !tbaa !205, !alias.scope !2778, !noalias !2775
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !205, !alias.scope !2775, !noalias !2770
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !205, !alias.scope !2775, !noalias !2770
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !2780

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader38

.lr.ph.i.i.i.preheader38:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader38, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader38 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader38 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  %i.ao = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !205, !alias.scope !2773, !noalias !2770
  store ptr %i.ao, ptr %.012.i.i.i, align 8, !tbaa !205, !alias.scope !2770, !noalias !2773
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !205, !alias.scope !2773, !noalias !2770
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !2781

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZSt27__uninitialized_default_n_aIPN4CGAL7Point_3INS0_5EpeckEEEmS3_ET_S5_T0_RSaIT1_E.exit
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit31, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !2212
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #40
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit31

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit31: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.h
  store ptr %i.u, ptr %0, align 8, !tbaa !2730
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.au, ptr %i.a, align 8, !tbaa !2727
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.av, ptr %i.h, align 8, !tbaa !2212
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit31, %bb.a
  ret void

bb.j:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #41
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN4CGAL7Point_3INS2_5EpeckEEEmEET_S7_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not12 = icmp eq i64 %1, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL4LazyINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE4zeroEvE1z)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10_ConstructIN4CGAL7Point_3INS0_5EpeckEEEJEEvPT_DpOT0_.exit
  %.014 = phi ptr [ %0, %.lr.ph ], [ %i.p, %_ZSt10_ConstructIN4CGAL7Point_3INS0_5EpeckEEEJEEvPT_DpOT0_.exit ] ; 3 uses
  %.01013 = phi i64 [ %1, %.lr.ph ], [ %i.o, %_ZSt10_ConstructIN4CGAL7Point_3INS0_5EpeckEEEJEEvPT_DpOT0_.exit ]
  %i.b = load i8, ptr @_ZGVZN4CGAL4LazyINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE4zeroEvE1z, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN4CGAL4LazyINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE4zeroEv.exit.i.i.i, !prof !2782

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #45
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.e, align 4, !tbaa !2230
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr null, ptr %i.f, align 8, !tbaa !2707
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 0, ptr %i.g, align 8, !tbaa !2235
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEE, i64 16), ptr %i.d, align 16, !tbaa !51
  store ptr %i.d, ptr @_ZZN4CGAL4LazyINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE4zeroEvE1z, align 8, !tbaa !205
  %i.h = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4CGAL6HandleD2Ev, ptr nonnull @_ZZN4CGAL4LazyINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE4zeroEvE1z, ptr nonnull @__dso_handle) #22 ; 0 uses
  store i8 1, ptr @_ZGVZN4CGAL4LazyINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE4zeroEvE1z, align 8
  br label %_ZN4CGAL4LazyINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE4zeroEv.exit.i.i.i

_ZN4CGAL4LazyINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE4zeroEv.exit.i.i.i: ; preds = %.noexc, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  store ptr %i.i, ptr %.014, align 8, !tbaa !205
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4CGAL4LazyINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE4zeroEv.exit.i.i.i
  %i.l = load atomic i32, ptr %i.k monotonic, align 4
  %i.m = add nsw i32 %i.l, 1
  store atomic i32 %i.m, ptr %i.k monotonic, align 4
  br label %_ZSt10_ConstructIN4CGAL7Point_3INS0_5EpeckEEEJEEvPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4CGAL4LazyINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE4zeroEv.exit.i.i.i
  %i.n = atomicrmw add ptr %i.k, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN4CGAL7Point_3INS0_5EpeckEEEJEEvPT_DpOT0_.exit

_ZSt10_ConstructIN4CGAL7Point_3INS0_5EpeckEEEJEEvPT_DpOT0_.exit: ; preds = %bb.e, %bb.d
  %i.o = add i64 %.01013, -1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2783

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEEEvT_S5_(ptr noundef %0, ptr noundef %.014)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #43
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4CGAL7Point_3INS0_5EpeckEEEJEEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.p, %_ZSt10_ConstructIN4CGAL7Point_3INS0_5EpeckEEEJEEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.t

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #41
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEE, i64 16), ptr %0, align 16, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_2
begin_hunk_3_@_ZN4CGAL18Box_intersection_d15median_of_threeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEET_SN_SN_SN_T0_i:bb.a

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i31: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread65
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i23

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i23: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i31, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i22, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread65
  %.in.i24 = phi ptr [ %i.ao, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i31 ], [ %i.am, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i22 ], [ %0, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread65 ]
  %.in.i.i9.i25 = phi ptr [ %i.ap, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i31 ], [ %i.an, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i22 ], [ %2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread65 ]
  %i.aq = load double, ptr %.in.i24, align 8, !tbaa !249
  %i.ar = load double, ptr %.in.i.i9.i25, align 8, !tbaa !249
  %i.as = fcmp olt double %i.aq, %i.ar
  br i1 %i.as, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i23
  switch i32 %3, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i30 [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i27
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i26
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i26: ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i27

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i30: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i27

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i27: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i30, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i26, %bb.d
  %.in21.i28 = phi ptr [ %i.av, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i30 ], [ %i.at, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i26 ], [ %0, %bb.d ]
  %.in.i.i13.i29 = phi ptr [ %i.aw, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i30 ], [ %i.au, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i26 ], [ %2, %bb.d ]
  %i.ax = load double, ptr %.in21.i28, align 8, !tbaa !249
  %i.ay = load double, ptr %.in.i.i13.i29, align 8, !tbaa !249
  %i.az = fcmp oeq double %i.ax, %i.ay
  br i1 %i.az, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit32, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit32: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i27
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1465
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1465
  %i.be = icmp ult ptr %i.bb, %i.bd
  %cond.fr = freeze i1 %i.be
  br i1 %cond.fr, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread64: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit
  switch i32 %3, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i42 [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i34
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i33
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i33: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i34

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i42: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i34

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i34: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i42, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i33, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread64
  %.in.i35 = phi ptr [ %i.bh, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i42 ], [ %i.bf, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i33 ], [ %0, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread64 ]
  %.in.i.i9.i36 = phi ptr [ %i.bi, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i42 ], [ %i.bg, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i33 ], [ %2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread64 ]
  %i.bj = load double, ptr %.in.i35, align 8, !tbaa !249
  %i.bk = load double, ptr %.in.i.i9.i36, align 8, !tbaa !249
  %i.bl = fcmp olt double %i.bj, %i.bk
  br i1 %i.bl, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i34
  switch i32 %3, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i41 [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i38
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i37
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i37: ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i38

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i41: ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i38

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i38: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i41, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i37, %bb.e
  %.in21.i39 = phi ptr [ %i.bo, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i41 ], [ %i.bm, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i37 ], [ %0, %bb.e ]
  %.in.i.i13.i40 = phi ptr [ %i.bp, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i41 ], [ %i.bn, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i37 ], [ %2, %bb.e ]
  %i.bq = load double, ptr %.in21.i39, align 8, !tbaa !249
  %i.br = load double, ptr %.in.i.i13.i40, align 8, !tbaa !249
  %i.bs = fcmp oeq double %i.bq, %i.br
  br i1 %i.bs, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43.thread69

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i38
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1465
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1465
  %i.bx = icmp ult ptr %i.bu, %i.bw
  br i1 %i.bx, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43.thread69

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43.thread69: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i38, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43
  switch i32 %3, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i53 [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i45
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i44
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i44: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43.thread69
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i45

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i53: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43.thread69
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i45

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i45: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i53, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i44, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43.thread69
  %.in.i46 = phi ptr [ %i.ca, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i53 ], [ %i.by, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i44 ], [ %1, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43.thread69 ]
  %.in.i.i9.i47 = phi ptr [ %i.cb, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i53 ], [ %i.bz, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i44 ], [ %2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43.thread69 ]
  %i.cc = load double, ptr %.in.i46, align 8, !tbaa !249
  %i.cd = load double, ptr %.in.i.i9.i47, align 8, !tbaa !249
  %i.ce = fcmp olt double %i.cc, %i.cd
  br i1 %i.ce, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i45
  switch i32 %3, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i52 [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i49
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i48
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i48: ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i49

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i52: ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i49

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i49: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i52, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i48, %bb.f
  %.in21.i50 = phi ptr [ %i.ch, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i52 ], [ %i.cf, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i48 ], [ %1, %bb.f ]
  %.in.i.i13.i51 = phi ptr [ %i.ci, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i52 ], [ %i.cg, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i48 ], [ %2, %bb.f ]
  %i.cj = load double, ptr %.in21.i50, align 8, !tbaa !249
  %i.ck = load double, ptr %.in.i.i13.i51, align 8, !tbaa !249
  %i.cl = fcmp oeq double %i.cj, %i.ck
  br i1 %i.cl, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i49
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1465
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1465
  %i.cq = icmp ult ptr %i.cn, %i.cp
  %cond.fr70 = freeze i1 %i.cq
  br i1 %cond.fr70, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54.thread: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit32, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i23, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i45, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21.thread: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i49, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i34, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i27, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i12, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54.thread, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit32, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21
  %.sroa.0.0.in.sroa.speculated = phi ptr [ %0, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit43 ], [ %0, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i34 ], [ %1, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit21 ], [ %0, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i27 ], [ %1, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i49 ], [ %0, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit32 ], [ %1, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i12 ], [ %2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54.thread ], [ %1, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit54 ]
  ret ptr %.sroa.0.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %.not112 = icmp eq ptr %2, %3
  br i1 %.not112, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197  ; 26 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 11 uses
  %4 = sub i64 %i.b, %i.c
  %5 = add i64 %4, -8                             ; 2 uses
  %i.r = lshr i64 %5, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check166 = icmp ult i64 %5, 200
  br i1 %min.iters.check166, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck159

vector.memcheck159:                               ; preds = %bb.d
  %i.t = add i64 %i.b, -8
  %i.u = sub i64 %i.t, %i.c
  %i.v = and i64 %i.u, -8                         ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %scevgep160 = getelementptr i8, ptr %i.w, i64 8
  %i.x = add i64 %i.v, %i.c
  %i.y = add i64 %i.x, 8
  %i.z = sub i64 %i.y, %i.b
  %scevgep161 = getelementptr i8, ptr %i.i, i64 %i.z
  %bound0162 = icmp ult ptr %i.i, %scevgep161
  %bound1163 = icmp ult ptr %i.q, %scevgep160
  %found.conflict164 = and i1 %bound0162, %bound1163
  br i1 %found.conflict164, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %vector.memcheck159
  %n.vec168 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.aa = shl i64 %n.vec168, 3                    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.aa
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph167
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next175, %vector.body169 ] ; 2 uses
  %i.ad = shl i64 %index170, 3                    ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.i, i64 %i.ad ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.q, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep172, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep172, align 8, !tbaa !205, !alias.scope !3595
  %wide.load174 = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !205, !alias.scope !3595
  %i.af = getelementptr i8, ptr %next.gep171, i64 16
  store <2 x ptr> %wide.load173, ptr %next.gep171, align 8, !tbaa !205, !alias.scope !3598, !noalias !3595
  store <2 x ptr> %wide.load174, ptr %i.af, align 8, !tbaa !205, !alias.scope !3598, !noalias !3595
  store <2 x ptr> splat (ptr null), ptr %next.gep172, align 8, !tbaa !205, !alias.scope !3595
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !205, !alias.scope !3595
  %index.next175 = add nuw i64 %index170, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next175, %n.vec168
  br i1 %i.ag, label %middle.block176, label %vector.body169, !llvm.loop !3600

middle.block176:                                  ; preds = %vector.body169
  %cmp.n177 = icmp eq i64 %i.s, %n.vec168
  br i1 %cmp.n177, label %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck159, %bb.d, %middle.block176
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck159 ], [ %i.i, %bb.d ], [ %i.ab, %middle.block176 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck159 ], [ %i.q, %bb.d ], [ %i.ac, %middle.block176 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ah = load ptr, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !205
  store ptr %i.ah, ptr %.013.i.i.i.i.i, align 8, !tbaa !205
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !205
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3601

_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block176
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !197
  %i.al = ptrtoint ptr %i.q to i64
  %i.am = sub i64 %i.al, %i.m                     ; 2 uses
  %i.an = ashr exact i64 %i.am, 3                 ; 8 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i51.preheader, label %_ZSt13move_backwardIPN4CGAL10Triangle_3INS0_5EpeckEEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %min.iters.check187 = icmp ult i64 %i.an, 12
  br i1 %min.iters.check187, label %.lr.ph.i.i.i.i.i51.preheader251, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader
  %i.ap = mul nsw i64 %i.an, -8
  %scevgep181 = getelementptr i8, ptr %i.i, i64 %i.ap
  %i.aq = add i64 %i.am, %i.b
  %i.ar = sub i64 %i.c, %i.aq
  %scevgep182 = getelementptr i8, ptr %i.i, i64 %i.ar
  %bound0183 = icmp ult ptr %scevgep181, %i.q
  %bound1184 = icmp ult ptr %scevgep182, %i.i
  %found.conflict185 = and i1 %bound0183, %bound1184
  br i1 %found.conflict185, label %.lr.ph.i.i.i.i.i51.preheader251, label %vector.ph188

vector.ph188:                                     ; preds = %vector.memcheck180
  %n.vec189 = and i64 %i.an, 9223372036854775804  ; 3 uses
  %i.as = and i64 %i.an, 3
  %i.at = mul i64 %n.vec189, -8                   ; 2 uses
  %i.au = getelementptr i8, ptr %i.i, i64 %i.at
  %i.av = getelementptr i8, ptr %i.q, i64 %i.at
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next198, %vector.body190 ] ; 2 uses
  %i.aw = mul i64 %index191, -8                   ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.i, i64 %i.aw ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.q, i64 %i.aw ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %next.gep192, i64 -16 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %next.gep192, i64 -32 ; 2 uses
  %wide.load194 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !2710, !alias.scope !3602, !noalias !3605
  %wide.load195 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !2710, !alias.scope !3602, !noalias !3605
  %i.az = getelementptr inbounds i8, ptr %next.gep193, i64 -16 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %next.gep193, i64 -32 ; 2 uses
  %wide.load196 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !2710, !alias.scope !3605
  %wide.load197 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !2710, !alias.scope !3605
  store <2 x ptr> %wide.load196, ptr %i.ax, align 8, !tbaa !2710, !alias.scope !3602, !noalias !3605
  store <2 x ptr> %wide.load197, ptr %i.ay, align 8, !tbaa !2710, !alias.scope !3602, !noalias !3605
  store <2 x ptr> %wide.load194, ptr %i.az, align 8, !tbaa !2710, !alias.scope !3605
  store <2 x ptr> %wide.load195, ptr %i.ba, align 8, !tbaa !2710, !alias.scope !3605
  %index.next198 = add nuw i64 %index191, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.bb, label %middle.block199, label %vector.body190, !llvm.loop !3607

middle.block199:                                  ; preds = %vector.body190
  %cmp.n200 = icmp eq i64 %i.an, %n.vec189
  br i1 %cmp.n200, label %_ZSt13move_backwardIPN4CGAL10Triangle_3INS0_5EpeckEEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i51.preheader251

.lr.ph.i.i.i.i.i51.preheader251:                  ; preds = %vector.memcheck180, %.lr.ph.i.i.i.i.i51.preheader, %middle.block199
  %.010.i.i.i.i.i.ph = phi i64 [ %i.an, %vector.memcheck180 ], [ %i.an, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.as, %middle.block199 ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck180 ], [ %i.i, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.au, %middle.block199 ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck180 ], [ %i.q, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.av, %middle.block199 ]
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader251, %.lr.ph.i.i.i.i.i51
  %.010.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i51 ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader251 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i51 ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader251 ]
  %.078.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i51 ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader251 ]
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2710
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !2710
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !2710
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !2710
  %i.bg = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bh = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN4CGAL10Triangle_3INS0_5EpeckEEES4_ET0_T_S6_S5_.exit, !llvm.loop !3608

_ZSt13move_backwardIPN4CGAL10Triangle_3INS0_5EpeckEEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i51, %middle.block199, %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.bi = icmp sgt i64 %i.e, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPN4CGAL10Triangle_3INS0_5EpeckEEES4_ET0_T_S6_S5_.exit, %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cl, %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i ], [ %i.e, %_ZSt13move_backwardIPN4CGAL10Triangle_3INS0_5EpeckEEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ck, %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i ], [ %1, %_ZSt13move_backwardIPN4CGAL10Triangle_3INS0_5EpeckEEES4_ET0_T_S6_S5_.exit ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cj, %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i ], [ %2, %_ZSt13move_backwardIPN4CGAL10Triangle_3INS0_5EpeckEEES4_ET0_T_S6_S5_.exit ] ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  %i.bk = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !205
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i.i52
  %i.bm = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4 ; 0 uses
  %i.bn = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !205 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i, label %bb.g

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i52
  %i.bo = load atomic i32, ptr %i.bl monotonic, align 4
  %i.bp = add nsw i32 %i.bo, 1
  store atomic i32 %i.bp, ptr %i.bl monotonic, align 4
  %i.bq = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !205 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load atomic i32, ptr %i.br monotonic, align 4 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !51
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(12) %i.bq) #22, !inline_history !3609
  br label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

bb.f:                                             ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.bx = add nsw i32 %i.bs, -1
  store atomic i32 %i.bx, ptr %i.br monotonic, align 4
  br label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bz = load atomic i32, ptr %i.by monotonic, align 4
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = atomicrmw sub ptr %i.by, i32 1 release, align 4
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.i, label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %bb.g
  fence acquire
  %i.cd = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !205 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(12) %i.cd) #22, !inline_history !3609
  br label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i
  %i.ci = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !205
  store ptr %i.ci, ptr %.0811.i.i.i.i.i, align 8, !tbaa !205
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.cl = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cm = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !3610

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.cn = getelementptr inbounds i8, ptr %2, i64 %i.n ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.cn, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.cv, %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.cu, %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.cn, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.co = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !205 ; 2 uses
  store ptr %i.co, ptr %.09.i.i.i.i, align 8, !tbaa !205
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i53 = icmp eq i8 %i.cp, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cr = load atomic i32, ptr %i.cq monotonic, align 4
  %i.cs = add nsw i32 %i.cr, 1
  store atomic i32 %i.cs, ptr %i.cq monotonic, align 4
  br label %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ct = atomicrmw add ptr %i.cq, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cu, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !3611

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit: ; preds = %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !197
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cw = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit ], [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.cx = sub nsw i64 %i.e, %i.o
  %i.cy = getelementptr [8 x i8], ptr %i.cw, i64 %i.cx ; 5 uses
  %.not11.i.i.i.i.i54 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i54, label %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, label %.lr.ph.i.i.i.i.i55.preheader

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %6 = sub i64 %i.k, %i.m
  %7 = add i64 %6, -8                             ; 2 uses
  %i.cz = lshr i64 %7, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 200
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i55.preheader253, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i55.preheader
  %i.db = add i64 %i.k, -8
  %i.dc = sub i64 %i.db, %i.m
  %i.dd = and i64 %i.dc, -8                       ; 2 uses
  %i.de = add i64 %i.d, %i.dd
  %i.df = add i64 %i.de, 8
  %i.dg = sub i64 %i.df, %i.n
  %scevgep = getelementptr i8, ptr %i.cw, i64 %i.dg
  %i.dh = getelementptr i8, ptr %1, i64 %i.dd
  %scevgep155 = getelementptr i8, ptr %i.dh, i64 8
  %bound0 = icmp ult ptr %i.cy, %scevgep155
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i55.preheader253, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 4611686018427387900     ; 3 uses
  %i.di = shl i64 %n.vec, 3                       ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cy, i64 %i.di
  %i.dk = getelementptr i8, ptr %1, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cy, i64 %i.dl ; 2 uses
  %next.gep156 = getelementptr i8, ptr %1, i64 %i.dl ; 3 uses
  %i.dm = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep156, align 8, !tbaa !205, !alias.scope !3612
  %wide.load157 = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !205, !alias.scope !3612
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !205, !alias.scope !3615, !noalias !3612
  store <2 x ptr> %wide.load157, ptr %i.dn, align 8, !tbaa !205, !alias.scope !3615, !noalias !3612
  store <2 x ptr> splat (ptr null), ptr %next.gep156, align 8, !tbaa !205, !alias.scope !3612
  store <2 x ptr> splat (ptr null), ptr %i.dm, align 8, !tbaa !205, !alias.scope !3612
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !3617

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, label %.lr.ph.i.i.i.i.i55.preheader253

.lr.ph.i.i.i.i.i55.preheader253:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i55.preheader, %middle.block
  %.013.i.i.i.i.i56.ph = phi ptr [ %i.cy, %vector.memcheck ], [ %i.cy, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.dj, %middle.block ]
  %.sroa.08.012.i.i.i.i.i57.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.preheader253, %.lr.ph.i.i.i.i.i55
  %.013.i.i.i.i.i56 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i55 ], [ %.013.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i55.preheader253 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i57 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i55 ], [ %.sroa.08.012.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i55.preheader253 ] ; 3 uses
  %i.dp = load ptr, ptr %.sroa.08.012.i.i.i.i.i57, align 8, !tbaa !205
  store ptr %i.dp, ptr %.013.i.i.i.i.i56, align 8, !tbaa !205
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i57, align 8, !tbaa !205
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i57, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i56, i64 8
  %.not.i.i.i.i.i58 = icmp eq ptr %i.dq, %i.i
  br i1 %.not.i.i.i.i.i58, label %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, label %.lr.ph.i.i.i.i.i55, !llvm.loop !3618

_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60: ; preds = %.lr.ph.i.i.i.i.i55, %middle.block, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.d
  store ptr %i.ds, ptr %i.h, align 8, !tbaa !197
  %i.dt = ashr exact i64 %i.n, 3                  ; 2 uses
  %i.du = icmp sgt i64 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i.i.i.i.i62, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i62:                               ; preds = %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70
  %.012.i.i.i.i.i63 = phi i64 [ %i.ex, %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70 ], [ %i.dt, %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60 ] ; 2 uses
  %.0811.i.i.i.i.i64 = phi ptr [ %i.ew, %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70 ], [ %1, %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60 ] ; 5 uses
  %.0910.i.i.i.i.i65 = phi ptr [ %i.ev, %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70 ], [ %2, %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60 ] ; 3 uses
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i66 = icmp eq i8 %i.dv, 0
  %i.dw = load ptr, ptr %.0910.i.i.i.i.i65, align 8, !tbaa !205
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i66, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i71, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i67

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i71: ; preds = %.lr.ph.i.i.i.i.i62
  %i.dy = atomicrmw add ptr %i.dx, i32 1 monotonic, align 4 ; 0 uses
  %i.dz = load ptr, ptr %.0811.i.i.i.i.i64, align 8, !tbaa !205 ; 2 uses
  %.not.i.i.i.i.i.i.i.i72 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i.i72, label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70, label %bb.o

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i67: ; preds = %.lr.ph.i.i.i.i.i62
  %i.ea = load atomic i32, ptr %i.dx monotonic, align 4
  %i.eb = add nsw i32 %i.ea, 1
  store atomic i32 %i.eb, ptr %i.dx monotonic, align 4
  %i.ec = load ptr, ptr %.0811.i.i.i.i.i64, align 8, !tbaa !205 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.ec, null
  br i1 %.not4.i.i.i.i.i.i.i.i68, label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70, label %.thread.i.i.i.i.i.i.i.i69

.thread.i.i.i.i.i.i.i.i69:                        ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i67
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ee = load atomic i32, ptr %i.ed monotonic, align 4 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 1
  br i1 %i.ef, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread.i.i.i.i.i.i.i.i69
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !51
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  tail call void %i.ei(ptr noundef nonnull align 8 dereferenceable(12) %i.ec) #22, !inline_history !3609
  br label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70

bb.n:                                             ; preds = %.thread.i.i.i.i.i.i.i.i69
  %i.ej = add nsw i32 %i.ee, -1
  store atomic i32 %i.ej, ptr %i.ed monotonic, align 4
  br label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70

bb.o:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i71
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.el = load atomic i32, ptr %i.ek monotonic, align 4
  %i.em = icmp eq i32 %i.el, 1
  br i1 %i.em, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.en = atomicrmw sub ptr %i.ek, i32 1 release, align 4
  %i.eo = icmp eq i32 %i.en, 1
  br i1 %i.eo, label %bb.q, label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70

bb.q:                                             ; preds = %bb.p, %bb.o
  fence acquire
  %i.ep = load ptr, ptr %.0811.i.i.i.i.i64, align 8, !tbaa !205 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(12) %i.ep) #22, !inline_history !3609
  br label %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70

_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70: ; preds = %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i67, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i71
  %i.eu = load ptr, ptr %.0910.i.i.i.i.i65, align 8, !tbaa !205
  store ptr %i.eu, ptr %.0811.i.i.i.i.i64, align 8, !tbaa !205
  %i.ev = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i65, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i64, i64 8
  %i.ex = add nsw i64 %.012.i.i.i.i.i63, -1
  %i.ey = icmp sgt i64 %.012.i.i.i.i.i63, 1
  br i1 %i.ey, label %.lr.ph.i.i.i.i.i62, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !3610

bb.s:                                             ; preds = %bb.b
  %i.ez = load ptr, ptr %0, align 8, !tbaa !200   ; 12 uses
  %i.fa = ptrtoint ptr %i.ez to i64               ; 4 uses
  %i.fb = sub i64 %i.k, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3                 ; 4 uses
  %i.fd = sub nsw i64 1152921504606846975, %i.fc
  %i.fe = icmp ult i64 %i.fd, %i.e
  br i1 %i.fe, label %bb.t, label %_ZNKSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #43
  unreachable

_ZNKSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.s
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 %i.e)
  %i.ff = add nsw i64 %.sroa.speculated.i, %i.fc  ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fc
  %i.fh = tail call i64 @llvm.umin.i64(i64 %i.ff, i64 1152921504606846975)
  %i.fi = select i1 %i.fg, i64 1152921504606846975, i64 %i.fh ; 3 uses
  %.not.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit, label %bb.u

bb.u:                                             ; preds = %_ZNKSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.fj = shl nuw nsw i64 %i.fi, 3
  %i.fk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #45
  br label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.u
  %i.fl = phi ptr [ %i.fk, %bb.u ], [ null, %_ZNKSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %.not11.i.i.i.i.i74 = icmp eq ptr %i.ez, %1
  br i1 %.not11.i.i.i.i.i74, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i75.preheader

.lr.ph.i.i.i.i.i75.preheader:                     ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit
  %8 = sub i64 %i.a, %i.fa
  %9 = add i64 %8, -8                             ; 2 uses
  %i.fm = lshr i64 %9, 3
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check211 = icmp ult i64 %9, 136
  br i1 %min.iters.check211, label %.lr.ph.i.i.i.i.i75.preheader249, label %vector.memcheck204

vector.memcheck204:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader
  %i.fo = add i64 %i.a, -8
  %i.fp = sub i64 %i.fo, %i.fa
  %i.fq = and i64 %i.fp, -8
  %i.fr = add i64 %i.fq, 8                        ; 2 uses
  %scevgep205 = getelementptr i8, ptr %i.fl, i64 %i.fr
  %scevgep206 = getelementptr i8, ptr %i.ez, i64 %i.fr
  %bound0207 = icmp ult ptr %i.fl, %scevgep206
  %bound1208 = icmp ult ptr %i.ez, %scevgep205
  %found.conflict209 = and i1 %bound0207, %bound1208
  br i1 %found.conflict209, label %.lr.ph.i.i.i.i.i75.preheader249, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck204
  %n.vec213 = and i64 %i.fn, 4611686018427387900  ; 3 uses
  %i.fs = shl i64 %n.vec213, 3                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fl, i64 %i.fs  ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ez, i64 %i.fs
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.fv = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %i.fl, i64 %i.fv ; 2 uses
  %next.gep217 = getelementptr i8, ptr %i.ez, i64 %i.fv ; 3 uses
  %i.fw = getelementptr i8, ptr %next.gep217, i64 16 ; 2 uses
  %wide.load218 = load <2 x ptr>, ptr %next.gep217, align 8, !tbaa !205, !alias.scope !3619
  %wide.load219 = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !205, !alias.scope !3619
  %i.fx = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x ptr> %wide.load218, ptr %next.gep216, align 8, !tbaa !205, !alias.scope !3622, !noalias !3619
  store <2 x ptr> %wide.load219, ptr %i.fx, align 8, !tbaa !205, !alias.scope !3622, !noalias !3619
  store <2 x ptr> splat (ptr null), ptr %next.gep217, align 8, !tbaa !205, !alias.scope !3619
  store <2 x ptr> splat (ptr null), ptr %i.fw, align 8, !tbaa !205, !alias.scope !3619
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.fy, label %middle.block221, label %vector.body214, !llvm.loop !3624

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.fn, %n.vec213
  br i1 %cmp.n222, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i75.preheader249

.lr.ph.i.i.i.i.i75.preheader249:                  ; preds = %vector.memcheck204, %.lr.ph.i.i.i.i.i75.preheader, %middle.block221
  %.013.i.i.i.i.i76.ph = phi ptr [ %i.fl, %vector.memcheck204 ], [ %i.fl, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.ft, %middle.block221 ]
  %.sroa.08.012.i.i.i.i.i77.ph = phi ptr [ %i.ez, %vector.memcheck204 ], [ %i.ez, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.fu, %middle.block221 ]
  br label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader249, %.lr.ph.i.i.i.i.i75
  %.013.i.i.i.i.i76 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i75 ], [ %.013.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i75.preheader249 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i77 = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i75 ], [ %.sroa.08.012.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i75.preheader249 ] ; 3 uses
  %i.fz = load ptr, ptr %.sroa.08.012.i.i.i.i.i77, align 8, !tbaa !205
  store ptr %i.fz, ptr %.013.i.i.i.i.i76, align 8, !tbaa !205
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i77, align 8, !tbaa !205
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i77, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i76, i64 8 ; 2 uses
  %.not.i.i.i.i.i78 = icmp eq ptr %i.ga, %1
  br i1 %.not.i.i.i.i.i78, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i75, !llvm.loop !3625

_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i75, %middle.block221, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i79 = phi ptr [ %i.fl, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit ], [ %i.ft, %middle.block221 ], [ %i.gb, %.lr.ph.i.i.i.i.i75 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i79226 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i79 to i64
  br label %.lr.ph.i.i.i.i81

.lr.ph.i.i.i.i81:                                 ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85
  %.09.i.i.i.i82 = phi ptr [ %i.gj, %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85 ], [ %.0.lcssa.i.i.i.i.i79, %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i83 = phi ptr [ %i.gi, %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %i.gc = load ptr, ptr %.sroa.04.08.i.i.i.i83, align 8, !tbaa !205 ; 2 uses
  store ptr %i.gc, ptr %.09.i.i.i.i82, align 8, !tbaa !205
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i84 = icmp eq i8 %i.gd, 0
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i84, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i81
  %i.gf = load atomic i32, ptr %i.ge monotonic, align 4
  %i.gg = add nsw i32 %i.gf, 1
  store atomic i32 %i.gg, ptr %i.ge monotonic, align 4
  br label %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85

bb.w:                                             ; preds = %.lr.ph.i.i.i.i81
  %i.gh = atomicrmw add ptr %i.ge, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85

_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85: ; preds = %bb.w, %bb.v
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i83, i64 8 ; 2 uses
  %i.gj = getelementptr i8, ptr %.09.i.i.i.i82, i64 8 ; 8 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.gi, %3
  br i1 %.not.i.i.i.i86, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit88, label %.lr.ph.i.i.i.i81, !llvm.loop !3611

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit88: ; preds = %_ZSt10_ConstructIN4CGAL10Triangle_3INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85
  %.not11.i.i.i.i.i89 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95, label %.lr.ph.i.i.i.i.i90.preheader

.lr.ph.i.i.i.i.i90.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit88
  %10 = sub i64 %i.k, %i.a
  %11 = add i64 %10, -8                           ; 2 uses
  %i.gk = lshr i64 %11, 3
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check233 = icmp ult i64 %11, 216
  br i1 %min.iters.check233, label %.lr.ph.i.i.i.i.i90.preheader247, label %vector.memcheck225

vector.memcheck225:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader
  %i.gm = add i64 %i.k, -8
  %i.gn = sub i64 %i.gm, %i.a
  %i.go = and i64 %i.gn, -8                       ; 2 uses
  %i.gp = ptrtoaddr ptr %i.gj to i64
  %reass.sub = sub i64 %i.gp, %.0.lcssa.i.i.i.i.i79226
  %i.gq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i79, i64 %reass.sub
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.go
  %scevgep227 = getelementptr i8, ptr %i.gr, i64 8
  %i.gs = getelementptr i8, ptr %1, i64 %i.go
  %scevgep228 = getelementptr i8, ptr %i.gs, i64 8
  %bound0229 = icmp ult ptr %i.gj, %scevgep228
  %bound1230 = icmp ult ptr %1, %scevgep227
  %found.conflict231 = and i1 %bound0229, %bound1230
  br i1 %found.conflict231, label %.lr.ph.i.i.i.i.i90.preheader247, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck225
  %n.vec235 = and i64 %i.gl, 4611686018427387900  ; 3 uses
  %i.gt = shl i64 %n.vec235, 3                    ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gj, i64 %i.gt  ; 2 uses
  %i.gv = getelementptr i8, ptr %1, i64 %i.gt
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next242, %vector.body236 ] ; 2 uses
  %i.gw = shl i64 %index237, 3                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.gj, i64 %i.gw ; 2 uses
  %next.gep239 = getelementptr i8, ptr %1, i64 %i.gw ; 3 uses
  %i.gx = getelementptr i8, ptr %next.gep239, i64 16 ; 2 uses
  %wide.load240 = load <2 x ptr>, ptr %next.gep239, align 8, !tbaa !205, !alias.scope !3626
  %wide.load241 = load <2 x ptr>, ptr %i.gx, align 8, !tbaa !205, !alias.scope !3626
  %i.gy = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x ptr> %wide.load240, ptr %next.gep238, align 8, !tbaa !205, !alias.scope !3629, !noalias !3626
  store <2 x ptr> %wide.load241, ptr %i.gy, align 8, !tbaa !205, !alias.scope !3629, !noalias !3626
  store <2 x ptr> splat (ptr null), ptr %next.gep239, align 8, !tbaa !205, !alias.scope !3626
  store <2 x ptr> splat (ptr null), ptr %i.gx, align 8, !tbaa !205, !alias.scope !3626
  %index.next242 = add nuw i64 %index237, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next242, %n.vec235
  br i1 %i.gz, label %middle.block243, label %vector.body236, !llvm.loop !3631

middle.block243:                                  ; preds = %vector.body236
  %cmp.n244 = icmp eq i64 %i.gl, %n.vec235
  br i1 %cmp.n244, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95, label %.lr.ph.i.i.i.i.i90.preheader247

.lr.ph.i.i.i.i.i90.preheader247:                  ; preds = %vector.memcheck225, %.lr.ph.i.i.i.i.i90.preheader, %middle.block243
  %.013.i.i.i.i.i91.ph = phi ptr [ %i.gj, %vector.memcheck225 ], [ %i.gj, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.gu, %middle.block243 ]
  %.sroa.08.012.i.i.i.i.i92.ph = phi ptr [ %1, %vector.memcheck225 ], [ %1, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.gv, %middle.block243 ]
  br label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader247, %.lr.ph.i.i.i.i.i90
  %.013.i.i.i.i.i91 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i90 ], [ %.013.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i90.preheader247 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i92 = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i90 ], [ %.sroa.08.012.i.i.i.i.i92.ph, %.lr.ph.i.i.i.i.i90.preheader247 ] ; 3 uses
  %i.ha = load ptr, ptr %.sroa.08.012.i.i.i.i.i92, align 8, !tbaa !205
  store ptr %i.ha, ptr %.013.i.i.i.i.i91, align 8, !tbaa !205
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i92, align 8, !tbaa !205
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i92, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i91, i64 8 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.hb, %i.i
  br i1 %.not.i.i.i.i.i93, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95, label %.lr.ph.i.i.i.i.i90, !llvm.loop !3632

_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95: ; preds = %.lr.ph.i.i.i.i.i90, %middle.block243, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit88
  %.0.lcssa.i.i.i.i.i94 = phi ptr [ %i.gj, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit88 ], [ %i.gu, %middle.block243 ], [ %i.hc, %.lr.ph.i.i.i.i.i90 ]
  %.not4.i.i = icmp eq ptr %i.ez, %i.i
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ht, %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i ], [ %i.ez, %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95 ] ; 3 uses
  %i.hd = load ptr, ptr %.05.i.i, align 8, !tbaa !205 ; 4 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i96, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.he = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq i8 %i.he, 0
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 3 uses
  %i.hg = load atomic i32, ptr %i.hf monotonic, align 4 ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.hh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hi = load ptr, ptr %i.hd, align 8, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  tail call void %i.hk(ptr noundef nonnull align 8 dereferenceable(12) %i.hd) #22, !inline_history !1440
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.hl = add nsw i32 %i.hg, -1
  store atomic i32 %i.hl, ptr %i.hf monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.ab:                                            ; preds = %bb.x
  br i1 %i.hh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hm = atomicrmw sub ptr %i.hf, i32 1 release, align 4
  %i.hn = icmp eq i32 %i.hm, 1
  br i1 %i.hn, label %bb.ad, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  fence acquire
  %i.ho = load ptr, ptr %.05.i.i, align 8, !tbaa !205 ; 3 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !51
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  tail call void %i.hs(ptr noundef nonnull align 8 dereferenceable(12) %i.ho) #22, !inline_history !1440
  br label %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i

_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %.lr.ph.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ht, %i.i
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !209

_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN4CGAL10Triangle_3INS0_5EpeckEEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95
  %.not.i97 = icmp eq ptr %i.ez, null
  br i1 %.not.i97, label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEEEvT_S5_.exit
  %i.hu = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub i64 %i.hv, %i.fa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.hw) #40
  br label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN4CGAL10Triangle_3INS0_5EpeckEEEEvT_S5_.exit, %bb.af
  store ptr %i.fl, ptr %0, align 8, !tbaa !200
  store ptr %.0.lcssa.i.i.i.i.i94, ptr %i.h, align 8, !tbaa !197
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fi
  store ptr %i.hx, ptr %i.f, align 8, !tbaa !201
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70, %_ZN4CGAL10Triangle_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPN4CGAL10Triangle_3INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, %_ZSt13move_backwardIPN4CGAL10Triangle_3INS0_5EpeckEEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN5Eigen16CommaInitializerINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEEcmISI_EERSJ_RKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !226  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3633, !nonnull !14, !align !542 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !221  ; 3 uses
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %._crit_edge14

._crit_edge14:                                    ; preds = %bb.a
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre16 = load i64, ptr %.phi.trans.insert15, align 8, !tbaa !214
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre18 = load i64, ptr %.phi.trans.insert17, align 8, !tbaa !221
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !221  ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !227
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre13 = load i64, ptr %.phi.trans.insert12, align 8, !tbaa !214
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !214  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !227  ; 2 uses
  %.not8 = icmp eq i64 %i.j, %i.l
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.m = phi i64 [ %.pre13, %._crit_edge ], [ %i.j, %bb.c ] ; 2 uses
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ %i.l, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !224
  %i.r = add nsw i64 %i.q, %i.n
  store i64 %i.r, ptr %i.p, align 8, !tbaa !224
  store i64 0, ptr %i.a, align 8, !tbaa !226
  store i64 %i.m, ptr %i.o, align 8, !tbaa !227
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge14, %bb.d, %bb.c
  %i.s = phi i64 [ %i.h, %bb.d ], [ 0, %bb.c ], [ %.pre18, %._crit_edge14 ] ; 3 uses
end_hunk_3
