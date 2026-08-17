inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 250
begin_hunk_0_@_ZN10btSoftBody6refineEPNS_10ImplicitFnEfb:bb.a
  br i1 %i.bc, label %.lr.ph467, label %.preheader450

.lr.ph467:                                        ; preds = %.preheader451
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !148
  %i.bf = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !220
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bh = phi i32 [ %i.az, %.lr.ph ], [ %i.co, %bb.l ]
  %.0242465 = phi i32 [ 0, %.lr.ph ], [ %i.cp, %bb.l ] ; 4 uses
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !148
  %i.bj = sext i32 %.0242465 to i64               ; 2 uses
  %i.bk = getelementptr inbounds [72 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  %i.bm = load i8, ptr %i.bl, align 4
  %i.bn = and i8 %i.bm, 1
  %.not320 = icmp eq i8 %i.bn, 0
  br i1 %.not320, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !345
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %1, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef float %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.bq)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !345
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %1, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef float %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.bx)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.cc = fmul float %i.bu, %i.cb
  %i.cd = fcmp ogt float %i.cc, 0.000000e+00
  %.pre = load i32, ptr %i.ay, align 4, !tbaa !149 ; 2 uses
  br i1 %i.cd, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = load ptr, ptr %i.bb, align 8, !tbaa !148 ; 2 uses
  %i.cf = getelementptr inbounds [72 x i8], ptr %i.ce, i64 %i.bj ; 2 uses
  %i.cg = sext i32 %.pre to i64
  %i.ch = getelementptr [72 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -72    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.cf, i64 72, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cf, ptr noundef nonnull align 8 dereferenceable(68) %i.ci, i64 68, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.ci, ptr noundef nonnull align 8 dereferenceable(68) %6, i64 68, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cj = load i32, ptr %i.ay, align 4, !tbaa !149
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.ay, align 4, !tbaa !149
  %i.cl = add nsw i32 %.0242465, -1
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.k:                                             ; preds = %bb.g
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.e
  %i.co = phi i32 [ %i.ck, %bb.i ], [ %.pre, %bb.h ], [ %i.bh, %bb.e ] ; 3 uses
  %.1243 = phi i32 [ %i.cl, %bb.i ], [ %.0242465, %bb.h ], [ %.0242465, %bb.e ]
  %i.cp = add nsw i32 %.1243, 1                   ; 2 uses
  %i.cq = icmp slt i32 %i.cp, %i.co
  br i1 %i.cq, label %bb.e, label %.preheader451, !llvm.loop !842

.preheader450:                                    ; preds = %bb.m, %_ZN11btSymMatrixIiEC2EiRKi.exit, %.preheader451
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 10 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !153
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph469, label %.preheader449

.lr.ph469:                                        ; preds = %.preheader450
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !152
  %i.cw = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !220 ; 3 uses
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph467, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph467 ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [72 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !345
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.bf
  %i.dd = lshr exact i64 %i.dc, 8
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !345
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.bf
  %i.dj = lshr exact i64 %i.di, 8
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.de, i32 %i.dk)
  %spec.select5.i.i = tail call i32 @llvm.smax.i32(i32 %i.de, i32 %i.dk) ; 2 uses
  %i.dl = add nsw i32 %spec.select5.i.i, 1
  %i.dm = mul nsw i32 %i.dl, %spec.select5.i.i
  %i.dn = sdiv i32 %i.dm, 2
  %i.do = add nsw i32 %i.dn, %spec.select.i.i
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.dp
  store i32 -1, ptr %i.dq, align 4, !tbaa !257
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dr = load i32, ptr %i.ay, align 4, !tbaa !149
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next, %i.ds
  br i1 %i.dt, label %bb.m, label %.preheader450, !llvm.loop !843

.preheader449:                                    ; preds = %bb.n, %.preheader450
  %i.du = icmp sgt i32 %i.d, 0
  br i1 %i.du, label %.lr.ph476, label %._crit_edge

.lr.ph476:                                        ; preds = %.preheader449
  %i.dv = fneg float %2
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dy = zext nneg i32 %i.d to i64
  %wide.trip.count527 = zext nneg i32 %i.d to i64 ; 2 uses
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph469, %bb.n
  %indvars.iv516 = phi i64 [ 0, %.lr.ph469 ], [ %indvars.iv.next517, %bb.n ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [144 x i8], ptr %i.cv, i64 %indvars.iv516 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !345
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = sub i64 %i.ec, %i.cw
  %i.ee = lshr exact i64 %i.ed, 8
  %i.ef = trunc i64 %i.ee to i32                  ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !345
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.cw
  %i.ek = lshr exact i64 %i.ej, 8
  %i.el = trunc i64 %i.ek to i32                  ; 4 uses
  %spec.select.i.i328 = tail call i32 @llvm.smin.i32(i32 %i.ef, i32 %i.el)
  %spec.select5.i.i329 = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 %i.el) ; 2 uses
  %i.em = add nsw i32 %spec.select5.i.i329, 1
  %i.en = mul nsw i32 %i.em, %spec.select5.i.i329
  %i.eo = sdiv i32 %i.en, 2
  %i.ep = add nsw i32 %i.eo, %spec.select.i.i328
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.eq
  store i32 -1, ptr %i.er, align 4, !tbaa !257
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !345
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.eu, %i.cw
  %i.ew = lshr exact i64 %i.ev, 8
  %i.ex = trunc i64 %i.ew to i32                  ; 4 uses
  %spec.select.i.i330 = tail call i32 @llvm.smin.i32(i32 %i.el, i32 %i.ex)
  %spec.select5.i.i331 = tail call i32 @llvm.smax.i32(i32 %i.el, i32 %i.ex) ; 2 uses
  %i.ey = add nsw i32 %spec.select5.i.i331, 1
  %i.ez = mul nsw i32 %i.ey, %spec.select5.i.i331
  %i.fa = sdiv i32 %i.ez, 2
  %i.fb = add nsw i32 %i.fa, %spec.select.i.i330
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.fc
  store i32 -1, ptr %i.fd, align 4, !tbaa !257
  %spec.select.i.i332 = tail call i32 @llvm.smin.i32(i32 %i.ex, i32 %i.ef)
  %spec.select5.i.i333 = tail call i32 @llvm.smax.i32(i32 %i.ex, i32 %i.ef) ; 2 uses
  %i.fe = add nsw i32 %spec.select5.i.i333, 1
  %i.ff = mul nsw i32 %i.fe, %spec.select5.i.i333
  %i.fg = sdiv i32 %i.ff, 2
  %i.fh = add nsw i32 %i.fg, %spec.select.i.i332
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.fi
  store i32 -1, ptr %i.fj, align 4, !tbaa !257
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %i.fk = load i32, ptr %i.cr, align 4, !tbaa !153
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp slt i64 %indvars.iv.next517, %i.fl
  br i1 %i.fm, label %bb.n, label %.preheader449, !llvm.loop !844

.loopexit448:                                     ; preds = %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread, %bb.o
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1
  %exitcond528.not = icmp eq i64 %indvars.iv.next525, %wide.trip.count527
  br i1 %exitcond528.not, label %._crit_edge, label %bb.o, !llvm.loop !845

bb.o:                                             ; preds = %.lr.ph476, %.loopexit448
  %indvars.iv524 = phi i64 [ 0, %.lr.ph476 ], [ %indvars.iv.next525, %.loopexit448 ] ; 3 uses
  %indvars.iv519 = phi i64 [ 1, %.lr.ph476 ], [ %indvars.iv.next520, %.loopexit448 ] ; 2 uses
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 3 uses
  %i.fn = icmp samesign ult i64 %indvars.iv.next525, %i.dy
  br i1 %i.fn, label %bb.p, label %.loopexit448

bb.p:                                             ; preds = %bb.o, %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread ], [ %indvars.iv519, %bb.o ] ; 4 uses
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %13 = add nuw i64 %indvars.iv521, 1
  %14 = mul i64 %13, %indvars.iv521
  %15 = lshr i64 %14, 1
  %16 = and i64 %15, 2147483647
  %17 = add nuw nsw i64 %16, %indvars.iv524       ; 2 uses
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !220
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %17
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !257
  %i.fr = icmp eq i32 %i.fq, -1
  br i1 %i.fr, label %bb.q, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !140 ; 2 uses
  %i.ft = getelementptr inbounds nuw [256 x i8], ptr %i.fs, i64 %indvars.iv524 ; 5 uses
  %i.fu = getelementptr inbounds nuw [256 x i8], ptr %i.fs, i64 %indvars.iv521 ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 3 uses
  %i.fx = load ptr, ptr %1, align 8, !tbaa !9
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = invoke noundef float %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.fv)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !846 ; 3 uses

