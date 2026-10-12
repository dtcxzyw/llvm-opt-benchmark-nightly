Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDantzigLCP?download=true
inline.NumInlined: 132
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_Z12btFactorLDLTPfS_ii:bb.a
  store float %i.ch, ptr %i.cc, align 4, !tbaa !17
  %i.ci = fmul float %i.cb, %i.cg
  %i.cj = fmul float %i.cd, %i.cg
  %i.ck = fmul float %i.cd, %i.ch
  %i.cl = fadd float %i.bx, %i.ci
  %i.cm = fadd float %i.by, %i.cj
  %i.cn = fadd float %i.bz, %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %.0329359, i64 8 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !17 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bp, i64 8      ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !17 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0325360, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !17 ; 2 uses
  %i.cu = fmul float %i.cp, %i.ct                 ; 3 uses
  %i.cv = fmul float %i.cr, %i.ct                 ; 2 uses
  store float %i.cu, ptr %i.co, align 4, !tbaa !17
  store float %i.cv, ptr %i.cq, align 4, !tbaa !17
  %i.cw = fmul float %i.cp, %i.cu
  %i.cx = fmul float %i.cr, %i.cu
  %i.cy = fmul float %i.cr, %i.cv
  %i.cz = fadd float %i.cl, %i.cw
  %i.da = fadd float %i.cm, %i.cx
  %i.db = fadd float %i.cn, %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %.0329359, i64 12 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !17 ; 2 uses
  %i.de = getelementptr i8, ptr %i.bp, i64 12     ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !17 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0325360, i64 12
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !17 ; 2 uses
  %i.di = fmul float %i.dd, %i.dh                 ; 3 uses
  %i.dj = fmul float %i.df, %i.dh                 ; 2 uses
  store float %i.di, ptr %i.dc, align 4, !tbaa !17
  store float %i.dj, ptr %i.de, align 4, !tbaa !17
  %i.dk = fmul float %i.dd, %i.di
  %i.dl = fmul float %i.df, %i.di
  %i.dm = fmul float %i.df, %i.dj
  %i.dn = fadd float %i.cz, %i.dk
  %i.do = fadd float %i.da, %i.dl
  %i.dp = fadd float %i.db, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %.0329359, i64 16 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !17 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !17 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0325360, i64 16
  %i.dv = load float, ptr %i.du, align 4, !tbaa !17 ; 2 uses
  %i.dw = fmul float %i.dr, %i.dv                 ; 3 uses
  %i.dx = fmul float %i.dt, %i.dv                 ; 2 uses
  store float %i.dw, ptr %i.dq, align 4, !tbaa !17
  store float %i.dx, ptr %i.ds, align 4, !tbaa !17
  %i.dy = fmul float %i.dr, %i.dw
  %i.dz = fmul float %i.dt, %i.dw
  %i.ea = fmul float %i.dt, %i.dx
  %i.eb = fadd float %i.dn, %i.dy
  %i.ec = fadd float %i.do, %i.dz
  %i.ed = fadd float %i.dp, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %.0329359, i64 20 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !17 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.bp, i64 20     ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !17 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0325360, i64 20
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !17 ; 2 uses
  %i.ek = fmul float %i.ef, %i.ej                 ; 3 uses
  %i.el = fmul float %i.eh, %i.ej                 ; 2 uses
  store float %i.ek, ptr %i.ee, align 4, !tbaa !17
  store float %i.el, ptr %i.eg, align 4, !tbaa !17
  %i.em = fmul float %i.ef, %i.ek
  %i.en = fmul float %i.eh, %i.ek
  %i.eo = fmul float %i.eh, %i.el
  %i.ep = fadd float %i.eb, %i.em                 ; 3 uses
  %i.eq = fadd float %i.ec, %i.en                 ; 3 uses
  %i.er = fadd float %i.ed, %i.eo                 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0329359, i64 24 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0325360, i64 24 ; 2 uses
  %i.eu = icmp sgt i32 %.0333.in358, 11
  br i1 %i.eu, label %.lr.ph, label %.preheader347, !llvm.loop !63

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %.lr.ph375
  %.1374 = phi float [ %i.fg, %.lr.ph375 ], [ %.1374.ph, %.lr.ph375.preheader ]
  %.1322373 = phi float [ %i.ff, %.lr.ph375 ], [ %.1322373.ph, %.lr.ph375.preheader ]
  %.1324372 = phi float [ %i.fe, %.lr.ph375 ], [ %.1324372.ph, %.lr.ph375.preheader ]
  %.1326371 = phi ptr [ %i.fi, %.lr.ph375 ], [ %.1326371.ph, %.lr.ph375.preheader ] ; 2 uses
  %.1330370 = phi ptr [ %i.fh, %.lr.ph375 ], [ %.1330370.ph, %.lr.ph375.preheader ] ; 4 uses
  %.1334369 = phi i32 [ %i.fj, %.lr.ph375 ], [ %.1334369.ph, %.lr.ph375.preheader ] ; 2 uses
  %i.ev = load float, ptr %.1330370, align 4, !tbaa !17 ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %.1330370, i64 %i.c ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !17 ; 3 uses
  %i.ey = load float, ptr %.1326371, align 4, !tbaa !17 ; 2 uses
  %i.ez = fmul float %i.ev, %i.ey                 ; 3 uses
  %i.fa = fmul float %i.ex, %i.ey                 ; 2 uses
  store float %i.ez, ptr %.1330370, align 4, !tbaa !17
  store float %i.fa, ptr %i.ew, align 4, !tbaa !17
  %i.fb = fmul float %i.ev, %i.ez
  %i.fc = fmul float %i.ex, %i.ez
  %i.fd = fmul float %i.ex, %i.fa
  %i.fe = fadd float %.1324372, %i.fb             ; 2 uses
  %i.ff = fadd float %.1322373, %i.fc             ; 2 uses
  %i.fg = fadd float %.1374, %i.fd                ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.1330370, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.1326371, i64 4
  %i.fj = add nsw i32 %.1334369, -1
  %i.fk = icmp samesign ugt i32 %.1334369, 1
  br i1 %i.fk, label %.lr.ph375, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph375, %bb.b, %.preheader347
  %.1330.lcssa = phi ptr [ %i.es, %.preheader347 ], [ %i.h, %bb.b ], [ %i.fh, %.lr.ph375 ] ; 2 uses
  %.1324.lcssa = phi float [ %i.ep, %.preheader347 ], [ 0.000000e+00, %bb.b ], [ %i.fe, %.lr.ph375 ]
  %.1322.lcssa = phi float [ %i.eq, %.preheader347 ], [ 0.000000e+00, %bb.b ], [ %i.ff, %.lr.ph375 ]
  %.1.lcssa = phi float [ %i.er, %.preheader347 ], [ 0.000000e+00, %bb.b ], [ %i.fg, %.lr.ph375 ]
  %i.fl = load float, ptr %.1330.lcssa, align 4, !tbaa !17
  %i.fm = fsub float %i.fl, %.1324.lcssa
  %i.fn = getelementptr inbounds [4 x i8], ptr %.1330.lcssa, i64 %i.c ; 3 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !17
  %i.fp = fsub float %i.fo, %.1322.lcssa          ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fn, i64 4
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !17
  %i.fs = fsub float %i.fr, %.1.lcssa
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.fu = fdiv float 1.000000e+00, %i.fm          ; 2 uses
  store float %i.fu, ptr %i.ft, align 4, !tbaa !17
  %i.fv = fmul float %i.fp, %i.fu                 ; 2 uses
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.fv, float 0.000000e+00)
  %i.fx = fsub float %i.fs, %i.fw
  %i.fy = fdiv float 1.000000e+00, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store float %i.fy, ptr %i.fz, align 4, !tbaa !17
  store float %i.fv, ptr %i.fn, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 5 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.f
  br i1 %.not, label %._crit_edge383, label %bb.b, !llvm.loop !65

