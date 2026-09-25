Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oopack_v1p8?download=true
inline.NumInlined: 41
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK12MaxBenchmark7c_styleEv:bb.a
  br i1 %exitcond.not.2, label %bb.b, label %bb.c, !llvm.loop !23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK12MaxBenchmark9oop_styleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr @U, align 16, !tbaa !11
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store double %.1.2, ptr @MaxResult, align 8, !tbaa !11
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.2, %bb.c ] ; 4 uses
  %.056 = phi double [ %i.a, %bb.a ], [ %.1.2, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @U, i64 %indvars.iv
  %i.c = load double, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %.inv = fcmp ogt double %i.c, %.056
  %.1 = select i1 %.inv, double %i.c, double %.056 ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @U, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %.inv.1 = fcmp ogt double %i.f, %.1
  %.1.1 = select i1 %.inv.1, double %i.f, double %.1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @U, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !11 ; 2 uses
  %.inv.2 = fcmp ogt double %i.i, %.1.1
  %.1.2 = select i1 %.inv.2, double %i.i, double %.1.1 ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 1000
  br i1 %exitcond.not.2, label %bb.b, label %bb.c, !llvm.loop !24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK12MaxBenchmark4initEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 7 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.a = and <2 x i32> %vec.ind, splat (i32 1)
  %i.b = and <2 x i32> %vec.ind, splat (i32 1)
  %i.c = icmp eq <2 x i32> %i.a, zeroinitializer
  %i.d = icmp eq <2 x i32> %i.b, zeroinitializer
  %i.e = sub nsw <2 x i32> zeroinitializer, %vec.ind
  %i.f = sub <2 x i32> splat (i32 -2), %vec.ind
  %i.g = select <2 x i1> %i.c, <2 x i32> %vec.ind, <2 x i32> %i.e
  %i.h = select <2 x i1> %i.d, <2 x i32> %step.add, <2 x i32> %i.f
  %i.i = sitofp <2 x i32> %i.g to <2 x double>
  %i.j = sitofp <2 x i32> %i.h to <2 x double>
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @U, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x double> %i.i, ptr %i.k, align 16, !tbaa !11
  store <2 x double> %i.j, ptr %i.l, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.m = icmp eq i64 %index.next, 1000
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK12MaxBenchmark5checkEiRdS0_(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = sitofp i32 %1 to double
  %i.b = fmul nnan double %i.a, 1.000000e+03
  store double %i.b, ptr %2, align 8, !tbaa !11
  %i.c = load double, ptr @MaxResult, align 8, !tbaa !11
  store double %i.c, ptr %3, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK15MatrixBenchmark7c_styleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  br label %.preheader16

.preheader16:                                     ; preds = %bb.a, %bb.c
  %indvars.iv26 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next27, %bb.c ] ; 2 uses
  %i.a = mul nuw nsw i64 %indvars.iv26, 50        ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr @C, i64 %i.a ; 2 uses
  %invariant.gep32 = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %i.a
  br label %.preheader

bb.b:                                             ; preds = %bb.c
  ret void

.preheader:                                       ; preds = %.preheader16, %bb.d
  %indvars.iv22 = phi i64 [ 0, %.preheader16 ], [ %indvars.iv.next23, %bb.d ] ; 3 uses
  %invariant.gep30 = getelementptr inbounds nuw [8 x i8], ptr @D, i64 %indvars.iv22 ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next27, 50
  br i1 %exitcond29.not, label %bb.b, label %.preheader16, !llvm.loop !26

bb.d:                                             ; preds = %bb.e
  %gep33 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep32, i64 %indvars.iv22
  store double %i.g, ptr %gep33, align 8, !tbaa !11
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 50
  br i1 %exitcond25.not, label %bb.c, label %.preheader, !llvm.loop !27

bb.e:                                             ; preds = %bb.e, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %.01317 = phi double [ 0.000000e+00, %.preheader ], [ %i.g, %bb.e ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.b = load double, ptr %gep, align 16, !tbaa !11
  %.idx = mul nuw nsw i64 %indvars.iv, 400
  %gep31 = getelementptr inbounds nuw i8, ptr %invariant.gep30, i64 %.idx
  %i.c = load double, ptr %gep31, align 8, !tbaa !11
  %i.d = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double %.01317)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.e = load double, ptr %gep.1, align 8, !tbaa !11
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 400
  %gep31.1 = getelementptr inbounds nuw i8, ptr %invariant.gep30, i64 %.idx.1
  %i.f = load double, ptr %gep31.1, align 8, !tbaa !11
  %i.g = tail call double @llvm.fmuladd.f64(double %i.e, double %i.f, double %i.d) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 50
  br i1 %exitcond.not.1, label %bb.d, label %bb.e, !llvm.loop !28
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK15MatrixBenchmark9oop_styleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  br label %.preheader23

.preheader23:                                     ; preds = %bb.a, %bb.c
  %indvars.iv33 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next34, %bb.c ] ; 2 uses
  %i.a = mul nuw nsw i64 %indvars.iv33, 50        ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr @C, i64 %i.a ; 2 uses
  %invariant.gep39 = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %i.a
  br label %.preheader

