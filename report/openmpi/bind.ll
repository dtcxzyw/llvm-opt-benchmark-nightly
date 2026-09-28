Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bind?download=true
inline.NumInlined: 41
inline.NumDeleted: 13
begin_hunk_0_@hwloc_get_area_membind:bb.a
  %.0.i25 = phi ptr [ null, %bb.m ], [ %.0.i.i, %.backedge ] ; 3 uses
  %.not.i.i = icmp eq ptr %.0.i25, null
  br i1 %.not.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.m = tail call ptr @hwloc_get_obj_by_depth(ptr noundef nonnull readonly %0, i32 noundef range(i32 0, -1) %i.l, i32 noundef 0) #14
  br label %hwloc_get_next_obj_by_depth.exit.i

bb.p:                                             ; preds = %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i25, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56
  %.not7.i.i = icmp eq i32 %i.o, %i.l
  br i1 %.not7.i.i, label %bb.q, label %hwloc_cpuset_from_nodeset.exit

bb.q:                                             ; preds = %bb.p
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i25, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57
  br label %hwloc_get_next_obj_by_depth.exit.i

hwloc_get_next_obj_by_depth.exit.i:               ; preds = %bb.q, %bb.o
  %.0.i.i = phi ptr [ %i.m, %bb.o ], [ %i.q, %bb.q ] ; 4 uses
  %.not14.i = icmp eq ptr %.0.i.i, null
  br i1 %.not14.i, label %hwloc_cpuset_from_nodeset.exit, label %bb.r

bb.r:                                             ; preds = %hwloc_get_next_obj_by_depth.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !60
  %i.t = tail call i32 @hwloc_bitmap_isset(ptr noundef readonly %i.h, i32 noundef %i.s) #14
  %.not15.i = icmp eq i32 %i.t, 0
  br i1 %.not15.i, label %.backedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.w = tail call i32 @hwloc_bitmap_or(ptr noundef %3, ptr noundef %3, ptr noundef %i.v) #15
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %hwloc_cpuset_from_nodeset.exit, label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.r
  br label %bb.n, !llvm.loop !0

hwloc_cpuset_from_nodeset.exit.sink.split:        ; preds = %bb.j, %bb.i
  %.sink = phi i32 [ 22, %bb.i ], [ 38, %bb.j ]
  %i.y = tail call ptr @__errno_location() #13
  store i32 %.sink, ptr %i.y, align 4, !tbaa !12
  br label %hwloc_cpuset_from_nodeset.exit

hwloc_cpuset_from_nodeset.exit:                   ; preds = %bb.s, %hwloc_get_next_obj_by_depth.exit.i, %bb.p, %hwloc_cpuset_from_nodeset.exit.sink.split, %hwloc_get_area_membind_by_nodeset.exit23
  %.0.i2028 = phi i32 [ -1, %hwloc_cpuset_from_nodeset.exit.sink.split ], [ %i.k, %hwloc_get_area_membind_by_nodeset.exit23 ], [ 0, %bb.p ], [ 0, %hwloc_get_next_obj_by_depth.exit.i ], [ 0, %bb.s ]
  tail call void @hwloc_bitmap_free(ptr noundef %i.h) #15
  br label %hwloc_get_area_membind_by_nodeset.exit

