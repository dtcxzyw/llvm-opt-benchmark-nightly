Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/parallel_for?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b2ParallelForShared = type { %struct.b2AtomicInt, i32, i32, i32, ptr, ptr }
%struct.b2AtomicInt = type { i32 }
%struct.b2ParallelForTask = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden void @b2ParallelFor(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.b2ParallelForShared, align 8 ; 11 uses
  %6 = alloca [32 x %struct.b2ParallelForTask], align 16 ; 3 uses
  %i.a = alloca [32 x ptr], align 16              ; 5 uses
  %i.b = icmp slt i32 %2, 1
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.d = load i32, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %i.e = shl nsw i32 %i.d, 2                      ; 3 uses
  %i.f = mul nsw i32 %i.e, %3
  %.not = icmp sgt i32 %2, %i.f
  %i.g = add nsw i32 %2, -1                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add i32 %i.g, %i.e
  %i.i = sdiv i32 %i.h, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink67 = phi i32 [ %i.i, %bb.c ], [ %3, %bb.b ] ; 3 uses
  %i.j = add i32 %i.g, %.sink67
  %i.k = sdiv i32 %i.j, %.sink67                  ; 2 uses
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.k) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 %i.k, ptr %i.m, align 4, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %.sink67, ptr %i.n, align 8, !tbaa !12
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 %2, ptr %7, align 4, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %1, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %4, ptr %i.p, align 8, !tbaa !15
  store atomic i32 0, ptr %5 seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.q = icmp sgt i32 %i.l, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2732 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.e

.lr.ph55:                                         ; preds = %b2ParallelForTrampoline.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %wide.trip.count60 = zext nneg i32 %i.l to i64
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %b2ParallelForTrampoline.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %b2ParallelForTrampoline.exit ] ; 5 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv ; 3 uses
  store ptr %5, ptr %i.w, align 16, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.y, ptr %i.x, align 8, !tbaa !19
  %i.z = load i32, ptr %i.r, align 4, !tbaa !78
  %i.aa = icmp slt i32 %i.z, 256
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !79
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !80
  %i.ad = call ptr %i.ab(ptr noundef nonnull @b2ParallelForTrampoline, ptr noundef nonnull %i.w, ptr noundef %i.ac) #3
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !81
  %i.af = load i32, ptr %i.r, align 4, !tbaa !78
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.r, align 4, !tbaa !78
  br label %b2ParallelForTrampoline.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr null, ptr %i.ah, align 8, !tbaa !81
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !11  ; 2 uses
  %i.al = load i32, ptr %i.n, align 8, !tbaa !12  ; 2 uses
  %i.am = load i32, ptr %7, align 4, !tbaa !13
  %i.an = atomicrmw add ptr %5, i32 1 seq_cst, align 4 ; 2 uses
  %.not28.i = icmp slt i32 %i.an, %i.ak
  br i1 %.not28.i, label %.lr.ph.i, label %b2ParallelForTrampoline.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.ao = phi i32 [ %i.ar, %.lr.ph.i ], [ %i.an, %bb.g ]
  %i.ap = mul nsw i32 %i.ao, %i.al                ; 2 uses
  %i.aq = add nsw i32 %i.ap, %i.al
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.am)
  call void %i.aj(i32 noundef %i.ap, i32 noundef %spec.select.i, i32 noundef %i.y, ptr noundef %i.ai) #3, !inline_history !82
  %i.ar = atomicrmw add ptr %5, i32 1 seq_cst, align 4 ; 2 uses
  %.not.i = icmp slt i32 %i.ar, %i.ak
  br i1 %.not.i, label %.lr.ph.i, label %b2ParallelForTrampoline.exit

b2ParallelForTrampoline.exit:                     ; preds = %.lr.ph.i, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph55, label %bb.e, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.j, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph55, %bb.j
  %indvars.iv57 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next58, %bb.j ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv57
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81 ; 2 uses
  %.not52 = icmp eq ptr %i.at, null
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !84
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !80
  call void %i.au(ptr noundef nonnull %i.at, ptr noundef %i.av) #3
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %._crit_edge, label %bb.h, !llvm.loop !21