._crit_edge383:                                   ; preds = %._crit_edge
  %i.ga = trunc nuw nsw i64 %indvars.iv.next to i32 ; 4 uses
  %i.gb = sub nsw i32 %2, %i.ga
  %cond = icmp eq i32 %i.gb, 1
  br i1 %cond, label %.lr.ph94.i, label %bb.d

.lr.ph94.i:                                       ; preds = %._crit_edge383
  %i.gc = mul nsw i32 %3, %i.ga
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gd ; 4 uses
  %i.gf = sext i32 %3 to i64                      ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i344, %.lr.ph94.i
  %indvars.iv.i340 = phi i64 [ 0, %.lr.ph94.i ], [ %indvars.iv.next.i345, %._crit_edge.i344 ] ; 5 uses
  %i.gg = mul nsw i64 %indvars.iv.i340, %i.gf
  %i.gh = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gg ; 2 uses
  %.not96.i = icmp eq i64 %indvars.iv.i340, 0
  br i1 %.not96.i, label %._crit_edge.i344, label %.lr.ph.i341.preheader

.lr.ph.i341.preheader:                            ; preds = %bb.c
  %i.gi = trunc nuw nsw i64 %indvars.iv.i340 to i32
  br label %.lr.ph.i341

.lr.ph.i341:                                      ; preds = %.lr.ph.i341.preheader, %.lr.ph.i341
  %.0.in77.i = phi i32 [ %.0.i342, %.lr.ph.i341 ], [ %i.gi, %.lr.ph.i341.preheader ] ; 2 uses
  %.06576.i = phi ptr [ %i.gv, %.lr.ph.i341 ], [ %i.gh, %.lr.ph.i341.preheader ] ; 3 uses
  %.06775.i = phi ptr [ %i.gw, %.lr.ph.i341 ], [ %i.ge, %.lr.ph.i341.preheader ] ; 2 uses
  %i.gj = phi <2 x float> [ %i.gx, %.lr.ph.i341 ], [ zeroinitializer, %.lr.ph.i341.preheader ]
  %.0.i342 = add nsw i32 %.0.in77.i, -2
  %i.gk = getelementptr inbounds [4 x i8], ptr %.06576.i, i64 %i.gf
  %i.gl = load <2 x float>, ptr %.06576.i, align 4, !tbaa !17 ; 2 uses
  %i.gm = load <2 x float>, ptr %.06775.i, align 4, !tbaa !17 ; 2 uses
  %i.gn = load <2 x float>, ptr %i.gk, align 4, !tbaa !17 ; 2 uses
  %i.go = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = shufflevector <2 x float> %i.gl, <2 x float> %i.gn, <2 x i32> <i32 0, i32 2>
  %i.gq = fmul <2 x float> %i.go, %i.gp
  %i.gr = fadd <2 x float> %i.gj, %i.gq
  %i.gs = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gt = shufflevector <2 x float> %i.gl, <2 x float> %i.gn, <2 x i32> <i32 1, i32 3>
  %i.gu = fmul <2 x float> %i.gs, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %.06576.i, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.06775.i, i64 8 ; 2 uses
  %i.gx = fadd <2 x float> %i.gr, %i.gu           ; 2 uses
  %i.gy = icmp sgt i32 %.0.in77.i, 3
  br i1 %i.gy, label %.lr.ph.i341, label %._crit_edge.i344, !llvm.loop !66

