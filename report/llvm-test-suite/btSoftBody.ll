inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody6refineEPNS_10ImplicitFnEfb:bb.a
  %i.t = icmp sgt i32 %i.bc, 0
  br i1 %i.t, label %.lr.ph559, label %.preheader542

.lr.ph559:                                        ; preds = %.preheader543
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113
  %i.w = ptrtoint ptr %i.b to i64                 ; 2 uses
  br label %bb.j

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.x = phi i32 [ %i.q, %.lr.ph ], [ %i.bc, %bb.i ]
  %.0242557 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.i ] ; 4 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !113
  %i.z = sext i32 %.0242557 to i64                ; 2 uses
  %i.aa = getelementptr inbounds [72 x i8], ptr %i.y, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 1
  %.not321 = icmp eq i8 %i.ad, 0
  br i1 %.not321, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !251
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %1, align 8, !tbaa !8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef float %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ag)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !251
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %1, align 8, !tbaa !8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef float %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.am)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aq = fmul float %i.aj, %i.ap
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  %.pre = load i32, ptr %i.p, align 4, !tbaa !114 ; 2 uses
  br i1 %i.ar, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.s, align 8, !tbaa !113 ; 2 uses
  %i.at = getelementptr inbounds [72 x i8], ptr %i.as, i64 %i.z ; 2 uses
  %i.au = sext i32 %.pre to i64
  %i.av = getelementptr [72 x i8], ptr %i.as, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -72    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.at, i64 72, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.at, ptr noundef nonnull align 8 dereferenceable(68) %i.aw, i64 68, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.aw, ptr noundef nonnull align 8 dereferenceable(68) %6, i64 68, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ax = load i32, ptr %i.p, align 4, !tbaa !114
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.p, align 4, !tbaa !114
  %i.az = add nsw i32 %.0242557, -1
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit409

bb.h:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit409

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.b
  %i.bc = phi i32 [ %i.ay, %bb.f ], [ %.pre, %bb.e ], [ %i.x, %bb.b ] ; 3 uses
  %.1243 = phi i32 [ %i.az, %bb.f ], [ %.0242557, %bb.e ], [ %.0242557, %bb.b ]
  %i.bd = add nsw i32 %.1243, 1                   ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.bc
  br i1 %i.be, label %bb.b, label %.preheader543

.preheader542:                                    ; preds = %bb.j, %_ZN11btSymMatrixIiEC2EiRKi.exit, %.preheader543
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 11 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !118
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph561, label %.preheader541

.lr.ph561:                                        ; preds = %.preheader542
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !117
  %i.bk = ptrtoint ptr %i.b to i64                ; 3 uses
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph559, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph559 ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [72 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !251
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.w
  %i.bq = sdiv exact i64 %i.bp, 120
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !251
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.w
  %i.bw = sdiv exact i64 %i.bv, 120
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.bx)
  %spec.select5.i.i = tail call i32 @llvm.smax.i32(i32 %i.br, i32 %i.bx) ; 2 uses
  %i.by = add nsw i32 %spec.select5.i.i, 1
  %i.bz = mul nsw i32 %i.by, %spec.select5.i.i
  %i.ca = sdiv i32 %i.bz, 2
  %i.cb = add nsw i32 %i.ca, %spec.select.i.i
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.sroa.8481.0, i64 %i.cc
  store i32 -1, ptr %i.cd, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load i32, ptr %i.p, align 4, !tbaa !114
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %bb.j, label %.preheader542

.preheader541:                                    ; preds = %bb.k, %.preheader542
  %i.ch = icmp sgt i32 %i.d, 0
  br i1 %i.ch, label %.lr.ph568, label %._crit_edge

