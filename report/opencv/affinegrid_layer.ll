Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/affinegrid_layer?download=true
inline.NumInlined: 767
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS0_3MatERS8_iiiiffffffEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %.010.i98.i.i.i = phi ptr [ %i.fq, %.lr.ph.i95.i.i.i ], [ %i.av, %.lr.ph.i95.i.i.i.preheader ]
  %niter50 = phi i64 [ %niter50.next.3, %.lr.ph.i95.i.i.i ], [ 0, %.lr.ph.i95.i.i.i.preheader ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i97.i.i.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !56
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i97.i.i.i
  %i.et = load i64, ptr %i.es, align 8, !tbaa !45
  %i.eu = mul i64 %i.et, %i.er
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i98.i.i.i, i64 %i.eu
  %indvars.iv.next.i99.i.i.i = or disjoint i64 %indvars.iv.i97.i.i.i, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i99.i.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !56
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i99.i.i.i
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !45
  %i.fb = mul i64 %i.fa, %i.ey
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fb
  %indvars.iv.next.i99.i.i.i.1 = or disjoint i64 %indvars.iv.i97.i.i.i, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i99.i.i.i.1
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !56
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i99.i.i.i.1
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !45
  %i.fi = mul i64 %i.fh, %i.ff
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fi
  %indvars.iv.next.i99.i.i.i.2 = or disjoint i64 %indvars.iv.i97.i.i.i, 3 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i99.i.i.i.2
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !56
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i99.i.i.i.2
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !45
  %i.fp = mul i64 %i.fo, %i.fm
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fp ; 3 uses
  %indvars.iv.next.i99.i.i.i.3 = add nuw nsw i64 %indvars.iv.i97.i.i.i, 4 ; 2 uses
  %niter50.next.3 = add i64 %niter50, 4           ; 2 uses
  %niter50.ncmp.3 = icmp eq i64 %niter50.next.3, %unroll_iter49
  br i1 %niter50.ncmp.3, label %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i95.i.i.i, !llvm.loop !2

_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i95.i.i.i
  br i1 %lcmp.mod46.not, label %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i, label %.lr.ph.i95.i.i.i.epil.preheader

.lr.ph.i95.i.i.i.epil.preheader:                  ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa, %.lr.ph.i95.i.i.i.preheader
  %indvars.iv.i97.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i95.i.i.i.preheader ], [ %indvars.iv.next.i99.i.i.i.3, %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ]
  %.010.i98.i.i.i.epil.init = phi ptr [ %i.av, %.lr.ph.i95.i.i.i.preheader ], [ %i.fq, %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i95.i.i.i.epil

.lr.ph.i95.i.i.i.epil:                            ; preds = %.lr.ph.i95.i.i.i.epil, %.lr.ph.i95.i.i.i.epil.preheader
  %indvars.iv.i97.i.i.i.epil = phi i64 [ %indvars.iv.next.i99.i.i.i.epil, %.lr.ph.i95.i.i.i.epil ], [ %indvars.iv.i97.i.i.i.epil.init, %.lr.ph.i95.i.i.i.epil.preheader ] ; 3 uses
  %.010.i98.i.i.i.epil = phi ptr [ %i.fx, %.lr.ph.i95.i.i.i.epil ], [ %.010.i98.i.i.i.epil.init, %.lr.ph.i95.i.i.i.epil.preheader ]
  %epil.iter45 = phi i64 [ %epil.iter45.next, %.lr.ph.i95.i.i.i.epil ], [ 0, %.lr.ph.i95.i.i.i.epil.preheader ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i97.i.i.i.epil
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !56
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i97.i.i.i.epil
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !45
  %i.fw = mul i64 %i.fv, %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %.010.i98.i.i.i.epil, i64 %i.fw ; 2 uses
  %indvars.iv.next.i99.i.i.i.epil = add nuw nsw i64 %indvars.iv.i97.i.i.i.epil, 1
  %epil.iter45.next = add i64 %epil.iter45, 1     ; 2 uses
  %epil.iter45.cmp.not = icmp eq i64 %epil.iter45.next, %xtraiter44
  br i1 %epil.iter45.cmp.not, label %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i, label %.lr.ph.i95.i.i.i.epil, !llvm.loop !204

_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i:         ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa, %.lr.ph.i95.i.i.i.epil, %bb.e
  %.0.lcssa.i86116.i.i.i = phi ptr [ %i.av, %bb.e ], [ %.lcssa32, %.lr.ph.i95.i.i.i.epil ], [ %.lcssa32, %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0.lcssa.i110114.i.i.i = phi ptr [ %i.av, %bb.e ], [ %.lcssa, %.lr.ph.i95.i.i.i.epil ], [ %.lcssa, %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0.lcssa.i94.i.i.i = phi ptr [ %i.av, %bb.e ], [ %i.fq, %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ], [ %i.fx, %.lr.ph.i95.i.i.i.epil ] ; 2 uses
  %i.fy = load float, ptr %.0.lcssa.i110114.i.i.i, align 4, !tbaa !63
  %i.fz = load float, ptr %.0.lcssa.i86116.i.i.i, align 4, !tbaa !63
  %i.ga = load float, ptr %.0.lcssa.i94.i.i.i, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.gb = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %i.fz, i64 1
  br label %bb.f

bb.f:                                             ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i, %bb.d
  %.184.i.i.i = phi i32 [ %i.bt, %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i ], [ %.083122.i.i.i, %bb.d ]
  %.182.i.i.i = phi ptr [ %.0.lcssa.i110114.i.i.i, %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i ], [ %.081123.i.i.i, %bb.d ] ; 3 uses
  %.180.i.i.i = phi ptr [ %.0.lcssa.i86116.i.i.i, %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i ], [ %.079124.i.i.i, %bb.d ] ; 3 uses
  %.178.i.i.i = phi ptr [ %.0.lcssa.i94.i.i.i, %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i ], [ %.077125.i.i.i, %bb.d ] ; 4 uses
  %.1.i.i.i = phi float [ %i.ga, %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i ], [ %.072128.i.i.i, %bb.d ] ; 3 uses
  %i.gd = phi <2 x float> [ %i.gc, %_ZNK2cv3Mat3ptrIfEEPKT_PKi.exit101.i.i.i ], [ %i.bs, %bb.d ] ; 3 uses
  %i.ge = insertelement <2 x i32> poison, i32 %.recomposed66, i64 0
  %i.gf = insertelement <2 x i32> %i.ge, i32 %i.bv, i64 1
  %i.gg = sitofp <2 x i32> %i.gf to <2 x float>
  %i.gh = getelementptr inbounds nuw i8, ptr %.182.i.i.i, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %.182.i.i.i, i64 12
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !63
  %i.gk = getelementptr inbounds nuw i8, ptr %.180.i.i.i, i64 4
  %i.gl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.gg, <2 x float> %i.bm) ; 4 uses
  %i.gm = load <2 x float>, ptr %i.gh, align 4, !tbaa !63 ; 2 uses
  %i.gn = load <2 x float>, ptr %i.gk, align 4, !tbaa !63 ; 2 uses
  %i.go = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gp = shufflevector <2 x float> %i.gm, <2 x float> %i.gn, <2 x i32> <i32 1, i32 3>
  %i.gq = fmul <2 x float> %i.go, %i.gp
  %i.gr = shufflevector <2 x float> %i.gm, <2 x float> %i.gn, <2 x i32> <i32 0, i32 2>
  %i.gs = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.gs, <2 x float> %i.gq)
  %i.gu = getelementptr inbounds nuw i8, ptr %.180.i.i.i, i64 12
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !63
  %i.gw = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gx = insertelement <2 x float> %i.gw, float %i.gv, i64 1
  %i.gy = fadd <2 x float> %i.gx, %i.gt           ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.178.i.i.i, i64 4
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !63
  %i.hb = getelementptr inbounds nuw i8, ptr %.178.i.i.i, i64 8
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !63
  %i.hd = extractelement <2 x float> %i.gl, i64 1
  %i.he = fmul float %i.hd, %i.hc
  %i.hf = extractelement <2 x float> %i.gl, i64 0
  %i.hg = call float @llvm.fmuladd.f32(float %i.ha, float %i.hf, float %i.he)
  %i.hh = getelementptr inbounds nuw i8, ptr %.178.i.i.i, i64 12
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !63
  %i.hj = fadd float %i.hi, %i.hg                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 %i.bt, ptr %i.d, align 16, !tbaa !56
  store i32 %i.bv, ptr %i.ay, align 4, !tbaa !56
  store i32 %.recomposed66, ptr %i.az, align 8, !tbaa !56
  store i32 0, ptr %i.ba, align 4, !tbaa !56
  store i32 0, ptr %i.bb, align 16, !tbaa !56
  br i1 %i.bg, label %.lr.ph.i103.i.i.i.preheader, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i

.lr.ph.i103.i.i.i.preheader:                      ; preds = %bb.f
  br i1 %i.bq, label %.lr.ph.i103.i.i.i.epil.preheader, label %.lr.ph.i103.i.i.i

.lr.ph.i103.i.i.i:                                ; preds = %.lr.ph.i103.i.i.i.preheader, %.lr.ph.i103.i.i.i
  %indvars.iv.i105.i.i.i = phi i64 [ %indvars.iv.next.i107.i.i.i.3, %.lr.ph.i103.i.i.i ], [ 0, %.lr.ph.i103.i.i.i.preheader ] ; 6 uses
  %.010.i106.i.i.i = phi ptr [ %i.il, %.lr.ph.i103.i.i.i ], [ %i.bf, %.lr.ph.i103.i.i.i.preheader ]
  %niter57 = phi i64 [ %niter57.next.3, %.lr.ph.i103.i.i.i ], [ 0, %.lr.ph.i103.i.i.i.preheader ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i105.i.i.i
  %i.hl = load i32, ptr %i.hk, align 16, !tbaa !56
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i105.i.i.i
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !45
  %i.hp = mul i64 %i.ho, %i.hm
  %i.hq = getelementptr inbounds nuw i8, ptr %.010.i106.i.i.i, i64 %i.hp
  %indvars.iv.next.i107.i.i.i = or disjoint i64 %indvars.iv.i105.i.i.i, 1 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i107.i.i.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !56
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i107.i.i.i
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !45
  %i.hw = mul i64 %i.hv, %i.ht
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hw
  %indvars.iv.next.i107.i.i.i.1 = or disjoint i64 %indvars.iv.i105.i.i.i, 2 ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i107.i.i.i.1
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !56
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i107.i.i.i.1
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !45
  %i.id = mul i64 %i.ic, %i.ia
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.id
  %indvars.iv.next.i107.i.i.i.2 = or disjoint i64 %indvars.iv.i105.i.i.i, 3 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i107.i.i.i.2
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !56
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i107.i.i.i.2
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !45
  %i.ik = mul i64 %i.ij, %i.ih
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ik ; 3 uses
  %indvars.iv.next.i107.i.i.i.3 = add nuw nsw i64 %indvars.iv.i105.i.i.i, 4 ; 2 uses
  %niter57.next.3 = add i64 %niter57, 4           ; 2 uses
  %niter57.ncmp.3 = icmp eq i64 %niter57.next.3, %unroll_iter56
  br i1 %niter57.ncmp.3, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i103.i.i.i, !llvm.loop !6

_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i103.i.i.i
  br i1 %lcmp.mod53.not, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i, label %.lr.ph.i103.i.i.i.epil.preheader

.lr.ph.i103.i.i.i.epil.preheader:                 ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i103.i.i.i.preheader
  %indvars.iv.i105.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i103.i.i.i.preheader ], [ %indvars.iv.next.i107.i.i.i.3, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ]
  %.010.i106.i.i.i.epil.init = phi ptr [ %i.bf, %.lr.ph.i103.i.i.i.preheader ], [ %i.il, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod55)
  br label %.lr.ph.i103.i.i.i.epil

.lr.ph.i103.i.i.i.epil:                           ; preds = %.lr.ph.i103.i.i.i.epil, %.lr.ph.i103.i.i.i.epil.preheader
  %indvars.iv.i105.i.i.i.epil = phi i64 [ %indvars.iv.next.i107.i.i.i.epil, %.lr.ph.i103.i.i.i.epil ], [ %indvars.iv.i105.i.i.i.epil.init, %.lr.ph.i103.i.i.i.epil.preheader ] ; 3 uses
  %.010.i106.i.i.i.epil = phi ptr [ %i.is, %.lr.ph.i103.i.i.i.epil ], [ %.010.i106.i.i.i.epil.init, %.lr.ph.i103.i.i.i.epil.preheader ]
  %epil.iter52 = phi i64 [ %epil.iter52.next, %.lr.ph.i103.i.i.i.epil ], [ 0, %.lr.ph.i103.i.i.i.epil.preheader ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i105.i.i.i.epil
  %i.in = load i32, ptr %i.im, align 4, !tbaa !56
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i105.i.i.i.epil
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !45
  %i.ir = mul i64 %i.iq, %i.io
  %i.is = getelementptr inbounds nuw i8, ptr %.010.i106.i.i.i.epil, i64 %i.ir ; 2 uses
  %indvars.iv.next.i107.i.i.i.epil = add nuw nsw i64 %indvars.iv.i105.i.i.i.epil, 1
  %epil.iter52.next = add i64 %epil.iter52, 1     ; 2 uses
  %epil.iter52.cmp.not = icmp eq i64 %epil.iter52.next, %xtraiter51
  br i1 %epil.iter52.cmp.not, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i, label %.lr.ph.i103.i.i.i.epil, !llvm.loop !205

_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i:              ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i103.i.i.i.epil, %bb.f
  %.0.lcssa.i102.i.i.i = phi ptr [ %i.bf, %bb.f ], [ %i.il, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ], [ %i.is, %.lr.ph.i103.i.i.i.epil ] ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %broadcast.splatinsert27 = insertelement <4 x float> poison, float %.1.i.i.i, i64 0
  %broadcast.splat28 = shufflevector <4 x float> %broadcast.splatinsert27, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert29.a = insertelement <4 x float> poison, float %i.hj, i64 0
  %broadcast.splat30.a = shufflevector <4 x float> %broadcast.splatinsert29.a, <4 x float> poison, <4 x i32> zeroinitializer
  %4 = shufflevector <2 x float> %i.gd, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %5 = shufflevector <2 x float> %i.gy, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.it = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.iu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.it, <4 x float> %broadcast.splat18) ; 2 uses
  %i.iv = mul nuw nsw i64 %index, 12
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i102.i.i.i, i64 %i.iv
  %i.ix = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat28, <4 x float> %i.iu, <4 x float> %broadcast.splat30.a)
  %6 = shufflevector <4 x float> %i.iu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.iy = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> %6, <8 x float> %5)
  %i.iz = shufflevector <4 x float> %i.ix, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.iy, <8 x float> %i.iz, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.iw, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ja = icmp eq i64 %index.next, %n.vec
  br i1 %i.ja, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader31

