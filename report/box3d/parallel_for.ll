Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/parallel_for?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3ParallelForShared = type { %struct.b3AtomicInt, i32, i32, i32, ptr, ptr }
%struct.b3AtomicInt = type { i32 }
%struct.b3ParallelForTask = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden void @b3ParallelFor(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.b3ParallelForShared, align 8 ; 11 uses
  %7 = alloca [32 x %struct.b3ParallelForTask], align 16 ; 3 uses
  %i.a = alloca [32 x ptr], align 16              ; 5 uses
  %i.b = icmp slt i32 %2, 1
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4680
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %i.e = shl nsw i32 %i.d, 5                      ; 3 uses
  %i.f = mul nsw i32 %i.e, %3
  %.not = icmp sgt i32 %2, %i.f
  %i.g = add nsw i32 %2, -1                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add i32 %i.g, %i.e
  %i.i = sdiv i32 %i.h, %i.e
  %8 = freeze i32 %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink68 = phi i32 [ %8, %bb.c ], [ %3, %bb.b ] ; 3 uses
  %i.j = add i32 %i.g, %.sink68
  %i.k = sdiv i32 %i.j, %.sink68                  ; 2 uses
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.k) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 %i.k, ptr %i.m, align 4, !tbaa !11
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 12
  %10 = zext i32 %.sink68 to i64
  %11 = zext nneg i32 %2 to i64
  %12 = shl nuw nsw i64 %11, 32
  %13 = or disjoint i64 %12, %10
  store i64 %13, ptr %9, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %1, ptr %i.o, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %4, ptr %i.p, align 8, !tbaa !13
  store atomic i32 0, ptr %6 seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.q = icmp sgt i32 %i.l, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4756 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4688
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4704
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.e

.lr.ph56:                                         ; preds = %b3ParallelForTrampoline.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4696
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4704
  %wide.trip.count61 = zext nneg i32 %i.l to i64
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %b3ParallelForTrampoline.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %b3ParallelForTrampoline.exit ] ; 5 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv ; 3 uses
  store ptr %6, ptr %i.w, align 16, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.y, ptr %i.x, align 8, !tbaa !17
  %i.z = load i32, ptr %i.r, align 4, !tbaa !80
  %i.aa = icmp slt i32 %i.z, 256
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !82
  %i.ad = call ptr %i.ab(ptr noundef nonnull @b3ParallelForTrampoline, ptr noundef nonnull %i.w, ptr noundef %i.ac, ptr noundef %5) #3
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !83
  %i.af = load i32, ptr %i.r, align 4, !tbaa !80
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.r, align 4, !tbaa !80
  br label %b3ParallelForTrampoline.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr null, ptr %i.ah, align 8, !tbaa !83
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !11  ; 2 uses
  %i.al = load i32, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.am = load i32, ptr %i.n, align 4, !tbaa !19
  %i.an = atomicrmw add ptr %6, i32 1 seq_cst, align 4 ; 2 uses
  %.not28.i = icmp slt i32 %i.an, %i.ak
  br i1 %.not28.i, label %.lr.ph.i, label %b3ParallelForTrampoline.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.ao = phi i32 [ %i.ar, %.lr.ph.i ], [ %i.an, %bb.g ]
  %i.ap = mul nsw i32 %i.ao, %i.al                ; 2 uses
  %i.aq = add nsw i32 %i.ap, %i.al
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.am)
  call void %i.aj(i32 noundef %i.ap, i32 noundef %spec.select.i, i32 noundef %i.y, ptr noundef %i.ai) #3, !inline_history !84
  %i.ar = atomicrmw add ptr %6, i32 1 seq_cst, align 4 ; 2 uses
  %.not.i = icmp slt i32 %i.ar, %i.ak
  br i1 %.not.i, label %.lr.ph.i, label %b3ParallelForTrampoline.exit

b3ParallelForTrampoline.exit:                     ; preds = %.lr.ph.i, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph56, label %bb.e, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.j, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph56, %bb.j
  %indvars.iv58 = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next59, %bb.j ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv58
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !83 ; 2 uses
  %.not53 = icmp eq ptr %i.at, null
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !86
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !82
  call void %i.au(ptr noundef nonnull %i.at, ptr noundef %i.av) #3
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge, label %bb.h, !llvm.loop !21