.noexc:                                           ; preds = %bb.q
  %i.gb = load ptr, ptr %1, align 8, !tbaa !9
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = invoke noundef float %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.fw)
          to label %.noexc336 unwind label %.loopexit.split-lp, !inline_history !846 ; 3 uses

.noexc336:                                        ; preds = %.noexc
  %i.gf = fcmp ogt float %i.ga, %i.ge
  br i1 %i.gf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc336
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc336
  %.sroa.7.0.i = phi float [ 0.000000e+00, %bb.r ], [ 1.000000e+00, %.noexc336 ]
  %.sroa.042.0.i = phi float [ 1.000000e+00, %bb.r ], [ 0.000000e+00, %.noexc336 ]
  %.sroa.9.0.i = phi float [ %i.ga, %bb.r ], [ %i.ge, %.noexc336 ] ; 2 uses
  %.sroa.0.0.i = phi float [ %i.ge, %bb.r ], [ %i.ga, %.noexc336 ] ; 2 uses
  %i.gg = fcmp ogt float %.sroa.0.0.i, %i.dv
  %i.gh = fcmp olt float %.sroa.9.0.i, %2
  %or.cond35.i = or i1 %i.gh, %i.gg
  br i1 %or.cond35.i, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fu, i64 24 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.preheader.i
  %.02964.i = phi i32 [ 0, %.preheader.i ], [ %i.hj, %bb.x ]
  %.sroa.0.163.i = phi float [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.0.2.ph.i, %bb.x ] ; 3 uses
  %.sroa.9.162.i = phi float [ %.sroa.9.0.i, %.preheader.i ], [ %.sroa.9.2.ph.i, %bb.x ] ; 2 uses
  %.sroa.042.161.i = phi float [ %.sroa.042.0.i, %.preheader.i ], [ %.sroa.042.2.ph.i, %bb.x ] ; 3 uses
  %.sroa.7.160.i = phi float [ %.sroa.7.0.i, %.preheader.i ], [ %.sroa.7.2.ph.i, %bb.x ] ; 2 uses
  %i.gk = fsub float %.sroa.0.163.i, %.sroa.9.162.i
  %i.gl = fdiv float %.sroa.0.163.i, %i.gk
  %i.gm = fsub float %.sroa.7.160.i, %.sroa.042.161.i
  %i.gn = call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.gl, float %.sroa.042.161.i) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.go = load float, ptr %i.gi, align 4, !tbaa !223
  %i.gp = load float, ptr %i.gj, align 4, !tbaa !223 ; 2 uses
  %i.gq = fsub float %i.go, %i.gp
  %i.gr = fmul float %i.gn, %i.gq
  %i.gs = load <2 x float>, ptr %i.fw, align 4, !tbaa !223
  %i.gt = load <2 x float>, ptr %i.fv, align 4, !tbaa !223 ; 2 uses
  %i.gu = fsub <2 x float> %i.gs, %i.gt
  %i.gv = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gx = fmul <2 x float> %i.gw, %i.gu
  %i.gy = fadd <2 x float> %i.gt, %i.gx
  %i.gz = fadd float %i.gp, %i.gr
  %.sroa.3.12.vec.insert.i10.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gz, i64 0
  store <2 x float> %i.gy, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i.i, ptr %i.dw, align 8
  %i.ha = load ptr, ptr %1, align 8, !tbaa !9
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = invoke noundef float %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %.noexc337 unwind label %.loopexit447, !inline_history !846 ; 4 uses

