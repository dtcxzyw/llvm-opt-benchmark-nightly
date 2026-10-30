Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/arena_allocator?download=true
begin_hunk_0_@b3StackAlloc:bb.a
  store i32 %i.s, ptr %i.q, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16
  %i.v = icmp sgt i32 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %i.t, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.y ; 4 uses
  store ptr %.sroa.0.0, ptr %i.z, align 8, !tbaa !17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !17
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 %i.e, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !18
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store i8 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !37
  %i.aa = add nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.0 = phi ptr [ %.sroa.0.0, %bb.g ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @b3StackFree(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [24 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i8, ptr %i.e, align 4, !tbaa !39, !range !40, !noundef !41
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %i.i to i64
  tail call void @b3Free(ptr noundef %1, i64 noundef %i.j) #5
  %.pre = load i32, ptr %i.h, align 8, !tbaa !42
  %.pre10 = load i32, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  %i.m = sub nsw i32 %i.l, %i.i
  store i32 %i.m, ptr %i.k, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.b, %bb.c ], [ %.pre10, %bb.b ]
  %i.o = phi i32 [ %i.i, %bb.c ], [ %.pre, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !15
  %i.r = sub nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 8, !tbaa !15
  %i.s = add nsw i32 %i.n, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3GrowStack(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = sext i32 %i.d to i64
  tail call void @b3Free(ptr noundef %i.f, i64 noundef %i.g) #5
  %i.h = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.i = sdiv i32 %i.h, 2
  %i.j = add nsw i32 %i.i, %i.h                   ; 2 uses
  store i32 %i.j, ptr %i.c, align 8, !tbaa !11
  %i.k = sext i32 %i.j to i64
  %i.l = tail call ptr @b3Alloc(i64 noundef %i.k) #5
  store ptr %i.l, ptr %0, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @b3GetStackCapacity(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @b3GetStackAllocation(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @b3GetMaxStackAllocation(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden void @b3CreateArena(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Arena) align 8 captures(none) initializes((0, 24)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 8) ; 2 uses
  %i.b = tail call ptr @b3Alloc(i64 noundef 32) #5 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = zext nneg i32 %i.a to i64
  %i.d = tail call ptr @b3Alloc(i64 noundef %i.c) #5
  store ptr %i.d, ptr %0, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.a, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.g, align 8, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3DestroyArena(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 4
  tail call void @b3Free(ptr noundef %i.f, i64 noundef %i.j) #5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  tail call void @b3Free(ptr noundef nonnull %i.b, i64 noundef 32) #5
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !34
  %i.p = sext i32 %i.o to i64
  tail call void @b3Free(ptr noundef %i.m, i64 noundef %i.p) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !29
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !43

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.t = load ptr, ptr %0, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !23
  %i.w = sext i32 %i.v to i64
  tail call void @b3Free(ptr noundef %i.t, i64 noundef %i.w) #5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @b3ArenaOverflowAlloc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = sext i32 %1 to i64
  %i.d = tail call ptr @b3Alloc(i64 noundef %i.c) #5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 4 uses
  %.not = icmp slt i32 %i.f, %i.h
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = shl i32 %i.h, 4
  %i.j = icmp eq i32 %i.h, 0
  %i.k = shl nsw i32 %i.h, 1
  %spec.select = select i1 %i.j, i32 8, i32 %i.k  ; 2 uses
  %2 = shl i32 %spec.select, 4
  %i.l = tail call ptr @b3GrowAlloc(ptr noundef %.pre, i32 noundef %i.i, i32 noundef %2) #5 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !30
  store i32 %spec.select, ptr %i.g, align 4, !tbaa !31
  %.pre20 = load i32, ptr %i.e, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i32 [ %.pre20, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %i.l, %bb.b ], [ %.pre, %bb.a ]
  %i.o = add nsw i32 %i.m, 1
  store i32 %i.o, ptr %i.e, align 8, !tbaa !29
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.p ; 3 uses
  store ptr %i.d, ptr %i.q, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36
  %i.t = add nsw i32 %i.s, %1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !36
  ret ptr %i.d
}

declare ptr @b3GrowAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @b3ArenaSync(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %i.j = add nsw i32 %i.i, %i.g                   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46
  %i.m = icmp sgt i32 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !34
  %i.s = sext i32 %i.r to i64
  tail call void @b3Free(ptr noundef %i.p, i64 noundef %i.s) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.c, align 8, !tbaa !29
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !44

bb.b:                                             ; preds = %._crit_edge
  store i32 %i.j, ptr %i.k, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = icmp sgt i32 %i.j, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !22
  %i.aa = sext i32 %i.x to i64
  tail call void @b3Free(ptr noundef %i.z, i64 noundef %i.aa) #5
  %i.ab = sdiv i32 %i.j, 2
  %i.ac = add nsw i32 %i.ab, %i.j                 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call ptr @b3Alloc(i64 noundef %i.ad) #5
  store ptr %i.ae, ptr %0, align 8, !tbaa !22
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !24
  store i32 0, ptr %i.f, align 8, !tbaa !45
  store i32 0, ptr %i.h, align 4, !tbaa !36
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"b3Stack", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !5, i64 792}
!11 = !{!10, !5, i64 8}
!12 = !{!10, !9, i64 0}
!13 = !{!10, !5, i64 792}
!14 = !{!10, !5, i64 12}
!15 = !{!10, !5, i64 16}
!16 = !{!10, !5, i64 20}
!17 = !{!9, !9, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!"_Bool", !4, i64 0}
!20 = !{!"p1 _ZTS18b3ArenaSharedState", !8, i64 0}
!21 = !{!"b3Arena", !9, i64 0, !5, i64 8, !5, i64 12, !20, i64 16}
!22 = !{!21, !9, i64 0}
!23 = !{!21, !5, i64 8}
!24 = !{!21, !5, i64 12}
!25 = !{!21, !20, i64 16}
!26 = !{!"p1 _ZTS15b3OverflowBlock", !8, i64 0}
!27 = !{!"b3DynamicArray_b3OverflowBlock", !26, i64 0, !5, i64 8, !5, i64 12}
!28 = !{!"b3ArenaSharedState", !27, i64 0, !5, i64 16, !5, i64 20, !5, i64 24}
!29 = !{!28, !5, i64 8}
!30 = !{!28, !26, i64 0}
!31 = !{!28, !5, i64 12}
!32 = !{!"b3OverflowBlock", !9, i64 0, !5, i64 8}
!33 = !{!32, !9, i64 0}
!34 = !{!32, !5, i64 8}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!28, !5, i64 20}
!37 = !{!19, !19, i64 0}
!38 = !{!"b3StackEntry", !9, i64 0, !9, i64 8, !5, i64 16, !19, i64 20}
!39 = !{!38, !19, i64 20}
!40 = !{i8 0, i8 2}
!41 = !{}
!42 = !{!38, !5, i64 16}
!43 = distinct !{!43, !35}
!44 = distinct !{!44, !35}
!45 = !{!28, !5, i64 16}
!46 = !{!28, !5, i64 24}
end_hunk_0
