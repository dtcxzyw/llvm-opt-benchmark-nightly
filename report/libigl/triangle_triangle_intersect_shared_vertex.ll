begin_hunk_0_@_ZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarE:bb.a
bb.j:                                             ; preds = %bb.i
  %i.em = fcmp ogt double %i.ei, f0x7FEFFFFFFFFFFFFF
  br i1 %i.em, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i
  %i.en = fcmp uno double %i.ei, 0.000000e+00
  br i1 %i.en, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.158.i.i.i = phi double [ 0.000000e+00, %bb.l ], [ f0x0004000000000000, %bb.i ], [ %i.ei, %bb.k ], [ %i.ei, %bb.m ], [ %i.ei, %bb.j ] ; 2 uses
  %.155.i.i.i = phi double [ 1.000000e+00, %bb.l ], [ f0x7FEFFFFFFFFFFFFF, %bb.i ], [ %i.ek, %bb.k ], [ 1.000000e+00, %bb.m ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.eo = fcmp ogt double %.158.i.i.i, 0.000000e+00
  br i1 %i.eo, label %.lr.ph85.i.i.i.i32.i.i.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit

.lr.ph85.i.i.i.i32.i.i.i.i:                       ; preds = %bb.n
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.155.i.i.i, i64 0
  %i.ep = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x double> %i.ds, %i.ep          ; 2 uses
  %i.er = fmul <2 x double> %i.eq, %i.eq          ; 2 uses
  %shift = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.er, %shift
  %i.es = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.et = fmul double %.155.i.i.i, %i.dz          ; 2 uses
  %i.eu = fmul double %i.et, %i.et
  %i.ev = fadd double %i.es, %i.eu
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i, %bb.n
  %.2.i.i.i = phi double [ 0.000000e+00, %bb.n ], [ %i.ev, %.lr.ph85.i.i.i.i32.i.i.i.i ]
  %i.ew = fsub <2 x double> %i.ea, %i.eb          ; 3 uses
  %i.ex = fmul <2 x double> %i.ds, %i.ew          ; 2 uses
  %shift247 = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop248 = fadd <2 x double> %i.ex, %shift247
  %i.ey = extractelement <2 x double> %foldExtExtBinop248, i64 0
  %i.ez = fsub double %i.ec, %i.dc                ; 2 uses
  %i.fa = fmul double %i.dz, %i.ez
  %i.fb = fadd double %i.fa, %i.ey
  %i.fc = call noundef double @llvm.fabs.f64(double %i.fb)
  %i.fd = call double @sqrt(double noundef %.2.i.i.i) #5
  %i.fe = fmul double %.158.i.i.i, %i.fd
  %i.ff = fmul double %8, %i.fe
  %i.fg = fcmp olt double %i.fc, %i.ff
  br i1 %i.fg, label %bb.o, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210

bb.o:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit
  %i.fh = load <2 x double>, ptr %10, align 16, !tbaa !34, !noalias !41
  %i.fi = fsub <2 x double> %i.fh, %i.eb          ; 5 uses
  %i.fj = load <2 x double>, ptr %11, align 16, !tbaa !34, !noalias !44
  %i.fk = fsub <2 x double> %i.fj, %i.eb          ; 5 uses
  %i.fl = fmul <2 x double> %i.fi, %i.fi          ; 2 uses
  %i.fm = extractelement <2 x double> %i.df, i64 1 ; 3 uses
  %i.fn = fmul double %i.fm, %i.fm
  %i.fo = fmul <2 x double> %i.fi, %i.fk          ; 2 uses
  %i.fp = shufflevector <2 x double> %i.fl, <2 x double> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.fq = shufflevector <2 x double> %i.fl, <2 x double> %i.fo, <2 x i32> <i32 1, i32 3>
  %i.fr = fadd <2 x double> %i.fp, %i.fq          ; 2 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 0
  %i.ft = fadd double %i.fn, %i.fs                ; 2 uses
  %i.fu = extractelement <2 x double> %i.dm, i64 0
  %i.fv = fmul double %i.fu, %i.fm
  %i.fw = extractelement <2 x double> %i.fr, i64 1
  %i.fx = fadd double %i.fv, %i.fw                ; 3 uses
  %i.fy = fmul <2 x double> %i.fk, %i.fk          ; 2 uses
  %shift250 = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop251 = fadd <2 x double> %i.fy, %shift250
  %foldExtExtBinop253 = fmul <2 x double> %i.dm, %i.dm
  %foldExtExtBinop255 = fadd <2 x double> %foldExtExtBinop253, %foldExtExtBinop251 ; 2 uses
  %i.fz = extractelement <2 x double> %foldExtExtBinop255, i64 0
  %i.ga = fmul <2 x double> %i.ew, %i.fi          ; 2 uses
  %i.gb = fmul <2 x double> %i.ew, %i.fk          ; 2 uses
  %i.gc = fneg double %i.fx
  %i.gd = fmul double %i.fx, %i.gc
  %i.ge = call double @llvm.fmuladd.f64(double %i.ft, double %i.fz, double %i.gd)
  %i.gf = fsub <2 x double> %.sroa.0.0, %i.eb     ; 2 uses
  %i.gg = fsub double %.sroa.8.0, %i.dc
  %i.gh = fmul <2 x double> %i.gf, %i.fi          ; 2 uses
  %i.gi = fmul <2 x double> %i.gf, %i.fk          ; 2 uses
  %i.gj = shufflevector <2 x double> %i.gb, <2 x double> %i.gi, <2 x i32> <i32 0, i32 2>
  %i.gk = shufflevector <2 x double> %i.gb, <2 x double> %i.gi, <2 x i32> <i32 1, i32 3>
  %i.gl = fadd <2 x double> %i.gj, %i.gk
  %i.gm = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.gg, i64 1 ; 2 uses
  %i.gp = fmul <2 x double> %i.gm, %i.go
  %i.gq = fadd <2 x double> %i.gp, %i.gl          ; 2 uses
  %i.gr = shufflevector <2 x double> %i.ga, <2 x double> %i.gh, <2 x i32> <i32 0, i32 2>
  %i.gs = shufflevector <2 x double> %i.ga, <2 x double> %i.gh, <2 x i32> <i32 1, i32 3>
  %i.gt = fadd <2 x double> %i.gr, %i.gs
  %i.gu = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = fmul <2 x double> %i.go, %i.gu
  %i.gw = fadd <2 x double> %i.gv, %i.gt          ; 2 uses
  %i.gx = fneg <2 x double> %i.gw
  %i.gy = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fmul <2 x double> %i.gz, %i.gx
  %i.hb = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.gq, <2 x double> %i.ha)
  %i.he = fneg <2 x double> %i.gq
  %i.hf = fmul <2 x double> %i.gz, %i.he
  %i.hg = shufflevector <2 x double> %foldExtExtBinop255, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %i.gw, <2 x double> %i.hf)
  %i.hi = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hk = fdiv <2 x double> %i.hh, %i.hj          ; 10 uses
  %i.hl = fdiv <2 x double> %i.hd, %i.hj          ; 14 uses
  %i.hm = extractelement <2 x double> %i.hk, i64 0 ; 5 uses
  %i.hn = fcmp ult double %i.hm, 0.000000e+00
  br i1 %i.hn, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ho = extractelement <2 x double> %i.hl, i64 0
  %i.hp = fcmp oge double %i.ho, 0.000000e+00
  %foldExtExtBinop257 = fadd <2 x double> %i.hk, %i.hl
  %i.hq = extractelement <2 x double> %foldExtExtBinop257, i64 0
  %i.hr = fcmp ole double %i.hq, 1.000000e+00
  %or.cond.i.i = and i1 %i.hp, %i.hr
  br i1 %or.cond.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i: ; preds = %bb.p, %bb.o
  %i.hs = extractelement <2 x double> %i.hk, i64 1 ; 4 uses
  %i.ht = fcmp ult double %i.hs, 0.000000e+00
  br i1 %i.ht, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i, label %bb.q

bb.q:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i
  %i.hu = extractelement <2 x double> %i.hl, i64 1 ; 2 uses
  %i.hv = fcmp oge double %i.hu, 0.000000e+00
  %i.hw = fadd double %i.hs, %i.hu
  %i.hx = fcmp ole double %i.hw, 1.000000e+00
  %or.cond69.i.i = and i1 %i.hv, %i.hx
  br i1 %or.cond69.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i: ; preds = %bb.q, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i
  %i.hy = extractelement <2 x double> %i.hl, i64 0 ; 5 uses
  %i.hz = fcmp oeq double %i.hy, 0.000000e+00
  %i.ia = extractelement <2 x double> %i.hl, i64 1 ; 2 uses
  %i.ib = fcmp oeq double %i.ia, 0.000000e+00
  %or.cond.i.i.i = or i1 %i.ib, %i.hz
  br i1 %or.cond.i.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i
  %i.ic = bitcast double %i.hy to i64
  %i.id = bitcast double %i.ia to i64
  %i.ie = xor i64 %i.ic, %i.id
  %i.if = icmp slt i64 %i.ie, 0
  br i1 %i.if, label %bb.r, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i

bb.r:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i
  %i.ig = shufflevector <2 x double> %i.hl, <2 x double> %i.hk, <2 x i32> <i32 0, i32 3>
  %i.ih = shufflevector <2 x double> %i.hl, <2 x double> %i.hk, <2 x i32> <i32 1, i32 2>
  %i.ii = fsub <2 x double> %i.ig, %i.ih          ; 2 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 0
  %i.ik = fdiv double %i.hy, %i.ij
  %i.il = extractelement <2 x double> %i.ii, i64 1
  %i.im = call double @llvm.fmuladd.f64(double %i.ik, double %i.il, double %i.hm) ; 2 uses
  %i.in = fcmp ult double %i.im, 0.000000e+00
  %i.io = fcmp ugt double %i.im, 1.000000e+00
  %or.cond.not.i.i = or i1 %i.in, %i.io
  br i1 %or.cond.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i: ; preds = %bb.r, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i
  %i.ip = fcmp oeq double %i.hm, 0.000000e+00
  %i.iq = fcmp oeq double %i.hs, 0.000000e+00
  %or.cond.i57.i.i = or i1 %i.ip, %i.iq
  br i1 %or.cond.i57.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i
  %i.ir = bitcast double %i.hm to i64
  %i.is = bitcast double %i.hs to i64
  %i.it = xor i64 %i.is, %i.ir
  %i.iu = icmp slt i64 %i.it, 0
  br i1 %i.iu, label %bb.s, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i

bb.s:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i
  %i.iv = shufflevector <2 x double> %i.hk, <2 x double> %i.hl, <2 x i32> <i32 0, i32 3>
  %i.iw = shufflevector <2 x double> %i.hk, <2 x double> %i.hl, <2 x i32> <i32 1, i32 2>
  %i.ix = fsub <2 x double> %i.iv, %i.iw          ; 2 uses
  %i.iy = extractelement <2 x double> %i.ix, i64 0
  %i.iz = fdiv double %i.hm, %i.iy
  %i.ja = extractelement <2 x double> %i.ix, i64 1
  %i.jb = call double @llvm.fmuladd.f64(double %i.iz, double %i.ja, double %i.hy) ; 2 uses
  %i.jc = fcmp ult double %i.jb, 0.000000e+00
  %i.jd = fcmp ugt double %i.jb, 1.000000e+00
  %or.cond5.not.i.i = or i1 %i.jc, %i.jd
  br i1 %or.cond5.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i: ; preds = %bb.s, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i
  %i.je = fadd <2 x double> %i.hk, %i.hl
  %i.jf = fadd <2 x double> %i.je, splat (double -1.000000e+00) ; 3 uses
  %i.jg = extractelement <2 x double> %i.jf, i64 0
  %i.jh = fcmp oeq double %i.jg, 0.000000e+00
  %i.ji = extractelement <2 x double> %i.jf, i64 1
  %i.jj = fcmp oeq double %i.ji, 0.000000e+00
  %or.cond.i60.i.i = or i1 %i.jj, %i.jh
  br i1 %or.cond.i60.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i
  %17 = bitcast <2 x double> %i.jf to <2 x i64>   ; 2 uses
  %shift259 = shufflevector <2 x i64> %17, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop260 = xor <2 x i64> %shift259, %17
  %18 = extractelement <2 x i64> %foldExtExtBinop260, i64 0
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %bb.t, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210

bb.t:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.i.i
  %i.jk = insertelement <2 x double> %i.hk, double 1.000000e+00, i64 0
  %i.jl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = fsub <2 x double> %i.jk, %i.jl          ; 2 uses
  %i.jn = fsub <2 x double> %i.jm, %i.hl
  %i.jo = fadd <2 x double> %i.jm, %i.hl
  %i.jp = extractelement <2 x double> %i.jn, i64 0
  %i.jq = shufflevector <2 x double> %i.jo, <2 x double> %i.hl, <2 x i32> <i32 1, i32 3>
  %i.jr = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = fsub <2 x double> %i.jq, %i.jr          ; 2 uses
  %i.jt = extractelement <2 x double> %i.js, i64 0
  %i.ju = fdiv double %i.jp, %i.jt
  %i.jv = extractelement <2 x double> %i.js, i64 1
  %i.jw = call double @llvm.fmuladd.f64(double %i.ju, double %i.jv, double %i.hy) ; 2 uses
  %i.jx = fcmp ult double %i.jw, 0.000000e+00
  %i.jy = fcmp ugt double %i.jw, 1.000000e+00
  %or.cond7.not.i.i = or i1 %i.jx, %i.jy
  br i1 %or.cond7.not.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit: ; preds = %bb.g
  %i.jz = load double, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.ka = fcmp ogt double %i.jz, 0.000000e+00
  %i.kb = fadd double %8, 1.000000e+00
  %i.kc = fcmp olt double %i.jz, %i.kb
  %i.kd = and i1 %i.ka, %i.kc
  br i1 %i.kd, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.i.i, %bb.t, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit, %bb.h, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  %i.ke = sext i32 %2 to i64
  %i.kf = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.kg = getelementptr [4 x i8], ptr %i.kf, i64 %i.ke ; 3 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !14
  %i.ki = sext i32 %i.kh to i64
  %i.kj = load ptr, ptr %0, align 8, !tbaa !15, !noalias !47 ; 5 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.ki ; 3 uses
  %i.kl = load i64, ptr %i.m, align 8, !tbaa !21  ; 6 uses
  %i.km = load double, ptr %i.kk, align 8, !tbaa !22
  store double %i.km, ptr %14, align 16, !tbaa !22
  %i.kn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kl
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !22
  store double %i.kp, ptr %i.kn, align 8, !tbaa !22
  %i.kq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i51 = shl nsw i64 %i.kl, 4 ; 5 uses
  %i.kr = getelementptr inbounds i8, ptr %i.kk, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !22
  store double %i.ks, ptr %i.kq, align 16, !tbaa !22
  %i.kt = load i64, ptr %i.g, align 8, !tbaa !24  ; 4 uses
  %i.ku = getelementptr [4 x i8], ptr %i.kg, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !14
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.kw ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.kz = load double, ptr %i.kx, align 8, !tbaa !22
  store double %i.kz, ptr %i.ky, align 8, !tbaa !22
  %i.la = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.kl
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !22
  store double %i.lc, ptr %i.la, align 16, !tbaa !22
  %i.ld = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.le = getelementptr inbounds i8, ptr %i.kx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.lf = load double, ptr %i.le, align 8, !tbaa !22
  store double %i.lf, ptr %i.ld, align 8, !tbaa !22
  %.idx214 = shl i64 %i.kt, 3
  %i.lg = getelementptr i8, ptr %i.kg, i64 %.idx214
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !14
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.li ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 4 uses
  %i.ll = load double, ptr %i.lj, align 8, !tbaa !22
  store double %i.ll, ptr %i.lk, align 16, !tbaa !22
  %i.lm = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.kl
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !22
  store double %i.lo, ptr %i.lm, align 8, !tbaa !22
  %i.lp = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.lq = getelementptr inbounds i8, ptr %i.lj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !22
  store double %i.lr, ptr %i.lp, align 16, !tbaa !22
  %i.ls = sext i32 %4 to i64
  %i.lt = getelementptr inbounds [24 x i8], ptr %14, i64 %i.ls ; 3 uses
  %i.lu = load ptr, ptr %5, align 8, !tbaa !25    ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !29, !nonnull !32, !align !33
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !21 ; 2 uses
  %i.lz = load double, ptr %i.lu, align 8, !tbaa !22
  store double %i.lz, ptr %i.lt, align 8, !tbaa !22
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.ly
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !22
  store double %i.mc, ptr %i.ma, align 8, !tbaa !22
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i.i54 = shl nsw i64 %i.ly, 4
  %i.me = getelementptr inbounds i8, ptr %i.lu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i54
  %i.mf = load double, ptr %i.me, align 8, !tbaa !22
  store double %i.mf, ptr %i.md, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  %i.mg = add nsw i32 %7, 1
  %i.mh = srem i32 %i.mg, 3
  %i.mi = sext i32 %i.mh to i64
  %i.mj = mul nsw i64 %i.kt, %i.mi
  %i.mk = getelementptr [4 x i8], ptr %i.kf, i64 %i.e ; 2 uses
  %i.ml = getelementptr [4 x i8], ptr %i.mk, i64 %i.mj
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !14
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.mn ; 3 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !22
  store double %i.mp, ptr %15, align 16, !tbaa !22
  %i.mq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.kl
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !22
  store double %i.ms, ptr %i.mq, align 8, !tbaa !22
  %i.mt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.mu = getelementptr inbounds i8, ptr %i.mo, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !22 ; 2 uses
  store double %i.mv, ptr %i.mt, align 16, !tbaa !22
  %i.mw = add nsw i32 %7, 2
  %i.mx = srem i32 %i.mw, 3
  %i.my = sext i32 %i.mx to i64
  %i.mz = mul nsw i64 %i.kt, %i.my
  %i.na = getelementptr [4 x i8], ptr %i.mk, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !14
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.nc ; 3 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !22
  %.sroa.0204.0.vec.insert = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %i.kl
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !22
  %.sroa.0204.8.vec.insert = insertelement <2 x double> %.sroa.0204.0.vec.insert, double %i.ng, i64 1 ; 2 uses
  %i.nh = getelementptr inbounds i8, ptr %i.nd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  %i.nj = load <2 x double>, ptr %15, align 16, !tbaa !34
  %i.nk = fsub <2 x double> %.sroa.0204.8.vec.insert, %i.nj
  store <2 x double> %i.nk, ptr %16, align 16, !tbaa !34
  %i.nl = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.nm = fsub double %i.ni, %i.mv
  store double %i.nm, ptr %i.nl, align 16, !tbaa !22
  %i.nn = call noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %i.ky, ptr noundef nonnull align 1 dereferenceable(1) %i.lk, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.nn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210
  %i.no = load double, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.np = fcmp ogt double %i.no, 0.000000e+00
  %i.nq = fadd double %8, 1.000000e+00
  %i.nr = fcmp olt double %i.no, %i.nq
  %i.ns = and i1 %i.np, %i.nr
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

