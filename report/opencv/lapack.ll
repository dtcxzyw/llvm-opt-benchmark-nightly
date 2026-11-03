Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lapack?download=true
inline.NumInlined: 622
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN2cv11JacobiImpl_IfEEbPT_mS2_S2_miPh:bb.a
  %lcmp.mod662 = trunc i64 %i.dc to i1
  %xtraiter665 = and i64 %i.dd, 1
  %i.dh = icmp eq i32 %5, 2
  %unroll_iter671 = and i64 %i.dd, -2
  %lcmp.mod667.not = icmp eq i64 %xtraiter665, 0
  %lcmp.mod670 = trunc i64 %i.dd to i1
  %i.di = add nsw i32 %5, -2
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count492, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count492
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph456, %bb.y
  %.0328455 = phi i32 [ 0, %.lr.ph456 ], [ %i.qa, %bb.y ]
  %i.dj = load i32, ptr %i.aq, align 4, !tbaa !50 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !20
  %i.dn = tail call noundef float @llvm.fabs.f32(float %i.dm) ; 3 uses
  br i1 %i.db, label %.lr.ph411.preheader, label %.lr.ph421.preheader

.lr.ph411.preheader:                              ; preds = %bb.h
  br i1 %i.dg, label %.lr.ph411.epil.preheader, label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader, %.lr.ph411
  %indvars.iv494 = phi i64 [ %indvars.iv.next495.1, %.lr.ph411 ], [ 1, %.lr.ph411.preheader ] ; 5 uses
  %.4409 = phi float [ %.5.1, %.lr.ph411 ], [ %i.dn, %.lr.ph411.preheader ] ; 2 uses
  %.1340408 = phi i32 [ %.2341.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %niter664 = phi i64 [ %niter664.next.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %i.do = mul i64 %i.a, %indvars.iv494
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !50
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr [4 x i8], ptr %0, i64 %i.do
  %i.dt = getelementptr [4 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load float, ptr %i.dt, align 4, !tbaa !20
  %i.dv = tail call noundef float @llvm.fabs.f32(float %i.du) ; 2 uses
  %i.dw = fcmp olt float %.4409, %i.dv            ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv494 to i32
  %.2341 = select i1 %i.dw, i32 %i.dx, i32 %.1340408
  %.5 = select i1 %i.dw, float %i.dv, float %.4409 ; 2 uses
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 3 uses
  %i.dy = mul i64 %i.a, %indvars.iv.next495
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next495
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !50
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [4 x i8], ptr %0, i64 %i.dy
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !20
  %i.ef = tail call noundef float @llvm.fabs.f32(float %i.ee) ; 2 uses
  %i.eg = fcmp olt float %.5, %i.ef               ; 2 uses
  %i.eh = trunc nuw nsw i64 %indvars.iv.next495 to i32
  %.2341.1 = select i1 %i.eg, i32 %i.eh, i32 %.2341 ; 3 uses
  %.5.1 = select i1 %i.eg, float %i.ef, float %.5 ; 3 uses
  %indvars.iv.next495.1 = add nuw nsw i64 %indvars.iv494, 2 ; 2 uses
  %niter664.next.1 = add nuw i64 %niter664, 2     ; 2 uses
  %niter664.ncmp.1 = icmp eq i64 %niter664.next.1, %unroll_iter663
  br i1 %niter664.ncmp.1, label %._crit_edge412.loopexit.unr-lcssa, label %.lr.ph411, !llvm.loop !266

._crit_edge412.loopexit.unr-lcssa:                ; preds = %.lr.ph411
  br i1 %lcmp.mod659.not, label %._crit_edge412.loopexit, label %.lr.ph411.epil.preheader

.lr.ph411.epil.preheader:                         ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.preheader
  %indvars.iv494.epil.init = phi i64 [ 1, %.lr.ph411.preheader ], [ %indvars.iv.next495.1, %._crit_edge412.loopexit.unr-lcssa ] ; 3 uses
  %.4409.epil.init = phi float [ %i.dn, %.lr.ph411.preheader ], [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ] ; 2 uses
  %.1340408.epil.init = phi i32 [ 0, %.lr.ph411.preheader ], [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod662)
  %i.ei = mul i64 %i.a, %indvars.iv494.epil.init
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494.epil.init
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !50
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr [4 x i8], ptr %0, i64 %i.ei
  %i.en = getelementptr [4 x i8], ptr %i.em, i64 %i.el
  %i.eo = load float, ptr %i.en, align 4, !tbaa !20
  %i.ep = tail call noundef float @llvm.fabs.f32(float %i.eo) ; 2 uses
  %i.eq = fcmp olt float %.4409.epil.init, %i.ep  ; 2 uses
  %i.er = trunc nuw nsw i64 %indvars.iv494.epil.init to i32
  %.2341.epil = select i1 %i.eq, i32 %i.er, i32 %.1340408.epil.init
  %.5.epil = select i1 %i.eq, float %i.ep, float %.4409.epil.init
  br label %._crit_edge412.loopexit

._crit_edge412.loopexit:                          ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.epil.preheader
  %.2341.lcssa = phi i32 [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.2341.epil, %.lr.ph411.epil.preheader ] ; 2 uses
  %.5.lcssa = phi float [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.5.epil, %.lr.ph411.epil.preheader ]
  %.phi.trans.insert = zext i32 %.2341.lcssa to i64
  %.phi.trans.insert551 = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert551, align 4, !tbaa !50
  br label %.lr.ph421.preheader

.lr.ph421.preheader:                              ; preds = %._crit_edge412.loopexit, %bb.h
  %.0325419.ph = phi i32 [ %i.dj, %bb.h ], [ %.pre, %._crit_edge412.loopexit ] ; 2 uses
  %.6418.ph = phi float [ %i.dn, %bb.h ], [ %.5.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  %.3342417.ph = phi i32 [ 0, %bb.h ], [ %.2341.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  br i1 %i.dh, label %.lr.ph421.epil.preheader, label %.lr.ph421

.lr.ph421:                                        ; preds = %.lr.ph421.preheader, %.lr.ph421
  %indvars.iv499 = phi i64 [ %indvars.iv.next500.1, %.lr.ph421 ], [ 1, %.lr.ph421.preheader ] ; 5 uses
  %.0325419 = phi i32 [ %.1.1, %.lr.ph421 ], [ %.0325419.ph, %.lr.ph421.preheader ]
  %.6418 = phi float [ %.7.1, %.lr.ph421 ], [ %.6418.ph, %.lr.ph421.preheader ] ; 2 uses
  %.3342417 = phi i32 [ %.4343.1, %.lr.ph421 ], [ %.3342417.ph, %.lr.ph421.preheader ]
  %niter672 = phi i64 [ %niter672.next.1, %.lr.ph421 ], [ 0, %.lr.ph421.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499
  %i.et = load i32, ptr %i.es, align 4, !tbaa !50 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul i64 %i.a, %i.eu
  %i.ew = getelementptr [4 x i8], ptr %0, i64 %i.ev
  %i.ex = getelementptr [4 x i8], ptr %i.ew, i64 %indvars.iv499
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !20
  %i.ez = tail call noundef float @llvm.fabs.f32(float %i.ey) ; 2 uses
  %i.fa = fcmp olt float %.6418, %i.ez            ; 3 uses
  %.4343 = select i1 %i.fa, i32 %i.et, i32 %.3342417
  %.7 = select i1 %i.fa, float %i.ez, float %.6418 ; 2 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv499 to i32
  %.1 = select i1 %i.fa, i32 %i.fb, i32 %.0325419
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next500
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !50 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul i64 %i.a, %i.fe
  %i.fg = getelementptr [4 x i8], ptr %0, i64 %i.ff
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %indvars.iv.next500
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !20
  %i.fj = tail call noundef float @llvm.fabs.f32(float %i.fi) ; 2 uses
  %i.fk = fcmp olt float %.7, %i.fj               ; 3 uses
  %.4343.1 = select i1 %i.fk, i32 %i.fd, i32 %.4343 ; 3 uses
  %.7.1 = select i1 %i.fk, float %i.fj, float %.7 ; 2 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv.next500 to i32
  %.1.1 = select i1 %i.fk, i32 %i.fl, i32 %.1     ; 3 uses
  %indvars.iv.next500.1 = add nuw nsw i64 %indvars.iv499, 2 ; 2 uses
  %niter672.next.1 = add nuw i64 %niter672, 2     ; 2 uses
  %niter672.ncmp.1 = icmp eq i64 %niter672.next.1, %unroll_iter671
  br i1 %niter672.ncmp.1, label %._crit_edge422.unr-lcssa, label %.lr.ph421, !llvm.loop !267

._crit_edge422.unr-lcssa:                         ; preds = %.lr.ph421
  br i1 %lcmp.mod667.not, label %._crit_edge422, label %.lr.ph421.epil.preheader

.lr.ph421.epil.preheader:                         ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.preheader
  %indvars.iv499.epil.init = phi i64 [ 1, %.lr.ph421.preheader ], [ %indvars.iv.next500.1, %._crit_edge422.unr-lcssa ] ; 3 uses
  %.0325419.epil.init = phi i32 [ %.0325419.ph, %.lr.ph421.preheader ], [ %.1.1, %._crit_edge422.unr-lcssa ]
  %.6418.epil.init = phi float [ %.6418.ph, %.lr.ph421.preheader ], [ %.7.1, %._crit_edge422.unr-lcssa ]
  %.3342417.epil.init = phi i32 [ %.3342417.ph, %.lr.ph421.preheader ], [ %.4343.1, %._crit_edge422.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod670)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499.epil.init
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !50 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = mul i64 %i.a, %i.fo
  %i.fq = getelementptr [4 x i8], ptr %0, i64 %i.fp
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %indvars.iv499.epil.init
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !20
  %i.ft = tail call noundef float @llvm.fabs.f32(float %i.fs)
  %i.fu = fcmp olt float %.6418.epil.init, %i.ft  ; 2 uses
  %.4343.epil = select i1 %i.fu, i32 %i.fn, i32 %.3342417.epil.init
  %i.fv = trunc nuw nsw i64 %indvars.iv499.epil.init to i32
  %.1.epil = select i1 %i.fu, i32 %i.fv, i32 %.0325419.epil.init
  br label %._crit_edge422

._crit_edge422:                                   ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.epil.preheader
  %.4343.lcssa = phi i32 [ %.4343.1, %._crit_edge422.unr-lcssa ], [ %.4343.epil, %.lr.ph421.epil.preheader ] ; 11 uses
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge422.unr-lcssa ], [ %.1.epil, %.lr.ph421.epil.preheader ] ; 13 uses
  %i.fw = sext i32 %.4343.lcssa to i64            ; 7 uses
  %i.fx = mul i64 %i.a, %i.fw
  %i.fy = sext i32 %.1.lcssa to i64               ; 10 uses
  %i.fz = getelementptr [4 x i8], ptr %0, i64 %i.fx ; 8 uses
  %i.ga = getelementptr [4 x i8], ptr %i.fz, i64 %i.fy ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !20 ; 4 uses
  %i.gc = tail call noundef float @llvm.fabs.f32(float %i.gb) ; 9 uses
  %i.gd = fcmp ugt float %i.gc, f0x34000000
  br i1 %i.gd, label %bb.i, label %.loopexit387

bb.i:                                             ; preds = %._crit_edge422
  %i.ge = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fy ; 3 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !20
  %i.gg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fw ; 3 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !20
  %i.gi = fsub float %i.gf, %i.gh
  %i.gj = fmul float %i.gi, 5.000000e-01          ; 3 uses
  %i.gk = tail call noundef float @llvm.fabs.f32(float %i.gj) ; 5 uses
  %i.gl = fcmp ogt float %i.gc, %i.gk
  br i1 %i.gl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gm = fdiv float %i.gk, %i.gc                 ; 2 uses
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.gm, float 1.000000e+00)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.gn)
  %i.go = fmul float %i.gc, %sqrt.i
  br label %_ZN2cvL5hypotIfEET_S1_S1_.exit

bb.k:                                             ; preds = %bb.i
  %i.gp = fcmp ueq float %i.gj, 0.000000e+00
  br i1 %i.gp, label %_ZN2cvL5hypotIfEET_S1_S1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gq = fdiv float %i.gc, %i.gk                 ; 2 uses
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gq, float 1.000000e+00)
  %sqrt19.i = tail call float @llvm.sqrt.f32(float %i.gr)
  %i.gs = fmul float %i.gk, %sqrt19.i
  br label %_ZN2cvL5hypotIfEET_S1_S1_.exit

_ZN2cvL5hypotIfEET_S1_S1_.exit:                   ; preds = %bb.j, %bb.k, %bb.l
  %.0.i = phi float [ %i.go, %bb.j ], [ %i.gs, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.gt = fadd float %i.gk, %.0.i                 ; 5 uses
  %i.gu = tail call noundef float @llvm.fabs.f32(float %i.gt) ; 3 uses
  %i.gv = fcmp ogt float %i.gc, %i.gu
  br i1 %i.gv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN2cvL5hypotIfEET_S1_S1_.exit
  %i.gw = fdiv float %i.gu, %i.gc                 ; 2 uses
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float 1.000000e+00)
  %sqrt.i379 = tail call float @llvm.sqrt.f32(float %i.gx)
  %i.gy = fmul float %i.gc, %sqrt.i379
  br label %_ZN2cvL5hypotIfEET_S1_S1_.exit380

bb.n:                                             ; preds = %_ZN2cvL5hypotIfEET_S1_S1_.exit
  %i.gz = fcmp ueq float %i.gt, 0.000000e+00
  br i1 %i.gz, label %_ZN2cvL5hypotIfEET_S1_S1_.exit380, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ha = fdiv float %i.gc, %i.gu                 ; 2 uses
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.ha, float 1.000000e+00)
  %sqrt19.i377 = tail call float @llvm.sqrt.f32(float %i.hb)
  %i.hc = fmul float %i.gt, %sqrt19.i377
  br label %_ZN2cvL5hypotIfEET_S1_S1_.exit380

_ZN2cvL5hypotIfEET_S1_S1_.exit380:                ; preds = %bb.m, %bb.n, %bb.o
  %.0.i378 = phi float [ %i.gy, %bb.m ], [ %i.hc, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.hd = fdiv float %i.gt, %.0.i378              ; 10 uses
  %i.he = fdiv float %i.gb, %.0.i378              ; 2 uses
  %i.hf = fdiv float %i.gb, %i.gt
  %i.hg = fmul float %i.gb, %i.hf                 ; 2 uses
  %i.hh = fcmp olt float %i.gj, 0.000000e+00      ; 2 uses
  %i.hi = fneg float %i.he
  %i.hj = fneg float %i.hg
  %.0323 = select i1 %i.hh, float %i.hj, float %i.hg ; 2 uses
  %.0 = select i1 %i.hh, float %i.hi, float %i.he ; 10 uses
  store float 0.000000e+00, ptr %i.ga, align 4, !tbaa !20
  %i.hk = load float, ptr %i.gg, align 4, !tbaa !20
  %i.hl = fsub float %i.hk, %.0323
  store float %i.hl, ptr %i.gg, align 4, !tbaa !20
  %i.hm = load float, ptr %i.ge, align 4, !tbaa !20
  %i.hn = fadd float %.0323, %i.hm
  store float %i.hn, ptr %i.ge, align 4, !tbaa !20
  %i.ho = icmp sgt i32 %.4343.lcssa, 0            ; 2 uses
  br i1 %i.ho, label %.lr.ph426, label %.preheader385

.lr.ph426:                                        ; preds = %_ZN2cvL5hypotIfEET_S1_S1_.exit380
  %i.hp = fneg float %.0
  %wide.trip.count507 = zext nneg i32 %.4343.lcssa to i64
  %i.hq = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hr = insertelement <2 x float> %i.hq, float %i.hd, i64 1
  %i.hs = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.ht = insertelement <2 x float> %i.hs, float %.0, i64 1
  br label %bb.p

.preheader385:                                    ; preds = %bb.p, %_ZN2cvL5hypotIfEET_S1_S1_.exit380
  %invariant.gep427 = getelementptr [4 x i8], ptr %0, i64 %i.fy
  %.6353429 = add nsw i32 %.4343.lcssa, 1         ; 6 uses
  %i.hu = icmp slt i32 %.6353429, %.1.lcssa
  br i1 %i.hu, label %.lr.ph431, label %.preheader384

.lr.ph431:                                        ; preds = %.preheader385
  %i.hv = fneg float %.0
  %i.hw = sext i32 %.6353429 to i64
  %i.hx = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.hy = insertelement <2 x float> %i.hx, float %i.hd, i64 1
  %i.hz = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %.0, i64 1
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph426, %bb.p
  %indvars.iv504 = phi i64 [ 0, %.lr.ph426 ], [ %indvars.iv.next505, %bb.p ] ; 2 uses
  %i.ib = mul i64 %i.a, %indvars.iv504
  %i.ic = getelementptr [4 x i8], ptr %0, i64 %i.ib ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.ic, i64 %i.fw ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !20
  %i.if = getelementptr [4 x i8], ptr %i.ic, i64 %i.fy ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !20
  %i.ih = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ii, %i.hr
  %i.ik = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.ht, <2 x float> %i.ij) ; 2 uses
  %i.in = extractelement <2 x float> %i.im, i64 0
  store float %i.in, ptr %i.id, align 4, !tbaa !20
  %i.io = extractelement <2 x float> %i.im, i64 1
  store float %i.io, ptr %i.if, align 4, !tbaa !20
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %exitcond508.not = icmp eq i64 %indvars.iv.next505, %wide.trip.count507
  br i1 %exitcond508.not, label %.preheader385, label %bb.p, !llvm.loop !268

.preheader384:                                    ; preds = %bb.q, %.preheader385
  %.7354432 = add nsw i32 %.1.lcssa, 1            ; 6 uses
  %i.ip = icmp slt i32 %.7354432, %5
  br i1 %i.ip, label %.lr.ph434, label %._crit_edge435

.lr.ph434:                                        ; preds = %.preheader384
  %i.iq = mul i64 %i.a, %i.fy
  %i.ir = getelementptr [4 x i8], ptr %0, i64 %i.iq ; 2 uses
  %i.is = fneg float %.0                          ; 2 uses
  %i.it = sext i32 %.7354432 to i64               ; 6 uses
  %i.iu = sub i32 %i.di, %.1.lcssa                ; 2 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = add nuw nsw i64 %i.iv, 1                ; 2 uses
  %min.iters.check601 = icmp ult i32 %i.iu, 3
  br i1 %min.iters.check601, label %scalar.ph600.preheader, label %vector.memcheck602

vector.memcheck602:                               ; preds = %.lr.ph434
  %i.ix = mul i64 %i.a, %i.fw
  %i.iy = add i64 %i.ix, %i.it
  %i.iz = shl i64 %i.iy, 2                        ; 2 uses
  %i.ja = getelementptr i8, ptr %0, i64 %i.iz
  %i.jb = shl nuw nsw i64 %i.iv, 2                ; 2 uses
  %i.jc = getelementptr i8, ptr %0, i64 %i.iz
  %i.jd = getelementptr i8, ptr %i.jc, i64 %i.jb
  %i.je = getelementptr i8, ptr %i.jd, i64 4
  %i.jf = mul i64 %i.a, %i.fy
  %i.jg = add i64 %i.jf, %i.it
  %i.jh = shl i64 %i.jg, 2                        ; 2 uses
  %i.ji = getelementptr i8, ptr %0, i64 %i.jh
  %i.jj = getelementptr i8, ptr %0, i64 %i.jh
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.jb
  %i.jl = getelementptr i8, ptr %i.jk, i64 4
  %bound0603 = icmp ult ptr %i.ja, %i.jl
  %bound1604 = icmp ult ptr %i.ji, %i.je
  %found.conflict605 = and i1 %bound0603, %bound1604
  br i1 %found.conflict605, label %scalar.ph600.preheader, label %vector.ph606

vector.ph606:                                     ; preds = %vector.memcheck602
  %n.vec607 = and i64 %i.iw, 8589934588           ; 3 uses
  %i.jm = add nsw i64 %n.vec607, %i.it
  %broadcast.splatinsert608 = insertelement <4 x float> poison, float %i.is, i64 0
  %broadcast.splat609 = shufflevector <4 x float> %broadcast.splatinsert608, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert610 = insertelement <4 x float> poison, float %i.hd, i64 0
  %broadcast.splat611 = shufflevector <4 x float> %broadcast.splatinsert610, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert612 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat613 = shufflevector <4 x float> %broadcast.splatinsert612, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %vector.ph606
  %index615 = phi i64 [ 0, %vector.ph606 ], [ %index.next618, %vector.body614 ] ; 2 uses
  %i.jn = add i64 %index615, %i.it                ; 2 uses
  %i.jo = getelementptr [4 x i8], ptr %i.fz, i64 %i.jn ; 2 uses
  %wide.load616 = load <4 x float>, ptr %i.jo, align 4, !tbaa !20, !alias.scope !290, !noalias !291 ; 2 uses
  %i.jp = getelementptr [4 x i8], ptr %i.ir, i64 %i.jn ; 2 uses
  %wide.load617 = load <4 x float>, ptr %i.jp, align 4, !tbaa !20, !alias.scope !291 ; 2 uses
  %i.jq = fmul <4 x float> %wide.load617, %broadcast.splat609
  %i.jr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load616, <4 x float> %broadcast.splat611, <4 x float> %i.jq)
  store <4 x float> %i.jr, ptr %i.jo, align 4, !tbaa !20, !alias.scope !290, !noalias !291
  %i.js = fmul <4 x float> %broadcast.splat611, %wide.load617
  %i.jt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load616, <4 x float> %broadcast.splat613, <4 x float> %i.js)
  store <4 x float> %i.jt, ptr %i.jp, align 4, !tbaa !20, !alias.scope !291
  %index.next618 = add nuw i64 %index615, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next618, %n.vec607
  br i1 %i.ju, label %middle.block619, label %vector.body614, !llvm.loop !272

