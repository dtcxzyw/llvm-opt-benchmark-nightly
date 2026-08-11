inline.NumInlined: 12987
inline.NumDeleted: 3810
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !615 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !616
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
  %i.u = load i64, ptr %i.t, align 8, !tbaa !616
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
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #39 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !625, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #37
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !615
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !57
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !57
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !615
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
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !625, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #37
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !615
  store i64 1, ptr %0, align 16, !tbaa !57
  store ptr %i.av, ptr %i.as, align 8, !tbaa !57
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !615
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #42
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !616
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.be, align 8, !tbaa !624
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
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !616 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !616
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !616
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !616
  %i.bz = sub nuw nsw i64 64, %i.d
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = or disjoint i64 %i.ca, %i.br
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !616
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
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !616, !alias.scope !654
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !616, !alias.scope !657, !noalias !659
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !616, !alias.scope !661
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !616, !alias.scope !657, !noalias !659
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !662

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
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !616
  %i.dw = shl i64 %i.dv, %i.d                     ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ds ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !616
  %i.dy = add i64 %.1108, %i.b
  %i.dz = sub i64 %invariant.op, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !616
  %i.ec = lshr i64 %i.eb, %i.ce
  %i.ed = or disjoint i64 %i.ec, %i.dw
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !616
  %i.ee = add i64 %.1108, 1                       ; 3 uses
  %i.ef = sub nsw i64 %.187, %i.ee                ; 2 uses
  %.not96 = icmp slt i64 %i.ef, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !665

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
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !616
  %i.em = shl i64 %i.el, %i.d
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ei
  store i64 %i.em, ptr %i.en, align 8, !tbaa !616
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !666, !noalias !669, !nonnull !14, !align !22 ; 6 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 16, !tbaa !615
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !tbaa !615
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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #39 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.q = load i8, ptr %i.p, align 2, !tbaa !625, !range !13, !noundef !14
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = shl i64 %i.i, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #37
  %.pre.pre.i.i = load i8, ptr %i.f, align 1, !tbaa !9, !range !13
  %i.t = trunc nuw i8 %.pre.pre.i.i to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  store i8 0, ptr %i.f, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre.i.i = phi i1 [ false, %bb.e ], [ %i.t, %bb.d ]
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !615
  store i64 %.sroa.speculated.i.i.i, ptr %0, align 16, !tbaa !57
  store ptr %i.m, ptr %i.n, align 8, !tbaa !57
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

