inline.NumInlined: 50
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ncnn18resize_bilinear_c1EPKhiiiPhiii:bb.a

vector.body417:                                   ; preds = %vector.body417, %vector.ph407
  %index418 = phi i64 [ 0, %vector.ph407 ], [ %index.next421, %vector.body417 ] ; 3 uses
  %vec.ind419 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph407 ], [ %vec.ind.next422, %vector.body417 ] ; 2 uses
  %i.bb = uitofp nneg <4 x i32> %vec.ind419 to <4 x double>
  %i.bc = fadd fast <4 x double> %i.bb, splat (double 5.000000e-01)
  %i.bd = fmul fast <4 x double> %i.bc, %broadcast.splat414
  %i.be = fmul fast <4 x double> %i.bd, %i.ba
  %i.bf = fadd fast <4 x double> %i.be, splat (double -5.000000e-01)
  %i.bg = fptrunc fast <4 x double> %i.bf to <4 x float> ; 2 uses
  %i.bh = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.bg)
  %i.bi = fptosi <4 x float> %i.bh to <4 x i32>   ; 3 uses
  %i.bj = sitofp fast <4 x i32> %i.bi to <4 x float>
  %i.bk = fsub fast <4 x float> %i.bg, %i.bj
  %i.bl = icmp slt <4 x i32> %i.bi, zeroinitializer
  %i.bm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bi, <4 x i32> zeroinitializer) ; 2 uses
  %i.bn = icmp slt <4 x i32> %i.bm, %broadcast.splat410 ; 2 uses
  %i.bo = select <4 x i1> %i.bn, <4 x i32> %i.bm, <4 x i32> %broadcast.splat412
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index418
  store <4 x i32> %i.bo, ptr %i.bp, align 4, !tbaa !9
  %i.bq = fmul fast <4 x float> %i.bk, splat (float 2.048000e+03)
  %i.br = select <4 x i1> %i.bl, <4 x float> zeroinitializer, <4 x float> %i.bq
  %i.bs = select <4 x i1> %i.bn, <4 x float> %i.br, <4 x float> splat (float 2.048000e+03) ; 3 uses
  %i.bt = fsub fast <4 x float> splat (float 2.048000e+03), %i.bs ; 2 uses
  %i.bu = fcmp fast oge <4 x float> %i.bt, zeroinitializer
  %i.bv = select fast <4 x i1> %i.bu, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.bw = fadd fast <4 x float> %i.bv, %i.bt
  %i.bx = shl nuw nsw i64 %index418, 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bx
  %i.bz = fcmp fast oge <4 x float> %i.bs, zeroinitializer
  %i.ca = select fast <4 x i1> %i.bz, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.cb = fadd fast <4 x float> %i.ca, %i.bs
  %i.cc = shufflevector <4 x float> %i.bw, <4 x float> %i.cb, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec420 = tail call <8 x i16> @llvm.fptosi.sat.v8i16.v8f32(<8 x float> %i.cc)
  store <8 x i16> %interleaved.vec420, ptr %i.by, align 2, !tbaa !10
  %index.next421 = add nuw i64 %index418, 4       ; 2 uses
  %vec.ind.next422 = add <4 x i32> %vec.ind419, splat (i32 4)
  %i.cd = icmp eq i64 %index.next421, %n.vec408
  br i1 %i.cd, label %middle.block423, label %vector.body417, !llvm.loop !16

middle.block423:                                  ; preds = %vector.body417
  %cmp.n424 = icmp eq i64 %n.vec408, %wide.trip.count338
  br i1 %cmp.n424, label %._crit_edge, label %scalar.ph405.preheader

