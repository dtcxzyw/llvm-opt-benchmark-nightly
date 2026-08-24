Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topology-linux?download=true
inline.NumInlined: 369
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@hwloc_linux_get_pid_last_cpu_location:bb.a
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = tail call i32 @hwloc_linux_get_tid_last_cpu_location(ptr readnone poison, i32 noundef %i.v, ptr noundef %i.f)
  %.not.i5 = icmp eq i32 %i.w, 0
  br i1 %.not.i5, label %hwloc_linux_foreach_proc_tid_get_last_cpu_location_cb.exit, label %bb.k

hwloc_linux_foreach_proc_tid_get_last_cpu_location_cb.exit: ; preds = %.lr.ph.i
  %i.x = tail call i32 @hwloc_bitmap_or(ptr noundef %2, ptr noundef %2, ptr noundef %i.f) #29 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.y = add i32 %.02644.i, 1
  %i.z = tail call ptr @__errno_location() #33
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %hwloc_linux_foreach_proc_tid_get_last_cpu_location_cb.exit, %bb.k
  %.127.i = phi i32 [ %i.y, %bb.k ], [ %.02644.i, %hwloc_linux_foreach_proc_tid_get_last_cpu_location_cb.exit ] ; 2 uses
  %.225.i = phi i32 [ %i.aa, %bb.k ], [ %.12445.i, %hwloc_linux_foreach_proc_tid_get_last_cpu_location_cb.exit ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !109

._crit_edge.i:                                    ; preds = %bb.l, %bb.j, %bb.h
  %.026.lcssa.i = phi i32 [ 0, %bb.h ], [ %.127.i.peel, %bb.j ], [ %.127.i, %bb.l ] ; 2 uses
  %.124.lcssa.i = phi i32 [ %.023.i, %bb.h ], [ %.225.i.peel, %bb.j ], [ %.225.i, %bb.l ] ; 2 uses
  %i.ab = call fastcc i32 @hwloc_linux_get_proc_tids(ptr noundef %i.h, ptr noundef %i.e, ptr noundef %i.c)
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !11  ; 2 uses
  %.not36.i = icmp eq i32 %i.ad, %i.o
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !105 ; 4 uses
  br i1 %.not36.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ae = zext i32 %i.o to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  %bcmp.i = tail call i32 @bcmp(ptr %.pre.i, ptr %i.n, i64 %i.af)
  %.not37.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not37.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not38.i = icmp eq i32 %.026.lcssa.i, 0        ; 2 uses
  %.not39.i = icmp eq i32 %.026.lcssa.i, %i.o
  %or.cond.i = or i1 %.not38.i, %.not39.i
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  tail call void @free(ptr noundef %i.n) #29
  %i.ag = add nuw nsw i32 %.022.i, 1              ; 2 uses
  %exitcond67.i = icmp eq i32 %i.ag, 11
  br i1 %exitcond67.i, label %.loopexit.sink.split.i, label %bb.h

bb.q:                                             ; preds = %bb.o
  tail call void @free(ptr noundef %.pre.i) #29
  br i1 %.not38.i, label %.loopexit.i, label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.p, %bb.q
  %.124.lcssa.sink.i = phi i32 [ %.124.lcssa.i, %bb.q ], [ 11, %bb.p ]
  %.ph.i = phi ptr [ %i.n, %bb.q ], [ %.pre.i, %bb.p ]
  %i.ah = tail call ptr @__errno_location() #33
  store i32 %.124.lcssa.sink.i, ptr %i.ah, align 4, !tbaa !11
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge.i, %.loopexit.sink.split.i, %bb.q
  %i.ai = phi ptr [ %i.n, %bb.q ], [ %.ph.i, %.loopexit.sink.split.i ], [ %i.n, %._crit_edge.i ]
  %.0.i = phi i32 [ 0, %bb.q ], [ -1, %.loopexit.sink.split.i ], [ -1, %._crit_edge.i ]
  tail call void @free(ptr noundef %i.ai) #29
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i, %bb.g
  %.1.i = phi i32 [ -1, %bb.g ], [ %.0.i, %.loopexit.i ]
  %i.aj = tail call i32 @closedir(ptr noundef nonnull %i.h) ; 0 uses
  br label %hwloc_linux_foreach_proc_tid.exit

hwloc_linux_foreach_proc_tid.exit:                ; preds = %bb.e, %bb.f, %bb.r
  %.2.i = phi i32 [ %.1.i, %bb.r ], [ -1, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  tail call void @hwloc_bitmap_free(ptr noundef %i.f) #29
  ret i32 %.2.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_complete_nodeset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @hwloc_linux_membind_mask_from_nodeset(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @hwloc_bitmap_isfull(ptr noundef %0) #32
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @hwloc_bitmap_alloc() #29 ; 3 uses
  %i.c = tail call i32 @hwloc_bitmap_only(ptr noundef %i.b, i32 noundef 0) #29 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.024 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]  ; 3 uses
  %i.d = tail call i32 @hwloc_bitmap_last(ptr noundef %.024) #32 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  %i.f = and i32 %i.d, -64
  %i.g = add i32 %i.f, 64
  %i.h = select i1 %i.e, i32 64, i32 %i.g         ; 3 uses
  %i.i = lshr exact i32 %i.h, 6
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #35 ; 3 uses
  %.not26 = icmp eq ptr %i.k, null
  br i1 %.not26, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not2 = icmp eq i32 %i.h, 0
  br i1 %.not2, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  tail call void @hwloc_bitmap_free(ptr noundef %.0) #29
  %i.l = tail call ptr @__errno_location() #33
  store i32 12, ptr %i.l, align 4, !tbaa !11
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = tail call i64 @hwloc_bitmap_to_ith_ulong(ptr noundef %.024, i32 noundef %i.m) #32
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store i64 %i.n, ptr %i.o, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.not27 = icmp eq ptr %.0, null
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  tail call void @hwloc_bitmap_free(ptr noundef nonnull %.0) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  store i32 %i.h, ptr %1, align 4, !tbaa !11
  store ptr %i.k, ptr %2, align 8, !tbaa !88
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.023 = phi i32 [ 0, %bb.f ], [ -1, %bb.d ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isfull(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @hwloc_bitmap_to_ith_ulong(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hwloc_linux_find_kernel_max_numnodes() unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = load i32, ptr @hwloc_linux_find_kernel_max_numnodes._max_numnodes, align 4, !tbaa !11 ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 64, ptr @hwloc_linux_find_kernel_max_numnodes.max_numnodes, align 4, !tbaa !11
  %i.c = tail call noalias ptr @hwloc_bitmap_alloc_full() #29 ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %hwloc__alloc_read_path_as_cpulist.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @hwloc__read_path_as_cpulist(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.c, i32 noundef -1)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %hwloc__alloc_read_path_as_cpulist.exit.thread.sink.split, label %hwloc__alloc_read_path_as_cpulist.exit

hwloc__alloc_read_path_as_cpulist.exit:           ; preds = %bb.c
  %i.f = tail call i32 @hwloc_bitmap_last(ptr noundef nonnull %i.c) #32 ; 2 uses
  %i.g = load i32, ptr @hwloc_linux_find_kernel_max_numnodes.max_numnodes, align 4, !tbaa !11
  %.not16 = icmp sgt i32 %i.g, %i.f
  br i1 %.not16, label %hwloc__alloc_read_path_as_cpulist.exit.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %hwloc__alloc_read_path_as_cpulist.exit
  %i.h = add nsw i32 %i.f, 1
  store i32 %i.h, ptr @hwloc_linux_find_kernel_max_numnodes.max_numnodes, align 4, !tbaa !11
  br label %hwloc__alloc_read_path_as_cpulist.exit.thread.sink.split

hwloc__alloc_read_path_as_cpulist.exit.thread.sink.split: ; preds = %hwloc__alloc_read_path_as_cpulist.exit, %bb.d, %bb.c
  tail call void @hwloc_bitmap_free(ptr noundef nonnull %i.c) #29
  br label %hwloc__alloc_read_path_as_cpulist.exit.thread

hwloc__alloc_read_path_as_cpulist.exit.thread:    ; preds = %hwloc__alloc_read_path_as_cpulist.exit.thread.sink.split, %bb.b
  %i.i = load i32, ptr @hwloc_linux_find_kernel_max_numnodes.max_numnodes, align 4, !tbaa !11 ; 3 uses
  %i.j = sdiv i32 %i.i, 64
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #30 ; 2 uses
  %.not175 = icmp eq ptr %i.m, null
  br i1 %.not175, label %.thread.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %hwloc__alloc_read_path_as_cpulist.exit.thread, %bb.f
  %i.n = phi ptr [ %i.y, %bb.f ], [ %i.m, %hwloc__alloc_read_path_as_cpulist.exit.thread ] ; 2 uses
  %0 = phi i32 [ %i.u, %bb.f ], [ %i.i, %hwloc__alloc_read_path_as_cpulist.exit.thread ]
  %i.o = sext i32 %0 to i64
  %i.p = call i64 (i64, ...) @syscall(i64 noundef 239, ptr noundef nonnull %i.a, ptr noundef nonnull %i.n, i64 noundef %i.o, ptr noundef null, i32 noundef 0) #29
  call void @free(ptr noundef nonnull %i.n) #29
  %i.q = and i64 %i.p, 4294967295
  %.not18 = icmp eq i64 %i.q, 0
  br i1 %.not18, label %1, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.r = tail call ptr @__errno_location() #33
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %.not19 = icmp eq i32 %i.s, 22
  br i1 %.not19, label %bb.f, label %1

1:                                                ; preds = %bb.e, %.lr.ph
  %2 = load i32, ptr @hwloc_linux_find_kernel_max_numnodes.max_numnodes, align 4, !tbaa !11
  br label %.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr @hwloc_linux_find_kernel_max_numnodes.max_numnodes, align 4, !tbaa !11 ; 2 uses
  %i.u = shl nsw i32 %i.t, 1                      ; 3 uses
  store i32 %i.u, ptr @hwloc_linux_find_kernel_max_numnodes.max_numnodes, align 4, !tbaa !11
  %i.v = sdiv i32 %i.t, 32
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = call noalias ptr @malloc(i64 noundef %i.x) #30 ; 2 uses
  %.not17 = icmp eq ptr %i.y, null
  br i1 %.not17, label %.thread.sink.split, label %.lr.ph

.thread.sink.split:                               ; preds = %bb.f, %hwloc__alloc_read_path_as_cpulist.exit.thread, %1
  %.lcssa.sink = phi i32 [ %2, %1 ], [ %i.i, %hwloc__alloc_read_path_as_cpulist.exit.thread ], [ %i.u, %bb.f ] ; 2 uses
  store i32 %.lcssa.sink, ptr @hwloc_linux_find_kernel_max_numnodes._max_numnodes, align 4, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %.2 = phi i32 [ %i.b, %bb.a ], [ %.lcssa.sink, %.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_topology_nodeset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal fastcc void @hwloc_linux__get_allowed_resources(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  %i.c = alloca [128 x i8], align 16              ; 9 uses
  %i.d = alloca [25 x i8], align 16               ; 7 uses
  %i.e = alloca [25 x i8], align 16               ; 6 uses
  %i.f = alloca [256 x i8], align 16              ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.mntent, align 8             ; 8 uses
  %i.h = alloca [1024 x i8], align 16             ; 7 uses
  %i.i = alloca [256 x i8], align 16              ; 6 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.18, ptr noundef nonnull %1) #29
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %hwloc_find_linux_cgroup_mntpnt.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.o = call ptr @setmntent(ptr noundef %i.n, ptr noundef nonnull @.str.19) #29
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !103
  call void @free(ptr noundef %i.p) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.q = tail call ptr @setmntent(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.038.i = phi ptr [ %i.o, %bb.c ], [ %i.q, %bb.d ] ; 5 uses
  %.not43.i = icmp eq ptr %.038.i, null
  br i1 %.not43.i, label %hwloc_find_linux_cgroup_mntpnt.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call i64 @sysconf(i32 noundef 30) #29
  %i.s = shl nsw i64 %i.r, 2                      ; 2 uses
  %i.t = call noalias ptr @malloc(i64 noundef %i.s) #30 ; 4 uses
  %.not44.i = icmp eq ptr %i.t, null
  br i1 %.not44.i, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  %i.v = call ptr @getmntent_r(ptr noundef nonnull %.038.i, ptr noundef nonnull %4, ptr noundef nonnull %i.t, i32 noundef %i.u) #29
  %.not4568.i = icmp eq ptr %i.v, null
  br i1 %.not4568.i, label %hwloc_find_linux_cgroup_mntpnt.exit, label %.lr.ph69.i

.lr.ph69.i:                                       ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.z = icmp sgt i32 %2, -1
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = call i32 @endmntent(ptr noundef nonnull %.038.i) #29 ; 0 uses
  br label %hwloc_find_linux_cgroup_mntpnt.exit.thread

bb.h:                                             ; preds = %.backedge.i, %.lr.ph69.i
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !111 ; 3 uses
  %i.ac = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(8) @.str.21) #32
  %.not46.i = icmp eq i32 %i.ac, 0
  br i1 %.not46.i, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #29
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 256, ptr noundef nonnull @.str.23, ptr noundef %i.ad) #29 ; 0 uses
  br i1 %i.z, label %.preheader.i.i.i.i.i, label %hwloc_open.exit.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.i, %.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.ah, %.preheader.i.i.i.i.i ], [ %i.i, %bb.i ] ; 3 uses
  %i.af = load i8, ptr %.0.i.i.i.i.i, align 1, !tbaa !12
  %i.ag = icmp eq i8 %i.af, 47
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 1
  br i1 %i.ag, label %.preheader.i.i.i.i.i, label %hwloc_open.exit.i.i, !llvm.loop !13

hwloc_open.exit.i.i:                              ; preds = %.preheader.i.i.i.i.i, %bb.i
  %.1.i8.i.i.i.i = phi ptr [ %i.i, %bb.i ], [ %.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %i.ai = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %2, ptr noundef nonnull %.1.i8.i.i.i.i, i32 noundef 0) #29 ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %hwloc_open.exit.i.i
  %i.ak = call i64 @read(i32 noundef %i.ai, ptr noundef nonnull %i.h, i64 noundef 1023) #29 ; 3 uses
  %i.al = call i32 @close(i32 noundef %i.ai) #29  ; 0 uses
  %i.am = icmp slt i64 %i.ak, 1
  br i1 %i.am, label %.thread.i, label %hwloc_read_path_by_length.exit.i

hwloc_read_path_by_length.exit.i:                 ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !12
  %i.ao = trunc i64 %i.ak to i32
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %hwloc_read_path_by_length.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #29
  store ptr %i.h, ptr %i.j, align 8, !tbaa !103
  %i.aq = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef 10) #32 ; 2 uses
  %.not47.i = icmp eq ptr %i.aq, null
  br i1 %.not47.i, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.aq, align 1, !tbaa !12
  br label %.preheader

.preheader:                                       ; preds = %bb.l, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.n
  %i.ar = call ptr @strsep(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.25) #29 ; 2 uses
  %.not48.i = icmp eq ptr %i.ar, null
  br i1 %.not48.i, label %.critedge.thread.i, label %bb.n

.critedge.thread.i:                               ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  br label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.as = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(7) @.str.26) #32
  %.not49.i = icmp eq i32 %i.as, 0
  br i1 %.not49.i, label %bb.o, label %bb.m, !llvm.loop !114

.thread.i:                                        ; preds = %.critedge.thread.i, %hwloc_read_path_by_length.exit.i, %bb.j, %hwloc_open.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  br label %.backedge.i

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.au = call noalias ptr @strdup(ptr noundef %i.at) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  br label %hwloc_find_linux_cgroup_mntpnt.exit

bb.p:                                             ; preds = %bb.h
  %i.av = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(7) @.str.26) #32
  %.not51.i = icmp eq i32 %i.av, 0
  br i1 %.not51.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.ax = call noalias ptr @strdup(ptr noundef %i.aw) #29
  br label %hwloc_find_linux_cgroup_mntpnt.exit

bb.r:                                             ; preds = %bb.p
  %i.ay = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(7) @.str.30) #32
  %.not52.i = icmp eq i32 %i.ay, 0
  br i1 %.not52.i, label %bb.s, label %.backedge.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #29
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !115
  store ptr %i.az, ptr %i.k, align 8, !tbaa !103
  %i.ba = call ptr @strsep(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.31) #29 ; 2 uses
  %.not5364.i = icmp eq ptr %i.ba, null
  br i1 %.not5364.i, label %._crit_edge.thread.i, label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.s, %.lr.ph.i._crit_edge
  %.ph = phi ptr [ %i.be, %.lr.ph.i._crit_edge ], [ %i.ba, %bb.s ] ; 2 uses
  %.066.i.ph = phi i32 [ %spec.select.i, %.lr.ph.i._crit_edge ], [ 0, %bb.s ] ; 2 uses
  %.03365.i.ph = phi i32 [ %.03365.i.lcssa, %.lr.ph.i._crit_edge ], [ 0, %bb.s ]
  %i.bb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.ph, ptr noundef nonnull dereferenceable(7) @.str.26) #32
  %.not56.i53 = icmp eq i32 %i.bb, 0
  br i1 %.not56.i53, label %.thread, label %.lr.ph.i._crit_edge

.lr.ph.i:                                         ; preds = %.thread
  %i.bc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(7) @.str.26) #32
  %.not56.i = icmp eq i32 %i.bc, 0
  br i1 %.not56.i, label %.thread, label %.lr.ph.i._crit_edge, !llvm.loop !116

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.outer
  %.lcssa50 = phi ptr [ %.ph, %.lr.ph.i.outer ], [ %i.bf, %.lr.ph.i ]
  %.03365.i.lcssa = phi i32 [ %.03365.i.ph, %.lr.ph.i.outer ], [ 1, %.lr.ph.i ] ; 2 uses
end_hunk_0