bb.v:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210
  %i.nt = load i8, ptr %i.d, align 1, !tbaa !35, !range !37, !noundef !32
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %.lr.ph85.i.i.i.i.i.preheader.i.i.i84, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

.lr.ph85.i.i.i.i.i.preheader.i.i.i84:             ; preds = %bb.v
  %i.nv = load double, ptr %i.lk, align 16, !tbaa !22, !noalias !50
  %i.nw = load double, ptr %14, align 16, !tbaa !22, !noalias !50
  %i.nx = load double, ptr %i.ky, align 8, !tbaa !22, !noalias !50
  %i.ny = load double, ptr %i.kq, align 16, !tbaa !22, !noalias !50 ; 2 uses
  %i.nz = load <2 x double>, ptr %i.kn, align 8, !tbaa !22, !noalias !50 ; 3 uses
  %i.oa = load <2 x double>, ptr %i.la, align 16, !tbaa !22, !noalias !50 ; 2 uses
  %i.ob = fsub <2 x double> %i.oa, %i.nz          ; 4 uses
  %i.oc = load <2 x double>, ptr %i.lm, align 8, !tbaa !22, !noalias !50 ; 2 uses
  %i.od = fsub <2 x double> %i.oc, %i.nz          ; 2 uses
  %i.oe = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.of = insertelement <2 x double> %i.oe, double %i.nv, i64 1
  %i.og = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.oh = insertelement <2 x double> %i.og, double %i.nw, i64 1 ; 2 uses
  %i.oi = fsub <2 x double> %i.of, %i.oh          ; 6 uses
  %i.oj = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ok = insertelement <2 x double> %i.oj, double %i.nx, i64 1
  %i.ol = fsub <2 x double> %i.ok, %i.oh          ; 2 uses
  %i.om = fneg <2 x double> %i.od
  %i.on = fmul <2 x double> %i.ol, %i.om
  %i.oo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.oi, <2 x double> %i.on) ; 3 uses
  %i.op = extractelement <2 x double> %i.oi, i64 1
  %i.oq = fneg double %i.op
  %i.or = extractelement <2 x double> %i.ob, i64 0
  %i.os = fmul double %i.or, %i.oq
  %i.ot = extractelement <2 x double> %i.ol, i64 1
  %i.ou = extractelement <2 x double> %i.od, i64 0
  %i.ov = call double @llvm.fmuladd.f64(double %i.ot, double %i.ou, double %i.os) ; 3 uses
  %i.ow = load <2 x double>, ptr %15, align 16, !tbaa !34
  %i.ox = load <2 x double>, ptr %14, align 16, !tbaa !34 ; 4 uses
  %i.oy = load double, ptr %i.mt, align 16, !tbaa !22
  %i.oz = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.oo) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85 = extractelement <2 x double> %i.oz, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86 = extractelement <2 x double> %i.oz, i64 1 ; 2 uses
  %i.pa = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86
  %i.pb = select i1 %i.pa, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85 ; 2 uses
  %i.pc = call noundef double @llvm.fabs.f64(double %i.ov) ; 2 uses
  %i.pd = fcmp olt double %i.pb, %i.pc
  %i.pe = select i1 %i.pd, double %i.pc, double %i.pb ; 7 uses
  %i.pf = fcmp ogt double %i.pe, 0.000000e+00
  br i1 %i.pf, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i84
  %i.pg = fdiv double 1.000000e+00, %i.pe         ; 2 uses
  %i.ph = fcmp ogt double %i.pg, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ph, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.pi = fcmp ogt double %i.pe, f0x7FEFFFFFFFFFFFFF
  br i1 %i.pi, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i84
  %i.pj = fcmp uno double %i.pe, 0.000000e+00
  br i1 %i.pj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.158.i.i.i72 = phi double [ 0.000000e+00, %bb.z ], [ f0x0004000000000000, %bb.w ], [ %i.pe, %bb.y ], [ %i.pe, %bb.aa ], [ %i.pe, %bb.x ] ; 2 uses
  %.155.i.i.i73 = phi double [ 1.000000e+00, %bb.z ], [ f0x7FEFFFFFFFFFFFFF, %bb.w ], [ %i.pg, %bb.y ], [ 1.000000e+00, %bb.aa ], [ 1.000000e+00, %bb.x ] ; 2 uses
  %i.pk = fcmp ogt double %.158.i.i.i72, 0.000000e+00
  br i1 %i.pk, label %.lr.ph85.i.i.i.i32.i.i.i.i79, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87

.lr.ph85.i.i.i.i32.i.i.i.i79:                     ; preds = %bb.ab
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i76 = insertelement <2 x double> poison, double %.155.i.i.i73, i64 0
  %i.pl = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i76, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pm = fmul <2 x double> %i.oo, %i.pl          ; 2 uses
  %i.pn = fmul <2 x double> %i.pm, %i.pm          ; 2 uses
  %shift262 = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop263 = fadd <2 x double> %i.pn, %shift262
  %i.po = extractelement <2 x double> %foldExtExtBinop263, i64 0
  %i.pp = fmul double %.155.i.i.i73, %i.ov        ; 2 uses
  %i.pq = fmul double %i.pp, %i.pp
  %i.pr = fadd double %i.po, %i.pq
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i79, %bb.ab
  %.2.i.i.i75 = phi double [ 0.000000e+00, %bb.ab ], [ %i.pr, %.lr.ph85.i.i.i.i32.i.i.i.i79 ]
  %i.ps = fsub <2 x double> %i.ow, %i.ox          ; 3 uses
  %i.pt = fmul <2 x double> %i.oo, %i.ps          ; 2 uses
  %shift265 = shufflevector <2 x double> %i.pt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop266 = fadd <2 x double> %i.pt, %shift265
  %i.pu = extractelement <2 x double> %foldExtExtBinop266, i64 0
  %i.pv = fsub double %i.oy, %i.ny                ; 2 uses
  %i.pw = fmul double %i.ov, %i.pv
  %i.px = fadd double %i.pw, %i.pu
  %i.py = call noundef double @llvm.fabs.f64(double %i.px)
  %i.pz = call double @sqrt(double noundef %.2.i.i.i75) #5
  %i.qa = fmul double %.158.i.i.i72, %i.pz
  %i.qb = fmul double %8, %i.qa
  %i.qc = fcmp olt double %i.py, %i.qb
  br i1 %i.qc, label %bb.ac, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

bb.ac:                                            ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87
  %i.qd = load <2 x double>, ptr %i.ky, align 8, !tbaa !34, !noalias !53
  %i.qe = fsub <2 x double> %i.qd, %i.ox          ; 5 uses
  %i.qf = load <2 x double>, ptr %i.lk, align 16, !tbaa !34, !noalias !56
  %i.qg = fsub <2 x double> %i.qf, %i.ox          ; 5 uses
  %i.qh = fmul <2 x double> %i.qe, %i.qe          ; 2 uses
  %i.qi = extractelement <2 x double> %i.ob, i64 1 ; 3 uses
  %i.qj = fmul double %i.qi, %i.qi
  %i.qk = fmul <2 x double> %i.qe, %i.qg          ; 2 uses
  %i.ql = shufflevector <2 x double> %i.qh, <2 x double> %i.qk, <2 x i32> <i32 0, i32 2>
  %i.qm = shufflevector <2 x double> %i.qh, <2 x double> %i.qk, <2 x i32> <i32 1, i32 3>
  %i.qn = fadd <2 x double> %i.ql, %i.qm          ; 2 uses
  %i.qo = extractelement <2 x double> %i.qn, i64 0
  %i.qp = fadd double %i.qj, %i.qo                ; 2 uses
  %i.qq = extractelement <2 x double> %i.oi, i64 0
  %i.qr = fmul double %i.qq, %i.qi
  %i.qs = extractelement <2 x double> %i.qn, i64 1
  %i.qt = fadd double %i.qr, %i.qs                ; 3 uses
  %i.qu = fmul <2 x double> %i.qg, %i.qg          ; 2 uses
  %shift268 = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop269 = fadd <2 x double> %i.qu, %shift268
  %foldExtExtBinop271 = fmul <2 x double> %i.oi, %i.oi
  %foldExtExtBinop273 = fadd <2 x double> %foldExtExtBinop271, %foldExtExtBinop269 ; 2 uses
  %i.qv = extractelement <2 x double> %foldExtExtBinop273, i64 0
  %i.qw = fmul <2 x double> %i.ps, %i.qe          ; 2 uses
  %i.qx = fmul <2 x double> %i.ps, %i.qg          ; 2 uses
  %i.qy = fneg double %i.qt
  %i.qz = fmul double %i.qt, %i.qy
  %i.ra = call double @llvm.fmuladd.f64(double %i.qp, double %i.qv, double %i.qz)
  %i.rb = fsub <2 x double> %.sroa.0204.8.vec.insert, %i.ox ; 2 uses
  %i.rc = fsub double %i.ni, %i.ny
  %i.rd = fmul <2 x double> %i.rb, %i.qe          ; 2 uses
  %i.re = fmul <2 x double> %i.rb, %i.qg          ; 2 uses
  %i.rf = shufflevector <2 x double> %i.qx, <2 x double> %i.re, <2 x i32> <i32 0, i32 2>
  %i.rg = shufflevector <2 x double> %i.qx, <2 x double> %i.re, <2 x i32> <i32 1, i32 3>
  %i.rh = fadd <2 x double> %i.rf, %i.rg
  %i.ri = shufflevector <2 x double> %i.oi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rj = insertelement <2 x double> poison, double %i.pv, i64 0
  %i.rk = insertelement <2 x double> %i.rj, double %i.rc, i64 1 ; 2 uses
  %i.rl = fmul <2 x double> %i.ri, %i.rk
  %i.rm = fadd <2 x double> %i.rl, %i.rh          ; 2 uses
  %i.rn = shufflevector <2 x double> %i.qw, <2 x double> %i.rd, <2 x i32> <i32 0, i32 2>
  %i.ro = shufflevector <2 x double> %i.qw, <2 x double> %i.rd, <2 x i32> <i32 1, i32 3>
  %i.rp = fadd <2 x double> %i.rn, %i.ro
  %i.rq = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rr = fmul <2 x double> %i.rk, %i.rq
  %i.rs = fadd <2 x double> %i.rr, %i.rp          ; 2 uses
  %i.rt = fneg <2 x double> %i.rs
  %i.ru = insertelement <2 x double> poison, double %i.qt, i64 0
  %i.rv = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rw = fmul <2 x double> %i.rv, %i.rt
  %i.rx = insertelement <2 x double> poison, double %i.qp, i64 0
  %i.ry = shufflevector <2 x double> %i.rx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> %i.rm, <2 x double> %i.rw)
  %i.sa = fneg <2 x double> %i.rm
  %i.sb = fmul <2 x double> %i.rv, %i.sa
  %i.sc = shufflevector <2 x double> %foldExtExtBinop273, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> %i.rs, <2 x double> %i.sb)
  %i.se = insertelement <2 x double> poison, double %i.ra, i64 0
  %i.sf = shufflevector <2 x double> %i.se, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sg = fdiv <2 x double> %i.sd, %i.sf          ; 10 uses
  %i.sh = fdiv <2 x double> %i.rz, %i.sf          ; 14 uses
  %i.si = extractelement <2 x double> %i.sg, i64 0 ; 5 uses
  %i.sj = fcmp ult double %i.si, 0.000000e+00
  br i1 %i.sj, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i89, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sk = extractelement <2 x double> %i.sh, i64 0
  %i.sl = fcmp oge double %i.sk, 0.000000e+00
  %foldExtExtBinop275 = fadd <2 x double> %i.sg, %i.sh
  %i.sm = extractelement <2 x double> %foldExtExtBinop275, i64 0
  %i.sn = fcmp ole double %i.sm, 1.000000e+00
  %or.cond.i.i88 = and i1 %i.sl, %i.sn
  br i1 %or.cond.i.i88, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i89

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i89: ; preds = %bb.ad, %bb.ac
  %i.so = extractelement <2 x double> %i.sg, i64 1 ; 4 uses
  %i.sp = fcmp ult double %i.so, 0.000000e+00
  br i1 %i.sp, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i93, label %bb.ae

