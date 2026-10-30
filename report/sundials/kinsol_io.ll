Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinsol_io?download=true
inline.NumInlined: 16
inline.NumDeleted: 2
begin_hunk_0_@KINSetMaxSetupCalls:bb.a
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 406, ptr noundef nonnull @__func__.KINSetMaxSetupCalls, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.c = icmp eq i64 %1, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 10, ptr %i.d, align 8, !tbaa !41
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 %1, ptr %i.d, align 8, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @KINSetMaxSubSetupCalls(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 429, ptr noundef nonnull @__func__.KINSetMaxSubSetupCalls, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 437, ptr noundef nonnull @__func__.KINSetMaxSubSetupCalls, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.c = icmp eq i64 %1, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 5, ptr %i.d, align 8, !tbaa !42
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 %1, ptr %i.d, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @KINSetEtaForm(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 460, ptr noundef nonnull @__func__.KINSetEtaForm, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = add i32 %1, -1
  %i.c = icmp ult i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 469, ptr noundef nonnull @__func__.KINSetEtaForm, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %1, ptr %i.d, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @KINSetEtaConstValue(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 491, ptr noundef nonnull @__func__.KINSetEtaConstValue, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp olt double %1, 0.000000e+00
  %i.c = fcmp ogt double %1, 1.000000e+00
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 499, ptr noundef nonnull @__func__.KINSetEtaConstValue, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.d = fcmp oeq double %1, 0.000000e+00
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double 1.000000e-01, ptr %i.e, align 8, !tbaa !44
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double %1, ptr %i.e, align 8, !tbaa !44
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @KINSetEtaParams(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 522, ptr noundef nonnull @__func__.KINSetEtaParams, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp ole double %2, 1.000000e+00
  %i.c = fcmp ogt double %2, 2.000000e+00
  %or.cond = or i1 %i.b, %i.c
  %i.d = fcmp une double %2, 0.000000e+00         ; 2 uses
  %or.cond5 = and i1 %i.d, %or.cond
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 532, ptr noundef nonnull @__func__.KINSetEtaParams, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.sink = select i1 %i.d, double %2, double 2.000000e+00
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %.sink, ptr %i.e, align 8, !tbaa !45
  %i.f = fcmp ole double %1, 0.000000e+00
  %i.g = fcmp ogt double %1, 1.000000e+00
  %or.cond3 = or i1 %i.f, %i.g
  %i.h = fcmp une double %1, 0.000000e+00         ; 2 uses
  %or.cond7 = and i1 %i.h, %or.cond3
  br i1 %or.cond7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 545, ptr noundef nonnull @__func__.KINSetEtaParams, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %i.h, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store double 9.000000e-01, ptr %i.i, align 8, !tbaa !46
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store double %1, ptr %i.i, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -2, %bb.f ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @KINSetResMonParams(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 569, ptr noundef nonnull @__func__.KINSetResMonParams, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp olt double %1, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 579, ptr noundef nonnull @__func__.KINSetResMonParams, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #8
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %3 = fcmp une double %1, 0.000000e+00           ; 2 uses
  %4 = fcmp ogt double %1, 9.000000e-01
  %5 = and i1 %3, %4
  %i.c = select i1 %3, double %1, double 1.000000e-05 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  store double %i.c, ptr %i.d, align 8, !tbaa !47
  %i.e = fcmp olt double %2, 0.000000e+00
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 591, ptr noundef nonnull @__func__.KINSetResMonParams, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.f = fcmp oeq double %2, 0.000000e+00
  br i1 %i.f, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 600, ptr noundef nonnull @__func__.KINSetResMonParams, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 696
  store double 9.000000e-01, ptr %i.g, align 8, !tbaa !48
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.h = fcmp ogt double %i.c, %2
  br i1 %i.h, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 610, ptr noundef nonnull @__func__.KINSetResMonParams, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 696
  store double %2, ptr %i.i, align 8, !tbaa !48
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -2, %bb.f ], [ -2, %bb.i ], [ -2, %bb.l ], [ 0, %bb.m ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @KINSetResMonConstValue(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 632, ptr noundef nonnull @__func__.KINSetResMonConstValue, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp olt double %1, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 642, ptr noundef nonnull @__func__.KINSetResMonConstValue, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %1, ptr %i.c, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @KINSetNoMinEps(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 665, ptr noundef nonnull @__func__.KINSetNoMinEps, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %1, ptr %i.b, align 4, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @KINSetMaxNewtonStep(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 687, ptr noundef nonnull @__func__.KINSetMaxNewtonStep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp olt double %1, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 695, ptr noundef nonnull @__func__.KINSetMaxNewtonStep, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %1, ptr %i.c, align 8, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @KINSetMaxBetaFails(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 720, ptr noundef nonnull @__func__.KINSetMaxBetaFails, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 728, ptr noundef nonnull @__func__.KINSetMaxBetaFails, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.c = icmp eq i64 %1, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 10, ptr %i.d, align 8, !tbaa !52
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 %1, ptr %i.d, align 8, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @KINSetRelErrFunc(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 752, ptr noundef nonnull @__func__.KINSetRelErrFunc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp olt double %1, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 760, ptr noundef nonnull @__func__.KINSetRelErrFunc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.c = fcmp oeq double %1, 0.000000e+00
  br i1 %i.c, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %i.f = fcmp ugt double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = tail call double @sqrt(double noundef %i.e) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.h = phi double [ %i.g, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.h, ptr %i.i, align 8, !tbaa !53
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.j = tail call double @sqrt(double noundef %1) #8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.j, ptr %i.k, align 8, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @KINSetFuncNormTol(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef null, i32 noundef -1, i32 noundef 788, ptr noundef nonnull @__func__.KINSetFuncNormTol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
end_hunk_0