bb.b:                                             ; preds = %bb.c
  ret void

.preheader:                                       ; preds = %.preheader23, %bb.d
  %indvars.iv29 = phi i64 [ 0, %.preheader23 ], [ %indvars.iv.next30, %bb.d ] ; 3 uses
  %invariant.gep37 = getelementptr inbounds nuw [8 x i8], ptr @D, i64 %indvars.iv29 ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next34, 50
  br i1 %exitcond36.not, label %bb.b, label %.preheader23, !llvm.loop !29

bb.d:                                             ; preds = %bb.e
  %gep40 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep39, i64 %indvars.iv29
  store double %i.g, ptr %gep40, align 8, !tbaa !11
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next30, 50
  br i1 %exitcond32.not, label %bb.c, label %.preheader, !llvm.loop !30

bb.e:                                             ; preds = %bb.e, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %.01324 = phi double [ 0.000000e+00, %.preheader ], [ %i.g, %bb.e ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.b = load double, ptr %gep, align 16, !tbaa !11
  %.idx = mul nuw nsw i64 %indvars.iv, 400
  %gep38 = getelementptr inbounds nuw i8, ptr %invariant.gep37, i64 %.idx
  %i.c = load double, ptr %gep38, align 8, !tbaa !11
  %i.d = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double %.01324)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.e = load double, ptr %gep.1, align 8, !tbaa !11
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 400
  %gep38.1 = getelementptr inbounds nuw i8, ptr %invariant.gep37, i64 %.idx.1
  %i.f = load double, ptr %gep38.1, align 8, !tbaa !11
  %i.g = tail call double @llvm.fmuladd.f64(double %i.e, double %i.f, double %i.d) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 50
  br i1 %exitcond.not.1, label %bb.d, label %bb.e, !llvm.loop !31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK15MatrixBenchmark4initEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %1 = trunc <2 x i64> %vec.ind to <2 x i32>
  %2 = add <2 x i32> %1, splat (i32 1)
  %i.a = uitofp nneg <2 x i32> %2 to <2 x double> ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @C, i64 %index
  store <2 x double> %i.a, ptr %i.b, align 16, !tbaa !11
  %i.c = fdiv <2 x double> splat (double 1.000000e+00), %i.a
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @D, i64 %index
  store <2 x double> %i.c, ptr %i.d, align 16, !tbaa !11
  %index.next = or disjoint i64 %index, 2         ; 2 uses
  %3 = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.e = add <2 x i32> %3, splat (i32 3)
  %i.f = uitofp nneg <2 x i32> %i.e to <2 x double> ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @C, i64 %index.next
  store <2 x double> %i.f, ptr %i.g, align 16, !tbaa !11
  %i.h = fdiv <2 x double> splat (double 1.000000e+00), %i.f
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @D, i64 %index.next
  store <2 x double> %i.h, ptr %i.i, align 16, !tbaa !11
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.j = icmp eq i64 %index.next.1, 2500
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK15MatrixBenchmark5checkEiRdS0_(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #5 align 2 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store double %i.u, ptr %3, align 8, !tbaa !11
  %i.a = sitofp i32 %1 to double
  %i.b = fmul nnan double %i.a, 2.500000e+05
  store double %i.b, ptr %2, align 8, !tbaa !11
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.4, %bb.c ] ; 6 uses
  %.078 = phi double [ 0.000000e+00, %bb.a ], [ %i.u, %bb.c ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !11
  %i.e = fadd double %.078, %i.d
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !11
  %i.i = fadd double %i.e, %i.h
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !11
  %i.m = fadd double %i.i, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !11
  %i.q = fadd double %i.m, %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @E, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load double, ptr %i.s, align 8, !tbaa !11
  %i.u = fadd double %i.q, %i.t                   ; 2 uses
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 2500
  br i1 %exitcond.not.4, label %bb.b, label %bb.c, !llvm.loop !33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK17IteratorBenchmark7c_styleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store double %i.y, ptr @IteratorResult, align 8, !tbaa !11
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.4, %bb.c ] ; 7 uses
  %.056 = phi double [ 0.000000e+00, %bb.a ], [ %i.y, %bb.c ]
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %indvars.iv
  %i.b = load double, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !11
  %i.e = tail call double @llvm.fmuladd.f64(double %i.b, double %i.d, double %.056)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %indvars.iv.next
  %i.g = load double, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %indvars.iv.next
  %i.i = load double, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call double @llvm.fmuladd.f64(double %i.g, double %i.i, double %i.e)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %indvars.iv.next.1
  %i.l = load double, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %indvars.iv.next.1
  %i.n = load double, ptr %i.m, align 8, !tbaa !11
  %i.o = tail call double @llvm.fmuladd.f64(double %i.l, double %i.n, double %i.j)
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %indvars.iv.next.2
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %indvars.iv.next.2
  %i.s = load double, ptr %i.r, align 8, !tbaa !11
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double %i.s, double %i.o)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %indvars.iv.next.3
  %i.v = load double, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %indvars.iv.next.3
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.t) ; 2 uses
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 1000
  br i1 %exitcond.not.4, label %bb.b, label %bb.c, !llvm.loop !34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK17IteratorBenchmark9oop_styleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store double %i.y, ptr @IteratorResult, align 8, !tbaa !11
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.4, %bb.c ] ; 7 uses
  %.09 = phi double [ 0.000000e+00, %bb.a ], [ %i.y, %bb.c ]
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %indvars.iv
  %i.b = load double, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !11
  %i.e = tail call double @llvm.fmuladd.f64(double %i.b, double %i.d, double %.09)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %indvars.iv.next
  %i.g = load double, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %indvars.iv.next
  %i.i = load double, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call double @llvm.fmuladd.f64(double %i.g, double %i.i, double %i.e)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %indvars.iv.next.1
  %i.l = load double, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %indvars.iv.next.1
  %i.n = load double, ptr %i.m, align 8, !tbaa !11
  %i.o = tail call double @llvm.fmuladd.f64(double %i.l, double %i.n, double %i.j)
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %indvars.iv.next.2
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %indvars.iv.next.2
  %i.s = load double, ptr %i.r, align 8, !tbaa !11
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double %i.s, double %i.o)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %indvars.iv.next.3
  %i.v = load double, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %indvars.iv.next.3
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.t) ; 2 uses
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 1000
  br i1 %exitcond.not.4, label %bb.b, label %bb.c, !llvm.loop !35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK17IteratorBenchmark4initEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %1 = trunc <2 x i64> %vec.ind to <2 x i32>
  %2 = add <2 x i32> %1, splat (i32 1)
  %i.a = uitofp nneg <2 x i32> %2 to <2 x double> ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %index
  store <2 x double> %i.a, ptr %i.b, align 16, !tbaa !11
  %i.c = fdiv <2 x double> splat (double 1.000000e+00), %i.a
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %index
  store <2 x double> %i.c, ptr %i.d, align 16, !tbaa !11
  %index.next = or disjoint i64 %index, 2         ; 2 uses
  %3 = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.e = add <2 x i32> %3, splat (i32 3)
  %i.f = uitofp nneg <2 x i32> %i.e to <2 x double> ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @A, i64 %index.next
  store <2 x double> %i.f, ptr %i.g, align 16, !tbaa !11
  %i.h = fdiv <2 x double> splat (double 1.000000e+00), %i.f
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @B, i64 %index.next
  store <2 x double> %i.h, ptr %i.i, align 16, !tbaa !11
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.j = icmp eq i64 %index.next.1, 1000
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK17IteratorBenchmark5checkEiRdS0_(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = mul nsw i32 %1, 2000
  %i.b = sitofp i32 %i.a to double
  store double %i.b, ptr %2, align 8, !tbaa !11
  %i.c = load double, ptr @IteratorResult, align 8, !tbaa !11
  store double %i.c, ptr %3, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK16ComplexBenchmark7c_styleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr @Y, i64 %index ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.a, align 16, !tbaa !11 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec15 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @X, i64 %index
  %wide.vec16 = load <4 x double>, ptr %i.b, align 16, !tbaa !11 ; 2 uses
  %strided.vec17 = shufflevector <4 x double> %wide.vec16, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec18 = shufflevector <4 x double> %wide.vec16, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.c = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec17, <2 x double> splat (double 5.000000e-01), <2 x double> %strided.vec)
  %i.d = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec18, <2 x double> splat (double f0xBFEBB67AE8584CAA), <2 x double> %i.c)
  %i.e = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec18, <2 x double> splat (double 5.000000e-01), <2 x double> %strided.vec15)
  %i.f = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec17, <2 x double> splat (double f0x3FEBB67AE8584CAA), <2 x double> %i.e)
  %interleaved.vec = shufflevector <2 x double> %i.d, <2 x double> %i.f, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.a, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.g = icmp eq i64 %index.next, 1000
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK16ComplexBenchmark9oop_styleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr @Y, i64 %index ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.a, align 16, !tbaa !11 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec16 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @X, i64 %index
  %wide.vec17 = load <4 x double>, ptr %i.b, align 16, !tbaa !11 ; 2 uses
  %strided.vec18 = shufflevector <4 x double> %wide.vec17, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec19 = shufflevector <4 x double> %wide.vec17, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.c = fmul <2 x double> %strided.vec19, splat (double f0xBFEBB67AE8584CAA)
  %i.d = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec18, <2 x double> splat (double 5.000000e-01), <2 x double> %i.c)
  %i.e = fmul <2 x double> %strided.vec18, splat (double f0x3FEBB67AE8584CAA)
  %i.f = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec19, <2 x double> splat (double 5.000000e-01), <2 x double> %i.e)
  %i.g = fadd <2 x double> %strided.vec, %i.d
  %i.h = fadd <2 x double> %strided.vec16, %i.f
  %interleaved.vec = shufflevector <2 x double> %i.g, <2 x double> %i.h, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.a, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.i = icmp eq i64 %index.next, 1000
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK16ComplexBenchmark4initEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
vector.ph:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16000) @Y, i8 0, i64 16000, i1 false), !tbaa !11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %1 = trunc <2 x i64> %vec.ind to <2 x i32>
  %2 = add <2 x i32> %1, splat (i32 1)
  %i.a = uitofp nneg <2 x i32> %2 to <2 x double> ; 2 uses
  %i.b = fdiv <2 x double> splat (double 1.000000e+00), %i.a
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @X, i64 %index
  %interleaved.vec = shufflevector <2 x double> %i.a, <2 x double> %i.b, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.c, align 16, !tbaa !11
  %3 = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.d = add <2 x i32> %3, splat (i32 3)
  %i.e = uitofp nneg <2 x i32> %i.d to <2 x double> ; 2 uses
  %i.f = fdiv <2 x double> splat (double 1.000000e+00), %i.e
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @X, i64 %index
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %interleaved.vec.1 = shufflevector <2 x double> %i.e, <2 x double> %i.f, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec.1, ptr %i.h, align 16, !tbaa !11
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.i = icmp eq i64 %index.next.1, 1000
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK16ComplexBenchmark5checkEiRdS0_(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #5 align 2 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store double %i.ac, ptr %3, align 8, !tbaa !11
  %i.a = mul nsw i32 %1, 8000
  %i.b = sitofp i32 %i.a to double
  store double %i.b, ptr %2, align 8, !tbaa !11
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.089 = phi double [ 0.000000e+00, %bb.a ], [ %i.ac, %bb.c ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @Y, i64 %indvars.iv ; 2 uses
  %i.d = load double, ptr %i.c, align 16, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !43
  %i.g = fadd double %i.d, %i.f
  %i.h = fadd double %.089, %i.g
  %i.i = getelementptr inbounds nuw [16 x i8], ptr @Y, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load double, ptr %i.j, align 16, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !43
  %i.n = fadd double %i.k, %i.m
  %i.o = fadd double %i.h, %i.n
  %i.p = getelementptr inbounds nuw [16 x i8], ptr @Y, i64 %indvars.iv ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load double, ptr %i.q, align 16, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load double, ptr %i.s, align 8, !tbaa !43
  %i.u = fadd double %i.r, %i.t
  %i.v = fadd double %i.o, %i.u
  %i.w = getelementptr inbounds nuw [16 x i8], ptr @Y, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load double, ptr %i.x, align 16, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.aa = load double, ptr %i.z, align 8, !tbaa !43
  %i.ab = fadd double %i.y, %i.aa
  %i.ac = fadd double %i.v, %i.ab                 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 1000
  br i1 %exitcond.not.3, label %bb.b, label %bb.c, !llvm.loop !40
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.e = getelementptr inbounds i8, ptr %0, i64 %2 ; 5 uses
  %i.f = and i64 %1, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.h = getelementptr i8, ptr %i.g, i64 %1
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load ptr, ptr %i.i, align 8, !nosanitize !17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = inttoptr i64 %1 to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.m = load ptr, ptr %0, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.p = tail call i64 @clock() #19
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.r = inttoptr i64 %1 to ptr
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.024.us = phi i32 [ %i.s, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.s = add nuw nsw i32 %.024.us, 1              ; 2 uses
  %exitcond26.not = icmp eq i32 %i.s, %3
  br i1 %exitcond26.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.d
  %i.t = tail call i64 @clock() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.u = load ptr, ptr %0, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.x = sub nsw i64 %i.t, %i.p
  %i.y = sitofp i64 %i.x to double
  %i.z = fdiv double %i.y, 1.000000e+06           ; 2 uses
  store double %i.z, ptr %4, align 8, !tbaa !11
  %i.aa = load double, ptr %i.a, align 8, !tbaa !11
  %i.ab = fdiv double %i.aa, %i.z
  %i.ac = fmul double %i.ab, f0x3EB0C6F7A0B5ED8D
  store double %i.ac, ptr %5, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.024 = phi i32 [ %i.ah, %.lr.ph.split ], [ 0, %.lr.ph ]
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.ae = getelementptr i8, ptr %i.ad, i64 %1
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load ptr, ptr %i.af, align 8, !nosanitize !17
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.ah = add nuw nsw i32 %.024, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN9Benchmark4findEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN9Benchmark5countE, align 4, !tbaa !9
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = load i32, ptr @_ZN9Benchmark5countE, align 4, !tbaa !9
  %i.d = sext i32 %i.c to i64
  %i.e = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.e, label %.lr.ph, label %.loopexit, !llvm.loop !1

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Benchmark4listE, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.j) #20
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Benchmark4listE, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %i.o
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK9Benchmark9time_bothEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %i.b = alloca double, align 8                   ; 3 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.e = load ptr, ptr %0, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !44
  %i.h = load ptr, ptr %0, align 8, !tbaa !16
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nosanitize !17
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !44
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !44
  %i.n = tail call i64 @clock() #19               ; 0 uses
  %i.o = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.o, label %.lr.ph.split.i, label %_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_.exit

.lr.ph.split.i:                                   ; preds = %bb.a, %.lr.ph.split.i
  %.024.i = phi i32 [ %i.s, %.lr.ph.split.i ], [ 0, %bb.a ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !16
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nosanitize !17
end_hunk_0
