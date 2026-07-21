inline.NumInlined: 1656
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK6Assimp3IFC8TempMesh21ComputePolygonNormalsERSt6vectorI10aiVector3tIdESaIS4_EEbm:bb.a
  %i.ct = load double, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store double %i.ct, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cw = load double, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store double %i.cw, ptr %i.cx, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.cy = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.cz = load ptr, ptr %i.ab, align 8
  %.not.i45 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  %i.da = load ptr, ptr %i.n, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  store ptr %i.db, ptr %i.n, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60

bb.l:                                             ; preds = %._crit_edge
  %i.dc = load ptr, ptr %1, align 8               ; 5 uses
  %i.dd = ptrtoint ptr %i.cy to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 4 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775800
  br i1 %i.dg, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i46

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i46: ; preds = %bb.l
  %i.dh = sdiv exact i64 %i.df, 24                ; 3 uses
  %.sroa.speculated.i.i.i47 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i47, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.di, i64 384307168202282325)
  %i.dl = select i1 %i.dj, i64 384307168202282325, i64 %i.dk ; 3 uses
  %.not.i.i.i48 = icmp ne i64 %i.dl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i48)
  %i.dm = mul nuw nsw i64 %i.dl, 24
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #26
          to label %.noexc59 unwind label %.loopexit ; 5 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i46
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.df
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i.i49 = icmp eq ptr %i.dc, %i.cy
  br i1 %.not10.i.i.i.i.i49, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i54, label %.lr.ph.i.i.i.i.i50

.lr.ph.i.i.i.i.i50:                               ; preds = %.noexc59, %.lr.ph.i.i.i.i.i50
  %.012.i.i.i.i.i51 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i50 ], [ %i.dn, %.noexc59 ] ; 2 uses
  %.0911.i.i.i.i.i52 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i50 ], [ %i.dc, %.noexc59 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i51, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i52, i64 24, i1 false), !alias.scope !72
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i52, i64 24 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i51, i64 24 ; 2 uses
  %.not.i.i.i.i.i53 = icmp eq ptr %i.dp, %i.cy
  br i1 %.not.i.i.i.i.i53, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i54, label %.lr.ph.i.i.i.i.i50, !llvm.loop !65

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i54: ; preds = %.lr.ph.i.i.i.i.i50, %.noexc59
  %.0.lcssa.i.i.i.i.i55 = phi ptr [ %i.dn, %.noexc59 ], [ %i.dq, %.lr.ph.i.i.i.i.i50 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i55, i64 24 ; 2 uses
  %.not.i22.i.i56 = icmp eq ptr %i.dc, null
  br i1 %.not.i22.i.i56, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i57, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i54
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.df) #27
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i57

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i57: ; preds = %bb.m, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i54
  store ptr %i.dn, ptr %1, align 8
  store ptr %i.dr, ptr %i.n, align 8
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.dl
  store ptr %i.ds, ptr %i.ab, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60

bb.n:                                             ; preds = %bb.n, %.lr.ph108.new
  %.033107 = phi i64 [ 0, %.lr.ph108.new ], [ %i.en, %bb.n ] ; 3 uses
  %.034106 = phi i64 [ 0, %.lr.ph108.new ], [ %i.eo, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph108.new ], [ %niter.next.1, %bb.n ]
  %i.dt = getelementptr [24 x i8], ptr %i.bq, i64 %.034106 ; 3 uses
  %i.du = load double, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.033107 ; 3 uses
  store double %i.du, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load double, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store double %i.dx, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ea = load double, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store double %i.ea, ptr %i.eb, align 8
  %i.ec = getelementptr [24 x i8], ptr %i.bq, i64 %.034106 ; 3 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 24
  %i.ee = load double, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.033107 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  store double %i.ee, ptr %i.eg, align 8
  %i.eh = getelementptr i8, ptr %i.ec, i64 32
  %i.ei = load double, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  store double %i.ei, ptr %i.ej, align 8
  %i.ek = getelementptr i8, ptr %i.ec, i64 40
  %i.el = load double, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  store double %i.el, ptr %i.em, align 8
  %i.en = add nuw nsw i64 %.033107, 8             ; 2 uses
  %i.eo = add nuw nsw i64 %.034106, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !76

_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i57, %bb.k
  %i.ep = phi ptr [ %i.dr, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i57 ], [ %i.db, %bb.k ] ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -24
  %i.er = load i32, ptr %.sroa.080.1110, align 4  ; 3 uses
  %i.es = shl nsw i32 %i.er, 2                    ; 2 uses
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.et
  %i.ev = add i32 %i.es, 4
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ew
  %i.ey = load <2 x double>, ptr %i.k, align 8
  store <2 x double> %i.ey, ptr %i.eu, align 8
  %i.ez = load <2 x double>, ptr %i.bi, align 8
  store <2 x double> %i.ez, ptr %i.ex, align 8
  %i.fa = load double, ptr %i.bh, align 8
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.et
  store double %i.fa, ptr %i.fb, align 8
  %i.fc = load double, ptr %i.bk, align 8
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ew
  store double %i.fc, ptr %i.fd, align 8
  %i.fe = icmp sgt i32 %i.er, 0
  br i1 %i.fe, label %.lr.ph.i61, label %_ZN6Assimp12NewellNormalILi4ELi4ELi4EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit

