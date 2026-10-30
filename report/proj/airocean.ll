Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/airocean?download=true
inline.NumInlined: 15
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z37pj_projection_specific_setup_airoceanP8PJconsts:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.y = load double, ptr %i.x, align 8, !tbaa !39, !noalias !61 ; 2 uses
  %i.z = fneg double %i.y
  %i.aa = fmul double %i.y, 0.000000e+00          ; 2 uses
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %indvars.iv.i ; 5 uses
  %i.ac = load <2 x double>, ptr %i.t, align 8, !tbaa !40, !noalias !62 ; 5 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ae = load <2 x double>, ptr %i.u, align 8, !tbaa !40, !noalias !63 ; 4 uses
  %i.af = load double, ptr %i.v, align 8, !tbaa !39, !noalias !63
  %i.ag = shufflevector <2 x double> %i.ae, <2 x double> %i.ac, <2 x i32> <i32 1, i32 3>
  %i.ah = fneg <2 x double> %i.ag
  %i.ai = shufflevector <2 x double> %i.ae, <2 x double> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> zeroinitializer, <2 x double> %i.ah) ; 2 uses
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> %i.ac, <2 x i32> <i32 1, i32 2>
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.al = extractelement <2 x double> %i.aj, i64 0
  %i.am = fadd double %i.al, 0.000000e+00
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.an = insertelement <2 x double> %i.ad, double %i.af, i64 1
  %i.ao = fmul <2 x double> %i.an, zeroinitializer ; 3 uses
  %i.ap = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.aq = fadd <2 x double> %i.ak, %i.ap
  %i.ar = fadd <2 x double> %i.aq, <double f0x401721D5D2BDD232, double 0.000000e+00>
  store <2 x double> %i.ar, ptr %i.ab, align 8, !tbaa !40
  %i.as = shufflevector <2 x double> %i.ac, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> zeroinitializer, <2 x double> %i.ao) ; 2 uses
  %i.au = insertelement <2 x double> %i.at, double %i.am, i64 1
  %i.av = fadd <2 x double> %i.au, <double 1.000000e+00, double f0x401721D5D2BDD232>
  store <2 x double> %i.av, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !40
  %shift = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ae, %shift
  %i.aw = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.at, <2 x i32> <i32 0, i32 3>
  %i.ax = fadd <2 x double> %i.aw, <double 0.000000e+00, double 1.000000e+00>
  store <2 x double> %i.ax, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ay = load double, ptr %i.w, align 8, !tbaa !41, !noalias !61 ; 2 uses
  %i.az = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aa, i64 1
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = insertelement <2 x double> poison, double %i.z, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.aa, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> zeroinitializer, <2 x double> %i.bd) ; 2 uses
  %i.bf = insertelement <2 x double> %i.be, double %i.ay, i64 1
  %i.bg = fadd <2 x double> %i.bf, %i.az
  %i.bh = fadd <2 x double> %i.bg, <double f0x401721D5D2BDD232, double 0.000000e+00>
  %i.bi = extractelement <2 x double> %i.be, i64 1
  %i.bj = fadd double %i.bi, 1.000000e+00
  store <2 x double> %i.bh, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store double %i.bj, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 23
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_116pj_airocean_data9transformEPA4_KdS3_.exit, label %.preheader, !llvm.loop !58

bb.e:                                             ; preds = %bb.d
  %i.bk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(9) @.str.3) #9
  %.not20 = icmp eq i32 %i.bk, 0
  br i1 %.not20, label %_ZN12_GLOBAL__N_116pj_airocean_data9transformEPA4_KdS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.4)
  %i.bl = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.g