middle.block619:                                  ; preds = %vector.body614
  %cmp.n620 = icmp eq i64 %i.iw, %n.vec607
  br i1 %cmp.n620, label %._crit_edge435, label %scalar.ph600.preheader

scalar.ph600.preheader:                           ; preds = %vector.memcheck602, %.lr.ph434, %middle.block619
  %indvars.iv513.ph = phi i64 [ %i.it, %vector.memcheck602 ], [ %i.it, %.lr.ph434 ], [ %i.jm, %middle.block619 ]
  %i.jv = insertelement <2 x float> poison, float %i.is, i64 0
  %i.jw = insertelement <2 x float> %i.jv, float %i.hd, i64 1
  %i.jx = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jy = insertelement <2 x float> %i.jx, float %.0, i64 1
  br label %scalar.ph600

bb.q:                                             ; preds = %.lr.ph431, %bb.q
  %indvars.iv509 = phi i64 [ %i.hw, %.lr.ph431 ], [ %indvars.iv.next510, %bb.q ] ; 3 uses
  %i.jz = getelementptr [4 x i8], ptr %i.fz, i64 %indvars.iv509 ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !20
  %i.kb = mul i64 %i.a, %indvars.iv509
  %gep428 = getelementptr [4 x i8], ptr %invariant.gep427, i64 %i.kb ; 2 uses
  %i.kc = load float, ptr %gep428, align 4, !tbaa !20
  %i.kd = insertelement <2 x float> poison, float %i.kc, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x float> %i.ke, %i.hy
  %i.kg = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.ia, <2 x float> %i.kf) ; 2 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 0
  store float %i.kj, ptr %i.jz, align 4, !tbaa !20
  %i.kk = extractelement <2 x float> %i.ki, i64 1
  store float %i.kk, ptr %gep428, align 4, !tbaa !20
  %indvars.iv.next510 = add nsw i64 %indvars.iv509, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next510 to i32
  %exitcond512.not = icmp eq i32 %.1.lcssa, %lftr.wideiv
  br i1 %exitcond512.not, label %.preheader384, label %bb.q, !llvm.loop !273