bb.g:                                             ; preds = %bb.b
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !615
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
  %i.ac = load i64, ptr %i.d, align 16, !tbaa !615
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.ab, i64 %i.ad, i1 false)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit: ; preds = %bb.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i
  %.sink = phi ptr [ %i.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i ], [ %0, %bb.a ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sink, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !624, !range !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = trunc nuw i8 %.pre to i1
  %i.ag = xor i8 %.pre, 1
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !624
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
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !616
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.ae, align 8, !tbaa !624
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
  store i8 1, ptr %i.e, align 8, !tbaa !624
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
  %i.o = load i64, ptr %i.n, align 8, !tbaa !616
  %i.p = icmp eq i64 %i.o, 0
end_hunk_0
begin_hunk_1_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !823 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !826, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !616
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !826, !range !13 ; 3 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !616
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
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !827, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #37
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !826, !range !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !826
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !823
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !57
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !57
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !823
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
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !827, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #37
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !826, !range !13
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !826
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !823
  store i64 1, ptr %0, align 16, !tbaa !57
  store ptr %i.av, ptr %i.as, align 8, !tbaa !57
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !823
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #42
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !616
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.be, align 8, !tbaa !825
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
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !616 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !616
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !616
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !616
  %i.bz = sub nuw nsw i64 64, %i.d
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = or disjoint i64 %i.ca, %i.br
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !616
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
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !616, !alias.scope !850
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !616, !alias.scope !853, !noalias !855
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !616, !alias.scope !857
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !616, !alias.scope !853, !noalias !855
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !858

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
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !616
  %i.dw = shl i64 %i.dv, %i.d                     ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ds ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !616
  %i.dy = add i64 %.1108, %i.b
  %i.dz = sub i64 %invariant.op, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !616
  %i.ec = lshr i64 %i.eb, %i.ce
  %i.ed = or disjoint i64 %i.ec, %i.dw
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !616
  %i.ee = add i64 %.1108, 1                       ; 3 uses
  %i.ef = sub nsw i64 %.187, %i.ee                ; 2 uses
  %.not96 = icmp slt i64 %i.ef, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !859

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
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !616
  %i.em = shl i64 %i.el, %i.d
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ei
  store i64 %i.em, ptr %i.en, align 8, !tbaa !616
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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors11Collinear_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates11Collinear_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_3ISP_EES18_S18_EEbRKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::pair.233", align 8    ; 7 uses
  %5 = alloca %"struct.std::pair.233", align 8    ; 7 uses
  %6 = alloca %"struct.std::pair.233", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = load ptr, ptr %1, align 8, !tbaa !51     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !57, !noalias !860
  %i.e = load <2 x double>, ptr %i.b, align 16, !tbaa !57, !noalias !860
  %i.f = extractelement <2 x double> %i.e, i64 0
  %i.g = fneg double %i.f                         ; 2 uses
  %i.h = fcmp oeq double %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load double, ptr %i.j, align 8, !tbaa !57, !noalias !860
  %i.l = load <2 x double>, ptr %i.i, align 16, !tbaa !57, !noalias !860
  %i.m = extractelement <2 x double> %i.l, i64 0
  %i.n = fneg double %i.m                         ; 2 uses
  %i.o = fcmp oeq double %i.k, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.r = load double, ptr %i.q, align 8, !tbaa !57, !noalias !860
  %i.s = load <2 x double>, ptr %i.p, align 16, !tbaa !57, !noalias !860
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = fneg double %i.t                         ; 2 uses
  %i.v = fcmp oeq double %i.r, %i.u
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.w = tail call noundef zeroext i1 @_ZNK4CGAL18Filtered_predicateINS_23CartesianKernelFunctors11Collinear_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_3ISO_EESV_SV_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  store double %i.g, ptr %4, align 8, !alias.scope !860
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !860
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.u, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !860
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 1, ptr %i.x, align 8, !tbaa !195, !alias.scope !863
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.y = load ptr, ptr %2, align 8, !tbaa !51     ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !57, !noalias !866
  %i.ac = load <2 x double>, ptr %i.z, align 16, !tbaa !57, !noalias !866
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = fneg double %i.ad                       ; 2 uses
  %i.af = fcmp oeq double %i.ab, %i.ae
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !57, !noalias !866
  %i.aj = load <2 x double>, ptr %i.ag, align 16, !tbaa !57, !noalias !866
  %i.ak = extractelement <2 x double> %i.aj, i64 0
  %i.al = fneg double %i.ak                       ; 2 uses
  %i.am = fcmp oeq double %i.ai, %i.al
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !57, !noalias !866
  %i.aq = load <2 x double>, ptr %i.an, align 16, !tbaa !57, !noalias !866
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = fneg double %i.ar                       ; 2 uses
  %i.at = fcmp oeq double %i.ap, %i.as
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.au = tail call noundef zeroext i1 @_ZNK4CGAL18Filtered_predicateINS_23CartesianKernelFunctors11Collinear_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_3ISO_EESV_SV_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  store double %i.ae, ptr %5, align 8, !alias.scope !866
  %.sroa.4.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.al, ptr %.sroa.4.0..sroa_idx.i15, align 8, !alias.scope !866
  %.sroa.5.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.as, ptr %.sroa.5.0..sroa_idx.i16, align 8, !alias.scope !866
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.av, align 8, !tbaa !195, !alias.scope !869
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.aw = load ptr, ptr %3, align 8, !tbaa !51    ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.az = load double, ptr %i.ay, align 8, !tbaa !57, !noalias !872
  %i.ba = load <2 x double>, ptr %i.ax, align 16, !tbaa !57, !noalias !872
  %i.bb = extractelement <2 x double> %i.ba, i64 0
  %i.bc = fneg double %i.bb                       ; 2 uses
  %i.bd = fcmp oeq double %i.az, %i.bc
  br i1 %i.bd, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !57, !noalias !872
  %i.bh = load <2 x double>, ptr %i.be, align 16, !tbaa !57, !noalias !872
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  %i.bj = fneg double %i.bi                       ; 2 uses
  %i.bk = fcmp oeq double %i.bg, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !57, !noalias !872
  %i.bo = load <2 x double>, ptr %i.bl, align 16, !tbaa !57, !noalias !872
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  %i.bq = fneg double %i.bp                       ; 2 uses
  %i.br = fcmp oeq double %i.bn, %i.bq
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bs = tail call noundef zeroext i1 @_ZNK4CGAL18Filtered_predicateINS_23CartesianKernelFunctors11Collinear_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_3ISO_EESV_SV_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store double %i.bc, ptr %6, align 8, !alias.scope !872
  %.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.bj, ptr %.sroa.4.0..sroa_idx.i19, align 8, !alias.scope !872
  %.sroa.5.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.bq, ptr %.sroa.5.0..sroa_idx.i20, align 8, !alias.scope !872
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.bt, align 8, !tbaa !195, !alias.scope !875
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bv = call noundef zeroext i1 @_ZNK4CGAL8internal25Static_filters_predicates11Collinear_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.n
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS4_10_Hash_nodeIS2_Lb0EEEmSI_:bb.a
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #42
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit: ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !162  ; 4 uses
  %i.t = urem i64 %2, %i.s                        ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.h, !prof !1031

bb.h:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.r, align 8, !tbaa !71   ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !71
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41, label %bb.i

_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41: ; preds = %bb.h
  %i.y = load ptr, ptr %1, align 8, !tbaa !220
  store ptr %i.y, ptr %3, align 8, !tbaa !220
  store ptr %3, ptr %1, align 8, !tbaa !220
  br label %bb.m

bb.i:                                             ; preds = %bb.h, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !154    ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !222 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.loopexit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !220 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !71  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !71
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i

bb.k:                                             ; preds = %bb.l
  %i.ah = icmp eq i64 %i.ad, %i.ak
  br i1 %i.ah, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i, !llvm.loop !223

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.020.i = phi ptr [ %i.ai, %bb.k ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ai = load ptr, ptr %.020.i, align 8, !tbaa !220 ; 4 uses
  %.not18.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !71 ; 2 uses
  %i.al = urem i64 %i.ak, %i.s
  %.not19.i = icmp eq i64 %i.al, %i.t
  br i1 %.not19.i, label %bb.k, label %..loopexit_crit_edge21.i, !llvm.loop !223

..loopexit_crit_edge21.i:                         ; preds = %bb.l
  br label %.loopexit, !llvm.loop !223

_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit: ; preds = %bb.k, %bb.j
  %i.am = phi ptr [ %i.ac, %bb.j ], [ %i.ai, %bb.k ]
  %i.an = phi ptr [ %i.ab, %bb.j ], [ %.020.i, %bb.k ] ; 2 uses
  store ptr %i.am, ptr %3, align 8, !tbaa !220
  store ptr %3, ptr %i.an, align 8, !tbaa !220
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %bb.m, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, !prof !1032

bb.m:                                             ; preds = %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit
  %i.ap = phi i64 [ %i.v, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41 ], [ %i.ad, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !220   ; 2 uses
  %.not36 = icmp eq ptr %i.aq, null
  br i1 %.not36, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !71 ; 2 uses
  %i.at = icmp eq i64 %i.ap, %i.as
  br i1 %i.at, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = urem i64 %i.as, %i.s                    ; 2 uses
  %.not37 = icmp eq i64 %i.au, %i.t
  br i1 %.not37, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %0, align 8, !tbaa !154
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  store ptr %3, ptr %i.aw, align 8, !tbaa !222
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

.loopexit:                                        ; preds = %.lr.ph.i, %..loopexit_crit_edge21.i
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !220
  store ptr %i.ax, ptr %3, align 8, !tbaa !220
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !222
  store ptr %3, ptr %i.ay, align 8, !tbaa !220
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

.loopexit.thread:                                 ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !227
  store ptr %i.ba, ptr %3, align 8, !tbaa !220
  store ptr %3, ptr %i.az, align 8, !tbaa !227
  %i.bb = load ptr, ptr %3, align 8, !tbaa !220   ; 2 uses
  %.not11.i = icmp eq ptr %i.bb, null
  br i1 %.not11.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !71
  %i.be = urem i64 %i.bd, %i.s
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.be
  store ptr %3, ptr %i.bf, align 8, !tbaa !222
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.thread
  store ptr %i.az, ptr %i.aa, align 8, !tbaa !222
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.r, %.loopexit, %bb.o, %bb.p, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, %bb.n, %bb.m
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !219
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.f, align 8, !tbaa !219
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #30

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE17_M_realloc_insertIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %6 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !188    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #38
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #39
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
  %i.s = load ptr, ptr %5, align 8, !tbaa !51
  store ptr %i.s, ptr %i.r, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %8 = sub i64 %i.m, %i.e
  %9 = add i64 %8, -8                             ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.ad = getelementptr i8, ptr %next.gep52, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep52, align 8, !tbaa !51, !alias.scope !1038, !noalias !1033
  %wide.load53 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !51, !alias.scope !1038, !noalias !1033
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !51, !alias.scope !1041, !noalias !1038
  store <2 x ptr> %wide.load53, ptr %i.ae, align 8, !tbaa !51, !alias.scope !1041, !noalias !1038
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !51, !alias.scope !1038, !noalias !1033
  store <2 x ptr> splat (ptr null), ptr %i.ad, align 8, !tbaa !51, !alias.scope !1038, !noalias !1033
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1043

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
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !1036, !noalias !1033
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !1033, !noalias !1036
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !1036, !noalias !1033
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1044

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29.preheader

.lr.ph.i.i.i29.preheader:                         ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %10 = sub i64 %i.d, %i.m
  %11 = add i64 %10, -8                           ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %i.av = getelementptr i8, ptr %next.gep68, i64 16 ; 2 uses
  %wide.load69 = load <2 x ptr>, ptr %next.gep68, align 8, !tbaa !51, !alias.scope !1050, !noalias !1045
  %wide.load70 = load <2 x ptr>, ptr %i.av, align 8, !tbaa !51, !alias.scope !1050, !noalias !1045
  %i.aw = getelementptr i8, ptr %next.gep67, i64 16
  store <2 x ptr> %wide.load69, ptr %next.gep67, align 8, !tbaa !51, !alias.scope !1053, !noalias !1050
  store <2 x ptr> %wide.load70, ptr %i.aw, align 8, !tbaa !51, !alias.scope !1053, !noalias !1050
  store <2 x ptr> splat (ptr null), ptr %next.gep68, align 8, !tbaa !51, !alias.scope !1050, !noalias !1045
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !51, !alias.scope !1050, !noalias !1045
  %index.next71 = add nuw i64 %index66, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.ax, label %middle.block72, label %vector.body65, !llvm.loop !1055

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
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %i.ay = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !51, !alias.scope !1048, !noalias !1045
  store ptr %i.ay, ptr %.012.i.i.i30, align 8, !tbaa !51, !alias.scope !1045, !noalias !1048
  store ptr null, ptr %.0911.i.i.i31, align 8, !tbaa !51, !alias.scope !1048, !noalias !1045
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !1056

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34: ; preds = %.lr.ph.i.i.i29, %middle.block72, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.aj, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.as, %middle.block72 ], [ %i.ba, %.lr.ph.i.i.i29 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !187
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #37
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, %bb.e
  store ptr %i.q, ptr %0, align 8, !tbaa !188
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !185
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !187
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
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.bk) #37
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #38
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.bj

bb.i:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #42
  unreachable

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors17Construct_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_7Point_3IS1_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Plane_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.256, align 8            ; 5 uses
  %7 = alloca %class.anon.255, align 8            ; 4 uses
  %8 = alloca %class.anon.256, align 8            ; 5 uses
  %9 = alloca %class.anon.255, align 8            ; 4 uses
  %10 = alloca %class.anon.256, align 8           ; 5 uses
  %11 = alloca %class.anon.255, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %12 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %13 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %14 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %15 = alloca %"class.CGAL::PlaneC3", align 16   ; 7 uses
  %.sroa.0.i = alloca [4 x %"class.CGAL::Interval_nt"], align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.CGAL::PlaneC3.377", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #39
          to label %bb.b unwind label %bb.e       ; 12 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !51     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !51     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %5, align 8, !tbaa !51     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22, !noalias !1057
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !1060
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !1060
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !1060
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  invoke void @_ZN4CGAL19plane_from_pointsC3INS_11Interval_ntILb0EEEEEvRKT_S5_S5_S5_S5_S5_S5_S5_S5_RS3_S6_S6_S6_(ptr noundef nonnull align 16 dereferenceable(48) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(48) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %14)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !709, !noalias !1057
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull align 16 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !709, !noalias !1057
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull align 16 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !709, !noalias !1057
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !1060
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !1060
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !1060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %15, i64 64, i1 false), !tbaa.struct !948
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22, !noalias !1057
end_hunk_2
begin_hunk_3_@_ZN4CGAL9SegmentC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev:bb.a
          to label %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i unwind label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.1.i, %.noexc.1.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.i, %.noexc.i
  %.idx.lcssa13.i = phi i64 [ 0, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.i ], [ 0, %.noexc.i ], [ 192, %.noexc.1.i ], [ 192, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.1.i ]
  %.ptr.lcssa10.i = phi ptr [ %0, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.i ], [ %0, %.noexc.i ], [ %.ptr.1.i, %.noexc.1.i ], [ %.ptr.1.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.1.i ] ; 2 uses
  %.ptr.lcssa.ph.i.i.i.i.i.i = phi ptr [ %.ptr.2.i.i.i.i.i.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.i ], [ %.ptr.1.i.i.i.i.i.i, %.noexc.i ], [ %.ptr.1.i.i.i.i.i.1.i, %.noexc.1.i ], [ %.ptr.2.i.i.i.i.i.1.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.1.i ]
  %lpad.thr_comm.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %i.a = phi ptr [ %i.b, %.preheader.i.i.i.i.i.i ], [ %.ptr.lcssa.ph.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ]
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -64 ; 3 uses
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.b) #22
  %i.c = icmp eq ptr %i.b, %.ptr.lcssa10.i
  br i1 %i.c, label %.body.i, label %.preheader.i.i.i.i.i.i

