inline.NumInlined: 450
inline.NumDeleted: 215
begin_hunk_0_@_ZN3p2t12SweepContext17InitTriangulationEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load <2 x double>, ptr %i.c, align 8
  %1 = shufflevector <2 x double> %i.d, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0> ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not70 = icmp eq ptr %i.b, %i.f
  br i1 %.not70, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %2 = phi <4 x double> [ %1, %bb.a ], [ %16, %.lr.ph ] ; 4 uses
  %3 = extractelement <4 x double> %2, i64 2      ; 2 uses
  %4 = extractelement <4 x double> %2, i64 3      ; 2 uses
  %5 = fsub double %4, %3
  %6 = fmul double %5, 3.000000e-01               ; 2 uses
  %7 = extractelement <4 x double> %2, i64 0
  %8 = extractelement <4 x double> %2, i64 1      ; 2 uses
  %i.g = fsub double %7, %8
  %i.h = fmul double %i.g, 3.000000e-01
  %i.i = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 3 uses
  %i.j = fsub double %3, %6
  %i.k = fsub double %8, %i.h                     ; 2 uses
  invoke void @_ZN3p2t5PointC1Edd(ptr noundef nonnull align 8 dereferenceable(40) %i.i, double noundef %i.j, double noundef %i.k)
          to label %bb.b unwind label %bb.ac

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.058.071 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %9 = phi <4 x double> [ %16, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %10 = load ptr, ptr %.sroa.058.071, align 8
  %11 = load <2 x double>, ptr %10, align 8
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0> ; 3 uses
  %13 = fcmp olt <4 x double> %12, %9
  %14 = fcmp ogt <4 x double> %12, %9
  %15 = shufflevector <4 x i1> %14, <4 x i1> %13, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %16 = select <4 x i1> %15, <4 x double> %12, <4 x double> %9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.058.071, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.i, ptr %i.m, align 8
  %i.n = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 3 uses
  %i.o = fadd double %4, %6
  invoke void @_ZN3p2t5PointC1Edd(ptr noundef nonnull align 8 dereferenceable(40) %i.n, double noundef %i.o, double noundef %i.k)
          to label %bb.c unwind label %bb.ad

end_hunk_0
