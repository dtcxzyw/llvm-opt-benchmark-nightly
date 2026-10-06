Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_lsrkstep_io?download=true
inline.NumInlined: 14
inline.NumDeleted: 2
begin_hunk_0_@LSRKStepSetSTSMethodByName:bb.a

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @LSRKStepSetSSPMethodByName(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.4) #8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.5) #8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 180, ptr noundef nonnull @__func__.LSRKStepSetSSPMethodByName, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(20) @.str.6) #8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.m = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetSSPMethod, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %LSRKStepSetSSPMethod.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !10   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  store ptr @lsrkStep_TakeStepSSPs2, ptr %i.o, align 8, !tbaa !21
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !23   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  store i32 1, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 2, ptr %i.r, align 4, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 216
  store i32 3, ptr %i.s, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 808
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  store i32 2, ptr %i.v, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 2, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  store i32 1, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 1, ptr %i.y, align 4, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 2, ptr %i.z, align 8, !tbaa !39
  br label %LSRKStepSetSSPMethod.exit

LSRKStepSetSSPMethod.exit:                        ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(20) @.str.7) #8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.ac = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetSSPMethod, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #7 ; 2 uses
  %.not.i8 = icmp eq i32 %i.ac, 0
  br i1 %.not.i8, label %bb.i, label %LSRKStepSetSSPMethod.exit10

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store ptr @lsrkStep_TakeStepSSP43, ptr %i.ae, align 8, !tbaa !21
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !23  ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  store i32 1, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  store i32 4, ptr %i.ah, align 4, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  store i32 3, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 808
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 92
  store i32 3, ptr %i.al, align 4, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 3, ptr %i.am, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i32 2, ptr %i.an, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store i32 2, ptr %i.ao, align 4, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 3, ptr %i.ap, align 8, !tbaa !39
  br label %LSRKStepSetSSPMethod.exit10

LSRKStepSetSSPMethod.exit10:                      ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(21) @.str.8) #8
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.as = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetSSPMethod, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not.i11 = icmp eq i32 %i.as, 0
  br i1 %.not.i11, label %bb.l, label %LSRKStepSetSSPMethod.exit13

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 160
  store ptr @lsrkStep_TakeStepSSP104, ptr %i.au, align 8, !tbaa !21
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !23  ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  store i32 1, ptr %i.aw, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  store i32 10, ptr %i.ax, align 4, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 216
  store i32 3, ptr %i.ay, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 808
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 92
  store i32 4, ptr %i.bb, align 4, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 4, ptr %i.bc, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store i32 3, ptr %i.bd, align 8, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i32 3, ptr %i.be, align 4, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i32 4, ptr %i.bf, align 8, !tbaa !39
  br label %LSRKStepSetSSPMethod.exit13