bb.k:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @b2ParallelForTrampoline(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13
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
!9 = !{!"b2AtomicInt", !5, i64 0}
!10 = !{!"b2ParallelForShared", !9, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !8, i64 16, !8, i64 24}
!11 = !{!10, !5, i64 4}
!12 = !{!10, !5, i64 8}
!13 = !{!10, !5, i64 12}
!14 = !{!10, !8, i64 16}
!15 = !{!10, !8, i64 24}
!16 = !{!"p1 _ZTS19b2ParallelForShared", !8, i64 0}
!17 = !{!"b2ParallelForTask", !16, i64 0, !5, i64 8}
!18 = !{!17, !16, i64 0}
!19 = !{!17, !5, i64 8}
!20 = distinct !{!20, !83}
!21 = distinct !{!21, !83}
!22 = !{!"p1 omnipotent char", !8, i64 0}
!23 = !{!"p1 _ZTS12b2StackEntry", !8, i64 0}
!24 = !{!"b2DynamicArray_b2StackEntry", !23, i64 0, !5, i64 8, !5, i64 12}
!25 = !{!"b2Stack", !22, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !24, i64 24}
!26 = !{!"p1 int", !8, i64 0}
!27 = !{!"b2DynamicArray_int", !26, i64 0, !5, i64 8, !5, i64 12}
!28 = !{!"p1 _ZTS12b2MoveResult", !8, i64 0}
!29 = !{!"p1 _ZTS10b2MovePair", !8, i64 0}
!30 = !{!"p1 _ZTS9b2SetItem", !8, i64 0}
!31 = !{!"b2HashSet", !30, i64 0, !5, i64 8, !5, i64 12}
!32 = !{!"b2BroadPhase", !4, i64 0, !4, i64 216, !27, i64 264, !28, i64 280, !29, i64 288, !5, i64 296, !9, i64 300, !31, i64 304}
!33 = !{!"b2ConstraintGraph", !4, i64 0}
!34 = !{!"b2IdPool", !27, i64 0, !5, i64 16}
!35 = !{!"p1 _ZTS6b2Body", !8, i64 0}
!36 = !{!"b2DynamicArray_b2Body", !35, i64 0, !5, i64 8, !5, i64 12}
!37 = !{!"p1 _ZTS11b2SolverSet", !8, i64 0}
!38 = !{!"b2DynamicArray_b2SolverSet", !37, i64 0, !5, i64 8, !5, i64 12}
!39 = !{!"p1 _ZTS7b2Joint", !8, i64 0}
!40 = !{!"b2DynamicArray_b2Joint", !39, i64 0, !5, i64 8, !5, i64 12}
!41 = !{!"p1 _ZTS9b2Contact", !8, i64 0}
!42 = !{!"b2DynamicArray_b2Contact", !41, i64 0, !5, i64 8, !5, i64 12}
!43 = !{!"p1 _ZTS8b2Island", !8, i64 0}
!44 = !{!"b2DynamicArray_b2Island", !43, i64 0, !5, i64 8, !5, i64 12}
!45 = !{!"p1 _ZTS7b2Shape", !8, i64 0}
!46 = !{!"b2DynamicArray_b2Shape", !45, i64 0, !5, i64 8, !5, i64 12}
!47 = !{!"p1 _ZTS12b2ChainShape", !8, i64 0}
!48 = !{!"b2DynamicArray_b2ChainShape", !47, i64 0, !5, i64 8, !5, i64 12}
!49 = !{!"p1 _ZTS8b2Sensor", !8, i64 0}
!50 = !{!"b2DynamicArray_b2Sensor", !49, i64 0, !5, i64 8, !5, i64 12}
!51 = !{!"p1 _ZTS13b2TaskContext", !8, i64 0}
!52 = !{!"b2DynamicArray_b2TaskContext", !51, i64 0, !5, i64 8, !5, i64 12}
!53 = !{!"p1 _ZTS19b2SensorTaskContext", !8, i64 0}
!54 = !{!"b2DynamicArray_b2SensorTaskContext", !53, i64 0, !5, i64 8, !5, i64 12}
!55 = !{!"p1 _ZTS15b2BodyMoveEvent", !8, i64 0}
!56 = !{!"b2DynamicArray_b2BodyMoveEvent", !55, i64 0, !5, i64 8, !5, i64 12}
!57 = !{!"p1 _ZTS23b2SensorBeginTouchEvent", !8, i64 0}
!58 = !{!"b2DynamicArray_b2SensorBeginTouchEvent", !57, i64 0, !5, i64 8, !5, i64 12}
!59 = !{!"p1 _ZTS24b2ContactBeginTouchEvent", !8, i64 0}
!60 = !{!"b2DynamicArray_b2ContactBeginTouchEvent", !59, i64 0, !5, i64 8, !5, i64 12}
!61 = !{!"p1 _ZTS17b2ContactHitEvent", !8, i64 0}
!62 = !{!"b2DynamicArray_b2ContactHitEvent", !61, i64 0, !5, i64 8, !5, i64 12}
!63 = !{!"p1 _ZTS12b2JointEvent", !8, i64 0}
!64 = !{!"b2DynamicArray_b2JointEvent", !63, i64 0, !5, i64 8, !5, i64 12}
!65 = !{!"p1 long", !8, i64 0}
!66 = !{!"b2BitSet", !65, i64 0, !5, i64 8, !5, i64 12}
!67 = !{!"long", !4, i64 0}
!68 = !{!"float", !4, i64 0}
!69 = !{!"b2Vec2", !68, i64 0, !68, i64 4}
!70 = !{!"short", !4, i64 0}
!71 = !{!"b2Profile", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !68, i64 24, !68, i64 28, !68, i64 32, !68, i64 36, !68, i64 40, !68, i64 44, !68, i64 48, !68, i64 52, !68, i64 56, !68, i64 60, !68, i64 64, !68, i64 68, !68, i64 72, !68, i64 76, !68, i64 80, !68, i64 84}
!72 = !{!"b2Capacity", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!73 = !{!"p1 _ZTS11b2Scheduler", !8, i64 0}
!74 = !{!"p1 _ZTS11b2Recording", !8, i64 0}
!75 = !{!"_Bool", !4, i64 0}
!76 = !{!"b2World", !25, i64 0, !32, i64 40, !33, i64 360, !34, i64 1896, !36, i64 1920, !34, i64 1936, !38, i64 1960, !34, i64 1976, !40, i64 2000, !34, i64 2016, !42, i64 2040, !34, i64 2056, !44, i64 2080, !34, i64 2096, !34, i64 2120, !46, i64 2144, !48, i64 2160, !50, i64 2176, !52, i64 2192, !54, i64 2208, !56, i64 2224, !58, i64 2240, !60, i64 2256, !4, i64 2272, !4, i64 2304, !5, i64 2336, !62, i64 2344, !64, i64 2360, !66, i64 2376, !66, i64 2392, !66, i64 2408, !66, i64 2424, !67, i64 2440, !5, i64 2448, !69, i64 2452, !68, i64 2460, !68, i64 2464, !68, i64 2468, !68, i64 2472, !68, i64 2476, !68, i64 2480, !68, i64 2484, !8, i64 2488, !8, i64 2496, !70, i64 2504, !71, i64 2508, !72, i64 2596, !8, i64 2616, !8, i64 2624, !8, i64 2632, !8, i64 2640, !8, i64 2648, !5, i64 2656, !8, i64 2664, !8, i64 2672, !8, i64 2680, !8, i64 2688, !73, i64 2696, !8, i64 2704, !74, i64 2712, !68, i64 2720, !68, i64 2724, !5, i64 2728, !5, i64 2732, !70, i64 2736, !75, i64 2738, !75, i64 2739, !75, i64 2740, !75, i64 2741, !75, i64 2742}
!77 = !{!76, !5, i64 2656}
!78 = !{!76, !5, i64 2732}
!79 = !{!76, !8, i64 2664}
!80 = !{!76, !8, i64 2680}
!81 = !{!8, !8, i64 0}
!82 = !{ptr @b2ParallelForTrampoline}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!76, !8, i64 2672}
end_hunk_0
