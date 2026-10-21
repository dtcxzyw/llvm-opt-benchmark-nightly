Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/multibitmapset?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"negative multibitmapset member index not allowed\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"multibitmapset.c\00", align 1
@__func__.mbms_add_member = private unnamed_addr constant [16 x i8] c"mbms_add_member\00", align 1
@__func__.mbms_is_member = private unnamed_addr constant [15 x i8] c"mbms_is_member\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @mbms_add_member(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #3 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 50, ptr noundef nonnull @__func__.mbms_add_member) #4
  unreachable

.preheader:                                       ; preds = %bb.a, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ %0, %bb.a ]    ; 5 uses
  %.not.i = icmp eq ptr %.0, null
  br i1 %.not.i, label %list_length.exit, label %3

3:                                                ; preds = %.preheader
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %5 = load i32, ptr %4, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %.preheader, %3
  %6 = phi i32 [ %5, %3 ], [ 0, %.preheader ]
  %.not = icmp sgt i32 %6, %1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %list_length.exit
  %i.d = tail call ptr @lappend(ptr noundef %.0, ptr noundef null) #4
  br label %.preheader, !llvm.loop !5

bb.d:                                             ; preds = %list_length.exit
  %i.e = getelementptr i8, ptr %.0, i64 16
  %.0.val = load ptr, ptr %i.e, align 8
  %7 = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %.0.val, i64 %7 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @bms_add_member(ptr noundef %i.g, i32 noundef %2) #4
  store ptr %i.h, ptr %i.f, align 8
  ret ptr %.0
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_add_member(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @mbms_add_members(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not.i26 = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  br i1 %.not.i26, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %.not.i.us50 = icmp eq ptr %0, null
  br i1 %.not.i.us50, label %.thread, label %list_length.exit.us

list_length.exit.us:                              ; preds = %.split.us.preheader, %.split.us
  %.0.us51 = phi ptr [ %i.e, %.split.us ], [ %0, %.split.us.preheader ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.us51, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.split.us, label %.thread

.split.us:                                        ; preds = %list_length.exit.us
  %i.e = tail call ptr @lappend(ptr noundef nonnull %.0.us51, ptr noundef null) #4 ; 2 uses
  %.not.i.us = icmp eq ptr %i.e, null
  br i1 %.not.i.us, label %.thread, label %list_length.exit.us, !llvm.loop !6

.split:                                           ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.o, %bb.b ], [ %0, %bb.a ]    ; 8 uses
  %.not.i = icmp eq ptr %.0, null
  br i1 %.not.i, label %list_length.exit, label %list_length.exit.thread

list_length.exit:                                 ; preds = %.split
  %i.f = load i32, ptr %i.a, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.thread

list_length.exit.thread:                          ; preds = %.split
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = load i32, ptr %i.a, align 4
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %.preheader.thread.thread

.preheader.thread.thread:                         ; preds = %list_length.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader.split30.split

bb.b:                                             ; preds = %list_length.exit.thread, %list_length.exit
  %i.o = tail call ptr @lappend(ptr noundef %.0, ptr noundef null) #4
  br label %.split, !llvm.loop !6

.preheader.split30.split:                         ; preds = %.preheader.thread.thread, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader.thread.thread ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.p = load i32, ptr %i.l, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.split30.split
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  br label %bb.d

bb.d:                                             ; preds = %.preheader.split30.split, %bb.c
  %i.u = phi ptr [ %i.t, %bb.c ], [ null, %.preheader.split30.split ] ; 3 uses
  %i.v = load i32, ptr %i.a, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv, %i.w
  br i1 %i.x, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.z = icmp ne ptr %i.u, null
  %i.aa = icmp ne ptr %i.y, null
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.f, label %.thread

.thread:                                          ; preds = %list_length.exit, %bb.d, %bb.e, %.split.us, %list_length.exit.us, %.split.us.preheader
  %.us-phi2840 = phi ptr [ null, %.split.us.preheader ], [ %.0, %bb.d ], [ %.0.us51, %list_length.exit.us ], [ null, %.split.us ], [ %.0, %bb.e ], [ %.0, %list_length.exit ]
  ret ptr %.us-phi2840

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.u, align 8
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = tail call ptr @bms_add_members(ptr noundef %i.ad, ptr noundef %i.ae) #4
  store ptr %i.af, ptr %i.u, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %.preheader.split30.split, !llvm.loop !7
}

declare ptr @bms_add_members(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @mbms_int_members(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %list_length.exit.split.us, label %list_length.exit.split

list_length.exit.split.us:                        ; preds = %bb.a
  %i.a = tail call ptr @list_truncate(ptr noundef %0, i32 noundef 0) #4
  br label %.thread

list_length.exit.split:                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = tail call ptr @list_truncate(ptr noundef %0, i32 noundef %i.c) #4 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not, label %.thread, label %list_length.exit.split.split

list_length.exit.split.split:                     ; preds = %list_length.exit.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %list_length.exit.split ] ; 5 uses
  %i.i = load i32, ptr %i.f, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %list_length.exit.split.split
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  br label %bb.c

bb.c:                                             ; preds = %list_length.exit.split.split, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %list_length.exit.split.split ] ; 3 uses
  %i.o = load i32, ptr %i.e, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv, %i.p
  br i1 %i.q, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.s = icmp ne ptr %i.n, null
  %i.t = icmp ne ptr %i.r, null
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %list_length.exit.split.us, %list_length.exit.split
  %i.v = phi ptr [ %i.a, %list_length.exit.split.us ], [ null, %list_length.exit.split ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %i.v

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.x = load ptr, ptr %i.n, align 8
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = tail call ptr @bms_int_members(ptr noundef %i.x, ptr noundef %i.y) #4
  store ptr %i.z, ptr %i.n, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %list_length.exit.split.split, !llvm.loop !8
}

declare ptr @list_truncate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @bms_int_members(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @mbms_is_member(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #3 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 132, ptr noundef nonnull @__func__.mbms_is_member) #4
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %list_length.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.c, %bb.d
  %3 = phi i32 [ %i.e, %bb.d ], [ 0, %bb.c ]
  %.not = icmp slt i32 %0, %3
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %list_length.exit
  %i.f = getelementptr i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.f, align 8
  %i.g = zext nneg i32 %0 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 @bms_is_member(i32 noundef %1, ptr noundef %i.i) #4
  br label %bb.f

bb.f:                                             ; preds = %list_length.exit, %bb.e
  %.0 = phi i1 [ %i.j, %bb.e ], [ false, %list_length.exit ]
  ret i1 %.0
}

declare zeroext i1 @bms_is_member(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @mbms_overlap_sets(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not = icmp eq ptr %0, null
  %.not23 = icmp eq ptr %1, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %brmerge = or i1 %.not23, %.not
  br i1 %brmerge, label %.thread, label %.split.split

.split.split:                                     ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.a ] ; 6 uses
  %.0 = phi ptr [ %.1, %bb.g ], [ null, %bb.a ]   ; 4 uses
  %i.e = load i32, ptr %i.b, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = icmp slt i64 %indvars.iv, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split.split
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  br label %bb.c

bb.c:                                             ; preds = %.split.split, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %.split.split ] ; 2 uses
  %i.k = load i32, ptr %i.a, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv, %i.l
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.o = icmp ne ptr %i.j, null
  %i.p = icmp ne ptr %i.n, null
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a
  %.us-phi = phi ptr [ null, %bb.a ], [ %.0, %bb.d ], [ %.0, %bb.c ]
  ret ptr %.us-phi

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = load ptr, ptr %i.r, align 8
  %i.u = tail call zeroext i1 @bms_overlap(ptr noundef %i.s, ptr noundef %i.t) #4
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  %i.w = tail call ptr @bms_add_member(ptr noundef %.0, i32 noundef %i.v) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %i.w, %bb.f ], [ %.0, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %.split.split, !llvm.loop !9
}

declare zeroext i1 @bms_overlap(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
end_hunk_0
