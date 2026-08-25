Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/hcg?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@channelNets = external local_unnamed_addr global i64, align 8
@HCG = dso_local local_unnamed_addr global ptr null, align 8
@storageRootHCG = dso_local local_unnamed_addr global ptr null, align 8
@storageHCG = dso_local local_unnamed_addr global ptr null, align 8
@storageLimitHCG = dso_local local_unnamed_addr global i64 0, align 8
@FIRST = external local_unnamed_addr global ptr, align 8
@LAST = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@channelTracks = external local_unnamed_addr global i64, align 8
@str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local void @AllocHCG() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @channelNets, align 8, !tbaa !8 ; 2 uses
  %i.b = mul i64 %i.a, 24
  %i.c = add i64 %i.b, 24
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #10
  store ptr %i.d, ptr @HCG, align 8, !tbaa !10
  %i.e = add i64 %i.a, 1                          ; 2 uses
  %i.f = mul i64 %i.e, %i.e                       ; 2 uses
  %i.g = shl i64 %i.f, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #10 ; 2 uses
  store ptr %i.h, ptr @storageRootHCG, align 8, !tbaa !13
  store ptr %i.h, ptr @storageHCG, align 8, !tbaa !13
  store i64 %i.f, ptr @storageLimitHCG, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeHCG() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @HCG, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.a) #11
  %i.b = load ptr, ptr @storageRootHCG, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.b) #11
  store i64 0, ptr @storageLimitHCG, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local void @BuildHCG() local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr @channelNets, align 8, !tbaa !8 ; 4 uses
  %i.b = mul i64 %i.a, 24
  %i.c = add i64 %i.b, 24
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #10 ; 2 uses
  store ptr %i.d, ptr @HCG, align 8, !tbaa !10
  %i.e = add i64 %i.a, 1                          ; 2 uses
  %i.f = mul i64 %i.e, %i.e                       ; 2 uses
  %i.g = shl i64 %i.f, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #10 ; 3 uses
  store ptr %i.h, ptr @storageRootHCG, align 8, !tbaa !13
  store ptr %i.h, ptr @storageHCG, align 8, !tbaa !13
  store i64 %i.f, ptr @storageLimitHCG, align 8, !tbaa !8
  %.not41 = icmp eq i64 %i.a, 0
  br i1 %.not41, label %._crit_edge45, label %.lr.ph44.split.preheader

.lr.ph44.split.preheader:                         ; preds = %bb.a
  %i.i = load ptr, ptr @FIRST, align 8, !tbaa !13 ; 2 uses
  %i.j = load ptr, ptr @LAST, align 8, !tbaa !13  ; 3 uses
  br label %.lr.ph44.split

