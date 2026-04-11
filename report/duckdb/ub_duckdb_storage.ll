inline.NumInlined: 20079
inline.NumDeleted: 9323
begin_hunk_0_@_ZN6duckdbL18ComputeDerivativesERKNS_6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEERKNS0_ImLb1ESaImEEERNS0_IdLb1ESaIdEEEm:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.043.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.w, %.lr.ph ]
  %.042.lcssa = phi double [ 1.000000e+00, %bb.a ], [ %7, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi double [ 1.000000e+00, %bb.a ], [ %8, %.lr.ph ] ; 2 uses
  %4 = uitofp i64 %3 to double                    ; 2 uses
  %i.a = fdiv double %.042.lcssa, %.0.lcssa
  %i.b = fdiv double 1.000000e+00, %4             ; 3 uses
  %i.c = tail call double @pow(double noundef %i.a, double noundef %i.b) #25, !tbaa !3
  %i.d = fsub double 1.000000e+00, %i.c
  %i.e = tail call double @pow(double noundef %.042.lcssa, double noundef %i.b) #25, !tbaa !3
  %i.f = fneg double %.043.lcssa
  %i.g = fmul double %i.e, %i.f
  %i.h = tail call double @pow(double noundef %.0.lcssa, double noundef %i.b) #25, !tbaa !3
  %i.i = fmul double %i.h, %4
  %i.j = fdiv double %i.g, %i.i
  br i1 %.not, label %._crit_edge56, label %.lr.ph55

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.050 = phi double [ %8, %.lr.ph ], [ 1.000000e+00, %bb.a ]
  %.04348.a = phi double [ %7, %.lr.ph ], [ 1.000000e+00, %bb.a ]
  %.04348 = phi double [ %i.w, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %.04447 = phi i64 [ %i.x, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.04447)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1156 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.04447)
  %i.n = load i64, ptr %i.m, align 8, !tbaa !70
  %5 = uitofp i64 %i.n to double                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = tail call noundef i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %6 = uitofp i64 %i.q to double                  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.s = load atomic i64, ptr %i.r seq_cst, align 8
  %i.t = uitofp i64 %i.s to double
  %7 = fmul double %.04348.a, %5                  ; 2 uses
  %8 = fmul double %.050, %6                      ; 2 uses
  %i.u = fdiv double %5, %6
  %i.v = fsub double 1.000000e+00, %i.u
  %i.w = tail call double @llvm.fmuladd.f64(double %i.t, double %i.v, double %.04348) ; 2 uses
  %i.x = add nuw i64 %.04447, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1179
end_hunk_0
begin_hunk_1_@_ZN6duckdbL18ComputeDerivativesERKNS_6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEERKNS0_ImLb1ESaImEEERNS0_IdLb1ESaIdEEEm:bb.a
._crit_edge56:                                    ; preds = %.lr.ph55, %._crit_edge
  ret void

.lr.ph55:                                         ; preds = %._crit_edge, %.lr.ph55
  %.04553 = phi i64 [ %i.af, %.lr.ph55 ], [ 0, %._crit_edge ] ; 4 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.04553)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1156 ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.04553)
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !70
  %9 = uitofp i64 %i.ab to double
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load atomic i64, ptr %i.ac seq_cst, align 8
  %10 = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %11 = uitofp i64 %10 to double
  %12 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %13 = load atomic i64, ptr %12 seq_cst, align 8
  %14 = uitofp i64 %13 to double
  %15 = fdiv double %i.j, %9
  %16 = fmul double %i.d, %14
  %17 = fdiv double %16, %11
  %18 = fsub double %15, %17
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.04553)
  store double %18, ptr %i.ae, align 8, !tbaa !1172
  %i.af = add nuw i64 %.04553, 1                  ; 2 uses
  %exitcond60.not = icmp eq i64 %i.af, %3
  br i1 %exitcond60.not, label %._crit_edge56, label %.lr.ph55, !llvm.loop !1180
end_hunk_1
