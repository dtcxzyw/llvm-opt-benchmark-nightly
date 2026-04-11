inline.NumInlined: 195
inline.NumDeleted: 111
begin_hunk_0_@_Z9summarizev:bb.a

bb.b:                                             ; preds = %.lr.ph34, %bb.b
  %indvars.iv45 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next46, %bb.b ] ; 2 uses
  %0 = phi <4 x double> [ zeroinitializer, %.lr.ph34 ], [ %7, %bb.b ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @result_times, i64 %indvars.iv45
  %i.w = load double, ptr %i.v, align 8, !tbaa !8 ; 4 uses
  %i.x = tail call double @log(double noundef %i.w) #9, !tbaa !4
  %i.y = fdiv double %i.d, %i.w
  %i.z = tail call double @log(double noundef %i.y) #9, !tbaa !4
  %1 = fdiv double %i.w, %i.h
  %2 = tail call double @log(double noundef %1) #9, !tbaa !4
  %3 = insertelement <4 x double> poison, double %2, i64 0
  %4 = insertelement <4 x double> %3, double %i.z, i64 1
  %5 = insertelement <4 x double> %4, double %i.w, i64 2
  %6 = insertelement <4 x double> %5, double %i.x, i64 3
  %7 = fadd <4 x double> %0, %6                   ; 5 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.aa = load i32, ptr @current_test, align 4, !tbaa !4 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
end_hunk_0
begin_hunk_1_@_Z9summarizev:bb.a
  br i1 %i.ac, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ad = extractelement <4 x double> %7, i64 2
  %i.ae = fmul double %i.ad, 0x3E7AD7F29ABCAF48
  %8 = extractelement <4 x double> %7, i64 0
  %9 = extractelement <4 x double> %7, i64 1
  %i.af = extractelement <4 x double> %7, i64 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %.preheader
  %.023.lcssa.a = phi double [ 0.000000e+00, %.preheader ], [ %i.af, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ]
  %.0.lcssa.a = phi double [ 0.000000e+00, %.preheader ], [ %i.ae, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ]
  %.022.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %9, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ]
  %.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %8, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.lcssa = phi i32 [ %i.s, %.preheader ], [ %i.aa, %._crit_edge.loopexit ], [ %i.e, %bb.a ]
  %10 = sitofp i32 %.lcssa to double
  %i.ag = fdiv double %.023.lcssa.a, %10
  %i.ah = tail call double @exp(double noundef %i.ag) #9, !tbaa !4
  %i.ai = fmul double %i.ah, 0x3E7AD7F29ABCAF48
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ak = sitofp i32 %i.aj to double
  %i.al = fdiv double %.022.lcssa, %i.ak
  %i.am = tail call double @exp(double noundef %i.al) #9, !tbaa !4
  %i.an = fmul double %i.am, 0x3E7AD7F29ABCAF48
  %i.ao = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fdiv double %.0.lcssa, %i.ap
  %i.ar = tail call double @exp(double noundef %i.aq) #9, !tbaa !4
  %i.as = fmul double %i.ar, 0x3E7AD7F29ABCAF48
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.ai, double noundef %i.an, double noundef %i.as) ; 0 uses
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %.0.lcssa.a) ; 0 uses
  %i.av = load i32, ptr @current_test, align 4, !tbaa !4
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fdiv double %.0.lcssa, %i.aw
  %i.ay = tail call double @exp(double noundef %i.ax) #9, !tbaa !4
  %i.az = fmul double %i.ay, 0x3E7AD7F29ABCAF48
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %i.az) ; 0 uses
end_hunk_1