.lr.ph568:                                        ; preds = %.preheader541
  %i.ci = fneg float %2
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cl = zext nneg i32 %i.d to i64
  %wide.trip.count619 = zext nneg i32 %i.d to i64 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph561, %bb.k
  %indvars.iv608 = phi i64 [ 0, %.lr.ph561 ], [ %indvars.iv.next609, %bb.k ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [72 x i8], ptr %i.bj, i64 %indvars.iv608 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !251
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.bk
  %i.cr = sdiv exact i64 %i.cq, 120
  %i.cs = trunc i64 %i.cr to i32                  ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !251
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.cv, %i.bk
  %i.cx = sdiv exact i64 %i.cw, 120
  %i.cy = trunc i64 %i.cx to i32                  ; 4 uses
  %spec.select.i.i329 = tail call i32 @llvm.smin.i32(i32 %i.cs, i32 %i.cy)
  %spec.select5.i.i330 = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 %i.cy) ; 2 uses
  %i.cz = add nsw i32 %spec.select5.i.i330, 1
  %i.da = mul nsw i32 %i.cz, %spec.select5.i.i330
  %i.db = sdiv i32 %i.da, 2
  %i.dc = add nsw i32 %i.db, %spec.select.i.i329
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %.sroa.8481.0, i64 %i.dd
  store i32 -1, ptr %i.de, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !251
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.bk
  %i.dj = sdiv exact i64 %i.di, 120
  %i.dk = trunc i64 %i.dj to i32                  ; 4 uses
  %spec.select.i.i331 = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 %i.dk)
  %spec.select5.i.i332 = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.dk) ; 2 uses
  %i.dl = add nsw i32 %spec.select5.i.i332, 1
  %i.dm = mul nsw i32 %i.dl, %spec.select5.i.i332
  %i.dn = sdiv i32 %i.dm, 2
  %i.do = add nsw i32 %i.dn, %spec.select.i.i331
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.sroa.8481.0, i64 %i.dp
  store i32 -1, ptr %i.dq, align 4, !tbaa !4
  %spec.select.i.i333 = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.cs)
  %spec.select5.i.i334 = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 %i.cs) ; 2 uses
  %i.dr = add nsw i32 %spec.select5.i.i334, 1
  %i.ds = mul nsw i32 %i.dr, %spec.select5.i.i334
  %i.dt = sdiv i32 %i.ds, 2
  %i.du = add nsw i32 %i.dt, %spec.select.i.i333
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %.sroa.8481.0, i64 %i.dv
  store i32 -1, ptr %i.dw, align 4, !tbaa !4
  %indvars.iv.next609 = add nuw nsw i64 %indvars.iv608, 1 ; 2 uses
  %i.dx = load i32, ptr %i.bf, align 4, !tbaa !118
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next609, %i.dy
  br i1 %i.dz, label %bb.k, label %.preheader541

.loopexit540:                                     ; preds = %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread, %bb.l
  %indvars.iv.next612 = add nuw nsw i64 %indvars.iv611, 1
  %exitcond620.not = icmp eq i64 %indvars.iv.next617, %wide.trip.count619
  br i1 %exitcond620.not, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.lr.ph568, %.loopexit540
  %indvars.iv616 = phi i64 [ 0, %.lr.ph568 ], [ %indvars.iv.next617, %.loopexit540 ] ; 3 uses
  %indvars.iv611 = phi i64 [ 1, %.lr.ph568 ], [ %indvars.iv.next612, %.loopexit540 ] ; 2 uses
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv616, 1 ; 3 uses
  %i.ea = icmp samesign ult i64 %indvars.iv.next617, %i.cl
  br i1 %i.ea, label %.lr.ph564, label %.loopexit540

