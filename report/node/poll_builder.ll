inline.NumInlined: 11
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"../../deps/openssl/openssl/ssl/rio/poll_builder.c\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @ossl_rio_poll_builder_init(ptr nofree noundef writeonly captures(none) initializes((0, 8), (264, 280)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 32, ptr %i.b, align 8, !tbaa !15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_rio_poll_builder_cleanup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 40) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_rio_poll_builder_add_fd(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 4 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = select i1 %.not, ptr %i.b, ptr %i.a      ; 2 uses
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %rpb_ensure_alloc.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 5 uses
  %.not48 = icmp eq i64 %i.f, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.03245 = phi i64 [ %i.k, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.03245
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  %i.j = icmp eq i32 %i.h, %1
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = add nuw i64 %.03245, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %.preheader
  %.032.lcssa = phi i64 [ 0, %.preheader ], [ %.03245, %.lr.ph ], [ %i.f, %bb.b ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15   ; 5 uses
  %.not38 = icmp ult i64 %.032.lcssa, %i.m
  br i1 %.not38, label %rpb_ensure_alloc.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.n = shl nuw i64 %i.m, 1
  %.not.i = icmp sgt i64 %i.m, 0
  br i1 %.not.i, label %bb.d, label %rpb_ensure_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ugt i64 %i.m, 1152921504606846975
  br i1 %i.o, label %rpb_ensure_alloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.i19.i = shl nuw i64 %i.m, 4
  %i.p = tail call ptr @CRYPTO_realloc(ptr noundef %i.a, i64 noundef %.0.i19.i, ptr noundef nonnull @.str, i32 noundef 58) #6 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %rpb_ensure_alloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !9
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.p, ptr noundef nonnull align 8 dereferenceable(256) %i.b, i64 256, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !9
  store i64 %i.n, ptr %i.l, align 8, !tbaa !15
  %.pre.pre = load i64, ptr %i.e, align 8, !tbaa !14
  br label %rpb_ensure_alloc.exit

rpb_ensure_alloc.exit:                            ; preds = %bb.c, %bb.h, %._crit_edge
  %i.t = phi i64 [ %i.f, %._crit_edge ], [ %.pre.pre, %bb.h ], [ %i.f, %bb.c ]
  %.031 = phi ptr [ %i.c, %._crit_edge ], [ %i.p, %bb.h ], [ %i.a, %bb.c ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.031, i64 %.032.lcssa ; 2 uses
  store i32 %1, ptr %i.u, align 4, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.not40 = icmp ne i32 %2, 0
  %spec.select = zext i1 %.not40 to i16           ; 2 uses
  %.not41 = icmp eq i32 %3, 0
  %i.w = or disjoint i16 %spec.select, 4
  %spec.select44 = select i1 %.not41, i16 %spec.select, i16 %i.w
  store i16 %spec.select44, ptr %i.v, align 4, !tbaa !21
  %i.x = icmp eq i64 %.032.lcssa, %i.t
  br i1 %i.x, label %bb.i, label %rpb_ensure_alloc.exit.thread

bb.i:                                             ; preds = %rpb_ensure_alloc.exit
  %i.y = add i64 %.032.lcssa, 1
  store i64 %i.y, ptr %i.e, align 8, !tbaa !14
  br label %rpb_ensure_alloc.exit.thread

rpb_ensure_alloc.exit.thread:                     ; preds = %bb.d, %bb.e, %rpb_ensure_alloc.exit, %bb.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %rpb_ensure_alloc.exit ], [ 1, %bb.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_rio_poll_builder_poll(ptr noundef %0, i64 %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, -1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %.not10.us = icmp eq ptr %i.c, null
  %i.d = select i1 %.not10.us, ptr %i.a, ptr %i.c
  %i.e = load i64, ptr %i.b, align 8, !tbaa !14
  %i.f = tail call i32 @poll(ptr noundef nonnull %i.d, i64 noundef %i.e, i32 noundef -1) #6 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.split.us
  %i.h = tail call ptr @__errno_location() #7
  %i.i = load i32, ptr %i.h, align 4, !tbaa !5
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %.split.us, label %.critedge, !llvm.loop !22

.split:                                           ; preds = %bb.a, %bb.c
  %i.k = tail call i64 @ossl_time_now() #6
  %..i = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %i.k)
  %i.l = udiv i64 %..i, 1000000
  %i.m = trunc i64 %i.l to i32
  %i.n = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %.not10 = icmp eq ptr %i.n, null
  %i.o = select i1 %.not10, ptr %i.a, ptr %i.n
  %i.p = load i64, ptr %i.b, align 8, !tbaa !14
  %i.q = tail call i32 @poll(ptr noundef nonnull %i.o, i64 noundef %i.p, i32 noundef %i.m) #6 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.split
  %i.s = tail call ptr @__errno_location() #7
  %i.t = load i32, ptr %i.s, align 4, !tbaa !5
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %.split, label %.critedge, !llvm.loop !22

.critedge:                                        ; preds = %bb.c, %.split, %.split.us, %bb.b
  %.us-phi = phi i32 [ %i.f, %.split.us ], [ -1, %bb.b ], [ -1, %bb.c ], [ %i.q, %.split ]
  %i.v = icmp sgt i32 %.us-phi, -1
  %i.w = zext i1 %i.v to i32
  ret i32 %i.w
}

declare i64 @ossl_time_now() local_unnamed_addr #2

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"rio_poll_builder_st", !11, i64 0, !7, i64 8, !13, i64 264, !13, i64 272}
!11 = !{!"p1 _ZTS6pollfd", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !13, i64 264}
!15 = !{!10, !13, i64 272}
!16 = !{!17, !6, i64 0}
!17 = !{!"pollfd", !6, i64 0, !18, i64 4, !18, i64 6}
!18 = !{!"short", !7, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!17, !18, i64 4}
!22 = distinct !{!22, !20}
end_hunk_0