LSRKStepSetSSPMethod.exit13:                      ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 196, ptr noundef nonnull @__func__.LSRKStepSetSSPMethodByName, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %LSRKStepSetSSPMethod.exit13, %LSRKStepSetSSPMethod.exit10, %LSRKStepSetSSPMethod.exit
  %.0 = phi i32 [ %i.m, %LSRKStepSetSSPMethod.exit ], [ %i.ac, %LSRKStepSetSSPMethod.exit10 ], [ %i.as, %LSRKStepSetSSPMethod.exit13 ], [ -22, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @LSRKStepSetDomEigFn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetDomEigFn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @LSRKStepSetDomEigFrequency(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetDomEigFrequency, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, 0
  br i1 %i.d, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store i64 25, ptr %2, align 8, !tbaa !41
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 180
  store i32 0, ptr %3, align 4, !tbaa !42
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !23  ; 3 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 180
  store i32 1, ptr %i.g, align 4, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 152
  store i64 1, ptr %i.h, align 8, !tbaa !41
  br label %bb.f

bb.e:                                             ; preds = %.thread, %bb.c
  %i.i = phi ptr [ %i.e, %.thread ], [ %.pre, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  store i64 %1, ptr %i.j, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 180
  store i32 0, ptr %i.k, align 4, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @LSRKStepSetMaxNumStages(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepSetMaxNumStages, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.d = icmp slt i32 %1, 2
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %. = select i1 %i.d, i32 200, i32 %1
  store i32 %., ptr %i.f, align 4, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.c
}

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
end_hunk_0
begin_hunk_1_@LSRKStepGetNumDomEigUpdates:bb.a
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
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53
  store i64 %i.h, ptr %1, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ -22, %bb.c ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @LSRKStepGetNumDomEigEstIters(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @lsrkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef nonnull @__func__.LSRKStepGetNumDomEigEstIters, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.e, i32 noundef -22, i32 noundef 672, ptr noundef nonnull @__func__.LSRKStepGetNumDomEigEstIters, ptr noundef nonnull @.str, ptr noundef nonnull @.str.22) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54
  store i64 %i.h, ptr %1, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ -22, %bb.c ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @lsrkStep_SetOptions(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @sunCheckAndSetCharArgs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull @lsrkStep_SetOptions.char_pairs, i32 noundef 2, ptr noundef %4, ptr noundef nonnull %i.a) #7 ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !52
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [16 x i8], ptr @lsrkStep_SetOptions.char_pairs, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !66
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef %i.b, i32 noundef 724, ptr noundef nonnull @__func__.lsrkStep_SetOptions, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef %i.f) #7
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %4, align 4, !tbaa !52
  %.not43 = icmp eq i32 %i.g, 0
  br i1 %.not43, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @sunCheckAndSetLongArgs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull @lsrkStep_SetOptions.long_pairs, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #7 ; 3 uses
  %.not44 = icmp eq i32 %i.h, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef %i.h, i32 noundef 735, ptr noundef nonnull @__func__.lsrkStep_SetOptions, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25) #7
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.i = load i32, ptr %4, align 4, !tbaa !52
  %.not45 = icmp eq i32 %i.i, 0
  br i1 %.not45, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.j = call i32 @sunCheckAndSetIntArgs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull @lsrkStep_SetOptions.int_pairs, i32 noundef 5, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #7 ; 3 uses
  %.not46 = icmp eq i32 %i.j, 0
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load i32, ptr %i.a, align 4, !tbaa !52
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [16 x i8], ptr @lsrkStep_SetOptions.int_pairs, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !68
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef %i.j, i32 noundef 746, ptr noundef nonnull @__func__.lsrkStep_SetOptions, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef %i.n) #7
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.o = load i32, ptr %4, align 4, !tbaa !52
  %.not47 = icmp eq i32 %i.o, 0
  br i1 %.not47, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.p = call i32 @sunCheckAndSetRealArgs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull @lsrkStep_SetOptions.real_pairs, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #7 ; 3 uses
  %.not48 = icmp eq i32 %i.p, 0
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef %i.p, i32 noundef 757, ptr noundef nonnull @__func__.lsrkStep_SetOptions, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.c, %bb.k, %bb.h, %bb.e, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.i ], [ %i.h, %bb.e ], [ 0, %bb.c ], [ %i.j, %bb.h ], [ 0, %bb.f ], [ %i.p, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare i32 @sunCheckAndSetCharArgs(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sunCheckAndSetLongArgs(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sunCheckAndSetIntArgs(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sunCheckAndSetRealArgs(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lsrkStep_SetDefaults(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @lsrkStep_AccessStepMem(ptr noundef %0, ptr noundef nonnull @__func__.lsrkStep_SetDefaults, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i64 25, ptr %i.f, align 8, !tbaa !41
  store <2 x double> <double 1.010000e+00, double f0x3FC3B13B13B13B14>, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i32 -1, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  store i32 0, ptr %i.i, align 4, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i32 1, ptr %i.j, align 4, !tbaa !45
  %i.k = call i32 @arkReplaceAdaptController(ptr noundef %0, ptr noundef null, i32 noundef 1) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare i32 @lsrkStep_AccessStepMem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkReplaceAdaptController(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lsrkStep_GetStageIndex(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @lsrkStep_AccessStepMem(ptr noundef %0, ptr noundef nonnull @__func__.lsrkStep_GetStageIndex, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !70
  store i32 %i.e, ptr %1, align 4, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29
  %.not6 = icmp eq i32 %i.i, 0
  %i.j = zext i1 %.not6 to i32
  %i.k = add nsw i32 %i.g, %i.j
  store i32 %i.k, ptr %2, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @lsrkStep_PrintAllStats(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @lsrkStep_AccessStepMem(ptr noundef %0, ptr noundef nonnull @__func__.lsrkStep_PrintAllStats, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %sunfprintf_long.exit25

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %sunfprintf_long.exit, label %sunfprintf_long.exit.thread

sunfprintf_long.exit:                             ; preds = %bb.b
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 29, ptr noundef nonnull @.str.33, i64 noundef %i.e) #7 ; 0 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %sunfprintf_long.exit27, label %bb.c

sunfprintf_long.exit.thread:                      ; preds = %bb.b
  %fputc.i = call i32 @fputc(i32 44, ptr %1)      ; 0 uses
  %i.k = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.33, i64 noundef %i.e) #7 ; 0 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29
  %.not2239 = icmp eq i32 %i.n, 0
  br i1 %.not2239, label %sunfprintf_long.exit27.thread, label %bb.d

bb.c:                                             ; preds = %sunfprintf_long.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %i.q = sext i32 %i.p to i64
  %i.r = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 29, ptr noundef nonnull @.str.34, i64 noundef %i.q) #7 ; 0 uses
  br label %sunfprintf_long.exit25

bb.d:                                             ; preds = %sunfprintf_long.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  %i.u = sext i32 %i.t to i64
  %fputc.i24 = call i32 @fputc(i32 44, ptr %1)    ; 0 uses
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.34, i64 noundef %i.u) #7 ; 0 uses
  br label %sunfprintf_long.exit25

sunfprintf_long.exit27:                           ; preds = %sunfprintf_long.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !49
  %i.y = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 29, ptr noundef nonnull @.str.35, i64 noundef %i.x) #7 ; 0 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  %.not23 = icmp eq ptr %i.ab, null
  br i1 %.not23, label %sunfprintf_long.exit31, label %sunfprintf_long.exit31.thread43

sunfprintf_long.exit27.thread:                    ; preds = %sunfprintf_long.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !49
  %fputc.i26 = call i32 @fputc(i32 44, ptr %1)    ; 0 uses
  %i.ae = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.35, i64 noundef %i.ad) #7 ; 0 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !23  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  %.not2341 = icmp eq ptr %i.ah, null
  br i1 %.not2341, label %bb.f, label %bb.e

sunfprintf_long.exit31.thread43:                  ; preds = %sunfprintf_long.exit27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !53
  %i.ak = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 29, ptr noundef nonnull @.str.36, i64 noundef %i.aj) #7 ; 0 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load i64, ptr %i.am, align 8, !tbaa !54
  %i.ao = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 29, ptr noundef nonnull @.str.37, i64 noundef %i.an) #7 ; 0 uses
  %.pn.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %sunfprintf_long.exit31

bb.e:                                             ; preds = %sunfprintf_long.exit27.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !53
  %fputc.i28 = call i32 @fputc(i32 44, ptr %1)    ; 0 uses
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.36, i64 noundef %i.aq) #7 ; 0 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.au = load i64, ptr %i.at, align 8, !tbaa !54
  %fputc.i30 = call i32 @fputc(i32 44, ptr %1)    ; 0 uses
  %i.av = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.37, i64 noundef %i.au) #7 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %bb.f

sunfprintf_long.exit31:                           ; preds = %sunfprintf_long.exit27, %sunfprintf_long.exit31.thread43
  %.pn = phi ptr [ %i.z, %sunfprintf_long.exit27 ], [ %.pn.pre, %sunfprintf_long.exit31.thread43 ]
  %.in.in = getelementptr inbounds nuw i8, ptr %.pn, i64 64
  %.in = load i32, ptr %.in.in, align 8, !tbaa !51
  %i.aw = sext i32 %.in to i64
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 29, ptr noundef nonnull @.str.38, i64 noundef %i.aw) #7 ; 0 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %i.bb = sext i32 %i.ba to i64
  %i.bc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef 29, ptr noundef nonnull @.str.39, i64 noundef %i.bb) #7 ; 0 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  %i.bf = load double, ptr %i.be, align 8, !tbaa !71
  %i.bg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.67, i32 noundef 29, ptr noundef nonnull @.str.40, double noundef %i.bf) #7 ; 0 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !72
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.67, i32 noundef 29, ptr noundef nonnull @.str.41, double noundef %i.bj) #7 ; 0 uses
  br label %sunfprintf_long.exit25

