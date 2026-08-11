inline.NumInlined: 3670
inline.NumDeleted: 1517
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !293 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !295, !range !296, !noundef !297
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !298
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !295, !range !296 ; 3 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !298
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
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #35 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !306, !range !296, !noundef !297
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #34
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !295, !range !296
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !295
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !293
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !33
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !293
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
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #35
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !306, !range !296, !noundef !297
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #34
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !295, !range !296
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !295
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !293
  store i64 1, ptr %0, align 16, !tbaa !33
  store ptr %i.av, ptr %i.as, align 8, !tbaa !33
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !293
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #37
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !298
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.be, align 8, !tbaa !305
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
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !298 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !298
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !298
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !298
  %i.bz = sub nuw nsw i64 64, %i.d
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = or disjoint i64 %i.ca, %i.br
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !298
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
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !298, !alias.scope !334
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !298, !alias.scope !337, !noalias !339
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !298, !alias.scope !341
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !298, !alias.scope !337, !noalias !339
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !342

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
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !298
  %i.dw = shl i64 %i.dv, %i.d                     ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ds ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !298
  %i.dy = add i64 %.1108, %i.b
  %i.dz = sub i64 %invariant.op, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !298
  %i.ec = lshr i64 %i.eb, %i.ce
  %i.ed = or disjoint i64 %i.ec, %i.dw
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !298
  %i.ee = add i64 %.1108, 1                       ; 3 uses
  %i.ef = sub nsw i64 %.187, %i.ee                ; 2 uses
  %.not96 = icmp slt i64 %i.ef, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !343

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
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !298
  %i.em = shl i64 %i.el, %i.d
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ei
  store i64 %i.em, ptr %i.en, align 8, !tbaa !298
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
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_6negateES9_vvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !344, !noalias !347, !nonnull !297, !align !350 ; 6 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 16, !tbaa !293
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !tbaa !293
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 288230376151711744) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !295, !range !296, !noundef !297
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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #35 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.q = load i8, ptr %i.p, align 2, !tbaa !306, !range !296, !noundef !297
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = shl i64 %i.i, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #34
  %.pre.pre.i.i = load i8, ptr %i.f, align 1, !tbaa !295, !range !296
  %i.t = trunc nuw i8 %.pre.pre.i.i to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  store i8 0, ptr %i.f, align 1, !tbaa !295
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre.i.i = phi i1 [ false, %bb.e ], [ %i.t, %bb.d ]
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !293
  store i64 %.sroa.speculated.i.i.i, ptr %0, align 16, !tbaa !33
  store ptr %i.m, ptr %i.n, align 8, !tbaa !33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