.lr.ph.i61:                                       ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60, %.lr.ph.i61
  %.078.i = phi i32 [ %i.ge, %.lr.ph.i61 ], [ 0, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ]
  %.05477.i = phi ptr [ %i.gd, %.lr.ph.i61 ], [ %i.bl, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.05576.i = phi ptr [ %i.gc, %.lr.ph.i61 ], [ %i.bh, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.05774.i = phi ptr [ %i.gb, %.lr.ph.i61 ], [ %i.bm, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.05873.i = phi ptr [ %i.ga, %.lr.ph.i61 ], [ %i.l, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.05972.i = phi ptr [ %i.fz, %.lr.ph.i61 ], [ %i.bj, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.06071.i = phi ptr [ %i.fy, %.lr.ph.i61 ], [ %i.bn, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.06170.i = phi ptr [ %i.fx, %.lr.ph.i61 ], [ %i.k, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.06269.i = phi ptr [ %i.fw, %.lr.ph.i61 ], [ %i.bi, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ] ; 2 uses
  %.06566.i = phi double [ %i.fk, %.lr.ph.i61 ], [ 0.000000e+00, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ]
  %i.ff = phi <2 x double> [ %i.fv, %.lr.ph.i61 ], [ zeroinitializer, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ]
  %i.fg = load double, ptr %.06269.i, align 8
  %i.fh = load double, ptr %.05774.i, align 8
  %i.fi = load double, ptr %.05873.i, align 8
  %i.fj = fsub double %i.fh, %i.fi
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fj, double %.06566.i) ; 2 uses
  %i.fl = load double, ptr %.05477.i, align 8
  %i.fm = load double, ptr %.05576.i, align 8
  %i.fn = load double, ptr %.06071.i, align 8
  %i.fo = load double, ptr %.06170.i, align 8
  %i.fp = load <2 x double>, ptr %.05972.i, align 8
  %i.fq = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fn, i64 1
  %i.fs = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.fo, i64 1
  %i.fu = fsub <2 x double> %i.fr, %i.ft
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fu, <2 x double> %i.ff) ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.06269.i, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %.06170.i, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %.06071.i, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %.05972.i, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %.05873.i, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.05774.i, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %.05576.i, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %.05477.i, i64 32
  %i.ge = add nuw nsw i32 %.078.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ge, %i.er
  br i1 %exitcond.not.i, label %_ZN6Assimp12NewellNormalILi4ELi4ELi4EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit, label %.lr.ph.i61, !llvm.loop !77

_ZN6Assimp12NewellNormalILi4ELi4ELi4EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit: ; preds = %.lr.ph.i61, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60
  %.065.lcssa.i = phi double [ 0.000000e+00, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ], [ %i.fk, %.lr.ph.i61 ]
  %i.gf = phi <2 x double> [ zeroinitializer, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit60 ], [ %i.fv, %.lr.ph.i61 ]
  store <2 x double> %i.gf, ptr %i.eq, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ep, i64 -8
  store double %.065.lcssa.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.g, %_ZN6Assimp12NewellNormalILi4ELi4ELi4EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.080.1110, i64 4 ; 2 uses
  %i.gh = load i32, ptr %.sroa.080.1110, align 4
  %i.gi = zext i32 %i.gh to i64
  %i.gj = add i64 %.032111, %i.gi
  %.not95 = icmp eq ptr %i.gg, %i.e
  br i1 %.not95, label %._crit_edge114, label %bb.e, !llvm.loop !78

._crit_edge114:                                   ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit
  br i1 %2, label %bb.o, label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.o:                                             ; preds = %._crit_edge114
  %i.gk = load ptr, ptr %1, align 8               ; 2 uses
  %i.gl = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not96115 = icmp eq ptr %i.gk, %i.gl
  br i1 %.not96115, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.o, %_ZN10aiVector3tIdE9NormalizeEv.exit
  %.sroa.065.0116 = phi ptr [ %i.gt, %_ZN10aiVector3tIdE9NormalizeEv.exit ], [ %i.gk, %bb.o ] ; 5 uses
  %4 = load double, ptr %.sroa.065.0116, align 8  ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.065.0116, i64 8 ; 2 uses
  %6 = load double, ptr %5, align 8               ; 3 uses
  %7 = fmul double %6, %6
  %i.gm = tail call double @llvm.fmuladd.f64(double %4, double %4, double %7)
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.065.0116, i64 16 ; 2 uses
  %i.go = load double, ptr %i.gn, align 8         ; 3 uses
  %i.gp = tail call noundef double @llvm.fmuladd.f64(double %i.go, double %i.go, double %i.gm) ; 2 uses
  %i.gq = fcmp oeq double %i.gp, 0.000000e+00
  br i1 %i.gq, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %.lr.ph118
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.gp)
  %i.gr = fdiv double 1.000000e+00, %sqrt.i.i     ; 3 uses
  %8 = fmul double %4, %i.gr
  store double %8, ptr %.sroa.065.0116, align 8
  %9 = fmul double %6, %i.gr
  store double %9, ptr %5, align 8
  %i.gs = fmul double %i.go, %i.gr
  store double %i.gs, ptr %i.gn, align 8
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %.lr.ph118
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.065.0116, i64 24 ; 2 uses
  %.not96 = icmp eq ptr %i.gt, %i.gl
  br i1 %.not96, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph118

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit, %bb.o, %._crit_edge114
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #27
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit64:                  ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.co, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiVector3t) align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i64 %2, 3                            ; 2 uses
  %i.b = add i64 %i.a, 6                          ; 4 uses
  %i.c = icmp ugt i64 %i.b, 1152921504606846975
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %.noexc20

.noexc20:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 3
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #26 ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b ; 2 uses
  store double 0.000000e+00, ptr %i.e, align 8
  %i.g = add nsw i64 %i.a, 5                      ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc20
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc20, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15.0 = phi ptr [ %i.f, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.f, %.noexc20 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.024.0 = phi ptr [ %i.e, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.e, %.noexc20 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 17 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %xtraiter = and i64 %2, 1
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01536.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cd, %._crit_edge.loopexit.unr-lcssa ]
  %.01635.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod49 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.01635.epil.init ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %.sroa.024.0, i64 %.01536.epil.init ; 2 uses
  %i.m = load <2 x double>, ptr %i.k, align 8
  store <2 x double> %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load double, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.l, i64 16
  store double %i.o, ptr %i.p, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.q = trunc i64 %2 to i32                      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 16 ; 4 uses
  %i.t = load double, ptr %.sroa.024.0, align 8
  %i.u = mul nsw i32 %i.q, 3                      ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.sroa.024.0, i64 %i.v
  store double %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 24 ; 2 uses
  %i.y = load double, ptr %i.x, align 8
  %i.z = add i32 %i.u, 3
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.024.0, i64 %i.aa
  store double %i.y, ptr %i.ab, align 8
  %i.ac = load double, ptr %i.r, align 8
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.v
  store double %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 32 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aa
  store double %i.af, ptr %i.ag, align 8
  %i.ah = load double, ptr %i.s, align 8
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  store double %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 40
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aa
  store double %i.ak, ptr %i.al, align 8
  %i.am = icmp sgt i32 %i.q, 0
  br i1 %i.am, label %.lr.ph.preheader.i, label %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 48
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.078.i = phi i32 [ %i.bp, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.05477.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %i.an, %.lr.ph.preheader.i ] ; 2 uses
  %.05576.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.s, %.lr.ph.preheader.i ] ; 2 uses
  %.05774.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %i.ao, %.lr.ph.preheader.i ] ; 2 uses
  %.05873.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %i.r, %.lr.ph.preheader.i ] ; 2 uses
  %.05972.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.ae, %.lr.ph.preheader.i ] ; 2 uses
  %.06071.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.ap, %.lr.ph.preheader.i ] ; 2 uses
  %.06170.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %.sroa.024.0, %.lr.ph.preheader.i ] ; 2 uses
  %.06269.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.06566.i = phi double [ %i.av, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %i.aq = phi <2 x double> [ %i.bg, %.lr.ph.i ], [ zeroinitializer, %.lr.ph.preheader.i ]
  %i.ar = load double, ptr %.06269.i, align 8
  %i.as = load double, ptr %.05774.i, align 8
  %i.at = load double, ptr %.05873.i, align 8
  %i.au = fsub double %i.as, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.au, double %.06566.i) ; 2 uses
  %i.aw = load double, ptr %.05477.i, align 8
  %i.ax = load double, ptr %.05576.i, align 8
  %i.ay = load double, ptr %.06071.i, align 8
  %i.az = load double, ptr %.06170.i, align 8
  %i.ba = load <2 x double>, ptr %.05972.i, align 8
  %i.bb = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ay, i64 1
  %i.bd = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.az, i64 1
  %i.bf = fsub <2 x double> %i.bc, %i.be
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bf, <2 x double> %i.aq) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.06269.i, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %.06170.i, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %.06071.i, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %.05972.i, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.05873.i, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.05774.i, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %.05576.i, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %.05477.i, i64 24
  %i.bp = add nuw nsw i32 %.078.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bp, %i.q
  br i1 %exitcond.not.i, label %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit, label %.lr.ph.i, !llvm.loop !79

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01536 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 3 uses
  %.01635 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cf, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.01635 ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %.sroa.024.0, i64 %.01536 ; 2 uses
  %i.bs = load <2 x double>, ptr %i.bq, align 8
  store <2 x double> %i.bs, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load double, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %i.br, i64 16
  store double %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.01635 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = getelementptr [8 x i8], ptr %.sroa.024.0, i64 %.01536 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 24
  %i.ca = load <2 x double>, ptr %i.bx, align 8
  store <2 x double> %i.ca, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load double, ptr %i.cb, align 8
  %i.cd = add i64 %.01536, 6                      ; 2 uses
  %i.ce = getelementptr i8, ptr %i.by, i64 40
  store double %i.cc, ptr %i.ce, align 8
  %i.cf = add nuw i64 %.01635, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !80

_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit: ; preds = %.lr.ph.i, %._crit_edge
  %.065.lcssa.i = phi double [ 0.000000e+00, %._crit_edge ], [ %i.av, %.lr.ph.i ] ; 5 uses
  %i.cg = phi <2 x double> [ zeroinitializer, %._crit_edge ], [ %i.bg, %.lr.ph.i ] ; 6 uses
  br i1 %3, label %bb.b, label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.b:                                             ; preds = %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit
  %foldExtExtBinop = fmul <2 x double> %i.cg, %i.cg
  %i.ch = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ci = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double %i.ch)
  %i.ck = tail call noundef double @llvm.fmuladd.f64(double %.065.lcssa.i, double %.065.lcssa.i, double %i.cj) ; 2 uses
  %i.cl = fcmp oeq double %i.ck, 0.000000e+00
  br i1 %i.cl, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %bb.b
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ck)
  %i.cm = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.cn = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.cg, %i.co
  %i.cq = fmul double %.065.lcssa.i, %i.cm
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %bb.b, %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit
  %.sroa.11.0 = phi double [ %.065.lcssa.i, %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit ], [ %.065.lcssa.i, %bb.b ], [ %i.cq, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %i.cr = phi <2 x double> [ %i.cg, %_ZN6Assimp12NewellNormalILi3ELi3ELi3EdEEvR10aiVector3tIT2_EiPS2_S5_S5_.exit ], [ %i.cg, %bb.b ], [ %i.cp, %_ZN10aiVector3tIdEdVEd.exit.i ]
  store <2 x double> %i.cr, ptr %0, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %i.cs = ptrtoint ptr %.sroa.15.0 to i64
  %i.ct = ptrtoint ptr %.sroa.024.0 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.0, i64 noundef %i.cu) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp3IFC8TempMesh24ComputeLastPolygonNormalEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiVector3t) align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = sub nsw i64 %i.g, %i.l
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.m
  tail call void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind writable sret(%class.aiVector3t) align 8 %0, ptr noundef nonnull %i.n, i64 noundef %i.l, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC8TempMesh20FixupFaceOrientationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Rb_tree<aiVector3t<double>, std::pair<const aiVector3t<double>, std::vector<unsigned long>>, std::_Select1st<std::pair<const aiVector3t<double>, std::vector<unsigned long>>>, Assimp::IFC::CompareVector>::_Auto_node", align 8 ; 6 uses
  %2 = alloca %"struct.std::_Rb_tree<aiVector3t<double>, std::pair<const aiVector3t<double>, std::vector<unsigned long>>, std::_Select1st<std::pair<const aiVector3t<double>, std::vector<unsigned long>>>, Assimp::IFC::CompareVector>::_Auto_node", align 8 ; 6 uses
  %3 = alloca %"struct.std::_Rb_tree<aiVector3t<double>, std::pair<const aiVector3t<double>, std::vector<unsigned long>>, std::_Select1st<std::pair<const aiVector3t<double>, std::vector<unsigned long>>>, Assimp::IFC::CompareVector>::_Auto_node", align 8 ; 6 uses
  %4 = alloca %"class.std::map", align 8          ; 22 uses
  %5 = alloca %class.aiVector3t, align 8          ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !noalias !81  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !81 ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNK6Assimp3IFC8TempMesh6CenterEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.02.06.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = phi double [ %i.h, %.lr.ph.i.i ], [ 0.000000e+00, %bb.a ]
  %i.f = phi <2 x double> [ %i.k, %.lr.ph.i.i ], [ zeroinitializer, %bb.a ]
  %i.g = load double, ptr %.sroa.02.06.i.i, align 8, !noalias !84
  %i.h = fadd double %i.e, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8
  %i.j = load <2 x double>, ptr %i.i, align 8, !noalias !84
  %i.k = fadd <2 x double> %i.f, %i.j             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEES3_ET0_T_SB_SA_.exit.i, label %.lr.ph.i.i, !llvm.loop !52

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEES3_ET0_T_SB_SA_.exit.i: ; preds = %.lr.ph.i.i
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = ptrtoint ptr %i.a to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = uitofp i64 %i.p to double
  %i.r = fdiv double 1.000000e+00, %i.q           ; 2 uses
  %i.s = fmul double %i.r, %i.h
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.k
  br label %_ZNK6Assimp3IFC8TempMesh6CenterEv.exit