.noexc337:                                        ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.he = fcmp ole float %i.gn, 0.000000e+00
  %i.hf = fcmp oge float %i.gn, 1.000000e+00
  %or.cond.i = or i1 %i.he, %i.hf
  br i1 %or.cond.i, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread, label %bb.u

bb.u:                                             ; preds = %.noexc337
  %i.hg = call noundef float @llvm.fabs.f32(float %i.hd)
  %i.hh = fcmp olt float %i.hg, %2
  br i1 %i.hh, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hi = fcmp olt float %i.hd, 0.000000e+00
  br i1 %i.hi, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.7.2.ph.i = phi float [ %.sroa.7.160.i, %bb.v ], [ %i.gn, %bb.w ]
  %.sroa.042.2.ph.i = phi float [ %i.gn, %bb.v ], [ %.sroa.042.161.i, %bb.w ]
  %.sroa.9.2.ph.i = phi float [ %.sroa.9.162.i, %bb.v ], [ %i.hd, %bb.w ]
  %.sroa.0.2.ph.i = phi float [ %i.hd, %bb.v ], [ %.sroa.0.163.i, %bb.w ]
  %i.hj = add nuw nsw i32 %.02964.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hj, 256
  br i1 %exitcond.not.i, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread, label %bb.t, !llvm.loop !847

