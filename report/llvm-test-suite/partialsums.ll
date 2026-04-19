inline.NumInlined: 11
begin_hunk_0_@main:bb.a
  %i.b = add nsw i32 %.05772.int, -1
  %i.c = sitofp i32 %i.b to double
  %i.d = fmul double %indvar.conv, %indvar.conv
  %i.e = fmul double %i.d, %indvar.conv
  %i.f = tail call double @pow(double noundef 0x3FE5555555555555, double noundef %i.c) #5, !tbaa !4
  %i.g = tail call double @sqrt(double noundef %indvar.conv) #5, !tbaa !4
  %i.h = tail call double @sin(double noundef %indvar.conv) #5, !tbaa !4
  %i.i = tail call double @cos(double noundef %indvar.conv) #5, !tbaa !4
  %2 = fdiv double 1.000000e+00, %i.g
  %3 = insertelement <2 x double> poison, double %i.e, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = insertelement <2 x double> poison, double %i.i, i64 0
  %i.j = insertelement <2 x double> %5, double %i.h, i64 1 ; 2 uses
  %6 = fmul <2 x double> %4, %i.j
  %7 = fmul <2 x double> %i.j, %6
  %8 = fdiv <2 x double> splat (double 1.000000e+00), %7
  %i.k = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = insertelement <4 x double> %i.k, double %2, i64 2
  %i.l = insertelement <4 x double> %9, double %i.f, i64 3
  %i.m = fadd <4 x double> %i.a, %i.l             ; 5 uses
  %.int = add nuw nsw i32 %.05772.int, 1          ; 2 uses
  %exitcond = icmp eq i32 %.int, 2500001
  br i1 %exitcond, label %.preheader, label %bb.b, !llvm.loop !8

.preheader:                                       ; preds = %bb.b, %.preheader
  %.05882 = phi <2 x double> [ %i.ab, %.preheader ], [ <double 1.000000e+00, double 2.000000e+00>, %bb.b ] ; 8 uses
  %.05981 = phi <2 x double> [ %i.aa, %.preheader ], [ zeroinitializer, %bb.b ]
  %.06080 = phi <2 x double> [ %i.x, %.preheader ], [ zeroinitializer, %bb.b ]
  %.06179 = phi <2 x double> [ %i.q, %.preheader ], [ zeroinitializer, %bb.b ]
  %.06278 = phi <2 x double> [ %i.v, %.preheader ], [ zeroinitializer, %bb.b ]
  %.06377 = phi <2 x double> [ %i.s, %.preheader ], [ zeroinitializer, %bb.b ]
  %i.n = fadd <2 x double> %.05882, splat (double 1.000000e+00)
  %i.o = fmul <2 x double> %.05882, %i.n
  %i.p = fdiv <2 x double> splat (double 1.000000e+00), %i.o
  %i.q = fadd <2 x double> %.06179, %i.p          ; 3 uses
  %i.r = fdiv <2 x double> splat (double 1.000000e+00), %.05882
  %i.s = fadd <2 x double> %.06377, %i.r          ; 3 uses
  %i.t = fmul <2 x double> %.05882, %.05882
  %i.u = fdiv <2 x double> splat (double 1.000000e+00), %i.t
  %i.v = fadd <2 x double> %.06278, %i.u          ; 3 uses
  %i.w = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %.05882
  %i.x = fadd <2 x double> %.06080, %i.w          ; 3 uses
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.05882, <2 x double> splat (double 2.000000e+00), <2 x double> splat (double -1.000000e+00))
  %i.z = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %i.y
  %i.aa = fadd <2 x double> %.05981, %i.z         ; 3 uses
  %i.ab = fadd <2 x double> %.05882, splat (double 2.000000e+00) ; 2 uses
  %.0.vec.extract = extractelement <2 x double> %i.ab, i64 0
  %i.ac = fcmp ugt double %.0.vec.extract, 2.500000e+06
  br i1 %i.ac, label %bb.c, label %.preheader, !llvm.loop !10

bb.c:                                             ; preds = %.preheader
  %i.ad = extractelement <4 x double> %i.m, i64 3
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.ad, ptr noundef nonnull @.str.1) ; 0 uses
  %i.af = extractelement <4 x double> %i.m, i64 2
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.af, ptr noundef nonnull @.str.2) ; 0 uses
  %shift = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.q, %shift
  %i.ah = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.ah, ptr noundef nonnull @.str.3) ; 0 uses
  %i.aj = extractelement <4 x double> %i.m, i64 1
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.aj, ptr noundef nonnull @.str.4) ; 0 uses
  %i.al = extractelement <4 x double> %i.m, i64 0
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.al, ptr noundef nonnull @.str.5) ; 0 uses
  %shift108 = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop109 = fadd <2 x double> %i.s, %shift108
end_hunk_0
