Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/backtrace_execinfo?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@opal_stacktrace_output_fileno = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"[%2d] \00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @opal_backtrace_print(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 5 uses
  %i.b = alloca [6 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = load i32, ptr @opal_stacktrace_output_fileno, align 4, !tbaa !8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @fileno(ptr noundef nonnull %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.c, %bb.a ]  ; 6 uses
  %i.e = icmp eq i32 %.0, -1
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @backtrace(ptr noundef nonnull %i.a, i32 noundef 32) #8 ; 2 uses
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %.not21 = icmp eq ptr %1, null
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %wide.trip.count36 = sext i32 %i.f to i64       ; 2 uses
  br i1 %.not21, label %opal_best_effort_write.exit.us, label %.lr.ph.split

opal_best_effort_write.exit.us:                   ; preds = %.lr.ph, %opal_best_effort_write.exit29.us
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %opal_best_effort_write.exit29.us ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.i = trunc i64 %indvars.iv33 to i32
  %i.j = sub i32 %i.i, %2
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 6, ptr noundef nonnull @.str, i32 noundef %i.j) #8 ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %.not20.i22.us = icmp eq i32 %i.k, 0
  br i1 %.not20.i22.us, label %opal_best_effort_write.exit29.us, label %.lr.ph.i23.us

.lr.ph.i23.us:                                    ; preds = %opal_best_effort_write.exit.us, %bb.g
  %.01421.i24.us = phi i64 [ %i.s, %bb.g ], [ 0, %opal_best_effort_write.exit.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01421.i24.us
  %i.n = sub i64 %i.l, %.01421.i24.us
  %i.o = call i64 @write(i32 noundef range(i32 0, -1) %.0, ptr noundef nonnull readonly %i.m, i64 noundef %i.n) #8 ; 3 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i23.us
  %.old1.i25.us = icmp eq i64 %i.o, 0
  br i1 %.old1.i25.us, label %opal_best_effort_write.exit29.us, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i23.us
  %i.q = tail call ptr @__errno_location() #9
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %.not19.i28.us = icmp eq i32 %i.r, 4
  br i1 %.not19.i28.us, label %bb.g, label %opal_best_effort_write.exit29.us

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = add i64 %i.o, %.01421.i24.us             ; 2 uses
  %.not.i26.us = icmp eq i64 %i.s, %i.l
  br i1 %.not.i26.us, label %opal_best_effort_write.exit29.us, label %.lr.ph.i23.us, !llvm.loop !9

opal_best_effort_write.exit29.us:                 ; preds = %bb.e, %bb.f, %bb.g, %opal_best_effort_write.exit.us
  %i.t = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv33
  call void @backtrace_symbols_fd(ptr noundef nonnull %i.t, i32 noundef 1, i32 noundef %.0) #8
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %.loopexit, label %opal_best_effort_write.exit.us, !llvm.loop !10

.lr.ph.split:                                     ; preds = %.lr.ph, %opal_best_effort_write.exit29
  %indvars.iv = phi i64 [ %indvars.iv.next, %opal_best_effort_write.exit29 ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10 ; 3 uses
  %.not20.i = icmp eq i64 %i.u, 0
  br i1 %.not20.i, label %opal_best_effort_write.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.split, %bb.j
  %.01421.i = phi i64 [ %i.ab, %bb.j ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.01421.i
  %i.w = sub i64 %i.u, %.01421.i
  %i.x = call i64 @write(i32 noundef range(i32 0, -1) %.0, ptr noundef nonnull readonly %i.v, i64 noundef %i.w) #8 ; 3 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.z = tail call ptr @__errno_location() #9
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  %.not19.i = icmp eq i32 %i.aa, 4
  br i1 %.not19.i, label %bb.j, label %opal_best_effort_write.exit

bb.i:                                             ; preds = %.lr.ph.i
  %.old1.i = icmp eq i64 %i.x, 0
  br i1 %.old1.i, label %opal_best_effort_write.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = add i64 %i.x, %.01421.i                 ; 2 uses
  %.not.i = icmp eq i64 %i.ab, %i.u
  br i1 %.not.i, label %opal_best_effort_write.exit, label %.lr.ph.i, !llvm.loop !9

opal_best_effort_write.exit:                      ; preds = %bb.j, %bb.i, %bb.h, %.lr.ph.split
  %i.ac = trunc i64 %indvars.iv to i32
  %i.ad = sub i32 %i.ac, %2
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 6, ptr noundef nonnull @.str, i32 noundef %i.ad) #8 ; 2 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %.not20.i22 = icmp eq i32 %i.ae, 0
  br i1 %.not20.i22, label %opal_best_effort_write.exit29, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %opal_best_effort_write.exit, %bb.m
  %.01421.i24 = phi i64 [ %i.am, %bb.m ], [ 0, %opal_best_effort_write.exit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01421.i24
  %i.ah = sub i64 %i.af, %.01421.i24
  %i.ai = call i64 @write(i32 noundef range(i32 0, -1) %.0, ptr noundef nonnull readonly %i.ag, i64 noundef %i.ah) #8 ; 3 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i23
  %i.ak = tail call ptr @__errno_location() #9
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %.not19.i28 = icmp eq i32 %i.al, 4
  br i1 %.not19.i28, label %bb.m, label %opal_best_effort_write.exit29

bb.l:                                             ; preds = %.lr.ph.i23
  %.old1.i25 = icmp eq i64 %i.ai, 0
  br i1 %.old1.i25, label %opal_best_effort_write.exit29, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = add i64 %i.ai, %.01421.i24              ; 2 uses
  %.not.i26 = icmp eq i64 %i.am, %i.af
  br i1 %.not.i26, label %opal_best_effort_write.exit29, label %.lr.ph.i23, !llvm.loop !9

opal_best_effort_write.exit29:                    ; preds = %bb.k, %bb.l, %bb.m, %opal_best_effort_write.exit
  %i.an = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv
  call void @backtrace_symbols_fd(ptr noundef nonnull %i.an, i32 noundef 1, i32 noundef %.0) #8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count36
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !10

.loopexit:                                        ; preds = %opal_best_effort_write.exit29, %opal_best_effort_write.exit29.us, %bb.d, %bb.c
  %.018 = phi i32 [ -5, %bb.c ], [ 0, %bb.d ], [ 0, %opal_best_effort_write.exit29.us ], [ 0, %opal_best_effort_write.exit29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @backtrace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @backtrace_symbols_fd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef i32 @opal_backtrace_buffer(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call i32 @backtrace(ptr noundef nonnull %i.a, i32 noundef 32) #8 ; 2 uses
  %i.c = call ptr @backtrace_symbols(ptr noundef nonnull %i.a, i32 noundef %i.b) #8
  store ptr %i.c, ptr %0, align 8, !tbaa !15
  store i32 %i.b, ptr %1, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nounwind
declare ptr @backtrace_symbols(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }

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
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !11}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"any p2 pointer", !12, i64 0}
!14 = !{!"p2 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
end_hunk_0