_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.i
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(192) %.ptr.1.i)
          to label %.noexc.1.i unwind label %bb.b

.noexc.1.i:                                       ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i
  %.ptr.1.i.i.i.i.i.1.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.1.i.i.i.i.i.1.i)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.1.i unwind label %.preheader.preheader.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.1.i: ; preds = %.noexc.1.i
  %.ptr.2.i.i.i.i.i.1.i = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.2.i.i.i.i.i.1.i)
          to label %_ZNSt5arrayIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EEC2Ev.exit unwind label %.preheader.preheader.i.i.i.i.i.i

bb.b:                                             ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i, %bb.a
  %.idx.lcssa.i = phi i64 [ 0, %bb.a ], [ 192, %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i ]
  %.ptr.lcssa.i = phi ptr [ %0, %bb.a ], [ %.ptr.1.i, %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i ]
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %.idx15.i = phi i64 [ %.idx.lcssa.i, %bb.b ], [ %.idx.lcssa13.i, %.preheader.i.i.i.i.i.i ]
  %.ptr12.i = phi ptr [ %.ptr.lcssa.i, %bb.b ], [ %.ptr.lcssa10.i, %.preheader.i.i.i.i.i.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.b ], [ %lpad.thr_comm.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %i.e = icmp samesign eq i64 %.idx15.i, 0
  br i1 %i.e, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.body.i, %.preheader.i
  %i.f = phi ptr [ %i.g, %.preheader.i ], [ %.ptr12.i, %.body.i ]
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -192 ; 3 uses
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.g) #22
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt5arrayIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EEC2Ev.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL9AABB_treeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9traversalINS_9Segment_3IS2_EENS_8internal9AABB_tree24Listing_primitive_traitsISH_SL_St20back_insert_iteratorIS9_ISC_SaISC_EEEEEEEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(107) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.CGAL::AABB_traits_3<CGAL::Epeck, CGAL::AABB_triangle_primitive_3<CGAL::Epeck, __gnu_cxx::__normal_iterator<CGAL::Triangle_3<CGAL::Epeck> *, std::vector<CGAL::Triangle_3<CGAL::Epeck>>>>>::Compute_bbox", align 8 ; 4 uses
  %4 = alloca %"class.CGAL::AABB_traits_3<CGAL::Epeck, CGAL::AABB_triangle_primitive_3<CGAL::Epeck, __gnu_cxx::__normal_iterator<CGAL::Triangle_3<CGAL::Epeck> *, std::vector<CGAL::Triangle_3<CGAL::Epeck>>>>>::Split_primitives", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1676
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1667 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  switch i64 %i.h, label %bb.c [
    i64 0, label %bb.g
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4CGAL8internal9AABB_tree24Listing_primitive_traitsINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEENS_9Segment_3IS4_EESt20back_insert_iteratorISB_ISE_SaISE_EEEE12intersectionERKSL_RKSH_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(10) %i.d)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.j = load atomic i8, ptr %i.i acquire, align 1, !range !13, !noundef !14
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZNK4CGAL9AABB_treeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9root_nodeEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #22 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.m) #38
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.d
  %i.n = load atomic i8, ptr %i.i monotonic, align 1, !range !13, !noundef !14
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %_ZNSt11unique_lockISt5mutexED2Ev.exit5.i

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %0, ptr %4, align 8
  invoke void @_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE12custom_buildINSH_12Compute_bboxENSH_16Split_primitivesEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(107) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE5buildEv.exit.i unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i