scalar.ph405.preheader:                           ; preds = %.lr.ph300, %middle.block423
  %indvars.iv335.ph = phi i64 [ 0, %.lr.ph300 ], [ %n.vec408, %middle.block423 ]
  %i.ce = fdiv fast double 1.000000e+00, %i.b
  br label %scalar.ph405

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv to i32
  %i.cg = uitofp nneg i32 %i.cf to double
  %i.ch = fadd fast double %i.cg, 5.000000e-01
  %i.ci = fmul fast double %i.ch, %i.p
  %i.cj = fmul fast double %i.ci, %i.aw
  %i.ck = fadd fast double %i.cj, -5.000000e-01
  %i.cl = fptrunc fast double %i.ck to float      ; 2 uses
  %i.cm = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.cl)
  %i.cn = fptosi float %i.cm to i32               ; 3 uses
  %i.co = sitofp fast i32 %i.cn to float
  %i.cp = fsub fast float %i.cl, %i.co
  %i.cq = icmp slt i32 %i.cn, 0
  %.0175 = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 0) ; 2 uses
  %.not206 = icmp slt i32 %.0175, %i.q            ; 2 uses
  %.1176 = select i1 %.not206, i32 %.0175, i32 %i.r
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %.1176, ptr %i.cr, align 4, !tbaa !9
  %i.cs = fmul fast float %i.cp, 2.048000e+03
  %i.ct = select i1 %i.cq, float 0.000000e+00, float %i.cs
  %i.cu = select i1 %.not206, float %i.ct, float 2.048000e+03 ; 3 uses
  %i.cv = fsub fast float 2.048000e+03, %i.cu     ; 2 uses
  %i.cw = fcmp fast oge float %i.cv, 0.000000e+00
  %i.cx = select fast i1 %i.cw, float 5.000000e-01, float -5.000000e-01
  %i.cy = fadd fast float %i.cx, %i.cv
  %i.cz = tail call i16 @llvm.fptosi.sat.i16.f32(float %i.cy)
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !10
  %i.db = fcmp fast oge float %i.cu, 0.000000e+00
  %i.dc = select fast i1 %i.db, float 5.000000e-01, float -5.000000e-01
  %i.dd = fadd fast float %i.dc, %i.cu
  %i.de = tail call i16 @llvm.fptosi.sat.i16.f32(float %i.dd)
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i16 %i.de, ptr %i.df, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %scalar.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %scalar.ph405, %middle.block423, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 0, ptr %i.di, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dh, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %5, i64 noundef 2, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i64 0, ptr %i.dl, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dk, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %5, i64 noundef 2, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.b

scalar.ph405:                                     ; preds = %scalar.ph405.preheader, %scalar.ph405
  %indvars.iv335 = phi i64 [ %indvars.iv.next336, %scalar.ph405 ], [ %indvars.iv335.ph, %scalar.ph405.preheader ] ; 4 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv335 to i32
  %i.dn = uitofp nneg i32 %i.dm to double
  %i.do = fadd fast double %i.dn, 5.000000e-01
  %i.dp = fmul fast double %i.do, %i.a
  %i.dq = fmul fast double %i.dp, %i.ce
  %i.dr = fadd fast double %i.dq, -5.000000e-01
  %i.ds = fptrunc fast double %i.dr to float      ; 2 uses
  %i.dt = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.ds)
  %i.du = fptosi float %i.dt to i32               ; 3 uses
  %i.dv = sitofp fast i32 %i.du to float
  %i.dw = fsub fast float %i.ds, %i.dv
  %i.dx = icmp slt i32 %i.du, 0
  %.0177 = tail call i32 @llvm.smax.i32(i32 %i.du, i32 0) ; 2 uses
  %.not = icmp slt i32 %.0177, %i.ay              ; 2 uses
  %.1178 = select i1 %.not, i32 %.0177, i32 %i.az
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv335
  store i32 %.1178, ptr %i.dy, align 4, !tbaa !9
  %i.dz = fmul fast float %i.dw, 2.048000e+03
  %i.ea = select i1 %i.dx, float 0.000000e+00, float %i.dz
  %i.eb = select i1 %.not, float %i.ea, float 2.048000e+03 ; 3 uses
  %i.ec = fsub fast float 2.048000e+03, %i.eb     ; 2 uses
  %i.ed = fcmp fast oge float %i.ec, 0.000000e+00
  %i.ee = select fast i1 %i.ed, float 5.000000e-01, float -5.000000e-01
  %i.ef = fadd fast float %i.ee, %i.ec
  %i.eg = tail call i16 @llvm.fptosi.sat.i16.f32(float %i.ef)
  %.idx366 = shl nuw nsw i64 %indvars.iv335, 2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx366 ; 2 uses
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !10
  %i.ei = fcmp fast oge float %i.eb, 0.000000e+00
  %i.ej = select fast i1 %i.ei, float 5.000000e-01, float -5.000000e-01
  %i.ek = fadd fast float %i.ej, %i.eb
  %i.el = tail call i16 @llvm.fptosi.sat.i16.f32(float %i.ek)
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  store i16 %i.el, ptr %i.em, align 2, !tbaa !10
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %exitcond339.not = icmp eq i64 %indvars.iv.next336, %wide.trip.count338
  br i1 %exitcond339.not, label %._crit_edge, label %scalar.ph405, !llvm.loop !24

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %._crit_edge
  br i1 %i.ax, label %.lr.ph316, label %._crit_edge317