hwloc_get_area_membind_by_nodeset.exit:           ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %hwloc_cpuset_from_nodeset.exit
  %.0 = phi i32 [ %.0.i2028, %hwloc_cpuset_from_nodeset.exit ], [ -1, %bb.c ], [ %i.f, %bb.g ], [ -1, %bb.h ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_get_area_memlocation(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %4, 32
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i32 %4, 64
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #13
  store i32 22, ptr %i.b, align 4, !tbaa !12
  br label %hwloc_get_area_memlocation_by_nodeset.exit

bb.d:                                             ; preds = %bb.b
  %.not11.i = icmp eq i64 %2, 0
  br i1 %.not11.i, label %hwloc_get_area_memlocation_by_nodeset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not12.i = icmp eq ptr %i.d, null
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #15, !inline_history !76
  br label %hwloc_get_area_memlocation_by_nodeset.exit

bb.g:                                             ; preds = %bb.e
  %i.f = tail call ptr @__errno_location() #13
  store i32 38, ptr %i.f, align 4, !tbaa !12
  br label %hwloc_get_area_memlocation_by_nodeset.exit

bb.h:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @hwloc_bitmap_alloc() #15 ; 3 uses
  %.not.i17 = icmp ult i32 %4, 64
  br i1 %.not.i17, label %bb.i, label %hwloc_cpuset_from_nodeset.exit.sink.split

bb.i:                                             ; preds = %bb.h
  %.not11.i19 = icmp eq i64 %2, 0
  br i1 %.not11.i19, label %hwloc_get_area_memlocation_by_nodeset.exit21.thread27, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 2 uses
  %.not12.i20 = icmp eq ptr %i.i, null
  br i1 %.not12.i20, label %hwloc_cpuset_from_nodeset.exit.sink.split, label %hwloc_get_area_memlocation_by_nodeset.exit21

hwloc_get_area_memlocation_by_nodeset.exit21:     ; preds = %bb.j
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %i.g, i32 noundef %4) #15, !inline_history !76 ; 2 uses
  %.not16 = icmp eq i32 %i.j, 0
  br i1 %.not16, label %hwloc_get_area_memlocation_by_nodeset.exit21.thread27, label %hwloc_cpuset_from_nodeset.exit

hwloc_get_area_memlocation_by_nodeset.exit21.thread27: ; preds = %bb.i, %hwloc_get_area_memlocation_by_nodeset.exit21
  %i.k = tail call i32 @hwloc_get_type_depth(ptr noundef %0, i32 noundef 13) #15 ; 3 uses
  %.not.i22 = icmp eq i32 %i.k, -1
  br i1 %.not.i22, label %bb.k, label %bb.l

bb.k:                                             ; preds = %hwloc_get_area_memlocation_by_nodeset.exit21.thread27
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1102, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_cpuset_from_nodeset) #16
  unreachable

bb.l:                                             ; preds = %hwloc_get_area_memlocation_by_nodeset.exit21.thread27
  tail call void @hwloc_bitmap_zero(ptr noundef %3) #15
  br label %bb.m

bb.m:                                             ; preds = %.backedge, %bb.l
  %.0.i23 = phi ptr [ null, %bb.l ], [ %.0.i.i, %.backedge ] ; 3 uses
  %.not.i.i = icmp eq ptr %.0.i23, null
  br i1 %.not.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.l = tail call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %0, i32 noundef range(i32 0, -1) %i.k, i32 noundef 0) #14
  br label %hwloc_get_next_obj_by_depth.exit.i

bb.o:                                             ; preds = %bb.m
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i23, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !56
  %.not7.i.i = icmp eq i32 %i.n, %i.k
  br i1 %.not7.i.i, label %bb.p, label %hwloc_cpuset_from_nodeset.exit

bb.p:                                             ; preds = %bb.o
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i23, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  br label %hwloc_get_next_obj_by_depth.exit.i

hwloc_get_next_obj_by_depth.exit.i:               ; preds = %bb.p, %bb.n
  %.0.i.i = phi ptr [ %i.l, %bb.n ], [ %i.p, %bb.p ] ; 4 uses
  %.not14.i = icmp eq ptr %.0.i.i, null
  br i1 %.not14.i, label %hwloc_cpuset_from_nodeset.exit, label %bb.q

bb.q:                                             ; preds = %hwloc_get_next_obj_by_depth.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !60
  %i.s = tail call i32 @hwloc_bitmap_isset(ptr noundef readonly %i.g, i32 noundef %i.r) #14
  %.not15.i = icmp eq i32 %i.s, 0
  br i1 %.not15.i, label %.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 184
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.v = tail call i32 @hwloc_bitmap_or(ptr noundef %3, ptr noundef %3, ptr noundef %i.u) #15
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %hwloc_cpuset_from_nodeset.exit, label %.backedge

.backedge:                                        ; preds = %bb.r, %bb.q
  br label %bb.m, !llvm.loop !0

hwloc_cpuset_from_nodeset.exit.sink.split:        ; preds = %bb.j, %bb.h
  %.sink = phi i32 [ 22, %bb.h ], [ 38, %bb.j ]
  %i.x = tail call ptr @__errno_location() #13
  store i32 %.sink, ptr %i.x, align 4, !tbaa !12
  br label %hwloc_cpuset_from_nodeset.exit