bb.ae:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i89
  %i.sq = extractelement <2 x double> %i.sh, i64 1 ; 2 uses
  %i.sr = fcmp oge double %i.sq, 0.000000e+00
  %i.ss = fadd double %i.so, %i.sq
  %i.st = fcmp ole double %i.ss, 1.000000e+00
  %or.cond69.i.i92 = and i1 %i.sr, %i.st
  br i1 %or.cond69.i.i92, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i93

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i93: ; preds = %bb.ae, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i89
  %i.su = extractelement <2 x double> %i.sh, i64 0 ; 5 uses
  %i.sv = fcmp oeq double %i.su, 0.000000e+00
  %i.sw = extractelement <2 x double> %i.sh, i64 1 ; 2 uses
  %i.sx = fcmp oeq double %i.sw, 0.000000e+00
  %or.cond.i.i.i94 = or i1 %i.sx, %i.sv
  br i1 %or.cond.i.i.i94, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i95

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i95: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i93
  %i.sy = bitcast double %i.su to i64
  %i.sz = bitcast double %i.sw to i64
  %i.ta = xor i64 %i.sy, %i.sz
  %i.tb = icmp slt i64 %i.ta, 0
  br i1 %i.tb, label %bb.af, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96

bb.af:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i95
  %i.tc = shufflevector <2 x double> %i.sh, <2 x double> %i.sg, <2 x i32> <i32 0, i32 3>
  %i.td = shufflevector <2 x double> %i.sh, <2 x double> %i.sg, <2 x i32> <i32 1, i32 2>
  %i.te = fsub <2 x double> %i.tc, %i.td          ; 2 uses
  %i.tf = extractelement <2 x double> %i.te, i64 0
  %i.tg = fdiv double %i.su, %i.tf
  %i.th = extractelement <2 x double> %i.te, i64 1
  %i.ti = call double @llvm.fmuladd.f64(double %i.tg, double %i.th, double %i.si) ; 2 uses
  %i.tj = fcmp ult double %i.ti, 0.000000e+00
  %i.tk = fcmp ugt double %i.ti, 1.000000e+00
  %or.cond.not.i.i106 = or i1 %i.tj, %i.tk
  br i1 %or.cond.not.i.i106, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96: ; preds = %bb.af, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i95, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i93
  %i.tl = fcmp oeq double %i.si, 0.000000e+00
  %i.tm = fcmp oeq double %i.so, 0.000000e+00
  %or.cond.i57.i.i97 = or i1 %i.tl, %i.tm
  br i1 %or.cond.i57.i.i97, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i98

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i98: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96
  %i.tn = bitcast double %i.si to i64
  %i.to = bitcast double %i.so to i64
  %i.tp = xor i64 %i.to, %i.tn
  %i.tq = icmp slt i64 %i.tp, 0
  br i1 %i.tq, label %bb.ag, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99

bb.ag:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i98
  %i.tr = shufflevector <2 x double> %i.sg, <2 x double> %i.sh, <2 x i32> <i32 0, i32 3>
  %i.ts = shufflevector <2 x double> %i.sg, <2 x double> %i.sh, <2 x i32> <i32 1, i32 2>
  %i.tt = fsub <2 x double> %i.tr, %i.ts          ; 2 uses
  %i.tu = extractelement <2 x double> %i.tt, i64 0
  %i.tv = fdiv double %i.si, %i.tu
  %i.tw = extractelement <2 x double> %i.tt, i64 1
  %i.tx = call double @llvm.fmuladd.f64(double %i.tv, double %i.tw, double %i.su) ; 2 uses
  %i.ty = fcmp ult double %i.tx, 0.000000e+00
  %i.tz = fcmp ugt double %i.tx, 1.000000e+00
  %or.cond5.not.i.i105 = or i1 %i.ty, %i.tz
  br i1 %or.cond5.not.i.i105, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99: ; preds = %bb.ag, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i98, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96
  %i.ua = fadd <2 x double> %i.sg, %i.sh
  %i.ub = fadd <2 x double> %i.ua, splat (double -1.000000e+00) ; 3 uses
  %i.uc = extractelement <2 x double> %i.ub, i64 0
  %i.ud = fcmp oeq double %i.uc, 0.000000e+00
  %i.ue = extractelement <2 x double> %i.ub, i64 1
  %i.uf = fcmp oeq double %i.ue, 0.000000e+00
  %or.cond.i60.i.i100 = or i1 %i.uf, %i.ud
  br i1 %or.cond.i60.i.i100, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.thread.i.i102, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.i.i101

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.i.i101: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99
  %20 = bitcast <2 x double> %i.ub to <2 x i64>   ; 2 uses
  %shift277 = shufflevector <2 x i64> %20, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop278 = xor <2 x i64> %shift277, %20
  %21 = extractelement <2 x i64> %foldExtExtBinop278, i64 0
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %bb.ah, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.thread.i.i102

bb.ah:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.i.i101
  %i.ug = insertelement <2 x double> %i.sg, double 1.000000e+00, i64 0
  %i.uh = shufflevector <2 x double> %i.sg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ui = fsub <2 x double> %i.ug, %i.uh          ; 2 uses
  %i.uj = fsub <2 x double> %i.ui, %i.sh
  %i.uk = fadd <2 x double> %i.ui, %i.sh
  %i.ul = extractelement <2 x double> %i.uj, i64 0
  %i.um = shufflevector <2 x double> %i.uk, <2 x double> %i.sh, <2 x i32> <i32 1, i32 3>
  %i.un = shufflevector <2 x double> %i.sh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uo = fsub <2 x double> %i.um, %i.un          ; 2 uses
  %i.up = extractelement <2 x double> %i.uo, i64 0
  %i.uq = fdiv double %i.ul, %i.up
  %i.ur = extractelement <2 x double> %i.uo, i64 1
  %i.us = call double @llvm.fmuladd.f64(double %i.uq, double %i.ur, double %i.su) ; 2 uses
  %i.ut = fcmp ult double %i.us, 0.000000e+00
  %i.uu = fcmp ugt double %i.us, 1.000000e+00
  %or.cond7.not.i.i104 = or i1 %i.ut, %i.uu
  br i1 %or.cond7.not.i.i104, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.thread.i.i102, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.thread.i.i102: ; preds = %bb.ah, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.i.i101, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.thread.i.i102, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.v, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87, %bb.u
  %.1 = phi i1 [ %i.ns, %bb.u ], [ false, %bb.v ], [ false, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87 ], [ true, %bb.ad ], [ true, %bb.ae ], [ false, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.thread.i.i102 ], [ true, %bb.ah ], [ true, %bb.ag ], [ true, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread: ; preds = %bb.r, %bb.s, %bb.t, %bb.q, %bb.p, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit
  %.2 = phi i1 [ true, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit ], [ %.1, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107 ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), double noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Eigen::Matrix", align 16    ; 8 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 8 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 8 uses
  %12 = alloca %"class.Eigen::Matrix", align 16   ; 9 uses
  %13 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %14 = alloca [3 x %"class.Eigen::Matrix"], align 16 ; 15 uses
  %15 = alloca %"class.Eigen::Matrix", align 16   ; 8 uses
  %16 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  %i.e = sext i32 %6 to i64                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !9      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = sext i32 %i.i to i64
  %i.k = load ptr, ptr %0, align 8, !tbaa !15, !noalias !59 ; 5 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.j ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21   ; 6 uses
  %i.o = load double, ptr %i.l, align 8, !tbaa !22
  store double %i.o, ptr %9, align 16, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.n
  %i.r = load double, ptr %i.q, align 8, !tbaa !22
  store double %i.r, ptr %i.p, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.n, 4 ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.u = load double, ptr %i.t, align 8, !tbaa !22
  store double %i.u, ptr %i.s, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.v = load i64, ptr %i.g, align 8, !tbaa !24   ; 4 uses
  %i.w = getelementptr [4 x i8], ptr %i.h, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.y ; 3 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !22
  store double %i.aa, ptr %10, align 16, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.n
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !22
  store double %i.ad, ptr %i.ab, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ag = load double, ptr %i.af, align 8, !tbaa !22
  store double %i.ag, ptr %i.ae, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  %.idx206 = shl i64 %i.v, 3
  %i.ah = getelementptr i8, ptr %i.h, i64 %.idx206
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aj ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !22
  store double %i.al, ptr %11, align 16, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.n
  %i.ao = load double, ptr %i.an, align 8, !tbaa !22
  store double %i.ao, ptr %i.am, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22
  store double %i.ar, ptr %i.ap, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  %i.as = add nsw i32 %3, 1
  %i.at = srem i32 %i.as, 3                       ; 2 uses
  %i.au = icmp eq i32 %i.at, %4
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %5, align 8, !tbaa !62    ; 2 uses
  %i.aw = load <2 x double>, ptr %i.av, align 16, !tbaa !34
  store <2 x double> %i.aw, ptr %12, align 16, !tbaa !34
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ay = sext i32 %2 to i64
  %i.az = sext i32 %i.at to i64
  %i.ba = mul nsw i64 %i.v, %i.az
  %i.bb = getelementptr [4 x i8], ptr %i.f, i64 %i.ay
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !14
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.be ; 3 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !22
  store double %i.bg, ptr %12, align 16, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.n
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !22
  store double %i.bj, ptr %i.bh, align 8, !tbaa !22
  %i.bk = getelementptr inbounds i8, ptr %i.bf, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.ax, %bb.b ], [ %i.bk, %bb.c ]
  %i.bl = load double, ptr %.in, align 8, !tbaa !22 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store double %i.bl, ptr %i.bm, align 16, !tbaa !22
  %i.bn = add nsw i32 %3, 2
  %i.bo = srem i32 %i.bn, 3                       ; 2 uses
  %i.bp = icmp eq i32 %i.bo, %4
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bq = load ptr, ptr %5, align 8, !tbaa !62    ; 2 uses
  %i.br = load <2 x double>, ptr %i.bq, align 16, !tbaa !34
  %i.bs = getelementptr i8, ptr %i.bq, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bt = sext i32 %2 to i64
  %i.bu = sext i32 %i.bo to i64
  %i.bv = mul nsw i64 %i.v, %i.bu
  %i.bw = getelementptr [4 x i8], ptr %i.f, i64 %i.bt
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bz ; 3 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !22
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.n
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !22
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.cd, i64 1
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.7.0.in = phi ptr [ %i.bs, %bb.e ], [ %i.ce, %bb.f ]
  %.sroa.0.0 = phi <2 x double> [ %i.br, %bb.e ], [ %.sroa.0.8.vec.insert, %bb.f ] ; 2 uses
  %.sroa.7.0 = load double, ptr %.sroa.7.0.in, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  %i.cf = load <2 x double>, ptr %12, align 16, !tbaa !34
  %i.cg = fsub <2 x double> %.sroa.0.0, %i.cf
  store <2 x double> %i.cg, ptr %13, align 16, !tbaa !34
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ci = fsub double %.sroa.7.0, %i.bl
  store double %i.ci, ptr %i.ch, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i8 0, ptr %i.d, align 1, !tbaa !35
  %i.cj = call noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.cj, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = load i8, ptr %i.d, align 1, !tbaa !35, !range !37, !noundef !32
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %.lr.ph85.i.i.i.i.i.preheader.i.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203

.lr.ph85.i.i.i.i.i.preheader.i.i.i:               ; preds = %bb.h
  %i.cm = load double, ptr %11, align 16, !tbaa !22, !noalias !64
  %i.cn = load double, ptr %9, align 16, !tbaa !22, !noalias !64
  %i.co = load double, ptr %10, align 16, !tbaa !22, !noalias !64
  %i.cp = load double, ptr %i.s, align 16, !tbaa !22, !noalias !64 ; 2 uses
  %i.cq = load <2 x double>, ptr %i.p, align 8, !tbaa !22, !noalias !64 ; 3 uses
  %i.cr = load <2 x double>, ptr %i.ab, align 8, !tbaa !22, !noalias !64 ; 2 uses
  %i.cs = fsub <2 x double> %i.cr, %i.cq          ; 4 uses
  %i.ct = load <2 x double>, ptr %i.am, align 8, !tbaa !22, !noalias !64 ; 2 uses
  %i.cu = fsub <2 x double> %i.ct, %i.cq          ; 2 uses
  %i.cv = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x double> %i.cv, double %i.cm, i64 1
end_hunk_0
begin_hunk_1_@_ZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarE:bb.a
bb.j:                                             ; preds = %bb.i
  %i.dz = fcmp ogt double %i.dv, f0x7FEFFFFFFFFFFFFF
  br i1 %i.dz, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i
  %i.ea = fcmp uno double %i.dv, 0.000000e+00
  br i1 %i.ea, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.158.i.i.i = phi double [ 0.000000e+00, %bb.l ], [ f0x0004000000000000, %bb.i ], [ %i.dv, %bb.k ], [ %i.dv, %bb.m ], [ %i.dv, %bb.j ] ; 2 uses
  %.155.i.i.i = phi double [ 1.000000e+00, %bb.l ], [ f0x7FEFFFFFFFFFFFFF, %bb.i ], [ %i.dx, %bb.k ], [ 1.000000e+00, %bb.m ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.eb = fcmp ogt double %.158.i.i.i, 0.000000e+00
  br i1 %i.eb, label %.lr.ph85.i.i.i.i32.i.i.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit

.lr.ph85.i.i.i.i32.i.i.i.i:                       ; preds = %bb.n
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.155.i.i.i, i64 0
  %i.ec = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.df, %i.ec          ; 2 uses
  %i.ee = fmul <2 x double> %i.ed, %i.ed          ; 2 uses
  %shift = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ee, %shift
  %i.ef = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.eg = fmul double %.155.i.i.i, %i.dm          ; 2 uses
  %i.eh = fmul double %i.eg, %i.eg
  %i.ei = fadd double %i.ef, %i.eh
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i, %bb.n
  %.2.i.i.i = phi double [ 0.000000e+00, %bb.n ], [ %i.ei, %.lr.ph85.i.i.i.i32.i.i.i.i ]
  %i.ej = fsub <2 x double> %i.dn, %i.do          ; 3 uses
  %i.ek = fmul <2 x double> %i.df, %i.ej          ; 2 uses
  %shift240 = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop241 = fadd <2 x double> %i.ek, %shift240
  %i.el = extractelement <2 x double> %foldExtExtBinop241, i64 0
  %i.em = fsub double %i.dp, %i.cp                ; 2 uses
  %i.en = fmul double %i.dm, %i.em
  %i.eo = fadd double %i.en, %i.el
  %i.ep = call noundef double @llvm.fabs.f64(double %i.eo)
  %i.eq = call double @sqrt(double noundef %.2.i.i.i) #5
  %i.er = fmul double %.158.i.i.i, %i.eq
  %i.es = fmul double %8, %i.er
  %i.et = fcmp olt double %i.ep, %i.es
  br i1 %i.et, label %bb.o, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203

bb.o:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit
  %i.eu = load <2 x double>, ptr %10, align 16, !tbaa !34, !noalias !67
  %i.ev = fsub <2 x double> %i.eu, %i.do          ; 5 uses
  %i.ew = load <2 x double>, ptr %11, align 16, !tbaa !34, !noalias !70
  %i.ex = fsub <2 x double> %i.ew, %i.do          ; 5 uses
  %i.ey = fmul <2 x double> %i.ev, %i.ev          ; 2 uses
  %i.ez = extractelement <2 x double> %i.cs, i64 1 ; 3 uses
  %i.fa = fmul double %i.ez, %i.ez
  %i.fb = fmul <2 x double> %i.ev, %i.ex          ; 2 uses
  %i.fc = shufflevector <2 x double> %i.ey, <2 x double> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.fd = shufflevector <2 x double> %i.ey, <2 x double> %i.fb, <2 x i32> <i32 1, i32 3>
  %i.fe = fadd <2 x double> %i.fc, %i.fd          ; 2 uses
  %i.ff = extractelement <2 x double> %i.fe, i64 0
  %i.fg = fadd double %i.fa, %i.ff                ; 2 uses
  %i.fh = extractelement <2 x double> %i.cz, i64 0
  %i.fi = fmul double %i.fh, %i.ez
  %i.fj = extractelement <2 x double> %i.fe, i64 1
  %i.fk = fadd double %i.fi, %i.fj                ; 3 uses
  %i.fl = fmul <2 x double> %i.ex, %i.ex          ; 2 uses
  %shift243 = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop244 = fadd <2 x double> %i.fl, %shift243
  %foldExtExtBinop246 = fmul <2 x double> %i.cz, %i.cz
  %foldExtExtBinop248 = fadd <2 x double> %foldExtExtBinop246, %foldExtExtBinop244 ; 2 uses
  %i.fm = extractelement <2 x double> %foldExtExtBinop248, i64 0
  %i.fn = fmul <2 x double> %i.ej, %i.ev          ; 2 uses
  %i.fo = fmul <2 x double> %i.ej, %i.ex          ; 2 uses
  %i.fp = fneg double %i.fk
  %i.fq = fmul double %i.fk, %i.fp
  %i.fr = call double @llvm.fmuladd.f64(double %i.fg, double %i.fm, double %i.fq)
  %i.fs = fsub <2 x double> %.sroa.0.0, %i.do     ; 2 uses
  %i.ft = fsub double %.sroa.7.0, %i.cp
  %i.fu = fmul <2 x double> %i.fs, %i.ev          ; 2 uses
  %i.fv = fmul <2 x double> %i.fs, %i.ex          ; 2 uses
  %i.fw = shufflevector <2 x double> %i.fo, <2 x double> %i.fv, <2 x i32> <i32 0, i32 2>
  %i.fx = shufflevector <2 x double> %i.fo, <2 x double> %i.fv, <2 x i32> <i32 1, i32 3>
  %i.fy = fadd <2 x double> %i.fw, %i.fx
  %i.fz = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = insertelement <2 x double> poison, double %i.em, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.ft, i64 1 ; 2 uses
  %i.gc = fmul <2 x double> %i.fz, %i.gb
  %i.gd = fadd <2 x double> %i.gc, %i.fy          ; 2 uses
  %i.ge = shufflevector <2 x double> %i.fn, <2 x double> %i.fu, <2 x i32> <i32 0, i32 2>
  %i.gf = shufflevector <2 x double> %i.fn, <2 x double> %i.fu, <2 x i32> <i32 1, i32 3>
  %i.gg = fadd <2 x double> %i.ge, %i.gf
  %i.gh = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gi = fmul <2 x double> %i.gb, %i.gh
  %i.gj = fadd <2 x double> %i.gi, %i.gg          ; 2 uses
  %i.gk = fneg <2 x double> %i.gj
  %i.gl = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = fmul <2 x double> %i.gm, %i.gk
  %i.go = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.gd, <2 x double> %i.gn)
  %i.gr = fneg <2 x double> %i.gd
  %i.gs = fmul <2 x double> %i.gm, %i.gr
  %i.gt = shufflevector <2 x double> %foldExtExtBinop248, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.gj, <2 x double> %i.gs)
  %i.gv = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gx = fdiv <2 x double> %i.gu, %i.gw          ; 10 uses
  %i.gy = fdiv <2 x double> %i.gq, %i.gw          ; 14 uses
  %i.gz = extractelement <2 x double> %i.gx, i64 0 ; 5 uses
  %i.ha = fcmp ult double %i.gz, 0.000000e+00
  br i1 %i.ha, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hb = extractelement <2 x double> %i.gy, i64 0
  %i.hc = fcmp oge double %i.hb, 0.000000e+00
  %foldExtExtBinop250 = fadd <2 x double> %i.gx, %i.gy
  %i.hd = extractelement <2 x double> %foldExtExtBinop250, i64 0
  %i.he = fcmp ole double %i.hd, 1.000000e+00
  %or.cond.i.i = and i1 %i.hc, %i.he
  br i1 %or.cond.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i: ; preds = %bb.p, %bb.o
  %i.hf = extractelement <2 x double> %i.gx, i64 1 ; 4 uses
  %i.hg = fcmp ult double %i.hf, 0.000000e+00
  br i1 %i.hg, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i, label %bb.q