.lr.ph.i.i.i.preheader31:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.jb = add nsw i32 %.071129.i.i.i, 1           ; 2 uses
  %exitcond137.not.i.i.i = icmp eq i32 %i.jb, %i.ak
  br i1 %exitcond137.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS0_3MatERS4_iiiiffffffEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %bb.d, !llvm.loop !207

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader31, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader31 ] ; 3 uses
  %i.jc = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.jd = uitofp nneg i32 %i.jc to float
  %i.je = call float @llvm.fmuladd.f32(float %i.o, float %i.jd, float %i.r) ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv.i.i.i, 12
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i102.i.i.i, i64 %.idx.i.i.i ; 2 uses
  %i.jg = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.jh, <2 x float> %i.gy)
  store <2 x float> %i.ji, ptr %i.jf, align 4, !tbaa !63
  %i.jj = call float @llvm.fmuladd.f32(float %.1.i.i.i, float %i.je, float %i.hj)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store float %i.jj, ptr %i.jk, align 4, !tbaa !63
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !208

_ZSt10__invoke_rIvRZN2cv3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS0_3MatERS4_iiiiffffffEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS0_3MatERS8_iiiiffffffEUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS_3MatERS3_iiiiffffffEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !98
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !72
  store ptr %.val, ptr %0, align 8, !tbaa !72
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %.val6, i64 88, i1 false), !tbaa.struct !105
  store ptr %i.a, ptr %0, align 8, !tbaa !72
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !72 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 88) #19
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIfEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS0_3MatERS8_iiiiffffffEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %i.a = alloca [3 x i32], align 4                ; 10 uses
  %i.b = alloca [3 x i32], align 4                ; 10 uses
  %i.c = alloca [3 x i32], align 4                ; 10 uses
  %i.d = alloca [5 x i32], align 16               ; 12 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !72    ; 11 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !229, !nonnull !61, !align !91
  %i.f = load i32, ptr %i.e, align 4, !tbaa !56   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !230, !nonnull !61, !align !91
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !231, !nonnull !61, !align !91
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !232, !nonnull !61, !align !91
  %i.o = load float, ptr %i.n, align 4, !tbaa !63 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !233, !nonnull !61, !align !91
  %i.r = load float, ptr %i.q, align 4, !tbaa !63 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !234, !nonnull !61, !align !91
  %i.u = load float, ptr %i.t, align 4, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !235, !nonnull !61, !align !91
  %i.x = load float, ptr %i.w, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !236, !nonnull !61, !align !91
  %i.aa = load float, ptr %i.z, align 4, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !237, !nonnull !61, !align !91
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !238, !nonnull !61, !align !92
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !239, !nonnull !61, !align !92
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.ah)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = load i32, ptr %1, align 4, !tbaa !65    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66 ; 2 uses
  %i.al = icmp slt i32 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph131.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS0_3MatERS4_iiiiffffffEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph131.i.i.i:                                  ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.at = load i32, ptr %i.as, align 4            ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load ptr, ptr %i.au, align 8            ; 9 uses
  %i.aw = icmp sgt i32 %i.at, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 15 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.at to i64 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !54 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !93 ; 3 uses
  %i.bg = icmp sgt i32 %i.bd, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %wide.trip.count.i104.i.i.i = zext i32 %i.bd to i64 ; 2 uses
  %i.bi = icmp sgt i32 %i.i, 0
  %wide.trip.count.i.i.i = zext i32 %i.i to i64   ; 3 uses
  %i.bj = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.aa, i64 1
  %i.bl = insertelement <2 x float> poison, float %i.x, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.ad, i64 1
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.bn = icmp ult i32 %i.at, 4
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  %xtraiter38 = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.bo = icmp ult i32 %i.at, 4
  %unroll_iter43 = and i64 %wide.trip.count.i.i.i.i, 2147483644
  %lcmp.mod40.not = icmp eq i64 %xtraiter38, 0
  %lcmp.mod42 = icmp ne i64 %xtraiter38, 0
  %xtraiter45 = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.bp = icmp ult i32 %i.at, 4
  %unroll_iter50 = and i64 %wide.trip.count.i.i.i.i, 2147483644
  %lcmp.mod47.not = icmp eq i64 %xtraiter45, 0
  %lcmp.mod49 = icmp ne i64 %xtraiter45, 0
  %xtraiter52 = and i64 %wide.trip.count.i104.i.i.i, 3 ; 3 uses
  %i.bq = icmp ult i32 %i.bd, 4
  %unroll_iter57 = and i64 %wide.trip.count.i104.i.i.i, 2147483644
  %lcmp.mod54.not = icmp eq i64 %xtraiter52, 0
  %lcmp.mod56 = icmp ne i64 %xtraiter52, 0
  %min.iters.check = icmp ult i32 %i.i, 4
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat18 = shufflevector <4 x float> %broadcast.splatinsert17, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %bb.d