scalar.ph600:                                     ; preds = %scalar.ph600.preheader, %scalar.ph600
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %scalar.ph600 ], [ %indvars.iv513.ph, %scalar.ph600.preheader ] ; 3 uses
  %i.kl = getelementptr [4 x i8], ptr %i.fz, i64 %indvars.iv513 ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !20
  %i.kn = getelementptr [4 x i8], ptr %i.ir, i64 %indvars.iv513 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !20
  %i.kp = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x float> %i.kq, %i.jw
  %i.ks = insertelement <2 x float> poison, float %i.km, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %i.jy, <2 x float> %i.kr) ; 2 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0
  store float %i.kv, ptr %i.kl, align 4, !tbaa !20
  %i.kw = extractelement <2 x float> %i.ku, i64 1
  store float %i.kw, ptr %i.kn, align 4, !tbaa !20
  %indvars.iv.next514 = add nsw i64 %indvars.iv513, 1 ; 2 uses
  %lftr.wideiv516 = trunc i64 %indvars.iv.next514 to i32
  %exitcond517.not = icmp eq i32 %5, %lftr.wideiv516
  br i1 %exitcond517.not, label %._crit_edge435, label %scalar.ph600, !llvm.loop !274

._crit_edge435:                                   ; preds = %scalar.ph600, %middle.block619, %.preheader384
  br i1 %.not, label %.loopexit383, label %.lr.ph437

