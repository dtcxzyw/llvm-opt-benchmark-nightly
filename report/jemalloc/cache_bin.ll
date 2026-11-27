Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/cache_bin?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@je_disabled_bin = hidden constant i64 8825501086245354106, align 8
@je_opt_metadata_thp = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_cache_bin_info_init(ptr nofree noundef writeonly captures(none) initializes((0, 2)) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @je_cache_bin_stack_use_thp() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @je_opt_metadata_thp, align 4, !tbaa !15
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_cache_bin_info_compute_alloc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  store i64 16, ptr %2, align 8, !tbaa !17
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ <i64 16, i64 0>, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi10 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.load = load <2 x i16>, ptr %i.a, align 2, !tbaa !14
  %wide.load11 = load <2 x i16>, ptr %i.b, align 2, !tbaa !14
  %i.c = zext <2 x i16> %wide.load to <2 x i64>
  %i.d = zext <2 x i16> %wide.load11 to <2 x i64>
  %i.e = shl nuw nsw <2 x i64> %i.c, splat (i64 3)
  %i.f = shl nuw nsw <2 x i64> %i.d, splat (i64 3)
  %i.g = add <2 x i64> %i.e, %vec.phi             ; 2 uses
  %i.h = add <2 x i64> %i.f, %vec.phi10           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.h, %i.g
  %i.j = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi i64 [ 16, %.lr.ph ], [ %i.j, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.j, %middle.block ], [ %i.r, %scalar.ph ]
  store i64 %.lcssa, ptr %2, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.k = load i32, ptr @je_opt_metadata_thp, align 4, !tbaa !15
  %.not = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not, i64 4096, i64 16
  store i64 %i.l, ptr %3, align 8, !tbaa !17
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.m = phi i64 [ %i.r, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !14
  %i.p = zext i16 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = add i64 %i.q, %i.m                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @je_cache_bin_preincrement(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  store i64 8825501086245354106, ptr %i.b, align 8, !tbaa !17
  %i.c = load i64, ptr %3, align 8, !tbaa !17
  %i.d = add i64 %i.c, 8
  store i64 %i.d, ptr %3, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @je_cache_bin_postincrement(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  store i64 8825501086245354107, ptr %i.b, align 8, !tbaa !17
  %i.c = load i64, ptr %1, align 8, !tbaa !17
  %i.d = add i64 %i.c, 8
  store i64 %i.d, ptr %1, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @je_cache_bin_init(ptr nofree noundef writeonly captures(none) initializes((0, 8), (16, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  %i.c = load i16, ptr %1, align 2, !tbaa !14     ; 2 uses
  %i.d = shl i16 %i.c, 3
  %i.e = zext i16 %i.d to i64
  %i.f = add i64 %i.a, %i.e                       ; 2 uses
  store i64 %i.f, ptr %3, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !22
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = trunc i64 %i.h to i16                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.i, ptr %i.j, align 8, !tbaa !28
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = trunc i64 %i.k to i16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.l, ptr %i.m, align 2, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.i, ptr %i.n, align 4, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.c, ptr %i.o, align 2, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_cache_bin_init_disabled(ptr nofree noundef writeonly captures(none) initializes((0, 8), (16, 24)) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  store ptr @je_disabled_bin, ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = zext i16 ptrtoint (ptr @je_disabled_bin to i16) to i64 ; 3 uses
  %3 = shl nuw nsw i64 %2, 16
  %4 = shl nuw nsw i64 %2, 32
  %5 = or disjoint i64 %3, %4
  %6 = zext i16 %1 to i64
  %7 = shl nuw i64 %6, 48
  %8 = or disjoint i64 %5, %7
  %9 = or disjoint i64 %8, %2
  store i64 %9, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!"cache_bin_info_s", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!"any p2 pointer", !18, i64 0}
!20 = !{!"cache_bin_stats_s", !16, i64 0}
!21 = !{!"cache_bin_s", !19, i64 0, !20, i64 8, !12, i64 16, !12, i64 18, !12, i64 20, !13, i64 22}
!22 = !{!21, !19, i64 0}
!23 = distinct !{!23, !25, !26, !27}
!24 = distinct !{!24, !25, !27, !26}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!21, !12, i64 16}
!29 = !{!21, !12, i64 18}
!30 = !{!21, !12, i64 20}
end_hunk_0