.lr.ph564:                                        ; preds = %bb.l
  %9 = trunc nuw nsw i64 %indvars.iv616 to i32    ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph564, %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread
  %indvars.iv613 = phi i64 [ %indvars.iv611, %.lr.ph564 ], [ %indvars.iv.next614, %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread ] ; 3 uses
  %10 = trunc nuw nsw i64 %indvars.iv613 to i32   ; 2 uses
  %spec.select.i.i335 = call i32 @llvm.smin.i32(i32 %9, i32 %10)
  %spec.select5.i.i336 = call i32 @llvm.smax.i32(i32 %9, i32 %10) ; 2 uses
  %11 = add nuw nsw i32 %spec.select5.i.i336, 1
  %12 = mul nuw nsw i32 %11, %spec.select5.i.i336
  %13 = lshr i32 %12, 1
  %14 = add nuw nsw i32 %13, %spec.select.i.i335
  %15 = zext nneg i32 %14 to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8481.0, i64 %15 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %bb.n, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %i.ef = getelementptr inbounds nuw [120 x i8], ptr %i.ee, i64 %indvars.iv616 ; 5 uses
  %i.eg = getelementptr inbounds nuw [120 x i8], ptr %i.ee, i64 %indvars.iv613 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 3 uses
  %i.ej = load ptr, ptr %1, align 8, !tbaa !8
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = invoke noundef float %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.eh)
          to label %.noexc unwind label %_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread748, !inline_history !465 ; 3 uses

.noexc:                                           ; preds = %bb.n
  %i.em = load ptr, ptr %1, align 8, !tbaa !8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef float %i.en(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ei)
          to label %.noexc337 unwind label %_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread748, !inline_history !465 ; 3 uses

.noexc337:                                        ; preds = %.noexc
  %i.ep = fcmp ogt float %i.el, %i.eo
  br i1 %i.ep, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc337
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.noexc337
  %.sroa.7.0.i = phi float [ 0.000000e+00, %bb.o ], [ 1.000000e+00, %.noexc337 ]
  %.sroa.042.0.i = phi float [ 1.000000e+00, %bb.o ], [ 0.000000e+00, %.noexc337 ]
  %.sroa.9.0.i = phi float [ %i.el, %bb.o ], [ %i.eo, %.noexc337 ] ; 2 uses
  %.sroa.0.0.i = phi float [ %i.eo, %bb.o ], [ %i.el, %.noexc337 ] ; 2 uses
  %i.eq = fcmp ogt float %.sroa.0.0.i, %i.ci
  %i.er = fcmp olt float %.sroa.9.0.i, %2
  %or.cond35.i = or i1 %i.er, %i.eq
  br i1 %or.cond35.i, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.preheader.i
  %.02964.i = phi i32 [ 0, %.preheader.i ], [ %i.fs, %bb.u ]
  %.sroa.0.163.i = phi float [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.0.2.ph.i, %bb.u ] ; 3 uses
  %.sroa.9.162.i = phi float [ %.sroa.9.0.i, %.preheader.i ], [ %.sroa.9.2.ph.i, %bb.u ] ; 2 uses
  %.sroa.042.161.i = phi float [ %.sroa.042.0.i, %.preheader.i ], [ %.sroa.042.2.ph.i, %bb.u ] ; 3 uses
  %.sroa.7.160.i = phi float [ %.sroa.7.0.i, %.preheader.i ], [ %.sroa.7.2.ph.i, %bb.u ] ; 2 uses
  %i.eu = fsub float %.sroa.0.163.i, %.sroa.9.162.i
  %i.ev = fdiv float %.sroa.0.163.i, %i.eu
  %i.ew = fsub float %.sroa.7.160.i, %.sroa.042.161.i
  %i.ex = call noundef float @llvm.fmuladd.f32(float %i.ew, float %i.ev, float %.sroa.042.161.i) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ey = load float, ptr %i.es, align 4, !tbaa !159
  %i.ez = load float, ptr %i.et, align 4, !tbaa !159 ; 2 uses
  %i.fa = fsub float %i.ey, %i.ez
  %i.fb = fmul float %i.ex, %i.fa
  %i.fc = load <2 x float>, ptr %i.ei, align 4, !tbaa !159
  %i.fd = load <2 x float>, ptr %i.eh, align 4, !tbaa !159 ; 2 uses
  %i.fe = fsub <2 x float> %i.fc, %i.fd
  %i.ff = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fh = fmul <2 x float> %i.fg, %i.fe
  %i.fi = fadd <2 x float> %i.fd, %i.fh
  %i.fj = fadd float %i.ez, %i.fb
  %.sroa.3.12.vec.insert.i10.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fj, i64 0
  store <2 x float> %i.fi, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i.i, ptr %i.cj, align 8
  %i.fk = load ptr, ptr %1, align 8, !tbaa !8
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef float %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %.noexc338 unwind label %.loopexit539, !inline_history !465 ; 4 uses