.lr.ph437:                                        ; preds = %._crit_edge435
  %i.kx = mul i64 %.0359571, %i.fw
  %i.ky = getelementptr [4 x i8], ptr %3, i64 %i.kx ; 3 uses
  %i.kz = mul i64 %.0359571, %i.fy
  %i.la = getelementptr [4 x i8], ptr %3, i64 %i.kz ; 3 uses
  %i.lb = fneg float %.0                          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

end_hunk_0
begin_hunk_1_@_ZN2cv11JacobiImpl_IdEEbPT_mS2_S2_miPh:bb.a
  %lcmp.mod658.not = icmp eq i64 %xtraiter656, 0
  %lcmp.mod661 = trunc i64 %i.dc to i1
  %xtraiter664 = and i64 %i.dd, 1
  %i.dh = icmp eq i32 %5, 2
  %unroll_iter670 = and i64 %i.dd, -2
  %lcmp.mod666.not = icmp eq i64 %xtraiter664, 0
  %lcmp.mod669 = trunc i64 %i.dd to i1
  %i.di = add nsw i32 %5, -2
  %n.vec = and i64 %wide.trip.count492, 2147483646 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count492
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph456, %bb.y
  %.0328455 = phi i32 [ 0, %.lr.ph456 ], [ %i.qa, %bb.y ]
  %i.dj = load i32, ptr %i.aq, align 4, !tbaa !50 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !18
  %i.dn = tail call noundef double @llvm.fabs.f64(double %i.dm) ; 3 uses
  br i1 %i.db, label %.lr.ph411.preheader, label %.lr.ph421.preheader

