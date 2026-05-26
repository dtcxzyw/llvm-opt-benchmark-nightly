inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@je_witness_lock_error = hidden local_unnamed_addr constant ptr @witness_lock_error_impl, align 8
@je_witness_owner_error = hidden local_unnamed_addr constant ptr @witness_owner_error_impl, align 8
@je_witness_not_owner_error = hidden local_unnamed_addr constant ptr @witness_not_owner_error_impl, align 8
@je_witness_depth_error = hidden local_unnamed_addr constant ptr @witness_depth_error_impl, align 8
@.str = private unnamed_addr constant [38 x i8] c"<jemalloc>: Lock rank order reversal:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" %s(%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" %s(%u)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" %s(%u)X%u\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"<jemalloc>: Should own %s(%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"<jemalloc>: Should not own %s(%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"<jemalloc>: Should own %u lock%s of rank >= %u:\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_witness_init(ptr noundef writeonly captures(none) initializes((0, 12), (16, 32)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !19
  ret void
}

; Function Attrs: cold noreturn nounwind uwtable
define internal void @witness_lock_error_impl(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #1 {
bb.a:
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str) #6
  tail call fastcc void @witness_print_witnesses(ptr noundef %0)
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.1, ptr noundef %i.a, i32 noundef %i.c) #6
  tail call void @abort() #7
  unreachable
}

; Function Attrs: cold noreturn nounwind uwtable
define internal void @witness_owner_error_impl(ptr noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.4, ptr noundef %i.a, i32 noundef %i.c) #6
  tail call void @abort() #7
  unreachable
}

; Function Attrs: cold noreturn nounwind uwtable
define internal void @witness_not_owner_error_impl(ptr noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.5, ptr noundef %i.a, i32 noundef %i.c) #6
  tail call void @abort() #7
  unreachable
}

; Function Attrs: cold noreturn nounwind uwtable
define internal void @witness_depth_error_impl(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #1 {
bb.a:
  %.not = icmp eq i32 %2, 1
  %i.a = select i1 %.not, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.6, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef %1) #6
  tail call fastcc void @witness_print_witnesses(ptr noundef %0)
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.9) #6
  tail call void @abort() #7
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @je_witnesses_cleanup(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @je_witness_prefork(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @je_witness_postfork_parent(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @je_witness_postfork_child(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

declare void @je_malloc_printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @witness_print_witnesses(ptr noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %.not22 = icmp eq ptr %i.a, null
  br i1 %.not22, label %witness_print_witness.exit21, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %witness_print_witness.exit
  %.025 = phi i32 [ %.1, %witness_print_witness.exit ], [ 0, %bb.a ] ; 3 uses
  %.01524 = phi ptr [ %.01623, %witness_print_witness.exit ], [ null, %bb.a ] ; 3 uses
  %.01623 = phi ptr [ %i.k, %witness_print_witness.exit ], [ %i.a, %bb.a ] ; 5 uses
  %.not19 = icmp eq ptr %.01524, null
  br i1 %.not19, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.01623, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %.01524, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %i.f = icmp ugt i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %.025, 1
  %i.h = load ptr, ptr %.01524, align 8, !tbaa !11 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.2, ptr noundef %i.h, i32 noundef %i.e) #6
  br label %witness_print_witness.exit

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.3, ptr noundef %i.h, i32 noundef %i.e, i32 noundef %.025) #6
  br label %witness_print_witness.exit

bb.f:                                             ; preds = %bb.b, %.lr.ph
  %i.i = add i32 %.025, 1
  br label %witness_print_witness.exit

witness_print_witness.exit:                       ; preds = %bb.e, %bb.d, %bb.f
  %.1 = phi i32 [ %i.i, %bb.f ], [ 1, %bb.d ], [ 1, %bb.e ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01623, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  %.not20 = icmp eq ptr %i.k, %i.l
  %.not31 = icmp eq ptr %i.k, null
  %.not = or i1 %.not20, %.not31
  br i1 %.not, label %select.unfold._crit_edge, label %.lr.ph

select.unfold._crit_edge:                         ; preds = %witness_print_witness.exit
  %i.m = icmp eq i32 %.1, 1
  %i.n = load ptr, ptr %.01623, align 8, !tbaa !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01623, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %select.unfold._crit_edge
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.2, ptr noundef %i.n, i32 noundef %i.p) #6
  br label %witness_print_witness.exit21

bb.h:                                             ; preds = %select.unfold._crit_edge
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.3, ptr noundef %i.n, i32 noundef %i.p, i32 noundef %.1) #6
  br label %witness_print_witness.exit21

witness_print_witness.exit21:                     ; preds = %bb.a, %bb.h, %bb.g
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"witness_s", !13, i64 0, !8, i64 8, !14, i64 16, !14, i64 24, !15, i64 32}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"", !16, i64 0, !16, i64 8}
!16 = !{!"p1 _ZTS9witness_s", !14, i64 0}
!17 = !{!12, !8, i64 8}
!18 = !{!12, !14, i64 16}
!19 = !{!12, !14, i64 24}
!20 = !{!21, !16, i64 0}
!21 = !{!"", !16, i64 0}
!22 = !{!12, !16, i64 32}
end_hunk_0