_ZNK6Assimp3IFC8TempMesh6CenterEv.exit:           ; preds = %bb.a, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEES3_ET0_T_SB_SA_.exit.i
  %.sroa.0518.0 = phi double [ %i.s, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEES3_ET0_T_SB_SA_.exit.i ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.w = phi <2 x double> [ %i.v, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEES3_ET0_T_SB_SA_.exit.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = load ptr, ptr %i.x, align 8             ; 9 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 6 uses
  %i.af = icmp ugt i64 %i.ae, 1152921504606846975
  br i1 %i.af, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZNK6Assimp3IFC8TempMesh6CenterEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNK6Assimp3IFC8TempMesh6CenterEv.exit
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %.noexc180

._crit_edge.thread:                               ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ag, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ag, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 0, ptr %i.ak, align 8
  br label %._crit_edge619

.noexc180:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.al = shl nuw nsw i64 %i.ad, 1
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #26 ; 13 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ae ; 4 uses
  store i64 0, ptr %i.am, align 8
  %i.ao = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc180
  %xtraiter = and i64 %i.ae, 3                    ; 3 uses
  %i.aq = icmp ult i64 %i.ae, 4
  br i1 %i.aq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ae, 1152921504606846972
  br label %.lr.ph

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc180
  %i.ar = getelementptr i8, ptr %i.am, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  br label %.lr.ph.preheader

.preheader571.lr.ph.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader571.lr.ph, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader571.lr.ph.unr-lcssa, %.lr.ph.preheader
  %.0142614.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ca, %.preheader571.lr.ph.unr-lcssa ]
  %.0143613.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cb, %.preheader571.lr.ph.unr-lcssa ]
  %lcmp.mod862 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod862)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0142614.epil = phi i64 [ %i.aw, %.lr.ph.epil ], [ %.0142614.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0143613.epil = phi i64 [ %i.ax, %.lr.ph.epil ], [ %.0143613.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0143613.epil
  store i64 %.0142614.epil, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.0143613.epil
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = add i64 %.0142614.epil, %i.av
  %i.ax = add nuw i64 %.0143613.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader571.lr.ph, label %.lr.ph.epil, !llvm.loop !89

.preheader571.lr.ph:                              ; preds = %.lr.ph.epil, %.preheader571.lr.ph.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ay, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ay, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader571

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0142614 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ca, %.lr.ph ] ; 2 uses
  %.0143613 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cb, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0143613
  store i64 %.0142614, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.0143613
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add i64 %.0142614, %i.bh                ; 2 uses
  %i.bj = or disjoint i64 %.0143613, 1            ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bj
  store i64 %i.bi, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bj
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add i64 %i.bi, %i.bn                    ; 2 uses
  %i.bp = or disjoint i64 %.0143613, 2            ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bp
  store i64 %i.bo, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bp
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add i64 %i.bo, %i.bt                    ; 2 uses
  %i.bv = or disjoint i64 %.0143613, 3            ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bv
  store i64 %i.bu, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = zext i32 %i.by to i64
  %i.ca = add i64 %i.bu, %i.bz                    ; 2 uses
  %i.cb = add nuw i64 %.0143613, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader571.lr.ph.unr-lcssa, label %.lr.ph, !llvm.loop !90

.preheader571:                                    ; preds = %.preheader571.lr.ph, %._crit_edge617
  %i.cc = phi ptr [ %i.aa, %.preheader571.lr.ph ], [ %i.cx, %._crit_edge617 ] ; 2 uses
  %i.cd = phi ptr [ %i.z, %.preheader571.lr.ph ], [ %i.cy, %._crit_edge617 ]
  %storemerge618 = phi i64 [ 0, %.preheader571.lr.ph ], [ %i.cz, %._crit_edge617 ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %storemerge618
  %i.cf = load i32, ptr %i.ce, align 4
  %.not660 = icmp eq i32 %i.cf, 0
  br i1 %.not660, label %._crit_edge617, label %.lr.ph616

.lr.ph616:                                        ; preds = %.preheader571
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %storemerge618
  br label %bb.d

._crit_edge619.loopexit:                          ; preds = %._crit_edge617
  %.pre695 = load ptr, ptr %i.b, align 8
  %.pre696 = load ptr, ptr %0, align 8
  br label %._crit_edge619

._crit_edge619:                                   ; preds = %._crit_edge.thread, %._crit_edge619.loopexit
  %i.ch = phi ptr [ %i.bc, %._crit_edge619.loopexit ], [ %i.ak, %._crit_edge.thread ] ; 4 uses
  %i.ci = phi ptr [ %i.az, %._crit_edge619.loopexit ], [ %i.ah, %._crit_edge.thread ] ; 6 uses
  %i.cj = phi ptr [ %i.ay, %._crit_edge619.loopexit ], [ %i.ag, %._crit_edge.thread ] ; 10 uses
  %.sroa.21516.0769777 = phi ptr [ %i.an, %._crit_edge619.loopexit ], [ null, %._crit_edge.thread ] ; 4 uses
  %.sroa.0501.0771775 = phi ptr [ %i.am, %._crit_edge619.loopexit ], [ null, %._crit_edge.thread ] ; 11 uses
  %i.ck = phi ptr [ %i.cx, %._crit_edge619.loopexit ], [ %i.aa, %._crit_edge.thread ] ; 2 uses
  %i.cl = phi ptr [ %i.cy, %._crit_edge619.loopexit ], [ %i.z, %._crit_edge.thread ] ; 2 uses
  %i.cm = phi ptr [ %.pre696, %._crit_edge619.loopexit ], [ %i.a, %._crit_edge.thread ] ; 2 uses
  %i.cn = phi ptr [ %.pre695, %._crit_edge619.loopexit ], [ %i.c, %._crit_edge.thread ] ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = sdiv exact i64 %i.cq, 24                ; 3 uses
  %i.cs = icmp ugt i64 %i.cr, 1152921504606846975
  br i1 %i.cs, label %bb.b, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181

bb.b:                                             ; preds = %._crit_edge619
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
          to label %.noexc184 unwind label %bb.ab

.noexc184:                                        ; preds = %bb.b
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181: ; preds = %._crit_edge619
  %.not.i.i.i.i182 = icmp eq ptr %i.cn, %i.cm
  br i1 %.not.i.i.i.i182, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i181
  %i.ct = shl nuw nsw i64 %i.cr, 3                ; 2 uses
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #26
          to label %.noexc185 unwind label %bb.ab ; 3 uses

.noexc185:                                        ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cu, i8 -1, i64 %i.ct, i1 false)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cr
  %i.cw = ptrtoint ptr %i.cv to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

._crit_edge617.loopexit:                          ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre = load ptr, ptr %i.y, align 8
  br label %._crit_edge617

._crit_edge617:                                   ; preds = %._crit_edge617.loopexit, %.preheader571
  %i.cx = phi ptr [ %i.hh, %._crit_edge617.loopexit ], [ %i.cc, %.preheader571 ] ; 3 uses
  %i.cy = phi ptr [ %.pre, %._crit_edge617.loopexit ], [ %i.cd, %.preheader571 ] ; 3 uses
  %i.cz = add nuw i64 %storemerge618, 1           ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC8TempMesh20FixupFaceOrientationEv:bb.a
  %i.ns = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %.noexc370 unwind label %bb.bq ; 9 uses

.noexc370:                                        ; preds = %.critedge.i241
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nt, ptr noundef nonnull align 8 dereferenceable(24) %i.me, i64 24, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nu, i8 0, i64 24, i1 false)
  store ptr %i.ns, ptr %i.ho, align 8
  %i.nv = invoke { ptr, ptr } @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %.08.lcssa.i.i.i11.i242, ptr noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %bb.ba unwind label %bb.bg     ; 2 uses

