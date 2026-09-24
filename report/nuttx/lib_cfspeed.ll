Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_cfspeed?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.speed_s = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"/libs/libc/termios/lib_cfspeed.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"termiosp\00", align 1
@g_baud_table = internal unnamed_addr constant [31 x %struct.speed_s] [%struct.speed_s zeroinitializer, %struct.speed_s { i64 50, i64 1 }, %struct.speed_s { i64 75, i64 2 }, %struct.speed_s { i64 110, i64 3 }, %struct.speed_s { i64 134, i64 4 }, %struct.speed_s { i64 150, i64 5 }, %struct.speed_s { i64 200, i64 6 }, %struct.speed_s { i64 300, i64 7 }, %struct.speed_s { i64 600, i64 8 }, %struct.speed_s { i64 1200, i64 9 }, %struct.speed_s { i64 1800, i64 10 }, %struct.speed_s { i64 2400, i64 11 }, %struct.speed_s { i64 4800, i64 12 }, %struct.speed_s { i64 9600, i64 13 }, %struct.speed_s { i64 19200, i64 14 }, %struct.speed_s { i64 38400, i64 15 }, %struct.speed_s { i64 57600, i64 4097 }, %struct.speed_s { i64 115200, i64 4098 }, %struct.speed_s { i64 230400, i64 4099 }, %struct.speed_s { i64 460800, i64 4100 }, %struct.speed_s { i64 500000, i64 4101 }, %struct.speed_s { i64 576000, i64 4102 }, %struct.speed_s { i64 921600, i64 4103 }, %struct.speed_s { i64 1000000, i64 4104 }, %struct.speed_s { i64 1152000, i64 4105 }, %struct.speed_s { i64 1500000, i64 4106 }, %struct.speed_s { i64 2000000, i64 4107 }, %struct.speed_s { i64 2500000, i64 4108 }, %struct.speed_s { i64 3000000, i64 4109 }, %struct.speed_s { i64 3500000, i64 4110 }, %struct.speed_s { i64 4000000, i64 4111 }], align 16

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local noundef i32 @cfsetspeed(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.preheader, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 150, ptr noundef nonnull @.str.1) #2
  unreachable

.preheader:                                       ; preds = %bb.a, %bb.c
  %.026 = phi i64 [ %4, %bb.c ], [ 0, %bb.a ]     ; 2 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr @g_baud_table, i64 %.026 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %1, %i.c
  %i.e = load i64, ptr %i.a, align 16             ; 2 uses
  br i1 %i.d, label %.thread, label %2

2:                                                ; preds = %.preheader
  %3 = icmp eq i64 %1, %i.e
  br i1 %3, label %.thread, label %bb.c

bb.c:                                             ; preds = %2
  %4 = add nuw nsw i64 %.026, 1                   ; 2 uses
  %exitcond.not.a = icmp eq i64 %4, 31
  br i1 %exitcond.not.a, label %.thread, label %.preheader, !llvm.loop !8

.thread:                                          ; preds = %bb.c, %2, %.preheader
  %.sink = phi i64 [ %i.e, %.preheader ], [ %1, %2 ], [ %1, %bb.c ]
  %.1 = phi i64 [ %1, %.preheader ], [ %i.c, %2 ], [ 4096, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, -4112
  %i.j = trunc i64 %.1 to i32
  %i.k = or i32 %i.i, %i.j
  store i32 %i.k, ptr %i.g, align 8
  ret i32 0
}

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i64 @cfgetspeed(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.1) #2
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

attributes #0 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