bb.g:                                             ; preds = %bb.b
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !293
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i.i = phi i1 [ %.pre.i.i, %bb.f ], [ %i.h, %bb.g ]
  %i.u = phi ptr [ %i.m, %bb.f ], [ %.pre8.i.i, %bb.g ]
  %i.v = select i1 %.pre-phi.i.i, ptr %0, ptr %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.x = load i8, ptr %i.w, align 1, !tbaa !295, !range !296, !noundef !297
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %i.y, ptr %i.a, ptr %i.aa
  %i.ac = load i64, ptr %i.d, align 16, !tbaa !293
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.ab, i64 %i.ad, i1 false)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit: ; preds = %bb.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i
  %.sink = phi ptr [ %i.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i ], [ %0, %bb.a ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sink, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !305, !range !296 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = trunc nuw i8 %.pre to i1
  %i.ag = xor i8 %.pre, 1
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !305
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 16
  %i.aj = icmp ne i64 %i.ai, 1
  %or.cond.i.not = select i1 %i.af, i1 true, i1 %i.aj
  br i1 %or.cond.i.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !295, !range !296, !noundef !297
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = select i1 %i.am, ptr %0, ptr %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !298
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.ae, align 8, !tbaa !305
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE15do_assign_floatIeEEvT_(ptr noundef nonnull align 16 dereferenceable(27) %0, x86_fp80 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i8 1, ptr %i.e, align 8, !tbaa !305
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 16
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.j = load i8, ptr %i.i, align 1, !tbaa !295, !range !296, !noundef !297
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %0, ptr %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !298
  %i.p = icmp eq i64 %i.o, 0
end_hunk_0
begin_hunk_1_@_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmE_clEm:bb.a

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !17  ; 3 uses
  %min.iters.check = icmp ult i64 %.pre-phi24, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %.pre-phi24, 9223372036854775804 ; 4 uses
  %i.ac = and i64 %.pre-phi24, 3
  %i.ad = shl i64 %n.vec, 2
  %i.ae = getelementptr i8, ptr %i.ab, i64 %i.ad
  %i.af = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ah ; 2 uses
  %i.ai = shl i64 %index, 3
  %next.gep26 = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep26, align 8, !tbaa !42
  %wide.load27 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !42
  %i.ak = trunc <2 x i64> %wide.load to <2 x i32>
  %i.al = trunc <2 x i64> %wide.load27 to <2 x i32>
  %i.am = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.ak, ptr %next.gep, align 4, !tbaa !23
  store <2 x i32> %i.al, ptr %i.am, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !680

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre-phi24, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %middle.block, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.ph = phi i64 [ %.pre-phi24, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ] ; 3 uses
  %i.ao = load i64, ptr %.0910.i.i.i.i.i.ph, align 8, !tbaa !42
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %.0811.i.i.i.i.i.ph, align 4, !tbaa !23
  %i.aq = icmp samesign ugt i64 %.012.i.i.i.i.i.ph, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !42
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !23
  %i.av = icmp eq i64 %.012.i.i.i.i.i.ph, 3
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.2, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !42
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !23
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !681, !nonnull !297
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !682, !nonnull !297
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !683, !nonnull !297, !align !429
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %1
  call void @_ZN3igl8copyleft4cgal11outer_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERT2_Rb(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.bi = load i8, ptr %i.a, align 1, !tbaa !389, !range !296, !noundef !297 ; 2 uses
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !684, !nonnull !297, !align !429
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %1
  store i32 %i.bj, ptr %i.bn, align 4, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !685, !nonnull !297, !align !429 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !686, !nonnull !297
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !683, !nonnull !297, !align !429
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !17
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %1
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !23
  %i.bw = sext i32 %i.bv to i64
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !17
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !23
  %i.ca = sext i32 %i.bz to i64
  %i.cb = zext nneg i8 %i.bi to i64
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !9
  %i.cf = mul nuw nsw i64 %i.ce, %i.cb
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.ca
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !687, !nonnull !297, !align !429
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !17
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %1
  store i32 %i.ci, ptr %i.cm, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare void @_ZN3igl8copyleft4cgal11outer_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERT2_Rb(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forImZNS4_12parallel_forImZNS4_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSB_IiLin1ELin1ELi0ELin1ELin1EEENSB_IiLin1ELi1ELi0ELin1ELi1EEEST_SU_SU_SU_ST_EEmRKNSA_10MatrixBaseIT_EERKNSV_IT0_EERKNSV_IT1_EERKNSV_IT2_EERKNSV_IT3_EERKNSV_IT4_EERKNSV_IT5_EERNSA_15PlainObjectBaseIT6_EEEUlmE_EEbSW_RKS10_mEUlmE_ZNS6_ImS1S_EEbSW_S1U_mEUlmmE_S1V_EEbSW_S1U_RKS14_RKS18_mEUlmmmE_RmS24_S24_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.444", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !659  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !656    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !664
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forImZNS3_12parallel_forImZNS3_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESS_ST_ST_ST_SS_EEmRKNS9_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNSU_IT3_EERKNSU_IT4_EERKNSU_IT5_EERNS9_15PlainObjectBaseIT6_EEEUlmE_EEbSV_RKSZ_mEUlmE_ZNS5_ImS1R_EEbSV_S1T_mEUlmmE_S1U_EEbSV_S1T_RKS13_RKS17_mEUlmmmE_mmmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !42
  store i64 %i.t, ptr %i.s, align 8, !tbaa !666
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !42
  store i64 %i.v, ptr %i.u, align 8, !tbaa !668
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !42
  store i64 %i.x, ptr %i.w, align 8, !tbaa !670
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !112
  store i64 %i.z, ptr %i.y, align 8, !tbaa !112
  store ptr %i.r, ptr %6, align 8, !tbaa !672
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !672   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #22, !inline_history !674
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !672   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #22, !inline_history !674
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
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.at = getelementptr i8, ptr %next.gep55, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !42, !alias.scope !693, !noalias !688
  %wide.load56 = load <2 x i64>, ptr %i.at, align 8, !tbaa !42, !alias.scope !693, !noalias !688
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !42, !alias.scope !696, !noalias !693
  store <2 x i64> %wide.load56, ptr %i.au, align 8, !tbaa !42, !alias.scope !696, !noalias !693
  store <2 x i64> zeroinitializer, ptr %next.gep55, align 8, !tbaa !42, !alias.scope !693, !noalias !688
  store <2 x i64> zeroinitializer, ptr %i.at, align 8, !tbaa !42, !alias.scope !693, !noalias !688
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !698

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
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.aw = load i64, ptr %.0911.i.i.i, align 8, !tbaa !42, !alias.scope !691, !noalias !688
  store i64 %i.aw, ptr %.012.i.i.i, align 8, !tbaa !42, !alias.scope !688, !noalias !691
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !42, !alias.scope !691, !noalias !688
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !699

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
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.bl = getelementptr i8, ptr %next.gep71, i64 16 ; 2 uses
  %wide.load72 = load <2 x i64>, ptr %next.gep71, align 8, !tbaa !42, !alias.scope !705, !noalias !700
  %wide.load73 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !42, !alias.scope !705, !noalias !700
  %i.bm = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x i64> %wide.load72, ptr %next.gep70, align 8, !tbaa !42, !alias.scope !708, !noalias !705
  store <2 x i64> %wide.load73, ptr %i.bm, align 8, !tbaa !42, !alias.scope !708, !noalias !705
  store <2 x i64> zeroinitializer, ptr %next.gep71, align 8, !tbaa !42, !alias.scope !705, !noalias !700
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !42, !alias.scope !705, !noalias !700
  %index.next74 = add nuw i64 %index69, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.bn, label %middle.block75, label %vector.body68, !llvm.loop !710

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
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !42, !alias.scope !703, !noalias !700
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !42, !alias.scope !700, !noalias !703
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !42, !alias.scope !703, !noalias !700
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !711

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block75, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.az, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block75 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !660
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #34
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !656
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !659
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !660
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
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #22 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #34
  invoke void @__cxa_rethrow() #33
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #37
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forImZNS3_12parallel_forImZNS3_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESS_ST_ST_ST_SS_EEmRKNS9_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNSU_IT3_EERKNSU_IT4_EERKNSU_IT5_EERNS9_15PlainObjectBaseIT6_EEEUlmE_EEbSV_RKSZ_mEUlmE_ZNS5_ImS1R_EEbSV_S1T_mEUlmmE_S1U_EEbSV_S1T_RKS13_RKS17_mEUlmmmE_mmmEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forImZNS3_12parallel_forImZNS3_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESS_ST_ST_ST_SS_EEmRKNS9_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNSU_IT3_EERKNSU_IT4_EERKNSU_IT5_EERNS9_15PlainObjectBaseIT6_EEEUlmE_EEbSV_RKSZ_mEUlmE_ZNS5_ImS1R_EEbSV_S1T_mEUlmmE_S1U_EEbSV_S1T_RKS13_RKS17_mEUlmmmE_mmmEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forImZNS2_12parallel_forImZNS2_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELi1ELi0ELin1ELi1EEESR_SS_SS_SS_SR_EEmRKNS8_10MatrixBaseIT_EERKNST_IT0_EERKNST_IT1_EERKNST_IT2_EERKNST_IT3_EERKNST_IT4_EERKNST_IT5_EERNS8_15PlainObjectBaseIT6_EEEUlmE_EEbSU_RKSY_mEUlmE_ZNS4_ImS1Q_EEbSU_S1S_mEUlmmE_S1T_EEbSU_S1S_RKS12_RKS16_mEUlmmmE_mmmEEEclEv.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !712, !nonnull !297, !align !429
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !653, !nonnull !297, !align !429
  tail call void @_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 noundef %.06.i.i.i.i.i)
  %i.i = add i64 %.06.i.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.i, %i.e
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forImZNS2_12parallel_forImZNS2_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELi1ELi0ELin1ELi1EEESR_SS_SS_SS_SR_EEmRKNS8_10MatrixBaseIT_EERKNST_IT0_EERKNST_IT1_EERKNST_IT2_EERKNST_IT3_EERKNST_IT4_EERKNST_IT5_EERNS8_15PlainObjectBaseIT6_EEEUlmE_EEbSU_RKSY_mEUlmE_ZNS4_ImS1Q_EEbSU_S1S_mEUlmmE_S1T_EEbSU_S1S_RKS12_RKS16_mEUlmmmE_mmmEEEclEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !714

_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forImZNS2_12parallel_forImZNS2_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELi1ELi0ELin1ELi1EEESR_SS_SS_SS_SR_EEmRKNS8_10MatrixBaseIT_EERKNST_IT0_EERKNST_IT1_EERKNST_IT2_EERKNST_IT3_EERKNST_IT4_EERKNST_IT5_EERNS8_15PlainObjectBaseIT6_EEEUlmE_EEbSU_RKSY_mEUlmE_ZNS4_ImS1Q_EEbSU_S1S_mEUlmmE_S1T_EEbSU_S1S_RKS12_RKS16_mEUlmmmE_mmmEEEclEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forImZNS4_12parallel_forImZNS4_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSB_IiLin1ELin1ELi0ELin1ELin1EEENSB_IiLin1ELi1ELi0ELin1ELi1EEEST_SU_SU_SU_ST_EEmRKNSA_10MatrixBaseIT_EERKNSV_IT0_EERKNSV_IT1_EERKNSV_IT2_EERKNSV_IT3_EERKNSV_IT4_EERKNSV_IT5_EERNSA_15PlainObjectBaseIT6_EEEUlmE_EEbSW_RKS10_mEUlmE_ZNS6_ImS1S_EEbSW_S1U_mEUlmmE_S1V_EEbSW_S1U_RKS14_RKS18_mEUlmmmE_RmRKmS24_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.444", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !659  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !656    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !664
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forImZNS3_12parallel_forImZNS3_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESS_ST_ST_ST_SS_EEmRKNS9_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNSU_IT3_EERKNSU_IT4_EERKNSU_IT5_EERNS9_15PlainObjectBaseIT6_EEEUlmE_EEbSV_RKSZ_mEUlmE_ZNS5_ImS1R_EEbSV_S1T_mEUlmmE_S1U_EEbSV_S1T_RKS13_RKS17_mEUlmmmE_mmmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !42
  store i64 %i.t, ptr %i.s, align 8, !tbaa !666
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !42
  store i64 %i.v, ptr %i.u, align 8, !tbaa !668
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !42
  store i64 %i.x, ptr %i.w, align 8, !tbaa !670
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !112
  store i64 %i.z, ptr %i.y, align 8, !tbaa !112
  store ptr %i.r, ptr %6, align 8, !tbaa !672
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !672   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #22, !inline_history !675
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !672   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #22, !inline_history !675
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
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.at = getelementptr i8, ptr %next.gep55, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !42, !alias.scope !720, !noalias !715
  %wide.load56 = load <2 x i64>, ptr %i.at, align 8, !tbaa !42, !alias.scope !720, !noalias !715
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !42, !alias.scope !723, !noalias !720
  store <2 x i64> %wide.load56, ptr %i.au, align 8, !tbaa !42, !alias.scope !723, !noalias !720
  store <2 x i64> zeroinitializer, ptr %next.gep55, align 8, !tbaa !42, !alias.scope !720, !noalias !715
  store <2 x i64> zeroinitializer, ptr %i.at, align 8, !tbaa !42, !alias.scope !720, !noalias !715
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !725

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
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.aw = load i64, ptr %.0911.i.i.i, align 8, !tbaa !42, !alias.scope !718, !noalias !715
  store i64 %i.aw, ptr %.012.i.i.i, align 8, !tbaa !42, !alias.scope !715, !noalias !718
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !42, !alias.scope !718, !noalias !715
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !726

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
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.bl = getelementptr i8, ptr %next.gep71, i64 16 ; 2 uses
  %wide.load72 = load <2 x i64>, ptr %next.gep71, align 8, !tbaa !42, !alias.scope !732, !noalias !727
  %wide.load73 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !42, !alias.scope !732, !noalias !727
  %i.bm = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x i64> %wide.load72, ptr %next.gep70, align 8, !tbaa !42, !alias.scope !735, !noalias !732
  store <2 x i64> %wide.load73, ptr %i.bm, align 8, !tbaa !42, !alias.scope !735, !noalias !732
  store <2 x i64> zeroinitializer, ptr %next.gep71, align 8, !tbaa !42, !alias.scope !732, !noalias !727
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !42, !alias.scope !732, !noalias !727
  %index.next74 = add nuw i64 %index69, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.bn, label %middle.block75, label %vector.body68, !llvm.loop !737

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
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !42, !alias.scope !730, !noalias !727
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !42, !alias.scope !727, !noalias !730
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !42, !alias.scope !730, !noalias !727
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !738

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block75, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.az, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block75 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !660
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #34
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !656
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !659
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !660
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
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #22 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #34
  invoke void @__cxa_rethrow() #33
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #37
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #33
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !227  ; 2 uses
  %i.i = mul nsw i64 %i.h, 3                      ; 2 uses
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELin1ELi3ELi1EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !222    ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp ne i64 %i.h, 0
  %or.cond.i.i.i = and i1 %i.l, %i.k
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i, label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i

.preheader.i.i.i:                                 ; preds = %bb.d, %_ZN4CGAL6HandleD2Ev.exit.i.i.i
  %.0.i.i.i = phi i64 [ %i.m, %_ZN4CGAL6HandleD2Ev.exit.i.i.i ], [ %i.i, %bb.d ]
  %i.m = add i64 %.0.i.i.i, -1                    ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load atomic i32, ptr %i.q monotonic, align 4 ; 2 uses
  %i.s = icmp eq i32 %i.r, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #22, !inline_history !739
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = add nsw i32 %i.r, -1
  store atomic i32 %i.w, ptr %i.q monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = atomicrmw sub ptr %i.q, i32 1 release, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.k, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !129  ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !14
end_hunk_1
begin_hunk_2_@_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmE_clEm:bb.a

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !17  ; 3 uses
  %min.iters.check = icmp ult i64 %.pre-phi24, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %.pre-phi24, 9223372036854775804 ; 4 uses
  %i.ac = and i64 %.pre-phi24, 3
  %i.ad = shl i64 %n.vec, 2
  %i.ae = getelementptr i8, ptr %i.ab, i64 %i.ad
  %i.af = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ah ; 2 uses
  %i.ai = shl i64 %index, 3
  %next.gep26 = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep26, align 8, !tbaa !42
  %wide.load27 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !42
  %i.ak = trunc <2 x i64> %wide.load to <2 x i32>
  %i.al = trunc <2 x i64> %wide.load27 to <2 x i32>
  %i.am = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.ak, ptr %next.gep, align 4, !tbaa !23
  store <2 x i32> %i.al, ptr %i.am, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !754

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre-phi24, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %middle.block, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.ph = phi i64 [ %.pre-phi24, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ] ; 3 uses
  %i.ao = load i64, ptr %.0910.i.i.i.i.i.ph, align 8, !tbaa !42
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %.0811.i.i.i.i.i.ph, align 4, !tbaa !23
  %i.aq = icmp samesign ugt i64 %.012.i.i.i.i.i.ph, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !42
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !23
  %i.av = icmp eq i64 %.012.i.i.i.i.i.ph, 3
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.2, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !42
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !23
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !755, !nonnull !297
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !756, !nonnull !297
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !757, !nonnull !297, !align !429
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %1
  call void @_ZN3igl8copyleft4cgal11outer_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERT2_Rb(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.bi = load i8, ptr %i.a, align 1, !tbaa !389, !range !296, !noundef !297 ; 2 uses
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !758, !nonnull !297, !align !429
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %1
  store i32 %i.bj, ptr %i.bn, align 4, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !759, !nonnull !297, !align !429 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !760, !nonnull !297
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !757, !nonnull !297, !align !429
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !17
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %1
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !23
  %i.bw = sext i32 %i.bv to i64
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !17
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !23
  %i.ca = sext i32 %i.bz to i64
  %i.cb = zext nneg i8 %i.bi to i64
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !9
  %i.cf = mul nuw nsw i64 %i.ce, %i.cb
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.ca
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !761, !nonnull !297, !align !429
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !17
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %1
  store i32 %i.ci, ptr %i.cm, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare void @_ZN3igl8copyleft4cgal11outer_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERT2_Rb(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forImZNS4_12parallel_forImZNS4_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSB_IiLin1ELin1ELi0ELin1ELin1EEENSB_IiLin1ELi1ELi0ELin1ELi1EEEST_SU_SU_SU_ST_EEmRKNSA_10MatrixBaseIT_EERKNSV_IT0_EERKNSV_IT1_EERKNSV_IT2_EERKNSV_IT3_EERKNSV_IT4_EERKNSV_IT5_EERNSA_15PlainObjectBaseIT6_EEEUlmE_EEbSW_RKS10_mEUlmE_ZNS6_ImS1S_EEbSW_S1U_mEUlmmE_S1V_EEbSW_S1U_RKS14_RKS18_mEUlmmmE_RmS24_S24_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.444", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !659  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !656    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !664
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forImZNS3_12parallel_forImZNS3_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESS_ST_ST_ST_SS_EEmRKNS9_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNSU_IT3_EERKNSU_IT4_EERKNSU_IT5_EERNS9_15PlainObjectBaseIT6_EEEUlmE_EEbSV_RKSZ_mEUlmE_ZNS5_ImS1R_EEbSV_S1T_mEUlmmE_S1U_EEbSV_S1T_RKS13_RKS17_mEUlmmmE_mmmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !42
  store i64 %i.t, ptr %i.s, align 8, !tbaa !666
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !42
  store i64 %i.v, ptr %i.u, align 8, !tbaa !668
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !42
  store i64 %i.x, ptr %i.w, align 8, !tbaa !670
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !112
  store i64 %i.z, ptr %i.y, align 8, !tbaa !112
  store ptr %i.r, ptr %6, align 8, !tbaa !672
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !672   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #22, !inline_history !749
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !672   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #22, !inline_history !749
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
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.at = getelementptr i8, ptr %next.gep55, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !42, !alias.scope !767, !noalias !762
  %wide.load56 = load <2 x i64>, ptr %i.at, align 8, !tbaa !42, !alias.scope !767, !noalias !762
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !42, !alias.scope !770, !noalias !767
  store <2 x i64> %wide.load56, ptr %i.au, align 8, !tbaa !42, !alias.scope !770, !noalias !767
  store <2 x i64> zeroinitializer, ptr %next.gep55, align 8, !tbaa !42, !alias.scope !767, !noalias !762
  store <2 x i64> zeroinitializer, ptr %i.at, align 8, !tbaa !42, !alias.scope !767, !noalias !762
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !772

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
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.aw = load i64, ptr %.0911.i.i.i, align 8, !tbaa !42, !alias.scope !765, !noalias !762
  store i64 %i.aw, ptr %.012.i.i.i, align 8, !tbaa !42, !alias.scope !762, !noalias !765
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !42, !alias.scope !765, !noalias !762
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !773

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
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.bl = getelementptr i8, ptr %next.gep71, i64 16 ; 2 uses
  %wide.load72 = load <2 x i64>, ptr %next.gep71, align 8, !tbaa !42, !alias.scope !779, !noalias !774
  %wide.load73 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !42, !alias.scope !779, !noalias !774
  %i.bm = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x i64> %wide.load72, ptr %next.gep70, align 8, !tbaa !42, !alias.scope !782, !noalias !779
  store <2 x i64> %wide.load73, ptr %i.bm, align 8, !tbaa !42, !alias.scope !782, !noalias !779
  store <2 x i64> zeroinitializer, ptr %next.gep71, align 8, !tbaa !42, !alias.scope !779, !noalias !774
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !42, !alias.scope !779, !noalias !774
  %index.next74 = add nuw i64 %index69, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.bn, label %middle.block75, label %vector.body68, !llvm.loop !784

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
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !42, !alias.scope !777, !noalias !774
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !42, !alias.scope !774, !noalias !777
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !42, !alias.scope !777, !noalias !774
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !785

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block75, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.az, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block75 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !660
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #34
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !656
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !659
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !660
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
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #22 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #34
  invoke void @__cxa_rethrow() #33
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #37
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forImZNS3_12parallel_forImZNS3_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESS_ST_ST_ST_SS_EEmRKNS9_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNSU_IT3_EERKNSU_IT4_EERKNSU_IT5_EERNS9_15PlainObjectBaseIT6_EEEUlmE_EEbSV_RKSZ_mEUlmE_ZNS5_ImS1R_EEbSV_S1T_mEUlmmE_S1U_EEbSV_S1T_RKS13_RKS17_mEUlmmmE_mmmEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forImZNS3_12parallel_forImZNS3_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESS_ST_ST_ST_SS_EEmRKNS9_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNSU_IT3_EERKNSU_IT4_EERKNSU_IT5_EERNS9_15PlainObjectBaseIT6_EEEUlmE_EEbSV_RKSZ_mEUlmE_ZNS5_ImS1R_EEbSV_S1T_mEUlmmE_S1U_EEbSV_S1T_RKS13_RKS17_mEUlmmmE_mmmEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forImZNS2_12parallel_forImZNS2_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELi1ELi0ELin1ELi1EEESR_SS_SS_SS_SR_EEmRKNS8_10MatrixBaseIT_EERKNST_IT0_EERKNST_IT1_EERKNST_IT2_EERKNST_IT3_EERKNST_IT4_EERKNST_IT5_EERNS8_15PlainObjectBaseIT6_EEEUlmE_EEbSU_RKSY_mEUlmE_ZNS4_ImS1Q_EEbSU_S1S_mEUlmmE_S1T_EEbSU_S1S_RKS12_RKS16_mEUlmmmE_mmmEEEclEv.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !786, !nonnull !297, !align !429
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !745, !nonnull !297, !align !429
  tail call void @_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 noundef %.06.i.i.i.i.i)
  %i.i = add i64 %.06.i.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.i, %i.e
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forImZNS2_12parallel_forImZNS2_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELi1ELi0ELin1ELi1EEESR_SS_SS_SS_SR_EEmRKNS8_10MatrixBaseIT_EERKNST_IT0_EERKNST_IT1_EERKNST_IT2_EERKNST_IT3_EERKNST_IT4_EERKNST_IT5_EERNS8_15PlainObjectBaseIT6_EEEUlmE_EEbSU_RKSY_mEUlmE_ZNS4_ImS1Q_EEbSU_S1S_mEUlmmE_S1T_EEbSU_S1S_RKS12_RKS16_mEUlmmmE_mmmEEEclEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !788

_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forImZNS2_12parallel_forImZNS2_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELi1ELi0ELin1ELi1EEESR_SS_SS_SS_SR_EEmRKNS8_10MatrixBaseIT_EERKNST_IT0_EERKNST_IT1_EERKNST_IT2_EERKNST_IT3_EERKNST_IT4_EERKNST_IT5_EERNS8_15PlainObjectBaseIT6_EEEUlmE_EEbSU_RKSY_mEUlmE_ZNS4_ImS1Q_EEbSU_S1S_mEUlmmE_S1T_EEbSU_S1S_RKS12_RKS16_mEUlmmmE_mmmEEEclEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forImZNS4_12parallel_forImZNS4_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSB_IiLin1ELin1ELi0ELin1ELin1EEENSB_IiLin1ELi1ELi0ELin1ELi1EEEST_SU_SU_SU_ST_EEmRKNSA_10MatrixBaseIT_EERKNSV_IT0_EERKNSV_IT1_EERKNSV_IT2_EERKNSV_IT3_EERKNSV_IT4_EERKNSV_IT5_EERNSA_15PlainObjectBaseIT6_EEEUlmE_EEbSW_RKS10_mEUlmE_ZNS6_ImS1S_EEbSW_S1U_mEUlmmE_S1V_EEbSW_S1U_RKS14_RKS18_mEUlmmmE_RmRKmS24_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.444", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !659  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !656    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !664
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forImZNS3_12parallel_forImZNS3_8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELin1ELi0ELin1ELin1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESS_ST_ST_ST_SS_EEmRKNS9_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNSU_IT3_EERKNSU_IT4_EERKNSU_IT5_EERNS9_15PlainObjectBaseIT6_EEEUlmE_EEbSV_RKSZ_mEUlmE_ZNS5_ImS1R_EEbSV_S1T_mEUlmmE_S1U_EEbSV_S1T_RKS13_RKS17_mEUlmmmE_mmmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !42
  store i64 %i.t, ptr %i.s, align 8, !tbaa !666
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !42
  store i64 %i.v, ptr %i.u, align 8, !tbaa !668
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !42
  store i64 %i.x, ptr %i.w, align 8, !tbaa !670
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !112
  store i64 %i.z, ptr %i.y, align 8, !tbaa !112
  store ptr %i.r, ptr %6, align 8, !tbaa !672
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !672   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #22, !inline_history !750
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !672   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #22, !inline_history !750
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
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.at = getelementptr i8, ptr %next.gep55, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !42, !alias.scope !794, !noalias !789
  %wide.load56 = load <2 x i64>, ptr %i.at, align 8, !tbaa !42, !alias.scope !794, !noalias !789
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !42, !alias.scope !797, !noalias !794
  store <2 x i64> %wide.load56, ptr %i.au, align 8, !tbaa !42, !alias.scope !797, !noalias !794
  store <2 x i64> zeroinitializer, ptr %next.gep55, align 8, !tbaa !42, !alias.scope !794, !noalias !789
  store <2 x i64> zeroinitializer, ptr %i.at, align 8, !tbaa !42, !alias.scope !794, !noalias !789
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !799

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
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.aw = load i64, ptr %.0911.i.i.i, align 8, !tbaa !42, !alias.scope !792, !noalias !789
  store i64 %i.aw, ptr %.012.i.i.i, align 8, !tbaa !42, !alias.scope !789, !noalias !792
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !42, !alias.scope !792, !noalias !789
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !800

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
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.bl = getelementptr i8, ptr %next.gep71, i64 16 ; 2 uses
  %wide.load72 = load <2 x i64>, ptr %next.gep71, align 8, !tbaa !42, !alias.scope !806, !noalias !801
  %wide.load73 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !42, !alias.scope !806, !noalias !801
  %i.bm = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x i64> %wide.load72, ptr %next.gep70, align 8, !tbaa !42, !alias.scope !809, !noalias !806
  store <2 x i64> %wide.load73, ptr %i.bm, align 8, !tbaa !42, !alias.scope !809, !noalias !806
  store <2 x i64> zeroinitializer, ptr %next.gep71, align 8, !tbaa !42, !alias.scope !806, !noalias !801
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !42, !alias.scope !806, !noalias !801
  %index.next74 = add nuw i64 %index69, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.bn, label %middle.block75, label %vector.body68, !llvm.loop !811

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
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !42, !alias.scope !804, !noalias !801
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !42, !alias.scope !801, !noalias !804
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !42, !alias.scope !804, !noalias !801
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !812

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block75, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.az, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block75 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !660
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #34
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !656
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !659
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !660
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
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #22 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #34
  invoke void @__cxa_rethrow() #33
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #37
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #33
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !140  ; 2 uses
  %i.i = mul nsw i64 %i.h, 3                      ; 2 uses
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !138    ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp ne i64 %i.h, 0
  %or.cond.i.i.i = and i1 %i.l, %i.k
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i, label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i

.preheader.i.i.i:                                 ; preds = %bb.d, %_ZN4CGAL6HandleD2Ev.exit.i.i.i
  %.0.i.i.i = phi i64 [ %i.m, %_ZN4CGAL6HandleD2Ev.exit.i.i.i ], [ %i.i, %bb.d ]
  %i.m = add i64 %.0.i.i.i, -1                    ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load atomic i32, ptr %i.q monotonic, align 4 ; 2 uses
  %i.s = icmp eq i32 %i.r, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #22, !inline_history !813
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = add nsw i32 %i.r, -1
  store atomic i32 %i.w, ptr %i.q monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = atomicrmw sub ptr %i.q, i32 1 release, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.k, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !129  ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !14
end_hunk_2