._crit_edge.i344:                                 ; preds = %.lr.ph.i341, %bb.c
  %.168.lcssa.i = phi ptr [ %i.ge, %bb.c ], [ %i.gw, %.lr.ph.i341 ] ; 3 uses
  %.166.lcssa.i = phi ptr [ %i.gh, %bb.c ], [ %i.gv, %.lr.ph.i341 ]
  %i.gz = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.gx, %.lr.ph.i341 ] ; 2 uses
  %i.ha = load float, ptr %.168.lcssa.i, align 4, !tbaa !17
  %i.hb = extractelement <2 x float> %i.gz, i64 0
  %i.hc = fsub float %i.ha, %i.hb                 ; 2 uses
  store float %i.hc, ptr %.168.lcssa.i, align 4, !tbaa !17
  %i.hd = getelementptr inbounds [4 x i8], ptr %.166.lcssa.i, i64 %i.gf
  %i.he = load float, ptr %i.hd, align 4, !tbaa !17
  %i.hf = getelementptr inbounds nuw i8, ptr %.168.lcssa.i, i64 4 ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !17
  %i.hh = extractelement <2 x float> %i.gz, i64 1
  %i.hi = fsub float %i.hg, %i.hh
  %i.hj = fneg float %i.he
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.hc, float %i.hi)
  store float %i.hk, ptr %i.hf, align 4, !tbaa !17
  %indvars.iv.next.i345 = add nuw nsw i64 %indvars.iv.i340, 2
  %i.hl = icmp samesign ult i64 %indvars.iv.i340, %indvars.iv
  br i1 %i.hl, label %bb.c, label %_ZL11btSolveL1_1PKfPfii.exit, !llvm.loop !67

_ZL11btSolveL1_1PKfPfii.exit:                     ; preds = %._crit_edge.i344
  %i.hm = icmp samesign ugt i64 %indvars.iv, 3
  br i1 %i.hm, label %.lr.ph389, label %.preheader

