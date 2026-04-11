inline.NumInlined: 450
inline.NumDeleted: 215
begin_hunk_0_@_ZN3p2t12SweepContext17InitTriangulationEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load <2 x double>, ptr %i.c, align 8     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not70 = icmp eq ptr %i.b, %i.f
  %1 = extractelement <2 x double> %i.d, i64 0    ; 2 uses
  %2 = extractelement <2 x double> %i.d, i64 1    ; 2 uses
  br i1 %.not70, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %3 = extractelement <2 x double> %16, i64 1
  %4 = extractelement <2 x double> %16, i64 0
  %5 = extractelement <2 x double> %14, i64 1
  %6 = extractelement <2 x double> %14, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.036.lcssa = phi double [ %2, %bb.a ], [ %3, %._crit_edge.loopexit ] ; 2 uses
  %.034.lcssa = phi double [ %2, %bb.a ], [ %5, %._crit_edge.loopexit ]
  %.030.lcssa = phi double [ %1, %bb.a ], [ %4, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi double [ %1, %bb.a ], [ %6, %._crit_edge.loopexit ] ; 2 uses
  %7 = fsub double %.0.lcssa, %.030.lcssa
  %8 = fmul double %7, 3.000000e-01               ; 2 uses
  %i.g = fsub double %.034.lcssa, %.036.lcssa
  %i.h = fmul double %i.g, 3.000000e-01
  %i.i = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 3 uses
  %i.j = fsub double %.030.lcssa, %8
  %i.k = fsub double %.036.lcssa, %i.h            ; 2 uses
  invoke void @_ZN3p2t5PointC1Edd(ptr noundef nonnull align 8 dereferenceable(40) %i.i, double noundef %i.j, double noundef %i.k)
          to label %bb.b unwind label %bb.ac

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.058.071 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %9 = phi <2 x double> [ %14, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %10 = phi <2 x double> [ %16, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %11 = load ptr, ptr %.sroa.058.071, align 8
  %12 = load <2 x double>, ptr %11, align 8       ; 4 uses
  %13 = fcmp ogt <2 x double> %12, %9
  %14 = select <2 x i1> %13, <2 x double> %12, <2 x double> %9 ; 3 uses
  %15 = fcmp olt <2 x double> %12, %10
  %16 = select <2 x i1> %15, <2 x double> %12, <2 x double> %10 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.058.071, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.i, ptr %i.m, align 8
  %i.n = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 3 uses
  %i.o = fadd double %.0.lcssa, %8
  invoke void @_ZN3p2t5PointC1Edd(ptr noundef nonnull align 8 dereferenceable(40) %i.n, double noundef %i.o, double noundef %i.k)
          to label %bb.c unwind label %bb.ad

end_hunk_0
