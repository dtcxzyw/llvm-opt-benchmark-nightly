Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/mesh_to_cgal_triangle_list?download=true
inline.NumInlined: 4460
inline.NumDeleted: 1589
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !67, !range !68, !noundef !69
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !148
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !67, !range !68 ; 2 uses
  %.pre120 = trunc nuw i8 %.pre to i1             ; 2 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.pre120, ptr %0, ptr %i.p
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !148
  %i.u = sub nuw nsw i64 64, %i.d
  %i.v = lshr i64 %i.t, %i.u
  %.not94 = icmp ne i64 %i.v, 0
  %i.w = zext i1 %.not94 to i64
  %spec.select = add i64 %i.f, %i.w
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.c, %bb.d
  %.086 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.x = add i64 %.086, %i.b                      ; 11 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 288230376151711744) ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 6 uses
  %i.z = load i64, ptr %0, align 16               ; 2 uses
  %spec.select.i8.i = select i1 %.pre120, i64 2, i64 %i.z ; 2 uses
  %i.aa = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.aa, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge112
  %i.ab = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ac = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #36 ; 3 uses
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !67, !range !68, !noundef !69
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.af, ptr %0, ptr %i.ah
  %i.aj = load i64, ptr %i.e, align 16, !tbaa !146
  %i.ak = shl i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.am = load i8, ptr %i.al, align 2, !tbaa !156, !range !68, !noundef !69
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %0, align 16
  %i.ap = shl i64 %i.ao, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ap) #33
  %.pre113.pre = load i8, ptr %i.y, align 1, !tbaa !67, !range !68
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.y, align 1, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !146
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !94
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !94
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !146
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8
  %i.aq = icmp ne i64 %i.z, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ar = phi i1 [ true, %bb.h ], [ %i.aq, %bb.i ]
  %.pre117 = phi ptr [ %i.ad, %bb.h ], [ %.pre115, %bb.i ]
  %i.as = phi i8 [ %.pre113, %bb.h ], [ %.pre, %bb.i ]
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.av = select i1 %i.at, ptr %0, ptr %.pre117   ; 19 uses
  %i.aw = icmp ult i64 %i.x, %i.b
  br i1 %i.aw, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not104 = select i1 %i.at, i1 true, i1 %i.ar
  br i1 %.not104, label %bb.o, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99: ; preds = %bb.j
  %i.ax = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %.noexc unwind label %bb.p     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.ay = load i8, ptr %i.y, align 1, !tbaa !67, !range !68, !noundef !69
  %i.az = trunc nuw i8 %i.ay to i1                ; 2 uses
  %i.ba = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.bb = select i1 %i.az, ptr %0, ptr %i.ba
  %i.bc = load i64, ptr %i.e, align 16, !tbaa !146
  %i.bd = shl i64 %i.bc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.bb, i64 %i.bd, i1 false)
  br i1 %i.az, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !156, !range !68, !noundef !69
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %0, align 16
  %i.bi = shl i64 %i.bh, 3
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bi) #33
  %.pre116.pre = load i8, ptr %i.y, align 1, !tbaa !67, !range !68
  %i.bj = trunc nuw i8 %.pre116.pre to i1
  %i.bk = select i1 %i.bj, ptr %0, ptr %i.ax
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %.noexc
  store i8 0, ptr %i.y, align 1, !tbaa !67
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre116 = phi ptr [ %i.ax, %bb.m ], [ %i.bk, %bb.l ]
  store i64 1, ptr %i.e, align 16, !tbaa !146
  store i64 1, ptr %0, align 16, !tbaa !94
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !94
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !146
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.p:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #37
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.o, %bb.n
  %.pre-phi124 = phi ptr [ %i.av, %bb.o ], [ %.pre116, %bb.n ]
  store i64 0, ptr %.pre-phi124, align 8, !tbaa !148
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bn, align 8, !tbaa !155
  br label %bb.y

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not95 = icmp ult i64 %i.x, 288230376151711745
  %i.bo = sub i64 %i.x, %spec.select.i            ; 2 uses
  br i1 %.not95, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bp = add i64 %i.f, %i.b
  %i.bq = icmp ugt i64 %i.x, %i.bp
  %i.br = xor i64 %i.bo, -1                       ; 3 uses
  %i.bs = getelementptr [8 x i8], ptr %i.av, i64 %i.f ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !148 ; 2 uses
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = sub nuw nsw i64 64, %i.d
  %i.bw = lshr i64 %i.bu, %i.bv
  %i.bx = getelementptr [8 x i8], ptr %i.av, i64 %i.x
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.br
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !148
  %i.bz = add nsw i64 %i.x, -1
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ca = shl i64 %i.bu, %i.d                     ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.av, i64 %i.x
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %i.br ; 2 uses
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !148
  %i.cd = icmp ugt i64 %i.f, 1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr i8, ptr %i.bs, i64 -16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !148
  %i.cg = sub nuw nsw i64 64, %i.d
  %i.ch = lshr i64 %i.cf, %i.cg
  %i.ci = or disjoint i64 %i.ch, %i.ca
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !148
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s, %bb.q
  %.187 = phi i64 [ %i.x, %bb.q ], [ %i.bz, %bb.s ], [ %i.x, %bb.u ], [ %i.x, %bb.t ] ; 10 uses
  %.0 = phi i64 [ %i.bo, %bb.q ], [ 0, %bb.s ], [ 1, %bb.u ], [ 1, %bb.t ] ; 9 uses
  %i.cj = add nsw i64 %i.b, 2                     ; 2 uses
  %i.ck = sub nsw i64 %.187, %.0                  ; 3 uses
  %.not96107 = icmp slt i64 %i.ck, %i.cj
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.cl = sub nuw nsw i64 64, %i.d                ; 2 uses
  %i.cm = xor i64 %.0, -1
  %i.cn = add i64 %.187, %i.cm                    ; 2 uses
  %i.co = add i64 %i.b, 1
  %i.cp = tail call i64 @llvm.smin.i64(i64 %i.cn, i64 %i.co) ; 2 uses
  %i.cq = sub i64 %i.ck, %i.cp                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cq, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cr = shl i64 %i.cp, 3                        ; 3 uses
  %i.cs = getelementptr i8, ptr %i.av, i64 %i.cr  ; 2 uses
  %i.ct = shl i64 %.187, 3                        ; 2 uses
  %i.cu = sub i64 %.187, %.0
  %i.cv = shl i64 %i.cu, 3
  %i.cw = getelementptr i8, ptr %i.av, i64 %i.cv  ; 2 uses
  %i.cx = shl i64 %i.b, 3                         ; 2 uses
  %i.cy = sub i64 %i.cr, %i.cx
  %i.cz = getelementptr i8, ptr %i.av, i64 %i.cy
  %i.da = add i64 %.0, %i.b
  %i.db = shl i64 %i.da, 3                        ; 2 uses
  %i.dc = sub i64 %i.ct, %i.db
  %i.dd = getelementptr i8, ptr %i.av, i64 %i.dc
  %i.de = add i64 %i.cr, -8
  %i.df = sub i64 %i.de, %i.cx
  %i.dg = getelementptr i8, ptr %i.av, i64 %i.df
  %i.dh = add i64 %i.ct, -8
  %i.di = sub i64 %i.dh, %i.db
  %i.dj = getelementptr i8, ptr %i.av, i64 %i.di
  %bound0 = icmp ult ptr %i.cs, %i.dd
  %bound1 = icmp ult ptr %i.cz, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  %bound0143 = icmp ult ptr %i.cs, %i.dj
  %bound1144 = icmp ult ptr %i.dg, %i.cw
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx = or i1 %found.conflict, %found.conflict145
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cq, -2                      ; 4 uses
  %i.dk = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat147 = shufflevector <2 x i64> %broadcast.splatinsert146, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = add i64 %.0, %index                     ; 2 uses
  %i.dm = xor i64 %i.dl, -1
  %i.dn = add i64 %.187, %i.dm                    ; 2 uses
  %i.do = sub i64 %i.dn, %i.b
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -8
  %wide.load = load <2 x i64>, ptr %i.dq, align 8, !tbaa !148, !alias.scope !353
  %i.dr = shl <2 x i64> %wide.load, %broadcast.splat147 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dn
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  store <2 x i64> %i.dr, ptr %i.dt, align 8, !tbaa !148, !alias.scope !354, !noalias !355
  %i.du = add i64 %i.dl, %i.b
  %i.dv = sub i64 %invariant.op, %i.du
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dv
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %wide.load148 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !148, !alias.scope !356
  %i.dy = lshr <2 x i64> %wide.load148, %broadcast.splat
  %i.dz = or disjoint <2 x i64> %i.dy, %i.dr
  store <2 x i64> %i.dz, ptr %i.dt, align 8, !tbaa !148, !alias.scope !354, !noalias !355
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !351