.lr.ph411.preheader:                              ; preds = %bb.h
  br i1 %i.dg, label %.lr.ph411.epil.preheader, label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader, %.lr.ph411
  %indvars.iv494 = phi i64 [ %indvars.iv.next495.1, %.lr.ph411 ], [ 1, %.lr.ph411.preheader ] ; 5 uses
  %.4409 = phi double [ %.5.1, %.lr.ph411 ], [ %i.dn, %.lr.ph411.preheader ] ; 2 uses
  %.1340408 = phi i32 [ %.2341.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %niter663 = phi i64 [ %niter663.next.1, %.lr.ph411 ], [ 0, %.lr.ph411.preheader ]
  %i.do = mul i64 %i.a, %indvars.iv494
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !50
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr [8 x i8], ptr %0, i64 %i.do
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !18
  %i.dv = tail call noundef double @llvm.fabs.f64(double %i.du) ; 2 uses
  %i.dw = fcmp olt double %.4409, %i.dv           ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv494 to i32
  %.2341 = select i1 %i.dw, i32 %i.dx, i32 %.1340408
  %.5 = select i1 %i.dw, double %i.dv, double %.4409 ; 2 uses
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 3 uses
  %i.dy = mul i64 %i.a, %indvars.iv.next495
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next495
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !50
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [8 x i8], ptr %0, i64 %i.dy
  %i.ed = getelementptr [8 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !18
  %i.ef = tail call noundef double @llvm.fabs.f64(double %i.ee) ; 2 uses
  %i.eg = fcmp olt double %.5, %i.ef              ; 2 uses
  %i.eh = trunc nuw nsw i64 %indvars.iv.next495 to i32
  %.2341.1 = select i1 %i.eg, i32 %i.eh, i32 %.2341 ; 3 uses
  %.5.1 = select i1 %i.eg, double %i.ef, double %.5 ; 3 uses
  %indvars.iv.next495.1 = add nuw nsw i64 %indvars.iv494, 2 ; 2 uses
  %niter663.next.1 = add nuw i64 %niter663, 2     ; 2 uses
  %niter663.ncmp.1 = icmp eq i64 %niter663.next.1, %unroll_iter662
  br i1 %niter663.ncmp.1, label %._crit_edge412.loopexit.unr-lcssa, label %.lr.ph411, !llvm.loop !301

._crit_edge412.loopexit.unr-lcssa:                ; preds = %.lr.ph411
  br i1 %lcmp.mod658.not, label %._crit_edge412.loopexit, label %.lr.ph411.epil.preheader

.lr.ph411.epil.preheader:                         ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.preheader
  %indvars.iv494.epil.init = phi i64 [ 1, %.lr.ph411.preheader ], [ %indvars.iv.next495.1, %._crit_edge412.loopexit.unr-lcssa ] ; 3 uses
  %.4409.epil.init = phi double [ %i.dn, %.lr.ph411.preheader ], [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ] ; 2 uses
  %.1340408.epil.init = phi i32 [ 0, %.lr.ph411.preheader ], [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod661)
  %i.ei = mul i64 %i.a, %indvars.iv494.epil.init
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv494.epil.init
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !50
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr [8 x i8], ptr %0, i64 %i.ei
  %i.en = getelementptr [8 x i8], ptr %i.em, i64 %i.el
  %i.eo = load double, ptr %i.en, align 8, !tbaa !18
  %i.ep = tail call noundef double @llvm.fabs.f64(double %i.eo) ; 2 uses
  %i.eq = fcmp olt double %.4409.epil.init, %i.ep ; 2 uses
  %i.er = trunc nuw nsw i64 %indvars.iv494.epil.init to i32
  %.2341.epil = select i1 %i.eq, i32 %i.er, i32 %.1340408.epil.init
  %.5.epil = select i1 %i.eq, double %i.ep, double %.4409.epil.init
  br label %._crit_edge412.loopexit

._crit_edge412.loopexit:                          ; preds = %._crit_edge412.loopexit.unr-lcssa, %.lr.ph411.epil.preheader
  %.2341.lcssa = phi i32 [ %.2341.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.2341.epil, %.lr.ph411.epil.preheader ] ; 2 uses
  %.5.lcssa = phi double [ %.5.1, %._crit_edge412.loopexit.unr-lcssa ], [ %.5.epil, %.lr.ph411.epil.preheader ]
  %.phi.trans.insert = zext i32 %.2341.lcssa to i64
  %.phi.trans.insert551 = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert551, align 4, !tbaa !50
  br label %.lr.ph421.preheader

.lr.ph421.preheader:                              ; preds = %._crit_edge412.loopexit, %bb.h
  %.0325419.ph = phi i32 [ %i.dj, %bb.h ], [ %.pre, %._crit_edge412.loopexit ] ; 2 uses
  %.6418.ph = phi double [ %i.dn, %bb.h ], [ %.5.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  %.3342417.ph = phi i32 [ 0, %bb.h ], [ %.2341.lcssa, %._crit_edge412.loopexit ] ; 2 uses
  br i1 %i.dh, label %.lr.ph421.epil.preheader, label %.lr.ph421

.lr.ph421:                                        ; preds = %.lr.ph421.preheader, %.lr.ph421
  %indvars.iv499 = phi i64 [ %indvars.iv.next500.1, %.lr.ph421 ], [ 1, %.lr.ph421.preheader ] ; 5 uses
  %.0325419 = phi i32 [ %.1.1, %.lr.ph421 ], [ %.0325419.ph, %.lr.ph421.preheader ]
  %.6418 = phi double [ %.7.1, %.lr.ph421 ], [ %.6418.ph, %.lr.ph421.preheader ] ; 2 uses
  %.3342417 = phi i32 [ %.4343.1, %.lr.ph421 ], [ %.3342417.ph, %.lr.ph421.preheader ]
  %niter671 = phi i64 [ %niter671.next.1, %.lr.ph421 ], [ 0, %.lr.ph421.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499
  %i.et = load i32, ptr %i.es, align 4, !tbaa !50 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul i64 %i.a, %i.eu
  %i.ew = getelementptr [8 x i8], ptr %0, i64 %i.ev
  %i.ex = getelementptr [8 x i8], ptr %i.ew, i64 %indvars.iv499
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !18
  %i.ez = tail call noundef double @llvm.fabs.f64(double %i.ey) ; 2 uses
  %i.fa = fcmp olt double %.6418, %i.ez           ; 3 uses
  %.4343 = select i1 %i.fa, i32 %i.et, i32 %.3342417
  %.7 = select i1 %i.fa, double %i.ez, double %.6418 ; 2 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv499 to i32
  %.1 = select i1 %i.fa, i32 %i.fb, i32 %.0325419
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next500
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !50 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul i64 %i.a, %i.fe
  %i.fg = getelementptr [8 x i8], ptr %0, i64 %i.ff
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %indvars.iv.next500
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !18
  %i.fj = tail call noundef double @llvm.fabs.f64(double %i.fi) ; 2 uses
  %i.fk = fcmp olt double %.7, %i.fj              ; 3 uses
  %.4343.1 = select i1 %i.fk, i32 %i.fd, i32 %.4343 ; 3 uses
  %.7.1 = select i1 %i.fk, double %i.fj, double %.7 ; 2 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv.next500 to i32
  %.1.1 = select i1 %i.fk, i32 %i.fl, i32 %.1     ; 3 uses
  %indvars.iv.next500.1 = add nuw nsw i64 %indvars.iv499, 2 ; 2 uses
  %niter671.next.1 = add nuw i64 %niter671, 2     ; 2 uses
  %niter671.ncmp.1 = icmp eq i64 %niter671.next.1, %unroll_iter670
  br i1 %niter671.ncmp.1, label %._crit_edge422.unr-lcssa, label %.lr.ph421, !llvm.loop !302

._crit_edge422.unr-lcssa:                         ; preds = %.lr.ph421
  br i1 %lcmp.mod666.not, label %._crit_edge422, label %.lr.ph421.epil.preheader

.lr.ph421.epil.preheader:                         ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.preheader
  %indvars.iv499.epil.init = phi i64 [ 1, %.lr.ph421.preheader ], [ %indvars.iv.next500.1, %._crit_edge422.unr-lcssa ] ; 3 uses
  %.0325419.epil.init = phi i32 [ %.0325419.ph, %.lr.ph421.preheader ], [ %.1.1, %._crit_edge422.unr-lcssa ]
  %.6418.epil.init = phi double [ %.6418.ph, %.lr.ph421.preheader ], [ %.7.1, %._crit_edge422.unr-lcssa ]
  %.3342417.epil.init = phi i32 [ %.3342417.ph, %.lr.ph421.preheader ], [ %.4343.1, %._crit_edge422.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod669)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv499.epil.init
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !50 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = mul i64 %i.a, %i.fo
  %i.fq = getelementptr [8 x i8], ptr %0, i64 %i.fp
  %i.fr = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv499.epil.init
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !18
  %i.ft = tail call noundef double @llvm.fabs.f64(double %i.fs)
  %i.fu = fcmp olt double %.6418.epil.init, %i.ft ; 2 uses
  %.4343.epil = select i1 %i.fu, i32 %i.fn, i32 %.3342417.epil.init
  %i.fv = trunc nuw nsw i64 %indvars.iv499.epil.init to i32
  %.1.epil = select i1 %i.fu, i32 %i.fv, i32 %.0325419.epil.init
  br label %._crit_edge422

._crit_edge422:                                   ; preds = %._crit_edge422.unr-lcssa, %.lr.ph421.epil.preheader
  %.4343.lcssa = phi i32 [ %.4343.1, %._crit_edge422.unr-lcssa ], [ %.4343.epil, %.lr.ph421.epil.preheader ] ; 11 uses
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge422.unr-lcssa ], [ %.1.epil, %.lr.ph421.epil.preheader ] ; 13 uses
  %i.fw = sext i32 %.4343.lcssa to i64            ; 7 uses
  %i.fx = mul i64 %i.a, %i.fw
  %i.fy = sext i32 %.1.lcssa to i64               ; 10 uses
  %i.fz = getelementptr [8 x i8], ptr %0, i64 %i.fx ; 8 uses
  %i.ga = getelementptr [8 x i8], ptr %i.fz, i64 %i.fy ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !18 ; 4 uses
  %i.gc = tail call noundef double @llvm.fabs.f64(double %i.gb) ; 9 uses
  %i.gd = fcmp ugt double %i.gc, f0x3CB0000000000000
  br i1 %i.gd, label %bb.i, label %.loopexit387

bb.i:                                             ; preds = %._crit_edge422
  %i.ge = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fy ; 3 uses
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !18
  %i.gg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fw ; 3 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !18
  %i.gi = fsub double %i.gf, %i.gh
  %i.gj = fmul double %i.gi, 5.000000e-01         ; 3 uses
  %i.gk = tail call noundef double @llvm.fabs.f64(double %i.gj) ; 5 uses
  %i.gl = fcmp ogt double %i.gc, %i.gk
  br i1 %i.gl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gm = fdiv double %i.gk, %i.gc                ; 2 uses
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.gm, double %i.gm, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.gn)
  %i.go = fmul double %i.gc, %sqrt.i
  br label %_ZN2cvL5hypotIdEET_S1_S1_.exit

bb.k:                                             ; preds = %bb.i
  %i.gp = fcmp ueq double %i.gj, 0.000000e+00
  br i1 %i.gp, label %_ZN2cvL5hypotIdEET_S1_S1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gq = fdiv double %i.gc, %i.gk                ; 2 uses
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gq, double 1.000000e+00)
  %sqrt19.i = tail call double @llvm.sqrt.f64(double %i.gr)
  %i.gs = fmul double %i.gk, %sqrt19.i
  br label %_ZN2cvL5hypotIdEET_S1_S1_.exit

_ZN2cvL5hypotIdEET_S1_S1_.exit:                   ; preds = %bb.j, %bb.k, %bb.l
  %.0.i = phi double [ %i.go, %bb.j ], [ %i.gs, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.gt = fadd double %i.gk, %.0.i                ; 5 uses
  %i.gu = tail call noundef double @llvm.fabs.f64(double %i.gt) ; 3 uses
  %i.gv = fcmp ogt double %i.gc, %i.gu
  br i1 %i.gv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN2cvL5hypotIdEET_S1_S1_.exit
  %i.gw = fdiv double %i.gu, %i.gc                ; 2 uses
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gw, double 1.000000e+00)
  %sqrt.i379 = tail call double @llvm.sqrt.f64(double %i.gx)
  %i.gy = fmul double %i.gc, %sqrt.i379
  br label %_ZN2cvL5hypotIdEET_S1_S1_.exit380

bb.n:                                             ; preds = %_ZN2cvL5hypotIdEET_S1_S1_.exit
  %i.gz = fcmp ueq double %i.gt, 0.000000e+00
  br i1 %i.gz, label %_ZN2cvL5hypotIdEET_S1_S1_.exit380, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ha = fdiv double %i.gc, %i.gu                ; 2 uses
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.ha, double 1.000000e+00)
  %sqrt19.i377 = tail call double @llvm.sqrt.f64(double %i.hb)
  %i.hc = fmul double %i.gt, %sqrt19.i377
  br label %_ZN2cvL5hypotIdEET_S1_S1_.exit380