.lr.ph316:                                        ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.en = load ptr, ptr %9, align 8, !tbaa !25
  %i.eo = load ptr, ptr %8, align 8, !tbaa !25
  %i.ep = icmp sgt i32 %5, 15                     ; 2 uses
  %i.eq = and i32 %5, 2147483632                  ; 2 uses
  %wide.trip.count343 = zext i32 %5 to i64        ; 3 uses
  %xtraiter = and i64 %wide.trip.count343, 1
  %i.er = icmp eq i32 %5, 1
  %unroll_iter = and i64 %wide.trip.count343, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod526 = trunc i32 %5 to i1
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.et = load ptr, ptr %i.dg, align 8, !tbaa !26 ; 2 uses
  %.not.i218 = icmp eq ptr %i.et, null
  br i1 %.not.i218, label %_ZN4ncnn3MatD2Ev.exit, label %bb.w

bb.c:                                             ; preds = %.lr.ph316, %bb.j
  %.0315 = phi ptr [ %i.m, %.lr.ph316 ], [ %.1, %bb.j ] ; 8 uses
  %.0187314 = phi ptr [ %i.eo, %.lr.ph316 ], [ %.1188, %bb.j ] ; 10 uses
  %.0189313 = phi ptr [ %i.en, %.lr.ph316 ], [ %.1190, %bb.j ] ; 7 uses
  %.0191312 = phi i32 [ -2, %.lr.ph316 ], [ %i.ew, %bb.j ] ; 2 uses
  %.0192311 = phi i32 [ 0, %.lr.ph316 ], [ %.pre-phi, %bb.j ] ; 5 uses
  %i.eu = sext i32 %.0192311 to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !9  ; 7 uses
  %i.ex = icmp eq i32 %i.ew, %.0191312
  br i1 %i.ex, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ey = add nsw i32 %.0191312, 1
  %i.ez = icmp eq i32 %i.ew, %i.ey
  br i1 %i.ez, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fa = add nsw i32 %i.ew, 1
  %i.fb = mul nsw i32 %i.fa, %3
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr %0, i64 %i.fc ; 3 uses
  br i1 %i.n, label %.lr.ph310.preheader, label %.loopexit