bb.q:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i
  %i.hh = extractelement <2 x double> %i.gy, i64 1 ; 2 uses
  %i.hi = fcmp oge double %i.hh, 0.000000e+00
  %i.hj = fadd double %i.hf, %i.hh
  %i.hk = fcmp ole double %i.hj, 1.000000e+00
  %or.cond69.i.i = and i1 %i.hi, %i.hk
  br i1 %or.cond69.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i: ; preds = %bb.q, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i
  %i.hl = extractelement <2 x double> %i.gy, i64 0 ; 5 uses
  %i.hm = fcmp oeq double %i.hl, 0.000000e+00
  %i.hn = extractelement <2 x double> %i.gy, i64 1 ; 2 uses
  %i.ho = fcmp oeq double %i.hn, 0.000000e+00
  %or.cond.i.i.i = or i1 %i.ho, %i.hm
  br i1 %or.cond.i.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i
  %i.hp = bitcast double %i.hl to i64
  %i.hq = bitcast double %i.hn to i64
  %i.hr = xor i64 %i.hp, %i.hq
  %i.hs = icmp slt i64 %i.hr, 0
  br i1 %i.hs, label %bb.r, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i

bb.r:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i
  %i.ht = shufflevector <2 x double> %i.gy, <2 x double> %i.gx, <2 x i32> <i32 0, i32 3>
  %i.hu = shufflevector <2 x double> %i.gy, <2 x double> %i.gx, <2 x i32> <i32 1, i32 2>
  %i.hv = fsub <2 x double> %i.ht, %i.hu          ; 2 uses
  %i.hw = extractelement <2 x double> %i.hv, i64 0
  %i.hx = fdiv double %i.hl, %i.hw
  %i.hy = extractelement <2 x double> %i.hv, i64 1
  %i.hz = call double @llvm.fmuladd.f64(double %i.hx, double %i.hy, double %i.gz) ; 2 uses
  %i.ia = fcmp ult double %i.hz, 0.000000e+00
  %i.ib = fcmp ugt double %i.hz, 1.000000e+00
  %or.cond.not.i.i = or i1 %i.ia, %i.ib
  br i1 %or.cond.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i: ; preds = %bb.r, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i
  %i.ic = fcmp oeq double %i.gz, 0.000000e+00
  %i.id = fcmp oeq double %i.hf, 0.000000e+00
  %or.cond.i57.i.i = or i1 %i.ic, %i.id
  br i1 %or.cond.i57.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i
  %i.ie = bitcast double %i.gz to i64
  %i.if = bitcast double %i.hf to i64
  %i.ig = xor i64 %i.if, %i.ie
  %i.ih = icmp slt i64 %i.ig, 0
  br i1 %i.ih, label %bb.s, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i

bb.s:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i
  %i.ii = shufflevector <2 x double> %i.gx, <2 x double> %i.gy, <2 x i32> <i32 0, i32 3>
  %i.ij = shufflevector <2 x double> %i.gx, <2 x double> %i.gy, <2 x i32> <i32 1, i32 2>
  %i.ik = fsub <2 x double> %i.ii, %i.ij          ; 2 uses
  %i.il = extractelement <2 x double> %i.ik, i64 0
  %i.im = fdiv double %i.gz, %i.il
  %i.in = extractelement <2 x double> %i.ik, i64 1
  %i.io = call double @llvm.fmuladd.f64(double %i.im, double %i.in, double %i.hl) ; 2 uses
  %i.ip = fcmp ult double %i.io, 0.000000e+00
  %i.iq = fcmp ugt double %i.io, 1.000000e+00
  %or.cond5.not.i.i = or i1 %i.ip, %i.iq
  br i1 %or.cond5.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i: ; preds = %bb.s, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i
  %i.ir = fadd <2 x double> %i.gx, %i.gy
  %i.is = fadd <2 x double> %i.ir, splat (double -1.000000e+00) ; 3 uses
  %i.it = extractelement <2 x double> %i.is, i64 0
  %i.iu = fcmp oeq double %i.it, 0.000000e+00
  %i.iv = extractelement <2 x double> %i.is, i64 1
  %i.iw = fcmp oeq double %i.iv, 0.000000e+00
  %or.cond.i60.i.i = or i1 %i.iw, %i.iu
  br i1 %or.cond.i60.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i
  %17 = bitcast <2 x double> %i.is to <2 x i64>   ; 2 uses
  %shift252 = shufflevector <2 x i64> %17, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop253 = xor <2 x i64> %shift252, %17
  %18 = extractelement <2 x i64> %foldExtExtBinop253, i64 0
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %bb.t, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203

bb.t:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.i.i
  %i.ix = insertelement <2 x double> %i.gx, double 1.000000e+00, i64 0
  %i.iy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fsub <2 x double> %i.ix, %i.iy          ; 2 uses
  %i.ja = fsub <2 x double> %i.iz, %i.gy
  %i.jb = fadd <2 x double> %i.iz, %i.gy
  %i.jc = extractelement <2 x double> %i.ja, i64 0
  %i.jd = shufflevector <2 x double> %i.jb, <2 x double> %i.gy, <2 x i32> <i32 1, i32 3>
  %i.je = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = fsub <2 x double> %i.jd, %i.je          ; 2 uses
  %i.jg = extractelement <2 x double> %i.jf, i64 0
  %i.jh = fdiv double %i.jc, %i.jg
  %i.ji = extractelement <2 x double> %i.jf, i64 1
  %i.jj = call double @llvm.fmuladd.f64(double %i.jh, double %i.ji, double %i.hl) ; 2 uses
  %i.jk = fcmp ult double %i.jj, 0.000000e+00
  %i.jl = fcmp ugt double %i.jj, 1.000000e+00
  %or.cond7.not.i.i = or i1 %i.jk, %i.jl
  br i1 %or.cond7.not.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit: ; preds = %bb.g
  %i.jm = load double, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.jn = fcmp ogt double %i.jm, 0.000000e+00
  %i.jo = fadd double %8, 1.000000e+00
  %i.jp = fcmp olt double %i.jm, %i.jo
  %i.jq = and i1 %i.jn, %i.jp
  br i1 %i.jq, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.i.i, %bb.t, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit, %bb.h, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  %i.jr = sext i32 %2 to i64
  %i.js = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.jt = getelementptr [4 x i8], ptr %i.js, i64 %i.jr ; 3 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !14
  %i.jv = sext i32 %i.ju to i64
  %i.jw = load ptr, ptr %0, align 8, !tbaa !15, !noalias !73 ; 5 uses
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.jv ; 3 uses
  %i.jy = load i64, ptr %i.m, align 8, !tbaa !21  ; 6 uses
  %i.jz = load double, ptr %i.jx, align 8, !tbaa !22
  store double %i.jz, ptr %14, align 16, !tbaa !22
  %i.ka = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.jy
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !22
  store double %i.kc, ptr %i.ka, align 8, !tbaa !22
  %i.kd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i49 = shl nsw i64 %i.jy, 4 ; 5 uses
  %i.ke = getelementptr inbounds i8, ptr %i.jx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !22
  store double %i.kf, ptr %i.kd, align 16, !tbaa !22
  %i.kg = load i64, ptr %i.g, align 8, !tbaa !24  ; 4 uses
  %i.kh = getelementptr [4 x i8], ptr %i.jt, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !14
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.km = load double, ptr %i.kk, align 8, !tbaa !22
  store double %i.km, ptr %i.kl, align 8, !tbaa !22
  %i.kn = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.jy
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !22
  store double %i.kp, ptr %i.kn, align 16, !tbaa !22
  %i.kq = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.kr = getelementptr inbounds i8, ptr %i.kk, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !22
  store double %i.ks, ptr %i.kq, align 8, !tbaa !22
  %.idx207 = shl i64 %i.kg, 3
  %i.kt = getelementptr i8, ptr %i.jt, i64 %.idx207
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !14
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.kv ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 4 uses
  %i.ky = load double, ptr %i.kw, align 8, !tbaa !22
  store double %i.ky, ptr %i.kx, align 16, !tbaa !22
  %i.kz = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.la = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.jy
  %i.lb = load double, ptr %i.la, align 8, !tbaa !22
  store double %i.lb, ptr %i.kz, align 8, !tbaa !22
  %i.lc = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ld = getelementptr inbounds i8, ptr %i.kw, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  %i.le = load double, ptr %i.ld, align 8, !tbaa !22
  store double %i.le, ptr %i.lc, align 16, !tbaa !22
  %i.lf = sext i32 %4 to i64
  %i.lg = getelementptr inbounds [24 x i8], ptr %14, i64 %i.lf ; 2 uses
  %i.lh = load ptr, ptr %5, align 8, !tbaa !62    ; 2 uses
  %i.li = load <2 x double>, ptr %i.lh, align 16, !tbaa !34
  store <2 x double> %i.li, ptr %i.lg, align 8, !tbaa !34
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.lk = getelementptr i8, ptr %i.lh, i64 16
  %i.ll = load double, ptr %i.lk, align 16, !tbaa !22
  store double %i.ll, ptr %i.lj, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  %i.lm = add nsw i32 %7, 1
  %i.ln = srem i32 %i.lm, 3
  %i.lo = sext i32 %i.ln to i64
  %i.lp = mul nsw i64 %i.kg, %i.lo
  %i.lq = getelementptr [4 x i8], ptr %i.js, i64 %i.e ; 2 uses
  %i.lr = getelementptr [4 x i8], ptr %i.lq, i64 %i.lp
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !14
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.lt ; 3 uses
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !22
  store double %i.lv, ptr %15, align 16, !tbaa !22
  %i.lw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.jy
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !22
  store double %i.ly, ptr %i.lw, align 8, !tbaa !22
  %i.lz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %i.lu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !22 ; 2 uses
  store double %i.mb, ptr %i.lz, align 16, !tbaa !22
  %i.mc = add nsw i32 %7, 2
  %i.md = srem i32 %i.mc, 3
  %i.me = sext i32 %i.md to i64
  %i.mf = mul nsw i64 %i.kg, %i.me
  %i.mg = getelementptr [4 x i8], ptr %i.lq, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !14
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.mi ; 3 uses
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !22
  %.sroa.0197.0.vec.insert = insertelement <2 x double> poison, double %i.mk, i64 0
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.jy
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !22
  %.sroa.0197.8.vec.insert = insertelement <2 x double> %.sroa.0197.0.vec.insert, double %i.mm, i64 1 ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %i.mj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  %i.mp = load <2 x double>, ptr %15, align 16, !tbaa !34
  %i.mq = fsub <2 x double> %.sroa.0197.8.vec.insert, %i.mp
  store <2 x double> %i.mq, ptr %16, align 16, !tbaa !34
  %i.mr = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ms = fsub double %i.mo, %i.mb
  store double %i.ms, ptr %i.mr, align 16, !tbaa !22
  %i.mt = call noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %i.kl, ptr noundef nonnull align 1 dereferenceable(1) %i.kx, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.mt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203
  %i.mu = load double, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.mv = fcmp ogt double %i.mu, 0.000000e+00
  %i.mw = fadd double %8, 1.000000e+00
  %i.mx = fcmp olt double %i.mu, %i.mw
  %i.my = and i1 %i.mv, %i.mx
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

bb.v:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203
  %i.mz = load i8, ptr %i.d, align 1, !tbaa !35, !range !37, !noundef !32
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %.lr.ph85.i.i.i.i.i.preheader.i.i.i81, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