.preheader:                                       ; preds = %.lr.ph389.rtcont, %_ZL11btSolveL1_1PKfPfii.exit
  %.2335.in.lcssa = phi i32 [ %i.ga, %_ZL11btSolveL1_1PKfPfii.exit ], [ %.2335.rtmerge, %.lr.ph389.rtcont ] ; 4 uses
  %.2331.lcssa = phi ptr [ %i.ge, %_ZL11btSolveL1_1PKfPfii.exit ], [ %.rtmerge508, %.lr.ph389.rtcont ] ; 5 uses
  %.2327.lcssa = phi ptr [ %1, %_ZL11btSolveL1_1PKfPfii.exit ], [ %.rtmerge509, %.lr.ph389.rtcont ] ; 3 uses
  %.2.lcssa = phi float [ 0.000000e+00, %_ZL11btSolveL1_1PKfPfii.exit ], [ %.rtmerge, %.lr.ph389.rtcont ] ; 3 uses
  %4 = icmp sgt i32 %.2335.in.lcssa, 0
  br i1 %4, label %.lr.ph398.preheader.a, label %._crit_edge399

.lr.ph398.preheader.a:                            ; preds = %.preheader
  %xtraiter = and i32 %.2335.in.lcssa, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph398.preheader.new, label %.lr.ph398.prol

.lr.ph398.prol:                                   ; preds = %.lr.ph398.preheader.a
  %5 = load float, ptr %.2331.lcssa, align 4, !tbaa !17 ; 2 uses
  %6 = load float, ptr %.2327.lcssa, align 4, !tbaa !17
  %7 = fmul float %5, %6                          ; 2 uses
  store float %7, ptr %.2331.lcssa, align 4, !tbaa !17
  %8 = fmul float %5, %7
  %9 = fadd float %.2.lcssa, %8
  %10 = getelementptr inbounds nuw i8, ptr %.2331.lcssa, i64 4
  %11 = getelementptr inbounds nuw i8, ptr %.2327.lcssa, i64 4
  %12 = add nsw i32 %.2335.in.lcssa, -1
  br label %.lr.ph398.preheader.new

.lr.ph398.preheader.new:                          ; preds = %.lr.ph398.preheader.a, %.lr.ph398.prol
  %.3397.unr = phi float [ %.2.lcssa, %.lr.ph398.preheader.a ], [ %9, %.lr.ph398.prol ]
  %.3328396.unr = phi ptr [ %.2327.lcssa, %.lr.ph398.preheader.a ], [ %11, %.lr.ph398.prol ]
  %.3332395.unr = phi ptr [ %.2331.lcssa, %.lr.ph398.preheader.a ], [ %10, %.lr.ph398.prol ]
  %.3336394.unr = phi i32 [ %.2335.in.lcssa, %.lr.ph398.preheader.a ], [ %12, %.lr.ph398.prol ]
  br label %.lr.ph398

.lr.ph389:                                        ; preds = %_ZL11btSolveL1_1PKfPfii.exit, %.lr.ph389.rtcont
  %.2388 = phi float [ %.rtmerge, %.lr.ph389.rtcont ], [ 0.000000e+00, %_ZL11btSolveL1_1PKfPfii.exit ] ; 2 uses
  %.2327387 = phi ptr [ %.rtmerge509, %.lr.ph389.rtcont ], [ %1, %_ZL11btSolveL1_1PKfPfii.exit ] ; 10 uses
  %.2331386 = phi ptr [ %.rtmerge508, %.lr.ph389.rtcont ], [ %i.ge, %_ZL11btSolveL1_1PKfPfii.exit ] ; 12 uses
  %.2335.in385 = phi i32 [ %.2335.rtmerge, %.lr.ph389.rtcont ], [ %i.ga, %_ZL11btSolveL1_1PKfPfii.exit ] ; 2 uses
  %.2331386506 = ptrtoaddr ptr %.2331386 to i64   ; 2 uses
  %i.hn = add i64 %.2331386506, 24
  %.2327387507 = ptrtoaddr ptr %.2327387 to i64   ; 2 uses
  %i.ho = add i64 %.2327387507, 24
  %rt.bound0 = icmp ugt i64 %i.ho, %.2331386506
  %rt.bound1 = icmp ugt i64 %i.hn, %.2327387507
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.lr.ph389.rtscalar, label %.lr.ph389.rtvec, !prof !70