_ZN2cvL5hypotIdEET_S1_S1_.exit380:                ; preds = %bb.m, %bb.n, %bb.o
  %.0.i378 = phi double [ %i.gy, %bb.m ], [ %i.hc, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.hd = fdiv double %i.gt, %.0.i378             ; 10 uses
  %i.he = fdiv double %i.gb, %.0.i378             ; 2 uses
  %i.hf = fdiv double %i.gb, %i.gt
  %i.hg = fmul double %i.gb, %i.hf                ; 2 uses
  %i.hh = fcmp olt double %i.gj, 0.000000e+00     ; 2 uses
  %i.hi = fneg double %i.he
  %i.hj = fneg double %i.hg
  %.0323 = select i1 %i.hh, double %i.hj, double %i.hg ; 2 uses
  %.0 = select i1 %i.hh, double %i.hi, double %i.he ; 10 uses
  store double 0.000000e+00, ptr %i.ga, align 8, !tbaa !18
  %i.hk = load double, ptr %i.gg, align 8, !tbaa !18
  %i.hl = fsub double %i.hk, %.0323
  store double %i.hl, ptr %i.gg, align 8, !tbaa !18
  %i.hm = load double, ptr %i.ge, align 8, !tbaa !18
  %i.hn = fadd double %.0323, %i.hm
  store double %i.hn, ptr %i.ge, align 8, !tbaa !18
  %i.ho = icmp sgt i32 %.4343.lcssa, 0            ; 2 uses
  br i1 %i.ho, label %.lr.ph426, label %.preheader385

.lr.ph426:                                        ; preds = %_ZN2cvL5hypotIdEET_S1_S1_.exit380
  %i.hp = fneg double %.0
  %wide.trip.count507 = zext nneg i32 %.4343.lcssa to i64
  %i.hq = insertelement <2 x double> poison, double %i.hp, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.hd, i64 1
  %i.hs = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.ht = insertelement <2 x double> %i.hs, double %.0, i64 1
  br label %bb.p

.preheader385:                                    ; preds = %bb.p, %_ZN2cvL5hypotIdEET_S1_S1_.exit380
  %invariant.gep427 = getelementptr [8 x i8], ptr %0, i64 %i.fy
  %.6353429 = add nsw i32 %.4343.lcssa, 1         ; 6 uses
  %i.hu = icmp slt i32 %.6353429, %.1.lcssa
  br i1 %i.hu, label %.lr.ph431, label %.preheader384

.lr.ph431:                                        ; preds = %.preheader385
  %i.hv = fneg double %.0
  %i.hw = sext i32 %.6353429 to i64
  %i.hx = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.hd, i64 1
  %i.hz = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.ia = insertelement <2 x double> %i.hz, double %.0, i64 1
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph426, %bb.p
  %indvars.iv504 = phi i64 [ 0, %.lr.ph426 ], [ %indvars.iv.next505, %bb.p ] ; 2 uses
  %i.ib = mul i64 %i.a, %indvars.iv504
  %i.ic = getelementptr [8 x i8], ptr %0, i64 %i.ib ; 2 uses
  %i.id = getelementptr [8 x i8], ptr %i.ic, i64 %i.fw ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !18
  %i.if = getelementptr [8 x i8], ptr %i.ic, i64 %i.fy ; 2 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !18
  %i.ih = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x double> %i.ii, %i.hr
  %i.ik = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.ht, <2 x double> %i.ij) ; 2 uses
  %i.in = extractelement <2 x double> %i.im, i64 0
  store double %i.in, ptr %i.id, align 8, !tbaa !18
  %i.io = extractelement <2 x double> %i.im, i64 1
  store double %i.io, ptr %i.if, align 8, !tbaa !18
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %exitcond508.not = icmp eq i64 %indvars.iv.next505, %wide.trip.count507
  br i1 %exitcond508.not, label %.preheader385, label %bb.p, !llvm.loop !303

