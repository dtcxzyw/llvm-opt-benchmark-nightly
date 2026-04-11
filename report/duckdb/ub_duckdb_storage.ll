inline.NumInlined: 20079
inline.NumDeleted: 9323
begin_hunk_0_@_ZN6duckdbL18ComputeDerivativesERKNS_6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEERKNS0_ImLb1ESaImEEERNS0_IdLb1ESaIdEEEm:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.043.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.w, %.lr.ph ]
  %4 = phi <2 x double> [ splat (double 1.000000e+00), %bb.a ], [ %13, %.lr.ph ] ; 2 uses
  %5 = uitofp i64 %3 to double                    ; 2 uses
  %6 = extractelement <2 x double> %4, i64 0      ; 2 uses
  %7 = extractelement <2 x double> %4, i64 1      ; 2 uses
  %i.a = fdiv double %6, %7
  %i.b = fdiv double 1.000000e+00, %5             ; 3 uses
  %i.c = tail call double @pow(double noundef %i.a, double noundef %i.b) #25, !tbaa !3
  %i.d = fsub double 1.000000e+00, %i.c
  %i.e = tail call double @pow(double noundef %6, double noundef %i.b) #25, !tbaa !3
  %i.f = fneg double %.043.lcssa
  %i.g = fmul double %i.e, %i.f
  %i.h = tail call double @pow(double noundef %7, double noundef %i.b) #25, !tbaa !3
  %i.i = fmul double %i.h, %5
  %i.j = fdiv double %i.g, %i.i
  br i1 %.not, label %._crit_edge56, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %._crit_edge
  %8 = insertelement <2 x double> poison, double %i.j, i64 0
  br label %.lr.ph55

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04348.a = phi double [ %i.w, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %.04447 = phi i64 [ %i.x, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %9 = phi <2 x double> [ %13, %.lr.ph ], [ splat (double 1.000000e+00), %bb.a ]
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.04447)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1156 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.04447)
  %i.n = load i64, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = tail call noundef i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %10 = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %11 = insertelement <2 x i64> %10, i64 %i.q, i64 1
  %12 = uitofp <2 x i64> %11 to <2 x double>      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.s = load atomic i64, ptr %i.r seq_cst, align 8
  %i.t = uitofp i64 %i.s to double
  %13 = fmul <2 x double> %9, %12                 ; 2 uses
  %14 = extractelement <2 x double> %12, i64 0
  %15 = extractelement <2 x double> %12, i64 1
  %i.u = fdiv double %14, %15
  %i.v = fsub double 1.000000e+00, %i.u
  %i.w = tail call double @llvm.fmuladd.f64(double %i.t, double %i.v, double %.04348.a) ; 2 uses
  %i.x = add nuw i64 %.04447, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1179
end_hunk_0
begin_hunk_1_@_ZN6duckdbL18ComputeDerivativesERKNS_6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEERKNS0_ImLb1ESaImEEERNS0_IdLb1ESaIdEEEm:bb.a
._crit_edge56:                                    ; preds = %.lr.ph55, %._crit_edge
  ret void

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.04553 = phi i64 [ %i.af, %.lr.ph55 ], [ 0, %.lr.ph55.preheader ] ; 4 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.04553)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1156 ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.04553)
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !70
  %16 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %17 = load atomic i64, ptr %16 seq_cst, align 8
  %18 = tail call noundef i64 @llvm.umax.i64(i64 %17, i64 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ad = load atomic i64, ptr %i.ac seq_cst, align 8
  %19 = uitofp i64 %i.ad to double
  %20 = fmul double %i.d, %19
  %21 = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %22 = insertelement <2 x i64> %21, i64 %18, i64 1
  %23 = uitofp <2 x i64> %22 to <2 x double>
  %24 = insertelement <2 x double> %8, double %20, i64 1
  %25 = fdiv <2 x double> %24, %23                ; 2 uses
  %shift = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %25, %shift
  %26 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.04553)
  store double %26, ptr %i.ae, align 8, !tbaa !1172
  %i.af = add nuw i64 %.04553, 1                  ; 2 uses
  %exitcond60.not = icmp eq i64 %i.af, %3
  br i1 %exitcond60.not, label %._crit_edge56, label %.lr.ph55, !llvm.loop !1180
end_hunk_1