end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS0_3MatERS8_iiiiffffffEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.et = load i64, ptr %i.es, align 8, !tbaa !45
  %i.eu = mul i64 %i.et, %i.er
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i98.i.i.i, i64 %i.eu
  %indvars.iv.next.i99.i.i.i = or disjoint i64 %indvars.iv.i97.i.i.i, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i99.i.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !56
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i99.i.i.i
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !45
  %i.fb = mul i64 %i.fa, %i.ey
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fb
  %indvars.iv.next.i99.i.i.i.1 = or disjoint i64 %indvars.iv.i97.i.i.i, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i99.i.i.i.1
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !56
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i99.i.i.i.1
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !45
  %i.fi = mul i64 %i.fh, %i.ff
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fi
  %indvars.iv.next.i99.i.i.i.2 = or disjoint i64 %indvars.iv.i97.i.i.i, 3 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i99.i.i.i.2
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !56
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i99.i.i.i.2
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !45
  %i.fp = mul i64 %i.fo, %i.fm
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fp ; 3 uses
  %indvars.iv.next.i99.i.i.i.3 = add nuw nsw i64 %indvars.iv.i97.i.i.i, 4 ; 2 uses
  %niter51.next.3 = add i64 %niter51, 4           ; 2 uses
  %niter51.ncmp.3 = icmp eq i64 %niter51.next.3, %unroll_iter50
  br i1 %niter51.ncmp.3, label %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i95.i.i.i, !llvm.loop !3

_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i95.i.i.i
  br i1 %lcmp.mod47.not, label %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i, label %.lr.ph.i95.i.i.i.epil.preheader

.lr.ph.i95.i.i.i.epil.preheader:                  ; preds = %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa, %.lr.ph.i95.i.i.i.preheader
  %indvars.iv.i97.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i95.i.i.i.preheader ], [ %indvars.iv.next.i99.i.i.i.3, %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ]
  %.010.i98.i.i.i.epil.init = phi ptr [ %i.av, %.lr.ph.i95.i.i.i.preheader ], [ %i.fq, %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod49)
  br label %.lr.ph.i95.i.i.i.epil

.lr.ph.i95.i.i.i.epil:                            ; preds = %.lr.ph.i95.i.i.i.epil, %.lr.ph.i95.i.i.i.epil.preheader
  %indvars.iv.i97.i.i.i.epil = phi i64 [ %indvars.iv.next.i99.i.i.i.epil, %.lr.ph.i95.i.i.i.epil ], [ %indvars.iv.i97.i.i.i.epil.init, %.lr.ph.i95.i.i.i.epil.preheader ] ; 3 uses
  %.010.i98.i.i.i.epil = phi ptr [ %i.fx, %.lr.ph.i95.i.i.i.epil ], [ %.010.i98.i.i.i.epil.init, %.lr.ph.i95.i.i.i.epil.preheader ]
  %epil.iter46 = phi i64 [ %epil.iter46.next, %.lr.ph.i95.i.i.i.epil ], [ 0, %.lr.ph.i95.i.i.i.epil.preheader ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i97.i.i.i.epil
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !56
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i97.i.i.i.epil
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !45
  %i.fw = mul i64 %i.fv, %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %.010.i98.i.i.i.epil, i64 %i.fw ; 2 uses
  %indvars.iv.next.i99.i.i.i.epil = add nuw nsw i64 %indvars.iv.i97.i.i.i.epil, 1
  %epil.iter46.next = add i64 %epil.iter46, 1     ; 2 uses
  %epil.iter46.cmp.not = icmp eq i64 %epil.iter46.next, %xtraiter45
  br i1 %epil.iter46.cmp.not, label %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i, label %.lr.ph.i95.i.i.i.epil, !llvm.loop !223

_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i:         ; preds = %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa, %.lr.ph.i95.i.i.i.epil, %bb.e
  %.0.lcssa.i86116.i.i.i = phi ptr [ %i.av, %bb.e ], [ %.lcssa33, %.lr.ph.i95.i.i.i.epil ], [ %.lcssa33, %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0.lcssa.i110114.i.i.i = phi ptr [ %i.av, %bb.e ], [ %.lcssa, %.lr.ph.i95.i.i.i.epil ], [ %.lcssa, %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0.lcssa.i94.i.i.i = phi ptr [ %i.av, %bb.e ], [ %i.fq, %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ], [ %i.fx, %.lr.ph.i95.i.i.i.epil ] ; 2 uses
  %i.fy = load double, ptr %.0.lcssa.i110114.i.i.i, align 8, !tbaa !88
  %i.fz = load double, ptr %.0.lcssa.i86116.i.i.i, align 8, !tbaa !88
  %i.ga = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fz, i64 1
  %i.gc = fptrunc <2 x double> %i.gb to <2 x float>
  %i.gd = load double, ptr %.0.lcssa.i94.i.i.i, align 8, !tbaa !88
  %i.ge = fptrunc double %i.gd to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

bb.f:                                             ; preds = %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i, %bb.d
  %.184.i.i.i = phi i32 [ %i.bt, %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i ], [ %.083122.i.i.i, %bb.d ]
  %.182.i.i.i = phi ptr [ %.0.lcssa.i110114.i.i.i, %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i ], [ %.081123.i.i.i, %bb.d ] ; 3 uses
  %.180.i.i.i = phi ptr [ %.0.lcssa.i86116.i.i.i, %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i ], [ %.079124.i.i.i, %bb.d ] ; 3 uses
  %.178.i.i.i = phi ptr [ %.0.lcssa.i94.i.i.i, %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i ], [ %.077125.i.i.i, %bb.d ] ; 3 uses
  %.1.i.i.i = phi float [ %i.ge, %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i ], [ %.072128.i.i.i, %bb.d ] ; 3 uses
  %i.gf = phi <2 x float> [ %i.gc, %_ZNK2cv3Mat3ptrIdEEPKT_PKi.exit101.i.i.i ], [ %i.bs, %bb.d ] ; 3 uses
  %i.gg = insertelement <2 x i32> poison, i32 %.recomposed67, i64 0
  %i.gh = insertelement <2 x i32> %i.gg, i32 %i.bv, i64 1
  %i.gi = sitofp <2 x i32> %i.gh to <2 x float>
  %i.gj = getelementptr inbounds nuw i8, ptr %.182.i.i.i, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %.182.i.i.i, i64 24
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !88
  %i.gm = getelementptr inbounds nuw i8, ptr %.180.i.i.i, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.180.i.i.i, i64 24
  %i.go = load double, ptr %i.gn, align 8, !tbaa !88
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.gi, <2 x float> %i.bm) ; 4 uses
  %i.gq = load <2 x double>, ptr %i.gj, align 8, !tbaa !88 ; 2 uses
  %i.gr = load <2 x double>, ptr %i.gm, align 8, !tbaa !88 ; 2 uses
  %i.gs = shufflevector <2 x double> %i.gq, <2 x double> %i.gr, <2 x i32> <i32 0, i32 2>
  %i.gt = fptrunc <2 x double> %i.gs to <2 x float>
  %i.gu = shufflevector <2 x double> %i.gq, <2 x double> %i.gr, <2 x i32> <i32 1, i32 3>
  %i.gv = fptrunc <2 x double> %i.gu to <2 x float>
  %i.gw = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gx = fmul <2 x float> %i.gw, %i.gv
  %i.gy = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gy, <2 x float> %i.gx)
  %i.ha = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.go, i64 1
  %i.hc = fptrunc <2 x double> %i.hb to <2 x float>
  %i.hd = fadd <2 x float> %i.gz, %i.hc           ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.178.i.i.i, i64 8
  %i.hf = load <2 x double>, ptr %i.he, align 8, !tbaa !88
  %i.hg = fptrunc <2 x double> %i.hf to <2 x float> ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.gp, %i.hg
  %i.hh = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.hi = extractelement <2 x float> %i.gp, i64 0
  %i.hj = extractelement <2 x float> %i.hg, i64 0
  %i.hk = call float @llvm.fmuladd.f32(float %i.hj, float %i.hi, float %i.hh)
  %i.hl = getelementptr inbounds nuw i8, ptr %.178.i.i.i, i64 24
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !88
  %i.hn = fptrunc double %i.hm to float
  %i.ho = fadd float %i.hk, %i.hn                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 %i.bt, ptr %i.d, align 16, !tbaa !56
  store i32 %i.bv, ptr %i.ay, align 4, !tbaa !56
  store i32 %.recomposed67, ptr %i.az, align 8, !tbaa !56
  store i32 0, ptr %i.ba, align 4, !tbaa !56
  store i32 0, ptr %i.bb, align 16, !tbaa !56
  br i1 %i.bg, label %.lr.ph.i103.i.i.i.preheader, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i

.lr.ph.i103.i.i.i.preheader:                      ; preds = %bb.f
  br i1 %i.bq, label %.lr.ph.i103.i.i.i.epil.preheader, label %.lr.ph.i103.i.i.i

.lr.ph.i103.i.i.i:                                ; preds = %.lr.ph.i103.i.i.i.preheader, %.lr.ph.i103.i.i.i
  %indvars.iv.i105.i.i.i = phi i64 [ %indvars.iv.next.i107.i.i.i.3, %.lr.ph.i103.i.i.i ], [ 0, %.lr.ph.i103.i.i.i.preheader ] ; 6 uses
  %.010.i106.i.i.i = phi ptr [ %i.iq, %.lr.ph.i103.i.i.i ], [ %i.bf, %.lr.ph.i103.i.i.i.preheader ]
  %niter58 = phi i64 [ %niter58.next.3, %.lr.ph.i103.i.i.i ], [ 0, %.lr.ph.i103.i.i.i.preheader ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i105.i.i.i
  %i.hq = load i32, ptr %i.hp, align 16, !tbaa !56
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i105.i.i.i
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !45
  %i.hu = mul i64 %i.ht, %i.hr
  %i.hv = getelementptr inbounds nuw i8, ptr %.010.i106.i.i.i, i64 %i.hu
  %indvars.iv.next.i107.i.i.i = or disjoint i64 %indvars.iv.i105.i.i.i, 1 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i107.i.i.i
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !56
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i107.i.i.i
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !45
  %i.ib = mul i64 %i.ia, %i.hy
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.ib
  %indvars.iv.next.i107.i.i.i.1 = or disjoint i64 %indvars.iv.i105.i.i.i, 2 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i107.i.i.i.1
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !56
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i107.i.i.i.1
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !45
  %i.ii = mul i64 %i.ih, %i.if
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ii
  %indvars.iv.next.i107.i.i.i.2 = or disjoint i64 %indvars.iv.i105.i.i.i, 3 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i107.i.i.i.2
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !56
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i107.i.i.i.2
  %i.io = load i64, ptr %i.in, align 8, !tbaa !45
  %i.ip = mul i64 %i.io, %i.im
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ip ; 3 uses
  %indvars.iv.next.i107.i.i.i.3 = add nuw nsw i64 %indvars.iv.i105.i.i.i, 4 ; 2 uses
  %niter58.next.3 = add i64 %niter58, 4           ; 2 uses
  %niter58.ncmp.3 = icmp eq i64 %niter58.next.3, %unroll_iter57
  br i1 %niter58.ncmp.3, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i103.i.i.i, !llvm.loop !6

_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i103.i.i.i
  br i1 %lcmp.mod54.not, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i, label %.lr.ph.i103.i.i.i.epil.preheader

.lr.ph.i103.i.i.i.epil.preheader:                 ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i103.i.i.i.preheader
  %indvars.iv.i105.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i103.i.i.i.preheader ], [ %indvars.iv.next.i107.i.i.i.3, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ]
  %.010.i106.i.i.i.epil.init = phi ptr [ %i.bf, %.lr.ph.i103.i.i.i.preheader ], [ %i.iq, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph.i103.i.i.i.epil

.lr.ph.i103.i.i.i.epil:                           ; preds = %.lr.ph.i103.i.i.i.epil, %.lr.ph.i103.i.i.i.epil.preheader
  %indvars.iv.i105.i.i.i.epil = phi i64 [ %indvars.iv.next.i107.i.i.i.epil, %.lr.ph.i103.i.i.i.epil ], [ %indvars.iv.i105.i.i.i.epil.init, %.lr.ph.i103.i.i.i.epil.preheader ] ; 3 uses
  %.010.i106.i.i.i.epil = phi ptr [ %i.ix, %.lr.ph.i103.i.i.i.epil ], [ %.010.i106.i.i.i.epil.init, %.lr.ph.i103.i.i.i.epil.preheader ]
  %epil.iter53 = phi i64 [ %epil.iter53.next, %.lr.ph.i103.i.i.i.epil ], [ 0, %.lr.ph.i103.i.i.i.epil.preheader ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i105.i.i.i.epil
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !56
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i105.i.i.i.epil
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !45
  %i.iw = mul i64 %i.iv, %i.it
  %i.ix = getelementptr inbounds nuw i8, ptr %.010.i106.i.i.i.epil, i64 %i.iw ; 2 uses
  %indvars.iv.next.i107.i.i.i.epil = add nuw nsw i64 %indvars.iv.i105.i.i.i.epil, 1
  %epil.iter53.next = add i64 %epil.iter53, 1     ; 2 uses
  %epil.iter53.cmp.not = icmp eq i64 %epil.iter53.next, %xtraiter52
  br i1 %epil.iter53.cmp.not, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i, label %.lr.ph.i103.i.i.i.epil, !llvm.loop !224

_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i:              ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i103.i.i.i.epil, %bb.f
  %.0.lcssa.i102.i.i.i = phi ptr [ %i.bf, %bb.f ], [ %i.iq, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ], [ %i.ix, %.lr.ph.i103.i.i.i.epil ] ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %broadcast.splatinsert27 = insertelement <4 x float> poison, float %.1.i.i.i, i64 0
  %broadcast.splat28 = shufflevector <4 x float> %broadcast.splatinsert27, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert29.a = insertelement <4 x float> poison, float %i.ho, i64 0
  %broadcast.splat30.a = shufflevector <4 x float> %broadcast.splatinsert29.a, <4 x float> poison, <4 x i32> zeroinitializer
  %4 = shufflevector <2 x float> %i.gf, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %5 = shufflevector <2 x float> %i.hd, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.iy = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.iz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.iy, <4 x float> %broadcast.splat18) ; 2 uses
  %i.ja = mul nuw nsw i64 %index, 12
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i102.i.i.i, i64 %i.ja
  %i.jc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat28, <4 x float> %i.iz, <4 x float> %broadcast.splat30.a)
  %6 = shufflevector <4 x float> %i.iz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.jd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> %6, <8 x float> %5)
  %i.je = shufflevector <4 x float> %i.jc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.jd, <8 x float> %i.je, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.jb, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.jf = icmp eq i64 %index.next, %n.vec
  br i1 %i.jf, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader32