_ZN12_GLOBAL__N_116pj_airocean_data9transformEPA4_KdS3_.exit: ; preds = %.preheader, %bb.e, %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL16airocean_inverse5PJ_XYP8PJconsts, ptr %i.bm, align 8, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL16airocean_forward5PJ_LPP8PJconsts, ptr %i.bn, align 8, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_116pj_airocean_data9transformEPA4_KdS3_.exit, %bb.f, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.bl, %bb.f ], [ %0, %_ZN12_GLOBAL__N_116pj_airocean_data9transformEPA4_KdS3_.exit ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL16airocean_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2760
  %i.f = insertelement <2 x double> poison, double %0, i64 0 ; 2 uses
  %i.g = insertelement <2 x double> %i.f, double %1, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv.i ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.m = load double, ptr %i.l, align 8, !tbaa !43 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.p = load double, ptr %i.o, align 8, !tbaa !39
  %i.q = fneg double %i.p                         ; 3 uses
  %i.r = load double, ptr %i.i, align 8, !tbaa !41 ; 2 uses
  %i.s = tail call double @llvm.fmuladd.f64(double %1, double %i.m, double %i.q) ; 2 uses
  %i.t = fneg double %i.s
  %i.u = fmul double %i.r, %i.t
  %i.v = load double, ptr %i.j, align 8, !tbaa !41 ; 2 uses
  %i.w = load double, ptr %i.k, align 8, !tbaa !39 ; 3 uses
  %i.x = load double, ptr %i.n, align 8, !tbaa !43 ; 4 uses
  %i.y = fmul double %i.x, %i.q
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double %i.m, double %i.y)
  %i.aa = fneg double %i.w                        ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.x, i64 1
  %i.ad = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.aa, i64 1
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.ac, <2 x double> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = extractelement <2 x double> %i.af, i64 1
  %i.ai = tail call noundef double @llvm.fmuladd.f64(double %i.v, double %i.ah, double %i.ag)
  %i.aj = fcmp ugt double %i.ai, 0.000000e+00
  br i1 %i.aj, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load <2 x double>, ptr %i.h, align 8, !tbaa !40 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !43 ; 3 uses
  %i.an = fmul double %i.am, %i.q
  %i.ao = extractelement <2 x double> %i.ak, i64 1 ; 2 uses
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.m, double %i.an)
  %i.aq = fneg double %i.ap
  %i.ar = fmul double %0, %i.aq
  %i.as = extractelement <2 x double> %i.ak, i64 0
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.s, double %i.ar)
  %i.au = fmul double %1, %i.am
  %i.av = fsub double %i.ao, %i.au                ; 2 uses
  %i.aw = tail call noundef double @llvm.fmuladd.f64(double %i.v, double %i.av, double %i.at)
  %i.ax = fcmp ugt double %i.aw, 0.000000e+00
  br i1 %i.ax, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i: ; preds = %bb.c
  %i.ay = fmul double %1, %i.x
  %i.az = fsub double %i.w, %i.ay
  %i.ba = fneg double %i.av
  %i.bb = insertelement <2 x double> poison, double %i.r, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.am, i64 1
  %i.bd = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.aa, i64 1
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.x, i64 1
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.bh, <2 x double> %i.bf) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  %i.bk = extractelement <2 x double> %i.bi, i64 1
  %i.bl = tail call noundef double @llvm.fmuladd.f64(double %0, double %i.bk, double %i.bj)
  %i.bm = fcmp ugt double %i.bl, 0.000000e+00
  br i1 %i.bm, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 23
  br i1 %exitcond.i, label %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread, label %bb.b, !llvm.loop !66

_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i
  %i.bn = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.e