_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE5buildEv.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit5.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i:          ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #22 ; 0 uses
  resume { ptr, i32 } %i.p

_ZNSt11unique_lockISt5mutexED2Ev.exit5.i:         ; preds = %_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE5buildEv.exit.i, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #22 ; 0 uses
  br label %_ZNK4CGAL9AABB_treeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9root_nodeEv.exit

_ZNK4CGAL9AABB_treeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9root_nodeEv.exit: ; preds = %bb.c, %_ZNSt11unique_lockISt5mutexED2Ev.exit5.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1677
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1676
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !1667
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  call void @_ZNK4CGAL9AABB_nodeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9traversalINS_8internal9AABB_tree24Listing_primitive_traitsISH_NS_9Segment_3IS2_EESt20back_insert_iteratorIS9_ISC_SaISC_EEEEESO_EEvRKT0_RT_m(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.z)
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4CGAL9AABB_treeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9root_nodeEv.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal9AABB_tree24Listing_primitive_traitsINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEENS_9Segment_3IS4_EESt20back_insert_iteratorISB_ISE_SaISE_EEEE12intersectionERKSL_RKSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(10) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.CGAL::Static_filtered_predicate.721", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = load ptr, ptr %2, align 8, !tbaa !1696
  %i.b = call noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_20CommonKernelFunctors14Do_intersect_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates14Do_intersect_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEENSU_14Static_filtersIS13_EEEEEclINS_9Segment_3ISP_EENS_10Triangle_3ISP_EEEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.b, label %bb.b, label %_ZNSt20back_insert_iteratorISt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES0_IS6_SaIS6_EEEESaISA_EEEaSEOSA_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !61 ; 2 uses
  %.sroa.0.0.copyload.i4 = load ptr, ptr %0, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i4, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i4, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !67
  br label %_ZNSt20back_insert_iteratorISt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES0_IS6_SaIS6_EEEESaISA_EEEaSEOSA_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %.sroa.0.0.copyload.i4, align 8, !tbaa !70 ; 7 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #38
  unreachable