.lr.ph.i.i.i.preheader32:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.jg = add nsw i32 %.071129.i.i.i, 1           ; 2 uses
  %exitcond137.not.i.i.i = icmp eq i32 %i.jg, %i.ak
  br i1 %exitcond137.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS0_3MatERS4_iiiiffffffEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %bb.d, !llvm.loop !226

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader32, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader32 ] ; 3 uses
  %i.jh = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.ji = uitofp nneg i32 %i.jh to float
  %i.jj = call float @llvm.fmuladd.f32(float %i.o, float %i.ji, float %i.r) ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv.i.i.i, 12
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i102.i.i.i, i64 %.idx.i.i.i ; 2 uses
  %i.jl = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.jm, <2 x float> %i.hd)
  store <2 x float> %i.jn, ptr %i.jk, align 4, !tbaa !63
  %i.jo = call float @llvm.fmuladd.f32(float %.1.i.i.i, float %i.jj, float %i.ho)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store float %i.jo, ptr %i.jp, align 4, !tbaa !63
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !227

_ZSt10__invoke_rIvRZN2cv3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS0_3MatERS4_iiiiffffffEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS0_3MatERS8_iiiiffffffEUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS_3MatERS3_iiiiffffffEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !98
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !72
  store ptr %.val, ptr %0, align 8, !tbaa !72
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %.val6, i64 88, i1 false), !tbaa.struct !105
  store ptr %i.a, ptr %0, align 8, !tbaa !72
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !72 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 88) #19
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DIdEEvRKNS1_3MatERS5_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12_GLOBAL__N_113computeGrid3DINS0_6hfloatEEEvRKNS0_3MatERS9_iiiiffffffEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %i.a = alloca [3 x i32], align 4                ; 10 uses
  %i.b = alloca [3 x i32], align 4                ; 10 uses
  %i.c = alloca [3 x i32], align 4                ; 10 uses
  %i.d = alloca [5 x i32], align 16               ; 12 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !72    ; 11 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !248, !nonnull !61, !align !91
  %i.f = load i32, ptr %i.e, align 4, !tbaa !56   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !249, !nonnull !61, !align !91
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !250, !nonnull !61, !align !91
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !251, !nonnull !61, !align !91
  %i.o = load float, ptr %i.n, align 4, !tbaa !63 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !252, !nonnull !61, !align !91
  %i.r = load float, ptr %i.q, align 4, !tbaa !63 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !253, !nonnull !61, !align !91
  %i.u = load float, ptr %i.t, align 4, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !254, !nonnull !61, !align !91
  %i.x = load float, ptr %i.w, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !255, !nonnull !61, !align !91
  %i.aa = load float, ptr %i.z, align 4, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !256, !nonnull !61, !align !91
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !257, !nonnull !61, !align !92
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !258, !nonnull !61, !align !92
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.ah)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = load i32, ptr %1, align 4, !tbaa !65    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66 ; 2 uses
  %i.al = icmp slt i32 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph153.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS0_6hfloatEEEvRKNS0_3MatERS5_iiiiffffffEUlRKNS0_5RangeEE_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

.lr.ph153.i.i.i:                                  ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.at = load i32, ptr %i.as, align 4            ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load ptr, ptr %i.au, align 8            ; 9 uses
  %i.aw = icmp sgt i32 %i.at, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 15 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.at to i64 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !54 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !93 ; 3 uses
  %i.bg = icmp sgt i32 %i.bd, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %wide.trip.count.i126.i.i.i = zext i32 %i.bd to i64 ; 2 uses
  %i.bi = icmp sgt i32 %i.i, 0
  %wide.trip.count.i.i.i = zext i32 %i.i to i64   ; 3 uses
  %i.bj = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.u, i64 1
  %i.bl = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.x, i64 1
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.bn = icmp ult i32 %i.at, 4
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  %xtraiter37 = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.bo = icmp ult i32 %i.at, 4
  %unroll_iter42 = and i64 %wide.trip.count.i.i.i.i, 2147483644
  %lcmp.mod39.not = icmp eq i64 %xtraiter37, 0
  %lcmp.mod41 = icmp ne i64 %xtraiter37, 0
  %xtraiter44 = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.bp = icmp ult i32 %i.at, 4
  %unroll_iter49 = and i64 %wide.trip.count.i.i.i.i, 2147483644
  %lcmp.mod46.not = icmp eq i64 %xtraiter44, 0
  %lcmp.mod48 = icmp ne i64 %xtraiter44, 0
  %xtraiter51 = and i64 %wide.trip.count.i126.i.i.i, 3 ; 3 uses
  %i.bq = icmp ult i32 %i.bd, 4
  %unroll_iter56 = and i64 %wide.trip.count.i126.i.i.i, 2147483644
  %lcmp.mod53.not = icmp eq i64 %xtraiter51, 0
  %lcmp.mod55 = icmp ne i64 %xtraiter51, 0
  %min.iters.check = icmp ult i32 %i.i, 4
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat18 = shufflevector <4 x float> %broadcast.splatinsert17, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %bb.d