.lr.ph44.split:                                   ; preds = %.lr.ph44.split.preheader, %._crit_edge40
  %i.k = phi i64 [ %i.an, %._crit_edge40 ], [ %i.a, %.lr.ph44.split.preheader ] ; 3 uses
  %i.l = phi ptr [ %i.ao, %._crit_edge40 ], [ %i.h, %.lr.ph44.split.preheader ] ; 4 uses
  %.02942 = phi i64 [ %i.aq, %._crit_edge40 ], [ 1, %.lr.ph44.split.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.02942
  %i.n = load i64, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.02942
  %i.p = load i64, ptr %i.o, align 8, !tbaa !8    ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.02942 ; 2 uses
  store ptr %i.l, ptr %i.q, align 8, !tbaa !15
  %.not3235 = icmp eq i64 %i.k, 0
  br i1 %.not3235, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph44.split, %bb.e
  %i.r = phi i64 [ %i.aj, %bb.e ], [ %i.k, %.lr.ph44.split ] ; 2 uses
  %i.s = phi i64 [ %i.ak, %bb.e ], [ %i.k, %.lr.ph44.split ] ; 2 uses
  %i.t = phi ptr [ %i.al, %bb.e ], [ %i.l, %.lr.ph44.split ] ; 3 uses
  %.02737 = phi i64 [ %.1, %bb.e ], [ 0, %.lr.ph44.split ] ; 4 uses
  %.02836 = phi i64 [ %i.am, %bb.e ], [ 1, %.lr.ph44.split ] ; 5 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.02836
  %i.v = load i64, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.n
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph39
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.02836
  %i.y = load i64, ptr %i.x, align 8, !tbaa !8
  %i.z = icmp ult i64 %i.y, %i.n
  br i1 %i.z, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph39
  %i.aa = icmp ugt i64 %i.v, %i.p
  br i1 %i.aa, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.02836
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !8
  %i.ad = icmp ugt i64 %i.ac, %i.p
  br i1 %i.ad, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.02737
  store i64 %.02836, ptr %i.ae, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.af, ptr @storageHCG, align 8, !tbaa !13
  %i.ag = load i64, ptr @storageLimitHCG, align 8, !tbaa !8
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr @storageLimitHCG, align 8, !tbaa !8
  %i.ai = add i64 %.02737, 1
  %.pre = load i64, ptr @channelNets, align 8, !tbaa !8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %i.aj = phi i64 [ %i.r, %bb.b ], [ %i.r, %bb.d ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.ak = phi i64 [ %i.s, %bb.b ], [ %i.s, %bb.d ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.al = phi ptr [ %i.t, %bb.b ], [ %i.t, %bb.d ], [ %i.af, %._crit_edge ] ; 2 uses
  %.1 = phi i64 [ %.02737, %bb.b ], [ %.02737, %bb.d ], [ %i.ai, %._crit_edge ] ; 2 uses
  %i.am = add i64 %.02836, 1                      ; 2 uses
  %.not32 = icmp ugt i64 %i.am, %i.ak
  br i1 %.not32, label %._crit_edge40, label %.lr.ph39, !llvm.loop !17

._crit_edge40:                                    ; preds = %bb.e, %.lr.ph44.split
  %i.an = phi i64 [ 0, %.lr.ph44.split ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ao = phi ptr [ %i.l, %.lr.ph44.split ], [ %i.al, %bb.e ]
  %.027.lcssa = phi i64 [ 0, %.lr.ph44.split ], [ %.1, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.027.lcssa, ptr %i.ap, align 8, !tbaa !19
  %i.aq = add i64 %.02942, 1                      ; 2 uses
  %.not = icmp ugt i64 %i.aq, %i.an
  br i1 %.not, label %._crit_edge45, label %.lr.ph44.split, !llvm.loop !20

._crit_edge45:                                    ; preds = %._crit_edge40, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @DFSClearHCG(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr @channelNets, align 8, !tbaa !8
  %.not3 = icmp eq i64 %i.a, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04 = phi i64 [ %i.d, %.lr.ph ], [ 1, %bb.a ]  ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.04
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !22
  %i.d = add i64 %.04, 1                          ; 2 uses
  %i.e = load i64, ptr @channelNets, align 8, !tbaa !8
  %.not = icmp ugt i64 %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @DumpHCG(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr @channelNets, align 8, !tbaa !8
  %.not11 = icmp eq i64 %i.a, 0
  br i1 %.not11, label %._crit_edge15, label %.lr.ph14

.lr.ph14:                                         ; preds = %bb.a, %._crit_edge
  %.0912 = phi i64 [ %i.m, %._crit_edge ], [ 1, %bb.a ] ; 3 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %.0912) ; 0 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0912 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %.not16 = icmp eq i64 %i.e, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph14, %.lr.ph
  %.010 = phi i64 [ %i.j, %.lr.ph ], [ 0, %.lr.ph14 ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.010
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %i.h) ; 0 uses
  %i.j = add nuw i64 %.010, 1                     ; 2 uses
  %i.k = load i64, ptr %i.d, align 8, !tbaa !19
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph14
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.m = add i64 %.0912, 1                        ; 2 uses
  %i.n = load i64, ptr @channelNets, align 8, !tbaa !8
  %.not = icmp ugt i64 %i.m, %i.n
  br i1 %.not, label %._crit_edge15, label %.lr.ph14, !llvm.loop !25

._crit_edge15:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @NoHCV(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @channelTracks, align 8, !tbaa !8
  %.not30 = icmp eq i64 %i.a, 0
  br i1 %.not30, label %._crit_edge, label %.preheader23.lr.ph

.preheader23.lr.ph:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.lr.ph, %.loopexit
  %.02031 = phi i64 [ 1, %.preheader23.lr.ph ], [ %i.p, %.loopexit ] ; 3 uses
  %i.d = load i64, ptr @channelNets, align 8, !tbaa !8 ; 2 uses
  %.not2126 = icmp eq i64 %i.d, 0
  br i1 %.not2126, label %.loopexit, label %.lr.ph29

.lr.ph29:                                         ; preds = %.preheader23, %.critedge
  %.01927 = phi i64 [ %i.n, %.critedge ], [ 1, %.preheader23 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01927
  %i.f = load i64, ptr %i.e, align 8, !tbaa !8
  %i.g = icmp eq i64 %i.f, %.02031
  br i1 %i.g, label %.preheader, label %.critedge

.preheader:                                       ; preds = %.lr.ph29
  %i.h = load i64, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %.not33 = icmp eq i64 %i.h, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !15
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.j = add nuw i64 %.01825, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.h
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !26

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01825 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01825
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8
  %i.m = icmp eq i64 %i.l, %.01927
  br i1 %i.m, label %.loopexit, label %bb.b

.critedge:                                        ; preds = %bb.b, %.preheader, %.lr.ph29
  %i.n = add i64 %.01927, 1                       ; 2 uses
  %.not21 = icmp ugt i64 %i.n, %i.d
  br i1 %.not21, label %.loopexit, label %.lr.ph29, !llvm.loop !27

.loopexit:                                        ; preds = %.critedge, %bb.c, %.preheader23
  %.3 = phi i64 [ 1, %.preheader23 ], [ 0, %bb.c ], [ 1, %.critedge ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.02031
  store i64 %.3, ptr %i.o, align 8, !tbaa !8
  %i.p = add i64 %.02031, 1                       ; 2 uses
  %i.q = load i64, ptr @channelTracks, align 8, !tbaa !8
  %.not = icmp ugt i64 %i.p, %i.q
  br i1 %.not, label %._crit_edge, label %.preheader23, !llvm.loop !28

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

attributes #0 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS12_nodeHCGType", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 long", !12, i64 0}
!15 = !{!16, !14, i64 0}
!16 = !{!"_nodeHCGType", !14, i64 0, !9, i64 8, !9, i64 16}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!16, !9, i64 8}
!20 = distinct !{!20, !18, !21}
!21 = !{!"llvm.loop.unswitch.partial.disable"}
!22 = !{!16, !9, i64 16}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
end_hunk_0
