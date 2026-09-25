Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ompi_datatype_get_elements?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define range(i32 -18, 1) i32 @ompi_datatype_get_elements(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  store i64 0, ptr %2, align 8, !tbaa !9
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8, !tbaa !18  ; 5 uses
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = udiv i64 %1, %.val                       ; 3 uses
  %i.d = mul i64 %i.c, %.val                      ; 2 uses
  %.recomposed = urem i64 %1, %.val
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val31 = load i16, ptr %i.e, align 8, !tbaa !21
  %i.f = and i16 %.val31, 512
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.not28 = icmp ugt i64 %.val, %1
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @opal_datatype_compute_ptypes(ptr noundef nonnull %0) #3 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %3 = load <24 x i64>, ptr %i.j, align 8, !tbaa !9
  %i.k = tail call i64 @llvm.vector.reduce.add.v24i64(<24 x i64> %3)
  %i.l = mul i64 %i.k, %i.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.021 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ]   ; 2 uses
  %.not29 = icmp eq i64 %1, %i.d
  br i1 %.not29, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i64 @opal_datatype_get_element_count(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %.recomposed) #3 ; 2 uses
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 4294967295
  br i1 %i.o, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %sext = shl i64 %i.m, 32
  %i.p = ashr exact i64 %sext, 32
  %i.q = add i64 %i.p, %.021
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %.not30 = icmp eq i64 %1, %i.d
  br i1 %.not30, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.g
  %.1 = phi i64 [ %i.c, %bb.h ], [ %i.q, %bb.g ], [ %.021, %bb.e ]
  store i64 %.1, ptr %2, align 8, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.a, %bb.i
  %.022 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ -18, %bb.f ], [ -18, %bb.h ]
  ret i32 %.022
}

declare i32 @opal_datatype_compute_ptypes(ptr noundef) local_unnamed_addr #1

declare i64 @opal_datatype_get_element_count(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v24i64(<24 x i64>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS12opal_class_t", !10, i64 0}
!12 = !{!"opal_object_t", !11, i64 0, !5, i64 8}
!13 = !{!"short", !4, i64 0}
!14 = !{!"p1 _ZTS12dt_elem_desc", !10, i64 0}
!15 = !{!"dt_type_desc_t", !8, i64 0, !8, i64 8, !14, i64 16}
!16 = !{!"p1 long", !10, i64 0}
!17 = !{!"opal_datatype_t", !12, i64 0, !13, i64 16, !13, i64 18, !5, i64 20, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !15, i64 144, !15, i64 168, !16, i64 192}
!18 = !{!17, !8, i64 24}
!19 = !{!"p1 _ZTS17opal_hash_table_t", !10, i64 0}
!20 = !{!"ompi_datatype_t", !17, i64 0, !5, i64 200, !5, i64 204, !19, i64 208, !10, i64 216, !8, i64 224, !8, i64 232, !4, i64 240}
!21 = !{!20, !13, i64 16}
!22 = !{!20, !16, i64 192}
end_hunk_0
