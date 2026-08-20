inline.NumInlined: 1758
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN12_GLOBAL__N_110low_angresIL18BondedKernelFlavor2EEEfiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfb:bb.a
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %i.l ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = getelementptr i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = add nsw i32 %.092109, 3                  ; 3 uses
  %i.r = getelementptr i8, ptr %i.m, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %3, i64 %i.t ; 3 uses
  %i.v = sext i32 %i.p to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %3, i64 %i.v ; 3 uses
  br i1 %.not.i, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit, label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !17
  %i.ab = fsub float %i.y, %i.aa
  %i.ac = load <2 x float>, ptr %i.u, align 4, !tbaa !17
  %i.ad = load <2 x float>, ptr %i.w, align 4, !tbaa !17
  %i.ae = fsub <2 x float> %i.ac, %i.ad
  store <2 x float> %i.ae, ptr %i.a, align 8, !tbaa !17
  store float %i.ab, ptr %i.e, align 8, !tbaa !17
  br i1 %9, label %bb.e, label %bb.d

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread: ; preds = %bb.b
  %i.af = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.u, ptr noundef %i.w, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread
  %i.ag = sext i32 %i.q to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16 ; 2 uses
  %i.aj = add nsw i32 %.092109, 5
  %i.ak = getelementptr i8, ptr %i.m, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %3, i64 %i.am
  %i.ao = sext i32 %i.ai to i64
  %i.ap = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ao
  %i.aq = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef %i.an, ptr noundef %i.ap, ptr noundef nonnull %i.b)
  %.pre = load float, ptr %i.b, align 8, !tbaa !17
  %i.ar = load <2 x float>, ptr %i.f, align 4, !tbaa !17
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %i.as = sext i32 %i.q to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16 ; 2 uses
  %i.av = add nsw i32 %.092109, 5
  %i.aw = getelementptr i8, ptr %i.m, i64 16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ay ; 2 uses
  %i.ba = sext i32 %i.au to i64
  %i.bb = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ba ; 2 uses
  %i.bc = load float, ptr %i.az, align 4, !tbaa !17
  %i.bd = load float, ptr %i.bb, align 4, !tbaa !17
  %i.be = fsub float %i.bc, %i.bd                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = load <2 x float>, ptr %i.bf, align 4, !tbaa !17
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !17
  %i.bj = fsub <2 x float> %i.bh, %i.bi           ; 2 uses
  store float %i.be, ptr %i.b, align 8, !tbaa !17
  store <2 x float> %i.bj, ptr %i.f, align 4, !tbaa !17
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit
  %.0.i102 = phi i32 [ %i.af, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit.thread ], [ 22, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit ]
  store <2 x float> zeroinitializer, ptr %i.b, align 8, !tbaa !17
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !17
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97: ; preds = %bb.d, %bb.c, %bb.e
  %i.bk = phi float [ 0.000000e+00, %bb.e ], [ %.pre, %bb.c ], [ %i.be, %bb.d ] ; 4 uses
  %.0.i100 = phi i32 [ %.0.i102, %bb.e ], [ %i.af, %bb.c ], [ 22, %bb.d ]
  %.193 = phi i32 [ %i.q, %bb.e ], [ %i.aj, %bb.c ], [ %i.av, %bb.d ] ; 2 uses
  %.190 = phi i32 [ %.089110, %bb.e ], [ %i.ai, %bb.c ], [ %i.au, %bb.d ] ; 2 uses
  %.188 = phi i32 [ %.087111, %bb.e ], [ %i.al, %bb.c ], [ %i.ax, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.086112, %bb.e ], [ %i.aq, %bb.c ], [ 22, %bb.d ] ; 2 uses
  %i.bl = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.e ], [ %i.ar, %bb.c ], [ %i.bj, %bb.d ] ; 7 uses
  %i.bm = load float, ptr %i.a, align 8, !tbaa !17 ; 4 uses
  %i.bn = load <2 x float>, ptr %i.d, align 4, !tbaa !17 ; 7 uses
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bk, i64 1 ; 3 uses
  %i.bq = fpext <2 x float> %i.bp to <2 x double> ; 4 uses
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> zeroinitializer)
  %i.bs = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bt = fpext <2 x float> %i.bs to <2 x double> ; 4 uses
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bt, <2 x double> %i.br)
  %i.bv = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.bw = fpext <2 x float> %i.bv to <2 x double> ; 4 uses
  %i.bx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bw, <2 x double> %i.bu) ; 2 uses
  %shift = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bx, %shift
  %i.by = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bz = fcmp ogt double %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.f, label %_ZL9cos_anglePKfS0_.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97
  %i.ca = extractelement <2 x double> %i.bq, i64 0
  %i.cb = extractelement <2 x double> %i.bq, i64 1
  %i.cc = call double @llvm.fmuladd.f64(double %i.ca, double %i.cb, double 0.000000e+00)
  %i.cd = extractelement <2 x double> %i.bt, i64 0
  %i.ce = extractelement <2 x double> %i.bt, i64 1
  %i.cf = call double @llvm.fmuladd.f64(double %i.cd, double %i.ce, double %i.cc)
  %i.cg = extractelement <2 x double> %i.bw, i64 0
  %i.ch = extractelement <2 x double> %i.bw, i64 1
  %i.ci = call double @llvm.fmuladd.f64(double %i.cg, double %i.ch, double %i.cf)
  %i.cj = call double @sqrt(double noundef %i.by) #23
  %i.ck = fdiv double 1.000000e+00, %i.cj
  %i.cl = fmul double %i.ci, %i.ck
  %i.cm = fptrunc double %i.cl to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97, %bb.f
  %.026.i = phi float [ %i.cm, %bb.f ], [ 1.000000e+00, %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit97 ] ; 3 uses
  %i.cn = fcmp ogt float %.026.i, 1.000000e+00
  %i.co = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.co, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.cn, float 1.000000e+00, float %..026.i ; 4 uses
  %i.cp = call noundef float @acosf(float noundef %.027.i) #23
  %i.cq = sext i32 %i.n to i64
  %i.cr = getelementptr inbounds [48 x i8], ptr %2, i64 %i.cq ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !15 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !15 ; 2 uses
  %i.cw = load float, ptr %i.cr, align 4, !tbaa !15 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !15 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !15
  %i.db = fmul float %7, %i.cy
  %i.dc = call float @llvm.fmuladd.f32(float %i.h, float %i.cw, float %i.db)
  %i.dd = fsub float %i.cy, %i.cw
  %i.de = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.dd, i64 1
  %i.dg = fpext <2 x float> %i.df to <2 x double>
  %i.dh = fmul <2 x double> %i.dg, splat (double f0x3F91DF46A2529D39)
  %i.di = fptrunc <2 x double> %i.dh to <2 x float> ; 2 uses
  %i.dj = fmul float %7, %i.cv
  %i.dk = call float @llvm.fmuladd.f32(float %i.h, float %i.ct, float %i.dj) ; 3 uses
  %i.dl = sitofp i32 %i.da to float               ; 2 uses
  %i.dm = extractelement <2 x float> %i.di, i64 0
  %i.dn = fsub float %i.cp, %i.dm
  %i.do = fmul float %i.dn, %i.dl                 ; 2 uses
  %i.dp = call noundef float @sinf(float noundef %i.do) #23 ; 2 uses
  %i.dq = call noundef float @cosf(float noundef %i.do) #23
  %i.dr = fsub float 1.000000e+00, %i.dq          ; 2 uses
  %i.ds = fmul float %i.dk, %i.dr
  %i.dt = fsub float %i.cv, %i.ct
  %i.du = extractelement <2 x float> %i.di, i64 1
  %i.dv = fmul float %i.dk, %i.du
  %i.dw = fmul float %i.dp, %i.dv
  %i.dx = call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.dr, float %i.dw)
  %i.dy = load float, ptr %8, align 4, !tbaa !17
  %i.dz = fadd float %i.dy, %i.dx
  store float %i.dz, ptr %8, align 4, !tbaa !17
  %i.ea = fadd float %.0113, %i.ds                ; 2 uses
  %i.eb = fmul float %.027.i, %.027.i             ; 2 uses
  %i.ec = fcmp olt float %i.eb, 1.000000e+00
  br i1 %i.ec, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZL9cos_anglePKfS0_.exit
  %i.ed = fmul float %i.dk, %i.dl
  %i.ee = fneg float %i.dp
  %i.ef = fmul float %i.ed, %i.ee
  %i.eg = fsub float 1.000000e+00, %i.eb
  %i.eh = call noundef float @sqrtf(float noundef %i.eg) #23
  %i.ei = fmul <2 x float> %i.bs, %i.bs
  %i.ej = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bp, <2 x float> %i.ei)
  %i.ek = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bv, <2 x float> %i.ej) ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0 ; 2 uses
  %i.em = extractelement <2 x float> %i.ek, i64 1 ; 2 uses
  %i.en = fmul float %i.el, %i.em
  %i.eo = call noundef float @sqrtf(float noundef %i.en) #23
  %i.ep = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.eo, i64 1
  %i.er = fdiv <2 x float> splat (float 1.000000e+00), %i.eq ; 2 uses
  %i.es = extractelement <2 x float> %i.er, i64 0
  %i.et = fmul float %i.ef, %i.es                 ; 2 uses
  %i.eu = fmul float %.027.i, %i.et               ; 2 uses
  %i.ev = extractelement <2 x float> %i.er, i64 1
  %i.ew = fmul float %i.et, %i.ev                 ; 8 uses
  %i.ex = fdiv float %i.eu, %i.el                 ; 6 uses
  %i.ey = getelementptr inbounds [16 x i8], ptr %4, i64 %i.v ; 6 uses
  %i.ez = getelementptr inbounds [16 x i8], ptr %4, i64 %i.t ; 5 uses
  br i1 %9, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.g
  %i.fa = sext i32 %.188 to i64                   ; 2 uses
  %i.fb = getelementptr inbounds [16 x i8], ptr %4, i64 %i.fa ; 2 uses
  %i.fc = sext i32 %.190 to i64
  %i.fd = getelementptr inbounds [16 x i8], ptr %4, i64 %i.fc ; 3 uses
  %i.fe = fdiv float %i.eu, %i.em                 ; 2 uses
  %i.ff = fneg float %i.bk
  %i.fg = fmul float %i.fe, %i.ff
  %i.fh = extractelement <2 x float> %i.bn, i64 0
  %i.fi = extractelement <2 x float> %i.bl, i64 0
  %i.fj = load <2 x float>, ptr %i.ey, align 4, !tbaa !17
  %i.fk = fneg float %i.fh
  %i.fl = fneg float %i.bm
  %i.fm = fmul float %i.ex, %i.fk
  %i.fn = fmul float %i.ex, %i.fl
  %i.fo = call float @llvm.fmuladd.f32(float %i.ew, float %i.fi, float %i.fm) ; 2 uses
  %i.fp = call float @llvm.fmuladd.f32(float %i.ew, float %i.bk, float %i.fn) ; 2 uses
  %i.fq = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fo, i64 1 ; 2 uses
  %i.fs = fadd <2 x float> %i.fj, %i.fr
  store <2 x float> %i.fs, ptr %i.ey, align 4, !tbaa !17
  %i.ft = load <2 x float>, ptr %i.ez, align 4, !tbaa !17
  %i.fu = fsub <2 x float> %i.ft, %i.fr
  store <2 x float> %i.fu, ptr %i.ez, align 4, !tbaa !17
  %i.fv = fneg <2 x float> %i.bl
  %i.fw = extractelement <2 x float> %i.bn, i64 1
  %i.fx = fneg float %i.fw
  %i.fy = fmul float %i.ex, %i.fx
  %i.fz = extractelement <2 x float> %i.bl, i64 1
  %i.ga = call float @llvm.fmuladd.f32(float %i.ew, float %i.fz, float %i.fy) ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !17
  %i.gd = fadd float %i.gc, %i.ga
  store float %i.gd, ptr %i.gb, align 4, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !17
  %i.gg = fsub float %i.gf, %i.ga
  store float %i.gg, ptr %i.ge, align 4, !tbaa !17
  %i.gh = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = fmul <2 x float> %i.gi, %i.fv
  %i.gk = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> %i.bn, <2 x float> %i.gj) ; 3 uses
  %i.gn = load <2 x float>, ptr %i.fd, align 4, !tbaa !17
  %i.go = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %10 = call float @llvm.fmuladd.f32(float %i.ew, float %i.bm, float %i.fg) ; 2 uses
  %i.gp = insertelement <2 x float> %i.go, float %10, i64 0 ; 2 uses
  %i.gq = fadd <2 x float> %i.gp, %i.gn
  store <2 x float> %i.gq, ptr %i.fd, align 4, !tbaa !17
  %i.gr = load <2 x float>, ptr %i.fb, align 4, !tbaa !17
  %i.gs = fsub <2 x float> %i.gr, %i.gp
  store <2 x float> %i.gs, ptr %i.fb, align 4, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !17
  %i.gv = extractelement <2 x float> %i.gm, i64 1 ; 2 uses
  %i.gw = fadd float %i.gv, %i.gu
  store float %i.gw, ptr %i.gt, align 4, !tbaa !17
  br label %.split108.us