.lr.ph85.i.i.i.i.i.preheader.i.i.i81:             ; preds = %bb.v
  %i.nb = load double, ptr %i.kx, align 16, !tbaa !22, !noalias !76
  %i.nc = load double, ptr %14, align 16, !tbaa !22, !noalias !76
  %i.nd = load double, ptr %i.kl, align 8, !tbaa !22, !noalias !76
  %i.ne = load double, ptr %i.kd, align 16, !tbaa !22, !noalias !76 ; 2 uses
  %i.nf = load <2 x double>, ptr %i.ka, align 8, !tbaa !22, !noalias !76 ; 3 uses
  %i.ng = load <2 x double>, ptr %i.kn, align 16, !tbaa !22, !noalias !76 ; 2 uses
  %i.nh = fsub <2 x double> %i.ng, %i.nf          ; 4 uses
  %i.ni = load <2 x double>, ptr %i.kz, align 8, !tbaa !22, !noalias !76 ; 2 uses
  %i.nj = fsub <2 x double> %i.ni, %i.nf          ; 2 uses
  %i.nk = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.nl = insertelement <2 x double> %i.nk, double %i.nb, i64 1
  %i.nm = shufflevector <2 x double> %i.nf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.nn = insertelement <2 x double> %i.nm, double %i.nc, i64 1 ; 2 uses
  %i.no = fsub <2 x double> %i.nl, %i.nn          ; 6 uses
  %i.np = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.nq = insertelement <2 x double> %i.np, double %i.nd, i64 1
  %i.nr = fsub <2 x double> %i.nq, %i.nn          ; 2 uses
  %i.ns = fneg <2 x double> %i.nj
  %i.nt = fmul <2 x double> %i.nr, %i.ns
  %i.nu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nh, <2 x double> %i.no, <2 x double> %i.nt) ; 3 uses
  %i.nv = extractelement <2 x double> %i.no, i64 1
  %i.nw = fneg double %i.nv
  %i.nx = extractelement <2 x double> %i.nh, i64 0
  %i.ny = fmul double %i.nx, %i.nw
  %i.nz = extractelement <2 x double> %i.nr, i64 1
  %i.oa = extractelement <2 x double> %i.nj, i64 0
  %i.ob = call double @llvm.fmuladd.f64(double %i.nz, double %i.oa, double %i.ny) ; 3 uses
  %i.oc = load <2 x double>, ptr %15, align 16, !tbaa !34
  %i.od = load <2 x double>, ptr %14, align 16, !tbaa !34 ; 4 uses
  %i.oe = load double, ptr %i.lz, align 16, !tbaa !22
  %i.of = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nu) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i82 = extractelement <2 x double> %i.of, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i83 = extractelement <2 x double> %i.of, i64 1 ; 2 uses
  %i.og = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i82, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i83
  %i.oh = select i1 %i.og, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i83, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i82 ; 2 uses
  %i.oi = call noundef double @llvm.fabs.f64(double %i.ob) ; 2 uses
  %i.oj = fcmp olt double %i.oh, %i.oi
  %i.ok = select i1 %i.oj, double %i.oi, double %i.oh ; 7 uses
  %i.ol = fcmp ogt double %i.ok, 0.000000e+00
  br i1 %i.ol, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i81
  %i.om = fdiv double 1.000000e+00, %i.ok         ; 2 uses
  %i.on = fcmp ogt double %i.om, f0x7FEFFFFFFFFFFFFF
  br i1 %i.on, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.oo = fcmp ogt double %i.ok, f0x7FEFFFFFFFFFFFFF
  br i1 %i.oo, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i81
  %i.op = fcmp uno double %i.ok, 0.000000e+00
  br i1 %i.op, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.158.i.i.i69 = phi double [ 0.000000e+00, %bb.z ], [ f0x0004000000000000, %bb.w ], [ %i.ok, %bb.y ], [ %i.ok, %bb.aa ], [ %i.ok, %bb.x ] ; 2 uses
  %.155.i.i.i70 = phi double [ 1.000000e+00, %bb.z ], [ f0x7FEFFFFFFFFFFFFF, %bb.w ], [ %i.om, %bb.y ], [ 1.000000e+00, %bb.aa ], [ 1.000000e+00, %bb.x ] ; 2 uses
  %i.oq = fcmp ogt double %.158.i.i.i69, 0.000000e+00
  br i1 %i.oq, label %.lr.ph85.i.i.i.i32.i.i.i.i76, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84

.lr.ph85.i.i.i.i32.i.i.i.i76:                     ; preds = %bb.ab
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i73 = insertelement <2 x double> poison, double %.155.i.i.i70, i64 0
  %i.or = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i73, <2 x double> poison, <2 x i32> zeroinitializer
  %i.os = fmul <2 x double> %i.nu, %i.or          ; 2 uses
  %i.ot = fmul <2 x double> %i.os, %i.os          ; 2 uses
  %shift255 = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop256 = fadd <2 x double> %i.ot, %shift255
  %i.ou = extractelement <2 x double> %foldExtExtBinop256, i64 0
  %i.ov = fmul double %.155.i.i.i70, %i.ob        ; 2 uses
  %i.ow = fmul double %i.ov, %i.ov
  %i.ox = fadd double %i.ou, %i.ow
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i76, %bb.ab
  %.2.i.i.i72 = phi double [ 0.000000e+00, %bb.ab ], [ %i.ox, %.lr.ph85.i.i.i.i32.i.i.i.i76 ]
  %i.oy = fsub <2 x double> %i.oc, %i.od          ; 3 uses
  %i.oz = fmul <2 x double> %i.nu, %i.oy          ; 2 uses
  %shift258 = shufflevector <2 x double> %i.oz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop259 = fadd <2 x double> %i.oz, %shift258
  %i.pa = extractelement <2 x double> %foldExtExtBinop259, i64 0
  %i.pb = fsub double %i.oe, %i.ne                ; 2 uses
  %i.pc = fmul double %i.ob, %i.pb
  %i.pd = fadd double %i.pc, %i.pa
  %i.pe = call noundef double @llvm.fabs.f64(double %i.pd)
  %i.pf = call double @sqrt(double noundef %.2.i.i.i72) #5
  %i.pg = fmul double %.158.i.i.i69, %i.pf
  %i.ph = fmul double %8, %i.pg
  %i.pi = fcmp olt double %i.pe, %i.ph
  br i1 %i.pi, label %bb.ac, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

bb.ac:                                            ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84
  %i.pj = load <2 x double>, ptr %i.kl, align 8, !tbaa !34, !noalias !79
  %i.pk = fsub <2 x double> %i.pj, %i.od          ; 5 uses
  %i.pl = load <2 x double>, ptr %i.kx, align 16, !tbaa !34, !noalias !82
  %i.pm = fsub <2 x double> %i.pl, %i.od          ; 5 uses
  %i.pn = fmul <2 x double> %i.pk, %i.pk          ; 2 uses
  %i.po = extractelement <2 x double> %i.nh, i64 1 ; 3 uses
  %i.pp = fmul double %i.po, %i.po
  %i.pq = fmul <2 x double> %i.pk, %i.pm          ; 2 uses
  %i.pr = shufflevector <2 x double> %i.pn, <2 x double> %i.pq, <2 x i32> <i32 0, i32 2>
  %i.ps = shufflevector <2 x double> %i.pn, <2 x double> %i.pq, <2 x i32> <i32 1, i32 3>
  %i.pt = fadd <2 x double> %i.pr, %i.ps          ; 2 uses
  %i.pu = extractelement <2 x double> %i.pt, i64 0
  %i.pv = fadd double %i.pp, %i.pu                ; 2 uses
  %i.pw = extractelement <2 x double> %i.no, i64 0
  %i.px = fmul double %i.pw, %i.po
  %i.py = extractelement <2 x double> %i.pt, i64 1
  %i.pz = fadd double %i.px, %i.py                ; 3 uses
  %i.qa = fmul <2 x double> %i.pm, %i.pm          ; 2 uses
  %shift261 = shufflevector <2 x double> %i.qa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop262 = fadd <2 x double> %i.qa, %shift261
  %foldExtExtBinop264 = fmul <2 x double> %i.no, %i.no
  %foldExtExtBinop266 = fadd <2 x double> %foldExtExtBinop264, %foldExtExtBinop262 ; 2 uses
  %i.qb = extractelement <2 x double> %foldExtExtBinop266, i64 0
  %i.qc = fmul <2 x double> %i.oy, %i.pk          ; 2 uses
  %i.qd = fmul <2 x double> %i.oy, %i.pm          ; 2 uses
  %i.qe = fneg double %i.pz
  %i.qf = fmul double %i.pz, %i.qe
  %i.qg = call double @llvm.fmuladd.f64(double %i.pv, double %i.qb, double %i.qf)
  %i.qh = fsub <2 x double> %.sroa.0197.8.vec.insert, %i.od ; 2 uses
  %i.qi = fsub double %i.mo, %i.ne
  %i.qj = fmul <2 x double> %i.qh, %i.pk          ; 2 uses
  %i.qk = fmul <2 x double> %i.qh, %i.pm          ; 2 uses
  %i.ql = shufflevector <2 x double> %i.qd, <2 x double> %i.qk, <2 x i32> <i32 0, i32 2>
  %i.qm = shufflevector <2 x double> %i.qd, <2 x double> %i.qk, <2 x i32> <i32 1, i32 3>
  %i.qn = fadd <2 x double> %i.ql, %i.qm
  %i.qo = shufflevector <2 x double> %i.no, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qp = insertelement <2 x double> poison, double %i.pb, i64 0
  %i.qq = insertelement <2 x double> %i.qp, double %i.qi, i64 1 ; 2 uses
  %i.qr = fmul <2 x double> %i.qo, %i.qq
  %i.qs = fadd <2 x double> %i.qr, %i.qn          ; 2 uses
  %i.qt = shufflevector <2 x double> %i.qc, <2 x double> %i.qj, <2 x i32> <i32 0, i32 2>
  %i.qu = shufflevector <2 x double> %i.qc, <2 x double> %i.qj, <2 x i32> <i32 1, i32 3>
  %i.qv = fadd <2 x double> %i.qt, %i.qu
  %i.qw = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qx = fmul <2 x double> %i.qq, %i.qw
  %i.qy = fadd <2 x double> %i.qx, %i.qv          ; 2 uses
  %i.qz = fneg <2 x double> %i.qy
  %i.ra = insertelement <2 x double> poison, double %i.pz, i64 0
  %i.rb = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rc = fmul <2 x double> %i.rb, %i.qz
  %i.rd = insertelement <2 x double> poison, double %i.pv, i64 0
  %i.re = shufflevector <2 x double> %i.rd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.re, <2 x double> %i.qs, <2 x double> %i.rc)
  %i.rg = fneg <2 x double> %i.qs
  %i.rh = fmul <2 x double> %i.rb, %i.rg
  %i.ri = shufflevector <2 x double> %foldExtExtBinop266, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ri, <2 x double> %i.qy, <2 x double> %i.rh)
  %i.rk = insertelement <2 x double> poison, double %i.qg, i64 0
  %i.rl = shufflevector <2 x double> %i.rk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rm = fdiv <2 x double> %i.rj, %i.rl          ; 10 uses
  %i.rn = fdiv <2 x double> %i.rf, %i.rl          ; 14 uses
  %i.ro = extractelement <2 x double> %i.rm, i64 0 ; 5 uses
  %i.rp = fcmp ult double %i.ro, 0.000000e+00
  br i1 %i.rp, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i86, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rq = extractelement <2 x double> %i.rn, i64 0
  %i.rr = fcmp oge double %i.rq, 0.000000e+00
  %foldExtExtBinop268 = fadd <2 x double> %i.rm, %i.rn
  %i.rs = extractelement <2 x double> %foldExtExtBinop268, i64 0
  %i.rt = fcmp ole double %i.rs, 1.000000e+00
  %or.cond.i.i85 = and i1 %i.rr, %i.rt
  br i1 %or.cond.i.i85, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i86

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i86: ; preds = %bb.ad, %bb.ac
  %i.ru = extractelement <2 x double> %i.rm, i64 1 ; 4 uses
  %i.rv = fcmp ult double %i.ru, 0.000000e+00
  br i1 %i.rv, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i90, label %bb.ae

bb.ae:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i86
  %i.rw = extractelement <2 x double> %i.rn, i64 1 ; 2 uses
  %i.rx = fcmp oge double %i.rw, 0.000000e+00
  %i.ry = fadd double %i.ru, %i.rw
  %i.rz = fcmp ole double %i.ry, 1.000000e+00
  %or.cond69.i.i89 = and i1 %i.rx, %i.rz
  br i1 %or.cond69.i.i89, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i90

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i90: ; preds = %bb.ae, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i86
  %i.sa = extractelement <2 x double> %i.rn, i64 0 ; 5 uses
  %i.sb = fcmp oeq double %i.sa, 0.000000e+00
  %i.sc = extractelement <2 x double> %i.rn, i64 1 ; 2 uses
  %i.sd = fcmp oeq double %i.sc, 0.000000e+00
  %or.cond.i.i.i91 = or i1 %i.sd, %i.sb
  br i1 %or.cond.i.i.i91, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i92

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i92: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i90
  %i.se = bitcast double %i.sa to i64
  %i.sf = bitcast double %i.sc to i64
  %i.sg = xor i64 %i.se, %i.sf
  %i.sh = icmp slt i64 %i.sg, 0
  br i1 %i.sh, label %bb.af, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93

bb.af:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i92
  %i.si = shufflevector <2 x double> %i.rn, <2 x double> %i.rm, <2 x i32> <i32 0, i32 3>
  %i.sj = shufflevector <2 x double> %i.rn, <2 x double> %i.rm, <2 x i32> <i32 1, i32 2>
  %i.sk = fsub <2 x double> %i.si, %i.sj          ; 2 uses
  %i.sl = extractelement <2 x double> %i.sk, i64 0
  %i.sm = fdiv double %i.sa, %i.sl
  %i.sn = extractelement <2 x double> %i.sk, i64 1
  %i.so = call double @llvm.fmuladd.f64(double %i.sm, double %i.sn, double %i.ro) ; 2 uses
  %i.sp = fcmp ult double %i.so, 0.000000e+00
  %i.sq = fcmp ugt double %i.so, 1.000000e+00
  %or.cond.not.i.i103 = or i1 %i.sp, %i.sq
  br i1 %or.cond.not.i.i103, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93: ; preds = %bb.af, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i92, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i90
  %i.sr = fcmp oeq double %i.ro, 0.000000e+00
  %i.ss = fcmp oeq double %i.ru, 0.000000e+00
  %or.cond.i57.i.i94 = or i1 %i.sr, %i.ss
  br i1 %or.cond.i57.i.i94, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i95

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i95: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93
  %i.st = bitcast double %i.ro to i64
  %i.su = bitcast double %i.ru to i64
  %i.sv = xor i64 %i.su, %i.st
  %i.sw = icmp slt i64 %i.sv, 0
  br i1 %i.sw, label %bb.ag, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96

bb.ag:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i95
  %i.sx = shufflevector <2 x double> %i.rm, <2 x double> %i.rn, <2 x i32> <i32 0, i32 3>
  %i.sy = shufflevector <2 x double> %i.rm, <2 x double> %i.rn, <2 x i32> <i32 1, i32 2>
  %i.sz = fsub <2 x double> %i.sx, %i.sy          ; 2 uses
  %i.ta = extractelement <2 x double> %i.sz, i64 0
  %i.tb = fdiv double %i.ro, %i.ta
  %i.tc = extractelement <2 x double> %i.sz, i64 1
  %i.td = call double @llvm.fmuladd.f64(double %i.tb, double %i.tc, double %i.sa) ; 2 uses
  %i.te = fcmp ult double %i.td, 0.000000e+00
  %i.tf = fcmp ugt double %i.td, 1.000000e+00
  %or.cond5.not.i.i102 = or i1 %i.te, %i.tf
  br i1 %or.cond5.not.i.i102, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96: ; preds = %bb.ag, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i95, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93
  %i.tg = fadd <2 x double> %i.rm, %i.rn
  %i.th = fadd <2 x double> %i.tg, splat (double -1.000000e+00) ; 3 uses
  %i.ti = extractelement <2 x double> %i.th, i64 0
  %i.tj = fcmp oeq double %i.ti, 0.000000e+00
  %i.tk = extractelement <2 x double> %i.th, i64 1
  %i.tl = fcmp oeq double %i.tk, 0.000000e+00
  %or.cond.i60.i.i97 = or i1 %i.tl, %i.tj
  br i1 %or.cond.i60.i.i97, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.thread.i.i99, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.i.i98

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.i.i98: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96
  %20 = bitcast <2 x double> %i.th to <2 x i64>   ; 2 uses
  %shift270 = shufflevector <2 x i64> %20, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop271 = xor <2 x i64> %shift270, %20
  %21 = extractelement <2 x i64> %foldExtExtBinop271, i64 0
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %bb.ah, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.thread.i.i99

