Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/enc_psy?download=true
inline.NumInlined: 16
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@ff_opus_psy_celt_frame_process:bb.a
  %i.bw = fadd nsz float %i.bu, %i.bv
  %i.bx = fadd nsz float %.16679.us.us.us.i, %i.bw
  %i.by = fadd nsz float %.180.us.us.us.i, %i.bt
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %gep.us.us.us.i.1 = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep.us.us.us.i, i64 %indvars.iv.next.i
  %i.bz = load float, ptr %gep.us.us.us.i.1, align 4, !tbaa !54
  %gep83.us.us.us.i.1 = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep82.us.us.us.i, i64 %indvars.iv.next.i
  %i.ca = load float, ptr %gep83.us.us.us.i.1, align 4, !tbaa !54 ; 2 uses
  %i.cb = fadd nsz float %i.bz, %i.ca
  %gep85.us.us.us.i.1 = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep84.us.us.us.i, i64 %indvars.iv.next.i
  %i.cc = load float, ptr %gep85.us.us.us.i.1, align 4, !tbaa !54
  %i.cd = fadd nsz float %i.cb, %i.cc
  %i.ce = fadd nsz float %i.bx, %i.cd             ; 3 uses
  %i.cf = fadd nsz float %i.by, %i.ca             ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.i.unr-lcssa, label %.lr.ph.us.us.us.i.new, !llvm.loop !141