_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit: ; preds = %bb.u
  %i.hk = fcmp ogt float %i.gn, 0.000000e+00
  br i1 %i.hk, label %bb.y, label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread

bb.y:                                             ; preds = %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.hl = load float, ptr %i.gi, align 4, !tbaa !223
  %i.hm = load float, ptr %i.gj, align 4, !tbaa !223 ; 2 uses
  %i.hn = fsub float %i.hl, %i.hm
  %i.ho = fmul float %i.gn, %i.hn
  %i.hp = load <2 x float>, ptr %i.fw, align 4, !tbaa !223
  %i.hq = load <2 x float>, ptr %i.fv, align 4, !tbaa !223 ; 2 uses
  %i.hr = fsub <2 x float> %i.hp, %i.hq
  %i.hs = fmul <2 x float> %i.gw, %i.hr
  %i.ht = fadd <2 x float> %i.hq, %i.hs
  %i.hu = fadd float %i.hm, %i.ho
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hu, i64 0
  store <2 x float> %i.ht, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.dx, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !223
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !223 ; 2 uses
  %i.ib = fsub float %i.hy, %i.ia
  %i.ic = fmul float %i.gn, %i.ib
  %i.id = load <2 x float>, ptr %i.hw, align 4, !tbaa !223
  %i.ie = load <2 x float>, ptr %i.hv, align 4, !tbaa !223 ; 2 uses
  %i.if = fsub <2 x float> %i.id, %i.ie
  %i.ig = fmul <2 x float> %i.gw, %i.if
  %i.ih = fadd <2 x float> %i.ie, %i.ig
  %i.ii = fadd float %i.ia, %i.ic
  %.sroa.3.12.vec.insert.i10.i340 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ii, i64 0
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ft, i64 112 ; 3 uses
  %i.ik = load float, ptr %i.ij, align 8, !tbaa !239 ; 3 uses
  %i.il = fcmp ogt float %i.ik, 0.000000e+00
  %i.im = getelementptr inbounds nuw i8, ptr %i.fu, i64 112 ; 3 uses
  %i.in = load float, ptr %i.im, align 8, !tbaa !239 ; 3 uses
  %i.io = fcmp ogt float %i.in, 0.000000e+00      ; 2 uses
  br i1 %i.il, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %i.io, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ip = insertelement <2 x float> poison, float %i.in, i64 0
  %i.iq = insertelement <2 x float> %i.ip, float %i.ik, i64 1
  %i.ir = fdiv <2 x float> splat (float 1.000000e+00), %i.iq ; 3 uses
  %i.is = extractelement <2 x float> %i.ir, i64 1 ; 3 uses
  %i.it = extractelement <2 x float> %i.ir, i64 0 ; 2 uses
  %i.iu = fsub float %i.it, %i.is
  %i.iv = call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.gn, float %i.is) ; 2 uses
  %i.iw = fadd float %i.is, %i.it                 ; 2 uses
  %i.ix = fadd float %i.iw, %i.iv
  %i.iy = fdiv float %i.iw, %i.ix                 ; 2 uses
  %i.iz = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x float> %i.ir, %i.ja
  %i.jc = fdiv <2 x float> splat (float 1.000000e+00), %i.jb ; 2 uses
  %i.jd = extractelement <2 x float> %i.jc, i64 1
  store float %i.jd, ptr %i.ij, align 8, !tbaa !239
  %i.je = extractelement <2 x float> %i.jc, i64 0
  store float %i.je, ptr %i.im, align 8, !tbaa !239
  %i.jf = fmul float %i.iv, %i.iy
  br label %bb.ae