.noexc338:                                        ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.fn = fcmp ole float %i.ex, 0.000000e+00
  %i.fo = fcmp oge float %i.ex, 1.000000e+00
  %or.cond.i = or i1 %i.fn, %i.fo
  br i1 %or.cond.i, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread, label %bb.r

bb.r:                                             ; preds = %.noexc338
  %i.fp = call noundef float @llvm.fabs.f32(float %i.fm)
  %i.fq = fcmp olt float %i.fp, %2
  br i1 %i.fq, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fr = fcmp olt float %i.fm, 0.000000e+00
  br i1 %i.fr, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.7.2.ph.i = phi float [ %.sroa.7.160.i, %bb.s ], [ %i.ex, %bb.t ]
  %.sroa.042.2.ph.i = phi float [ %i.ex, %bb.s ], [ %.sroa.042.161.i, %bb.t ]
  %.sroa.9.2.ph.i = phi float [ %.sroa.9.162.i, %bb.s ], [ %i.fm, %bb.t ]
  %.sroa.0.2.ph.i = phi float [ %i.fm, %bb.s ], [ %.sroa.0.163.i, %bb.t ]
  %i.fs = add nuw nsw i32 %.02964.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fs, 256
  br i1 %exitcond.not.i, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread, label %bb.q

_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit: ; preds = %bb.r
  %i.ft = fcmp ogt float %i.ex, 0.000000e+00
  br i1 %i.ft, label %bb.v, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread

bb.v:                                             ; preds = %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.fu = load float, ptr %i.es, align 4, !tbaa !159
  %i.fv = load float, ptr %i.et, align 4, !tbaa !159 ; 2 uses
  %i.fw = fsub float %i.fu, %i.fv
  %i.fx = fmul float %i.ex, %i.fw
  %i.fy = load <2 x float>, ptr %i.ei, align 4, !tbaa !159
  %i.fz = load <2 x float>, ptr %i.eh, align 4, !tbaa !159 ; 2 uses
  %i.ga = fsub <2 x float> %i.fy, %i.fz
  %i.gb = fmul <2 x float> %i.fg, %i.ga
  %i.gc = fadd <2 x float> %i.fz, %i.gb
  %i.gd = fadd float %i.fv, %i.fx
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gd, i64 0
  store <2 x float> %i.gc, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.ck, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !159
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !159 ; 2 uses
  %i.gk = fsub float %i.gh, %i.gj
  %i.gl = fmul float %i.ex, %i.gk
  %i.gm = load <2 x float>, ptr %i.gf, align 4, !tbaa !159
  %i.gn = load <2 x float>, ptr %i.ge, align 4, !tbaa !159 ; 2 uses
  %i.go = fsub <2 x float> %i.gm, %i.gn
  %i.gp = fmul <2 x float> %i.fg, %i.go
  %i.gq = fadd <2 x float> %i.gn, %i.gp
  %i.gr = fadd float %i.gj, %i.gl
  %.sroa.3.12.vec.insert.i10.i341 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gr, i64 0
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ef, i64 96 ; 3 uses
  %i.gt = load float, ptr %i.gs, align 8, !tbaa !199 ; 3 uses
  %i.gu = fcmp ogt float %i.gt, 0.000000e+00
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eg, i64 96 ; 3 uses
  %i.gw = load float, ptr %i.gv, align 8, !tbaa !199 ; 3 uses
  %i.gx = fcmp ogt float %i.gw, 0.000000e+00      ; 2 uses
  br i1 %i.gu, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  br i1 %i.gx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gy = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.gz = insertelement <2 x float> %i.gy, float %i.gt, i64 1
  %i.ha = fdiv <2 x float> splat (float 1.000000e+00), %i.gz ; 3 uses
  %i.hb = extractelement <2 x float> %i.ha, i64 1 ; 3 uses
  %i.hc = extractelement <2 x float> %i.ha, i64 0 ; 2 uses
  %i.hd = fsub float %i.hc, %i.hb
  %i.he = call noundef float @llvm.fmuladd.f32(float %i.hd, float %i.ex, float %i.hb) ; 2 uses
  %i.hf = fadd float %i.hb, %i.hc                 ; 2 uses
  %i.hg = fadd float %i.hf, %i.he
  %i.hh = fdiv float %i.hf, %i.hg                 ; 2 uses
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x float> %i.ha, %i.hj
  %i.hl = fdiv <2 x float> splat (float 1.000000e+00), %i.hk ; 2 uses
  %i.hm = extractelement <2 x float> %i.hl, i64 1
  store float %i.hm, ptr %i.gs, align 8, !tbaa !199
  %i.hn = extractelement <2 x float> %i.hl, i64 0
  store float %i.hn, ptr %i.gv, align 8, !tbaa !199
  %i.ho = fmul float %i.he, %i.hh
  br label %bb.ab