bb.ba:                                            ; preds = %.noexc370
  %i.nw = extractvalue { ptr, ptr } %i.nv, 0      ; 2 uses
  %i.nx = extractvalue { ptr, ptr } %i.nv, 1      ; 6 uses
  %.not.i360 = icmp eq ptr %i.nx, null
  br i1 %.not.i360, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i.i361 = icmp ne ptr %i.nw, null
  %i.ny = icmp eq ptr %i.nx, %i.cj
  %or.cond.i.i.i362 = or i1 %.not.i.i.i361, %i.ny
  br i1 %or.cond.i.i.i362, label %.thread.i366, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %i.oa = load double, ptr %i.nt, align 8, !noalias !119
  %i.ob = load double, ptr %i.nz, align 8, !noalias !119
  %i.oc = fsub double %i.oa, %i.ob                ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %i.oe = load double, ptr %i.od, align 8, !noalias !119
  %i.of = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  %i.og = load double, ptr %i.of, align 8, !noalias !119
  %i.oh = fsub double %i.oe, %i.og                ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.oj = load double, ptr %i.oi, align 8, !noalias !119
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  %i.ol = load double, ptr %i.ok, align 8, !noalias !119
  %i.om = fsub double %i.oj, %i.ol
  %i.on = fcmp olt double %i.oc, f0xBEB0C6F7A0000000
  br i1 %i.on, label %.thread.i366, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oo = call noundef double @llvm.fabs.f64(double %i.oc)
  %i.op = fcmp olt double %i.oo, f0x3EB0C6F7A0000000 ; 2 uses
  %i.oq = fcmp olt double %i.oh, f0xBEB0C6F7A0000000 ; 2 uses
  %or.cond.i.i.i.i363 = select i1 %i.op, i1 %i.oq, i1 false
  %.not.i.i.i.i364 = xor i1 %i.op, true
  %brmerge.i.i.i.i365 = select i1 %.not.i.i.i.i364, i1 true, i1 %i.oq
  br i1 %brmerge.i.i.i.i365, label %.thread.i366, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.or = call noundef double @llvm.fabs.f64(double %i.oh)
  %i.os = fcmp olt double %i.or, f0x3EB0C6F7A0000000
  br i1 %i.os, label %bb.bf, label %.thread.i366

bb.bf:                                            ; preds = %bb.be
  %i.ot = fcmp olt double %i.om, f0xBEB0C6F7A0000000
  br label %.thread.i366

.thread.i366:                                     ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.ou = phi i1 [ %i.ot, %bb.bf ], [ true, %bb.bb ], [ %or.cond.i.i.i.i363, %bb.bd ], [ true, %bb.bc ], [ false, %bb.be ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ou, ptr noundef nonnull %i.ns, ptr noundef nonnull %i.nx, ptr noundef nonnull align 8 dereferenceable(32) %i.cj) #25
  %i.ov = load i64, ptr %i.ch, align 8
  %i.ow = add i64 %i.ov, 1
  store i64 %i.ow, ptr %i.ch, align 8
  br label %.noexc248

bb.bg:                                            ; preds = %.noexc370
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.bh:                                            ; preds = %bb.ba
  %i.oy = load ptr, ptr %i.nu, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i368 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i.i.i.i.i.i368, label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ns, i64 72
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oy to i64
  %i.pd = sub i64 %i.pb, %i.pc
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pd) #27
  br label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369

_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369: ; preds = %bb.bi, %bb.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef 80) #27
  br label %.noexc248

.noexc248:                                        ; preds = %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369, %.thread.i366
  %.sroa.0.010.i367 = phi ptr [ %i.ns, %.thread.i366 ], [ %i.nw, %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc248, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i243, %bb.az
  %.sroa.06.0.i240 = phi ptr [ %.sroa.0.010.i367, %.noexc248 ], [ %.19.i.i.i.i233, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i243 ], [ %.19.i.i.i.i233, %bb.az ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i240, i64 56
  %i.pf = load ptr, ptr %i.mb, align 8            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i214, i64 64
  %i.ph = load ptr, ptr %i.pg, align 8            ; 2 uses
  %i.pi = load ptr, ptr %i.pe, align 8            ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i240, i64 64
  %i.pk = load ptr, ptr %i.pj, align 8            ; 2 uses
  %i.pl = icmp ne ptr %i.pf, %i.ph
  %i.pm = icmp ne ptr %i.pi, %i.pk
  %or.cond15.i.i = select i1 %i.pl, i1 %i.pm, i1 false
  br i1 %or.cond15.i.i, label %.lr.ph.i.i250, label %.loopexit569

.lr.ph.i.i250:                                    ; preds = %bb.bj, %bb.bo
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.bo ], [ %i.hm, %bb.bj ] ; 4 uses
  %.sroa.011.017.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.bo ], [ %i.pf, %bb.bj ] ; 4 uses
  %.sroa.07.016.i.i = phi ptr [ %.sroa.07.1.i.i, %bb.bo ], [ %i.pi, %bb.bj ] ; 4 uses
  %i.pn = load i64, ptr %.sroa.011.017.i.i, align 8 ; 3 uses
  %i.po = load i64, ptr %.sroa.07.016.i.i, align 8 ; 2 uses
  %i.pp = icmp ult i64 %i.pn, %i.po
  br i1 %i.pp, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i.i250
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i, i64 8
  br label %bb.bo

bb.bl:                                            ; preds = %.lr.ph.i.i250
  %i.pr = icmp ult i64 %i.po, %i.pn
  br i1 %i.pr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.07.016.i.i, i64 8
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  store i64 %i.pn, ptr %.sroa.0.018.i.i, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.07.016.i.i, i64 8
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.016.i.i, %bb.bk ], [ %i.ps, %bb.bm ], [ %i.pu, %bb.bn ] ; 2 uses
  %.sroa.011.1.i.i = phi ptr [ %i.pq, %bb.bk ], [ %.sroa.011.017.i.i, %bb.bm ], [ %i.pt, %bb.bn ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.018.i.i, %bb.bk ], [ %.sroa.0.018.i.i, %bb.bm ], [ %i.pv, %bb.bn ] ; 2 uses
  %i.pw = icmp ne ptr %.sroa.011.1.i.i, %i.ph
  %i.px = icmp ne ptr %.sroa.07.1.i.i, %i.pk
  %or.cond.i.i251 = select i1 %i.pw, i1 %i.px, i1 false
  br i1 %or.cond.i.i251, label %.lr.ph.i.i250, label %.loopexit569.loopexit, !llvm.loop !122

.loopexit569.loopexit:                            ; preds = %bb.bo
  %.pre700 = ptrtoint ptr %.sroa.0.1.i.i to i64
  br label %.loopexit569

.loopexit569:                                     ; preds = %.loopexit569.loopexit, %bb.bj
  %.pre-phi = phi i64 [ %.pre700, %.loopexit569.loopexit ], [ %i.hp, %bb.bj ]
  %i.py = sub i64 %.pre-phi, %i.hp
  %.not176 = icmp eq i64 %i.py, 16
  br i1 %.not176, label %bb.br, label %bb.bs