.lr.ph310.preheader:                              ; preds = %bb.e
  br i1 %i.er, label %.lr.ph310.epil.preheader, label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %.lr.ph310
  %indvars.iv345 = phi i64 [ %indvars.iv.next346.1, %.lr.ph310 ], [ 0, %.lr.ph310.preheader ] ; 4 uses
  %.0195307 = phi ptr [ %i.gs, %.lr.ph310 ], [ %i.l, %.lr.ph310.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph310 ], [ 0, %.lr.ph310.preheader ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv345
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !9
  %i.fg = load i16, ptr %.0195307, align 2, !tbaa !10
  %i.fh = getelementptr inbounds nuw i8, ptr %.0195307, i64 2
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !10
  %i.fj = sext i32 %i.ff to i64
  %i.fk = getelementptr inbounds i8, ptr %i.fd, i64 %i.fj ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !27
  %i.fm = zext i8 %i.fl to i32
  %i.fn = sext i16 %i.fg to i32
  %i.fo = mul nsw i32 %i.fm, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !27
  %i.fr = zext i8 %i.fq to i32
  %i.fs = sext i16 %i.fi to i32
  %i.ft = mul nsw i32 %i.fr, %i.fs
  %i.fu = add nsw i32 %i.ft, %i.fo
  %i.fv = lshr i32 %i.fu, 4
  %i.fw = trunc i32 %i.fv to i16
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.0187314, i64 %indvars.iv345
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !10
  %i.fy = getelementptr inbounds nuw i8, ptr %.0195307, i64 4
  %indvars.iv.next346 = or disjoint i64 %indvars.iv345, 1 ; 2 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next346
  %i.fz = load i32, ptr %10, align 4, !tbaa !9
  %i.ga = load i16, ptr %i.fy, align 2, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %.0195307, i64 6
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !10
  %i.gd = sext i32 %i.fz to i64
  %i.ge = getelementptr inbounds i8, ptr %i.fd, i64 %i.gd ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !27
  %i.gg = zext i8 %i.gf to i32
  %i.gh = sext i16 %i.ga to i32
  %i.gi = mul nsw i32 %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !27
  %i.gl = zext i8 %i.gk to i32
  %i.gm = sext i16 %i.gc to i32
  %i.gn = mul nsw i32 %i.gl, %i.gm
  %i.go = add nsw i32 %i.gn, %i.gi
  %i.gp = lshr i32 %i.go, 4
  %i.gq = trunc i32 %i.gp to i16
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %.0187314, i64 %indvars.iv.next346
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !10
  %i.gs = getelementptr inbounds nuw i8, ptr %.0195307, i64 8 ; 2 uses
  %indvars.iv.next346.1 = add nuw nsw i64 %indvars.iv345, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph310, !llvm.loop !28

bb.f:                                             ; preds = %bb.d
  %i.gt = mul nsw i32 %i.ew, %3
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %0, i64 %i.gu
  %i.gw = add nsw i32 %i.ew, 1
  %i.gx = mul nsw i32 %i.gw, %3
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds i8, ptr %0, i64 %i.gy
  br i1 %i.n, label %.lr.ph306, label %.loopexit

.lr.ph306:                                        ; preds = %bb.f, %.lr.ph306
  %indvars.iv340 = phi i64 [ %indvars.iv.next341, %.lr.ph306 ], [ 0, %bb.f ] ; 4 uses
  %.0186303 = phi ptr [ %i.ig, %.lr.ph306 ], [ %i.l, %bb.f ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv340
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !9
  %i.hc = load i16, ptr %.0186303, align 2, !tbaa !10
  %i.hd = getelementptr inbounds nuw i8, ptr %.0186303, i64 2
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !10
  %i.hf = sext i32 %i.hb to i64                   ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.gv, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.gz, i64 %i.hf ; 2 uses
  %i.hi = load i8, ptr %i.hg, align 1, !tbaa !27
  %i.hj = zext i8 %i.hi to i32
  %i.hk = sext i16 %i.hc to i32                   ; 2 uses
  %i.hl = mul nsw i32 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !27
  %i.ho = zext i8 %i.hn to i32
  %i.hp = sext i16 %i.he to i32                   ; 2 uses
  %i.hq = mul nsw i32 %i.ho, %i.hp
  %i.hr = add nsw i32 %i.hq, %i.hl
  %i.hs = lshr i32 %i.hr, 4
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.0187314, i64 %indvars.iv340
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !10
  %i.hv = load i8, ptr %i.hh, align 1, !tbaa !27
  %i.hw = zext i8 %i.hv to i32
  %i.hx = mul nsw i32 %i.hw, %i.hk
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !27
  %i.ia = zext i8 %i.hz to i32
  %i.ib = mul nsw i32 %i.ia, %i.hp
  %i.ic = add nsw i32 %i.ib, %i.hx
  %i.id = lshr i32 %i.ic, 4
  %i.ie = trunc i32 %i.id to i16
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %.0189313, i64 %indvars.iv340
  store i16 %i.ie, ptr %i.if, align 2, !tbaa !10
  %i.ig = getelementptr inbounds nuw i8, ptr %.0186303, i64 4
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1 ; 2 uses
  %exitcond344.not = icmp eq i64 %indvars.iv.next341, %wide.trip.count343
  br i1 %exitcond344.not, label %.loopexit, label %.lr.ph306, !llvm.loop !29

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph310
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph310.epil.preheader

.lr.ph310.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph310.preheader
  %indvars.iv345.epil.init = phi i64 [ 0, %.lr.ph310.preheader ], [ %indvars.iv.next346.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.0195307.epil.init = phi ptr [ %i.l, %.lr.ph310.preheader ], [ %i.gs, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod526)
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv345.epil.init
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !9
  %i.ij = load i16, ptr %.0195307.epil.init, align 2, !tbaa !10
  %i.ik = getelementptr inbounds nuw i8, ptr %.0195307.epil.init, i64 2
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !10
  %i.im = sext i32 %i.ii to i64
  %i.in = getelementptr inbounds i8, ptr %i.fd, i64 %i.im ; 2 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !27
  %i.ip = zext i8 %i.io to i32
  %i.iq = sext i16 %i.ij to i32
  %i.ir = mul nsw i32 %i.ip, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !27
  %i.iu = zext i8 %i.it to i32
  %i.iv = sext i16 %i.il to i32
  %i.iw = mul nsw i32 %i.iu, %i.iv
  %i.ix = add nsw i32 %i.iw, %i.ir
  %i.iy = lshr i32 %i.ix, 4
  %i.iz = trunc i32 %i.iy to i16
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %.0187314, i64 %indvars.iv345.epil.init
  store i16 %i.iz, ptr %i.ja, align 2, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph306, %.lr.ph310.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.f, %bb.e, %bb.c
  %.1190 = phi ptr [ %.0189313, %bb.c ], [ %.0187314, %bb.e ], [ %.0189313, %bb.f ], [ %.0187314, %.lr.ph310.epil.preheader ], [ %.0187314, %.loopexit.loopexit.unr-lcssa ], [ %.0189313, %.lr.ph306 ] ; 5 uses
  %.1188 = phi ptr [ %.0187314, %bb.c ], [ %.0189313, %bb.e ], [ %.0187314, %bb.f ], [ %.0189313, %.lr.ph310.epil.preheader ], [ %.0189313, %.loopexit.loopexit.unr-lcssa ], [ %.0187314, %.lr.ph306 ] ; 5 uses
  %i.jb = add nsw i32 %.0192311, 1                ; 4 uses
  %i.jc = icmp slt i32 %i.jb, %6
  br i1 %i.jc, label %bb.g, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre = load i16, ptr %.0315, align 2, !tbaa !10
  br label %bb.i

bb.g:                                             ; preds = %.loopexit
  %i.jd = sext i32 %i.jb to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !9
  %i.jg = icmp eq i32 %i.jf, %i.ew
  %.pre350 = load i16, ptr %.0315, align 2, !tbaa !10 ; 3 uses
  br i1 %i.jg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.jh = mul nsw i32 %.0192311, %7
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds i8, ptr %4, i64 %i.ji ; 2 uses
  %i.jk = mul nsw i32 %i.jb, %7
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds i8, ptr %4, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.0315, i64 2
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !10 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.0315, i64 4
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !10 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0315, i64 6
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !10 ; 2 uses
  %i.jt = insertelement <8 x i16> poison, i16 %.pre350, i64 0
  %i.ju = shufflevector <8 x i16> %i.jt, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.jv = insertelement <8 x i16> poison, i16 %i.jo, i64 0
  %i.jw = shufflevector <8 x i16> %i.jv, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.jx = insertelement <8 x i16> poison, i16 %i.jq, i64 0
  %i.jy = shufflevector <8 x i16> %i.jx, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.jz = insertelement <8 x i16> poison, i16 %i.js, i64 0
  %i.ka = shufflevector <8 x i16> %i.jz, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br i1 %i.ep, label %.lr.ph.i, label %.preheader102.i

.preheader102.i:                                  ; preds = %.lr.ph.i, %bb.h
  %.099.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.eq, %.lr.ph.i ] ; 3 uses
  %.096.lcssa.i = phi ptr [ %i.jm, %bb.h ], [ %i.lg, %.lr.ph.i ] ; 2 uses
  %.093.lcssa.i = phi ptr [ %i.jj, %bb.h ], [ %i.lf, %.lr.ph.i ] ; 2 uses
  %.090.lcssa.i = phi ptr [ %.1190, %bb.h ], [ %i.li, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.1188, %bb.h ], [ %i.lh, %.lr.ph.i ] ; 2 uses
  %i.kb = or disjoint i32 %.099.lcssa.i, 7
  %i.kc = icmp slt i32 %i.kb, %5
  br i1 %i.kc, label %.lr.ph117.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.0107.i = phi ptr [ %i.lh, %.lr.ph.i ], [ %.1188, %bb.h ] ; 3 uses
  %.090106.i = phi ptr [ %i.li, %.lr.ph.i ], [ %.1190, %bb.h ] ; 3 uses
  %.093105.i = phi ptr [ %i.lf, %.lr.ph.i ], [ %i.jj, %bb.h ] ; 2 uses
  %.096104.i = phi ptr [ %i.lg, %.lr.ph.i ], [ %i.jm, %bb.h ] ; 2 uses
  %.099103.i = phi i32 [ %i.lj, %.lr.ph.i ], [ 0, %bb.h ]
  %i.kd = load <8 x i16>, ptr %.0107.i, align 1, !tbaa !27 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0107.i, i64 16
  %i.kf = load <8 x i16>, ptr %i.ke, align 1, !tbaa !27 ; 2 uses
  %i.kg = load <8 x i16>, ptr %.090106.i, align 1, !tbaa !27 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.090106.i, i64 16
  %i.ki = load <8 x i16>, ptr %i.kh, align 1, !tbaa !27 ; 2 uses
  %i.kj = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.kd, <8 x i16> %i.ju)
  %i.kk = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.kg, <8 x i16> %i.jw)
  %i.kl = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.kf, <8 x i16> %i.ju)
  %i.km = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ki, <8 x i16> %i.jw)
  %i.kn = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.kd, <8 x i16> %i.jy)
  %i.ko = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.kg, <8 x i16> %i.ka)
  %i.kp = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.kf, <8 x i16> %i.jy)
  %i.kq = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ki, <8 x i16> %i.ka)
  %i.kr = add <8 x i16> %i.kj, splat (i16 2)
  %i.ks = add <8 x i16> %i.kr, %i.kk
  %i.kt = ashr <8 x i16> %i.ks, splat (i16 2)
  %i.ku = add <8 x i16> %i.kl, splat (i16 2)
  %i.kv = add <8 x i16> %i.ku, %i.km
  %i.kw = ashr <8 x i16> %i.kv, splat (i16 2)
  %i.kx = add <8 x i16> %i.kn, splat (i16 2)
  %i.ky = add <8 x i16> %i.kx, %i.ko
  %i.kz = ashr <8 x i16> %i.ky, splat (i16 2)
  %i.la = add <8 x i16> %i.kp, splat (i16 2)
  %i.lb = add <8 x i16> %i.la, %i.kq
  %i.lc = ashr <8 x i16> %i.lb, splat (i16 2)
  %i.ld = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.kt, <8 x i16> %i.kw)
  %i.le = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.kz, <8 x i16> %i.lc)
  store <16 x i8> %i.ld, ptr %.093105.i, align 1, !tbaa !27
  store <16 x i8> %i.le, ptr %.096104.i, align 1, !tbaa !27
  %i.lf = getelementptr inbounds nuw i8, ptr %.093105.i, i64 16 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.096104.i, i64 16 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.0107.i, i64 32 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.090106.i, i64 32 ; 2 uses
  %i.lj = add nuw nsw i32 %.099103.i, 16          ; 2 uses
  %i.lk = or disjoint i32 %i.lj, 15
  %i.ll = icmp slt i32 %i.lk, %5
  br i1 %i.ll, label %.lr.ph.i, label %.preheader102.i, !llvm.loop !30