_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.r, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #39 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !61
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.w = ptrtoaddr ptr %i.t to i64
  %4 = sub i64 %i.j, %i.k
  %5 = add i64 %4, -8                             ; 2 uses
  %i.x = lshr i64 %5, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 72
  %i.z = sub i64 %i.k, %i.w
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.i, i64 %i.ad ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3419)
  call void @llvm.experimental.noalias.scope.decl(metadata !3422)
  %i.ae = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !61, !alias.scope !3422, !noalias !3419
  %wide.load11 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !61, !alias.scope !3422, !noalias !3419
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !61, !alias.scope !3419, !noalias !3422
  store <2 x i64> %wide.load11, ptr %i.af, align 8, !tbaa !61, !alias.scope !3419, !noalias !3422
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3424

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.i.i.preheader13:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3419)
  call void @llvm.experimental.noalias.scope.decl(metadata !3422)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !61, !alias.scope !3422, !noalias !3419
  store i64 %i.ah, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !61, !alias.scope !3419, !noalias !3422
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3425

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #37
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.t, ptr %.sroa.0.0.copyload.i4, align 8, !tbaa !70
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.al, ptr %i.e, align 8, !tbaa !86
  br label %_ZNSt20back_insert_iteratorISt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES0_IS6_SaIS6_EEEESaISA_EEEaSEOSA_.exit

