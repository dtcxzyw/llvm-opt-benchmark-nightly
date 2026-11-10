Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_fd?download=true
begin_hunk_0_@pmix_fd_write:bb.a
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %1 to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.outer, %bb.c
  %.0.ph29 = phi ptr [ %2, %bb.c ], [ %i.k, %.outer ] ; 3 uses
  %.014.ph28 = phi i64 [ %i.c, %bb.c ], [ %i.j, %.outer ] ; 3 uses
  %i.d = tail call i64 @write(i32 noundef %0, ptr noundef %.0.ph29, i64 noundef %.014.ph28) #9 ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph26, label %.split.us

.lr.ph26:                                         ; preds = %.lr.ph.split
  %i.f = tail call ptr @__errno_location() #10
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph26, %bb.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  switch i32 %i.g, label %.thread [
    i32 11, label %bb.e
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.h = tail call i64 @write(i32 noundef %0, ptr noundef %.0.ph29, i64 noundef %.014.ph28) #9 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %.split.us

.split.us:                                        ; preds = %bb.e, %.lr.ph.split
  %.us-phi = phi i64 [ %i.d, %.lr.ph.split ], [ %i.h, %bb.e ] ; 3 uses
  %.not19 = icmp eq i64 %.us-phi, 0
  br i1 %.not19, label %.thread, label %.outer

.outer:                                           ; preds = %.split.us
  %i.j = sub i64 %.014.ph28, %.us-phi             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.ph29, i64 %.us-phi
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.thread, label %.lr.ph.split, !llvm.loop !12

.thread:                                          ; preds = %.outer, %.split.us, %bb.d, %bb.b, %bb.a
  %.015 = phi i32 [ 0, %bb.b ], [ -27, %bb.a ], [ -26, %bb.d ], [ 0, %.outer ], [ -26, %.split.us ]
  ret i32 %.015
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -26, 1) i32 @pmix_fd_set_cloexec(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1, i32 noundef 0) #9 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = or i32 %i.a, 1
  %i.d = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 2, i32 noundef %i.c) #9
  %i.e = icmp eq i32 %i.d, -1
  %. = select i1 %i.e, i32 -26, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -26, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define zeroext i1 @pmix_fd_is_regular(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.a = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %1) #9
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 61440
  %i.e = icmp eq i32 %i.d, 32768
  %.0 = select i1 %.not, i1 %i.e, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define zeroext i1 @pmix_fd_is_chardev(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.a = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %1) #9
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 61440
  %i.e = icmp eq i32 %i.d, 8192
  %.0 = select i1 %.not, i1 %i.e, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i1 %.0
}

; Function Attrs: nofree nounwind uwtable
define zeroext i1 @pmix_fd_is_blkdev(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.a = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %1) #9
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 61440
  %i.e = icmp eq i32 %i.d, 24576
  %.0 = select i1 %.not, i1 %i.e, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define ptr @pmix_fd_get_peer_name(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.sockaddr, align 2           ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 16, ptr %i.a, align 4, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @str, i8 0, i64 16, i1 false)
  %i.b = call i32 @getpeername(i32 noundef %0, ptr nonnull %1, ptr noundef nonnull %i.a) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @pmix_string_copy(ptr noundef nonnull @str, ptr noundef nonnull @.str, i64 noundef 15) #9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load i16, ptr %1, align 2, !tbaa !14
  %i.d = icmp eq i16 %i.c, 2
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %i.e, ptr noundef nonnull @str, i32 noundef 16) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @str, i8 0, i64 16, i1 false)
  call void @pmix_string_copy(ptr noundef nonnull @str, ptr noundef nonnull @.str, i64 noundef 15) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ @str, %bb.b ], [ %i.f, %bb.d ], [ @str, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr, ptr noundef) local_unnamed_addr #8

declare void @pmix_string_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @pmix_close_open_file_descriptors(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias ptr @opendir(ptr noundef nonnull @.str.1) ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @dirfd(ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = tail call ptr @readdir(ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not35 = icmp eq ptr %i.e, null
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = tail call ptr @__ctype_b_loc() #10
  %i.g = icmp ne i32 %0, -1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.h = phi ptr [ %i.e, %.lr.ph ], [ %i.p, %.backedge ]
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 19 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %i.l = sext i8 %i.k to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !21
  %i.o = and i16 %i.n, 2048
  %.not27 = icmp eq i16 %i.o, 0
  br i1 %.not27, label %.backedge, label %bb.d

.backedge:                                        ; preds = %bb.f, %bb.g, %bb.e, %bb.c
  %i.p = tail call ptr @readdir(ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !15

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.j, ptr noundef null, i32 noundef 10) #9
  %i.r = trunc i64 %i.q to i32                    ; 4 uses
  %i.s = tail call ptr @__errno_location() #10
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  switch i32 %i.t, label %bb.e [
    i32 22, label %.thread
    i32 34, label %.thread
  ]

.thread:                                          ; preds = %bb.d, %bb.d
  %i.u = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = icmp sgt i32 %i.r, 2
  br i1 %i.v, label %bb.f, label %.backedge

bb.f:                                             ; preds = %bb.e
  %.not28 = icmp eq i32 %0, %i.r
  %or.cond = select i1 %i.g, i1 %.not28, i1 false
  %.not29 = icmp eq i32 %i.c, %i.r
  %or.cond31 = select i1 %or.cond, i1 true, i1 %.not29
  br i1 %or.cond31, label %.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @close(i32 noundef %i.r) #9 ; 0 uses
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %i.x = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %.thread, %bb.b, %bb.a
  %i.y = load i32, ptr @fdmax, align 4, !tbaa !8  ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call i64 @sysconf(i32 noundef 4) #9
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  store i32 %i.ab, ptr @fdmax, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = phi i32 [ %i.ab, %bb.i ], [ %i.y, %bb.h ] ; 3 uses
  %i.ad = icmp eq i32 %i.ac, -1
  %i.ae = load i32, ptr @pmix_maxfd, align 4      ; 3 uses
  %i.af = icmp slt i32 %i.ae, %i.ac
  %or.cond33 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond33, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ae, ptr @fdmax, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ag = phi i32 [ %i.ac, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 3
  br i1 %i.ah, label %.lr.ph38, label %.loopexit

.lr.ph38:                                         ; preds = %bb.l, %bb.n
  %i.ai = phi i32 [ %i.ak, %bb.n ], [ %i.ag, %bb.l ]
  %.036 = phi i32 [ %i.al, %bb.n ], [ 3, %bb.l ]  ; 3 uses
  %.not30 = icmp eq i32 %.036, %0
  br i1 %.not30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph38
  %i.aj = tail call i32 @close(i32 noundef %.036) #9 ; 0 uses
  %.pre = load i32, ptr @fdmax, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph38, %bb.m
  %i.ak = phi i32 [ %i.ai, %.lr.ph38 ], [ %.pre, %bb.m ] ; 2 uses
  %i.al = add nuw nsw i32 %.036, 1                ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.ak
  br i1 %i.am, label %.lr.ph38, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %bb.n, %bb.l, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @dirfd(ptr noundef) local_unnamed_addr #8

declare ptr @readdir(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #8

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

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
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"short", !4, i64 0}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = !{!"sockaddr", !10, i64 0, !4, i64 2}
!14 = !{!13, !10, i64 0}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!"p1 short", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!4, !4, i64 0}
!21 = !{!10, !10, i64 0}
end_hunk_0