.lr.ph398:                                        ; preds = %.lr.ph398, %.lr.ph398.preheader.new
  %.3397 = phi float [ %.3397.unr, %.lr.ph398.preheader.new ], [ %i.ht, %.lr.ph398 ]
  %.3328396 = phi ptr [ %.3328396.unr, %.lr.ph398.preheader.new ], [ %i.hv, %.lr.ph398 ] ; 3 uses
  %.3332395 = phi ptr [ %.3332395.unr, %.lr.ph398.preheader.new ], [ %i.hu, %.lr.ph398 ] ; 4 uses
  %.3336394 = phi i32 [ %.3336394.unr, %.lr.ph398.preheader.new ], [ %i.hw, %.lr.ph398 ] ; 2 uses
  %13 = load float, ptr %.3332395, align 4, !tbaa !17 ; 2 uses
  %14 = load float, ptr %.3328396, align 4, !tbaa !17
  %15 = fmul float %13, %14                       ; 2 uses
  store float %15, ptr %.3332395, align 4, !tbaa !17
  %16 = fmul float %13, %15
  %17 = fadd float %.3397, %16
  %18 = getelementptr inbounds nuw i8, ptr %.3332395, i64 4 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %.3328396, i64 4
  %i.hp = load float, ptr %18, align 4, !tbaa !17 ; 2 uses
  %i.hq = load float, ptr %19, align 4, !tbaa !17
  %i.hr = fmul float %i.hp, %i.hq                 ; 2 uses
  store float %i.hr, ptr %18, align 4, !tbaa !17
  %i.hs = fmul float %i.hp, %i.hr
  %i.ht = fadd float %17, %i.hs                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.3332395, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.3328396, i64 8
  %i.hw = add nsw i32 %.3336394, -2
  %i.hx = icmp sgt i32 %.3336394, 2
  br i1 %i.hx, label %.lr.ph398, label %._crit_edge399, !llvm.loop !68

._crit_edge399:                                   ; preds = %.lr.ph398, %.preheader348, %.preheader
  %.0337.lcssa448451453459 = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %.preheader348 ], [ %indvars.iv.next, %.lr.ph398 ]
  %.3332.lcssa = phi ptr [ %.2331.lcssa, %.preheader ], [ %0, %.preheader348 ], [ %i.hu, %.lr.ph398 ]
  %.3.lcssa = phi float [ %.2.lcssa, %.preheader ], [ 0.000000e+00, %.preheader348 ], [ %i.ht, %.lr.ph398 ]
  %i.hy = load float, ptr %.3332.lcssa, align 4, !tbaa !17
  %i.hz = fsub float %i.hy, %.3.lcssa
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0337.lcssa448451453459
  %i.ib = fdiv float 1.000000e+00, %i.hz
  store float %i.ib, ptr %i.ia, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge399, %._crit_edge383, %bb.a
  ret void

.lr.ph389.rtvec:                                  ; preds = %.lr.ph389
  %i.ic = load <4 x float>, ptr %.2331386, align 4, !tbaa !17 ; 5 uses
  %i.id = load <4 x float>, ptr %.2327387, align 4, !tbaa !17
  %20 = fmul <4 x float> %i.ic, %i.id             ; 5 uses
  %foldExtExtBinop = fmul <4 x float> %i.ic, %20
  %21 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %22 = fadd float %.2388, %21
  %foldExtExtBinop512 = fmul <4 x float> %i.ic, %20
  %i.ie = extractelement <4 x float> %foldExtExtBinop512, i64 1
  %i.if = fadd float %22, %i.ie
  %foldExtExtBinop514 = fmul <4 x float> %i.ic, %20
  %i.ig = extractelement <4 x float> %foldExtExtBinop514, i64 2
  %i.ih = fadd float %i.if, %i.ig
  store <4 x float> %20, ptr %.2331386, align 4, !tbaa !17
  %foldExtExtBinop516 = fmul <4 x float> %i.ic, %20
  %i.ii = extractelement <4 x float> %foldExtExtBinop516, i64 3
  %i.ij = fadd float %i.ih, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %.2331386, i64 16 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.2327387, i64 16
  %i.im = load <2 x float>, ptr %i.ik, align 4, !tbaa !17 ; 3 uses
  %i.in = load <2 x float>, ptr %i.il, align 4, !tbaa !17
  %i.io = fmul <2 x float> %i.im, %i.in           ; 3 uses
  %foldExtExtBinop518 = fmul <2 x float> %i.im, %i.io
  %i.ip = extractelement <2 x float> %foldExtExtBinop518, i64 0
  %i.iq = fadd float %i.ij, %i.ip
  store <2 x float> %i.io, ptr %i.ik, align 4, !tbaa !17
  %foldExtExtBinop520 = fmul <2 x float> %i.im, %i.io
  %i.ir = extractelement <2 x float> %foldExtExtBinop520, i64 1
  %i.is = fadd float %i.iq, %i.ir
  br label %.lr.ph389.rtcont

