begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"/proc/self/oom_score_adj\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s not found. Falling back to oom_adj\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"/proc/self/oom_adj\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s not found\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"failed to open %s: %m\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"SLURMSTEPD_OOM_ADJ\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SLURMSTEPD_OOM_ADJ=%d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @set_oom_adj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str, i32 noundef 1) #8 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #9     ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @get_log_level() #8
  %i.h = icmp sgt i32 %i.g, 4
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.2, i32 noundef 1) #8 ; 4 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.d, align 4
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.o = icmp slt i32 %0, 0
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.neg21 = mul i32 %0, -17
  %i.p = udiv i32 %.neg21, 1000
  %.neg = sub nsw i32 0, %i.p
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = mul nuw nsw i32 %0, 3
  %i.r = udiv i32 %i.q, 200
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  %i.s = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str) #8 ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.j, %bb.a
  %.016 = phi i32 [ %.neg, %bb.j ], [ %i.r, %bb.l ], [ 0, %bb.k ], [ %0, %bb.a ]
  %.0 = phi i32 [ %i.i, %bb.j ], [ %i.i, %bb.l ], [ %i.i, %bb.k ], [ %i.b, %bb.a ] ; 3 uses
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %.016) #8
  %i.u = icmp sgt i32 %i.t, 15
  br i1 %i.u, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.v = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #10
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.w = tail call i32 @close(i32 noundef %.0) #8 ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %.preheader, %bb.q
  %i.x = call i64 @write(i32 noundef %.0, ptr noundef nonnull %i.a, i64 noundef %i.v) #8
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.z = tail call ptr @__errno_location() #9
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp eq i32 %i.aa, 4
  br i1 %i.ab, label %bb.p, label %.critedge, !llvm.loop !8

.critedge:                                        ; preds = %bb.p, %bb.q
  %i.ac = tail call i32 @close(i32 noundef %.0) #8 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.g, %bb.h, %.critedge, %bb.o, %bb.m
  %.017 = phi i32 [ -1, %bb.m ], [ -1, %bb.o ], [ 0, %.critedge ], [ -1, %bb.h ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i32 @get_log_level() local_unnamed_addr #4

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @set_oom_adj_env(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.6) #8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @setenvfs(ptr noundef nonnull @.str.7, i32 noundef %0) #8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @setenvfs(ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
