inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@HashRange = internal unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [13 x i8] c"Make phase 2\00", align 1
@str.1 = private unnamed_addr constant [13 x i8] c"Make phase 3\00", align 1
@str.2 = private unnamed_addr constant [13 x i8] c"Make phase 4\00", align 1
@str.3 = private unnamed_addr constant [15 x i8] c"Make returning\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @MakeGraph(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %0, %1                          ; 6 uses
  %i.b = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #7 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !8
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.c = add nsw i32 %1, -1                       ; 2 uses
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph48, label %._crit_edge49.thread73

._crit_edge49.thread73:                           ; preds = %bb.a
  %puts4174 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %._crit_edge

.lr.ph48:                                         ; preds = %bb.a
  %i.e = sext i32 %i.a to i64                     ; 2 uses
  %i.f = mul nsw i64 %i.e, 24
  %i.g = icmp sgt i32 %i.a, 0
  %i.h = sdiv i32 %0, 4                           ; 2 uses
  br i1 %i.g, label %.lr.ph.us.preheader, label %._crit_edge49.thread

._crit_edge49.thread:                             ; preds = %.lr.ph48
  %i.i = zext nneg i32 %1 to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.b, i8 0, i64 %i.j, i1 false), !tbaa !8
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph48
  %i.k = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv63 = phi i64 [ %i.k, %.lr.ph.us.preheader ], [ %indvars.iv.next64, %._crit_edge.us ] ; 3 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.f) #7
  %i.m = getelementptr [24 x i8], ptr %i.l, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.045.us = phi ptr [ null, %.lr.ph.us ], [ %i.o, %bb.b ]
  %i.n = xor i64 %indvars.iv, -1
  %i.o = getelementptr [24 x i8], ptr %i.m, i64 %i.n ; 5 uses
  store i32 %i.h, ptr @HashRange, align 4, !tbaa !4
  store i32 9999999, ptr %i.o, align 8, !tbaa !11
  %i.p = tail call ptr @MakeHash(i32 noundef %i.h, ptr noundef nonnull @hashfunc) #8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.045.us, ptr %i.r, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !16

._crit_edge.us:                                   ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv63
  store ptr %i.o, ptr %i.s, align 8, !tbaa !8
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1
  %i.t = icmp sgt i64 %indvars.iv63, 0
  br i1 %i.t, label %.lr.ph.us, label %.lr.ph, !llvm.loop !18

.lr.ph:                                           ; preds = %._crit_edge.us, %._crit_edge49.thread
  %puts41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %2 = zext nneg i32 %1 to i64
  %3 = getelementptr [8 x i8], ptr %i.b, i64 %2
  %4 = getelementptr i8, ptr %3, i64 -8
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %i.u = mul i32 %i.a, %1                         ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.w = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.preheader, %AddEdges.exit.us
  %indvars.iv66 = phi i64 [ %i.w, %.lr.ph.split.us.preheader ], [ %indvars.iv.next67, %AddEdges.exit.us ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv66
  %.02938.i.us = load ptr, ptr %i.x, align 8, !tbaa !8 ; 2 uses
  %.not39.i.us = icmp eq ptr %.02938.i.us, null
  br i1 %.not39.i.us, label %AddEdges.exit.us, label %.preheader.us.i.us.preheader

.preheader.us.i.us.preheader:                     ; preds = %bb.c
  %i.y = trunc i64 %indvars.iv66 to i32
  %i.z = mul i32 %i.a, %i.y
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %.preheader.us.i.us.preheader, %._crit_edge37.us.i.us
  %.02941.us.i.us = phi ptr [ %.029.us.i.us, %._crit_edge37.us.i.us ], [ %.02938.i.us, %.preheader.us.i.us.preheader ] ; 2 uses
  %.03040.us.i.us = phi i32 [ %i.ay, %._crit_edge37.us.i.us ], [ %i.z, %.preheader.us.i.us.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02941.us.i.us, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.preheader.us.i.us
  %.135.us.i.us = phi i32 [ 0, %.preheader.us.i.us ], [ %i.ax, %bb.f ] ; 5 uses
  %.not32.us.i.us = icmp eq i32 %.135.us.i.us, %.03040.us.i.us
  br i1 %.not32.us.i.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %..i.us.i.us = tail call i32 @llvm.smin.i32(i32 %.135.us.i.us, i32 %.03040.us.i.us)
  %.13.i.us.i.us = tail call i32 @llvm.smax.i32(i32 %.135.us.i.us, i32 %.03040.us.i.us)
  %i.ab = mul nsw i32 %..i.us.i.us, %0
  %i.ac = add nsw i32 %i.ab, %.13.i.us.i.us       ; 2 uses
  %i.ad = sdiv i32 %i.ac, 10000
  %i.ae = srem i32 %i.ac, 10000                   ; 2 uses
  %i.af = mul nsw i32 %i.ae, 3141
  %i.ag = mul nsw i32 %i.ad, 5821
  %i.ah = add nsw i32 %i.af, %i.ag
  %i.ai = srem i32 %i.ah, 10000
  %i.aj = mul nsw i32 %i.ai, 10000
  %i.ak = mul nsw i32 %i.ae, 5821
  %i.al = add nsw i32 %i.ak, 1
  %i.am = add nsw i32 %i.al, %i.aj
  %i.an = srem i32 %i.am, 2048
  %i.ao = add nsw i32 %i.an, 1
  %i.ap = srem i32 %.135.us.i.us, %i.a
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.aq
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.at = sext i32 %i.ao to i64
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = trunc i64 %i.av to i32
  tail call void @HashInsert(ptr noundef %i.au, i32 noundef %i.aw, ptr noundef %i.as) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = add nuw nsw i32 %.135.us.i.us, 1        ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.ax, %i.u
  br i1 %exitcond.not.i.us, label %._crit_edge37.us.i.us, label %bb.d, !llvm.loop !19

._crit_edge37.us.i.us:                            ; preds = %bb.f
  %i.ay = add nsw i32 %.03040.us.i.us, 1
  %i.az = getelementptr inbounds nuw i8, ptr %.02941.us.i.us, i64 8
  %.029.us.i.us = load ptr, ptr %i.az, align 8, !tbaa !8 ; 2 uses
  %.not.us.i.us = icmp eq ptr %.029.us.i.us, null
  br i1 %.not.us.i.us, label %AddEdges.exit.us, label %.preheader.us.i.us, !llvm.loop !20

AddEdges.exit.us:                                 ; preds = %._crit_edge37.us.i.us, %bb.c
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, -1
  %i.ba = icmp sgt i64 %indvars.iv66, 0
  br i1 %i.ba, label %bb.c, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %AddEdges.exit.us, %.lr.ph, %._crit_edge49.thread73
  %puts42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare ptr @MakeHash(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 536870912) i32 @hashfunc(i32 noundef %0) #3 {
bb.a:
  %i.a = lshr i32 %0, 3
  %i.b = load i32, ptr @HashRange, align 4, !tbaa !4
  %i.c = urem i32 %i.a, %i.b
  ret i32 %i.c
}

declare void @HashInsert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
!9 = !{!"p1 _ZTS7vert_st", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !5, i64 0}
!12 = !{!"vert_st", !5, i64 0, !9, i64 8, !13, i64 16}
!13 = !{!"p1 _ZTS4hash", !10, i64 0}
!14 = !{!12, !13, i64 16}
!15 = !{!12, !9, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
end_hunk_0