bb.ah:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.i.i98
  %i.tm = insertelement <2 x double> %i.rm, double 1.000000e+00, i64 0
  %i.tn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.to = fsub <2 x double> %i.tm, %i.tn          ; 2 uses
  %i.tp = fsub <2 x double> %i.to, %i.rn
  %i.tq = fadd <2 x double> %i.to, %i.rn
  %i.tr = extractelement <2 x double> %i.tp, i64 0
  %i.ts = shufflevector <2 x double> %i.tq, <2 x double> %i.rn, <2 x i32> <i32 1, i32 3>
  %i.tt = shufflevector <2 x double> %i.rn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tu = fsub <2 x double> %i.ts, %i.tt          ; 2 uses
  %i.tv = extractelement <2 x double> %i.tu, i64 0
  %i.tw = fdiv double %i.tr, %i.tv
  %i.tx = extractelement <2 x double> %i.tu, i64 1
  %i.ty = call double @llvm.fmuladd.f64(double %i.tw, double %i.tx, double %i.sa) ; 2 uses
  %i.tz = fcmp ult double %i.ty, 0.000000e+00
  %i.ua = fcmp ugt double %i.ty, 1.000000e+00
  %or.cond7.not.i.i101 = or i1 %i.tz, %i.ua
  br i1 %or.cond7.not.i.i101, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.thread.i.i99, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.thread.i.i99: ; preds = %bb.ah, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.i.i98, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.thread.i.i99, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.v, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84, %bb.u
  %.1 = phi i1 [ %i.my, %bb.u ], [ false, %bb.v ], [ false, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84 ], [ true, %bb.ad ], [ true, %bb.ae ], [ false, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.thread.i.i99 ], [ true, %bb.ah ], [ true, %bb.ag ], [ true, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread: ; preds = %bb.r, %bb.s, %bb.t, %bb.q, %bb.p, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit
  %.2 = phi i1 [ true, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit ], [ %.1, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104 ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %6, i32 noundef %7, double noundef %8) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Eigen::Matrix", align 16    ; 8 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 8 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 8 uses
  %12 = alloca %"class.Eigen::Matrix", align 16   ; 10 uses
  %13 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %14 = alloca [3 x %"class.Eigen::Matrix"], align 16 ; 15 uses
  %15 = alloca %"class.Eigen::Matrix", align 16   ; 8 uses
  %16 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  %i.e = sext i32 %6 to i64                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !9      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = sext i32 %i.i to i64
  %i.k = load ptr, ptr %0, align 8, !tbaa !15, !noalias !85 ; 5 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.j ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21   ; 6 uses
  %i.o = load double, ptr %i.l, align 8, !tbaa !22
  store double %i.o, ptr %9, align 16, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.n
  %i.r = load double, ptr %i.q, align 8, !tbaa !22
  store double %i.r, ptr %i.p, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.n, 4 ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.u = load double, ptr %i.t, align 8, !tbaa !22
  store double %i.u, ptr %i.s, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.v = load i64, ptr %i.g, align 8, !tbaa !24   ; 4 uses
  %i.w = getelementptr [4 x i8], ptr %i.h, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.y ; 3 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !22
  store double %i.aa, ptr %10, align 16, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.n
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !22
  store double %i.ad, ptr %i.ab, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ag = load double, ptr %i.af, align 8, !tbaa !22
  store double %i.ag, ptr %i.ae, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  %.idx213 = shl i64 %i.v, 3
  %i.ah = getelementptr i8, ptr %i.h, i64 %.idx213
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aj ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !22
  store double %i.al, ptr %11, align 16, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.n
  %i.ao = load double, ptr %i.an, align 8, !tbaa !22
  store double %i.ao, ptr %i.am, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22
  store double %i.ar, ptr %i.ap, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  %i.as = add nsw i32 %3, 1
  %i.at = srem i32 %i.as, 3                       ; 2 uses
  %i.au = icmp eq i32 %i.at, %4
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %5, align 8, !tbaa !88    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !90, !nonnull !32, !align !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.ba = load double, ptr %i.av, align 8, !tbaa !22
  store double %i.ba, ptr %12, align 16, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.az
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !22
  store double %i.bd, ptr %i.bb, align 8, !tbaa !22
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.az, 4
  %i.be = getelementptr inbounds i8, ptr %i.av, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bf = sext i32 %2 to i64
  %i.bg = sext i32 %i.at to i64
  %i.bh = mul nsw i64 %i.v, %i.bg
  %i.bi = getelementptr [4 x i8], ptr %i.f, i64 %i.bf
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bl ; 3 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !22
  store double %i.bn, ptr %12, align 16, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.n
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !22
  store double %i.bq, ptr %i.bo, align 8, !tbaa !22
  %i.br = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.be, %bb.b ], [ %i.br, %bb.c ]
  %i.bs = load double, ptr %.in, align 8, !tbaa !22 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store double %i.bs, ptr %i.bt, align 16, !tbaa !22
  %i.bu = add nsw i32 %3, 2
  %i.bv = srem i32 %i.bu, 3                       ; 2 uses
  %i.bw = icmp eq i32 %i.bv, %4
  br i1 %i.bw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bx = load ptr, ptr %5, align 8, !tbaa !88    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !90, !nonnull !32, !align !33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !21 ; 2 uses
  %i.cc = load double, ptr %i.bx, align 8, !tbaa !22
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cb
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !22
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.ce, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i49 = shl nsw i64 %i.cb, 4
  %i.cf = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cg = sext i32 %2 to i64
  %i.ch = sext i32 %i.bv to i64
  %i.ci = mul nsw i64 %i.v, %i.ch
  %i.cj = getelementptr [4 x i8], ptr %i.f, i64 %i.cg
  %i.ck = getelementptr [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cm ; 3 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22
  %.sroa.0.0.vec.insert194 = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.n
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !22
  %.sroa.0.8.vec.insert196 = insertelement <2 x double> %.sroa.0.0.vec.insert194, double %i.cq, i64 1
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.8.0.in = phi ptr [ %i.cf, %bb.e ], [ %i.cr, %bb.f ]
  %.sroa.0.0 = phi <2 x double> [ %.sroa.0.8.vec.insert, %bb.e ], [ %.sroa.0.8.vec.insert196, %bb.f ] ; 2 uses
  %.sroa.8.0 = load double, ptr %.sroa.8.0.in, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  %i.cs = load <2 x double>, ptr %12, align 16, !tbaa !34
  %i.ct = fsub <2 x double> %.sroa.0.0, %i.cs
  store <2 x double> %i.ct, ptr %13, align 16, !tbaa !34
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cv = fsub double %.sroa.8.0, %i.bs
  store double %i.cv, ptr %i.cu, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i8 0, ptr %i.d, align 1, !tbaa !35
  %i.cw = call noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.cw, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cx = load i8, ptr %i.d, align 1, !tbaa !35, !range !37, !noundef !32
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %.lr.ph85.i.i.i.i.i.preheader.i.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210

.lr.ph85.i.i.i.i.i.preheader.i.i.i:               ; preds = %bb.h
  %i.cz = load double, ptr %11, align 16, !tbaa !22, !noalias !93
end_hunk_1
begin_hunk_2_@_ZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarE:bb.a
bb.j:                                             ; preds = %bb.i
  %i.em = fcmp ogt double %i.ei, f0x7FEFFFFFFFFFFFFF
  br i1 %i.em, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i
  %i.en = fcmp uno double %i.ei, 0.000000e+00
  br i1 %i.en, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.158.i.i.i = phi double [ 0.000000e+00, %bb.l ], [ f0x0004000000000000, %bb.i ], [ %i.ei, %bb.k ], [ %i.ei, %bb.m ], [ %i.ei, %bb.j ] ; 2 uses
  %.155.i.i.i = phi double [ 1.000000e+00, %bb.l ], [ f0x7FEFFFFFFFFFFFFF, %bb.i ], [ %i.ek, %bb.k ], [ 1.000000e+00, %bb.m ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.eo = fcmp ogt double %.158.i.i.i, 0.000000e+00
  br i1 %i.eo, label %.lr.ph85.i.i.i.i32.i.i.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit

.lr.ph85.i.i.i.i32.i.i.i.i:                       ; preds = %bb.n
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.155.i.i.i, i64 0
  %i.ep = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x double> %i.ds, %i.ep          ; 2 uses
  %i.er = fmul <2 x double> %i.eq, %i.eq          ; 2 uses
  %shift = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.er, %shift
  %i.es = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.et = fmul double %.155.i.i.i, %i.dz          ; 2 uses
  %i.eu = fmul double %i.et, %i.et
  %i.ev = fadd double %i.es, %i.eu
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i, %bb.n
  %.2.i.i.i = phi double [ 0.000000e+00, %bb.n ], [ %i.ev, %.lr.ph85.i.i.i.i32.i.i.i.i ]
  %i.ew = fsub <2 x double> %i.ea, %i.eb          ; 3 uses
  %i.ex = fmul <2 x double> %i.ds, %i.ew          ; 2 uses
  %shift247 = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop248 = fadd <2 x double> %i.ex, %shift247
  %i.ey = extractelement <2 x double> %foldExtExtBinop248, i64 0
  %i.ez = fsub double %i.ec, %i.dc                ; 2 uses
  %i.fa = fmul double %i.dz, %i.ez
  %i.fb = fadd double %i.fa, %i.ey
  %i.fc = call noundef double @llvm.fabs.f64(double %i.fb)
  %i.fd = call double @sqrt(double noundef %.2.i.i.i) #5
  %i.fe = fmul double %.158.i.i.i, %i.fd
  %i.ff = fmul double %8, %i.fe
  %i.fg = fcmp olt double %i.fc, %i.ff
  br i1 %i.fg, label %bb.o, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210

bb.o:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit
  %i.fh = load <2 x double>, ptr %10, align 16, !tbaa !34, !noalias !96
  %i.fi = fsub <2 x double> %i.fh, %i.eb          ; 5 uses
  %i.fj = load <2 x double>, ptr %11, align 16, !tbaa !34, !noalias !99
  %i.fk = fsub <2 x double> %i.fj, %i.eb          ; 5 uses
  %i.fl = fmul <2 x double> %i.fi, %i.fi          ; 2 uses
  %i.fm = extractelement <2 x double> %i.df, i64 1 ; 3 uses
  %i.fn = fmul double %i.fm, %i.fm
  %i.fo = fmul <2 x double> %i.fi, %i.fk          ; 2 uses
  %i.fp = shufflevector <2 x double> %i.fl, <2 x double> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.fq = shufflevector <2 x double> %i.fl, <2 x double> %i.fo, <2 x i32> <i32 1, i32 3>
  %i.fr = fadd <2 x double> %i.fp, %i.fq          ; 2 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 0
  %i.ft = fadd double %i.fn, %i.fs                ; 2 uses
  %i.fu = extractelement <2 x double> %i.dm, i64 0
  %i.fv = fmul double %i.fu, %i.fm
  %i.fw = extractelement <2 x double> %i.fr, i64 1
  %i.fx = fadd double %i.fv, %i.fw                ; 3 uses
  %i.fy = fmul <2 x double> %i.fk, %i.fk          ; 2 uses
  %shift250 = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop251 = fadd <2 x double> %i.fy, %shift250
  %foldExtExtBinop253 = fmul <2 x double> %i.dm, %i.dm
  %foldExtExtBinop255 = fadd <2 x double> %foldExtExtBinop253, %foldExtExtBinop251 ; 2 uses
  %i.fz = extractelement <2 x double> %foldExtExtBinop255, i64 0
  %i.ga = fmul <2 x double> %i.ew, %i.fi          ; 2 uses
  %i.gb = fmul <2 x double> %i.ew, %i.fk          ; 2 uses
  %i.gc = fneg double %i.fx
  %i.gd = fmul double %i.fx, %i.gc
  %i.ge = call double @llvm.fmuladd.f64(double %i.ft, double %i.fz, double %i.gd)
  %i.gf = fsub <2 x double> %.sroa.0.0, %i.eb     ; 2 uses
  %i.gg = fsub double %.sroa.8.0, %i.dc
  %i.gh = fmul <2 x double> %i.gf, %i.fi          ; 2 uses
  %i.gi = fmul <2 x double> %i.gf, %i.fk          ; 2 uses
  %i.gj = shufflevector <2 x double> %i.gb, <2 x double> %i.gi, <2 x i32> <i32 0, i32 2>
  %i.gk = shufflevector <2 x double> %i.gb, <2 x double> %i.gi, <2 x i32> <i32 1, i32 3>
  %i.gl = fadd <2 x double> %i.gj, %i.gk
  %i.gm = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.gg, i64 1 ; 2 uses
  %i.gp = fmul <2 x double> %i.gm, %i.go
  %i.gq = fadd <2 x double> %i.gp, %i.gl          ; 2 uses
  %i.gr = shufflevector <2 x double> %i.ga, <2 x double> %i.gh, <2 x i32> <i32 0, i32 2>
  %i.gs = shufflevector <2 x double> %i.ga, <2 x double> %i.gh, <2 x i32> <i32 1, i32 3>
  %i.gt = fadd <2 x double> %i.gr, %i.gs
  %i.gu = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = fmul <2 x double> %i.go, %i.gu
  %i.gw = fadd <2 x double> %i.gv, %i.gt          ; 2 uses
  %i.gx = fneg <2 x double> %i.gw
  %i.gy = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fmul <2 x double> %i.gz, %i.gx
  %i.hb = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.gq, <2 x double> %i.ha)
  %i.he = fneg <2 x double> %i.gq
  %i.hf = fmul <2 x double> %i.gz, %i.he
  %i.hg = shufflevector <2 x double> %foldExtExtBinop255, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %i.gw, <2 x double> %i.hf)
  %i.hi = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hk = fdiv <2 x double> %i.hh, %i.hj          ; 10 uses
  %i.hl = fdiv <2 x double> %i.hd, %i.hj          ; 14 uses
  %i.hm = extractelement <2 x double> %i.hk, i64 0 ; 5 uses
  %i.hn = fcmp ult double %i.hm, 0.000000e+00
  br i1 %i.hn, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ho = extractelement <2 x double> %i.hl, i64 0
  %i.hp = fcmp oge double %i.ho, 0.000000e+00
  %foldExtExtBinop257 = fadd <2 x double> %i.hk, %i.hl
  %i.hq = extractelement <2 x double> %foldExtExtBinop257, i64 0
  %i.hr = fcmp ole double %i.hq, 1.000000e+00
  %or.cond.i.i = and i1 %i.hp, %i.hr
  br i1 %or.cond.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i: ; preds = %bb.p, %bb.o
  %i.hs = extractelement <2 x double> %i.hk, i64 1 ; 4 uses
  %i.ht = fcmp ult double %i.hs, 0.000000e+00
  br i1 %i.ht, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i, label %bb.q

bb.q:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i
  %i.hu = extractelement <2 x double> %i.hl, i64 1 ; 2 uses
  %i.hv = fcmp oge double %i.hu, 0.000000e+00
  %i.hw = fadd double %i.hs, %i.hu
  %i.hx = fcmp ole double %i.hw, 1.000000e+00
  %or.cond69.i.i = and i1 %i.hv, %i.hx
  br i1 %or.cond69.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i: ; preds = %bb.q, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i
  %i.hy = extractelement <2 x double> %i.hl, i64 0 ; 5 uses
  %i.hz = fcmp oeq double %i.hy, 0.000000e+00
  %i.ia = extractelement <2 x double> %i.hl, i64 1 ; 2 uses
  %i.ib = fcmp oeq double %i.ia, 0.000000e+00
  %or.cond.i.i.i = or i1 %i.ib, %i.hz
  br i1 %or.cond.i.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i
  %i.ic = bitcast double %i.hy to i64
  %i.id = bitcast double %i.ia to i64
  %i.ie = xor i64 %i.ic, %i.id
  %i.if = icmp slt i64 %i.ie, 0
  br i1 %i.if, label %bb.r, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i