.loopexit447:                                     ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

.loopexit.split-lp:                               ; preds = %bb.q, %.noexc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ab:                                            ; preds = %bb.z
  %i.jg = fmul nnan float %i.ik, 2.000000e+00     ; 2 uses
  store float %i.jg, ptr %i.ij, align 8, !tbaa !239
  %i.jh = fdiv float 1.000000e+00, %i.jg
  br label %bb.ae

bb.ac:                                            ; preds = %bb.y
  br i1 %i.io, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ji = fmul nnan float %i.in, 2.000000e+00     ; 2 uses
  store float %i.ji, ptr %i.im, align 8, !tbaa !239
  %i.jj = fdiv float 1.000000e+00, %i.ji
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa, %bb.ab
  %.0276 = phi float [ %i.jf, %bb.aa ], [ %i.jh, %bb.ab ], [ %i.jj, %bb.ad ], [ 0.000000e+00, %bb.ac ]
  invoke void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %.0276)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jk = load i32, ptr %i.c, align 4, !tbaa !141
  %i.jl = load ptr, ptr %i.f, align 8, !tbaa !220
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %17
  %i.jn = add nsw i32 %i.jk, -1                   ; 2 uses
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !257
  %i.jo = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.jp = sext i32 %i.jn to i64
  %i.jq = getelementptr inbounds [256 x i8], ptr %i.jo, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  store <2 x float> %i.ih, ptr %i.jr, align 8
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i10.i340, ptr %.sroa.5108.0..sroa_idx, align 8, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.do

_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit.thread: ; preds = %bb.x, %.noexc337, %bb.s, %_ZL13ImplicitSolvePN10btSoftBody10ImplicitFnERK9btVector3S4_fi.exit, %bb.af, %bb.p
  %exitcond.not = icmp eq i64 %indvars.iv.next522, %wide.trip.count527
  br i1 %exitcond.not, label %.loopexit448, label %bb.p, !llvm.loop !848

._crit_edge:                                      ; preds = %.loopexit448, %.preheader449
  %i.jt = load ptr, ptr %i.a, align 8, !tbaa !140 ; 2 uses
  %i.ju = load i32, ptr %i.ay, align 4, !tbaa !149 ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, 0
  br i1 %i.jv, label %.lr.ph479, label %.preheader446

.lr.ph479:                                        ; preds = %._crit_edge
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.jx = ptrtoint ptr %i.jt to i64               ; 2 uses
  %wide.trip.count532 = zext nneg i32 %i.ju to i64
  %.pre577 = load ptr, ptr %i.jw, align 8, !tbaa !148
  br label %bb.ah

.preheader446:                                    ; preds = %bb.am, %._crit_edge
  %i.jy = load i32, ptr %i.cr, align 4, !tbaa !153 ; 2 uses
  %i.jz = icmp sgt i32 %i.jy, 0
  br i1 %i.jz, label %.lr.ph483, label %._crit_edge484

.lr.ph483:                                        ; preds = %.preheader446
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 7 uses
  %i.kb = ptrtoint ptr %i.jt to i64               ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 7 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 1540
  br label %bb.an