.lr.ph389.rtscalar:                               ; preds = %.lr.ph389
  %i.it = load float, ptr %.2331386, align 4, !tbaa !17 ; 2 uses
  %i.iu = load float, ptr %.2327387, align 4, !tbaa !17
  %i.iv = fmul float %i.it, %i.iu                 ; 2 uses
  store float %i.iv, ptr %.2331386, align 4, !tbaa !17
  %i.iw = fmul float %i.it, %i.iv
  %i.ix = fadd float %.2388, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %.2331386, i64 4 ; 2 uses
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !17 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.2327387, i64 4
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !17
  %i.jc = fmul float %i.iz, %i.jb                 ; 2 uses
  store float %i.jc, ptr %i.iy, align 4, !tbaa !17
  %i.jd = fmul float %i.iz, %i.jc
  %i.je = fadd float %i.ix, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %.2331386, i64 8 ; 2 uses
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !17 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.2327387, i64 8
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !17
  %i.jj = fmul float %i.jg, %i.ji                 ; 2 uses
  store float %i.jj, ptr %i.jf, align 4, !tbaa !17
  %i.jk = fmul float %i.jg, %i.jj
  %i.jl = fadd float %i.je, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %.2331386, i64 12 ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !17 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.2327387, i64 12
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !17
  %i.jq = fmul float %i.jn, %i.jp                 ; 2 uses
  store float %i.jq, ptr %i.jm, align 4, !tbaa !17
  %i.jr = fmul float %i.jn, %i.jq
  %i.js = fadd float %i.jl, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %.2331386, i64 16 ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !17 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.2327387, i64 16
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !17
  %i.jx = fmul float %i.ju, %i.jw                 ; 2 uses
  store float %i.jx, ptr %i.jt, align 4, !tbaa !17
  %i.jy = fmul float %i.ju, %i.jx
  %i.jz = fadd float %i.js, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %.2331386, i64 20 ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !17 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.2327387, i64 20
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !17
  %i.ke = fmul float %i.kb, %i.kd                 ; 2 uses
  store float %i.ke, ptr %i.ka, align 4, !tbaa !17
  %i.kf = fmul float %i.kb, %i.ke
  %i.kg = fadd float %i.jz, %i.kf
  br label %.lr.ph389.rtcont