_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 7360
  %i.bp = getelementptr inbounds nuw [128 x i8], ptr %i.bo, i64 %indvars.iv.i ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bs = load double, ptr %i.br, align 8, !tbaa !40, !noalias !69
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !40, !noalias !69
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !40, !noalias !69
  %i.by = load <2 x double>, ptr %i.bp, align 8, !tbaa !40, !noalias !69 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bq, align 8, !tbaa !40, !noalias !69 ; 2 uses
  %i.ca = insertelement <2 x double> poison, double %1, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = insertelement <2 x double> %3, double %i.bs, i64 1
  %i.cd = fmul <2 x double> %i.cb, %i.cc
  %4 = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.ce = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %i.ce, <2 x double> %i.cd)
  %i.cg = insertelement <2 x double> %i.bz, double %i.bu, i64 1
  %i.ch = fadd <2 x double> %i.cg, %i.cf          ; 5 uses
  %i.ci = load <2 x double>, ptr %i.bv, align 8, !tbaa !40, !noalias !69 ; 2 uses
  %5 = insertelement <2 x double> %i.ch, double %1, i64 0
  %6 = shufflevector <2 x double> %i.ch, <2 x double> %i.ci, <2 x i32> <i32 3, i32 1>
  %7 = fmul <2 x double> %5, %6
  %8 = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %9 = shufflevector <2 x double> %i.ci, <2 x double> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.cj = insertelement <2 x double> %8, double %0, i64 0
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %i.cj, <2 x double> %7) ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  %i.cm = fadd double %i.bx, %i.cl                ; 3 uses
  %i.cn = extractelement <2 x double> %i.ck, i64 1
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double %i.cn)
  %i.cp = tail call double @sqrt(double noundef %i.co) #10 ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fdiv <2 x double> %i.ch, %i.cr          ; 2 uses
  %i.ct = fneg double %i.cm
  %i.cu = fdiv double %i.ct, %i.cp
  %i.cv = tail call double @acos(double noundef %i.cu) #10
  %i.cw = fadd double %i.cv, f0xBFF921FB54442D18  ; 3 uses
  %i.cx = extractelement <2 x double> %i.cs, i64 0
  %i.cy = extractelement <2 x double> %i.cs, i64 1
  %i.cz = tail call double @atan2(double noundef %i.cy, double noundef %i.cx) #10 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.db = load double, ptr %i.da, align 8, !tbaa !44
  %i.dc = fcmp une double %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dd = fcmp olt double %i.cw, 0.000000e+00
  %i.de = tail call double @tan(double noundef %i.cw) #10
  store volatile double %i.de, ptr %i.a, align 8, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.dg = load double, ptr %i.df, align 8, !tbaa !45 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.di = load double, ptr %i.dh, align 8, !tbaa !46 ; 2 uses
  %i.dj = fsub double %i.dg, %i.di
  %i.dk = fdiv double %i.dj, %i.dg
  %i.dl = fsub double 1.000000e+00, %i.dk         ; 3 uses
  %i.dm = fmul double %i.dg, %i.dg
  %.0..0..0..0.7 = load volatile double, ptr %i.a, align 8, !tbaa !40
  %.0..0..0..0.8 = load volatile double, ptr %i.a, align 8, !tbaa !40
  %i.dn = fmul double %i.dl, %i.dl
  %i.do = tail call double @llvm.fmuladd.f64(double %.0..0..0..0.7, double %.0..0..0..0.8, double %i.dn)
  %i.dp = tail call double @sqrt(double noundef %i.do) #10
  %i.dq = fdiv double %i.di, %i.dp
  store volatile double %i.dq, ptr %i.b, align 8, !tbaa !40
  %.0..0..0..0.4 = load volatile double, ptr %i.b, align 8, !tbaa !40
  %.0..0..0..0.5 = load volatile double, ptr %i.b, align 8, !tbaa !40
  %i.dr = fneg double %.0..0..0..0.4
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dr, double %.0..0..0..0.5, double %i.dm)
  %i.dt = tail call double @sqrt(double noundef %i.ds) #10
  %.0..0..0..0.6 = load volatile double, ptr %i.b, align 8, !tbaa !40
  %i.du = fmul double %i.dl, %.0..0..0..0.6
  %i.dv = fdiv double %i.dt, %i.du
  %i.dw = tail call double @atan(double noundef %i.dv) #10 ; 2 uses
  %i.dx = fneg double %i.dw
  %.sroa.4.0 = select i1 %i.dd, double %i.dx, double %i.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit, %bb.d, %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread
  %.sroa.4.2 = phi double [ +inf, %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread ], [ %.sroa.4.0, %bb.d ], [ %i.cw, %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit ]
  %.sroa.0.0 = phi double [ +inf, %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit.thread ], [ %i.cz, %bb.d ], [ %i.cz, %_Z18get_dym_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XY.exit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.4.2, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL16airocean_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.d = load double, ptr %i.c, align 8, !tbaa !44
  %i.e = fcmp une double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.g = load double, ptr %i.f, align 8, !tbaa !45 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.i = load double, ptr %i.h, align 8, !tbaa !46
  %i.j = fsub double %i.g, %i.i
  %i.k = fdiv double %i.j, %i.g
  %i.l = fsub double 1.000000e+00, %i.k           ; 2 uses
  %i.m = fmul double %i.l, %i.l
  %i.n = tail call double @tan(double noundef %1) #10
  %i.o = fmul double %i.n, %i.m
  %i.p = tail call double @atan(double noundef %i.o) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.p, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.q = tail call double @sin(double noundef %.0) #10 ; 6 uses
  %i.r = tail call double @cos(double noundef %.0) #10
  %i.s = tail call double @sin(double noundef %0) #10
  %i.t = tail call double @cos(double noundef %0) #10
  %i.u = insertelement <2 x double> poison, double %i.r, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = insertelement <2 x double> poison, double %i.t, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.s, i64 1
  %i.y = fmul <2 x double> %i.v, %i.x             ; 7 uses
  %i.z = extractelement <2 x double> %i.y, i64 1  ; 2 uses
  %i.aa = extractelement <2 x double> %i.y, i64 0 ; 2 uses
  %i.ab = fneg double %i.z                        ; 2 uses
  %i.ac = insertelement <2 x double> poison, double %i.q, i64 1 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv.i ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !43 ; 3 uses
  %i.aj = load <2 x double>, ptr %i.ag, align 8, !tbaa !40 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.al = load double, ptr %i.ak, align 8, !tbaa !39
  %i.am = fneg double %i.al                       ; 3 uses
  %i.an = extractelement <2 x double> %i.aj, i64 1
  %i.ao = fmul double %i.an, %i.am
  %i.ap = extractelement <2 x double> %i.aj, i64 0
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ai, double %i.ao)
  %i.ar = load double, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %i.as = fmul double %i.q, %i.am
  %i.at = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ai, double %i.as) ; 2 uses
  %i.au = load double, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %i.av = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.aw = insertelement <2 x double> %i.av, double %i.at, i64 0
  %i.ax = fneg <2 x double> %i.aw                 ; 2 uses
  %i.ay = insertelement <2 x double> %i.ac, double %i.ar, i64 0
  %i.az = fmul <2 x double> %i.ay, %i.ax
  %i.ba = insertelement <2 x double> %i.aj, double %i.aq, i64 0
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.ba, <2 x double> %i.az) ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0
  %i.bd = extractelement <2 x double> %i.bb, i64 1
  %i.be = tail call noundef double @llvm.fmuladd.f64(double %i.au, double %i.bd, double %i.bc)
  %i.bf = fcmp ugt double %i.be, 0.000000e+00
  br i1 %i.bf, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = load double, ptr %i.ad, align 8, !tbaa !41 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bj = load <2 x double>, ptr %i.bh, align 8, !tbaa !40 ; 3 uses
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %i.bl = fmul double %i.bk, %i.am
  %i.bm = extractelement <2 x double> %i.bj, i64 0 ; 2 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.ai, double %i.bl)
  %i.bo = fneg double %i.bn
  %i.bp = fmul double %i.aa, %i.bo
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.at, double %i.bp)
  %i.br = fmul double %i.bk, %i.ab
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.q, double %i.br) ; 2 uses
  %i.bt = tail call noundef double @llvm.fmuladd.f64(double %i.au, double %i.bs, double %i.bq)
  %i.bu = fcmp ugt double %i.bt, 0.000000e+00
  br i1 %i.bu, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i: ; preds = %bb.e
  %i.bv = shufflevector <2 x double> %i.aj, <2 x double> %i.bj, <2 x i32> <i32 1, i32 3>
  %i.bw = insertelement <2 x double> %i.ax, double %i.ab, i64 0
  %i.bx = fmul <2 x double> %i.bv, %i.bw
  %i.by = fneg double %i.bs
  %i.bz = fmul double %i.ar, %i.by
  %i.ca = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cb = insertelement <2 x double> %i.ca, double %i.q, i64 0
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.cb, <2 x double> %i.bx) ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.cd, double %i.bz)
  %i.cf = extractelement <2 x double> %i.cc, i64 1
  %i.cg = tail call noundef double @llvm.fmuladd.f64(double %i.aa, double %i.cf, double %i.ce)
  %i.ch = fcmp ugt double %i.cg, 0.000000e+00
  br i1 %i.ch, label %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i, label %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit

_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i, %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 23
  br i1 %exitcond.not.i, label %_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread, label %bb.d, !llvm.loop !70

_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit.thread: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.thread.i
  %i.ci = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.f

_Z18get_ico_face_indexPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZ.exit: ; preds = %_Z16is_point_in_facePK6PJ_XYZPKN12_GLOBAL__N_17pj_faceE.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 1656
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %indvars.iv.i ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 2208
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.co = load double, ptr %i.cn, align 8, !tbaa !43, !noalias !73
  %i.cp = load <2 x double>, ptr %i.ck, align 8, !tbaa !40, !noalias !73 ; 2 uses
  %i.cq = load <3 x double>, ptr %i.cm, align 8, !tbaa !40, !noalias !73 ; 3 uses
  %i.cr = shufflevector <2 x double> %i.cp, <2 x double> %i.y, <2 x i32> <i32 1, i32 3>
  %i.cs = shufflevector <3 x double> %i.cq, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fmul <2 x double> %i.cr, %i.cs
  %i.cu = shufflevector <2 x double> %i.cp, <2 x double> %i.y, <2 x i32> <i32 0, i32 2>
  %i.cv = shufflevector <3 x double> %i.cq, <3 x double> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cv, <2 x double> %i.ct)
  %i.cx = insertelement <2 x double> %i.ac, double %i.co, i64 0
  %i.cy = shufflevector <3 x double> %i.cq, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cy, <2 x double> %i.cw) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = extractelement <2 x double> %i.cz, i64 1
  %i.dc = fdiv double %i.da, %i.db
  %i.dd = fsub double 1.000000e+00, %i.dc
  %i.de = fneg double %i.dd                       ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 4416
  %i.dg = getelementptr inbounds nuw [128 x i8], ptr %i.df, i64 %indvars.iv.i
  %i.dh = insertelement <2 x double> poison, double %i.de, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.y, <2 x double> %i.y) ; 2 uses
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.de, double %i.q, double %i.q)
  %i.dl = load <8 x double>, ptr %i.dg, align 8, !tbaa !40 ; 4 uses
  %i.dm = shufflevector <8 x double> %i.dl, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.dn = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.do = fmul <2 x double> %i.dm, %i.dn
  %i.dp = shufflevector <8 x double> %i.dl, <8 x double> poison, <2 x i32> <i32 0, i32 4>
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_116pj_airocean_data8mat_multEPA4_KdS3_PA4_d:.preheader
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bx, double %i.ca)
  %i.cc = load double, ptr %i.bt, align 8, !tbaa !40
  %i.cd = load double, ptr %i.b, align 8, !tbaa !40
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cd, double %i.cb)
  %i.cf = load double, ptr %i.bu, align 8, !tbaa !40
  %i.cg = load double, ptr %i.c, align 8, !tbaa !40
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cg, double %i.ce)
  store double %i.ch, ptr %i.bv, align 8, !tbaa !40
  %i.ci = load double, ptr %i.br, align 8, !tbaa !40
  %i.cj = load double, ptr %i.t, align 8, !tbaa !40
  %i.ck = load double, ptr %i.bs, align 8, !tbaa !40
  %i.cl = load double, ptr %i.w, align 8, !tbaa !40
  %i.cm = fmul double %i.ck, %i.cl
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cj, double %i.cm)
  %i.co = load double, ptr %i.bt, align 8, !tbaa !40
  %i.cp = load double, ptr %i.ab, align 8, !tbaa !40
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cp, double %i.cn)
  %i.cr = load double, ptr %i.bu, align 8, !tbaa !40
  %i.cs = load double, ptr %i.af, align 8, !tbaa !40
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cs, double %i.cq)
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %i.ct, ptr %i.cu, align 8, !tbaa !40
  %i.cv = load double, ptr %i.br, align 8, !tbaa !40
  %i.cw = load double, ptr %i.ak, align 8, !tbaa !40
  %i.cx = load double, ptr %i.bs, align 8, !tbaa !40
  %i.cy = load double, ptr %i.an, align 8, !tbaa !40
  %i.cz = fmul double %i.cx, %i.cy
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cw, double %i.cz)
  %i.db = load double, ptr %i.bt, align 8, !tbaa !40
  %i.dc = load double, ptr %i.as, align 8, !tbaa !40
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dc, double %i.da)
  %i.de = load double, ptr %i.bu, align 8, !tbaa !40
  %i.df = load double, ptr %i.aw, align 8, !tbaa !40
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.de, double %i.df, double %i.dd)
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.dg, ptr %i.dh, align 8, !tbaa !40
  %i.di = load double, ptr %i.br, align 8, !tbaa !40
  %i.dj = load double, ptr %i.bb, align 8, !tbaa !40
  %i.dk = load double, ptr %i.bs, align 8, !tbaa !40
  %i.dl = load double, ptr %i.be, align 8, !tbaa !40
  %i.dm = fmul double %i.dk, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dj, double %i.dm)
  %i.do = load double, ptr %i.bt, align 8, !tbaa !40
  %i.dp = load double, ptr %i.bj, align 8, !tbaa !40
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dp, double %i.dn)
  %i.dr = load double, ptr %i.bu, align 8, !tbaa !40
  %i.ds = load double, ptr %i.bn, align 8, !tbaa !40
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.ds, double %i.dq)
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 56
  store double %i.dt, ptr %i.du, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ea = load double, ptr %i.dv, align 8, !tbaa !40
  %i.eb = load double, ptr %1, align 8, !tbaa !40
  %i.ec = load double, ptr %i.dw, align 8, !tbaa !40
  %i.ed = load double, ptr %i.a, align 8, !tbaa !40
  %i.ee = fmul double %i.ec, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.eb, double %i.ee)
  %i.eg = load double, ptr %i.dx, align 8, !tbaa !40
  %i.eh = load double, ptr %i.b, align 8, !tbaa !40
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.eh, double %i.ef)
  %i.ej = load double, ptr %i.dy, align 8, !tbaa !40
  %i.ek = load double, ptr %i.c, align 8, !tbaa !40
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.ek, double %i.ei)
  store double %i.el, ptr %i.dz, align 8, !tbaa !40
  %i.em = load double, ptr %i.dv, align 8, !tbaa !40
  %i.en = load double, ptr %i.t, align 8, !tbaa !40
  %i.eo = load double, ptr %i.dw, align 8, !tbaa !40
  %i.ep = load double, ptr %i.w, align 8, !tbaa !40
  %i.eq = fmul double %i.eo, %i.ep
  %i.er = tail call double @llvm.fmuladd.f64(double %i.em, double %i.en, double %i.eq)
  %i.es = load double, ptr %i.dx, align 8, !tbaa !40
  %i.et = load double, ptr %i.ab, align 8, !tbaa !40
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.es, double %i.et, double %i.er)
  %i.ev = load double, ptr %i.dy, align 8, !tbaa !40
  %i.ew = load double, ptr %i.af, align 8, !tbaa !40
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.ew, double %i.eu)
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 72
  store double %i.ex, ptr %i.ey, align 8, !tbaa !40
  %i.ez = load double, ptr %i.dv, align 8, !tbaa !40
  %i.fa = load double, ptr %i.ak, align 8, !tbaa !40
  %i.fb = load double, ptr %i.dw, align 8, !tbaa !40
  %i.fc = load double, ptr %i.an, align 8, !tbaa !40
  %i.fd = fmul double %i.fb, %i.fc
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.fa, double %i.fd)
  %i.ff = load double, ptr %i.dx, align 8, !tbaa !40
  %i.fg = load double, ptr %i.as, align 8, !tbaa !40
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.fg, double %i.fe)
  %i.fi = load double, ptr %i.dy, align 8, !tbaa !40
  %i.fj = load double, ptr %i.aw, align 8, !tbaa !40
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fj, double %i.fh)
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 80
  store double %i.fk, ptr %i.fl, align 8, !tbaa !40
  %i.fm = load double, ptr %i.dv, align 8, !tbaa !40
  %i.fn = load double, ptr %i.bb, align 8, !tbaa !40
  %i.fo = load double, ptr %i.dw, align 8, !tbaa !40
  %i.fp = load double, ptr %i.be, align 8, !tbaa !40
  %i.fq = fmul double %i.fo, %i.fp
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fn, double %i.fq)
  %i.fs = load double, ptr %i.dx, align 8, !tbaa !40
  %i.ft = load double, ptr %i.bj, align 8, !tbaa !40
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.ft, double %i.fr)
  %i.fv = load double, ptr %i.dy, align 8, !tbaa !40
  %i.fw = load double, ptr %i.bn, align 8, !tbaa !40
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fw, double %i.fu)
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 88
  store double %i.fx, ptr %i.fy, align 8, !tbaa !40
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ge = load double, ptr %i.fz, align 8, !tbaa !40
  %i.gf = load double, ptr %1, align 8, !tbaa !40
  %i.gg = load double, ptr %i.ga, align 8, !tbaa !40
  %i.gh = load double, ptr %i.a, align 8, !tbaa !40
  %i.gi = fmul double %i.gg, %i.gh
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gf, double %i.gi)
  %i.gk = load double, ptr %i.gb, align 8, !tbaa !40
  %i.gl = load double, ptr %i.b, align 8, !tbaa !40
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gl, double %i.gj)
  %i.gn = load double, ptr %i.gc, align 8, !tbaa !40
  %i.go = load double, ptr %i.c, align 8, !tbaa !40
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.go, double %i.gm)
  store double %i.gp, ptr %i.gd, align 8, !tbaa !40
  %i.gq = load double, ptr %i.fz, align 8, !tbaa !40
  %i.gr = load double, ptr %i.t, align 8, !tbaa !40
  %i.gs = load double, ptr %i.ga, align 8, !tbaa !40
  %i.gt = load double, ptr %i.w, align 8, !tbaa !40
  %i.gu = fmul double %i.gs, %i.gt
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gr, double %i.gu)
  %i.gw = load double, ptr %i.gb, align 8, !tbaa !40
  %i.gx = load double, ptr %i.ab, align 8, !tbaa !40
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gx, double %i.gv)
  %i.gz = load double, ptr %i.gc, align 8, !tbaa !40
  %i.ha = load double, ptr %i.af, align 8, !tbaa !40
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.ha, double %i.gy)
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 104
  store double %i.hb, ptr %i.hc, align 8, !tbaa !40
  %i.hd = load double, ptr %i.fz, align 8, !tbaa !40
  %i.he = load double, ptr %i.ak, align 8, !tbaa !40
  %i.hf = load double, ptr %i.ga, align 8, !tbaa !40
  %i.hg = load double, ptr %i.an, align 8, !tbaa !40
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.he, double %i.hh)
  %i.hj = load double, ptr %i.gb, align 8, !tbaa !40
  %i.hk = load double, ptr %i.as, align 8, !tbaa !40
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.hk, double %i.hi)
  %i.hm = load double, ptr %i.gc, align 8, !tbaa !40
  %i.hn = load double, ptr %i.aw, align 8, !tbaa !40
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.hn, double %i.hl)
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 112
  store double %i.ho, ptr %i.hp, align 8, !tbaa !40
  %i.hq = load double, ptr %i.fz, align 8, !tbaa !40
  %i.hr = load double, ptr %i.bb, align 8, !tbaa !40
  %i.hs = load double, ptr %i.ga, align 8, !tbaa !40
  %i.ht = load double, ptr %i.be, align 8, !tbaa !40
  %i.hu = fmul double %i.hs, %i.ht
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.hr, double %i.hu)
  %i.hw = load double, ptr %i.gb, align 8, !tbaa !40
  %i.hx = load double, ptr %i.bj, align 8, !tbaa !40
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.hx, double %i.hv)
  %i.hz = load double, ptr %i.gc, align 8, !tbaa !40
  %i.ia = load double, ptr %i.bn, align 8, !tbaa !40
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.ia, double %i.hy)
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 120
  store double %i.ib, ptr %i.ic, align 8, !tbaa !40
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !8, i64 88}
!38 = !{!"_ZTS6PJ_XYZ", !14, i64 0, !14, i64 8, !14, i64 16}
!39 = !{!38, !14, i64 8}
!40 = !{!14, !14, i64 0}
!41 = !{!38, !14, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!38, !14, i64 16}
!44 = !{!36, !14, i64 216}
!45 = !{!36, !14, i64 168}
!46 = !{!36, !14, i64 176}
!47 = !{!36, !10, i64 8}
!48 = !{!36, !10, i64 16}
!49 = !{!36, !5, i64 360}
!50 = !{!36, !15, i64 380}
!51 = !{!36, !15, i64 384}
!52 = distinct !{!52, i1 true, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ"}
!53 = distinct !{!53, !52, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ: argument 0"}
!54 = distinct !{!54, i1 true, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ"}
!55 = distinct !{!55, !54, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ"}
!57 = distinct !{!57, !56, !"_ZN12_GLOBAL__N_116pj_airocean_data8vec_multEPA4_KdPK6PJ_XYZ: argument 0"}
!58 = distinct !{!58, !42}
!59 = !{!36, !9, i64 0}
!60 = !{!36, !11, i64 24}
!61 = !{!53}
!62 = !{!55}
!63 = !{!57}
!64 = !{!36, !8, i64 112}
!65 = !{!36, !8, i64 104}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, i1 true, !"_Z10dym_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XYh"}
!68 = distinct !{!68, !67, !"_Z10dym_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK5PJ_XYh: argument 0"}
!69 = !{!68}
!70 = distinct !{!70, !42}
!71 = distinct !{!71, i1 true, !"_Z16cartesian_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZh"}
!72 = distinct !{!72, !71, !"_Z16cartesian_to_icoPKN12_GLOBAL__N_116pj_airocean_dataEPK6PJ_XYZh: argument 0"}
!73 = !{!72}
end_hunk_1