.split.us.preheader:                              ; preds = %bb.g
  %i.gx = extractelement <2 x float> %i.bn, i64 0
  %i.gy = extractelement <2 x float> %i.bl, i64 0
  %i.gz = load <2 x float>, ptr %i.ey, align 4, !tbaa !17
  %i.ha = fneg float %i.gx
  %i.hb = fneg float %i.bm
  %i.hc = fmul float %i.ex, %i.ha
  %i.hd = fmul float %i.ex, %i.hb
  %i.he = call float @llvm.fmuladd.f32(float %i.ew, float %i.gy, float %i.hc) ; 2 uses
  %i.hf = call float @llvm.fmuladd.f32(float %i.ew, float %i.bk, float %i.hd) ; 2 uses
  %i.hg = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hh = insertelement <2 x float> %i.hg, float %i.he, i64 1 ; 2 uses
  %i.hi = fadd <2 x float> %i.gz, %i.hh
  store <2 x float> %i.hi, ptr %i.ey, align 4, !tbaa !17
  %i.hj = load <2 x float>, ptr %i.ez, align 4, !tbaa !17
  %i.hk = fsub <2 x float> %i.hj, %i.hh
  store <2 x float> %i.hk, ptr %i.ez, align 4, !tbaa !17
  %i.hl = extractelement <2 x float> %i.bn, i64 1
  %i.hm = fneg float %i.hl
  %i.hn = fmul float %i.ex, %i.hm
  %i.ho = extractelement <2 x float> %i.bl, i64 1
  %i.hp = call float @llvm.fmuladd.f32(float %i.ew, float %i.ho, float %i.hn) ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !17
  %i.hs = fadd float %i.hr, %i.hp
  store float %i.hs, ptr %i.hq, align 4, !tbaa !17
  br label %.split108.us

