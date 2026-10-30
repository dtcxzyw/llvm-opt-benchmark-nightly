Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/fs_procfsproc?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0_@proc_stat:bb.a
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @nxsched_gettid() #17
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = call i64 @strtoul(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #16
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.c ] ; 5 uses
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = icmp ugt i64 %.0, 2147483647
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = trunc nuw nsw i64 %.0 to i32
  %i.l = tail call ptr @nxsched_get_tcb(i32 noundef %i.k) #17
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %1, i8 0, i64 88, i1 false)
  %i.n = load i8, ptr %i.h, align 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @strcmp(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.67) #16
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 16676, ptr %i.r, align 8
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.h, align 1
  %.not = icmp eq i8 %i.s, 47
  br i1 %.not, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.u = tail call fastcc ptr @proc_findnode(ptr noundef nonnull %i.t) #16 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 17
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 33060, ptr %i.z, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 16676, ptr %i.z, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.l, %bb.m, %bb.j, %bb.i, %bb.e, %bb.d
  %.013 = phi i32 [ -2, %bb.i ], [ -2, %bb.d ], [ 0, %bb.h ], [ -2, %bb.j ], [ -2, %bb.e ], [ 0, %bb.m ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsched_gettid() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree noredzone nounwind optsize willreturn
declare dso_local i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: noredzone optsize
declare dso_local ptr @nxsched_get_tcb(i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc noundef ptr @proc_findnode(ptr noundef %0) unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @g_nodeinfo, i64 %indvars.iv
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 @strlen(ptr noundef %i.c) #16 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = tail call i32 @strncmp(ptr noundef %i.e, ptr noundef %0, i64 noundef %i.d) #16
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %bb.f [
    i8 0, label %bb.g
    i8 47, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.h, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !16

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  %.2 = phi ptr [ null, %bb.f ], [ %i.b, %bb.e ], [ %i.b, %bb.c ]
  ret ptr %.2
}

; Function Attrs: noredzone optsize allocsize(0)
declare dso_local noalias ptr @zalloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i64 @strlen(ptr noundef) local_unnamed_addr #9

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: noredzone optsize
declare dso_local i32 @procfs_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i64 @procfs_memcpy(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local void @nxsched_get_stateinfo(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i64 @nxtask_argvstr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @fdlist_count(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local ptr @lib_get_tempbuffer(i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @fdlist_get2(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @file_ioctl(ptr noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @file_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local void @lib_put_tempbuffer(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @env_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone nounwind optsize uwtable
define internal range(i32 0, 2) i32 @proc_groupenv_callback(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %.not36 = or i1 %i.b, %i.c
  br i1 %.not36, label %bb.b, label %.preheader, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str.17, i32 noundef 1444, ptr noundef nonnull @.str.62) #19
  unreachable

.preheader:                                       ; preds = %bb.a, %bb.e
  %.032 = phi ptr [ %i.h, %bb.e ], [ %1, %bb.a ]  ; 4 uses
  %.029 = phi ptr [ %.130, %bb.e ], [ %i.a, %bb.a ] ; 4 uses
  %.0 = phi i32 [ %.1, %bb.e ], [ 0, %bb.a ]      ; 3 uses
  %i.d = load i8, ptr %.032, align 1              ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 61, label %.critedge
    i8 0, label %.critedge
  ]

bb.c:                                             ; preds = %.preheader
  %i.e = icmp slt i32 %.0, 16
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.029, i64 1
  store i8 %i.d, ptr %.029, align 1
  %i.g = add nsw i32 %.0, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.130 = phi ptr [ %i.f, %bb.d ], [ %.029, %bb.c ]
  %.1 = phi i32 [ %i.g, %bb.d ], [ %.0, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %.032, i64 1
  br label %.preheader, !llvm.loop !17

.critedge:                                        ; preds = %.preheader, %.preheader
  store i8 0, ptr %.029, align 1
  %2 = load i8, ptr %.032, align 1
  %i.i = icmp eq i8 %2, 61
  %i.j = getelementptr inbounds nuw i8, ptr %.032, i64 1
  %.031 = select i1 %i.i, ptr %i.j, ptr @.str.60
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.m = call i32 (ptr, i64, ptr, ...) @procfs_snprintf(ptr noundef nonnull %i.l, i64 noundef 256, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.a, ptr noundef nonnull %.031) #17
  %i.n = sext i32 %i.m to i64
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = call i64 @procfs_memcpy(ptr noundef nonnull %i.p, i64 noundef %i.n, ptr noundef %i.r, i64 noundef %i.t, ptr noundef nonnull %i.u) #17 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, %i.v                       ; 2 uses
  store i64 %i.y, ptr %i.w, align 8
  %i.z = load ptr, ptr %i.q, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  store ptr %i.aa, ptr %i.q, align 8
  %i.ab = load i64, ptr %i.s, align 8
  %i.ac = sub i64 %i.ab, %i.v
  store i64 %i.ac, ptr %i.s, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8
  %.not38 = icmp uge i64 %i.y, %i.ae
  %.033 = zext i1 %.not38 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.033
}

; Function Attrs: mustprogress nofree noredzone nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree noredzone optsize
declare dso_local i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strncmp" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree noredzone nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noredzone optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strlen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noredzone nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strcmp" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone optsize }
attributes #17 = { noredzone nounwind optsize }
attributes #18 = { noredzone nounwind optsize allocsize(0) }
attributes #19 = { noredzone noreturn nounwind optsize }
attributes #20 = { noredzone optsize allocsize(0) }

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
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = !{i64 570406, i64 570424}
!13 = !{i64 571056}
!14 = !{i64 571190}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
end_hunk_0
