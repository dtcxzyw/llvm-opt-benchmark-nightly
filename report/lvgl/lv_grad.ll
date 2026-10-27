Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_grad?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_grad_init_stops(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %4, 3
  br i1 %i.a, label %bb.b, label %.preheader34

.preheader34:                                     ; preds = %bb.a, %.preheader34
  br label %.preheader34

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %4, 2
  br i1 %i.b, label %bb.c, label %.preheader33

.preheader33:                                     ; preds = %bb.b, %.preheader33
  br label %.preheader33

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c, %.preheader
  br label %.preheader

bb.d:                                             ; preds = %bb.c
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %.preheader32, label %bb.e

.preheader32:                                     ; preds = %bb.d, %.preheader32
  br label %.preheader32

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 2, ptr %i.c, align 2, !tbaa !11
  %.not30 = icmp eq ptr %2, null                  ; 2 uses
  %.not31 = icmp eq ptr %3, null
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %0, ptr noundef nonnull align 1 dereferenceable(3) %1, i64 3, i1 false)
  br i1 %.not31, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e
  br i1 %.not30, label %.split.us.split.us.preheader, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.split.us
  %i.d = load i8, ptr %2, align 1, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.d, ptr %i.e, align 1, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.f, align 2, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.g, ptr noundef nonnull align 1 dereferenceable(3) %i.h, i64 3, i1 false), !tbaa.struct !16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.j, ptr %5, align 2, !tbaa !14
  br label %.split37.us

.split.us.split.us.preheader:                     ; preds = %.split.us
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 -1, ptr %i.k, align 1, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.l, align 2, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 1 dereferenceable(3) %i.n, i64 3, i1 false), !tbaa.struct !16
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %6, align 2, !tbaa !14
  br label %.split37.us

.split:                                           ; preds = %bb.e
  br i1 %.not30, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  %i.o = load i8, ptr %2, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !14
  %i.q = load i8, ptr %3, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.q, ptr %i.r, align 2, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.s, ptr noundef nonnull align 1 dereferenceable(3) %i.t, i64 3, i1 false), !tbaa.struct !16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1
  %7 = load i8, ptr %i.u, align 1, !tbaa !8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %7, ptr %8, align 2, !tbaa !14
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.v = load i8, ptr %9, align 1, !tbaa !8
  br label %.split37.us

.split.split.us.preheader:                        ; preds = %.split
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 -1, ptr %i.w, align 1, !tbaa !14
  %i.x = load i8, ptr %3, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.x, ptr %i.y, align 2, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.z, ptr noundef nonnull align 1 dereferenceable(3) %i.aa, i64 3, i1 false), !tbaa.struct !16
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %10, align 2, !tbaa !14
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !8
  br label %.split37.us

.split37.us:                                      ; preds = %.split.split.preheader, %.split.split.us.preheader, %.split.us.split.preheader, %.split.us.split.us.preheader
  %.sink = phi i8 [ %i.v, %.split.split.preheader ], [ %12, %.split.split.us.preheader ], [ -1, %.split.us.split.preheader ], [ -1, %.split.us.split.us.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink, ptr %i.ab, align 1, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_grad_horizontal_init(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, -16
  %i.d = or disjoint i8 %i.c, 2
  store i8 %i.d, ptr %i.a, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_grad_vertical_init(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, -16
  %i.d = or disjoint i8 %i.c, 1
  store i8 %i.d, ptr %i.a, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_grad_linear_init(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.d, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %i.e, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %i.f, align 4, !tbaa !8
  %i.g = trunc i32 %5 to i8
  %i.h = shl i8 %i.g, 4
  %i.i = and i8 %i.h, 112
  %i.j = and i8 %i.b, -128
  %i.k = or disjoint i8 %i.j, %i.i
  %i.l = or disjoint i8 %i.k, 3
  store i8 %i.l, ptr %i.a, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_grad_radial_init(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.d, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %1, ptr %i.e, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.f, align 4, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %i.g, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.h, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %3, ptr %i.i, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %4, ptr %i.j, align 4, !tbaa !8
  %i.k = trunc i32 %5 to i8
  %i.l = shl i8 %i.k, 4
  %i.m = and i8 %i.l, 112
  %i.n = and i8 %i.b, -128
  %i.o = or disjoint i8 %i.n, %i.m
  %i.p = or disjoint i8 %i.o, 4
  store i8 %i.p, ptr %i.a, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_grad_conical_init(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.d, align 4, !tbaa !8
  %i.e = trunc i32 %3 to i16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.e, ptr %i.f, align 4, !tbaa !8
  %i.g = trunc i32 %4 to i16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.g, ptr %i.h, align 2, !tbaa !8
  %i.i = trunc i32 %5 to i8
  %i.j = shl i8 %i.i, 4
  %i.k = and i8 %i.j, 112
  %i.l = and i8 %i.b, -128
  %i.m = or disjoint i8 %i.l, %i.k
  %i.n = or disjoint i8 %i.m, 5
  store i8 %i.n, ptr %i.a, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @lv_grad_radial_set_focal(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.a, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 4, !tbaa !8
  %i.c = add nsw i32 %3, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.c, ptr %i.d, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.e, align 4, !tbaa !8
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"", !4, i64 0, !4, i64 10, !5, i64 11, !5, i64 11, !4, i64 12, !9, i64 48}
!11 = !{!10, !4, i64 10}
!12 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!13 = !{!"", !12, i64 0, !4, i64 3, !4, i64 4}
!14 = !{!13, !4, i64 3}
!15 = !{!13, !4, i64 4}
!16 = !{i64 0, i64 1, !8, i64 1, i64 1, !8, i64 2, i64 1, !8}
end_hunk_0