.split108.us:                                     ; preds = %.split.preheader, %.split.us.preheader
  %i.ht = phi i64 [ %i.fa, %.split.preheader ], [ %i.t, %.split.us.preheader ]
  %.sink126 = phi float [ %i.gv, %.split.preheader ], [ %i.hp, %.split.us.preheader ]
  %.sroa.8.0 = phi float [ %i.ga, %.split.preheader ], [ %i.hp, %.split.us.preheader ] ; 2 uses
  %.sroa.5118.0 = phi float [ %i.fo, %.split.preheader ], [ %i.he, %.split.us.preheader ]
  %.sroa.0117.0 = phi float [ %i.fp, %.split.preheader ], [ %i.hf, %.split.us.preheader ]
  %.sroa.0.1 = phi float [ %10, %.split.preheader ], [ %.sroa.0.0, %.split.us.preheader ] ; 3 uses
  %i.hu = phi <2 x float> [ %i.gm, %.split.preheader ], [ %i.k, %.split.us.preheader ] ; 4 uses
  %i.hv = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ht
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !17
  %i.hy = fsub float %i.hx, %.sink126
  store float %i.hy, ptr %i.hw, align 4, !tbaa !17
  %i.hz = sext i32 %.0.i100 to i64
  %i.ia = getelementptr inbounds [12 x i8], ptr %5, i64 %i.hz ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !17
  %i.id = fadd float %i.ic, %.sroa.8.0
  %i.ie = load <2 x float>, ptr %i.ia, align 4, !tbaa !17
  %i.if = insertelement <2 x float> poison, float %.sroa.0117.0, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %.sroa.5118.0, i64 1 ; 2 uses
  %i.ih = fadd <2 x float> %i.ie, %i.ig
  store <2 x float> %i.ih, ptr %i.ia, align 4, !tbaa !17
  store float %i.id, ptr %i.ib, align 4, !tbaa !17
  %i.ii = load float, ptr %i.j, align 4, !tbaa !17
  %i.ij = fsub float %i.ii, %.sroa.8.0
  %i.ik = load <2 x float>, ptr %i.i, align 4, !tbaa !17
  %i.il = fsub <2 x float> %i.ik, %i.ig
  store <2 x float> %i.il, ptr %i.i, align 4, !tbaa !17
  store float %i.ij, ptr %i.j, align 4, !tbaa !17
  br i1 %9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split108.us
  %i.im = sext i32 %.1 to i64
  %i.in = getelementptr inbounds [12 x i8], ptr %5, i64 %i.im ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !17
  %i.iq = extractelement <2 x float> %i.hu, i64 1 ; 2 uses
  %i.ir = fadd float %i.ip, %i.iq
  %i.is = load <2 x float>, ptr %i.in, align 4, !tbaa !17
  %i.it = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.iu = insertelement <2 x float> %i.it, float %.sroa.0.1, i64 0 ; 2 uses
  %i.iv = fadd <2 x float> %i.is, %i.iu
  store <2 x float> %i.iv, ptr %i.in, align 4, !tbaa !17
  store float %i.ir, ptr %i.io, align 4, !tbaa !17
  %i.iw = load float, ptr %i.j, align 4, !tbaa !17
  %i.ix = fsub float %i.iw, %i.iq
  %i.iy = load <2 x float>, ptr %i.i, align 4, !tbaa !17
  %i.iz = fsub <2 x float> %i.iy, %i.iu
  store <2 x float> %i.iz, ptr %i.i, align 4, !tbaa !17
  store float %i.ix, ptr %i.j, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.split108.us, %bb.h, %_ZL9cos_anglePKfS0_.exit
  %.sroa.0.2 = phi float [ %.sroa.0.1, %.split108.us ], [ %.sroa.0.1, %bb.h ], [ %.sroa.0.0, %_ZL9cos_anglePKfS0_.exit ]
  %i.ja = phi <2 x float> [ %i.hu, %.split108.us ], [ %i.hu, %bb.h ], [ %i.k, %_ZL9cos_anglePKfS0_.exit ]
  %i.jb = icmp slt i32 %.193, %0
  br i1 %i.jb, label %bb.b, label %._crit_edge, !llvm.loop !170

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ea, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_Z10do_dih_fupIL18BondedKernelFlavor3EEviiiifPfS1_S1_S1_S1_PA4_fPA3_fPK5t_pbcPA3_Kfiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = load float, ptr %8, align 4, !tbaa !17   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !17 ; 3 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !17 ; 3 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e) ; 2 uses
  %i.i = load float, ptr %9, align 4, !tbaa !17   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !17 ; 3 uses
  %i.l = fmul float %i.k, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !17 ; 3 uses
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.m) ; 2 uses
  %i.q = load float, ptr %6, align 4, !tbaa !17   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !17 ; 4 uses
  %i.t = fmul float %i.s, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !17 ; 4 uses
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.u) ; 3 uses
  %i.y = fmul float %i.x, f0x34000000             ; 2 uses
  %i.z = fcmp ogt float %i.h, %i.y
  %i.aa = fcmp ogt float %i.p, %i.y
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.x)
  %i.ab = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ac = fmul float %i.ab, %i.ab                 ; 2 uses
  %i.ad = fmul float %i.x, %i.ab                  ; 2 uses
  %i.ae = fneg float %4
  %i.af = fmul float %i.ad, %i.ae
  %i.ag = fdiv float %i.af, %i.h                  ; 3 uses
  %i.ah = fmul float %i.a, %i.ag                  ; 3 uses
  %i.ai = fmul float %i.c, %i.ag                  ; 3 uses
  %i.aj = fmul float %i.g, %i.ag                  ; 3 uses
  %i.ak = fmul float %4, %i.ad
  %i.al = fdiv float %i.ak, %i.p                  ; 3 uses
  %i.am = fmul float %i.i, %i.al                  ; 3 uses
  %i.an = fmul float %i.k, %i.al                  ; 3 uses
  %i.ao = fmul float %i.o, %i.al                  ; 3 uses
  %i.ap = load float, ptr %5, align 4, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !17
  %i.as = fmul float %i.s, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.q, float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !17
  %i.aw = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.w, float %i.at)
  %i.ax = fmul float %i.ac, %i.aw                 ; 3 uses
  %i.ay = load float, ptr %7, align 4, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !17
  %i.bb = fmul float %i.s, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.q, float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !17
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.w, float %i.bc)
  %i.bg = fmul float %i.ac, %i.bf                 ; 3 uses
  %i.bh = fmul float %i.ah, %i.ax
  %i.bi = fmul float %i.ai, %i.ax
  %i.bj = fmul float %i.aj, %i.ax
  %i.bk = fmul float %i.am, %i.bg
  %i.bl = fmul float %i.an, %i.bg
  %i.bm = fmul float %i.ao, %i.bg
  %i.bn = fsub float %i.bh, %i.bk                 ; 2 uses
  %i.bo = fsub float %i.bi, %i.bl                 ; 2 uses
  %i.bp = fsub float %i.bj, %i.bm                 ; 2 uses
  %i.bq = fsub float %i.ah, %i.bn
  %i.br = fsub float %i.ai, %i.bo
  %i.bs = fsub float %i.aj, %i.bp
  %i.bt = fadd float %i.am, %i.bn
  %i.bu = fadd float %i.an, %i.bo
  %i.bv = fadd float %i.ao, %i.bp
  %i.bw = sext i32 %0 to i64
  %i.bx = getelementptr inbounds [16 x i8], ptr %10, i64 %i.bw ; 4 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !17
  %i.bz = fadd float %i.ah, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !17
  %i.cc = fadd float %i.ai, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !17
  %i.cf = fadd float %i.aj, %i.ce
  store float %i.bz, ptr %i.bx, align 4, !tbaa !17
end_hunk_0
