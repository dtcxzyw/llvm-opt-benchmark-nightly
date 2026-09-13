Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_lsrkstep_io?download=true
inline.NumInlined: 14
inline.NumDeleted: 2
begin_hunk_0_@LSRKStepSetMaxNumStages:bb.a

; Function Attrs: nounwind uwtable
define i32 @LSRKStepSetDomEigSafetyFactor(ptr noundef %0, double noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetDomEigSafetyFactor, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.d = fcmp olt double %1, 1.000000e+00
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %. = select i1 %i.d, double 1.010000e+00, double %1
  store double %., ptr %i.f, align 8, !tbaa !44
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @LSRKStepSetUseAnalyticStabilityRegion(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetUseAnalyticStabilityRegion, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store i32 1, ptr %i.e, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i32 0, ptr %i.f, align 8, !tbaa !58
  %.not5 = icmp eq i32 %1, 0
  %i.g = zext i1 %.not5 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 188
  store i32 %i.g, ptr %i.h, align 4, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @LSRKStepSetNumDomEigEstInitPreprocessIters(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetNumDomEigEstInitPreprocessIters, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store i32 %1, ptr %i.e, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @LSRKStepSetNumDomEigEstPreprocessIters(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetNumDomEigEstPreprocessIters, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 164
  %. = call i32 @llvm.smax.i32(i32 %1, i32 0)
  store i32 %., ptr %i.e, align 4, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %.not9 = icmp eq ptr %i.g, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46
  %i.j = call i32 @SUNDomEigEstimator_SetNumPreprocessIters(ptr noundef nonnull %i.g, i32 noundef %i.i) #7
  %.not10 = icmp eq i32 %i.j, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.k, i32 noundef -59, i32 noundef 400, ptr noundef nonnull @__func__.LSRKStepSetNumDomEigEstPreprocessIters, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ %i.c, %bb.a ], [ -59, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare i32 @SUNDomEigEstimator_SetNumPreprocessIters(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @LSRKStepSetNumSSPStages(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetNumSSPStages, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.g, i32 noundef -22, i32 noundef 435, ptr noundef nonnull @__func__.LSRKStepSetNumSSPStages, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #7
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.h = icmp slt i32 %1, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  switch i32 %i.j, label %bb.i [
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 2, ptr %i.k, align 4, !tbaa !40
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 4, ptr %i.l, align 4, !tbaa !40
  br label %bb.t

bb.h:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 10, ptr %i.m, align 4, !tbaa !40
  br label %bb.t

bb.i:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.n, i32 noundef -22, i32 noundef 452, ptr noundef nonnull @__func__.LSRKStepSetNumSSPStages, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #7
  br label %bb.t

bb.j:                                             ; preds = %bb.d
  switch i32 %i.j, label %bb.r [
    i32 2, label %bb.k
    i32 3, label %bb.m
    i32 4, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.o = icmp eq i32 %1, 1
  br i1 %i.o, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.p, i32 noundef -22, i32 noundef 466, ptr noundef nonnull @__func__.LSRKStepSetNumSSPStages, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #7
  br label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.q = icmp samesign ult i32 %1, 4
  br i1 %i.q, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = uitofp nneg i32 %1 to double
  %sqrt = call double @llvm.sqrt.f64(double %i.r)
  %i.s = fptosi double %sqrt to i32               ; 2 uses
  %i.t = mul nsw i32 %i.s, %i.s
  %.not16 = icmp eq i32 %i.t, %1
  br i1 %.not16, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.u, i32 noundef -22, i32 noundef 485, ptr noundef nonnull @__func__.LSRKStepSetNumSSPStages, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #7
  br label %bb.t

.sink.split:                                      ; preds = %bb.n
  %i.v = icmp eq i32 %1, 4
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %lsrkStep_TakeStepSSP43.lsrkStep_TakeStepSSPs3 = select i1 %i.v, ptr @lsrkStep_TakeStepSSP43, ptr @lsrkStep_TakeStepSSPs3
  store ptr %lsrkStep_TakeStepSSP43.lsrkStep_TakeStepSSPs3, ptr %i.x, align 8, !tbaa !21
  br label %bb.s

bb.p:                                             ; preds = %bb.j
  %.not15 = icmp eq i32 %1, 10
  br i1 %.not15, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.y, i32 noundef -22, i32 noundef 498, ptr noundef nonnull @__func__.LSRKStepSetNumSSPStages, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #7
  br label %bb.t

bb.r:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.z, i32 noundef -22, i32 noundef 505, ptr noundef nonnull @__func__.LSRKStepSetNumSSPStages, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #7
  br label %bb.t

bb.s:                                             ; preds = %.sink.split, %bb.p, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %1, ptr %i.aa, align 4, !tbaa !40
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.a, %bb.s, %bb.r, %bb.q, %bb.o, %bb.l, %bb.i, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.i ], [ %i.c, %bb.a ], [ -22, %bb.r ], [ -22, %bb.l ], [ 0, %bb.s ], [ -22, %bb.o ], [ -22, %bb.q ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare i32 @lsrkStep_TakeStepSSPs3(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @LSRKStepSetDomEigEstimator(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetDomEigEstimator, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  store ptr null, ptr %i.f, align 8, !tbaa !48
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.j, i32 noundef -22, i32 noundef 541, ptr noundef nonnull @__func__.LSRKStepSetDomEigEstimator, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #7
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.n, i32 noundef -22, i32 noundef 548, ptr noundef nonnull @__func__.LSRKStepSetDomEigEstimator, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #7
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  store ptr %1, ptr %i.p, align 8, !tbaa !48
  %i.q = call i32 @SUNDomEigEstimator_SetATimes(ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull @lsrkStep_DQJtimes) #7
  %.not14 = icmp eq i32 %i.q, 0
  br i1 %.not14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.r, i32 noundef -59, i32 noundef 560, ptr noundef nonnull @__func__.LSRKStepSetDomEigEstimator, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.a, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ %i.c, %bb.a ], [ 0, %bb.c ], [ -22, %bb.e ], [ -22, %bb.g ], [ -59, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare i32 @SUNDomEigEstimator_SetATimes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lsrkStep_DQJtimes(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @LSRKStepGetNumDomEigUpdates(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepGetNumDomEigUpdates, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.e, i32 noundef -22, i32 noundef 590, ptr noundef nonnull @__func__.LSRKStepGetNumDomEigUpdates, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  store i64 %i.h, ptr %1, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ -22, %bb.c ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @LSRKStepGetMaxNumStages(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepGetMaxNumStages, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.e, i32 noundef -22, i32 noundef 619, ptr noundef nonnull @__func__.LSRKStepGetMaxNumStages, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51
  store i32 %i.h, ptr %1, align 4, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ -22, %bb.c ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @LSRKStepGetNumDomEigEstRhsEvals(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepGetNumDomEigEstRhsEvals, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.e, i32 noundef -22, i32 noundef 648, ptr noundef nonnull @__func__.LSRKStepGetNumDomEigEstRhsEvals, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
end_hunk_0