bb.f:                                             ; preds = %sunfprintf_long.exit27.thread, %bb.e
  %i.bl = phi ptr [ %i.af, %sunfprintf_long.exit27.thread ], [ %.pre, %bb.e ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !51
  %i.bo = sext i32 %i.bn to i64
  %fputc.i32 = call i32 @fputc(i32 44, ptr %1)    ; 0 uses
  %i.bp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.38, i64 noundef %i.bo) #7 ; 0 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 68
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !43
  %i.bt = sext i32 %i.bs to i64
  %fputc.i34 = call i32 @fputc(i32 44, ptr %1)    ; 0 uses
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.39, i64 noundef %i.bt) #7 ; 0 uses
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !71
  %fputc.i36 = call i32 @fputc(i32 44, ptr %1)    ; 0 uses
  %i.by = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.40, double noundef %i.bx) #7 ; 0 uses
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !72
  %fputc.i37 = call i32 @fputc(i32 44, ptr %1)    ; 0 uses
  %i.cc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.41, double noundef %i.cb) #7 ; 0 uses
  br label %sunfprintf_long.exit25

sunfprintf_long.exit25:                           ; preds = %bb.f, %sunfprintf_long.exit31, %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @lsrkStep_WriteParameters(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @lsrkStep_AccessStepMem(ptr noundef %0, ptr noundef nonnull @__func__.lsrkStep_WriteParameters, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39
  switch i32 %i.e, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %fwrite28 = call i64 @fwrite(ptr nonnull @.str.42, i64 42, i64 1, ptr %1) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %fwrite27 = call i64 @fwrite(ptr nonnull @.str.43, i64 42, i64 1, ptr %1) ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %fwrite26 = call i64 @fwrite(ptr nonnull @.str.44, i64 47, i64 1, ptr %1) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %fwrite25 = call i64 @fwrite(ptr nonnull @.str.45, i64 47, i64 1, ptr %1) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %fwrite = call i64 @fwrite(ptr nonnull @.str.46, i64 48, i64 1, ptr %1) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -22, i32 noundef 900, ptr noundef nonnull @__func__.lsrkStep_WriteParameters, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #7
  br label %bb.p

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %i.h) #7 ; 0 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !37
  %i.m = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef %i.l) #7 ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29
  switch i32 %i.p, label %bb.n [
    i32 1, label %bb.j
    i32 0, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40
  %i.s = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %i.r) #7 ; 0 uses
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %i.u) #7 ; 0 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %.not29 = icmp eq ptr %i.y, null
  br i1 %.not29, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !53
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.51, i64 noundef %i.aa) #7 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = phi ptr [ %.pre, %bb.l ], [ %i.w, %bb.k ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !73
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.52, double noundef %i.ae) #7 ; 0 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !44
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.53, double noundef %i.ai) #7 ; 0 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 188
  %i.am = load i32, ptr %i.al, align 4, !tbaa !45
  %i.an = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef %i.am) #7 ; 0 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !74
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.55, double noundef %i.aq) #7 ; 0 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 152
  %i.au = load i64, ptr %i.at, align 8, !tbaa !41
  %i.av = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.56, i64 noundef %i.au) #7 ; 0 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 160
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !46
  %i.az = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef %i.ay) #7 ; 0 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 164
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !47
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef %i.bc) #7 ; 0 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 180
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !42
  %i.bh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %i.bg) #7 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -22, i32 noundef 938, ptr noundef nonnull @__func__.lsrkStep_WriteParameters, ptr noundef nonnull @.str, ptr noundef nonnull @.str.60) #7
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.j
  %fputc = call i32 @fputc(i32 10, ptr %1)        ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.n, %bb.h
  %.0 = phi i32 [ 0, %bb.o ], [ -22, %bb.h ], [ -22, %bb.n ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @lsrkStep_GetNumRhsEvals(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.b = call i32 @lsrkStep_AccessStepMem(ptr noundef %0, ptr noundef nonnull @__func__.lsrkStep_GetNumRhsEvals, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -22, i32 noundef 964, ptr noundef nonnull @__func__.lsrkStep_GetNumRhsEvals, ptr noundef nonnull @.str, ptr noundef nonnull @.str.62) #7
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -22, i32 noundef 971, ptr noundef nonnull @__func__.lsrkStep_GetNumRhsEvals, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #7
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !55
  store i64 %i.g, ptr %2, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.f ], [ -22, %bb.c ], [ -22, %bb.e ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @lsrkStep_GetEstLocalErrors(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @lsrkStep_AccessStepMem(ptr noundef %0, ptr noundef nonnull @__func__.lsrkStep_GetEstLocalErrors, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.d = load i32, ptr %i.c, align 8, !tbaa !75
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %1) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.b, %bb.a ], [ -51, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS12ARKodeMemRec", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!12 = !{!"double", !4, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !8, i64 0}
!14 = !{!"p1 _ZTS18_generic_ARKInterp", !8, i64 0}
!15 = !{!"p1 _ZTS18ARKodeHAdaptMemRec", !8, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"p1 _ZTS16ARKodeRootMemRec", !8, i64 0}
!18 = !{!"p1 _ZTS17ARKodeRelaxMemRec", !8, i64 0}
!19 = !{!"p1 _ZTS27SUNAdjointCheckpointScheme_", !8, i64 0}
!20 = !{!"ARKodeMemRec", !11, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !12, i64 48, !13, i64 56, !5, i64 64, !12, i64 72, !13, i64 80, !5, i64 88, !5, i64 92, !8, i64 96, !8, i64 104, !5, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !5, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !5, i64 312, !8, i64 320, !5, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !8, i64 512, !8, i64 520, !8, i64 528, !8, i64 536, !5, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !13, i64 592, !13, i64 600, !5, i64 608, !13, i64 616, !5, i64 624, !13, i64 632, !13, i64 640, !5, i64 648, !13, i64 656, !13, i64 664, !13, i64 672, !13, i64 680, !13, i64 688, !14, i64 696, !5, i64 704, !5, i64 708, !5, i64 712, !5, i64 716, !12, i64 720, !12, i64 728, !12, i64 736, !12, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !5, i64 800, !15, i64 808, !16, i64 816, !5, i64 824, !5, i64 828, !5, i64 832, !16, i64 840, !16, i64 848, !5, i64 856, !16, i64 864, !16, i64 872, !16, i64 880, !16, i64 888, !16, i64 896, !16, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !12, i64 936, !12, i64 944, !5, i64 952, !12, i64 960, !12, i64 968, !5, i64 976, !5, i64 980, !5, i64 984, !5, i64 988, !5, i64 992, !5, i64 996, !5, i64 1000, !5, i64 1004, !5, i64 1008, !17, i64 1016, !13, i64 1024, !16, i64 1032, !5, i64 1040, !5, i64 1044, !18, i64 1048, !8, i64 1056, !8, i64 1064, !8, i64 1072, !8, i64 1080, !8, i64 1088, !5, i64 1096, !5, i64 1100, !5, i64 1104, !16, i64 1112, !16, i64 1120, !19, i64 1128, !16, i64 1136, !5, i64 1144, !5, i64 1148}
!21 = !{!20, !8, i64 160}
!22 = !{!"p1 _ZTS20ARKodeLSRKStepMemRec", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS19SUNDomEigEstimator_", !8, i64 0}
!25 = !{!"p1 double", !8, i64 0}
!26 = !{!"any p2 pointer", !8, i64 0}
!27 = !{!"p2 _ZTS17_generic_N_Vector", !26, i64 0}
!28 = !{!"ARKodeLSRKStepMemRec", !8, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !5, i64 64, !5, i64 68, !16, i64 72, !16, i64 80, !16, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !16, i64 152, !5, i64 160, !5, i64 164, !24, i64 168, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !25, i64 200, !27, i64 208, !5, i64 216}
!29 = !{!28, !5, i64 192}
!30 = !{!28, !5, i64 216}
!31 = !{!20, !15, i64 808}
!32 = !{!"p1 _ZTS27_generic_SUNAdaptController", !8, i64 0}
!33 = !{!"ARKodeHAdaptMemRec", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !32, i64 104, !5, i64 112, !8, i64 120, !8, i64 128, !16, i64 136, !16, i64 144}
!34 = !{!33, !5, i64 92}
!35 = !{!28, !5, i64 16}
!36 = !{!33, !5, i64 88}
!37 = !{!28, !5, i64 20}
!38 = !{!28, !16, i64 80}
!39 = !{!28, !5, i64 32}
!40 = !{!28, !5, i64 28}
!41 = !{!28, !16, i64 152}
!42 = !{!28, !5, i64 180}
!43 = !{!28, !5, i64 68}
!44 = !{!28, !12, i64 136}
!45 = !{!28, !5, i64 188}
!46 = !{!28, !5, i64 160}
!47 = !{!28, !5, i64 164}
!48 = !{!28, !24, i64 168}
!49 = !{!28, !16, i64 56}
!50 = !{!16, !16, i64 0}
!51 = !{!28, !5, i64 64}
!52 = !{!5, !5, i64 0}
!53 = !{!28, !16, i64 48}
!54 = !{!28, !16, i64 88}
!55 = !{!28, !16, i64 40}
!56 = !{!28, !8, i64 8}
!57 = !{!28, !5, i64 176}
!58 = !{!28, !5, i64 184}
!59 = !{!"p1 _ZTS23SUNDomEigEstimator_Ops_", !8, i64 0}
!60 = !{!"SUNDomEigEstimator_", !8, i64 0, !8, i64 8, !59, i64 16, !11, i64 24}
!61 = !{!60, !59, i64 16}
!62 = !{!"SUNDomEigEstimator_Ops_", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120}
!63 = !{!62, !8, i64 72}
!64 = !{!"p1 omnipotent char", !8, i64 0}
!65 = !{!"sunKeyCharPair", !64, i64 0, !8, i64 8}
!66 = !{!65, !64, i64 0}
!67 = !{!"sunKeyIntPair", !64, i64 0, !8, i64 8}
!68 = !{!67, !64, i64 0}
!69 = !{!12, !12, i64 0}
!70 = !{!28, !5, i64 24}
!71 = !{!28, !12, i64 120}
!72 = !{!28, !12, i64 128}
!73 = !{!28, !12, i64 112}
!74 = !{!28, !12, i64 144}
!75 = !{!20, !5, i64 800}
!76 = !{!20, !13, i64 656}
end_hunk_1