middle.block:                                     ; preds = %vector.body
  %i.eb = add i64 %n.vec, -1
  %i.ec = sub i64 %i.cn, %i.eb
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.dk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.eq, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ed = xor i64 %.1108, -1
  %i.ee = add i64 %.187, %i.ed                    ; 2 uses
  %i.ef = sub i64 %i.ee, %i.b
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !148
  %i.ei = shl i64 %i.eh, %i.d                     ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ee ; 2 uses
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !148
  %i.ek = add i64 %.1108, %i.b
  %i.el = sub i64 %invariant.op, %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !148
  %i.eo = lshr i64 %i.en, %i.cl
  %i.ep = or disjoint i64 %i.eo, %i.ei
  store i64 %i.ep, ptr %i.ej, align 8, !tbaa !148
  %i.eq = add i64 %.1108, 1                       ; 3 uses
  %i.er = sub nsw i64 %.187, %i.eq                ; 2 uses
  %.not96 = icmp slt i64 %i.er, %i.cj
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !352

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.v
  %.1.lcssa = phi i64 [ %.0, %bb.v ], [ %i.dk, %middle.block ], [ %i.eq, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.ck, %bb.v ], [ %i.ec, %middle.block ], [ %i.er, %scalar.ph ]
  %i.es = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.es
  br i1 %.not97, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.et = xor i64 %.1.lcssa, -1
  %i.eu = add i64 %.187, %i.et                    ; 2 uses
  %i.ev = sub i64 %i.eu, %i.b
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !148
  %i.ey = shl i64 %i.ex, %i.d
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.eu
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !148
  %i.fa = add i64 %.1.lcssa, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  %.2 = phi i64 [ %i.fa, %bb.w ], [ %.1.lcssa, %._crit_edge ]
  %i.fb = sub i64 %.187, %.2
  %i.fc = shl i64 %i.fb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.fc, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.x, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_6negateES9_vvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !360, !noalias !361, !nonnull !69, !align !167 ; 6 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 0, ptr %i.c, align 16, !tbaa !146
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !tbaa !146
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 288230376151711744) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !67, !range !68, !noundef !69
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = load i64, ptr %0, align 16
  %spec.select.i8.i.i.i = select i1 %i.h, i64 2, i64 %i.i ; 2 uses
  %i.j = icmp ugt i64 %spec.select.i.i.i, %spec.select.i8.i.i.i
  br i1 %i.j, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %spec.select.i8.i.i.i, 2
  %.sroa.speculated16.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %spec.select.i.i.i)
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i.i, i64 288230376151711744) ; 2 uses
  %i.l = shl nuw nsw i64 %.sroa.speculated.i.i.i, 3
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36 ; 3 uses
  %i.n = load i8, ptr %i.f, align 1, !tbaa !67, !range !68, !noundef !69
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = load i64, ptr %i.c, align 16, !tbaa !146
  %i.t = shl i64 %i.s, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %i.r, i64 %i.t, i1 false)
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.v = load i8, ptr %i.u, align 2, !tbaa !156, !range !68, !noundef !69
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %0, align 16
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.y) #33
  %.pre.pre.i.i = load i8, ptr %i.f, align 1, !tbaa !67, !range !68
  %i.z = trunc nuw i8 %.pre.pre.i.i to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  store i8 0, ptr %i.f, align 1, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre.i.i = phi i1 [ false, %bb.e ], [ %i.z, %bb.d ]
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !146
  store i64 %.sroa.speculated.i.i.i, ptr %0, align 16, !tbaa !94
  store ptr %i.m, ptr %i.p, align 8, !tbaa !94
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

bb.g:                                             ; preds = %bb.b
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !146
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i: ; preds = %bb.g, %bb.f
end_hunk_0