end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12_GLOBAL__N_113computeGrid3DINS0_6hfloatEEEvRKNS0_3MatERS9_iiiiffffffEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.ll = add nuw nsw i32 %i.lk, 939524096
  %i.lm = and i32 %i.li, 31744
  switch i32 %i.lm, label %_ZNK2cv6hfloatcvfEv.exit117.i.i.i [
    i32 31744, label %bb.w
    i32 0, label %bb.x
  ]

bb.w:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit115.i.i.i
  %i.ln = or i32 %i.lj, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit117.i.i.i

bb.x:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit115.i.i.i
  %i.lo = add nuw nsw i32 %i.lk, 947912704
  %i.lp = bitcast i32 %i.lo to float
  %i.lq = fadd float %i.lp, f0xB8800000
  %i.lr = bitcast float %i.lq to i32
  br label %_ZNK2cv6hfloatcvfEv.exit117.i.i.i

_ZNK2cv6hfloatcvfEv.exit117.i.i.i:                ; preds = %bb.x, %bb.w, %_ZNK2cv6hfloatcvfEv.exit115.i.i.i
  %i.ls = phi i32 [ %i.ln, %bb.w ], [ %i.lr, %bb.x ], [ %i.ll, %_ZNK2cv6hfloatcvfEv.exit115.i.i.i ]
  %.signext.i116.i.i.i = sext i16 %i.lh to i32
  %i.lt = and i32 %.signext.i116.i.i.i, -2147483648
  %i.lu = or i32 %i.ls, %i.lt
  %i.lv = bitcast i32 %i.lu to float
  %i.lw = fadd float %i.lf, %i.lv                 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.178.i.i.i, i64 2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !102 ; 2 uses
  %i.lz = zext i16 %i.ly to i32                   ; 2 uses
  %i.ma = shl nuw nsw i32 %i.lz, 13               ; 2 uses
  %i.mb = and i32 %i.ma, 268427264                ; 2 uses
  %i.mc = add nuw nsw i32 %i.mb, 939524096
  %i.md = and i32 %i.lz, 31744
  switch i32 %i.md, label %_ZNK2cv6hfloatcvfEv.exit119.i.i.i [
    i32 31744, label %bb.y
    i32 0, label %bb.z
  ]

bb.y:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit117.i.i.i
  %i.me = or i32 %i.ma, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit119.i.i.i

bb.z:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit117.i.i.i
  %i.mf = add nuw nsw i32 %i.mb, 947912704
  %i.mg = bitcast i32 %i.mf to float
  %i.mh = fadd float %i.mg, f0xB8800000
  %i.mi = bitcast float %i.mh to i32
  br label %_ZNK2cv6hfloatcvfEv.exit119.i.i.i

_ZNK2cv6hfloatcvfEv.exit119.i.i.i:                ; preds = %bb.z, %bb.y, %_ZNK2cv6hfloatcvfEv.exit117.i.i.i
  %i.mj = phi i32 [ %i.me, %bb.y ], [ %i.mi, %bb.z ], [ %i.mc, %_ZNK2cv6hfloatcvfEv.exit117.i.i.i ]
  %.signext.i118.i.i.i = sext i16 %i.ly to i32
  %i.mk = and i32 %.signext.i118.i.i.i, -2147483648
  %i.ml = or i32 %i.mj, %i.mk
  %i.mm = bitcast i32 %i.ml to float
  %i.mn = getelementptr inbounds nuw i8, ptr %.178.i.i.i, i64 4
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !102 ; 2 uses
  %i.mp = zext i16 %i.mo to i32                   ; 2 uses
  %i.mq = shl nuw nsw i32 %i.mp, 13               ; 2 uses
  %i.mr = and i32 %i.mq, 268427264                ; 2 uses
  %i.ms = add nuw nsw i32 %i.mr, 939524096
  %i.mt = and i32 %i.mp, 31744
  switch i32 %i.mt, label %_ZNK2cv6hfloatcvfEv.exit121.i.i.i [
    i32 31744, label %bb.aa
    i32 0, label %bb.ab
  ]

bb.aa:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit119.i.i.i
  %i.mu = or i32 %i.mq, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit121.i.i.i

bb.ab:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit119.i.i.i
  %i.mv = add nuw nsw i32 %i.mr, 947912704
  %i.mw = bitcast i32 %i.mv to float
  %i.mx = fadd float %i.mw, f0xB8800000
  %i.my = bitcast float %i.mx to i32
  br label %_ZNK2cv6hfloatcvfEv.exit121.i.i.i

_ZNK2cv6hfloatcvfEv.exit121.i.i.i:                ; preds = %bb.ab, %bb.aa, %_ZNK2cv6hfloatcvfEv.exit119.i.i.i
  %i.mz = phi i32 [ %i.mu, %bb.aa ], [ %i.my, %bb.ab ], [ %i.ms, %_ZNK2cv6hfloatcvfEv.exit119.i.i.i ]
  %.signext.i120.i.i.i = sext i16 %i.mo to i32
  %i.na = and i32 %.signext.i120.i.i.i, -2147483648
  %i.nb = or i32 %i.mz, %i.na
  %i.nc = bitcast i32 %i.nb to float
  %i.nd = fmul float %i.jd, %i.nc
  %i.ne = call float @llvm.fmuladd.f32(float %i.mm, float %i.jf, float %i.nd)
  %i.nf = getelementptr inbounds nuw i8, ptr %.178.i.i.i, i64 6
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !102 ; 2 uses
  %i.nh = zext i16 %i.ng to i32                   ; 2 uses
  %i.ni = shl nuw nsw i32 %i.nh, 13               ; 2 uses
  %i.nj = and i32 %i.ni, 268427264                ; 2 uses
  %i.nk = add nuw nsw i32 %i.nj, 939524096
  %i.nl = and i32 %i.nh, 31744
  switch i32 %i.nl, label %_ZNK2cv6hfloatcvfEv.exit123.i.i.i [
    i32 31744, label %bb.ac
    i32 0, label %bb.ad
  ]

bb.ac:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit121.i.i.i
  %i.nm = or i32 %i.ni, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit123.i.i.i

bb.ad:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit121.i.i.i
  %i.nn = add nuw nsw i32 %i.nj, 947912704
  %i.no = bitcast i32 %i.nn to float
  %i.np = fadd float %i.no, f0xB8800000
  %i.nq = bitcast float %i.np to i32
  br label %_ZNK2cv6hfloatcvfEv.exit123.i.i.i

_ZNK2cv6hfloatcvfEv.exit123.i.i.i:                ; preds = %bb.ad, %bb.ac, %_ZNK2cv6hfloatcvfEv.exit121.i.i.i
  %i.nr = phi i32 [ %i.nm, %bb.ac ], [ %i.nq, %bb.ad ], [ %i.nk, %_ZNK2cv6hfloatcvfEv.exit121.i.i.i ]
  %.signext.i122.i.i.i = sext i16 %i.ng to i32
  %i.ns = and i32 %.signext.i122.i.i.i, -2147483648
  %i.nt = or i32 %i.nr, %i.ns
  %i.nu = bitcast i32 %i.nt to float
  %i.nv = fadd float %i.ne, %i.nu                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 %i.bt, ptr %i.d, align 16, !tbaa !56
  store i32 %i.bv, ptr %i.ay, align 4, !tbaa !56
  store i32 %.recomposed66, ptr %i.az, align 8, !tbaa !56
  store i32 0, ptr %i.ba, align 4, !tbaa !56
  store i32 0, ptr %i.bb, align 16, !tbaa !56
  br i1 %i.bg, label %.lr.ph.i125.i.i.i.preheader, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i

.lr.ph.i125.i.i.i.preheader:                      ; preds = %_ZNK2cv6hfloatcvfEv.exit123.i.i.i
  br i1 %i.bq, label %.lr.ph.i125.i.i.i.epil.preheader, label %.lr.ph.i125.i.i.i

.lr.ph.i125.i.i.i:                                ; preds = %.lr.ph.i125.i.i.i.preheader, %.lr.ph.i125.i.i.i
  %indvars.iv.i127.i.i.i = phi i64 [ %indvars.iv.next.i129.i.i.i.3, %.lr.ph.i125.i.i.i ], [ 0, %.lr.ph.i125.i.i.i.preheader ] ; 6 uses
  %.010.i128.i.i.i = phi ptr [ %i.ox, %.lr.ph.i125.i.i.i ], [ %i.bf, %.lr.ph.i125.i.i.i.preheader ]
  %niter57 = phi i64 [ %niter57.next.3, %.lr.ph.i125.i.i.i ], [ 0, %.lr.ph.i125.i.i.i.preheader ]
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i127.i.i.i
  %i.nx = load i32, ptr %i.nw, align 16, !tbaa !56
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i127.i.i.i
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !45
  %i.ob = mul i64 %i.oa, %i.ny
  %i.oc = getelementptr inbounds nuw i8, ptr %.010.i128.i.i.i, i64 %i.ob
  %indvars.iv.next.i129.i.i.i = or disjoint i64 %indvars.iv.i127.i.i.i, 1 ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i129.i.i.i
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !56
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i129.i.i.i
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !45
  %i.oi = mul i64 %i.oh, %i.of
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oi
  %indvars.iv.next.i129.i.i.i.1 = or disjoint i64 %indvars.iv.i127.i.i.i, 2 ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i129.i.i.i.1
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !56
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i129.i.i.i.1
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !45
  %i.op = mul i64 %i.oo, %i.om
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.op
  %indvars.iv.next.i129.i.i.i.2 = or disjoint i64 %indvars.iv.i127.i.i.i, 3 ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i129.i.i.i.2
  %i.os = load i32, ptr %i.or, align 4, !tbaa !56
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i129.i.i.i.2
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !45
  %i.ow = mul i64 %i.ov, %i.ot
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ow ; 3 uses
  %indvars.iv.next.i129.i.i.i.3 = add nuw nsw i64 %indvars.iv.i127.i.i.i, 4 ; 2 uses
  %niter57.next.3 = add i64 %niter57, 4           ; 2 uses
  %niter57.ncmp.3 = icmp eq i64 %niter57.next.3, %unroll_iter56
  br i1 %niter57.ncmp.3, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i125.i.i.i, !llvm.loop !6