bb.r:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i
  %i.ig = shufflevector <2 x double> %i.hl, <2 x double> %i.hk, <2 x i32> <i32 0, i32 3>
  %i.ih = shufflevector <2 x double> %i.hl, <2 x double> %i.hk, <2 x i32> <i32 1, i32 2>
  %i.ii = fsub <2 x double> %i.ig, %i.ih          ; 2 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 0
  %i.ik = fdiv double %i.hy, %i.ij
  %i.il = extractelement <2 x double> %i.ii, i64 1
  %i.im = call double @llvm.fmuladd.f64(double %i.ik, double %i.il, double %i.hm) ; 2 uses
  %i.in = fcmp ult double %i.im, 0.000000e+00
  %i.io = fcmp ugt double %i.im, 1.000000e+00
  %or.cond.not.i.i = or i1 %i.in, %i.io
  br i1 %or.cond.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i: ; preds = %bb.r, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i
  %i.ip = fcmp oeq double %i.hm, 0.000000e+00
  %i.iq = fcmp oeq double %i.hs, 0.000000e+00
  %or.cond.i57.i.i = or i1 %i.ip, %i.iq
  br i1 %or.cond.i57.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i
  %i.ir = bitcast double %i.hm to i64
  %i.is = bitcast double %i.hs to i64
  %i.it = xor i64 %i.is, %i.ir
  %i.iu = icmp slt i64 %i.it, 0
  br i1 %i.iu, label %bb.s, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i

bb.s:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i
  %i.iv = shufflevector <2 x double> %i.hk, <2 x double> %i.hl, <2 x i32> <i32 0, i32 3>
  %i.iw = shufflevector <2 x double> %i.hk, <2 x double> %i.hl, <2 x i32> <i32 1, i32 2>
  %i.ix = fsub <2 x double> %i.iv, %i.iw          ; 2 uses
  %i.iy = extractelement <2 x double> %i.ix, i64 0
  %i.iz = fdiv double %i.hm, %i.iy
  %i.ja = extractelement <2 x double> %i.ix, i64 1
  %i.jb = call double @llvm.fmuladd.f64(double %i.iz, double %i.ja, double %i.hy) ; 2 uses
  %i.jc = fcmp ult double %i.jb, 0.000000e+00
  %i.jd = fcmp ugt double %i.jb, 1.000000e+00
  %or.cond5.not.i.i = or i1 %i.jc, %i.jd
  br i1 %or.cond5.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i: ; preds = %bb.s, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i
  %i.je = fadd <2 x double> %i.hk, %i.hl
  %i.jf = fadd <2 x double> %i.je, splat (double -1.000000e+00) ; 3 uses
  %i.jg = extractelement <2 x double> %i.jf, i64 0
  %i.jh = fcmp oeq double %i.jg, 0.000000e+00
  %i.ji = extractelement <2 x double> %i.jf, i64 1
  %i.jj = fcmp oeq double %i.ji, 0.000000e+00
  %or.cond.i60.i.i = or i1 %i.jj, %i.jh
  br i1 %or.cond.i60.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i
  %17 = bitcast <2 x double> %i.jf to <2 x i64>   ; 2 uses
  %shift259 = shufflevector <2 x i64> %17, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop260 = xor <2 x i64> %shift259, %17
  %18 = extractelement <2 x i64> %foldExtExtBinop260, i64 0
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %bb.t, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210

bb.t:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.i.i
  %i.jk = insertelement <2 x double> %i.hk, double 1.000000e+00, i64 0
  %i.jl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = fsub <2 x double> %i.jk, %i.jl          ; 2 uses
  %i.jn = fsub <2 x double> %i.jm, %i.hl
  %i.jo = fadd <2 x double> %i.jm, %i.hl
  %i.jp = extractelement <2 x double> %i.jn, i64 0
  %i.jq = shufflevector <2 x double> %i.jo, <2 x double> %i.hl, <2 x i32> <i32 1, i32 3>
  %i.jr = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = fsub <2 x double> %i.jq, %i.jr          ; 2 uses
  %i.jt = extractelement <2 x double> %i.js, i64 0
  %i.ju = fdiv double %i.jp, %i.jt
  %i.jv = extractelement <2 x double> %i.js, i64 1
  %i.jw = call double @llvm.fmuladd.f64(double %i.ju, double %i.jv, double %i.hy) ; 2 uses
  %i.jx = fcmp ult double %i.jw, 0.000000e+00
  %i.jy = fcmp ugt double %i.jw, 1.000000e+00
  %or.cond7.not.i.i = or i1 %i.jx, %i.jy
  br i1 %or.cond7.not.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit: ; preds = %bb.g
  %i.jz = load double, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.ka = fcmp ogt double %i.jz, 0.000000e+00
  %i.kb = fadd double %8, 1.000000e+00
  %i.kc = fcmp olt double %i.jz, %i.kb
  %i.kd = and i1 %i.ka, %i.kc
  br i1 %i.kd, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.i.i, %bb.t, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit, %bb.h, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  %i.ke = sext i32 %2 to i64
  %i.kf = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.kg = getelementptr [4 x i8], ptr %i.kf, i64 %i.ke ; 3 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !14
  %i.ki = sext i32 %i.kh to i64
  %i.kj = load ptr, ptr %0, align 8, !tbaa !15, !noalias !102 ; 5 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.ki ; 3 uses
  %i.kl = load i64, ptr %i.m, align 8, !tbaa !21  ; 6 uses
  %i.km = load double, ptr %i.kk, align 8, !tbaa !22
  store double %i.km, ptr %14, align 16, !tbaa !22
  %i.kn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kl
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !22
  store double %i.kp, ptr %i.kn, align 8, !tbaa !22
  %i.kq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i51 = shl nsw i64 %i.kl, 4 ; 5 uses
  %i.kr = getelementptr inbounds i8, ptr %i.kk, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !22
  store double %i.ks, ptr %i.kq, align 16, !tbaa !22
  %i.kt = load i64, ptr %i.g, align 8, !tbaa !24  ; 4 uses
  %i.ku = getelementptr [4 x i8], ptr %i.kg, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !14
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.kw ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.kz = load double, ptr %i.kx, align 8, !tbaa !22
  store double %i.kz, ptr %i.ky, align 8, !tbaa !22
  %i.la = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.kl
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !22
  store double %i.lc, ptr %i.la, align 16, !tbaa !22
  %i.ld = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.le = getelementptr inbounds i8, ptr %i.kx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.lf = load double, ptr %i.le, align 8, !tbaa !22
  store double %i.lf, ptr %i.ld, align 8, !tbaa !22
  %.idx214 = shl i64 %i.kt, 3
  %i.lg = getelementptr i8, ptr %i.kg, i64 %.idx214
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !14
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.li ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 4 uses
  %i.ll = load double, ptr %i.lj, align 8, !tbaa !22
  store double %i.ll, ptr %i.lk, align 16, !tbaa !22
  %i.lm = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.kl
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !22
  store double %i.lo, ptr %i.lm, align 8, !tbaa !22
  %i.lp = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.lq = getelementptr inbounds i8, ptr %i.lj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !22
  store double %i.lr, ptr %i.lp, align 16, !tbaa !22
  %i.ls = sext i32 %4 to i64
  %i.lt = getelementptr inbounds [24 x i8], ptr %14, i64 %i.ls ; 3 uses
  %i.lu = load ptr, ptr %5, align 8, !tbaa !88    ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !90, !nonnull !32, !align !33
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !21 ; 2 uses
  %i.lz = load double, ptr %i.lu, align 8, !tbaa !22
  store double %i.lz, ptr %i.lt, align 8, !tbaa !22
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.ly
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !22
  store double %i.mc, ptr %i.ma, align 8, !tbaa !22
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i.i54 = shl nsw i64 %i.ly, 4
  %i.me = getelementptr inbounds i8, ptr %i.lu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i54
  %i.mf = load double, ptr %i.me, align 8, !tbaa !22
  store double %i.mf, ptr %i.md, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  %i.mg = add nsw i32 %7, 1
  %i.mh = srem i32 %i.mg, 3
  %i.mi = sext i32 %i.mh to i64
  %i.mj = mul nsw i64 %i.kt, %i.mi
  %i.mk = getelementptr [4 x i8], ptr %i.kf, i64 %i.e ; 2 uses
  %i.ml = getelementptr [4 x i8], ptr %i.mk, i64 %i.mj
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !14
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.mn ; 3 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !22
  store double %i.mp, ptr %15, align 16, !tbaa !22
  %i.mq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.kl
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !22
  store double %i.ms, ptr %i.mq, align 8, !tbaa !22
  %i.mt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.mu = getelementptr inbounds i8, ptr %i.mo, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !22 ; 2 uses
  store double %i.mv, ptr %i.mt, align 16, !tbaa !22
  %i.mw = add nsw i32 %7, 2
  %i.mx = srem i32 %i.mw, 3
  %i.my = sext i32 %i.mx to i64
  %i.mz = mul nsw i64 %i.kt, %i.my
  %i.na = getelementptr [4 x i8], ptr %i.mk, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !14
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.nc ; 3 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !22
  %.sroa.0204.0.vec.insert = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.nd, i64 %i.kl
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !22
  %.sroa.0204.8.vec.insert = insertelement <2 x double> %.sroa.0204.0.vec.insert, double %i.ng, i64 1 ; 2 uses
  %i.nh = getelementptr inbounds i8, ptr %i.nd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  %i.nj = load <2 x double>, ptr %15, align 16, !tbaa !34
  %i.nk = fsub <2 x double> %.sroa.0204.8.vec.insert, %i.nj
  store <2 x double> %i.nk, ptr %16, align 16, !tbaa !34
  %i.nl = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.nm = fsub double %i.ni, %i.mv
  store double %i.nm, ptr %i.nl, align 16, !tbaa !22
  %i.nn = call noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %i.ky, ptr noundef nonnull align 1 dereferenceable(1) %i.lk, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.nn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210
  %i.no = load double, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.np = fcmp ogt double %i.no, 0.000000e+00
  %i.nq = fadd double %8, 1.000000e+00
  %i.nr = fcmp olt double %i.no, %i.nq
  %i.ns = and i1 %i.np, %i.nr
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

bb.v:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210
  %i.nt = load i8, ptr %i.d, align 1, !tbaa !35, !range !37, !noundef !32
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %.lr.ph85.i.i.i.i.i.preheader.i.i.i84, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

.lr.ph85.i.i.i.i.i.preheader.i.i.i84:             ; preds = %bb.v
  %i.nv = load double, ptr %i.lk, align 16, !tbaa !22, !noalias !105
  %i.nw = load double, ptr %14, align 16, !tbaa !22, !noalias !105
  %i.nx = load double, ptr %i.ky, align 8, !tbaa !22, !noalias !105
  %i.ny = load double, ptr %i.kq, align 16, !tbaa !22, !noalias !105 ; 2 uses
  %i.nz = load <2 x double>, ptr %i.kn, align 8, !tbaa !22, !noalias !105 ; 3 uses
  %i.oa = load <2 x double>, ptr %i.la, align 16, !tbaa !22, !noalias !105 ; 2 uses
  %i.ob = fsub <2 x double> %i.oa, %i.nz          ; 4 uses
  %i.oc = load <2 x double>, ptr %i.lm, align 8, !tbaa !22, !noalias !105 ; 2 uses
  %i.od = fsub <2 x double> %i.oc, %i.nz          ; 2 uses
  %i.oe = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.of = insertelement <2 x double> %i.oe, double %i.nv, i64 1
  %i.og = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.oh = insertelement <2 x double> %i.og, double %i.nw, i64 1 ; 2 uses
  %i.oi = fsub <2 x double> %i.of, %i.oh          ; 6 uses
  %i.oj = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ok = insertelement <2 x double> %i.oj, double %i.nx, i64 1
  %i.ol = fsub <2 x double> %i.ok, %i.oh          ; 2 uses
  %i.om = fneg <2 x double> %i.od
  %i.on = fmul <2 x double> %i.ol, %i.om
  %i.oo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.oi, <2 x double> %i.on) ; 3 uses
  %i.op = extractelement <2 x double> %i.oi, i64 1
  %i.oq = fneg double %i.op
  %i.or = extractelement <2 x double> %i.ob, i64 0
  %i.os = fmul double %i.or, %i.oq
  %i.ot = extractelement <2 x double> %i.ol, i64 1
  %i.ou = extractelement <2 x double> %i.od, i64 0
  %i.ov = call double @llvm.fmuladd.f64(double %i.ot, double %i.ou, double %i.os) ; 3 uses
  %i.ow = load <2 x double>, ptr %15, align 16, !tbaa !34
  %i.ox = load <2 x double>, ptr %14, align 16, !tbaa !34 ; 4 uses
  %i.oy = load double, ptr %i.mt, align 16, !tbaa !22
  %i.oz = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.oo) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85 = extractelement <2 x double> %i.oz, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86 = extractelement <2 x double> %i.oz, i64 1 ; 2 uses
  %i.pa = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86
  %i.pb = select i1 %i.pa, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85 ; 2 uses
  %i.pc = call noundef double @llvm.fabs.f64(double %i.ov) ; 2 uses
  %i.pd = fcmp olt double %i.pb, %i.pc
  %i.pe = select i1 %i.pd, double %i.pc, double %i.pb ; 7 uses
  %i.pf = fcmp ogt double %i.pe, 0.000000e+00
  br i1 %i.pf, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i84
  %i.pg = fdiv double 1.000000e+00, %i.pe         ; 2 uses
  %i.ph = fcmp ogt double %i.pg, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ph, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.pi = fcmp ogt double %i.pe, f0x7FEFFFFFFFFFFFFF
  br i1 %i.pi, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i84
  %i.pj = fcmp uno double %i.pe, 0.000000e+00
  br i1 %i.pj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.158.i.i.i72 = phi double [ 0.000000e+00, %bb.z ], [ f0x0004000000000000, %bb.w ], [ %i.pe, %bb.y ], [ %i.pe, %bb.aa ], [ %i.pe, %bb.x ] ; 2 uses
  %.155.i.i.i73 = phi double [ 1.000000e+00, %bb.z ], [ f0x7FEFFFFFFFFFFFFF, %bb.w ], [ %i.pg, %bb.y ], [ 1.000000e+00, %bb.aa ], [ 1.000000e+00, %bb.x ] ; 2 uses
  %i.pk = fcmp ogt double %.158.i.i.i72, 0.000000e+00
  br i1 %i.pk, label %.lr.ph85.i.i.i.i32.i.i.i.i79, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87