.preheader.i:                                     ; preds = %.lr.ph117.i, %.preheader102.i
  %.1100.lcssa.i = phi i32 [ %.099.lcssa.i, %.preheader102.i ], [ %i.nw, %.lr.ph117.i ] ; 6 uses
  %.197.lcssa.i = phi ptr [ %.096.lcssa.i, %.preheader102.i ], [ %i.nt, %.lr.ph117.i ] ; 8 uses
  %.194.lcssa.i = phi ptr [ %.093.lcssa.i, %.preheader102.i ], [ %i.ns, %.lr.ph117.i ] ; 8 uses
  %.191.lcssa.i = phi ptr [ %.090.lcssa.i, %.preheader102.i ], [ %i.nv, %.lr.ph117.i ] ; 7 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader102.i ], [ %i.nu, %.lr.ph117.i ] ; 7 uses
  %i.lm = icmp slt i32 %.1100.lcssa.i, %5
  br i1 %i.lm, label %.lr.ph128.i, label %_ZN4ncnnL11vresize_twoEPKsS1_iPhS2_ssss.exit

.lr.ph128.i:                                      ; preds = %.preheader.i
  %i.ln = sext i16 %.pre350 to i32                ; 2 uses
  %i.lo = sext i16 %i.jo to i32                   ; 2 uses
  %i.lp = sext i16 %i.jq to i32                   ; 2 uses
  %i.lq = sext i16 %i.js to i32                   ; 2 uses
  %i.lr = xor i32 %.1100.lcssa.i, -1
end_hunk_0