.preheader384:                                    ; preds = %bb.q, %.preheader385
  %.7354432 = add nsw i32 %.1.lcssa, 1            ; 6 uses
  %i.ip = icmp slt i32 %.7354432, %5
  br i1 %i.ip, label %.lr.ph434, label %._crit_edge435

.lr.ph434:                                        ; preds = %.preheader384
  %i.iq = mul i64 %i.a, %i.fy
  %i.ir = getelementptr [8 x i8], ptr %0, i64 %i.iq ; 2 uses
  %i.is = fneg double %.0                         ; 2 uses
  %i.it = sext i32 %.7354432 to i64               ; 6 uses
  %i.iu = sub i32 %i.di, %.1.lcssa                ; 2 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = add nuw nsw i64 %i.iv, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.iu, 3
  br i1 %min.iters.check, label %scalar.ph600.preheader, label %vector.memcheck601

vector.memcheck601:                               ; preds = %.lr.ph434
  %i.ix = mul i64 %i.a, %i.fw
  %i.iy = add i64 %i.ix, %i.it
  %i.iz = shl i64 %i.iy, 3                        ; 2 uses
  %i.ja = getelementptr i8, ptr %0, i64 %i.iz
  %i.jb = shl nuw nsw i64 %i.iv, 3                ; 2 uses
  %i.jc = getelementptr i8, ptr %0, i64 %i.iz
  %i.jd = getelementptr i8, ptr %i.jc, i64 %i.jb
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %i.jf = mul i64 %i.a, %i.fy
  %i.jg = add i64 %i.jf, %i.it
  %i.jh = shl i64 %i.jg, 3                        ; 2 uses
  %i.ji = getelementptr i8, ptr %0, i64 %i.jh
  %i.jj = getelementptr i8, ptr %0, i64 %i.jh
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.jb
  %i.jl = getelementptr i8, ptr %i.jk, i64 8
  %bound0602 = icmp ult ptr %i.ja, %i.jl
  %bound1603 = icmp ult ptr %i.ji, %i.je
  %found.conflict604 = and i1 %bound0602, %bound1603
  br i1 %found.conflict604, label %scalar.ph600.preheader, label %vector.ph605