.lr.ph389.rtcont:                                 ; preds = %.lr.ph389.rtscalar, %.lr.ph389.rtvec
  %.rtmerge = phi float [ %i.is, %.lr.ph389.rtvec ], [ %i.kg, %.lr.ph389.rtscalar ] ; 2 uses
  %.rtmerge510 = icmp ugt i32 %.2335.in385, 11
  %.rtmerge509 = getelementptr inbounds nuw i8, ptr %.2327387, i64 24 ; 2 uses
  %.rtmerge508 = getelementptr inbounds nuw i8, ptr %.2331386, i64 24 ; 2 uses
  %.2335.rtmerge = add nsw i32 %.2335.in385, -6   ; 2 uses
  br i1 %.rtmerge510, label %.lr.ph389, label %.preheader, !llvm.loop !69
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z9btSolveL1PKfPfii(ptr nofree noundef readonly %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not453 = icmp slt i32 %2, 4
  br i1 %.not453, label %.preheader424, label %.lr.ph456

.lr.ph456:                                        ; preds = %bb.a
  %i.a = add nsw i32 %2, -4
  %i.b = mul nsw i32 %3, 3
  %i.c = shl nsw i32 %3, 1
  %i.d = sext i32 %3 to i64                       ; 4 uses
  %i.e = sext i32 %i.c to i64                     ; 3 uses
  %i.f = sext i32 %i.b to i64                     ; 3 uses
  %i.g = zext nneg i32 %i.a to i64
  br label %bb.b

.preheader424.loopexit:                           ; preds = %._crit_edge
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader424

.preheader424:                                    ; preds = %.preheader424.loopexit, %bb.a
  %.0404.lcssa = phi i32 [ 0, %bb.a ], [ %i.h, %.preheader424.loopexit ] ; 2 uses
  %i.i = icmp slt i32 %.0404.lcssa, %2
  br i1 %i.i, label %.lr.ph477.preheader, label %._crit_edge478

.lr.ph477.preheader:                              ; preds = %.preheader424
  %i.j = zext nneg i32 %.0404.lcssa to i64
  %i.k = sext i32 %3 to i64
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph477

bb.b:                                             ; preds = %.lr.ph456, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph456 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.l = mul nsw i64 %indvars.iv, %i.d
  %i.m = getelementptr inbounds [4 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = icmp samesign ugt i64 %indvars.iv, 11
  %i.o = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  br i1 %i.n, label %.lr.ph, label %.preheader425

.preheader425.loopexit:                           ; preds = %.lr.ph
  %i.p = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  br label %.preheader425

.preheader425:                                    ; preds = %.preheader425.loopexit, %bb.b
  %.0410.lcssa = phi ptr [ %1, %bb.b ], [ %i.do, %.preheader425.loopexit ] ; 3 uses
  %.0406.lcssa = phi ptr [ %i.m, %bb.b ], [ %i.dn, %.preheader425.loopexit ] ; 3 uses
  %.0.in.lcssa = phi i32 [ %i.o, %bb.b ], [ %.0, %.preheader425.loopexit ] ; 3 uses
  %i.q = phi <4 x float> [ zeroinitializer, %bb.b ], [ %i.p, %.preheader425.loopexit ] ; 2 uses
  %i.r = icmp sgt i32 %.0.in.lcssa, 0
  br i1 %i.r, label %.lr.ph446, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0.in432 = phi i32 [ %.0, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %.0406431 = phi ptr [ %i.dn, %.lr.ph ], [ %i.m, %bb.b ] ; 8 uses
  %.0410430 = phi ptr [ %i.do, %.lr.ph ], [ %1, %bb.b ] ; 3 uses
  %i.s = phi <4 x float> [ %i.dm, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0 = add nsw i32 %.0.in432, -12                ; 2 uses
  %i.t = load float, ptr %.0406431, align 4, !tbaa !17
  %i.u = load float, ptr %.0410430, align 4, !tbaa !17
  %i.v = getelementptr inbounds [4 x i8], ptr %.0406431, i64 %i.d ; 4 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !17
  %i.x = getelementptr inbounds [4 x i8], ptr %.0406431, i64 %i.e ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !17
  %i.z = getelementptr inbounds [4 x i8], ptr %.0406431, i64 %i.f ; 4 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !17
  %i.ab = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.w, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.t, i64 3
  %i.af = insertelement <4 x float> poison, float %i.u, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.ag, <4 x float> %i.s)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0406431, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.0410430, i64 4
  %i.ak = getelementptr i8, ptr %i.v, i64 4
  %i.al = getelementptr i8, ptr %i.x, i64 4
  %i.am = getelementptr i8, ptr %i.z, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %.0406431, i64 20
  %i.ao = getelementptr i8, ptr %i.v, i64 20
  %i.ap = getelementptr i8, ptr %i.x, i64 20
  %i.aq = getelementptr i8, ptr %i.z, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %.0406431, i64 36
  %i.as = getelementptr i8, ptr %i.v, i64 36
  %i.at = getelementptr i8, ptr %i.x, i64 36
  %i.au = getelementptr i8, ptr %i.z, i64 36
  %i.av = load <4 x float>, ptr %i.ai, align 4, !tbaa !17 ; 4 uses
  %i.aw = load <4 x float>, ptr %i.ak, align 4, !tbaa !17 ; 4 uses
  %i.ax = load <4 x float>, ptr %i.al, align 4, !tbaa !17 ; 4 uses
  %i.ay = load <4 x float>, ptr %i.am, align 4, !tbaa !17 ; 4 uses
  %i.az = load <11 x float>, ptr %i.aj, align 4, !tbaa !17 ; 11 uses
  %i.ba = shufflevector <4 x float> %i.ay, <4 x float> %i.ax, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bd = shufflevector <11 x float> %i.az, <11 x float> poison, <4 x i32> zeroinitializer
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.bd, <4 x float> %i.ah)
  %i.bf = shufflevector <4 x float> %i.ay, <4 x float> %i.ax, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bi = shufflevector <11 x float> %i.az, <11 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bi, <4 x float> %i.be)
  %i.bk = shufflevector <4 x float> %i.ay, <4 x float> %i.ax, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.bn = shufflevector <11 x float> %i.az, <11 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.bn, <4 x float> %i.bj)
  %i.bp = shufflevector <4 x float> %i.ay, <4 x float> %i.ax, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bs = shufflevector <11 x float> %i.az, <11 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bs, <4 x float> %i.bo)
  %i.bu = load <4 x float>, ptr %i.an, align 4, !tbaa !17 ; 4 uses
  %i.bv = load <4 x float>, ptr %i.ao, align 4, !tbaa !17 ; 4 uses
  %i.bw = load <4 x float>, ptr %i.ap, align 4, !tbaa !17 ; 4 uses
  %i.bx = load <4 x float>, ptr %i.aq, align 4, !tbaa !17 ; 4 uses
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> %i.bw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cb = shufflevector <11 x float> %i.az, <11 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.cb, <4 x float> %i.bt)
  %i.cd = shufflevector <4 x float> %i.bx, <4 x float> %i.bw, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cg = shufflevector <11 x float> %i.az, <11 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.cg, <4 x float> %i.cc)
  %i.ci = shufflevector <4 x float> %i.bx, <4 x float> %i.bw, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.cl = shufflevector <11 x float> %i.az, <11 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.cl, <4 x float> %i.ch)
  %i.cn = shufflevector <4 x float> %i.bx, <4 x float> %i.bw, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cq = shufflevector <11 x float> %i.az, <11 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cq, <4 x float> %i.cm)
  %i.cs = load <3 x float>, ptr %i.ar, align 4, !tbaa !17
  %i.ct = load <3 x float>, ptr %i.as, align 4, !tbaa !17
  %i.cu = load <3 x float>, ptr %i.at, align 4, !tbaa !17 ; 3 uses
  %i.cv = load <3 x float>, ptr %i.au, align 4, !tbaa !17 ; 3 uses
  %i.cw = shufflevector <3 x float> %i.cv, <3 x float> %i.cu, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cx = shufflevector <3 x float> %i.ct, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.cy = shufflevector <4 x float> %i.cw, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cz = shufflevector <3 x float> %i.cs, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.da = shufflevector <4 x float> %i.cy, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.db = shufflevector <11 x float> %i.az, <11 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.db, <4 x float> %i.cr)
  %i.dd = shufflevector <3 x float> %i.cv, <3 x float> %i.cu, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.df = shufflevector <4 x float> %i.de, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dg = shufflevector <11 x float> %i.az, <11 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.dg, <4 x float> %i.dc)
  %i.di = shufflevector <3 x float> %i.cv, <3 x float> %i.cu, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.dl = shufflevector <11 x float> %i.az, <11 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.dl, <4 x float> %i.dh) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0406431, i64 48 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0410430, i64 48 ; 2 uses
  %i.dp = icmp sgt i32 %.0.in432, 23
  br i1 %i.dp, label %.lr.ph, label %.preheader425.loopexit, !llvm.loop !71