_ZNSt20back_insert_iteratorISt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES0_IS6_SaIS6_EEEESaISA_EEEaSEOSA_.exit: ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS2_5EpeckEEES_IS5_SaIS5_EEEESaIS9_EE17_M_realloc_insertIJS9_EEEvNS1_IPS9_SB_EEDpOT_.exit.i.i.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL9AABB_nodeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9traversalINS_8internal9AABB_tree24Listing_primitive_traitsISH_NS_9Segment_3IS2_EESt20back_insert_iteratorIS9_ISC_SaISC_EEEEESO_EEvRKT0_RT_m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.CGAL::Static_filtered_predicate.721", align 1 ; 3 uses
  %5 = alloca %"class.CGAL::Static_filtered_predicate.721", align 1 ; 3 uses
  %6 = alloca %"class.CGAL::Static_filtered_predicate.721", align 1 ; 3 uses
  %7 = alloca %"class.CGAL::Static_filtered_predicate.721", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1690 ; 3 uses
  switch i64 %3, label %bb.e [
    i64 2, label %bb.b
    i64 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4CGAL8internal9AABB_tree24Listing_primitive_traitsINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEENS_9Segment_3IS4_EESt20back_insert_iteratorISB_ISE_SaISE_EEEE12intersectionERKSL_RKSH_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(10) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1694
  tail call void @_ZN4CGAL8internal9AABB_tree24Listing_primitive_traitsINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEENS_9Segment_3IS4_EESt20back_insert_iteratorISB_ISE_SaISE_EEEE12intersectionERKSL_RKSH_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(10) %i.d)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4CGAL8internal9AABB_tree24Listing_primitive_traitsINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEENS_9Segment_3IS4_EESt20back_insert_iteratorISB_ISE_SaISE_EEEE12intersectionERKSL_RKSH_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(10) %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1694
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.g = call noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_20CommonKernelFunctors14Do_intersect_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates14Do_intersect_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEENSU_14Static_filtersIS13_EEEEEclINS_9Segment_3ISP_EENS_6Bbox_3EEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.g, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !1694 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1690
  call void @_ZN4CGAL8internal9AABB_tree24Listing_primitive_traitsINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEENS_9Segment_3IS4_EESt20back_insert_iteratorISB_ISE_SaISE_EEEE12intersectionERKSL_RKSH_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(10) %i.j), !inline_history !3426
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1694
  call void @_ZN4CGAL8internal9AABB_tree24Listing_primitive_traitsINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEENS_9Segment_3IS4_EESt20back_insert_iteratorISB_ISE_SaISE_EEEE12intersectionERKSL_RKSH_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(10) %i.l), !inline_history !3426
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.m = call noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_20CommonKernelFunctors14Do_intersect_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates14Do_intersect_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEENSU_14Static_filtersIS13_EEEEEclINS_9Segment_3ISP_EENS_6Bbox_3EEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1690
  %i.o = lshr i64 %3, 1                           ; 2 uses
  call void @_ZNK4CGAL9AABB_nodeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9traversalINS_8internal9AABB_tree24Listing_primitive_traitsISH_NS_9Segment_3IS2_EESt20back_insert_iteratorIS9_ISC_SaISC_EEEEESO_EEvRKT0_RT_m(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1694
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.r = call noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_20CommonKernelFunctors14Do_intersect_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates14Do_intersect_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEENSU_14Static_filtersIS13_EEEEEclINS_9Segment_3ISP_EENS_6Bbox_3EEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !1694
  %i.t = sub i64 %3, %i.o
  call void @_ZNK4CGAL9AABB_nodeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9traversalINS_8internal9AABB_tree24Listing_primitive_traitsISH_NS_9Segment_3IS2_EESt20back_insert_iteratorIS9_ISC_SaISC_EEEEESO_EEvRKT0_RT_m(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.t)
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1694
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.w = call noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_20CommonKernelFunctors14Do_intersect_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates14Do_intersect_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEENSU_14Static_filtersIS13_EEEEEclINS_9Segment_3ISP_EENS_6Bbox_3EEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !1694
  %i.y = lshr i64 %3, 1
  %i.z = sub i64 %3, %i.y
  call void @_ZNK4CGAL9AABB_nodeINS_13AABB_traits_3INS_5EpeckENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE9traversalINS_8internal9AABB_tree24Listing_primitive_traitsISH_NS_9Segment_3IS2_EESt20back_insert_iteratorIS9_ISC_SaISC_EEEEESO_EEvRKT0_RT_m(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.z)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.i, %bb.h, %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_20CommonKernelFunctors14Do_intersect_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates14Do_intersect_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEENSU_14Static_filtersIS13_EEEEEclINS_9Segment_3ISP_EENS_10Triangle_3ISP_EEEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %3 = alloca %"class.CGAL::internal::Static_filters", align 1 ; 3 uses
  %4 = alloca %"struct.std::pair.911", align 8    ; 10 uses
  %5 = alloca %"struct.std::pair.917", align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = load ptr, ptr %1, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3427)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !57, !noalias !3430
  %i.f = load <2 x double>, ptr %i.c, align 16, !tbaa !57, !noalias !3430
  %i.g = extractelement <2 x double> %i.f, i64 0
  %i.h = fneg double %i.g                         ; 2 uses
  %i.i = fcmp oeq double %i.e, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load double, ptr %i.k, align 8, !tbaa !57, !noalias !3430
  %i.m = load <2 x double>, ptr %i.j, align 16, !tbaa !57, !noalias !3430
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = fneg double %i.n                         ; 2 uses
  %i.p = fcmp oeq double %i.l, %i.o
  br i1 %i.p, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = load double, ptr %i.r, align 8, !tbaa !57, !noalias !3430
  %i.t = load <2 x double>, ptr %i.q, align 16, !tbaa !57, !noalias !3430
  %i.u = extractelement <2 x double> %i.t, i64 0
  %i.v = fneg double %i.u                         ; 2 uses
  %i.w = fcmp oeq double %i.s, %i.v
  br i1 %i.w, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.z = load double, ptr %i.y, align 8, !tbaa !57, !noalias !3433
  %i.aa = load <2 x double>, ptr %i.x, align 16, !tbaa !57, !noalias !3433
end_hunk_3