bb.bp:                                            ; preds = %.critedge.i215
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.bq:                                            ; preds = %.critedge.i241
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.br:                                            ; preds = %.loopexit569
  %i.qb = load i64, ptr %i.hm, align 8
  %i.qc = icmp eq i64 %i.qb, %.0145623
  %spec.select.idx = select i1 %i.qc, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.hm, i64 %spec.select.idx
  %i.qd = load i64, ptr %spec.select, align 8
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0482.0, i64 %i.iv
  store i64 %i.qd, ptr %i.qe, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit569, %bb.br
  %i.qf = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %.0145623
  %i.qh = load i32, ptr %i.qg, align 4
  %i.qi = zext i32 %i.qh to i64                   ; 2 uses
  %i.qj = icmp samesign ult i64 %i.iw, %i.qi
  br i1 %i.qj, label %bb.ad, label %._crit_edge622.loopexit, !llvm.loop !123

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.z, %.noexc197, %._crit_edge624
  %.sroa.0462.0 = phi ptr [ null, %._crit_edge624 ], [ %i.ia, %.noexc197 ], [ null, %bb.z ] ; 10 uses
  %.sroa.14469.0 = phi ptr [ null, %._crit_edge624 ], [ %storemerge.i.i.i.i.i, %.noexc197 ], [ null, %bb.z ] ; 2 uses
  %.sroa.17.0 = phi i32 [ 0, %._crit_edge624 ], [ %i.ii, %.noexc197 ], [ 0, %bb.z ] ; 2 uses
  %.sroa.20470.0 = phi ptr [ null, %._crit_edge624 ], [ %i.ic, %.noexc197 ], [ null, %bb.z ] ; 4 uses
  %i.qk = icmp ne ptr %.sroa.0462.0, %.sroa.14469.0
  %i.ql = icmp ne i32 %.sroa.17.0, 0
  %.not3.i9.i.i = or i1 %i.qk, %i.ql
  br i1 %.not3.i9.i.i, label %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph, label %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread

_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph: ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.qm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.qo = extractelement <2 x double> %i.w, i64 0 ; 2 uses
  %i.qp = extractelement <2 x double> %i.w, i64 1 ; 2 uses
  br label %_ZNSt13_Bit_iteratorppEv.exit.i.i

_ZNSt13_Bit_iteratorppEv.exit.i.i:                ; preds = %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph
  %.012.i.i = phi i64 [ 0, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph ], [ %.012.i.i.be, %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge ]
  %.sroa.5.011.i.i = phi i32 [ 0, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph ], [ %.sroa.5.011.i.i.be, %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge ] ; 3 uses
  %.sroa.03.010.i.i = phi ptr [ %.sroa.0462.0, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph ], [ %.sroa.03.010.i.i.be, %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge ] ; 2 uses
  %i.qq = zext nneg i32 %.sroa.5.011.i.i to i64
  %i.qr = load i64, ptr %.sroa.03.010.i.i, align 8
  %i.qs = xor i64 %i.qr, -1
  %i.qt = lshr i64 %i.qs, %i.qq
  %i.qu = and i64 %i.qt, 1
  %spec.select.i.i = add nuw nsw i64 %i.qu, %.012.i.i ; 2 uses
  %i.qv = add i32 %.sroa.5.011.i.i, 1
  %i.qw = icmp eq i32 %.sroa.5.011.i.i, 63        ; 2 uses
  %spec.select7.idx.i.i = select i1 %i.qw, i64 8, i64 0
  %spec.select7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i, i64 %spec.select7.idx.i.i ; 2 uses
  %spec.select8.i.i = select i1 %i.qw, i32 0, i32 %i.qv ; 2 uses
  %i.qx = icmp ne ptr %spec.select7.i.i, %.sroa.14469.0
  %i.qy = icmp ne i32 %spec.select8.i.i, %.sroa.17.0
  %.not3.i.i.i = or i1 %i.qy, %i.qx
  br i1 %.not3.i.i.i, label %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge, label %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit

_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge:       ; preds = %_ZNSt13_Bit_iteratorppEv.exit.i.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %.012.i.i.be = phi i64 [ %spec.select.i.i, %_ZNSt13_Bit_iteratorppEv.exit.i.i ], [ 0, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %.sroa.5.011.i.i.be = phi i32 [ %spec.select8.i.i, %_ZNSt13_Bit_iteratorppEv.exit.i.i ], [ 0, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %.sroa.03.010.i.i.be = phi ptr [ %spec.select7.i.i, %_ZNSt13_Bit_iteratorppEv.exit.i.i ], [ %.sroa.0462.0, %_ZNSt6vectorImSaImEED2Ev.exit ]
  br label %_ZNSt13_Bit_iteratorppEv.exit.i.i, !llvm.loop !124

_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit: ; preds = %_ZNSt13_Bit_iteratorppEv.exit.i.i
  %.not = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not, label %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit
  %i.qz = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ra = load ptr, ptr %i.x, align 8             ; 4 uses
  %.not663 = icmp eq ptr %i.qz, %i.ra
  br i1 %.not663, label %._crit_edge631, label %.lr.ph630.preheader

.lr.ph630.preheader:                              ; preds = %.preheader
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = ptrtoint ptr %i.ra to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = ashr exact i64 %i.rd, 2
  br label %.lr.ph630

._crit_edge631:                                   ; preds = %bb.bw, %.preheader
  %.0548.lcssa = phi i64 [ -1, %.preheader ], [ %.2, %bb.bw ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.rf = load ptr, ptr %0, align 8
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0771775, i64 %.0548.lcssa ; 2 uses
  %i.rh = load i64, ptr %i.rg, align 8
  %i.ri = getelementptr inbounds nuw [24 x i8], ptr %i.rf, i64 %i.rh
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.0548.lcssa
  %i.rk = load i32, ptr %i.rj, align 4
  %i.rl = zext i32 %i.rk to i64
  invoke void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %5, ptr noundef %i.ri, i64 noundef %i.rl, i1 noundef zeroext true)
          to label %bb.bx unwind label %_ZNSt6vectorImSaImEED2Ev.exit324

bb.bt:                                            ; preds = %bb.aa
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

.lr.ph630:                                        ; preds = %.lr.ph630.preheader, %bb.bw
  %.0147629 = phi double [ %.2149, %bb.bw ], [ -1.000000e+00, %.lr.ph630.preheader ] ; 3 uses
  %.0150628 = phi i64 [ %i.ue, %bb.bw ], [ 0, %.lr.ph630.preheader ] ; 7 uses
  %.0548627 = phi i64 [ %.2, %bb.bw ], [ -1, %.lr.ph630.preheader ] ; 2 uses
  %i.rn = sdiv i64 %.0150628, 64
  %i.ro = getelementptr inbounds [8 x i8], ptr %.sroa.0462.0, i64 %i.rn
  %i.rp = and i64 %.0150628, -9223372036854775745
  %i.rq = icmp ugt i64 %i.rp, -9223372036854775808
  %storemerge.idx.i.i.i.i.i254 = select i1 %i.rq, i64 -8, i64 0
  %storemerge.i.i.i.i.i255 = getelementptr inbounds i8, ptr %i.ro, i64 %storemerge.idx.i.i.i.i.i254
  %i.rr = and i64 %.0150628, 63
  %i.rs = shl nuw i64 1, %i.rr
  %i.rt = load i64, ptr %storemerge.i.i.i.i.i255, align 8
  %i.ru = and i64 %i.rt, %i.rs
  %.not562 = icmp eq i64 %i.ru, 0
  br i1 %.not562, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %.lr.ph630
  %i.rv = load ptr, ptr %0, align 8
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0771775, i64 %.0150628
  %i.rx = load i64, ptr %i.rw, align 8
  %i.ry = getelementptr inbounds [24 x i8], ptr %i.rv, i64 %i.rx ; 3 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.0150628
  %i.sa = load i32, ptr %i.rz, align 4            ; 3 uses
  %i.sb = zext i32 %i.sa to i64
  %.idx563 = mul nuw nsw i64 %i.sb, 24            ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 %.idx563
  %.not5.i = icmp eq i32 %i.sa, 0
  br i1 %.not5.i, label %.loopexit567, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bu
  %i.sd = add nsw i64 %.idx563, -24               ; 2 uses
  %i.se = udiv i64 %i.sd, 24
  %i.sf = add nuw nsw i64 %i.se, 1
  %xtraiter863 = and i64 %i.sf, 3                 ; 2 uses
  %lcmp.mod864.not = icmp eq i64 %xtraiter863, 0
  br i1 %lcmp.mod864.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.02.06.i.prol = phi ptr [ %i.sn, %.lr.ph.i.prol ], [ %i.ry, %.lr.ph.i.preheader ] ; 3 uses
  %i.sg = phi double [ %i.sj, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %i.sh = phi <2 x double> [ %i.sm, %.lr.ph.i.prol ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.si = load double, ptr %.sroa.02.06.i.prol, align 8, !noalias !125
  %i.sj = fadd double %i.sg, %i.si                ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.prol, i64 8
  %i.sl = load <2 x double>, ptr %i.sk, align 8, !noalias !125
  %i.sm = fadd <2 x double> %i.sh, %i.sl          ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter863
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !130

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa841.unr = phi double [ poison, %.lr.ph.i.preheader ], [ %i.sj, %.lr.ph.i.prol ]
  %.lcssa.unr = phi <2 x double> [ poison, %.lr.ph.i.preheader ], [ %i.sm, %.lr.ph.i.prol ]
  %.sroa.02.06.i.unr = phi ptr [ %i.ry, %.lr.ph.i.preheader ], [ %i.sn, %.lr.ph.i.prol ]
  %.unr = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.sj, %.lr.ph.i.prol ]
  %.unr865 = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.sm, %.lr.ph.i.prol ]
  %i.so = icmp ult i64 %i.sd, 72
  br i1 %i.so, label %.loopexit567, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.02.06.i = phi ptr [ %i.to, %.lr.ph.i ], [ %.sroa.02.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.sp = phi double [ %i.tk, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.sq = phi <2 x double> [ %i.tn, %.lr.ph.i ], [ %.unr865, %.lr.ph.i.prol.loopexit ]
  %i.sr = load double, ptr %.sroa.02.06.i, align 8, !noalias !125
  %i.ss = fadd double %i.sp, %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8
  %i.su = load <2 x double>, ptr %i.st, align 8, !noalias !125
  %i.sv = fadd <2 x double> %i.sq, %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 24
  %i.sx = load double, ptr %i.sw, align 8, !noalias !125
  %i.sy = fadd double %i.ss, %i.sx
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 32
  %i.ta = load <2 x double>, ptr %i.sz, align 8, !noalias !125
  %i.tb = fadd <2 x double> %i.sv, %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 48
  %i.td = load double, ptr %i.tc, align 8, !noalias !125
  %i.te = fadd double %i.sy, %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 56
  %i.tg = load <2 x double>, ptr %i.tf, align 8, !noalias !125
  %i.th = fadd <2 x double> %i.tb, %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 72
  %i.tj = load double, ptr %i.ti, align 8, !noalias !125
  %i.tk = fadd double %i.te, %i.tj                ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 80
  %i.tm = load <2 x double>, ptr %i.tl, align 8, !noalias !125
  %i.tn = fadd <2 x double> %i.th, %i.tm          ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 96 ; 2 uses
  %.not.i256.3 = icmp eq ptr %i.to, %i.sc
  br i1 %.not.i256.3, label %.loopexit567, label %.lr.ph.i, !llvm.loop !131

.loopexit567:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.bu
  %.lcssa.i = phi double [ 0.000000e+00, %bb.bu ], [ %.lcssa841.unr, %.lr.ph.i.prol.loopexit ], [ %i.tk, %.lr.ph.i ]
  %i.tp = phi <2 x double> [ zeroinitializer, %bb.bu ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.tn, %.lr.ph.i ] ; 2 uses
  %i.tq = uitofp i32 %i.sa to double
  %i.tr = fdiv double 1.000000e+00, %i.tq         ; 3 uses
  %i.ts = fmul double %i.tr, %.lcssa.i
  %i.tt = extractelement <2 x double> %i.tp, i64 0
  %i.tu = fmul double %i.tr, %i.tt
  %i.tv = extractelement <2 x double> %i.tp, i64 1
  %i.tw = fmul double %i.tr, %i.tv
  %i.tx = fsub double %i.ts, %.sroa.0518.0        ; 2 uses
  %i.ty = fsub double %i.tu, %i.qo                ; 2 uses
  %i.tz = fsub double %i.tw, %i.qp                ; 2 uses
  %i.ua = fmul double %i.ty, %i.ty
  %i.ub = call double @llvm.fmuladd.f64(double %i.tx, double %i.tx, double %i.ua)
  %i.uc = call noundef double @llvm.fmuladd.f64(double %i.tz, double %i.tz, double %i.ub) ; 2 uses
  %i.ud = fcmp ogt double %i.uc, %.0147629
  br i1 %i.ud, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.loopexit567
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit567, %bb.bv, %.lr.ph630
  %.2 = phi i64 [ %.0548627, %.lr.ph630 ], [ %.0150628, %bb.bv ], [ %.0548627, %.loopexit567 ] ; 2 uses
  %.2149 = phi double [ %.0147629, %.lr.ph630 ], [ %i.uc, %bb.bv ], [ %.0147629, %.loopexit567 ]
  %i.ue = add nuw i64 %.0150628, 1                ; 2 uses
  %exitcond689.not = icmp eq i64 %i.ue, %i.re
  br i1 %exitcond689.not, label %._crit_edge631, label %.lr.ph630, !llvm.loop !132

bb.bx:                                            ; preds = %._crit_edge631
  %i.uf = load ptr, ptr %0, align 8
  %i.ug = load i64, ptr %i.rg, align 8            ; 3 uses
  %i.uh = getelementptr inbounds [24 x i8], ptr %i.uf, i64 %i.ug ; 4 uses
  %i.ui = load ptr, ptr %i.x, align 8
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.0548.lcssa
  %i.uk = load i32, ptr %i.uj, align 4            ; 5 uses
  %i.ul = zext i32 %i.uk to i64                   ; 3 uses
  %.idx = mul nuw nsw i64 %i.ul, 24               ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 %.idx ; 2 uses
  %.not5.i258 = icmp eq i32 %i.uk, 0
  br i1 %.not5.i258, label %.loopexit568, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.bx
  %i.un = add nsw i64 %.idx, -24                  ; 2 uses
  %i.uo = udiv i64 %i.un, 24
  %i.up = add nuw nsw i64 %i.uo, 1
  %xtraiter866 = and i64 %i.up, 3                 ; 2 uses
  %lcmp.mod867.not = icmp eq i64 %xtraiter866, 0
  br i1 %lcmp.mod867.not, label %.lr.ph.i259.prol.loopexit, label %.lr.ph.i259.prol

.lr.ph.i259.prol:                                 ; preds = %.lr.ph.i259.preheader, %.lr.ph.i259.prol
  %.sroa.02.06.i262.prol = phi ptr [ %i.ux, %.lr.ph.i259.prol ], [ %i.uh, %.lr.ph.i259.preheader ] ; 3 uses
  %i.uq = phi double [ %i.ut, %.lr.ph.i259.prol ], [ 0.000000e+00, %.lr.ph.i259.preheader ]
  %i.ur = phi <2 x double> [ %i.uw, %.lr.ph.i259.prol ], [ zeroinitializer, %.lr.ph.i259.preheader ]
  %prol.iter868 = phi i64 [ %prol.iter868.next, %.lr.ph.i259.prol ], [ 0, %.lr.ph.i259.preheader ]
  %i.us = load double, ptr %.sroa.02.06.i262.prol, align 8, !noalias !133
  %i.ut = fadd double %i.uq, %i.us                ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262.prol, i64 8
  %i.uv = load <2 x double>, ptr %i.uu, align 8, !noalias !133
  %i.uw = fadd <2 x double> %i.ur, %i.uv          ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262.prol, i64 24 ; 2 uses
  %prol.iter868.next = add i64 %prol.iter868, 1   ; 2 uses
  %prol.iter868.cmp.not = icmp eq i64 %prol.iter868.next, %xtraiter866
  br i1 %prol.iter868.cmp.not, label %.lr.ph.i259.prol.loopexit, label %.lr.ph.i259.prol, !llvm.loop !138

.lr.ph.i259.prol.loopexit:                        ; preds = %.lr.ph.i259.prol, %.lr.ph.i259.preheader
  %.lcssa843.unr.a = phi double [ poison, %.lr.ph.i259.preheader ], [ %i.ut, %.lr.ph.i259.prol ]
  %.lcssa842.unr = phi <2 x double> [ poison, %.lr.ph.i259.preheader ], [ %i.uw, %.lr.ph.i259.prol ]
  %.sroa.02.06.i262.unr = phi ptr [ %i.uh, %.lr.ph.i259.preheader ], [ %i.ux, %.lr.ph.i259.prol ]
  %.unr869 = phi double [ 0.000000e+00, %.lr.ph.i259.preheader ], [ %i.ut, %.lr.ph.i259.prol ]
  %.unr870 = phi <2 x double> [ zeroinitializer, %.lr.ph.i259.preheader ], [ %i.uw, %.lr.ph.i259.prol ]
  %i.uy = icmp ult i64 %i.un, 72
  br i1 %i.uy, label %.loopexit568, label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.prol.loopexit, %.lr.ph.i259
  %.sroa.02.06.i262 = phi ptr [ %i.vy, %.lr.ph.i259 ], [ %.sroa.02.06.i262.unr, %.lr.ph.i259.prol.loopexit ] ; 9 uses
  %i.uz = phi double [ %i.vu, %.lr.ph.i259 ], [ %.unr869, %.lr.ph.i259.prol.loopexit ]
  %i.va = phi <2 x double> [ %i.vx, %.lr.ph.i259 ], [ %.unr870, %.lr.ph.i259.prol.loopexit ]
  %i.vb = load double, ptr %.sroa.02.06.i262, align 8, !noalias !133
  %i.vc = fadd double %i.uz, %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 8
  %i.ve = load <2 x double>, ptr %i.vd, align 8, !noalias !133
  %i.vf = fadd <2 x double> %i.va, %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 24
  %i.vh = load double, ptr %i.vg, align 8, !noalias !133
  %i.vi = fadd double %i.vc, %i.vh
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 32
  %i.vk = load <2 x double>, ptr %i.vj, align 8, !noalias !133
  %i.vl = fadd <2 x double> %i.vf, %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 48
  %i.vn = load double, ptr %i.vm, align 8, !noalias !133
  %i.vo = fadd double %i.vi, %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 56
  %i.vq = load <2 x double>, ptr %i.vp, align 8, !noalias !133
  %i.vr = fadd <2 x double> %i.vl, %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 72
  %i.vt = load double, ptr %i.vs, align 8, !noalias !133
  %i.vu = fadd double %i.vo, %i.vt                ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 80
  %i.vw = load <2 x double>, ptr %i.vv, align 8, !noalias !133
  %i.vx = fadd <2 x double> %i.vr, %i.vw          ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 96 ; 2 uses
  %.not.i263.3 = icmp eq ptr %i.vy, %i.um
  br i1 %.not.i263.3, label %.loopexit568, label %.lr.ph.i259, !llvm.loop !131

.loopexit568:                                     ; preds = %.lr.ph.i259.prol.loopexit, %.lr.ph.i259, %bb.bx
  %.lcssa.i265 = phi double [ 0.000000e+00, %bb.bx ], [ %.lcssa843.unr.a, %.lr.ph.i259.prol.loopexit ], [ %i.vu, %.lr.ph.i259 ]
  %i.vz = phi <2 x double> [ zeroinitializer, %bb.bx ], [ %.lcssa842.unr, %.lr.ph.i259.prol.loopexit ], [ %i.vx, %.lr.ph.i259 ] ; 2 uses
  %i.wa = uitofp i32 %i.uk to double
  %i.wb = fdiv double 1.000000e+00, %i.wa         ; 3 uses
  %i.wc = fmul double %i.wb, %.lcssa.i265
  %6 = extractelement <2 x double> %i.vz, i64 0
  %7 = fmul double %i.wb, %6
  %8 = extractelement <2 x double> %i.vz, i64 1
  %9 = fmul double %i.wb, %8
  %10 = fsub double %i.wc, %.sroa.0518.0          ; 4 uses
  %11 = fsub double %7, %i.qo                     ; 4 uses
  %12 = fsub double %9, %i.qp                     ; 4 uses
  %13 = fmul double %11, %11
  %14 = call double @llvm.fmuladd.f64(double %10, double %10, double %13)
  %i.wd = call noundef double @llvm.fmuladd.f64(double %12, double %12, double %14) ; 2 uses
  %i.we = fcmp oeq double %i.wd, 0.000000e+00
  br i1 %i.we, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %.loopexit568
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.wd)
  %i.wf = fdiv double 1.000000e+00, %sqrt.i.i     ; 3 uses
  %i.wg = fmul double %10, %i.wf
  %15 = fmul double %11, %i.wf
  %16 = fmul double %12, %i.wf
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %.loopexit568
  %.sroa.11419.0 = phi double [ %12, %.loopexit568 ], [ %16, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %.sroa.7.0 = phi double [ %11, %.loopexit568 ], [ %15, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %.sroa.0416.0 = phi double [ %10, %.loopexit568 ], [ %i.wg, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %i.wh = load double, ptr %5, align 8
  %17 = load double, ptr %i.qm, align 8
  %i.wi = fmul double %.sroa.7.0, %17
  %i.wj = call double @llvm.fmuladd.f64(double %i.wh, double %.sroa.0416.0, double %i.wi)
  %i.wk = load double, ptr %i.qn, align 8
  %i.wl = call noundef double @llvm.fmuladd.f64(double %i.wk, double %.sroa.11419.0, double %i.wj)
  %i.wm = fcmp olt double %i.wl, -4.000000e-01
  br i1 %i.wm, label %bb.by, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280

bb.by:                                            ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.wn = icmp ugt i32 %i.uk, 1
  br i1 %i.wn, label %.lr.ph.i.i268.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit

.lr.ph.i.i268.preheader:                          ; preds = %bb.by
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.um, i64 -24
  br label %.lr.ph.i.i268

.lr.ph.i.i268:                                    ; preds = %.lr.ph.i.i268.preheader, %.lr.ph.i.i268
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i268 ], [ %.sroa.0.08.i.i, %.lr.ph.i.i268.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.wo, %.lr.ph.i.i268 ], [ %i.uh, %.lr.ph.i.i268.preheader ] ; 3 uses
  %.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.05.09.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i, i64 24, i1 false)
  store <3 x double> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 24 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -24 ; 2 uses
  %i.wp = icmp ult ptr %i.wo, %.sroa.0.0.i.i
  br i1 %i.wp, label %.lr.ph.i.i268, label %.lr.ph.i.i271.preheader, !llvm.loop !139

.lr.ph.i.i271.preheader:                          ; preds = %.lr.ph.i.i268
  %i.wq = getelementptr inbounds [8 x i8], ptr %.sroa.0482.0, i64 %i.ug ; 2 uses
  %.idx556 = shl nuw nsw i64 %i.ul, 3
  %i.wr = getelementptr i8, ptr %i.wq, i64 %.idx556
  %.sroa.0.08.i.i269 = getelementptr i8, ptr %i.wr, i64 -8
  br label %.lr.ph.i.i271

.lr.ph.i.i271:                                    ; preds = %.lr.ph.i.i271.preheader, %.lr.ph.i.i271
  %.sroa.0.010.i.i272 = phi ptr [ %.sroa.0.0.i.i274, %.lr.ph.i.i271 ], [ %.sroa.0.08.i.i269, %.lr.ph.i.i271.preheader ] ; 3 uses
  %.sroa.05.09.i.i273 = phi ptr [ %i.wu, %.lr.ph.i.i271 ], [ %i.wq, %.lr.ph.i.i271.preheader ] ; 3 uses
  %i.ws = load i64, ptr %.sroa.05.09.i.i273, align 8
  %i.wt = load i64, ptr %.sroa.0.010.i.i272, align 8
  store i64 %i.wt, ptr %.sroa.05.09.i.i273, align 8
  store i64 %i.ws, ptr %.sroa.0.010.i.i272, align 8
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i273, i64 8 ; 2 uses
  %.sroa.0.0.i.i274 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i272, i64 -8 ; 2 uses
  %i.wv = icmp ult ptr %i.wu, %.sroa.0.0.i.i274
  br i1 %i.wv, label %.lr.ph.i.i271, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit.thread, !llvm.loop !140

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit.thread: ; preds = %.lr.ph.i.i271
  %i.ww = add nsw i64 %i.ul, -1
  br label %.lr.ph635.preheader

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %bb.by
  %.not664 = icmp eq i32 %i.uk, 1
  br i1 %.not664, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280, label %.lr.ph635.preheader

.lr.ph635.preheader:                              ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit.thread, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.wx = phi i64 [ %i.ww, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit.thread ], [ -1, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit ] ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.0482.0, i64 %i.ug ; 6 uses
  %load_initial = load i64, ptr %invariant.gep, align 8 ; 5 uses
  %i.wy = add nsw i64 %i.wx, -1
  %xtraiter871 = and i64 %i.wx, 3                 ; 3 uses
  %i.wz = icmp ult i64 %i.wy, 3
  br i1 %i.wz, label %.lr.ph635.epil.preheader, label %.lr.ph635.preheader.new

.lr.ph635.preheader.new:                          ; preds = %.lr.ph635.preheader
  %unroll_iter875 = and i64 %i.wx, -4
  br label %.lr.ph635

.lr.ph635:                                        ; preds = %.lr.ph635, %.lr.ph635.preheader.new
  %.0151634 = phi i64 [ 0, %.lr.ph635.preheader.new ], [ %i.xl, %.lr.ph635 ] ; 5 uses
  %niter876 = phi i64 [ 0, %.lr.ph635.preheader.new ], [ %niter876.next.3, %.lr.ph635 ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0151634 ; 2 uses
  %i.xa = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.xb = load i64, ptr %i.xa, align 8
  store i64 %i.xb, ptr %gep, align 8
  store i64 %load_initial, ptr %i.xa, align 8
  %i.xc = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0151634 ; 2 uses
  %gep.1 = getelementptr i8, ptr %i.xc, i64 8
  %i.xd = getelementptr i8, ptr %i.xc, i64 16     ; 2 uses
  %i.xe = load i64, ptr %i.xd, align 8
  store i64 %i.xe, ptr %gep.1, align 8
  store i64 %load_initial, ptr %i.xd, align 8
  %i.xf = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0151634 ; 2 uses
  %gep.2 = getelementptr i8, ptr %i.xf, i64 16
  %i.xg = getelementptr i8, ptr %i.xf, i64 24     ; 2 uses
  %i.xh = load i64, ptr %i.xg, align 8
  store i64 %i.xh, ptr %gep.2, align 8
  store i64 %load_initial, ptr %i.xg, align 8
  %i.xi = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0151634 ; 2 uses
  %gep.3 = getelementptr i8, ptr %i.xi, i64 24
  %i.xj = getelementptr i8, ptr %i.xi, i64 32     ; 2 uses
  %i.xk = load i64, ptr %i.xj, align 8
  store i64 %i.xk, ptr %gep.3, align 8
  store i64 %load_initial, ptr %i.xj, align 8
  %i.xl = add nuw i64 %.0151634, 4                ; 2 uses
  %niter876.next.3 = add i64 %niter876, 4         ; 2 uses
  %niter876.ncmp.3 = icmp eq i64 %niter876.next.3, %unroll_iter875
  br i1 %niter876.ncmp.3, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280.loopexit.unr-lcssa, label %.lr.ph635, !llvm.loop !141

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280.loopexit.unr-lcssa: ; preds = %.lr.ph635
  %lcmp.mod873.not = icmp eq i64 %xtraiter871, 0
  br i1 %lcmp.mod873.not, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280, label %.lr.ph635.epil.preheader

.lr.ph635.epil.preheader:                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280.loopexit.unr-lcssa, %.lr.ph635.preheader
  %.0151634.epil.init = phi i64 [ 0, %.lr.ph635.preheader ], [ %i.xl, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280.loopexit.unr-lcssa ]
  %lcmp.mod874 = icmp ne i64 %xtraiter871, 0
  call void @llvm.assume(i1 %lcmp.mod874)
  br label %.lr.ph635.epil

.lr.ph635.epil:                                   ; preds = %.lr.ph635.epil, %.lr.ph635.epil.preheader
  %.0151634.epil = phi i64 [ %i.xo, %.lr.ph635.epil ], [ %.0151634.epil.init, %.lr.ph635.epil.preheader ] ; 2 uses
  %epil.iter872 = phi i64 [ %epil.iter872.next, %.lr.ph635.epil ], [ 0, %.lr.ph635.epil.preheader ]
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0151634.epil ; 2 uses
  %i.xm = getelementptr i8, ptr %gep.epil, i64 8  ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 8
  store i64 %i.xn, ptr %gep.epil, align 8
  store i64 %load_initial, ptr %i.xm, align 8
  %i.xo = add nuw i64 %.0151634.epil, 1
  %epil.iter872.next = add i64 %epil.iter872, 1   ; 2 uses
  %epil.iter872.cmp.not = icmp eq i64 %epil.iter872.next, %xtraiter871
  br i1 %epil.iter872.cmp.not, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280, label %.lr.ph635.epil, !llvm.loop !142

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280.loopexit.unr-lcssa, %.lr.ph635.epil, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.xp = sdiv i64 %.0548.lcssa, 64
  %i.xq = getelementptr inbounds [8 x i8], ptr %.sroa.0462.0, i64 %i.xp
  %i.xr = and i64 %.0548.lcssa, -9223372036854775745
  %i.xs = icmp ugt i64 %i.xr, -9223372036854775808
  %storemerge.idx.i.i.i.i.i275 = select i1 %i.xs, i64 -8, i64 0
  %storemerge.i.i.i.i.i276 = getelementptr inbounds i8, ptr %i.xq, i64 %storemerge.idx.i.i.i.i.i275 ; 2 uses
  %i.xt = and i64 %.0548.lcssa, 63
  %i.xu = shl nuw i64 1, %i.xt
  %i.xv = load i64, ptr %storemerge.i.i.i.i.i276, align 8
  %i.xw = or i64 %i.xv, %i.xu
  store i64 %i.xw, ptr %storemerge.i.i.i.i.i276, align 8
  %i.xx = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %_ZNSt6vectorImSaImEE9push_backERKm.exit288 unwind label %.thread ; 3 uses

_ZNSt6vectorImSaImEE9push_backERKm.exit288:       ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280
  store i64 %.0548.lcssa, ptr %i.xx, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8 ; 2 uses
  br label %bb.bz

.loopexit565:                                     ; preds = %.critedge, %bb.bz
  %.sroa.0394.1.lcssa = phi ptr [ %.sroa.0394.0655, %bb.bz ], [ %.sroa.0394.2, %.critedge ] ; 4 uses
  %.sroa.11.1.lcssa = phi ptr [ %i.ya, %bb.bz ], [ %.sroa.11.2, %.critedge ] ; 2 uses
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.0657, %bb.bz ], [ %.sroa.23.2, %.critedge ] ; 2 uses
  %i.xz = icmp eq ptr %.sroa.0394.1.lcssa, %.sroa.11.1.lcssa
  br i1 %i.xz, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bz, !llvm.loop !143

bb.bz:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit288, %.loopexit565
  %.sroa.23.0657 = phi ptr [ %i.xy, %_ZNSt6vectorImSaImEE9push_backERKm.exit288 ], [ %.sroa.23.1.lcssa, %.loopexit565 ] ; 2 uses
  %.sroa.11.0656 = phi ptr [ %i.xy, %_ZNSt6vectorImSaImEE9push_backERKm.exit288 ], [ %.sroa.11.1.lcssa, %.loopexit565 ]
  %.sroa.0394.0655 = phi ptr [ %i.xx, %_ZNSt6vectorImSaImEE9push_backERKm.exit288 ], [ %.sroa.0394.1.lcssa, %.loopexit565 ] ; 2 uses
  %i.ya = getelementptr inbounds i8, ptr %.sroa.11.0656, i64 -8 ; 3 uses
  %i.yb = load i64, ptr %i.ya, align 8            ; 2 uses
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0771775, i64 %i.yb
  %i.yd = load i64, ptr %i.yc, align 8            ; 2 uses
  %i.ye = load ptr, ptr %i.x, align 8
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %i.yb
  %i.yg = load i32, ptr %i.yf, align 4            ; 2 uses
  %i.yh = zext i32 %i.yg to i64                   ; 2 uses
  %.not665 = icmp eq i32 %i.yg, 0
  br i1 %.not665, label %.loopexit565, label %.lr.ph651

.thread:                                          ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i280
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit324.thread

.lr.ph651:                                        ; preds = %bb.bz, %.critedge
  %.0152649 = phi i64 [ %i.agd, %.critedge ], [ 0, %bb.bz ] ; 3 uses
  %.sroa.23.1648 = phi ptr [ %.sroa.23.2, %.critedge ], [ %.sroa.23.0657, %bb.bz ] ; 5 uses
  %.sroa.11.1647 = phi ptr [ %.sroa.11.2, %.critedge ], [ %i.ya, %bb.bz ] ; 5 uses
  %.sroa.0394.1646 = phi ptr [ %.sroa.0394.2, %.critedge ], [ %.sroa.0394.0655, %bb.bz ] ; 7 uses
  %i.yj = add i64 %.0152649, %i.yd                ; 2 uses
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0482.0, i64 %i.yj
  %i.yl = load i64, ptr %i.yk, align 8            ; 8 uses
  %i.ym = icmp eq i64 %i.yl, -1
  br i1 %i.ym, label %.critedge, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph651
  %i.yn = sdiv i64 %i.yl, 64
  %i.yo = getelementptr inbounds [8 x i8], ptr %.sroa.0462.0, i64 %i.yn
  %i.yp = and i64 %i.yl, -9223372036854775745
  %i.yq = icmp ugt i64 %i.yp, -9223372036854775808
  %storemerge.idx.i.i.i.i.i289 = select i1 %i.yq, i64 -8, i64 0
  %storemerge.i.i.i.i.i290 = getelementptr inbounds i8, ptr %i.yo, i64 %storemerge.idx.i.i.i.i.i289 ; 3 uses
  %i.yr = and i64 %i.yl, 63
  %i.ys = shl nuw i64 1, %i.yr                    ; 2 uses
  %i.yt = load i64, ptr %storemerge.i.i.i.i.i290, align 8
  %i.yu = and i64 %i.yt, %i.ys
  %.not557 = icmp eq i64 %i.yu, 0
  br i1 %.not557, label %bb.cb, label %.critedge

bb.cb:                                            ; preds = %bb.ca
  %i.yv = load ptr, ptr %0, align 8               ; 3 uses
  %i.yw = getelementptr inbounds nuw [24 x i8], ptr %i.yv, i64 %i.yj ; 3 uses
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0771775, i64 %i.yl
  %i.yy = load i64, ptr %i.yx, align 8            ; 3 uses
  %i.yz = load ptr, ptr %i.x, align 8
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.yl
  %i.zb = load i32, ptr %i.za, align 4            ; 3 uses
  %i.zc = zext i32 %i.zb to i64                   ; 6 uses
  %i.zd = getelementptr [24 x i8], ptr %i.yv, i64 %i.yy ; 7 uses
  %.idx560 = mul nuw nsw i64 %i.zc, 24            ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 %.idx560 ; 3 uses
end_hunk_1
