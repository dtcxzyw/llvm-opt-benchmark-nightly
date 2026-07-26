inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef ptr @SN_create_env(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #4 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @create_s() #5             ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  br i1 %i.d, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = sext i32 %0 to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 8) #4 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.f, ptr %i.g, align 8, !tbaa !14
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.preheader.i, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.j = tail call ptr @create_s() #5             ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store ptr %i.j, ptr %i.k, align 8, !tbaa !17
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %.thread, label %bb.e

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.c
  %i.m = phi ptr [ null, %bb.c ], [ %i.f, %.preheader ], [ %i.f, %bb.e ]
  %.not27 = icmp eq i32 %1, 0
  br i1 %.not27, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.n = sext i32 %1 to i64
  %i.o = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !18
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %.thread, label %bb.j

.thread:                                          ; preds = %.lr.ph, %bb.b, %bb.f
  %i.r = phi ptr [ %i.m, %bb.f ], [ null, %bb.b ], [ %i.f, %.lr.ph ]
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.thread
  %i.s = phi ptr [ null, %bb.d ], [ %i.r, %.thread ] ; 2 uses
  %i.t = icmp sgt i32 %0, 0
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %0 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  tail call void @lose_s(ptr noundef %i.v) #5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g, !llvm.loop !19

._crit_edge.i:                                    ; preds = %bb.g, %.preheader.i
  tail call void @free(ptr noundef %i.s) #5
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.thread
  %i.w = phi ptr [ %.pre, %._crit_edge.i ], [ null, %.thread ]
  tail call void @free(ptr noundef %i.w) #5
  br i1 %i.d, label %SN_close_env.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lose_s(ptr noundef nonnull %i.c) #5
  br label %SN_close_env.exit

SN_close_env.exit:                                ; preds = %bb.h, %bb.i
  tail call void @free(ptr noundef nonnull %i.a) #5
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.f, %bb.a, %SN_close_env.exit
  %.023 = phi ptr [ null, %bb.a ], [ null, %SN_close_env.exit ], [ %i.a, %bb.f ], [ %i.a, %.loopexit ]
  ret ptr %.023
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @create_s() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @SN_close_env(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  tail call void @lose_s(ptr noundef %i.f) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.h) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.j) #5
  %i.k = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not14 = icmp eq ptr %i.k, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lose_s(ptr noundef nonnull %i.k) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @free(ptr noundef nonnull %0) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare void @lose_s(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @SN_set_current(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %i.c = tail call i32 @replace_s(ptr noundef %0, i32 noundef 0, i32 noundef %i.b, i32 noundef %1, ptr noundef %2, ptr noundef null) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !21
  ret i32 %i.c
}

declare i32 @replace_s(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"SN_env", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !11, i64 32, !13, i64 40}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p2 omnipotent char", !12, i64 0}
!12 = !{!"any p2 pointer", !10, i64 0}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!8, !11, i64 32}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!9, !9, i64 0}
!18 = !{!8, !13, i64 40}
!19 = distinct !{!19, !16}
!20 = !{!8, !4, i64 12}
!21 = !{!8, !4, i64 8}
end_hunk_0