._crit_edge.us.us.us.i.unr-lcssa:                 ; preds = %.lr.ph.us.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.i.unr-lcssa, %.lr.ph.us.us.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.us.us.i.unr-lcssa ] ; 3 uses
  %.180.us.us.us.i.epil.init = phi float [ %.087.us.us.us.i, %.lr.ph.us.us.us.i ], [ %i.cf, %._crit_edge.us.us.us.i.unr-lcssa ]
  %.16679.us.us.us.i.epil.init = phi float [ %i.bo, %.lr.ph.us.us.us.i ], [ %i.ce, %._crit_edge.us.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %gep.us.us.us.i.epil = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep.us.us.us.i, i64 %indvars.iv.i.epil.init
  %i.cg = load float, ptr %gep.us.us.us.i.epil, align 4, !tbaa !54
  %gep83.us.us.us.i.epil = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep82.us.us.us.i, i64 %indvars.iv.i.epil.init
  %i.ch = load float, ptr %gep83.us.us.us.i.epil, align 4, !tbaa !54 ; 2 uses
  %i.ci = fadd nsz float %i.cg, %i.ch
  %gep85.us.us.us.i.epil = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep84.us.us.us.i, i64 %indvars.iv.i.epil.init
  %i.cj = load float, ptr %gep85.us.us.us.i.epil, align 4, !tbaa !54
  %i.ck = fadd nsz float %i.ci, %i.cj
  %i.cl = fadd nsz float %.16679.us.us.us.i.epil.init, %i.ck
  %i.cm = fadd nsz float %.180.us.us.us.i.epil.init, %i.ch
  br label %._crit_edge.us.us.us.i

._crit_edge.us.us.us.i:                           ; preds = %._crit_edge.us.us.us.i.unr-lcssa, %.epil.preheader
  %.lcssa74 = phi float [ %i.ce, %._crit_edge.us.us.us.i.unr-lcssa ], [ %i.cl, %.epil.preheader ]
  %.lcssa73 = phi float [ %i.cf, %._crit_edge.us.us.us.i.unr-lcssa ], [ %i.cm, %.epil.preheader ] ; 2 uses
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %exitcond115.not.i = icmp eq i64 %indvars.iv.next112.i, %wide.trip.count114.i
  br i1 %exitcond115.not.i, label %._crit_edge89.split.us.us.us.i, label %.lr.ph.us.us.us.i, !llvm.loop !142

._crit_edge89.split.us.us.us.i:                   ; preds = %._crit_edge.us.us.us.i
  %i.cn = fadd nsz float %.06996.us.us.i, %.lcssa73 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv116.i
  store float %.lcssa74, ptr %i.co, align 4, !tbaa !54
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 1 ; 2 uses
  %exitcond119.not.i = icmp eq i64 %indvars.iv.next117.i, 21
  br i1 %exitcond119.not.i, label %.preheader76.loopexit.i, label %.preheader77.us.us.i, !llvm.loop !143

.preheader76.loopexit.i:                          ; preds = %._crit_edge89.split.us.us.us.i
  %i.cp = load <4 x float>, ptr %i.e, align 16, !tbaa !54
  %.phi.trans.insert133.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre134.i = load float, ptr %.phi.trans.insert133.i, align 16, !tbaa !54
  %.phi.trans.insert135.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.pre136.i = load float, ptr %.phi.trans.insert135.i, align 4, !tbaa !54
  %.phi.trans.insert137.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.pre138.i = load float, ptr %.phi.trans.insert137.i, align 8, !tbaa !54
  %.phi.trans.insert139.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.pre140.i = load float, ptr %.phi.trans.insert139.i, align 4, !tbaa !54
  %.phi.trans.insert141.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.pre142.i = load float, ptr %.phi.trans.insert141.i, align 16, !tbaa !54
  %.phi.trans.insert143.i = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %.pre144.i = load float, ptr %.phi.trans.insert143.i, align 4, !tbaa !54
  %.phi.trans.insert145.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.pre146.i = load float, ptr %.phi.trans.insert145.i, align 8, !tbaa !54
  %.phi.trans.insert147.i = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %.pre148.i = load float, ptr %.phi.trans.insert147.i, align 4, !tbaa !54
  %.phi.trans.insert149.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.pre150.i = load float, ptr %.phi.trans.insert149.i, align 16, !tbaa !54
  %.phi.trans.insert151.i = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %.pre152.i = load float, ptr %.phi.trans.insert151.i, align 4, !tbaa !54
  %.phi.trans.insert153.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.pre154.i = load float, ptr %.phi.trans.insert153.i, align 8, !tbaa !54
  %.phi.trans.insert155.i = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %.pre156.i = load float, ptr %.phi.trans.insert155.i, align 4, !tbaa !54
  %.phi.trans.insert157.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.pre158.i = load float, ptr %.phi.trans.insert157.i, align 16, !tbaa !54
  %.phi.trans.insert159.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %.pre160.i = load float, ptr %.phi.trans.insert159.i, align 4, !tbaa !54
  %.phi.trans.insert161.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.pre162.i = load float, ptr %.phi.trans.insert161.i, align 8, !tbaa !54
  %.phi.trans.insert163.i = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %.pre164.i = load float, ptr %.phi.trans.insert163.i, align 4, !tbaa !54
  %.phi.trans.insert165.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.pre166.i = load float, ptr %.phi.trans.insert165.i, align 16, !tbaa !54
  br label %celt_gauge_psy_weight.exit

celt_gauge_psy_weight.exit:                       ; preds = %bb.b, %.preheader77.us.preheader.i, %.preheader76.loopexit.i
  %i.cq = phi float [ %.pre166.i, %.preheader76.loopexit.i ], [ %i.ar, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.cr = phi float [ %.pre164.i, %.preheader76.loopexit.i ], [ %i.bi, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.cs = phi float [ %.pre162.i, %.preheader76.loopexit.i ], [ %i.bh, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.ct = phi float [ %.pre160.i, %.preheader76.loopexit.i ], [ %i.bg, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.cu = phi float [ %.pre158.i, %.preheader76.loopexit.i ], [ %i.bf, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.cv = phi float [ %.pre156.i, %.preheader76.loopexit.i ], [ %i.be, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.cw = phi float [ %.pre154.i, %.preheader76.loopexit.i ], [ %i.bd, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.cx = phi float [ %.pre152.i, %.preheader76.loopexit.i ], [ %i.bc, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.cy = phi float [ %.pre150.i, %.preheader76.loopexit.i ], [ %i.bb, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.cz = phi float [ %.pre148.i, %.preheader76.loopexit.i ], [ %i.ba, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.da = phi float [ %.pre146.i, %.preheader76.loopexit.i ], [ %i.az, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.db = phi float [ %.pre144.i, %.preheader76.loopexit.i ], [ %i.ay, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.dc = phi float [ %.pre142.i, %.preheader76.loopexit.i ], [ %i.ax, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.dd = phi float [ %.pre140.i, %.preheader76.loopexit.i ], [ %i.aw, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.de = phi float [ %.pre138.i, %.preheader76.loopexit.i ], [ %i.av, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.df = phi float [ %.pre136.i, %.preheader76.loopexit.i ], [ %i.au, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.dg = phi float [ %.pre134.i, %.preheader76.loopexit.i ], [ %i.at, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.us-phi100.i = phi float [ %i.cn, %.preheader76.loopexit.i ], [ 0.000000e+00, %.preheader77.us.preheader.i ], [ 0.000000e+00, %bb.b ]
  %i.dh = phi <4 x float> [ %i.cp, %.preheader76.loopexit.i ], [ %i.ad, %.preheader77.us.preheader.i ], [ zeroinitializer, %bb.b ] ; 5 uses
  %i.di = extractelement <4 x float> %i.dh, i64 0 ; 2 uses
  %i.dj = fcmp nsz ogt float %i.di, 1.000000e+00
  %.168.i = select nsz i1 %i.dj, float %i.di, float 1.000000e+00 ; 2 uses
  %i.dk = extractelement <4 x float> %i.dh, i64 1 ; 2 uses
  %i.dl = fcmp nsz ogt float %i.dk, %.168.i
  %.168.1.i = select nsz i1 %i.dl, float %i.dk, float %.168.i ; 2 uses
  %i.dm = extractelement <4 x float> %i.dh, i64 2 ; 2 uses
  %i.dn = fcmp nsz ogt float %i.dm, %.168.1.i
  %.168.2.i = select nsz i1 %i.dn, float %i.dm, float %.168.1.i ; 2 uses
  %i.do = extractelement <4 x float> %i.dh, i64 3 ; 2 uses
  %i.dp = fcmp nsz ogt float %i.do, %.168.2.i
  %.168.3.i = select nsz i1 %i.dp, float %i.do, float %.168.2.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dr = fcmp nsz ogt float %i.dg, %.168.3.i
  %.168.4.i = select nsz i1 %i.dr, float %i.dg, float %.168.3.i ; 2 uses
  %i.ds = fcmp nsz ogt float %i.df, %.168.4.i
  %.168.5.i = select nsz i1 %i.ds, float %i.df, float %.168.4.i ; 2 uses
  %i.dt = fcmp nsz ogt float %i.de, %.168.5.i
  %.168.6.i = select nsz i1 %i.dt, float %i.de, float %.168.5.i ; 2 uses
  %i.du = fcmp nsz ogt float %i.dd, %.168.6.i
  %.168.7.i = select nsz i1 %i.du, float %i.dd, float %.168.6.i ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.dw = fcmp nsz ogt float %i.dc, %.168.7.i
  %.168.8.i = select nsz i1 %i.dw, float %i.dc, float %.168.7.i ; 2 uses
  %i.dx = fcmp nsz ogt float %i.db, %.168.8.i
  %.168.9.i = select nsz i1 %i.dx, float %i.db, float %.168.8.i ; 2 uses
  %i.dy = fcmp nsz ogt float %i.da, %.168.9.i
  %.168.10.i = select nsz i1 %i.dy, float %i.da, float %.168.9.i ; 2 uses
  %i.dz = fcmp nsz ogt float %i.cz, %.168.10.i
  %.168.11.i = select nsz i1 %i.dz, float %i.cz, float %.168.10.i ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.eb = fcmp nsz ogt float %i.cy, %.168.11.i
  %.168.12.i = select nsz i1 %i.eb, float %i.cy, float %.168.11.i ; 2 uses
  %i.ec = fcmp nsz ogt float %i.cx, %.168.12.i
  %.168.13.i = select nsz i1 %i.ec, float %i.cx, float %.168.12.i ; 2 uses
  %i.ed = fcmp nsz ogt float %i.cw, %.168.13.i
  %.168.14.i = select nsz i1 %i.ed, float %i.cw, float %.168.13.i ; 2 uses
  %i.ee = fcmp nsz ogt float %i.cv, %.168.14.i
  %.168.15.i = select nsz i1 %i.ee, float %i.cv, float %.168.14.i ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.eg = fcmp nsz ogt float %i.cu, %.168.15.i
  %.168.16.i = select nsz i1 %i.eg, float %i.cu, float %.168.15.i ; 2 uses
  %i.eh = fcmp nsz ogt float %i.ct, %.168.16.i
  %.168.17.i = select nsz i1 %i.eh, float %i.ct, float %.168.16.i ; 2 uses
  %i.ei = fcmp nsz ogt float %i.cs, %.168.17.i
  %.168.18.i = select nsz i1 %i.ei, float %i.cs, float %.168.17.i ; 2 uses
  %i.ej = fcmp nsz ogt float %i.cr, %.168.18.i
  %.168.19.i = select nsz i1 %i.ej, float %i.cr, float %.168.18.i ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.el = fcmp nsz ogt float %i.cq, %.168.19.i
  %.168.20.i = select nsz i1 %i.el, float %i.cq, float %.168.19.i ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 33944
  %i.en = insertelement <4 x float> poison, float %.168.20.i, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.ep = fdiv nsz <4 x float> %i.dh, %i.eo
  %i.eq = fmul nsz <4 x float> %i.ep, splat (float 3.000000e+00)
  %i.er = fptosi <4 x float> %i.eq to <4 x i32>
  store <4 x i32> %i.er, ptr %i.em, align 4, !tbaa !68
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 33960
  %i.et = load <4 x float>, ptr %i.dq, align 16, !tbaa !54
  %i.eu = fdiv nsz <4 x float> %i.et, %i.eo
  %i.ev = fmul nsz <4 x float> %i.eu, splat (float 3.000000e+00)
  %i.ew = fptosi <4 x float> %i.ev to <4 x i32>
  store <4 x i32> %i.ew, ptr %i.es, align 4, !tbaa !68
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 33976
  %i.ey = load <4 x float>, ptr %i.dv, align 16, !tbaa !54
  %i.ez = fdiv nsz <4 x float> %i.ey, %i.eo
  %i.fa = fmul nsz <4 x float> %i.ez, splat (float 3.000000e+00)
  %i.fb = fptosi <4 x float> %i.fa to <4 x i32>
  store <4 x i32> %i.fb, ptr %i.ex, align 4, !tbaa !68
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 33992
  %i.fd = load <4 x float>, ptr %i.ea, align 16, !tbaa !54
  %i.fe = fdiv nsz <4 x float> %i.fd, %i.eo
  %i.ff = fmul nsz <4 x float> %i.fe, splat (float 3.000000e+00)
  %i.fg = fptosi <4 x float> %i.ff to <4 x i32>
  store <4 x i32> %i.fg, ptr %i.fc, align 4, !tbaa !68
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 34008
  %i.fi = load <4 x float>, ptr %i.ef, align 16, !tbaa !54
  %i.fj = fdiv nsz <4 x float> %i.fi, %i.eo
  %i.fk = fmul nsz <4 x float> %i.fj, splat (float 3.000000e+00)
  %i.fl = fptosi <4 x float> %i.fk to <4 x i32>
  store <4 x i32> %i.fl, ptr %i.fh, align 4, !tbaa !68
  %i.fm = load float, ptr %i.ek, align 16, !tbaa !54
  %i.fn = fdiv nsz float %i.fm, %.168.20.i
  %i.fo = fmul nsz float %i.fn, 3.000000e+00
  %i.fp = fptosi float %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 34024
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !68
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 34064
  %4 = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %5 = load i64, ptr %4, align 8, !tbaa !84
  %6 = sitofp nsz i64 %5 to float
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 13764
  %8 = load float, ptr %7, align 4, !tbaa !85
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %9 = load i32, ptr %i.fr, align 8, !tbaa !61
  %10 = sdiv i32 %9, %i.l
  %11 = sitofp nsz i32 %10 to float
  %12 = fmul nsz float %8, %6
  %13 = fdiv nsz float %.us-phi100.i, 2.100000e+01
  %14 = insertelement <2 x float> poison, float %13, i64 0
  %15 = insertelement <2 x float> %14, float %12, i64 1
  %16 = insertelement <2 x float> <float f0x49A2BC80, float poison>, float %11, i64 1
  %17 = fdiv nsz <2 x float> %15, %16             ; 2 uses
  %18 = extractelement <2 x float> %17, i64 0
  %19 = tail call i64 @llvm.lrint.i64.f32(float %18)
  %20 = trunc i64 %19 to i32
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0)
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 3)
  store i32 %22, ptr %3, align 16, !tbaa !148
  %23 = extractelement <2 x float> %17, i64 1
  %i.fs = tail call i64 @llvm.lrint.i64.f32(float %23)
  %i.ft = trunc i64 %i.fs to i32                  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 34084
  %i.fv = icmp sgt i32 %i.ft, 10200
  %i.fw = add nsw i32 %i.ft, 7
  %i.fx = and i32 %i.fw, -8
  %i.fy = select i1 %i.fv, i32 10200, i32 %i.fx
  store i32 %i.fy, ptr %i.fu, align 4, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.fz = getelementptr inbounds nuw i8, ptr %i.m, i64 356
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !45
  %i.gb = icmp slt i32 %i.ga, 2
  br i1 %i.gb, label %celt_search_for_intensity.exit, label %bb.c

bb.c:                                             ; preds = %celt_gauge_psy_weight.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 33916
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !72 ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, -1
  br i1 %i.ge, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 34048
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.021.i = phi float [ f0x7F7FFFFF, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01520.i = phi i32 [ 20, %.lr.ph.i ], [ %.116.i, %bb.d ]
  %.01719.i = phi i32 [ %i.gd, %.lr.ph.i ], [ %i.gi, %bb.d ] ; 4 uses
  store i32 %.01719.i, ptr %i.gf, align 16, !tbaa !77
  call fastcc void @bands_dist(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.d)
  %i.gg = load float, ptr %i.d, align 4, !tbaa !54 ; 2 uses
  %i.gh = fcmp nsz ogt float %.021.i, %i.gg       ; 2 uses
  %.116.i = select i1 %i.gh, i32 %.01719.i, i32 %.01520.i ; 2 uses
  %.1.i = select nsz i1 %i.gh, float %i.gg, float %.021.i
  %i.gi = add nsw i32 %.01719.i, -1
  %.not.i = icmp eq i32 %.01719.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !144

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.015.lcssa.i = phi i32 [ 20, %bb.c ], [ %.116.i, %bb.d ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 34048
  store i32 %.015.lcssa.i, ptr %i.gj, align 16, !tbaa !77
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 13712 ; 2 uses
  %i.gl = load float, ptr %i.gk, align 16, !tbaa !86
  %i.gm = uitofp nsz nneg i32 %.015.lcssa.i to float
  %i.gn = fadd nsz float %i.gl, %i.gm
  %i.go = fmul nsz float %i.gn, 5.000000e-01
  store float %i.go, ptr %i.gk, align 16, !tbaa !86
  br label %celt_search_for_intensity.exit

celt_search_for_intensity.exit:                   ; preds = %celt_gauge_psy_weight.exit, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 34052 ; 3 uses
  store i32 0, ptr %i.gp, align 4, !tbaa !83
  %i.gq = load ptr, ptr %0, align 16, !tbaa !23   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 356
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !45
  %i.gt = icmp slt i32 %i.gs, 2
  br i1 %i.gt, label %celt_search_for_dual_stereo.exit, label %bb.e

bb.e:                                             ; preds = %celt_search_for_intensity.exit
  call fastcc void @bands_dist(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.b)
  store i32 1, ptr %i.gp, align 4, !tbaa !83
  call fastcc void @bands_dist(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.c)
  %i.gu = load float, ptr %i.c, align 4, !tbaa !54
  %i.gv = load float, ptr %i.b, align 4, !tbaa !54
  %i.gw = fcmp nsz olt float %i.gu, %i.gv         ; 2 uses
  %i.gx = zext i1 %i.gw to i32
  store i32 %i.gx, ptr %i.gp, align 4, !tbaa !83
  %i.gy = zext i1 %i.gw to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 13720 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !149
  %i.hb = add nsw i64 %i.ha, %i.gy
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !149
  %.val.pre = load ptr, ptr %0, align 16, !tbaa !23
  br label %celt_search_for_dual_stereo.exit

celt_search_for_dual_stereo.exit:                 ; preds = %celt_search_for_intensity.exit, %bb.e
  %.val = phi ptr [ %i.gq, %celt_search_for_intensity.exit ], [ %.val.pre, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, i8 0, i64 168, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 33908
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !74 ; 2 uses
  %i.he = add i32 %i.hd, 2
  %i.hf = shl i32 30, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %.val, i64 376
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !39
  %i.hi = sdiv i32 %i.hf, %i.hh                   ; 2 uses
  %i.hj = load i32, ptr %i.t, align 4, !tbaa !78  ; 3 uses
  %.not.i25 = icmp eq i32 %i.hj, 0                ; 2 uses
  %i.hk = select i1 %.not.i25, i32 960, i32 120   ; 8 uses
  %i.hl = zext i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_tf_select, i64 %i.hl
  %i.hn = sext i32 %i.hj to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.hn ; 4 uses
  %i.hp = icmp sgt i32 %i.hi, 0
  br i1 %i.hp, label %.split25.us.i, label %celt_search_for_tf.exit

.split25.us.i:                                    ; preds = %celt_search_for_dual_stereo.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %.val, i64 356
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !45 ; 4 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %.split25.us.split.us.preheader.i, label %celt_search_for_tf.exit

.split25.us.split.us.preheader.i:                 ; preds = %.split25.us.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !53  ; 2 uses
  %i.hv = load i8, ptr %i.ho, align 4, !tbaa !53  ; 2 uses
  %i.hw = sext i8 %i.hu to i32                    ; 2 uses
  %i.hx = sext i8 %i.hv to i32                    ; 2 uses
  %i.hy = icmp slt i8 %i.hu, 0
  %i.hz = icmp slt i8 %i.hv, 0
  %i.ia = sub nsw i32 0, %i.hw
  %i.ib = sub nsw i32 0, %i.hx
  %i.ic = lshr i32 %i.hk, %i.ia
  %i.id = lshr i32 %i.hk, %i.ib
  %i.ie = shl i32 %i.hk, %i.hw
  %i.if = shl i32 %i.hk, %i.hx
  %i.ig = select i1 %i.hy, i32 %i.ic, i32 %i.ie
  %i.ih = select i1 %i.hz, i32 %i.id, i32 %i.if
  %i.ii = insertelement <2 x i32> poison, i32 %i.ih, i64 0
  %i.ij = insertelement <2 x i32> %i.ii, i32 %i.ig, i64 1
  %i.ik = sitofp <2 x i32> %i.ij to <2 x float>   ; 3 uses
  %wide.trip.count43.i = zext nneg i32 %i.hi to i64 ; 2 uses
  %wide.trip.count.i26 = zext nneg i32 %i.hr to i64 ; 5 uses
  %i.il = add nsw i64 %wide.trip.count.i26, -1    ; 2 uses
  %xtraiter80 = and i64 %wide.trip.count.i26, 1
  %i.im = icmp eq i64 %i.il, 0
  %unroll_iter84 = and i64 %wide.trip.count.i26, 2147483646
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  %lcmp.mod83 = trunc i32 %i.hr to i1
  br label %.preheader2.us.us.us.us.i

.preheader2.us.us.us.us.i:                        ; preds = %._crit_edge14.split.us.us.us.us.us.i, %.split25.us.split.us.preheader.i
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %._crit_edge14.split.us.us.us.us.us.i ], [ 0, %.split25.us.split.us.preheader.i ] ; 4 uses
  %i.in = phi float [ %i.jz, %._crit_edge14.split.us.us.us.us.us.i ], [ 0.000000e+00, %.split25.us.split.us.preheader.i ]
  br label %.preheader.us.us.us.us.us.i

.preheader.us.us.us.us.us.i:                      ; preds = %._crit_edge.us.us.us.us.us.i, %.preheader2.us.us.us.us.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %._crit_edge.us.us.us.us.us.i ], [ 0, %.preheader2.us.us.us.us.i ] ; 2 uses
  %i.io = phi <2 x float> [ %.lcssa71, %._crit_edge.us.us.us.us.us.i ], [ zeroinitializer, %.preheader2.us.us.us.us.i ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv40.i
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !42 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 176
  %invariant.gep.us.us.us.us.us.i = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv45.i ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 428
  %invariant.gep9.us.us.us.us.us.i = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv45.i ; 3 uses
  br i1 %i.im, label %.epil.preheader79, label %.preheader.us.us.us.us.us.i.new

.preheader.us.us.us.us.us.i.new:                  ; preds = %.preheader.us.us.us.us.us.i, %.preheader.us.us.us.us.us.i.new
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i28.1, %.preheader.us.us.us.us.us.i.new ], [ 0, %.preheader.us.us.us.us.us.i ] ; 4 uses
  %i.it = phi <2 x float> [ %i.jh, %.preheader.us.us.us.us.us.i.new ], [ %i.io, %.preheader.us.us.us.us.us.i ]
  %niter85 = phi i64 [ %niter85.next.1, %.preheader.us.us.us.us.us.i.new ], [ 0, %.preheader.us.us.us.us.us.i ]
  %gep.us.us.us.us.us.i = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep.us.us.us.us.us.i, i64 %indvars.iv.i27
  %i.iu = load float, ptr %gep.us.us.us.us.us.i, align 4, !tbaa !54
  %gep10.us.us.us.us.us.i = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep9.us.us.us.us.us.i, i64 %indvars.iv.i27
  %i.iv = load float, ptr %gep10.us.us.us.us.us.i, align 4, !tbaa !54
  %i.iw = fmul nsz float %i.iu, %i.iv
  %i.ix = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fdiv nsz <2 x float> %i.iy, %i.ik
  %i.ja = fadd nsz <2 x float> %i.it, %i.iz
  %indvars.iv.next.i28 = or disjoint i64 %indvars.iv.i27, 1 ; 2 uses
  %gep.us.us.us.us.us.i.1 = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep.us.us.us.us.us.i, i64 %indvars.iv.next.i28
  %i.jb = load float, ptr %gep.us.us.us.us.us.i.1, align 4, !tbaa !54
  %gep10.us.us.us.us.us.i.1 = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep9.us.us.us.us.us.i, i64 %indvars.iv.next.i28
  %i.jc = load float, ptr %gep10.us.us.us.us.us.i.1, align 4, !tbaa !54
  %i.jd = fmul nsz float %i.jb, %i.jc
  %i.je = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fdiv nsz <2 x float> %i.jf, %i.ik
  %i.jh = fadd nsz <2 x float> %i.ja, %i.jg       ; 3 uses
  %indvars.iv.next.i28.1 = add nuw nsw i64 %indvars.iv.i27, 2 ; 2 uses
  %niter85.next.1 = add i64 %niter85, 2           ; 2 uses
  %niter85.ncmp.1 = icmp eq i64 %niter85.next.1, %unroll_iter84
  br i1 %niter85.ncmp.1, label %._crit_edge.us.us.us.us.us.i.unr-lcssa, label %.preheader.us.us.us.us.us.i.new, !llvm.loop !145

._crit_edge.us.us.us.us.us.i.unr-lcssa:           ; preds = %.preheader.us.us.us.us.us.i.new
  br i1 %lcmp.mod81.not, label %._crit_edge.us.us.us.us.us.i, label %.epil.preheader79

.epil.preheader79:                                ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.preheader.us.us.us.us.us.i
  %indvars.iv.i27.epil.init = phi i64 [ 0, %.preheader.us.us.us.us.us.i ], [ %indvars.iv.next.i28.1, %._crit_edge.us.us.us.us.us.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x float> [ %i.io, %.preheader.us.us.us.us.us.i ], [ %i.jh, %._crit_edge.us.us.us.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %gep.us.us.us.us.us.i.epil = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep.us.us.us.us.us.i, i64 %indvars.iv.i27.epil.init
  %i.ji = load float, ptr %gep.us.us.us.us.us.i.epil, align 4, !tbaa !54
  %gep10.us.us.us.us.us.i.epil = getelementptr inbounds nuw [84 x i8], ptr %invariant.gep9.us.us.us.us.us.i, i64 %indvars.iv.i27.epil.init
  %i.jj = load float, ptr %gep10.us.us.us.us.us.i.epil, align 4, !tbaa !54
  %i.jk = fmul nsz float %i.ji, %i.jj
  %i.jl = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = fdiv nsz <2 x float> %i.jm, %i.ik
  %i.jo = fadd nsz <2 x float> %.epil.init, %i.jn
  br label %._crit_edge.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.i:                     ; preds = %._crit_edge.us.us.us.us.us.i.unr-lcssa, %.epil.preheader79
end_hunk_0