_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i125.i.i.i
  br i1 %lcmp.mod53.not, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i, label %.lr.ph.i125.i.i.i.epil.preheader

.lr.ph.i125.i.i.i.epil.preheader:                 ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i125.i.i.i.preheader
  %indvars.iv.i127.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i125.i.i.i.preheader ], [ %indvars.iv.next.i129.i.i.i.3, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ]
  %.010.i128.i.i.i.epil.init = phi ptr [ %i.bf, %.lr.ph.i125.i.i.i.preheader ], [ %i.ox, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod55)
  br label %.lr.ph.i125.i.i.i.epil

.lr.ph.i125.i.i.i.epil:                           ; preds = %.lr.ph.i125.i.i.i.epil, %.lr.ph.i125.i.i.i.epil.preheader
  %indvars.iv.i127.i.i.i.epil = phi i64 [ %indvars.iv.next.i129.i.i.i.epil, %.lr.ph.i125.i.i.i.epil ], [ %indvars.iv.i127.i.i.i.epil.init, %.lr.ph.i125.i.i.i.epil.preheader ] ; 3 uses
  %.010.i128.i.i.i.epil = phi ptr [ %i.pe, %.lr.ph.i125.i.i.i.epil ], [ %.010.i128.i.i.i.epil.init, %.lr.ph.i125.i.i.i.epil.preheader ]
  %epil.iter52 = phi i64 [ %epil.iter52.next, %.lr.ph.i125.i.i.i.epil ], [ 0, %.lr.ph.i125.i.i.i.epil.preheader ]
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i127.i.i.i.epil
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !56
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i127.i.i.i.epil
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !45
  %i.pd = mul i64 %i.pc, %i.pa
  %i.pe = getelementptr inbounds nuw i8, ptr %.010.i128.i.i.i.epil, i64 %i.pd ; 2 uses
  %indvars.iv.next.i129.i.i.i.epil = add nuw nsw i64 %indvars.iv.i127.i.i.i.epil, 1
  %epil.iter52.next = add i64 %epil.iter52, 1     ; 2 uses
  %epil.iter52.cmp.not = icmp eq i64 %epil.iter52.next, %xtraiter51
  br i1 %epil.iter52.cmp.not, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i, label %.lr.ph.i125.i.i.i.epil, !llvm.loop !243

_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i:              ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i125.i.i.i.epil, %_ZNK2cv6hfloatcvfEv.exit123.i.i.i
  %.0.lcssa.i124.i.i.i = phi ptr [ %i.bf, %_ZNK2cv6hfloatcvfEv.exit123.i.i.i ], [ %i.ox, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ], [ %i.pe, %.lr.ph.i125.i.i.i.epil ] ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %broadcast.splatinsert21 = insertelement <4 x float> poison, float %i.jx, i64 0
  %broadcast.splatinsert25 = insertelement <4 x float> poison, float %i.lw, i64 0
  %broadcast.splatinsert27 = insertelement <4 x float> poison, float %.1.i.i.i, i64 0
  %broadcast.splat28 = shufflevector <4 x float> %broadcast.splatinsert27, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %i.nv, i64 0
  %broadcast.splat30 = shufflevector <4 x float> %broadcast.splatinsert29, <4 x float> poison, <4 x i32> zeroinitializer
  %4 = shufflevector <2 x float> %i.hs, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %5 = shufflevector <4 x float> %broadcast.splatinsert21, <4 x float> %broadcast.splatinsert25, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.pf = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.pg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.pf, <4 x float> %broadcast.splat18) ; 2 uses
  %i.ph = mul nuw nsw i64 %index, 12
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i124.i.i.i, i64 %i.ph
  %i.pj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat28, <4 x float> %i.pg, <4 x float> %broadcast.splat30)
  %6 = shufflevector <4 x float> %i.pg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> %6, <8 x float> %5)
  %i.pl = shufflevector <4 x float> %i.pj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.pk, <8 x float> %i.pl, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.pi, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.pm = icmp eq i64 %index.next, %n.vec
  br i1 %i.pm, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader31

.lr.ph.i.i.i.preheader31:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %i.pn = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.po = insertelement <2 x float> %i.pn, float %i.lw, i64 1
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.pp = add nsw i32 %.071151.i.i.i, 1           ; 2 uses
  %exitcond159.not.i.i.i = icmp eq i32 %i.pp, %i.ak
  br i1 %exitcond159.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS0_6hfloatEEEvRKNS0_3MatERS5_iiiiffffffEUlRKNS0_5RangeEE_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.d, !llvm.loop !245

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader31, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader31 ] ; 3 uses
  %i.pq = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.pr = uitofp nneg i32 %i.pq to float
  %i.ps = call float @llvm.fmuladd.f32(float %i.o, float %i.pr, float %i.r) ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv.i.i.i, 12
  %i.pt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i124.i.i.i, i64 %.idx.i.i.i ; 2 uses
  %i.pu = insertelement <2 x float> poison, float %i.ps, i64 0
  %i.pv = shufflevector <2 x float> %i.pu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hs, <2 x float> %i.pv, <2 x float> %i.po)
  store <2 x float> %i.pw, ptr %i.pt, align 4, !tbaa !63
  %i.px = call float @llvm.fmuladd.f32(float %.1.i.i.i, float %i.ps, float %i.nv)
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store float %i.px, ptr %i.py, align 4, !tbaa !63
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !246

_ZSt10__invoke_rIvRZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS0_6hfloatEEEvRKNS0_3MatERS5_iiiiffffffEUlRKNS0_5RangeEE_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12_GLOBAL__N_113computeGrid3DINS0_6hfloatEEEvRKNS0_3MatERS9_iiiiffffffEUlS3_E_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6hfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS_6hfloatEEEvRKNS_3MatERS4_iiiiffffffEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !98
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6hfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !72
  store ptr %.val, ptr %0, align 8, !tbaa !72
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6hfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %.val6, i64 88, i1 false), !tbaa.struct !105
  store ptr %i.a, ptr %0, align 8, !tbaa !72
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6hfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !72 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6hfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 88) #19
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6hfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6hfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12_GLOBAL__N_113computeGrid3DINS0_6bfloatEEEvRKNS0_3MatERS9_iiiiffffffEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %i.a = alloca [3 x i32], align 4                ; 10 uses
  %i.b = alloca [3 x i32], align 4                ; 10 uses
  %i.c = alloca [3 x i32], align 4                ; 10 uses
  %i.d = alloca [5 x i32], align 16               ; 12 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !72    ; 11 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !267, !nonnull !61, !align !91
  %i.f = load i32, ptr %i.e, align 4, !tbaa !56   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !268, !nonnull !61, !align !91
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !269, !nonnull !61, !align !91
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !270, !nonnull !61, !align !91
  %i.o = load float, ptr %i.n, align 4, !tbaa !63 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !271, !nonnull !61, !align !91
  %i.r = load float, ptr %i.q, align 4, !tbaa !63 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !272, !nonnull !61, !align !91
  %i.u = load float, ptr %i.t, align 4, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !273, !nonnull !61, !align !91
  %i.x = load float, ptr %i.w, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !274, !nonnull !61, !align !91
  %i.aa = load float, ptr %i.z, align 4, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !275, !nonnull !61, !align !91
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !276, !nonnull !61, !align !92
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !277, !nonnull !61, !align !92
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.ah)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = load i32, ptr %1, align 4, !tbaa !65    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66 ; 2 uses
  %i.al = icmp slt i32 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph131.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS0_6bfloatEEEvRKNS0_3MatERS5_iiiiffffffEUlRKNS0_5RangeEE_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

.lr.ph131.i.i.i:                                  ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.at = load i32, ptr %i.as, align 4            ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load ptr, ptr %i.au, align 8            ; 9 uses
  %i.aw = icmp sgt i32 %i.at, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 15 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.at to i64 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !54 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !93 ; 3 uses
  %i.bg = icmp sgt i32 %i.bd, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %wide.trip.count.i104.i.i.i = zext i32 %i.bd to i64 ; 2 uses
  %i.bi = icmp sgt i32 %i.i, 0
  %wide.trip.count.i.i.i = zext i32 %i.i to i64   ; 3 uses
  %i.bj = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.aa, i64 1
  %i.bl = insertelement <2 x float> poison, float %i.x, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.ad, i64 1
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.bn = icmp ult i32 %i.at, 4
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  %xtraiter38 = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.bo = icmp ult i32 %i.at, 4
  %unroll_iter43 = and i64 %wide.trip.count.i.i.i.i, 2147483644
  %lcmp.mod40.not = icmp eq i64 %xtraiter38, 0
  %lcmp.mod42 = icmp ne i64 %xtraiter38, 0
  %xtraiter45 = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.bp = icmp ult i32 %i.at, 4
  %unroll_iter50 = and i64 %wide.trip.count.i.i.i.i, 2147483644
  %lcmp.mod47.not = icmp eq i64 %xtraiter45, 0
  %lcmp.mod49 = icmp ne i64 %xtraiter45, 0
  %xtraiter52 = and i64 %wide.trip.count.i104.i.i.i, 3 ; 3 uses
  %i.bq = icmp ult i32 %i.bd, 4
  %unroll_iter57 = and i64 %wide.trip.count.i104.i.i.i, 2147483644
  %lcmp.mod54.not = icmp eq i64 %xtraiter52, 0
  %lcmp.mod56 = icmp ne i64 %xtraiter52, 0
  %min.iters.check = icmp ult i32 %i.i, 4
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat18 = shufflevector <4 x float> %broadcast.splatinsert17, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12_GLOBAL__N_113computeGrid3DINS0_6bfloatEEEvRKNS0_3MatERS9_iiiiffffffEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i99.i.i.i.1
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !45
  %i.fi = mul i64 %i.fh, %i.ff
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fi
  %indvars.iv.next.i99.i.i.i.2 = or disjoint i64 %indvars.iv.i97.i.i.i, 3 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i99.i.i.i.2
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !56
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i99.i.i.i.2
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !45
  %i.fp = mul i64 %i.fo, %i.fm
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fp ; 3 uses
  %indvars.iv.next.i99.i.i.i.3 = add nuw nsw i64 %indvars.iv.i97.i.i.i, 4 ; 2 uses
  %niter51.next.3 = add i64 %niter51, 4           ; 2 uses
  %niter51.ncmp.3 = icmp eq i64 %niter51.next.3, %unroll_iter50
  br i1 %niter51.ncmp.3, label %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i95.i.i.i, !llvm.loop !5