bb.k:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @b3ParallelForTrampoline(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = atomicrmw add ptr %i.a, i32 1 seq_cst, align 4 ; 2 uses
  %.not28 = icmp slt i32 %i.n, %i.i
  br i1 %.not28, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.o = phi i32 [ %i.r, %.lr.ph ], [ %i.n, %bb.a ]
  %i.p = mul nsw i32 %i.o, %i.k                   ; 2 uses
  %i.q = add nsw i32 %i.p, %i.k
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %i.m)
  tail call void %i.g(i32 noundef %i.p, i32 noundef %spec.select, i32 noundef %i.c, ptr noundef %i.e) #3
  %i.r = atomicrmw add ptr %i.a, i32 1 seq_cst, align 4 ; 2 uses
  %.not = icmp slt i32 %i.r, %i.i
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"b3AtomicInt", !5, i64 0}
!10 = !{!"b3ParallelForShared", !9, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !8, i64 16, !8, i64 24}
!11 = !{!10, !5, i64 4}
!12 = !{!10, !8, i64 16}
!13 = !{!10, !8, i64 24}
!14 = !{!"p1 _ZTS19b3ParallelForShared", !8, i64 0}
!15 = !{!"b3ParallelForTask", !14, i64 0, !5, i64 8}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !5, i64 8}
!18 = !{!10, !5, i64 8}
!19 = !{!10, !5, i64 12}
!20 = distinct !{!20, !85}
!21 = distinct !{!21, !85}
!22 = !{!"p1 omnipotent char", !8, i64 0}
!23 = !{!"b3Stack", !22, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !5, i64 792}
!24 = !{!"p1 int", !8, i64 0}
!25 = !{!"b3DynamicArray_int", !24, i64 0, !5, i64 8, !5, i64 12}
!26 = !{!"p1 _ZTS12b3MoveResult", !8, i64 0}
!27 = !{!"p1 _ZTS10b3MovePair", !8, i64 0}
!28 = !{!"p1 _ZTS9b3SetItem", !8, i64 0}
!29 = !{!"b3HashSet", !28, i64 0, !5, i64 8, !5, i64 12}
!30 = !{!"b3BroadPhase", !4, i64 0, !4, i64 240, !25, i64 288, !26, i64 304, !27, i64 312, !5, i64 320, !9, i64 324, !29, i64 328}
!31 = !{!"b3ConstraintGraph", !4, i64 0}
!32 = !{!"p1 _ZTS16b3BlockAllocator", !8, i64 0}
!33 = !{!"b3DynamicArray_b3BlockAllocator", !32, i64 0, !5, i64 8, !5, i64 12}
!34 = !{!"p1 _ZTS7b3Mutex", !8, i64 0}
!35 = !{!"b3IdPool", !25, i64 0, !5, i64 16}
!36 = !{!"p1 _ZTS6b3Body", !8, i64 0}
!37 = !{!"b3DynamicArray_b3Body", !36, i64 0, !5, i64 8, !5, i64 12}
!38 = !{!"p1 _ZTS11b3SolverSet", !8, i64 0}
!39 = !{!"b3DynamicArray_b3SolverSet", !38, i64 0, !5, i64 8, !5, i64 12}
!40 = !{!"p1 _ZTS7b3Joint", !8, i64 0}
!41 = !{!"b3DynamicArray_b3Joint", !40, i64 0, !5, i64 8, !5, i64 12}
!42 = !{!"p1 _ZTS9b3Contact", !8, i64 0}
!43 = !{!"b3DynamicArray_b3Contact", !42, i64 0, !5, i64 8, !5, i64 12}
!44 = !{!"p1 _ZTS8b3Island", !8, i64 0}
!45 = !{!"b3DynamicArray_b3Island", !44, i64 0, !5, i64 8, !5, i64 12}
!46 = !{!"p1 _ZTS7b3Shape", !8, i64 0}
!47 = !{!"b3DynamicArray_b3Shape", !46, i64 0, !5, i64 8, !5, i64 12}
!48 = !{!"p1 _ZTS11b3NameEntry", !8, i64 0}
!49 = !{!"b3DynamicArray_b3NameEntry", !48, i64 0, !5, i64 8, !5, i64 12}
!50 = !{!"b3NameCache", !49, i64 0, !8, i64 16}
!51 = !{!"p1 _ZTS8b3Sensor", !8, i64 0}
!52 = !{!"b3DynamicArray_b3Sensor", !51, i64 0, !5, i64 8, !5, i64 12}
!53 = !{!"p1 _ZTS13b3TaskContext", !8, i64 0}
!54 = !{!"b3DynamicArray_b3TaskContext", !53, i64 0, !5, i64 8, !5, i64 12}
!55 = !{!"p1 _ZTS19b3SensorTaskContext", !8, i64 0}
!56 = !{!"b3DynamicArray_b3SensorTaskContext", !55, i64 0, !5, i64 8, !5, i64 12}
!57 = !{!"p1 _ZTS15b3BodyMoveEvent", !8, i64 0}
!58 = !{!"b3DynamicArray_b3BodyMoveEvent", !57, i64 0, !5, i64 8, !5, i64 12}
!59 = !{!"p1 _ZTS23b3SensorBeginTouchEvent", !8, i64 0}
!60 = !{!"b3DynamicArray_b3SensorBeginTouchEvent", !59, i64 0, !5, i64 8, !5, i64 12}
!61 = !{!"p1 _ZTS24b3ContactBeginTouchEvent", !8, i64 0}
!62 = !{!"b3DynamicArray_b3ContactBeginTouchEvent", !61, i64 0, !5, i64 8, !5, i64 12}
!63 = !{!"p1 _ZTS17b3ContactHitEvent", !8, i64 0}
!64 = !{!"b3DynamicArray_b3ContactHitEvent", !63, i64 0, !5, i64 8, !5, i64 12}
!65 = !{!"p1 _ZTS12b3JointEvent", !8, i64 0}
!66 = !{!"b3DynamicArray_b3JointEvent", !65, i64 0, !5, i64 8, !5, i64 12}
!67 = !{!"p1 long", !8, i64 0}
!68 = !{!"b3BitSet", !67, i64 0, !5, i64 8, !5, i64 12}
!69 = !{!"long", !4, i64 0}
!70 = !{!"float", !4, i64 0}
!71 = !{!"b3Vec3", !70, i64 0, !70, i64 4, !70, i64 8}
!72 = !{!"short", !4, i64 0}
!73 = !{!"b3Profile", !70, i64 0, !70, i64 4, !70, i64 8, !70, i64 12, !70, i64 16, !70, i64 20, !70, i64 24, !70, i64 28, !70, i64 32, !70, i64 36, !70, i64 40, !70, i64 44, !70, i64 48, !70, i64 52, !70, i64 56, !70, i64 60, !70, i64 64, !70, i64 68, !70, i64 72, !70, i64 76, !70, i64 80, !70, i64 84, !70, i64 88}
!74 = !{!"b3Capacity", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!75 = !{!"p1 _ZTS11b3Scheduler", !8, i64 0}
!76 = !{!"p1 _ZTS11b3Recording", !8, i64 0}
!77 = !{!"_Bool", !4, i64 0}
!78 = !{!"b3World", !23, i64 0, !30, i64 800, !31, i64 1144, !33, i64 3832, !34, i64 3848, !35, i64 3856, !37, i64 3880, !35, i64 3896, !39, i64 3920, !35, i64 3936, !41, i64 3960, !35, i64 3976, !43, i64 4000, !35, i64 4016, !45, i64 4040, !35, i64 4056, !47, i64 4080, !8, i64 4096, !50, i64 4104, !52, i64 4128, !54, i64 4144, !56, i64 4160, !58, i64 4176, !60, i64 4192, !62, i64 4208, !4, i64 4224, !4, i64 4256, !5, i64 4288, !64, i64 4296, !66, i64 4312, !68, i64 4328, !68, i64 4344, !68, i64 4360, !68, i64 4376, !8, i64 4392, !8, i64 4400, !8, i64 4408, !69, i64 4416, !5, i64 4424, !71, i64 4428, !70, i64 4440, !70, i64 4444, !70, i64 4448, !70, i64 4452, !70, i64 4456, !70, i64 4460, !70, i64 4464, !8, i64 4472, !8, i64 4480, !72, i64 4488, !73, i64 4492, !5, i64 4584, !5, i64 4588, !4, i64 4592, !74, i64 4624, !8, i64 4648, !8, i64 4656, !8, i64 4664, !8, i64 4672, !5, i64 4680, !8, i64 4688, !8, i64 4696, !8, i64 4704, !8, i64 4712, !75, i64 4720, !8, i64 4728, !76, i64 4736, !70, i64 4744, !70, i64 4748, !5, i64 4752, !5, i64 4756, !72, i64 4760, !77, i64 4762, !77, i64 4763, !77, i64 4764, !77, i64 4765, !77, i64 4766, !77, i64 4767}
!79 = !{!78, !5, i64 4680}
!80 = !{!78, !5, i64 4756}
!81 = !{!78, !8, i64 4688}
!82 = !{!78, !8, i64 4704}
!83 = !{!8, !8, i64 0}
!84 = !{ptr @b3ParallelForTrampoline}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!78, !8, i64 4696}
end_hunk_0