vector.ph605:                                     ; preds = %vector.memcheck601
  %n.vec606 = and i64 %i.iw, 8589934590           ; 3 uses
  %i.jm = add nsw i64 %n.vec606, %i.it
  %broadcast.splatinsert607 = insertelement <2 x double> poison, double %i.is, i64 0
  %broadcast.splat608 = shufflevector <2 x double> %broadcast.splatinsert607, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert609 = insertelement <2 x double> poison, double %i.hd, i64 0
  %broadcast.splat610 = shufflevector <2 x double> %broadcast.splatinsert609, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert611 = insertelement <2 x double> poison, double %.0, i64 0
  %broadcast.splat612 = shufflevector <2 x double> %broadcast.splatinsert611, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body613

vector.body613:                                   ; preds = %vector.body613, %vector.ph605
  %index614 = phi i64 [ 0, %vector.ph605 ], [ %index.next617, %vector.body613 ] ; 2 uses
  %i.jn = add i64 %index614, %i.it                ; 2 uses
  %i.jo = getelementptr [8 x i8], ptr %i.fz, i64 %i.jn ; 2 uses
  %wide.load615 = load <2 x double>, ptr %i.jo, align 8, !tbaa !18, !alias.scope !325, !noalias !326 ; 2 uses
  %i.jp = getelementptr [8 x i8], ptr %i.ir, i64 %i.jn ; 2 uses
  %wide.load616 = load <2 x double>, ptr %i.jp, align 8, !tbaa !18, !alias.scope !326 ; 2 uses
  %i.jq = fmul <2 x double> %wide.load616, %broadcast.splat608
  %i.jr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load615, <2 x double> %broadcast.splat610, <2 x double> %i.jq)
  store <2 x double> %i.jr, ptr %i.jo, align 8, !tbaa !18, !alias.scope !325, !noalias !326
  %i.js = fmul <2 x double> %broadcast.splat610, %wide.load616
  %i.jt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load615, <2 x double> %broadcast.splat612, <2 x double> %i.js)
  store <2 x double> %i.jt, ptr %i.jp, align 8, !tbaa !18, !alias.scope !326
  %index.next617 = add nuw i64 %index614, 2       ; 2 uses
  %i.ju = icmp eq i64 %index.next617, %n.vec606
  br i1 %i.ju, label %middle.block618, label %vector.body613, !llvm.loop !307

middle.block618:                                  ; preds = %vector.body613
  %cmp.n619 = icmp eq i64 %i.iw, %n.vec606
  br i1 %cmp.n619, label %._crit_edge435, label %scalar.ph600.preheader

scalar.ph600.preheader:                           ; preds = %vector.memcheck601, %.lr.ph434, %middle.block618
  %indvars.iv513.ph = phi i64 [ %i.it, %vector.memcheck601 ], [ %i.it, %.lr.ph434 ], [ %i.jm, %middle.block618 ]
  %i.jv = insertelement <2 x double> poison, double %i.is, i64 0
  %i.jw = insertelement <2 x double> %i.jv, double %i.hd, i64 1
  %i.jx = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %.0, i64 1
  br label %scalar.ph600

bb.q:                                             ; preds = %.lr.ph431, %bb.q
  %indvars.iv509 = phi i64 [ %i.hw, %.lr.ph431 ], [ %indvars.iv.next510, %bb.q ] ; 3 uses
  %i.jz = getelementptr [8 x i8], ptr %i.fz, i64 %indvars.iv509 ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !18
  %i.kb = mul i64 %i.a, %indvars.iv509
  %gep428 = getelementptr [8 x i8], ptr %invariant.gep427, i64 %i.kb ; 2 uses
  %i.kc = load double, ptr %gep428, align 8, !tbaa !18
  %i.kd = insertelement <2 x double> poison, double %i.kc, i64 0
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x double> %i.ke, %i.hy
  %i.kg = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> %i.ia, <2 x double> %i.kf) ; 2 uses
  %i.kj = extractelement <2 x double> %i.ki, i64 0
  store double %i.kj, ptr %i.jz, align 8, !tbaa !18
  %i.kk = extractelement <2 x double> %i.ki, i64 1
  store double %i.kk, ptr %gep428, align 8, !tbaa !18
  %indvars.iv.next510 = add nsw i64 %indvars.iv509, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next510 to i32
  %exitcond512.not = icmp eq i32 %.1.lcssa, %lftr.wideiv
  br i1 %exitcond512.not, label %.preheader384, label %bb.q, !llvm.loop !308

scalar.ph600:                                     ; preds = %scalar.ph600.preheader, %scalar.ph600
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %scalar.ph600 ], [ %indvars.iv513.ph, %scalar.ph600.preheader ] ; 3 uses
  %i.kl = getelementptr [8 x i8], ptr %i.fz, i64 %indvars.iv513 ; 2 uses
  %i.km = load double, ptr %i.kl, align 8, !tbaa !18
  %i.kn = getelementptr [8 x i8], ptr %i.ir, i64 %indvars.iv513 ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !18
  %i.kp = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kq = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x double> %i.kq, %i.jw
  %i.ks = insertelement <2 x double> poison, double %i.km, i64 0
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ku = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> %i.jy, <2 x double> %i.kr) ; 2 uses
  %i.kv = extractelement <2 x double> %i.ku, i64 0
  store double %i.kv, ptr %i.kl, align 8, !tbaa !18
  %i.kw = extractelement <2 x double> %i.ku, i64 1
  store double %i.kw, ptr %i.kn, align 8, !tbaa !18
  %indvars.iv.next514 = add nsw i64 %indvars.iv513, 1 ; 2 uses
  %lftr.wideiv516 = trunc i64 %indvars.iv.next514 to i32
  %exitcond517.not = icmp eq i32 %5, %lftr.wideiv516
  br i1 %exitcond517.not, label %._crit_edge435, label %scalar.ph600, !llvm.loop !309

._crit_edge435:                                   ; preds = %scalar.ph600, %middle.block618, %.preheader384
  br i1 %.not, label %.loopexit383, label %.lr.ph437

.lr.ph437:                                        ; preds = %._crit_edge435
  %i.kx = mul i64 %.0359571, %i.fw
  %i.ky = getelementptr [8 x i8], ptr %3, i64 %i.kx ; 3 uses
  %i.kz = mul i64 %.0359571, %i.fy
  %i.la = getelementptr [8 x i8], ptr %3, i64 %i.kz ; 3 uses
  %i.lb = fneg double %.0                         ; 2 uses
  %i.lc = mul i64 %.0359571, %i.fw
  %i.ld = add i64 %i.lc, %wide.trip.count492
end_hunk_1