.loopexit539:                                     ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit409

_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread748: ; preds = %.noexc, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread

bb.y:                                             ; preds = %bb.w
  %i.hp = fmul nnan float %i.gt, 2.000000e+00     ; 2 uses
  store float %i.hp, ptr %i.gs, align 8, !tbaa !199
  %i.hq = fdiv float 1.000000e+00, %i.hp
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  br i1 %i.gx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hr = fmul nnan float %i.gw, 2.000000e+00     ; 2 uses
  store float %i.hr, ptr %i.gv, align 8, !tbaa !199
  %i.hs = fdiv float 1.000000e+00, %i.hr
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x, %bb.y
  %.0276 = phi float [ %i.ho, %bb.x ], [ %i.hq, %bb.y ], [ %i.hs, %bb.aa ], [ 0.000000e+00, %bb.z ]
  invoke void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %.0276)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ht = load i32, ptr %i.c, align 4, !tbaa !110
  %i.hu = add nsw i32 %i.ht, -1                   ; 2 uses
  store i32 %i.hu, ptr %i.eb, align 4, !tbaa !4
  %i.hv = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.hw = sext i32 %i.hu to i64
  %i.hx = getelementptr inbounds [120 x i8], ptr %i.hv, i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  store <2 x float> %i.gq, ptr %i.hy, align 8
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i10.i341, ptr %.sroa.5108.0..sroa_idx, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit409

_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread: ; preds = %bb.u, %.noexc338, %bb.p, %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit, %bb.ac, %bb.m
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next614, %wide.trip.count619
  br i1 %exitcond.not, label %.loopexit540, label %bb.m

._crit_edge:                                      ; preds = %.loopexit540, %.preheader541
  %i.ia = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %i.ib = load i32, ptr %i.p, align 4, !tbaa !114 ; 2 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph571, label %.preheader538

.lr.ph571:                                        ; preds = %._crit_edge
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.ie = ptrtoint ptr %i.ia to i64               ; 2 uses
  %wide.trip.count624 = zext nneg i32 %i.ib to i64
  %.pre673 = load ptr, ptr %i.id, align 8, !tbaa !113
  br label %bb.ae

.preheader538:                                    ; preds = %bb.aj, %._crit_edge
  %i.if = load i32, ptr %i.bf, align 4, !tbaa !118 ; 2 uses
  %i.ig = icmp sgt i32 %i.if, 0
  br i1 %i.ig, label %.lr.ph577, label %._crit_edge578

.lr.ph577:                                        ; preds = %.preheader538
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 8 uses
  %i.ii = ptrtoint ptr %i.ia to i64               ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 7 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1140
  br label %bb.ak