_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i95.i.i.i
  br i1 %lcmp.mod47.not, label %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i, label %.lr.ph.i95.i.i.i.epil.preheader

.lr.ph.i95.i.i.i.epil.preheader:                  ; preds = %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa, %.lr.ph.i95.i.i.i.preheader
  %indvars.iv.i97.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i95.i.i.i.preheader ], [ %indvars.iv.next.i99.i.i.i.3, %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ]
  %.010.i98.i.i.i.epil.init = phi ptr [ %i.av, %.lr.ph.i95.i.i.i.preheader ], [ %i.fq, %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod49)
  br label %.lr.ph.i95.i.i.i.epil

.lr.ph.i95.i.i.i.epil:                            ; preds = %.lr.ph.i95.i.i.i.epil, %.lr.ph.i95.i.i.i.epil.preheader
  %indvars.iv.i97.i.i.i.epil = phi i64 [ %indvars.iv.next.i99.i.i.i.epil, %.lr.ph.i95.i.i.i.epil ], [ %indvars.iv.i97.i.i.i.epil.init, %.lr.ph.i95.i.i.i.epil.preheader ] ; 3 uses
  %.010.i98.i.i.i.epil = phi ptr [ %i.fx, %.lr.ph.i95.i.i.i.epil ], [ %.010.i98.i.i.i.epil.init, %.lr.ph.i95.i.i.i.epil.preheader ]
  %epil.iter46 = phi i64 [ %epil.iter46.next, %.lr.ph.i95.i.i.i.epil ], [ 0, %.lr.ph.i95.i.i.i.epil.preheader ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i97.i.i.i.epil
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !56
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i97.i.i.i.epil
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !45
  %i.fw = mul i64 %i.fv, %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %.010.i98.i.i.i.epil, i64 %i.fw ; 2 uses
  %indvars.iv.next.i99.i.i.i.epil = add nuw nsw i64 %indvars.iv.i97.i.i.i.epil, 1
  %epil.iter46.next = add i64 %epil.iter46, 1     ; 2 uses
  %epil.iter46.cmp.not = icmp eq i64 %epil.iter46.next, %xtraiter45
  br i1 %epil.iter46.cmp.not, label %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i, label %.lr.ph.i95.i.i.i.epil, !llvm.loop !261

_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i: ; preds = %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa, %.lr.ph.i95.i.i.i.epil, %bb.e
  %.0.lcssa.i86116.i.i.i = phi ptr [ %i.av, %bb.e ], [ %.lcssa33, %.lr.ph.i95.i.i.i.epil ], [ %.lcssa33, %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0.lcssa.i110114.i.i.i = phi ptr [ %i.av, %bb.e ], [ %.lcssa, %.lr.ph.i95.i.i.i.epil ], [ %.lcssa, %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0.lcssa.i94.i.i.i = phi ptr [ %i.av, %bb.e ], [ %i.fq, %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i.loopexit.unr-lcssa ], [ %i.fx, %.lr.ph.i95.i.i.i.epil ] ; 2 uses
  %i.fy = load i16, ptr %.0.lcssa.i110114.i.i.i, align 2, !tbaa !104
  %i.fz = load i16, ptr %.0.lcssa.i86116.i.i.i, align 2, !tbaa !104
  %i.ga = insertelement <2 x i16> poison, i16 %i.fy, i64 0
  %i.gb = insertelement <2 x i16> %i.ga, i16 %i.fz, i64 1
  %i.gc = zext <2 x i16> %i.gb to <2 x i32>
  %i.gd = shl nuw <2 x i32> %i.gc, splat (i32 16)
  %i.ge = bitcast <2 x i32> %i.gd to <2 x float>
  %i.gf = load i16, ptr %.0.lcssa.i94.i.i.i, align 2, !tbaa !104
  %i.gg = zext i16 %i.gf to i32
  %i.gh = shl nuw i32 %i.gg, 16
  %i.gi = bitcast i32 %i.gh to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

bb.f:                                             ; preds = %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i, %bb.d
  %.184.i.i.i = phi i32 [ %i.bt, %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i ], [ %.083122.i.i.i, %bb.d ]
  %.182.i.i.i = phi ptr [ %.0.lcssa.i110114.i.i.i, %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i ], [ %.081123.i.i.i, %bb.d ] ; 3 uses
  %.180.i.i.i = phi ptr [ %.0.lcssa.i86116.i.i.i, %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i ], [ %.079124.i.i.i, %bb.d ] ; 3 uses
  %.178.i.i.i = phi ptr [ %.0.lcssa.i94.i.i.i, %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i ], [ %.077125.i.i.i, %bb.d ] ; 3 uses
  %.1.i.i.i = phi float [ %i.gi, %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i ], [ %.072128.i.i.i, %bb.d ] ; 3 uses
  %i.gj = phi <2 x float> [ %i.ge, %_ZNK2cv3Mat3ptrINS_6bfloatEEEPKT_PKi.exit101.i.i.i ], [ %i.bs, %bb.d ] ; 3 uses
  %i.gk = insertelement <2 x i32> poison, i32 %.recomposed67, i64 0
  %i.gl = insertelement <2 x i32> %i.gk, i32 %i.bv, i64 1
  %i.gm = sitofp <2 x i32> %i.gl to <2 x float>
  %i.gn = getelementptr inbounds nuw i8, ptr %.182.i.i.i, i64 2
  %i.go = getelementptr inbounds nuw i8, ptr %.182.i.i.i, i64 6
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !104
  %i.gq = getelementptr inbounds nuw i8, ptr %.180.i.i.i, i64 2
  %i.gr = getelementptr inbounds nuw i8, ptr %.180.i.i.i, i64 6
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !104
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.gm, <2 x float> %i.bm) ; 4 uses
  %i.gu = load <2 x i16>, ptr %i.gn, align 2, !tbaa !104 ; 2 uses
  %i.gv = load <2 x i16>, ptr %i.gq, align 2, !tbaa !104 ; 2 uses
  %i.gw = shufflevector <2 x i16> %i.gu, <2 x i16> %i.gv, <2 x i32> <i32 0, i32 2>
  %i.gx = zext <2 x i16> %i.gw to <2 x i32>
  %i.gy = shl nuw <2 x i32> %i.gx, splat (i32 16)
  %i.gz = bitcast <2 x i32> %i.gy to <2 x float>
  %i.ha = shufflevector <2 x i16> %i.gu, <2 x i16> %i.gv, <2 x i32> <i32 1, i32 3>
  %i.hb = zext <2 x i16> %i.ha to <2 x i32>
  %i.hc = shl nuw <2 x i32> %i.hb, splat (i32 16)
  %i.hd = bitcast <2 x i32> %i.hc to <2 x float>
  %i.he = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hf = fmul <2 x float> %i.he, %i.hd
  %i.hg = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.hg, <2 x float> %i.hf)
  %i.hi = insertelement <2 x i16> poison, i16 %i.gp, i64 0
  %i.hj = insertelement <2 x i16> %i.hi, i16 %i.gs, i64 1
  %i.hk = zext <2 x i16> %i.hj to <2 x i32>
  %i.hl = shl nuw <2 x i32> %i.hk, splat (i32 16)
  %i.hm = bitcast <2 x i32> %i.hl to <2 x float>
  %i.hn = fadd <2 x float> %i.hh, %i.hm           ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.178.i.i.i, i64 2
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !104
  %i.hq = zext i16 %i.hp to i32
  %i.hr = shl nuw i32 %i.hq, 16
  %i.hs = bitcast i32 %i.hr to float
  %i.ht = getelementptr inbounds nuw i8, ptr %.178.i.i.i, i64 4
  %i.hu = extractelement <2 x float> %i.gt, i64 0
  %i.hv = load <2 x i16>, ptr %i.ht, align 2, !tbaa !104
  %i.hw = zext <2 x i16> %i.hv to <2 x i32>
  %i.hx = shl nuw <2 x i32> %i.hw, splat (i32 16)
  %i.hy = bitcast <2 x i32> %i.hx to <2 x float>  ; 2 uses
  %shift = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.hy
  %i.hz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ia = call float @llvm.fmuladd.f32(float %i.hs, float %i.hu, float %i.hz)
  %i.ib = extractelement <2 x float> %i.hy, i64 1
  %i.ic = fadd float %i.ia, %i.ib                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 %i.bt, ptr %i.d, align 16, !tbaa !56
  store i32 %i.bv, ptr %i.ay, align 4, !tbaa !56
  store i32 %.recomposed67, ptr %i.az, align 8, !tbaa !56
  store i32 0, ptr %i.ba, align 4, !tbaa !56
  store i32 0, ptr %i.bb, align 16, !tbaa !56
  br i1 %i.bg, label %.lr.ph.i103.i.i.i.preheader, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i

.lr.ph.i103.i.i.i.preheader:                      ; preds = %bb.f
  br i1 %i.bq, label %.lr.ph.i103.i.i.i.epil.preheader, label %.lr.ph.i103.i.i.i

.lr.ph.i103.i.i.i:                                ; preds = %.lr.ph.i103.i.i.i.preheader, %.lr.ph.i103.i.i.i
  %indvars.iv.i105.i.i.i = phi i64 [ %indvars.iv.next.i107.i.i.i.3, %.lr.ph.i103.i.i.i ], [ 0, %.lr.ph.i103.i.i.i.preheader ] ; 6 uses
  %.010.i106.i.i.i = phi ptr [ %i.je, %.lr.ph.i103.i.i.i ], [ %i.bf, %.lr.ph.i103.i.i.i.preheader ]
  %niter58 = phi i64 [ %niter58.next.3, %.lr.ph.i103.i.i.i ], [ 0, %.lr.ph.i103.i.i.i.preheader ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i105.i.i.i
  %i.ie = load i32, ptr %i.id, align 16, !tbaa !56
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i105.i.i.i
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !45
  %i.ii = mul i64 %i.ih, %i.if
  %i.ij = getelementptr inbounds nuw i8, ptr %.010.i106.i.i.i, i64 %i.ii
  %indvars.iv.next.i107.i.i.i = or disjoint i64 %indvars.iv.i105.i.i.i, 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i107.i.i.i
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !56
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i107.i.i.i
  %i.io = load i64, ptr %i.in, align 8, !tbaa !45
  %i.ip = mul i64 %i.io, %i.im
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ip
  %indvars.iv.next.i107.i.i.i.1 = or disjoint i64 %indvars.iv.i105.i.i.i, 2 ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i107.i.i.i.1
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !56
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i107.i.i.i.1
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !45
  %i.iw = mul i64 %i.iv, %i.it
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.iw
  %indvars.iv.next.i107.i.i.i.2 = or disjoint i64 %indvars.iv.i105.i.i.i, 3 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i107.i.i.i.2
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !56
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i107.i.i.i.2
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !45
  %i.jd = mul i64 %i.jc, %i.ja
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.jd ; 3 uses
  %indvars.iv.next.i107.i.i.i.3 = add nuw nsw i64 %indvars.iv.i105.i.i.i, 4 ; 2 uses
  %niter58.next.3 = add i64 %niter58, 4           ; 2 uses
  %niter58.ncmp.3 = icmp eq i64 %niter58.next.3, %unroll_iter57
  br i1 %niter58.ncmp.3, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i103.i.i.i, !llvm.loop !6

_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i103.i.i.i
  br i1 %lcmp.mod54.not, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i, label %.lr.ph.i103.i.i.i.epil.preheader

.lr.ph.i103.i.i.i.epil.preheader:                 ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i103.i.i.i.preheader
  %indvars.iv.i105.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i103.i.i.i.preheader ], [ %indvars.iv.next.i107.i.i.i.3, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ]
  %.010.i106.i.i.i.epil.init = phi ptr [ %i.bf, %.lr.ph.i103.i.i.i.preheader ], [ %i.je, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph.i103.i.i.i.epil

.lr.ph.i103.i.i.i.epil:                           ; preds = %.lr.ph.i103.i.i.i.epil, %.lr.ph.i103.i.i.i.epil.preheader
  %indvars.iv.i105.i.i.i.epil = phi i64 [ %indvars.iv.next.i107.i.i.i.epil, %.lr.ph.i103.i.i.i.epil ], [ %indvars.iv.i105.i.i.i.epil.init, %.lr.ph.i103.i.i.i.epil.preheader ] ; 3 uses
  %.010.i106.i.i.i.epil = phi ptr [ %i.jl, %.lr.ph.i103.i.i.i.epil ], [ %.010.i106.i.i.i.epil.init, %.lr.ph.i103.i.i.i.epil.preheader ]
  %epil.iter53 = phi i64 [ %epil.iter53.next, %.lr.ph.i103.i.i.i.epil ], [ 0, %.lr.ph.i103.i.i.i.epil.preheader ]
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i105.i.i.i.epil
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !56
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i105.i.i.i.epil
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !45
  %i.jk = mul i64 %i.jj, %i.jh
  %i.jl = getelementptr inbounds nuw i8, ptr %.010.i106.i.i.i.epil, i64 %i.jk ; 2 uses
  %indvars.iv.next.i107.i.i.i.epil = add nuw nsw i64 %indvars.iv.i105.i.i.i.epil, 1
  %epil.iter53.next = add i64 %epil.iter53, 1     ; 2 uses
  %epil.iter53.cmp.not = icmp eq i64 %epil.iter53.next, %xtraiter52
  br i1 %epil.iter53.cmp.not, label %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i, label %.lr.ph.i103.i.i.i.epil, !llvm.loop !262

_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i:              ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i103.i.i.i.epil, %bb.f
  %.0.lcssa.i102.i.i.i = phi ptr [ %i.bf, %bb.f ], [ %i.je, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i.loopexit.unr-lcssa ], [ %i.jl, %.lr.ph.i103.i.i.i.epil ] ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %broadcast.splatinsert27 = insertelement <4 x float> poison, float %.1.i.i.i, i64 0
  %broadcast.splat28 = shufflevector <4 x float> %broadcast.splatinsert27, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert29.a = insertelement <4 x float> poison, float %i.ic, i64 0
  %broadcast.splat30.a = shufflevector <4 x float> %broadcast.splatinsert29.a, <4 x float> poison, <4 x i32> zeroinitializer
  %4 = shufflevector <2 x float> %i.gj, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %5 = shufflevector <2 x float> %i.hn, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.jm = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.jn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.jm, <4 x float> %broadcast.splat18) ; 2 uses
  %i.jo = mul nuw nsw i64 %index, 12
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i102.i.i.i, i64 %i.jo
  %i.jq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat28, <4 x float> %i.jn, <4 x float> %broadcast.splat30.a)
  %6 = shufflevector <4 x float> %i.jn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.jr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> %6, <8 x float> %5)
  %i.js = shufflevector <4 x float> %i.jq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.jr, <8 x float> %i.js, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.jp, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.jt = icmp eq i64 %index.next, %n.vec
  br i1 %i.jt, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader32