hwloc_cpuset_from_nodeset.exit:                   ; preds = %bb.r, %hwloc_get_next_obj_by_depth.exit.i, %bb.o, %hwloc_cpuset_from_nodeset.exit.sink.split, %hwloc_get_area_memlocation_by_nodeset.exit21
  %.0.i1826 = phi i32 [ -1, %hwloc_cpuset_from_nodeset.exit.sink.split ], [ %i.j, %hwloc_get_area_memlocation_by_nodeset.exit21 ], [ 0, %bb.o ], [ 0, %hwloc_get_next_obj_by_depth.exit.i ], [ 0, %bb.r ]
  tail call void @hwloc_bitmap_free(ptr noundef %i.g) #15
  br label %hwloc_get_area_memlocation_by_nodeset.exit

hwloc_get_area_memlocation_by_nodeset.exit:       ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %hwloc_cpuset_from_nodeset.exit
  %.0 = phi i32 [ %.0.i1826, %hwloc_cpuset_from_nodeset.exit ], [ -1, %bb.c ], [ %i.e, %bb.f ], [ -1, %bb.g ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @hwloc_alloc_heap(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !68
  %i.b = tail call i64 @sysconf(i32 noundef 30) #15
  %i.c = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef %i.b, i64 noundef %1) #15 ; 2 uses
  %i.d = tail call ptr @__errno_location() #13
  store i32 %i.c, ptr %i.d, align 4, !tbaa !12
  %.not = icmp eq i32 %i.c, 0
  %.pre = load ptr, ptr %i.a, align 8
  %i.e = select i1 %.not, ptr %.pre, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden ptr @hwloc_alloc_mmap(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @mmap(ptr noundef null, i64 noundef %1, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #15 ; 2 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  %i.c = select i1 %i.b, ptr null, ptr %i.a
  ret ptr %i.c
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden noundef i32 @hwloc_free_heap(ptr nofree noundef readnone captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  tail call void @free(ptr noundef %1) #15
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden i32 @hwloc_free_mmap(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @munmap(ptr noundef nonnull %1, i64 noundef %2) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @hwloc_alloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr %i.c(ptr noundef nonnull %0, i64 noundef %1) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !68
  %i.e = tail call i64 @sysconf(i32 noundef 30) #15
  %i.f = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef %i.e, i64 noundef %1) #15 ; 2 uses
  %i.g = tail call ptr @__errno_location() #13
  store i32 %i.f, ptr %i.g, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.f, 0
  %.pre.i = load ptr, ptr %i.a, align 8
  %i.h = select i1 %.not.i, ptr %.pre.i, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noalias ptr @hwloc_alloc_membind(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = and i32 %4, 32
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @hwloc_alloc_membind_by_nodeset(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @hwloc_bitmap_alloc() #15 ; 3 uses
  %i.e = tail call fastcc i32 @hwloc_fix_membind_cpuset(ptr noundef %0, ptr noundef %i.d, ptr noundef %2)
  %.not18 = icmp eq i32 %i.e, 0
  br i1 %.not18, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %4, 4
  %.not19 = icmp eq i32 %i.f, 0
  br i1 %.not19, label %bb.e, label %hwloc_alloc.exit

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr %i.h(ptr noundef nonnull %0, i64 noundef %1) #15, !inline_history !70
  br label %hwloc_alloc.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !68
  %i.j = tail call i64 @sysconf(i32 noundef 30) #15
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef %i.j, i64 noundef %1) #15 ; 2 uses
  %i.l = tail call ptr @__errno_location() #13
  store i32 %i.k, ptr %i.l, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.k, 0
  %.pre.i.i = load ptr, ptr %i.a, align 8
  %i.m = select i1 %.not.i.i, ptr %.pre.i.i, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %hwloc_alloc.exit

bb.h:                                             ; preds = %bb.c
  %i.n = tail call fastcc ptr @hwloc_alloc_membind_by_nodeset(ptr noundef %0, i64 noundef %1, ptr noundef %i.d, i32 noundef %3, i32 noundef %4)
  br label %hwloc_alloc.exit

hwloc_alloc.exit:                                 ; preds = %bb.g, %bb.f, %bb.d, %bb.h
  %.0 = phi ptr [ %i.n, %bb.h ], [ null, %bb.d ], [ %i.i, %bb.f ], [ %i.m, %bb.g ]
  tail call void @hwloc_bitmap_free(ptr noundef %i.d) #15
  br label %bb.i

bb.i:                                             ; preds = %hwloc_alloc.exit, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %.0, %hwloc_alloc.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @hwloc_alloc_membind_by_nodeset(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.not = icmp ugt i32 %4, 63
  %or.cond7.i = icmp ugt i32 %3, 4
  %or.cond54 = or i1 %or.cond7.i, %.not
  br i1 %or.cond54, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #13
  store i32 22, ptr %i.c, align 4, !tbaa !12
  br label %hwloc_alloc.exit49

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @hwloc_topology_get_topology_nodeset(ptr noundef readonly %0) #14
  %i.e = tail call ptr @hwloc_topology_get_complete_nodeset(ptr noundef readonly %0) #14 ; 2 uses
  %i.f = tail call i32 @hwloc_bitmap_iszero(ptr noundef readonly %2) #14
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %hwloc_fix_membind.exit.thread.sink.split

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @hwloc_bitmap_isincluded(ptr noundef readonly %2, ptr noundef %i.e) #14
  %.not10.i = icmp eq i32 %i.g, 0
  br i1 %.not10.i, label %hwloc_fix_membind.exit.thread.sink.split, label %hwloc_fix_membind.exit

hwloc_fix_membind.exit:                           ; preds = %bb.d
  %i.h = tail call i32 @hwloc_bitmap_isincluded(ptr noundef %i.d, ptr noundef readonly %2) #14
  %.not11.i = icmp eq i32 %i.h, 0
  %..i42 = select i1 %.not11.i, ptr %2, ptr %i.e  ; 3 uses
  %.not34 = icmp eq ptr %..i42, null
  br i1 %.not34, label %hwloc_fix_membind.exit.thread, label %bb.e

bb.e:                                             ; preds = %hwloc_fix_membind.exit
  %i.i = and i32 %4, 8
  %.not35 = icmp eq i32 %i.i, 0
  br i1 %.not35, label %bb.f, label %hwloc_fix_membind.exit.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71   ; 2 uses
  %.not36 = icmp eq ptr %i.k, null
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr %i.k(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %..i42, i32 noundef %3, i32 noundef %4) #15
  br label %hwloc_alloc.exit49

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  %.not37 = icmp eq ptr %i.n, null
  br i1 %.not37, label %hwloc_fix_membind.exit.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69   ; 2 uses
  %.not.i43 = icmp eq ptr %i.p, null
  br i1 %.not.i43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call ptr %i.p(ptr noundef nonnull %0, i64 noundef %1) #15, !inline_history !70
  br label %hwloc_alloc.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !68
  %i.r = tail call i64 @sysconf(i32 noundef 30) #15
  %i.s = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef %1) #15 ; 2 uses
  %i.t = tail call ptr @__errno_location() #13
  store i32 %i.s, ptr %i.t, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.s, 0
  %.pre.i.i = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %.not.i.i, label %hwloc_alloc.exit, label %hwloc_alloc.exit49

hwloc_alloc.exit:                                 ; preds = %bb.k, %bb.j
  %.0.i44 = phi ptr [ %i.q, %bb.j ], [ %.pre.i.i, %bb.k ] ; 4 uses
  %.not38 = icmp eq ptr %.0.i44, null
  br i1 %.not38, label %hwloc_alloc.exit49, label %bb.l

bb.l:                                             ; preds = %hwloc_alloc.exit
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !65
  %5 = tail call i32 %i.u(ptr noundef nonnull %0, ptr noundef nonnull %.0.i44, i64 noundef %1, ptr noundef nonnull %..i42, i32 noundef %3, i32 noundef %4) #15
  %.not39 = icmp eq i32 %5, 0
  %i.v = and i32 %4, 4
  %.not40 = icmp eq i32 %i.v, 0
  %or.cond = or i1 %.not40, %.not39
  br i1 %or.cond, label %hwloc_alloc.exit49, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = tail call ptr @__errno_location() #13    ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12
  tail call void @free(ptr noundef nonnull %.0.i44) #15
  store i32 %i.x, ptr %i.w, align 4, !tbaa !12
  br label %hwloc_alloc.exit49

hwloc_fix_membind.exit.thread.sink.split:         ; preds = %bb.h, %bb.e, %bb.d, %bb.c
  %.sink = phi i32 [ 22, %bb.c ], [ 22, %bb.d ], [ 22, %bb.e ], [ 38, %bb.h ]
  %i.y = tail call ptr @__errno_location() #13
  store i32 %.sink, ptr %i.y, align 4, !tbaa !12
  br label %hwloc_fix_membind.exit.thread

hwloc_fix_membind.exit.thread:                    ; preds = %hwloc_fix_membind.exit.thread.sink.split, %hwloc_fix_membind.exit
  %i.z = and i32 %4, 4
  %.not41 = icmp eq i32 %i.z, 0
  br i1 %.not41, label %bb.n, label %hwloc_alloc.exit49

bb.n:                                             ; preds = %hwloc_fix_membind.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ab, null
  br i1 %.not.i45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call ptr %i.ab(ptr noundef nonnull %0, i64 noundef %1) #15, !inline_history !70
  br label %hwloc_alloc.exit49

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !68
  %i.ad = tail call i64 @sysconf(i32 noundef 30) #15
  %i.ae = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef %i.ad, i64 noundef %1) #15 ; 2 uses
  %i.af = tail call ptr @__errno_location() #13
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !12
  %.not.i.i47 = icmp eq i32 %i.ae, 0
  %.pre.i.i48 = load ptr, ptr %i.a, align 8
  %i.ag = select i1 %.not.i.i47, ptr %.pre.i.i48, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %hwloc_alloc.exit49

hwloc_alloc.exit49:                               ; preds = %bb.k, %bb.p, %bb.o, %hwloc_fix_membind.exit.thread, %bb.l, %hwloc_alloc.exit, %bb.m, %bb.g, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %.0.i44, %bb.l ], [ %i.ag, %bb.p ], [ %i.l, %bb.g ], [ null, %bb.m ], [ null, %hwloc_alloc.exit ], [ null, %hwloc_fix_membind.exit.thread ], [ %i.ac, %bb.o ], [ null, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_free(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %i.b(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %1) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @hwloc_set_native_binding_hooks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @hwloc_set_linuxfs_hooks(ptr noundef %0, ptr noundef %1) #15
  ret void
}

declare void @hwloc_set_linuxfs_hooks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @hwloc_set_binding_hooks(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store ptr @dontset_thisproc_cpubind, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr @dontget_thisproc_cpubind, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr @dontset_thisthread_cpubind, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr @dontget_thisthread_cpubind, ptr %i.f, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr @dontset_proc_cpubind, ptr %i.g, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr @dontget_proc_cpubind, ptr %i.h, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr @dontset_thread_cpubind, ptr %i.i, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr @dontget_thread_cpubind, ptr %i.j, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr @dontget_thisproc_cpubind, ptr %i.k, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr @dontget_thisthread_cpubind, ptr %i.l, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr @dontget_proc_cpubind, ptr %i.m, align 8, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr @dontset_thisproc_membind, ptr %i.n, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr @dontget_thisproc_membind, ptr %i.o, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @dontset_thisthread_membind, ptr %i.p, align 8, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @dontget_thisthread_membind, ptr %i.q, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr @dontset_proc_membind, ptr %i.r, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr @dontget_proc_membind, ptr %i.s, align 8, !tbaa !95
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr @dontset_area_membind, ptr %i.t, align 8, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr @dontget_area_membind, ptr %i.u, align 8, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr @dontget_area_memlocation, ptr %i.v, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr @dontalloc_membind, ptr %i.w, align 8, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr @dontfree_membind, ptr %i.x, align 8, !tbaa !100
  br label %bb.as

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @hwloc_set_linuxfs_hooks(ptr noundef nonnull %i.c, ptr noundef nonnull %i.y) #15
  %.pre = load i32, ptr %i.a, align 8, !tbaa !78
  %i.z = icmp eq i32 %.pre, 0
  br i1 %i.z, label %bb.as, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %.not49 = icmp eq ptr %i.ab, null
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101
  store i8 1, ptr %i.ad, align 1, !tbaa !103
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39
  %.not50 = icmp eq ptr %i.af, null
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !101
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 1, ptr %i.ai, align 1, !tbaa !104
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41
  %.not51 = icmp eq ptr %i.ak, null
  br i1 %.not51, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !101
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i8 1, ptr %i.an, align 1, !tbaa !105
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42
  %.not52 = icmp eq ptr %i.ap, null
  br i1 %.not52, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  store i8 1, ptr %i.as, align 1, !tbaa !106
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  %.not53 = icmp eq ptr %i.au, null
  br i1 %.not53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !101
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i8 1, ptr %i.ax, align 1, !tbaa !107
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 480
end_hunk_0
begin_hunk_1_@hwloc_set_binding_hooks:bb.a
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !71
  %.not69 = icmp eq ptr %i.dv, null
  br i1 %.not69, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !114
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i8 1, ptr %i.dy, align 1, !tbaa !125
  br label %bb.as

bb.as:                                            ; preds = %.thread, %bb.aq, %bb.ar, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_topology_cpuset(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_complete_cpuset(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_iszero(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isincluded(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_topology_nodeset(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_complete_nodeset(ptr noundef) local_unnamed_addr #8

declare i32 @hwloc_bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hwloc_get_type_depth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare void @hwloc_bitmap_zero(ptr noundef) local_unnamed_addr #3

declare i32 @hwloc_bitmap_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_intersects(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_get_obj_by_depth(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isset(ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @hwloc_bitmap_or(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dontset_thisproc_cpubind(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #10 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dontget_thisproc_cpubind(ptr noundef %0, ptr noundef %1, i32 %2) #0 {
bb.a:
  %i.a = tail call ptr @hwloc_topology_get_complete_cpuset(ptr noundef %0) #14
  %i.b = tail call i32 @hwloc_bitmap_copy(ptr noundef %1, ptr noundef %i.a) #15 ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dontset_thisthread_cpubind(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #10 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dontget_thisthread_cpubind(ptr noundef %0, ptr noundef %1, i32 %2) #0 {
bb.a:
  %i.a = tail call ptr @hwloc_topology_get_complete_cpuset(ptr noundef %0) #14
  %i.b = tail call i32 @hwloc_bitmap_copy(ptr noundef %1, ptr noundef %i.a) #15 ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dontset_proc_cpubind(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, i32 %3) #10 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dontget_proc_cpubind(ptr noundef %0, i32 %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @hwloc_topology_get_complete_cpuset(ptr noundef %0) #14
  %i.b = tail call i32 @hwloc_bitmap_copy(ptr noundef %2, ptr noundef %i.a) #15 ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dontset_thread_cpubind(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2, i32 %3) #10 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dontget_thread_cpubind(ptr noundef %0, i64 %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @hwloc_topology_get_complete_cpuset(ptr noundef %0) #14
  %i.b = tail call i32 @hwloc_bitmap_copy(ptr noundef %2, ptr noundef %i.a) #15 ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dontset_thisproc_membind(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3) #10 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dontget_thisproc_membind(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @hwloc_topology_get_complete_nodeset(ptr noundef %0) #14
  %i.b = tail call i32 @hwloc_bitmap_copy(ptr noundef %1, ptr noundef %i.a) #15 ; 0 uses
  store i32 -1, ptr %2, align 4, !tbaa !12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dontset_thisthread_membind(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3) #10 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dontget_thisthread_membind(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @hwloc_topology_get_complete_nodeset(ptr noundef %0) #14
  %i.b = tail call i32 @hwloc_bitmap_copy(ptr noundef %1, ptr noundef %i.a) #15 ; 0 uses
  store i32 -1, ptr %2, align 4, !tbaa !12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dontset_proc_membind(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, i32 %3, i32 %4) #10 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dontget_proc_membind(ptr noundef %0, i32 %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, i32 %4) #0 {
bb.a:
  %i.a = tail call ptr @hwloc_topology_get_complete_nodeset(ptr noundef %0) #14
  %i.b = tail call i32 @hwloc_bitmap_copy(ptr noundef %2, ptr noundef %i.a) #15 ; 0 uses
  store i32 -1, ptr %3, align 4, !tbaa !12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dontset_area_membind(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i32 %4, i32 %5) #10 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dontget_area_membind(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 %5) #0 {
bb.a:
  %i.a = tail call ptr @hwloc_topology_get_complete_nodeset(ptr noundef %0) #14
  %i.b = tail call i32 @hwloc_bitmap_copy(ptr noundef %3, ptr noundef %i.a) #15 ; 0 uses
  store i32 -1, ptr %4, align 4, !tbaa !12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dontget_area_memlocation(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr noundef %3, i32 %4) #0 {
bb.a:
  %i.a = tail call ptr @hwloc_topology_get_complete_nodeset(ptr noundef %0) #14
  %i.b = tail call i32 @hwloc_bitmap_copy(ptr noundef %3, ptr noundef %i.a) #15 ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @dontalloc_membind(ptr nofree readnone captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, i32 %3, i32 %4) #11 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %1) #17
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal noundef i32 @dontfree_membind(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1, i64 %2) #6 {
bb.a:
  tail call void @free(ptr noundef %1) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !59}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"any p2 pointer", !13, i64 0}
!16 = !{!"any p3 pointer", !15, i64 0}
!17 = !{!"p3 _ZTS9hwloc_obj", !16, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!"p1 _ZTS14hwloc_bitmap_s", !13, i64 0}
!20 = !{!"hwloc_binding_hooks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184}
!21 = !{!"p1 _ZTS32hwloc_topology_discovery_support", !13, i64 0}
!22 = !{!"p1 _ZTS30hwloc_topology_cpubind_support", !13, i64 0}
!23 = !{!"p1 _ZTS30hwloc_topology_membind_support", !13, i64 0}
!24 = !{!"p1 _ZTS27hwloc_topology_misc_support", !13, i64 0}
!25 = !{!"hwloc_topology_support", !21, i64 0, !22, i64 8, !23, i64 16, !24, i64 24}
!26 = !{!"p1 _ZTS26hwloc_internal_distances_s", !13, i64 0}
!27 = !{!"p1 _ZTS24hwloc_internal_memattr_s", !13, i64 0}
!28 = !{!"p1 _ZTS24hwloc_internal_cpukind_s", !13, i64 0}
!29 = !{!"p1 _ZTS13hwloc_backend", !13, i64 0}
!30 = !{!"p1 _ZTS9hwloc_tma", !13, i64 0}
!31 = !{!"p1 _ZTS24hwloc_memory_page_type_s", !13, i64 0}
!32 = !{!"hwloc_numanode_attr_s", !18, i64 0, !9, i64 8, !31, i64 16}
!33 = !{!"p1 _ZTS27hwloc_pci_forced_locality_s", !13, i64 0}
!34 = !{!"p1 _ZTS33hwloc_topology_forced_component_s", !13, i64 0}
!35 = !{!"p1 _ZTS20hwloc_pci_locality_s", !13, i64 0}
!36 = !{!"hwloc_topology", !9, i64 0, !9, i64 4, !9, i64 8, !14, i64 16, !17, i64 24, !18, i64 32, !8, i64 40, !8, i64 120, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !13, i64 216, !18, i64 224, !13, i64 232, !18, i64 240, !8, i64 248, !19, i64 440, !19, i64 448, !20, i64 456, !25, i64 648, !13, i64 680, !13, i64 688, !9, i64 696, !26, i64 704, !26, i64 712, !9, i64 720, !9, i64 724, !27, i64 728, !9, i64 736, !9, i64 740, !28, i64 744, !9, i64 752, !9, i64 756, !9, i64 760, !8, i64 764, !9, i64 784, !29, i64 792, !29, i64 800, !9, i64 808, !9, i64 812, !30, i64 816, !32, i64 824, !9, i64 848, !9, i64 852, !33, i64 856, !9, i64 864, !34, i64 872, !35, i64 880, !35, i64 888}
!37 = !{!36, !13, i64 456}
!38 = !{!36, !13, i64 472}
!39 = !{!36, !13, i64 464}
!40 = !{!36, !13, i64 480}
!41 = !{!36, !13, i64 488}
!42 = !{!36, !13, i64 496}
!43 = !{!36, !13, i64 504}
!44 = !{!36, !13, i64 512}
!45 = !{!36, !13, i64 520}
!46 = !{!36, !13, i64 528}
!47 = !{!36, !13, i64 536}
!48 = !{!36, !13, i64 544}
!49 = !{!36, !13, i64 560}
!50 = !{!"p1 omnipotent char", !13, i64 0}
!51 = !{!"p1 _ZTS16hwloc_obj_attr_u", !13, i64 0}
!52 = !{!"p1 _ZTS9hwloc_obj", !13, i64 0}
!53 = !{!"p2 _ZTS9hwloc_obj", !15, i64 0}
!54 = !{!"p1 _ZTS12hwloc_info_s", !13, i64 0}
!55 = !{!"hwloc_obj", !9, i64 0, !50, i64 8, !9, i64 16, !50, i64 24, !18, i64 32, !51, i64 40, !9, i64 48, !9, i64 52, !52, i64 56, !52, i64 64, !52, i64 72, !9, i64 80, !52, i64 88, !52, i64 96, !9, i64 104, !53, i64 112, !52, i64 120, !52, i64 128, !9, i64 136, !9, i64 140, !52, i64 144, !9, i64 152, !52, i64 160, !9, i64 168, !52, i64 176, !19, i64 184, !19, i64 192, !19, i64 200, !19, i64 208, !54, i64 216, !9, i64 224, !13, i64 232, !18, i64 240}
!56 = !{!55, !9, i64 48}
!57 = !{!55, !52, i64 56}
!58 = !{!55, !19, i64 184}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!55, !9, i64 16}
!61 = !{!36, !13, i64 552}
!62 = !{!36, !13, i64 568}
!63 = !{!36, !13, i64 576}
!64 = !{!36, !13, i64 584}
!65 = !{!36, !13, i64 592}
!66 = !{!36, !13, i64 600}
!67 = !{!36, !13, i64 608}
!68 = !{!13, !13, i64 0}
!69 = !{!36, !13, i64 616}
!70 = !{ptr @hwloc_alloc}
!71 = !{!36, !13, i64 624}
!72 = distinct !{!72, !59}
!73 = distinct !{!73, !59}
!74 = distinct !{null}
!75 = distinct !{null}
!76 = distinct !{null}
!77 = !{!36, !13, i64 632}
!78 = !{!36, !9, i64 200}
!79 = !{!20, !13, i64 0}
!80 = !{!20, !13, i64 8}
!81 = !{!20, !13, i64 16}
!82 = !{!20, !13, i64 24}
!83 = !{!20, !13, i64 32}
!84 = !{!20, !13, i64 40}
!85 = !{!20, !13, i64 48}
!86 = !{!20, !13, i64 56}
!87 = !{!20, !13, i64 64}
!88 = !{!20, !13, i64 72}
!89 = !{!20, !13, i64 80}
!90 = !{!20, !13, i64 88}
!91 = !{!20, !13, i64 96}
!92 = !{!20, !13, i64 104}
!93 = !{!20, !13, i64 112}
!94 = !{!20, !13, i64 120}
!95 = !{!20, !13, i64 128}
!96 = !{!20, !13, i64 136}
!97 = !{!20, !13, i64 144}
!98 = !{!20, !13, i64 152}
!99 = !{!20, !13, i64 168}
!100 = !{!20, !13, i64 176}
!101 = !{!36, !22, i64 656}
!102 = !{!"hwloc_topology_cpubind_support", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8, !8, i64 9, !8, i64 10}
!103 = !{!102, !8, i64 0}
!104 = !{!102, !8, i64 1}
!105 = !{!102, !8, i64 2}
!106 = !{!102, !8, i64 3}
!107 = !{!102, !8, i64 4}
!108 = !{!102, !8, i64 5}
!109 = !{!102, !8, i64 6}
!110 = !{!102, !8, i64 7}
!111 = !{!102, !8, i64 8}
!112 = !{!102, !8, i64 9}
!113 = !{!102, !8, i64 10}
!114 = !{!36, !23, i64 664}
!115 = !{!"hwloc_topology_membind_support", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !8, i64 12, !8, i64 13, !8, i64 14}
!116 = !{!115, !8, i64 0}
!117 = !{!115, !8, i64 1}
!118 = !{!115, !8, i64 4}
!119 = !{!115, !8, i64 5}
!120 = !{!115, !8, i64 2}
!121 = !{!115, !8, i64 3}
!122 = !{!115, !8, i64 6}
!123 = !{!115, !8, i64 7}
!124 = !{!115, !8, i64 14}
!125 = !{!115, !8, i64 8}
end_hunk_1