bb.ah:                                            ; preds = %.lr.ph479, %bb.am
  %i.kj = phi ptr [ %.pre577, %.lr.ph479 ], [ %i.me, %bb.am ] ; 3 uses
  %indvars.iv529 = phi i64 [ 0, %.lr.ph479 ], [ %indvars.iv.next530, %bb.am ] ; 4 uses
  %i.kk = getelementptr inbounds nuw [72 x i8], ptr %i.kj, i64 %indvars.iv529 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !345
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = sub i64 %i.kn, %i.jx                    ; 2 uses
  %i.kp = lshr exact i64 %i.ko, 8
  %i.kq = trunc i64 %i.kp to i32                  ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !345
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = sub i64 %i.kt, %i.jx                    ; 2 uses
  %i.kv = lshr exact i64 %i.ku, 8
  %i.kw = trunc i64 %i.kv to i32                  ; 3 uses
  %i.kx = icmp sgt i32 %i.d, %i.kq
  %i.ky = icmp sgt i32 %i.d, %i.kw
  %or.cond324 = select i1 %i.kx, i1 %i.ky, i1 false
  br i1 %or.cond324, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %spec.select.i.i347 = call i32 @llvm.smin.i32(i32 %i.kq, i32 %i.kw)
  %spec.select5.i.i348 = call i32 @llvm.smax.i32(i32 %i.kq, i32 %i.kw) ; 2 uses
  %i.kz = add nsw i32 %spec.select5.i.i348, 1
  %i.la = mul nsw i32 %i.kz, %spec.select5.i.i348
  %i.lb = sdiv i32 %i.la, 2
  %i.lc = add nsw i32 %i.lb, %spec.select.i.i347
  %i.ld = load ptr, ptr %i.f, align 8, !tbaa !220
  %i.le = sext i32 %i.lc to i64
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !257 ; 2 uses
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.li = trunc nuw nsw i64 %indvars.iv529 to i32
  invoke void @_ZN10btSoftBody10appendLinkEiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064) %0, i32 noundef %i.li, ptr noundef null)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.lj = load ptr, ptr %i.jw, align 8, !tbaa !148 ; 3 uses
  %i.lk = getelementptr inbounds nuw [72 x i8], ptr %i.lj, i64 %indvars.iv529 ; 2 uses
  %i.ll = load i32, ptr %i.ay, align 4, !tbaa !149
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr [72 x i8], ptr %i.lj, i64 %i.lm ; 2 uses
  %i.lo = load ptr, ptr %i.a, align 8, !tbaa !140
  %sext438 = shl i64 %i.ko, 24
  %i.lp = ashr i64 %sext438, 32
  %i.lq = getelementptr inbounds [256 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  store ptr %i.lq, ptr %i.lr, align 8, !tbaa !345
  %i.ls = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.lt = zext nneg i32 %i.lg to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw [256 x i8], ptr %i.ls, i64 %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !345
  %i.lw = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.lx = getelementptr inbounds nuw [256 x i8], ptr %i.lw, i64 %i.lt
  %i.ly = getelementptr i8, ptr %i.ln, i64 -40
  store ptr %i.lx, ptr %i.ly, align 8, !tbaa !345
  %i.lz = load ptr, ptr %i.a, align 8, !tbaa !140
  %sext439 = shl i64 %i.ku, 24
  %i.ma = ashr i64 %sext439, 32
  %i.mb = getelementptr inbounds [256 x i8], ptr %i.lz, i64 %i.ma
  %i.mc = getelementptr i8, ptr %i.ln, i64 -32
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !345
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.am:                                            ; preds = %bb.ai, %bb.ak, %bb.ah
  %i.me = phi ptr [ %i.kj, %bb.ai ], [ %i.lj, %bb.ak ], [ %i.kj, %bb.ah ]
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %exitcond533.not = icmp eq i64 %indvars.iv.next530, %wide.trip.count532
  br i1 %exitcond533.not, label %.preheader446, label %bb.ah, !llvm.loop !849

bb.an:                                            ; preds = %.lr.ph483, %.loopexit445
  %i.mf = phi i32 [ %i.jy, %.lr.ph483 ], [ %i.ta, %.loopexit445 ] ; 8 uses
  %.6482 = phi i32 [ 0, %.lr.ph483 ], [ %.10, %.loopexit445 ] ; 5 uses
  %i.mg = load ptr, ptr %i.ka, align 8, !tbaa !152 ; 4 uses
  %i.mh = sext i32 %.6482 to i64                  ; 2 uses
  %i.mi = getelementptr inbounds [144 x i8], ptr %i.mg, i64 %i.mh ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !345
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = sub i64 %i.ml, %i.kb
  %i.mn = lshr exact i64 %i.mm, 8                 ; 3 uses
  %i.mo = trunc i64 %i.mn to i32                  ; 7 uses
  store i32 %i.mo, ptr %.sroa.0, align 4, !tbaa !257
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !345
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = sub i64 %i.mr, %i.kb
  %i.mt = lshr exact i64 %i.ms, 8                 ; 3 uses
  %i.mu = trunc i64 %i.mt to i32                  ; 7 uses
  store i32 %i.mu, ptr %.sroa.5, align 4, !tbaa !257
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !345
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = sub i64 %i.mx, %i.kb
  %i.mz = lshr exact i64 %i.my, 8                 ; 3 uses
  %i.na = trunc i64 %i.mz to i32                  ; 6 uses
  store i32 %i.na, ptr %.sroa.7, align 4, !tbaa !257
  %i.nb = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.nc = icmp sgt i32 %i.d, %i.na                ; 2 uses
  %i.nd = icmp sgt i32 %i.d, %i.mo
  %or.cond655 = select i1 %i.nc, i1 %i.nd, i1 false
  br i1 %or.cond655, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %spec.select.i.i349 = call i32 @llvm.smin.i32(i32 %i.na, i32 %i.mo)
  %spec.select5.i.i350 = call i32 @llvm.smax.i32(i32 %i.na, i32 %i.mo) ; 2 uses
  %i.ne = add nsw i32 %spec.select5.i.i350, 1
  %i.nf = mul nsw i32 %i.ne, %spec.select5.i.i350
  %i.ng = sdiv i32 %i.nf, 2
  %i.nh = add nsw i32 %i.ng, %spec.select.i.i349
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.nb, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !257 ; 2 uses
  %i.nl = icmp sgt i32 %i.nk, 0
  br i1 %i.nl, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.bn, %bb.bm, %bb.ao
  %.cmp.not.sroa.phi = phi ptr [ %.sroa.5, %bb.ao ], [ %.sroa.7, %bb.bm ], [ %.sroa.0, %bb.bn ]
  %.lcssa509 = phi i64 [ %i.mz, %bb.ao ], [ %i.mn, %bb.bm ], [ %i.mt, %bb.bn ]
  %.lcssa508 = phi i32 [ %i.nk, %bb.ao ], [ %i.so, %bb.bm ], [ %i.sx, %bb.bn ]
  %.lcssa = phi i64 [ %i.mn, %bb.ao ], [ %i.mt, %bb.bm ], [ %i.mz, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.nm = icmp sgt i32 %.6482, -1
  br i1 %i.nm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.nn = zext nneg i32 %.6482 to i64
  %i.no = getelementptr inbounds nuw [144 x i8], ptr %i.mg, i64 %i.nn ; 3 uses
  %.sroa.0.0.copyload5.i = load ptr, ptr %i.no, align 8
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %.sroa.6.0.copyload7.i = load ptr, ptr %.sroa.6.0..sroa_idx6.i, align 8
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(124) %.sroa.7.0..sroa_idx8.i, i64 124, i1 false)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.7.i, i8 0, i64 128, i1 false)
  %i.np = load ptr, ptr %i.kc, align 8, !tbaa !200
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !279
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.0.0.i351 = phi ptr [ %.sroa.0.0.copyload5.i, %bb.aq ], [ null, %bb.ar ]
  %.sroa.6.0.i = phi ptr [ %.sroa.6.0.copyload7.i, %bb.aq ], [ %i.nq, %bb.ar ]
  %i.nr = load i32, ptr %i.kd, align 8, !tbaa !154
  %i.ns = icmp eq i32 %i.mf, %i.nr
  br i1 %i.ns, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  %.not.i.i.i = icmp eq i32 %i.mf, 0
  %i.nt = shl nsw i32 %i.mf, 1
  %i.nu = select i1 %.not.i.i.i, i32 1, i32 %i.nt ; 4 uses
  %i.nv = icmp slt i32 %i.mf, %i.nu
  br i1 %i.nv, label %bb.au, label %bb.az
end_hunk_0
