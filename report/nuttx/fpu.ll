Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/fpu?download=true
begin_hunk_0
@str = private unnamed_addr constant [20 x i8] c"Starting task FPU#1\00", align 1
@str.1 = private unnamed_addr constant [20 x i8] c"Starting task FPU#2\00", align 1
@str.2 = private unnamed_addr constant [20 x i8] c"fpu_test: Returning\00", align 1
@str.4 = private unnamed_addr constant [43 x i8] c"fpu_test: ERROR Failed to start task FPU#1\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @fpu_test() local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i8 0, ptr @g_fpuno, align 1
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.b = tail call i32 @task_create(ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef 4194304, ptr noundef nonnull @fpu_task, ptr noundef null) #11 ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.3, i32 noundef 307, ptr noundef nonnull @.str.4) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.b) #13 ; 0 uses
  %i.e = tail call ptr @lib_get_stream(i32 noundef 1) #11
  %i.f = tail call i32 @fflush(ptr noundef %i.e) #13 ; 0 uses
  %i.g = tail call i32 @usleep(i32 noundef 250) #11 ; 0 uses
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.h = tail call i32 @task_create(ptr noundef nonnull @.str.7, i32 noundef 100, i32 noundef 4194304, ptr noundef nonnull @fpu_task, ptr noundef null) #11 ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.3, i32 noundef 323, ptr noundef nonnull @.str.4) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.h) #13 ; 0 uses
  %i.k = tail call ptr @lib_get_stream(i32 noundef 1) #11
  %i.l = tail call i32 @fflush(ptr noundef %i.k) #13 ; 0 uses
  %i.m = call i32 @waitpid(i32 noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 0) #11 ; 0 uses
  %i.n = call i32 @waitpid(i32 noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 0) #11 ; 0 uses
  %puts8 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @task_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone nounwind optsize uwtable
define internal noundef i32 @fpu_task(i32 %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  tail call void @sched_lock() #11
  %i.a = load i8, ptr @g_fpuno, align 1           ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [1728 x i8], ptr @g_fputhread, i64 %i.b ; 15 uses
  %i.d = add i8 %i.a, 1                           ; 4 uses
  store i8 %i.d, ptr @g_fpuno, align 1
  %i.e = zext i8 %i.d to i32                      ; 4 uses
  tail call void @sched_unlock() #11
  %i.f = uitofp i8 %i.d to float
  %i.g = uitofp i8 %i.d to double
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 832 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1664
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1668
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1672
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1676
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1680
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1684
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1688
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1692
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i32 %i.q, 16
  br i1 %exitcond.not, label %bb.g, label %bb.c, !llvm.loop !8

bb.c:                                             ; preds = %bb.a, %bb.b
  %.050 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.b ]
  %.04549 = phi double [ %i.g, %bb.a ], [ %i.ab, %bb.b ]
  %.04648 = phi float [ %i.f, %bb.a ], [ %i.x, %bb.b ]
  %i.q = add nuw nsw i32 %.050, 1                 ; 3 uses
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.e, i32 noundef %i.q) #13 ; 0 uses
  %i.s = tail call ptr @lib_get_stream(i32 noundef 1) #11
  %i.t = tail call i32 @fflush(ptr noundef %i.s) #13 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1664) %i.c, i8 -1, i64 1664, i1 false)
  tail call void @sched_lock() #11
  %i.u = fmul float %.04648, 3.141590e+00         ; 2 uses
  %i.v = fadd float %i.u, 1.618030e+00            ; 2 uses
  %i.w = fdiv float %i.v, 2.718280e+00            ; 2 uses
  %i.x = fadd float %i.w, 1.000000e+00            ; 2 uses
  store volatile float %i.x, ptr %i.i, align 64
  store volatile float %i.w, ptr %i.j, align 4
  store volatile float %i.v, ptr %i.k, align 8
  store volatile float %i.u, ptr %i.l, align 4
  %i.y = fmul double %.04549, 3.141590e+00        ; 2 uses
  %i.z = fadd double %i.y, 1.618030e+00           ; 2 uses
  %i.aa = fdiv double %i.z, 2.718280e+00          ; 2 uses
  %i.ab = fadd double %i.aa, 1.000000e+00         ; 2 uses
  %i.ac = fptrunc double %i.ab to float
  store volatile float %i.ac, ptr %i.m, align 16
  %i.ad = fptrunc double %i.aa to float
  store volatile float %i.ad, ptr %i.n, align 4
  %i.ae = fptrunc double %i.z to float
  store volatile float %i.ae, ptr %i.o, align 8
  %i.af = fptrunc double %i.y to float
  store volatile float %i.af, ptr %i.p, align 4
  %i.ag = tail call i32 @up_saveusercontext(ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.ah = tail call i32 @up_saveusercontext(ptr noundef nonnull %i.h) #11 ; 0 uses
  %i.ai = tail call zeroext i1 @up_fpucmp(ptr noundef nonnull %i.c, ptr noundef nonnull %i.h) #11
  br i1 %i.ai, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.e) #13 ; 0 uses
  tail call fastcc void @fpu_dump(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.12) #13
  tail call fastcc void @fpu_dump(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.13) #13
  tail call void @__assert(ptr noundef nonnull @.str.3, i32 noundef 255, ptr noundef nonnull @.str.4) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @sched_unlock() #11
  %i.ak = tail call i32 @usleep(i32 noundef 750000) #11 ; 0 uses
  %i.al = tail call i32 @up_saveusercontext(ptr noundef nonnull %i.h) #11 ; 0 uses
  %i.am = tail call zeroext i1 @up_fpucmp(ptr noundef nonnull %i.c, ptr noundef nonnull %i.h) #11
  br i1 %i.am, label %bb.b, label %bb.f, !llvm.loop !8

bb.f:                                             ; preds = %bb.e
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.e) #13 ; 0 uses
  tail call fastcc void @fpu_dump(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.14) #13
  tail call fastcc void @fpu_dump(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.15) #13
  tail call void @__assert(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.4) #12
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.e) #13 ; 0 uses
  %i.ap = tail call ptr @lib_get_stream(i32 noundef 1) #11
  %i.aq = tail call i32 @fflush(ptr noundef %i.ap) #13 ; 0 uses
  ret i32 0
}

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local ptr @lib_get_stream(i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @usleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: noredzone optsize
declare dso_local void @sched_lock() local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local void @sched_unlock() local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @up_saveusercontext(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local zeroext i1 @up_fpucmp(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noredzone nounwind optsize uwtable
define internal fastcc void @fpu_dump(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %1, ptr noundef %0) #13 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv17 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next18, %bb.d ] ; 4 uses
  %i.b = trunc nuw nsw i64 %indvars.iv17 to i32
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.b) #13 ; 0 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.d = load i64, ptr %gep, align 8
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %i.d) #13 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !9

bb.d:                                             ; preds = %bb.c
  %putchar13 = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 8
  %i.f = icmp samesign ult i64 %indvars.iv17, 96
  br i1 %i.f, label %bb.b, label %bb.e, !llvm.loop !10

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noredzone nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind optsize }
attributes #12 = { noredzone noreturn nounwind optsize }
attributes #13 = { noredzone optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
end_hunk_0