bb.ae:                                            ; preds = %.lr.ph571, %bb.aj
  %i.iq = phi ptr [ %.pre673, %.lr.ph571 ], [ %i.kk, %bb.aj ] ; 3 uses
  %indvars.iv621 = phi i64 [ 0, %.lr.ph571 ], [ %indvars.iv.next622, %bb.aj ] ; 4 uses
  %i.ir = getelementptr inbounds nuw [72 x i8], ptr %i.iq, i64 %indvars.iv621 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !251
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = sub i64 %i.iu, %i.ie
  %i.iw = sdiv exact i64 %i.iv, 120               ; 2 uses
  %i.ix = trunc i64 %i.iw to i32                  ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !251
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = sub i64 %i.ja, %i.ie
  %i.jc = sdiv exact i64 %i.jb, 120               ; 2 uses
  %i.jd = trunc i64 %i.jc to i32                  ; 3 uses
  %i.je = icmp sgt i32 %i.d, %i.ix
  %i.jf = icmp sgt i32 %i.d, %i.jd
  %or.cond325 = select i1 %i.je, i1 %i.jf, i1 false
  br i1 %or.cond325, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %spec.select.i.i348 = call i32 @llvm.smin.i32(i32 %i.ix, i32 %i.jd)
  %spec.select5.i.i349 = call i32 @llvm.smax.i32(i32 %i.ix, i32 %i.jd) ; 2 uses
  %i.jg = add nsw i32 %spec.select5.i.i349, 1
  %i.jh = mul nsw i32 %i.jg, %spec.select5.i.i349
  %i.ji = sdiv i32 %i.jh, 2
  %i.jj = add nsw i32 %i.ji, %spec.select.i.i348
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %.sroa.8481.0, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !4  ; 2 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.jo = trunc nuw nsw i64 %indvars.iv621 to i32
  invoke void @_ZN10btSoftBody10appendLinkEiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %i.jo, ptr noundef null)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jp = load ptr, ptr %i.id, align 8, !tbaa !113 ; 3 uses
  %i.jq = getelementptr inbounds nuw [72 x i8], ptr %i.jp, i64 %indvars.iv621 ; 2 uses
  %i.jr = load i32, ptr %i.p, align 4, !tbaa !114
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr [72 x i8], ptr %i.jp, i64 %i.js ; 2 uses
  %i.ju = load ptr, ptr %i.a, align 8, !tbaa !109
  %sext532 = shl i64 %i.iw, 32
  %i.jv = ashr exact i64 %sext532, 32
  %i.jw = getelementptr inbounds [120 x i8], ptr %i.ju, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !251
  %i.jy = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.jz = zext nneg i32 %i.jm to i64              ; 2 uses
  %i.ka = getelementptr inbounds nuw [120 x i8], ptr %i.jy, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  store ptr %i.ka, ptr %i.kb, align 8, !tbaa !251
  %i.kc = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.kd = getelementptr inbounds nuw [120 x i8], ptr %i.kc, i64 %i.jz
  %i.ke = getelementptr i8, ptr %i.jt, i64 -56
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !251
  %i.kf = load ptr, ptr %i.a, align 8, !tbaa !109
  %sext533 = shl i64 %i.jc, 32
  %i.kg = ashr exact i64 %sext533, 32
  %i.kh = getelementptr inbounds [120 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = getelementptr i8, ptr %i.jt, i64 -48
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !251
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit409.thread

bb.aj:                                            ; preds = %bb.af, %bb.ah, %bb.ae
  %i.kk = phi ptr [ %i.iq, %bb.af ], [ %i.jp, %bb.ah ], [ %i.iq, %bb.ae ]
  %indvars.iv.next622 = add nuw nsw i64 %indvars.iv621, 1 ; 2 uses
  %exitcond625.not = icmp eq i64 %indvars.iv.next622, %wide.trip.count624
  br i1 %exitcond625.not, label %.preheader538, label %bb.ae

bb.ak:                                            ; preds = %.lr.ph577, %.loopexit537
  %i.kl = phi i32 [ %i.if, %.lr.ph577 ], [ %i.ru, %.loopexit537 ] ; 2 uses
  %.6576 = phi i32 [ 0, %.lr.ph577 ], [ %.10, %.loopexit537 ] ; 5 uses
  %i.km = load ptr, ptr %i.ih, align 8, !tbaa !117 ; 2 uses
  %i.kn = sext i32 %.6576 to i64                  ; 2 uses
  %i.ko = getelementptr inbounds [72 x i8], ptr %i.km, i64 %i.kn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !251
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = sub i64 %i.kr, %i.ii
  %i.kt = sdiv exact i64 %i.ks, 120
  %i.ku = trunc i64 %i.kt to i32                  ; 7 uses
  store i32 %i.ku, ptr %.sroa.0, align 4, !tbaa !4
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !251
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = sub i64 %i.kx, %i.ii
  %i.kz = sdiv exact i64 %i.ky, 120
  %i.la = trunc i64 %i.kz to i32                  ; 7 uses
  store i32 %i.la, ptr %.sroa.7, align 4, !tbaa !4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !251
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = sub i64 %i.ld, %i.ii
  %i.lf = sdiv exact i64 %i.le, 120
  %i.lg = trunc i64 %i.lf to i32                  ; 6 uses
  store i32 %i.lg, ptr %.sroa.11, align 4, !tbaa !4
  %i.lh = icmp sgt i32 %i.d, %i.lg                ; 2 uses
  %i.li = icmp sgt i32 %i.d, %i.ku
  %or.cond753 = select i1 %i.lh, i1 %i.li, i1 false
  br i1 %or.cond753, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %spec.select.i.i350 = call i32 @llvm.smin.i32(i32 %i.lg, i32 %i.ku)
  %spec.select5.i.i351 = call i32 @llvm.smax.i32(i32 %i.lg, i32 %i.ku) ; 2 uses
  %i.lj = add nsw i32 %spec.select5.i.i351, 1
  %i.lk = mul nsw i32 %i.lj, %spec.select5.i.i351
  %i.ll = sdiv i32 %i.lk, 2
  %i.lm = add nsw i32 %i.ll, %spec.select.i.i350
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr %.sroa.8481.0, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !4  ; 2 uses
  %i.lq = icmp sgt i32 %i.lp, 0
  br i1 %i.lq, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.bo, %bb.bn, %bb.al
  %.cmp.not.sroa.phi = phi ptr [ %.sroa.7, %bb.al ], [ %.sroa.11, %bb.bn ], [ %.sroa.0, %bb.bo ]
  %.lcssa601.sroa.phi = phi ptr [ %.sroa.11, %bb.al ], [ %.sroa.0, %bb.bn ], [ %.sroa.7, %bb.bo ]
  %.lcssa600 = phi i32 [ %i.lp, %bb.al ], [ %i.ri, %bb.bn ], [ %i.rr, %bb.bo ]
  %.lcssa.sroa.phi = phi ptr [ %.sroa.0, %bb.al ], [ %.sroa.7, %bb.bn ], [ %.sroa.11, %bb.bo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.lr = icmp sgt i32 %.6576, -1
  br i1 %i.lr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ls = zext nneg i32 %.6576 to i64
  %i.lt = getelementptr inbounds nuw [72 x i8], ptr %i.km, i64 %i.ls ; 2 uses
  %i.lu = load <2 x ptr>, ptr %i.lt, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i, i64 56, i1 false)
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.lv = load atomic i8, ptr @_ZGVZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy acquire, align 8
  %i.lw = icmp eq i8 %i.lv, 0
  br i1 %i.lw, label %bb.ap, label %_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit.i, !prof !196

bb.ap:                                            ; preds = %bb.ao
  %i.lx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy) #34
  %.not.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not.i.i, label %_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr null, ptr @_ZZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy, align 8, !tbaa !197
  %i.ly = call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy) #34
  br label %_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit.i

_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.0.0.copyload5.i = load ptr, ptr @_ZZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy, i64 16), i64 56, i1 false)
  %i.lz = load ptr, ptr %i.ij, align 8, !tbaa !141
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !245
  %.pre674 = load i32, ptr %i.bf, align 4, !tbaa !118
  %i.mb = insertelement <2 x ptr> poison, ptr %.sroa.0.0.copyload5.i, i64 0
end_hunk_0