.lr.ph85.i.i.i.i32.i.i.i.i79:                     ; preds = %bb.ab
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i76 = insertelement <2 x double> poison, double %.155.i.i.i73, i64 0
  %i.pl = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i76, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pm = fmul <2 x double> %i.oo, %i.pl          ; 2 uses
  %i.pn = fmul <2 x double> %i.pm, %i.pm          ; 2 uses
  %shift262 = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop263 = fadd <2 x double> %i.pn, %shift262
  %i.po = extractelement <2 x double> %foldExtExtBinop263, i64 0
  %i.pp = fmul double %.155.i.i.i73, %i.ov        ; 2 uses
  %i.pq = fmul double %i.pp, %i.pp
  %i.pr = fadd double %i.po, %i.pq
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i79, %bb.ab
  %.2.i.i.i75 = phi double [ 0.000000e+00, %bb.ab ], [ %i.pr, %.lr.ph85.i.i.i.i32.i.i.i.i79 ]
  %i.ps = fsub <2 x double> %i.ow, %i.ox          ; 3 uses
  %i.pt = fmul <2 x double> %i.oo, %i.ps          ; 2 uses
  %shift265 = shufflevector <2 x double> %i.pt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop266 = fadd <2 x double> %i.pt, %shift265
  %i.pu = extractelement <2 x double> %foldExtExtBinop266, i64 0
  %i.pv = fsub double %i.oy, %i.ny                ; 2 uses
  %i.pw = fmul double %i.ov, %i.pv
  %i.px = fadd double %i.pw, %i.pu
  %i.py = call noundef double @llvm.fabs.f64(double %i.px)
  %i.pz = call double @sqrt(double noundef %.2.i.i.i75) #5
  %i.qa = fmul double %.158.i.i.i72, %i.pz
  %i.qb = fmul double %8, %i.qa
  %i.qc = fcmp olt double %i.py, %i.qb
  br i1 %i.qc, label %bb.ac, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

bb.ac:                                            ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87
  %i.qd = load <2 x double>, ptr %i.ky, align 8, !tbaa !34, !noalias !108
  %i.qe = fsub <2 x double> %i.qd, %i.ox          ; 5 uses
  %i.qf = load <2 x double>, ptr %i.lk, align 16, !tbaa !34, !noalias !111
  %i.qg = fsub <2 x double> %i.qf, %i.ox          ; 5 uses
  %i.qh = fmul <2 x double> %i.qe, %i.qe          ; 2 uses
  %i.qi = extractelement <2 x double> %i.ob, i64 1 ; 3 uses
  %i.qj = fmul double %i.qi, %i.qi
  %i.qk = fmul <2 x double> %i.qe, %i.qg          ; 2 uses
  %i.ql = shufflevector <2 x double> %i.qh, <2 x double> %i.qk, <2 x i32> <i32 0, i32 2>
  %i.qm = shufflevector <2 x double> %i.qh, <2 x double> %i.qk, <2 x i32> <i32 1, i32 3>
  %i.qn = fadd <2 x double> %i.ql, %i.qm          ; 2 uses
  %i.qo = extractelement <2 x double> %i.qn, i64 0
  %i.qp = fadd double %i.qj, %i.qo                ; 2 uses
  %i.qq = extractelement <2 x double> %i.oi, i64 0
  %i.qr = fmul double %i.qq, %i.qi
  %i.qs = extractelement <2 x double> %i.qn, i64 1
  %i.qt = fadd double %i.qr, %i.qs                ; 3 uses
  %i.qu = fmul <2 x double> %i.qg, %i.qg          ; 2 uses
  %shift268 = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop269 = fadd <2 x double> %i.qu, %shift268
  %foldExtExtBinop271 = fmul <2 x double> %i.oi, %i.oi
  %foldExtExtBinop273 = fadd <2 x double> %foldExtExtBinop271, %foldExtExtBinop269 ; 2 uses
  %i.qv = extractelement <2 x double> %foldExtExtBinop273, i64 0
  %i.qw = fmul <2 x double> %i.ps, %i.qe          ; 2 uses
  %i.qx = fmul <2 x double> %i.ps, %i.qg          ; 2 uses
  %i.qy = fneg double %i.qt
  %i.qz = fmul double %i.qt, %i.qy
  %i.ra = call double @llvm.fmuladd.f64(double %i.qp, double %i.qv, double %i.qz)
  %i.rb = fsub <2 x double> %.sroa.0204.8.vec.insert, %i.ox ; 2 uses
  %i.rc = fsub double %i.ni, %i.ny
  %i.rd = fmul <2 x double> %i.rb, %i.qe          ; 2 uses
  %i.re = fmul <2 x double> %i.rb, %i.qg          ; 2 uses
  %i.rf = shufflevector <2 x double> %i.qx, <2 x double> %i.re, <2 x i32> <i32 0, i32 2>
  %i.rg = shufflevector <2 x double> %i.qx, <2 x double> %i.re, <2 x i32> <i32 1, i32 3>
  %i.rh = fadd <2 x double> %i.rf, %i.rg
  %i.ri = shufflevector <2 x double> %i.oi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rj = insertelement <2 x double> poison, double %i.pv, i64 0
  %i.rk = insertelement <2 x double> %i.rj, double %i.rc, i64 1 ; 2 uses
  %i.rl = fmul <2 x double> %i.ri, %i.rk
  %i.rm = fadd <2 x double> %i.rl, %i.rh          ; 2 uses
  %i.rn = shufflevector <2 x double> %i.qw, <2 x double> %i.rd, <2 x i32> <i32 0, i32 2>
  %i.ro = shufflevector <2 x double> %i.qw, <2 x double> %i.rd, <2 x i32> <i32 1, i32 3>
  %i.rp = fadd <2 x double> %i.rn, %i.ro
  %i.rq = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rr = fmul <2 x double> %i.rk, %i.rq
  %i.rs = fadd <2 x double> %i.rr, %i.rp          ; 2 uses
  %i.rt = fneg <2 x double> %i.rs
  %i.ru = insertelement <2 x double> poison, double %i.qt, i64 0
  %i.rv = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rw = fmul <2 x double> %i.rv, %i.rt
  %i.rx = insertelement <2 x double> poison, double %i.qp, i64 0
  %i.ry = shufflevector <2 x double> %i.rx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> %i.rm, <2 x double> %i.rw)
  %i.sa = fneg <2 x double> %i.rm
  %i.sb = fmul <2 x double> %i.rv, %i.sa
  %i.sc = shufflevector <2 x double> %foldExtExtBinop273, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> %i.rs, <2 x double> %i.sb)
  %i.se = insertelement <2 x double> poison, double %i.ra, i64 0
  %i.sf = shufflevector <2 x double> %i.se, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sg = fdiv <2 x double> %i.sd, %i.sf          ; 10 uses
  %i.sh = fdiv <2 x double> %i.rz, %i.sf          ; 14 uses
  %i.si = extractelement <2 x double> %i.sg, i64 0 ; 5 uses
  %i.sj = fcmp ult double %i.si, 0.000000e+00
  br i1 %i.sj, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i89, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sk = extractelement <2 x double> %i.sh, i64 0
  %i.sl = fcmp oge double %i.sk, 0.000000e+00
  %foldExtExtBinop275 = fadd <2 x double> %i.sg, %i.sh
  %i.sm = extractelement <2 x double> %foldExtExtBinop275, i64 0
  %i.sn = fcmp ole double %i.sm, 1.000000e+00
  %or.cond.i.i88 = and i1 %i.sl, %i.sn
  br i1 %or.cond.i.i88, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i89

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i89: ; preds = %bb.ad, %bb.ac
  %i.so = extractelement <2 x double> %i.sg, i64 1 ; 4 uses
  %i.sp = fcmp ult double %i.so, 0.000000e+00
  br i1 %i.sp, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i93, label %bb.ae

bb.ae:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i89
  %i.sq = extractelement <2 x double> %i.sh, i64 1 ; 2 uses
  %i.sr = fcmp oge double %i.sq, 0.000000e+00
  %i.ss = fadd double %i.so, %i.sq
  %i.st = fcmp ole double %i.ss, 1.000000e+00
  %or.cond69.i.i92 = and i1 %i.sr, %i.st
  br i1 %or.cond69.i.i92, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i93

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i93: ; preds = %bb.ae, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i89
  %i.su = extractelement <2 x double> %i.sh, i64 0 ; 5 uses
  %i.sv = fcmp oeq double %i.su, 0.000000e+00
  %i.sw = extractelement <2 x double> %i.sh, i64 1 ; 2 uses
  %i.sx = fcmp oeq double %i.sw, 0.000000e+00
  %or.cond.i.i.i94 = or i1 %i.sx, %i.sv
  br i1 %or.cond.i.i.i94, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i95

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i95: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i93
  %i.sy = bitcast double %i.su to i64
  %i.sz = bitcast double %i.sw to i64
  %i.ta = xor i64 %i.sy, %i.sz
  %i.tb = icmp slt i64 %i.ta, 0
  br i1 %i.tb, label %bb.af, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96

bb.af:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i95
  %i.tc = shufflevector <2 x double> %i.sh, <2 x double> %i.sg, <2 x i32> <i32 0, i32 3>
  %i.td = shufflevector <2 x double> %i.sh, <2 x double> %i.sg, <2 x i32> <i32 1, i32 2>
  %i.te = fsub <2 x double> %i.tc, %i.td          ; 2 uses
  %i.tf = extractelement <2 x double> %i.te, i64 0
  %i.tg = fdiv double %i.su, %i.tf
  %i.th = extractelement <2 x double> %i.te, i64 1
  %i.ti = call double @llvm.fmuladd.f64(double %i.tg, double %i.th, double %i.si) ; 2 uses
  %i.tj = fcmp ult double %i.ti, 0.000000e+00
  %i.tk = fcmp ugt double %i.ti, 1.000000e+00
  %or.cond.not.i.i106 = or i1 %i.tj, %i.tk
  br i1 %or.cond.not.i.i106, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96: ; preds = %bb.af, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i95, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i93
  %i.tl = fcmp oeq double %i.si, 0.000000e+00
  %i.tm = fcmp oeq double %i.so, 0.000000e+00
  %or.cond.i57.i.i97 = or i1 %i.tl, %i.tm
  br i1 %or.cond.i57.i.i97, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i98

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i98: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96
  %i.tn = bitcast double %i.si to i64
  %i.to = bitcast double %i.so to i64
  %i.tp = xor i64 %i.to, %i.tn
  %i.tq = icmp slt i64 %i.tp, 0
  br i1 %i.tq, label %bb.ag, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99

bb.ag:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i98
  %i.tr = shufflevector <2 x double> %i.sg, <2 x double> %i.sh, <2 x i32> <i32 0, i32 3>
  %i.ts = shufflevector <2 x double> %i.sg, <2 x double> %i.sh, <2 x i32> <i32 1, i32 2>
  %i.tt = fsub <2 x double> %i.tr, %i.ts          ; 2 uses
  %i.tu = extractelement <2 x double> %i.tt, i64 0
  %i.tv = fdiv double %i.si, %i.tu
  %i.tw = extractelement <2 x double> %i.tt, i64 1
  %i.tx = call double @llvm.fmuladd.f64(double %i.tv, double %i.tw, double %i.su) ; 2 uses
  %i.ty = fcmp ult double %i.tx, 0.000000e+00
  %i.tz = fcmp ugt double %i.tx, 1.000000e+00
  %or.cond5.not.i.i105 = or i1 %i.ty, %i.tz
  br i1 %or.cond5.not.i.i105, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99: ; preds = %bb.ag, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i98, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96
  %i.ua = fadd <2 x double> %i.sg, %i.sh
  %i.ub = fadd <2 x double> %i.ua, splat (double -1.000000e+00) ; 3 uses
  %i.uc = extractelement <2 x double> %i.ub, i64 0
  %i.ud = fcmp oeq double %i.uc, 0.000000e+00
  %i.ue = extractelement <2 x double> %i.ub, i64 1
  %i.uf = fcmp oeq double %i.ue, 0.000000e+00
  %or.cond.i60.i.i100 = or i1 %i.uf, %i.ud
  br i1 %or.cond.i60.i.i100, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.thread.i.i102, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.i.i101

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.i.i101: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99
  %20 = bitcast <2 x double> %i.ub to <2 x i64>   ; 2 uses
  %shift277 = shufflevector <2 x i64> %20, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop278 = xor <2 x i64> %shift277, %20
  %21 = extractelement <2 x i64> %foldExtExtBinop278, i64 0
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %bb.ah, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.thread.i.i102

bb.ah:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.i.i101
  %i.ug = insertelement <2 x double> %i.sg, double 1.000000e+00, i64 0
  %i.uh = shufflevector <2 x double> %i.sg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ui = fsub <2 x double> %i.ug, %i.uh          ; 2 uses
  %i.uj = fsub <2 x double> %i.ui, %i.sh
  %i.uk = fadd <2 x double> %i.ui, %i.sh
  %i.ul = extractelement <2 x double> %i.uj, i64 0
  %i.um = shufflevector <2 x double> %i.uk, <2 x double> %i.sh, <2 x i32> <i32 1, i32 3>
  %i.un = shufflevector <2 x double> %i.sh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uo = fsub <2 x double> %i.um, %i.un          ; 2 uses
  %i.up = extractelement <2 x double> %i.uo, i64 0
  %i.uq = fdiv double %i.ul, %i.up
  %i.ur = extractelement <2 x double> %i.uo, i64 1
  %i.us = call double @llvm.fmuladd.f64(double %i.uq, double %i.ur, double %i.su) ; 2 uses
  %i.ut = fcmp ult double %i.us, 0.000000e+00
  %i.uu = fcmp ugt double %i.us, 1.000000e+00
  %or.cond7.not.i.i104 = or i1 %i.ut, %i.uu
  br i1 %or.cond7.not.i.i104, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.thread.i.i102, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.thread.i.i102: ; preds = %bb.ah, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.i.i101, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.thread.i.i102, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.v, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87, %bb.u
  %.1 = phi i1 [ %i.ns, %bb.u ], [ false, %bb.v ], [ false, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87 ], [ true, %bb.ad ], [ true, %bb.ae ], [ false, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.thread.i.i102 ], [ true, %bb.ah ], [ true, %bb.ag ], [ true, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread: ; preds = %bb.r, %bb.s, %bb.t, %bb.q, %bb.p, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit
  %.2 = phi i1 [ true, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit ], [ %.1, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107 ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  ret i1 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !11, i64 0, !13, i64 8, !13, i64 16}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !17, i64 0, !13, i64 8, !13, i64 16}
!17 = !{!"p1 double", !12, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!20 = distinct !{!20, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!21 = !{!16, !13, i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !7, i64 0}
!24 = !{!10, !13, i64 8}
!25 = !{!26, !17, i64 0}
!26 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEE", !17, i64 0, !27, i64 8, !28, i64 16}
!27 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!28 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !13, i64 0}
!29 = !{!30, !31, i64 24}
!30 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEE", !26, i64 0, !31, i64 24, !28, i64 32, !28, i64 40, !13, i64 48}
!31 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !12, i64 0}
!32 = !{}
!33 = !{i64 8}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"bool", !7, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE: argument 0"}
!40 = distinct !{!40, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!43 = distinct !{!43, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!46 = distinct !{!46, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!49 = distinct !{!49, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE: argument 0"}
!52 = distinct !{!52, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!55 = distinct !{!55, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!58 = distinct !{!58, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!61 = distinct !{!61, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!62 = !{!63, !17, i64 0}
!63 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EEE", !17, i64 0, !13, i64 8}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE: argument 0"}
!66 = distinct !{!66, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!69 = distinct !{!69, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!72 = distinct !{!72, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!75 = distinct !{!75, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE: argument 0"}
!78 = distinct !{!78, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!81 = distinct !{!81, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!84 = distinct !{!84, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!87 = distinct !{!87, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!88 = !{!89, !17, i64 0}
!89 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEE", !17, i64 0, !27, i64 8, !28, i64 16}
!90 = !{!91, !31, i64 24}
!91 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEE", !92, i64 0, !31, i64 24, !28, i64 32, !28, i64 40, !13, i64 48}
!92 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEE", !89, i64 0}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE: argument 0"}
!95 = distinct !{!95, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!98 = distinct !{!98, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!101 = distinct !{!101, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!104 = distinct !{!104, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE: argument 0"}
!107 = distinct !{!107, !"_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE5crossIS8_EENS9_25cross_product_return_typeIT_E4typeERKNS0_ISC_EE"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!110 = distinct !{!110, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv: argument 0"}
!113 = distinct !{!113, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEES7_EEE4evalEv"}
end_hunk_2