.lr.ph.i.i.i.preheader32:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN2cv3Mat3ptrIfEEPT_PKi.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.ju = add nsw i32 %.071129.i.i.i, 1           ; 2 uses
  %exitcond137.not.i.i.i = icmp eq i32 %i.ju, %i.ak
  br i1 %exitcond137.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS0_6bfloatEEEvRKNS0_3MatERS5_iiiiffffffEUlRKNS0_5RangeEE_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.d, !llvm.loop !264

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader32, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader32 ] ; 3 uses
  %i.jv = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.jw = uitofp nneg i32 %i.jv to float
  %i.jx = call float @llvm.fmuladd.f32(float %i.o, float %i.jw, float %i.r) ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv.i.i.i, 12
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i102.i.i.i, i64 %.idx.i.i.i ; 2 uses
  %i.jz = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.ka, <2 x float> %i.hn)
  store <2 x float> %i.kb, ptr %i.jy, align 4, !tbaa !63
  %i.kc = call float @llvm.fmuladd.f32(float %.1.i.i.i, float %i.jx, float %i.ic)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store float %i.kc, ptr %i.kd, align 4, !tbaa !63
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !265

_ZSt10__invoke_rIvRZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS0_6bfloatEEEvRKNS0_3MatERS5_iiiiffffffEUlRKNS0_5RangeEE_JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12_GLOBAL__N_113computeGrid3DINS0_6bfloatEEEvRKNS0_3MatERS9_iiiiffffffEUlS3_E_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6bfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS_6bfloatEEEvRKNS_3MatERS4_iiiiffffffEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !98
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6bfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !72
  store ptr %.val, ptr %0, align 8, !tbaa !72
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6bfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %.val6, i64 88, i1 false), !tbaa.struct !105
  store ptr %i.a, ptr %0, align 8, !tbaa !72
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6bfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !72 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6bfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 88) #19
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6bfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12_GLOBAL__N_113computeGrid3DINS1_6bfloatEEEvRKNS1_3MatERS6_iiiiffffffEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.130", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !106
  %i.k = load <2 x ptr>, ptr %0, align 8, !tbaa !279
  %i.l = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  store ptr %i.m, ptr %i.i, align 16, !tbaa !106
  %i.n = load <2 x ptr>, ptr %3, align 16, !tbaa !279
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !279
  store <2 x ptr> %i.n, ptr %0, align 8, !tbaa !279
  store ptr %i.j, ptr %i.a, align 8, !tbaa !106
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #19
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit:     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80   ; 5 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.e
  %i.v = sdiv exact i64 %i.u, 52
  %i.w = icmp ugt i64 %1, %i.v
  br i1 %i.w, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.s
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %bb.e ] ; 2 uses
  %i.x = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.06.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %2) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !278

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre16 = load ptr, ptr %i.r, align 8, !tbaa !80 ; 2 uses
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !81
  %.pre18 = ptrtoint ptr %.pre16 to i64
  %.pre19 = ptrtoint ptr %.pre17 to i64
  %.pre21 = sub i64 %.pre18, %.pre19
  %i.z = sdiv exact i64 %.pre21, -52
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, %bb.e
  %.pre-phi22 = phi i64 [ %i.z, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ 0, %bb.e ]
  %i.aa = phi ptr [ %.pre16, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ %i.s, %bb.e ] ; 2 uses
  %i.ab = add i64 %.pre-phi22, %1                 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not13.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.aa, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ] ; 2 uses
  %.01114.i.i.i.i = phi i64 [ %i.ac, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ]
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.015.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %2)
          to label %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i11
  %i.ac = add i64 %.01114.i.i.i.i, -1             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i.i12 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i12, label %_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i11, !llvm.loop !7

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #20 ; 0 uses
  invoke void @__cxa_rethrow() #21
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ah

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #22
end_hunk_3