.lr.ph446:                                        ; preds = %.preheader425, %.lr.ph446
  %.1445 = phi i32 [ %i.ei, %.lr.ph446 ], [ %.0.in.lcssa, %.preheader425 ] ; 2 uses
  %.1407444 = phi ptr [ %i.eg, %.lr.ph446 ], [ %.0406.lcssa, %.preheader425 ] ; 5 uses
  %.1411443 = phi ptr [ %i.eh, %.lr.ph446 ], [ %.0410.lcssa, %.preheader425 ] ; 2 uses
  %i.dq = phi <4 x float> [ %i.ef, %.lr.ph446 ], [ %i.q, %.preheader425 ]
  %i.dr = load float, ptr %.1407444, align 4, !tbaa !17
  %i.ds = load float, ptr %.1411443, align 4, !tbaa !17
  %i.dt = getelementptr inbounds [4 x i8], ptr %.1407444, i64 %i.d
  %i.du = load float, ptr %i.dt, align 4, !tbaa !17
  %i.dv = getelementptr inbounds [4 x i8], ptr %.1407444, i64 %i.e
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !17
  %i.dx = getelementptr inbounds [4 x i8], ptr %.1407444, i64 %i.f
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !17
  %i.dz = insertelement <4 x float> poison, float %i.dr, i64 0
  %i.ea = insertelement <4 x float> %i.dz, float %i.du, i64 1
  %i.eb = insertelement <4 x float> %i.ea, float %i.dw, i64 2
  %i.ec = insertelement <4 x float> %i.eb, float %i.dy, i64 3
  %i.ed = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.ee, <4 x float> %i.dq) ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.1407444, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.1411443, i64 4
  %i.ei = add nsw i32 %.1445, -1
  %i.ej = icmp samesign ugt i32 %.1445, 1
  br i1 %i.ej, label %.lr.ph446, label %._crit_edge.loopexit, !llvm.loop !72

._crit_edge.loopexit:                             ; preds = %.lr.ph446
  %scevgep = getelementptr i8, ptr %.0406.lcssa, i64 4
  %i.ek = add nsw i32 %.0.in.lcssa, -1
end_hunk_0
