Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topology-linux?download=true
inline.NumInlined: 369
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@list_sysfsnode:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %bb.v
  tail call void @hwloc_bitmap_free(ptr noundef nonnull %.0) #29
  store i32 %.1, ptr %3, align 4, !tbaa !18
  br label %hwloc_opendir.exit.thread

hwloc_opendir.exit.thread:                        ; preds = %hwloc_checkat.exit.thread.i.i, %hwloc_opendir.exit, %._crit_edge, %bb.s, %bb.q, %bb.g
  %.044 = phi ptr [ %i.ba, %._crit_edge ], [ null, %bb.s ], [ null, %bb.q ], [ null, %bb.g ], [ null, %hwloc_opendir.exit ], [ null, %hwloc_checkat.exit.thread.i.i ]
  ret ptr %.044
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hwloc_get_sysfs_node_meminfo(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca [128 x i8], align 16              ; 5 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.e = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.257, ptr noundef nonnull %1, i32 noundef %2) #29 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !79   ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.preheader.i.i.i, label %hwloc_stat.exit

.preheader.i.i.i:                                 ; preds = %bb.a, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.k, %.preheader.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.i = load i8, ptr %.0.i.i.i, align 1, !tbaa !19
  %i.j = icmp eq i8 %i.i, 47
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %i.j, label %.preheader.i.i.i, label %hwloc_stat.exit, !llvm.loop !0

hwloc_stat.exit:                                  ; preds = %.preheader.i.i.i, %bb.a
  %.1.i10.i.i = phi ptr [ %i.b, %bb.a ], [ %.0.i.i.i, %.preheader.i.i.i ]
  %i.l = call i32 @fstatat(i32 noundef %i.g, ptr noundef nonnull %.1.i10.i.i, ptr noundef nonnull %4, i32 noundef 0) #29
  %.not.not = icmp eq i32 %i.l, 0                 ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %hwloc_stat.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !107
  %i.o = trunc i64 %i.n to i32
  %i.p = add i32 %i.o, -1
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.p, i32 3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %hwloc_stat.exit
  %.0 = phi i32 [ 1, %hwloc_stat.exit ], [ %spec.store.select, %bb.b ] ; 2 uses
  %i.q = zext nneg i32 %.0 to i64
  %i.r = call noalias ptr @calloc(i64 noundef %i.q, i64 noundef 16) #35 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !108
  %.not23 = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.t, align 8, !tbaa !109
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  store i32 1, ptr %i.t, align 8, !tbaa !109
  %i.u = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.258, ptr noundef nonnull %1, i32 noundef %2) #29 ; 0 uses
  %.val = load i32, ptr %i.f, align 8, !tbaa !79  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.v = icmp sgt i32 %.val, -1
  br i1 %i.v, label %.preheader.i.i.i.i.i, label %hwloc_open.exit.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.e, %.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.y, %.preheader.i.i.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.w = load i8, ptr %.0.i.i.i.i.i, align 1, !tbaa !19
  %i.x = icmp eq i8 %i.w, 47
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 1
  br i1 %i.x, label %.preheader.i.i.i.i.i, label %hwloc_open.exit.i.i, !llvm.loop !0

hwloc_open.exit.i.i:                              ; preds = %.preheader.i.i.i.i.i, %bb.e
  %.1.i8.i.i.i.i = phi ptr [ %i.c, %bb.e ], [ %.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %i.z = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %.val, ptr noundef nonnull %.1.i8.i.i.i.i, i32 noundef 0) #29 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %hwloc_parse_meminfo_info.exit, label %bb.f

bb.f:                                             ; preds = %hwloc_open.exit.i.i
  %i.ab = call i64 @read(i32 noundef %i.z, ptr noundef nonnull %i.a, i64 noundef 4095) #29 ; 2 uses
  %i.ac = call i32 @close(i32 noundef %i.z) #29   ; 0 uses
  %i.ad = icmp slt i64 %i.ab, 1
  br i1 %i.ad, label %hwloc_parse_meminfo_info.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !19
  %i.af = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.248) #32 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %hwloc_parse_meminfo_info.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.ah = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.ag, ptr noundef null, i32 noundef 10) #29
  %i.ai = shl i64 %i.ah, 10
  store i64 %i.ai, ptr %3, align 8, !tbaa !22
  br label %hwloc_parse_meminfo_info.exit

hwloc_parse_meminfo_info.exit:                    ; preds = %hwloc_open.exit.i.i, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.aj = load i64, ptr %3, align 8, !tbaa !110   ; 2 uses
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !22
  br i1 %.not.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %hwloc_parse_meminfo_info.exit
  call fastcc void @hwloc_parse_hugepages_info(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %3, i32 noundef %.0, ptr noundef %i.d)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %hwloc_parse_meminfo_info.exit
  %i.ak = phi i64 [ %.pre, %bb.i ], [ %i.aj, %hwloc_parse_meminfo_info.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.am = load i32, ptr %i.al, align 4, !tbaa !101
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !108 ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !112
  %i.ap = udiv i64 %i.ak, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !113
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @hwloc_parse_nodes_distances(ptr noundef nonnull %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 12 uses
  %i.b = alloca ptr, align 8                      ; 16 uses
  %i.c = mul i32 %1, 11
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #30 ; 14 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not68 = icmp eq i32 %1, 0
  br i1 %.not68, label %.sink.split, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader
  %i.f = icmp sgt i32 %4, -1
  %i.g = add nsw i64 %i.d, -1                     ; 3 uses
  br i1 %i.f, label %.lr.ph64.split.us, label %hwloc_open.exit.i.preheader

hwloc_open.exit.i.preheader:                      ; preds = %.lr.ph64
  %wide.trip.count = zext i32 %1 to i64
  %i.h = icmp eq i32 %1, 1
  br label %hwloc_open.exit.i

.lr.ph64.split.us:                                ; preds = %.lr.ph64
  %i.i = icmp eq i32 %1, 1
  br i1 %i.i, label %.preheader.i.i.i.i.preheader.us.us, label %.preheader.i.i.i.i.preheader.us.preheader

.preheader.i.i.i.i.preheader.us.preheader:        ; preds = %.lr.ph64.split.us
  %wide.trip.count81 = zext i32 %1 to i64
  br label %.preheader.i.i.i.i.preheader.us

.preheader.i.i.i.i.preheader.us.us:               ; preds = %.lr.ph64.split.us
  %i.j = load i32, ptr %2, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.k = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.259, ptr noundef nonnull %0, i32 noundef %i.j) #29 ; 0 uses
  br label %.preheader.i.i.i.i.us.us

.preheader.i.i.i.i.us.us:                         ; preds = %.preheader.i.i.i.i.us.us, %.preheader.i.i.i.i.preheader.us.us
  %.0.i.i.i.i.us.us = phi ptr [ %i.n, %.preheader.i.i.i.i.us.us ], [ %i.a, %.preheader.i.i.i.i.preheader.us.us ] ; 3 uses
  %i.l = load i8, ptr %.0.i.i.i.i.us.us, align 1, !tbaa !19
  %i.m = icmp eq i8 %i.l, 47
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.us.us, i64 1
  br i1 %i.m, label %.preheader.i.i.i.i.us.us, label %hwloc_open.exit.i.loopexit.us.us, !llvm.loop !0

hwloc_open.exit.i.loopexit.us.us:                 ; preds = %.preheader.i.i.i.i.us.us
  %i.o = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %4, ptr noundef nonnull %.0.i.i.i.i.us.us, i32 noundef 0) #29 ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.sink.split.sink.split, label %bb.b

bb.b:                                             ; preds = %hwloc_open.exit.i.loopexit.us.us
  %i.q = call i64 @read(i32 noundef %i.o, ptr noundef nonnull %i.e, i64 noundef %i.g) #29 ; 2 uses
  %i.r = call i32 @close(i32 noundef %i.o) #29    ; 0 uses
  %i.s = icmp slt i64 %i.q, 1
  br i1 %i.s, label %.sink.split.sink.split, label %hwloc_read_path_by_length.exit.us.us

hwloc_read_path_by_length.exit.us.us:             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !19
  %i.u = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, i32 noundef 0) #29
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !66
  %.not5558.us.us = icmp eq ptr %i.v, %i.e
  br i1 %.not5558.us.us, label %.sink.split.sink.split, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %hwloc_read_path_by_length.exit.us.us
  %5 = and i64 %i.u, 4294967295
  store i64 %5, ptr %3, align 8, !tbaa !22
  br label %.sink.split.sink.split

.preheader.i.i.i.i.preheader.us:                  ; preds = %.preheader.i.i.i.i.preheader.us.preheader, %._crit_edge66
  %indvars.iv78 = phi i64 [ 0, %.preheader.i.i.i.i.preheader.us.preheader ], [ %indvars.iv.next79, %._crit_edge66 ] ; 2 uses
  %.03562.us = phi ptr [ %3, %.preheader.i.i.i.i.preheader.us.preheader ], [ %i.ao, %._crit_edge66 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv78
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.y = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.259, ptr noundef nonnull %0, i32 noundef %i.x) #29 ; 0 uses
  br label %.preheader.i.i.i.i.us

.preheader.i.i.i.i.us:                            ; preds = %.preheader.i.i.i.i.preheader.us, %.preheader.i.i.i.i.us
  %.0.i.i.i.i.us = phi ptr [ %i.ab, %.preheader.i.i.i.i.us ], [ %i.a, %.preheader.i.i.i.i.preheader.us ] ; 3 uses
  %i.z = load i8, ptr %.0.i.i.i.i.us, align 1, !tbaa !19
  %i.aa = icmp eq i8 %i.z, 47
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.us, i64 1
  br i1 %i.aa, label %.preheader.i.i.i.i.us, label %hwloc_open.exit.i.loopexit.us, !llvm.loop !0

bb.c:                                             ; preds = %hwloc_open.exit.i.loopexit.us
  %i.ac = call i64 @read(i32 noundef %i.ar, ptr noundef nonnull %i.e, i64 noundef %i.g) #29 ; 2 uses
  %i.ad = call i32 @close(i32 noundef %i.ar) #29  ; 0 uses
  %i.ae = icmp slt i64 %i.ac, 1
  br i1 %i.ae, label %.sink.split.sink.split, label %hwloc_read_path_by_length.exit.us

hwloc_read_path_by_length.exit.us:                ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !19
  %i.ag = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, i32 noundef 0) #29
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %.not5558.us = icmp eq ptr %i.ah, %i.e
  br i1 %.not5558.us, label %.sink.split.sink.split, label %.lr.ph.us

bb.d:                                             ; preds = %.lr.ph.us, %bb.e
  %.pn = phi ptr [ %i.ah, %.lr.ph.us ], [ %i.am, %bb.e ]
  %i.ai = phi i32 [ 1, %.lr.ph.us ], [ %i.ap, %bb.e ]
  %i.aj = phi ptr [ %i.au, %.lr.ph.us ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.al = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b, i32 noundef 0) #29
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %.not55.us = icmp eq ptr %i.am, %i.ak
  br i1 %.not55.us, label %.sink.split.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = and i64 %i.al, 4294967295
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ap = add nuw i32 %i.ai, 1                    ; 2 uses
  %i.aq = icmp eq i32 %i.ap, %1
  br i1 %i.aq, label %._crit_edge66, label %bb.d

._crit_edge66:                                    ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.sink.split, label %.preheader.i.i.i.i.preheader.us, !llvm.loop !277

hwloc_open.exit.i.loopexit.us:                    ; preds = %.preheader.i.i.i.i.us
  %i.ar = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %4, ptr noundef nonnull %.0.i.i.i.i.us, i32 noundef 0) #29 ; 3 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.sink.split.sink.split, label %bb.c

.lr.ph.us:                                        ; preds = %hwloc_read_path_by_length.exit.us
  %i.at = and i64 %i.ag, 4294967295
  store i64 %i.at, ptr %.03562.us, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %.03562.us, i64 8
  br label %bb.d

hwloc_open.exit.i:                                ; preds = %hwloc_open.exit.i.preheader, %.lr.ph._crit_edge
  %indvars.iv = phi i64 [ 0, %hwloc_open.exit.i.preheader ], [ %indvars.iv.next, %.lr.ph._crit_edge ] ; 2 uses
  %.03562 = phi ptr [ %3, %hwloc_open.exit.i.preheader ], [ %.lcssa111, %.lr.ph._crit_edge ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.ax = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.259, ptr noundef nonnull %0, i32 noundef %i.aw) #29 ; 0 uses
  %i.ay = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %4, ptr noundef nonnull %i.a, i32 noundef 0) #29 ; 3 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.sink.split, label %bb.f

bb.f:                                             ; preds = %hwloc_open.exit.i
  %i.ba = call i64 @read(i32 noundef %i.ay, ptr noundef nonnull %i.e, i64 noundef %i.g) #29 ; 2 uses
  %i.bb = call i32 @close(i32 noundef %i.ay) #29  ; 0 uses
  %i.bc = icmp slt i64 %i.ba, 1
  br i1 %i.bc, label %.sink.split.sink.split, label %hwloc_read_path_by_length.exit

hwloc_read_path_by_length.exit:                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !19
  %i.be = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, i32 noundef 0) #29
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %.not5558 = icmp eq ptr %i.bf, %i.e
  br i1 %.not5558, label %.sink.split.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %hwloc_read_path_by_length.exit
  %i.bg = and i64 %i.be, 4294967295
  store i64 %i.bg, ptr %.03562, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %.03562, i64 8 ; 2 uses
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bi = phi i32 [ %i.bq, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %i.bj = phi ptr [ %i.bp, %.lr.ph ], [ %i.bh, %.lr.ph.preheader ] ; 2 uses
  %i.bk = phi ptr [ %i.bn, %.lr.ph ], [ %i.bf, %.lr.ph.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  %i.bm = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.b, i32 noundef 0) #29
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %.not55 = icmp eq ptr %i.bn, %i.bl
  br i1 %.not55, label %.sink.split.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph113
  %i.bo = and i64 %i.bm, 4294967295
  store i64 %i.bo, ptr %i.bj, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bq = add nuw i32 %i.bi, 1                    ; 2 uses
  %i.br = icmp eq i32 %i.bq, %1
  br i1 %i.br, label %.lr.ph._crit_edge, label %.lr.ph113

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa111 = phi ptr [ %i.bh, %.lr.ph.preheader ], [ %i.bp, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.sink.split, label %hwloc_open.exit.i, !llvm.loop !277

.sink.split.sink.split:                           ; preds = %hwloc_read_path_by_length.exit, %bb.f, %hwloc_open.exit.i, %.lr.ph113, %hwloc_read_path_by_length.exit.us, %bb.c, %hwloc_open.exit.i.loopexit.us, %bb.d, %hwloc_read_path_by_length.exit.us.us, %bb.b, %hwloc_open.exit.i.loopexit.us.us, %.lr.ph.us.us
  %.038.ph.ph = phi i32 [ 0, %.lr.ph.us.us ], [ -1, %bb.d ], [ -1, %hwloc_read_path_by_length.exit.us.us ], [ -1, %hwloc_read_path_by_length.exit.us ], [ -1, %.lr.ph113 ], [ -1, %hwloc_open.exit.i.loopexit.us.us ], [ -1, %bb.b ], [ -1, %hwloc_open.exit.i.loopexit.us ], [ -1, %bb.c ], [ -1, %hwloc_open.exit.i ], [ -1, %bb.f ], [ -1, %hwloc_read_path_by_length.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph._crit_edge, %._crit_edge66, %.sink.split.sink.split, %.preheader
  %.038.ph = phi i32 [ 0, %.preheader ], [ 0, %._crit_edge66 ], [ %.038.ph.ph, %.sink.split.sink.split ], [ 0, %.lr.ph._crit_edge ]
  call void @free(ptr noundef %i.e) #29
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.038 = phi i32 [ -1, %bb.a ], [ %.038.ph, %.sink.split ]
  ret i32 %.038
}

declare i32 @hwloc_internal_distances_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare i32 @hwloc_bitmap_asprintf(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @hwloc_hide_errors() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_intersects(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @hwloc_free_unlinked_object(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_node_initiators(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114
  %i.e = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.356, ptr noundef nonnull %4, i32 noundef %i.d) #29 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !79   ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.preheader.i.i.i, label %hwloc_checkat.exit.thread.i.i

.preheader.i.i.i:                                 ; preds = %bb.a, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.k, %.preheader.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.i = load i8, ptr %.0.i.i.i, align 1, !tbaa !19
  %i.j = icmp eq i8 %i.i, 47
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %i.j, label %.preheader.i.i.i, label %hwloc_checkat.exit.thread.i.i, !llvm.loop !0

hwloc_checkat.exit.thread.i.i:                    ; preds = %.preheader.i.i.i, %bb.a
  %.1.i11.i.i = phi ptr [ %i.a, %bb.a ], [ %.0.i.i.i, %.preheader.i.i.i ]
  %i.l = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.g, ptr noundef nonnull %.1.i11.i.i, i32 noundef 65536) #29 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %hwloc_opendir.exit.thread, label %hwloc_opendir.exit

hwloc_opendir.exit:                               ; preds = %hwloc_checkat.exit.thread.i.i
  %i.n = call noalias ptr @fdopendir(i32 noundef %i.l) #29 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %hwloc_opendir.exit.thread, label %bb.b

hwloc_opendir.exit.thread:                        ; preds = %hwloc_checkat.exit.thread.i.i, %hwloc_opendir.exit
  %i.o = load i32, ptr %i.c, align 8, !tbaa !114
  %i.p = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.357, ptr noundef nonnull %4, i32 noundef %i.o) #29 ; 0 uses
  %i.q = load i32, ptr %i.f, align 8, !tbaa !79   ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %.preheader.i.i.i37, label %hwloc_checkat.exit.thread.i.i34

.preheader.i.i.i37:                               ; preds = %hwloc_opendir.exit.thread, %.preheader.i.i.i37
  %.0.i.i.i38 = phi ptr [ %i.u, %.preheader.i.i.i37 ], [ %i.a, %hwloc_opendir.exit.thread ] ; 3 uses
  %i.s = load i8, ptr %.0.i.i.i38, align 1, !tbaa !19
  %i.t = icmp eq i8 %i.s, 47
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i38, i64 1
  br i1 %i.t, label %.preheader.i.i.i37, label %hwloc_checkat.exit.thread.i.i34, !llvm.loop !0

hwloc_checkat.exit.thread.i.i34:                  ; preds = %.preheader.i.i.i37, %hwloc_opendir.exit.thread
  %.1.i11.i.i35 = phi ptr [ %i.a, %hwloc_opendir.exit.thread ], [ %.0.i.i.i38, %.preheader.i.i.i37 ]
  %i.v = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.q, ptr noundef nonnull %.1.i11.i.i35, i32 noundef 65536) #29 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %hwloc_opendir.exit39.thread, label %hwloc_opendir.exit39

hwloc_opendir.exit39:                             ; preds = %hwloc_checkat.exit.thread.i.i34
  %i.x = call noalias ptr @fdopendir(i32 noundef %i.v) #29 ; 2 uses
  %.not29 = icmp eq ptr %i.x, null
  br i1 %.not29, label %hwloc_opendir.exit39.thread, label %bb.b

bb.b:                                             ; preds = %hwloc_opendir.exit39, %hwloc_opendir.exit
  %.023 = phi ptr [ %i.n, %hwloc_opendir.exit ], [ %i.x, %hwloc_opendir.exit39 ] ; 4 uses
  %i.y = call ptr @readdir(ptr noundef nonnull %.023) #29 ; 3 uses
  %.not3045 = icmp eq ptr %i.y, null
  br i1 %.not3045, label %._crit_edge, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.b
  %.not47 = icmp eq i32 %2, 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 184
  br i1 %.not47, label %.lr.ph46.split, label %.lr.ph46.split.us.preheader

.lr.ph46.split.us.preheader:                      ; preds = %.lr.ph46
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph46.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46.split.us.preheader, %..loopexit_crit_edge.us
  %i.aa = phi ptr [ %i.ap, %..loopexit_crit_edge.us ], [ %i.y, %.lr.ph46.split.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 19
  %i.ac = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.358, ptr noundef nonnull %i.b) #29
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.c, label %..loopexit_crit_edge.us

bb.c:                                             ; preds = %.lr.ph46.split.us
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !18  ; 2 uses
  %i.af = load i32, ptr %i.c, align 8, !tbaa !114
  %.not31.us = icmp eq i32 %i.ae, %i.af
  br i1 %.not31.us, label %..loopexit_crit_edge.us, label %.preheader.us

.preheader.us:                                    ; preds = %bb.c, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50 ; 3 uses
  %.not32.us = icmp eq ptr %i.ah, null
  br i1 %.not32.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.us
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !114
  %i.ak = icmp eq i32 %i.aj, %i.ae
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !278

bb.f:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !102 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !102
  %i.ao = call i32 @hwloc_bitmap_or(ptr noundef %i.al, ptr noundef %i.al, ptr noundef %i.an) #29 ; 0 uses
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.e, %bb.f, %bb.c, %.lr.ph46.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ap = call ptr @readdir(ptr noundef nonnull %.023) #29 ; 2 uses
  %.not30.us = icmp eq ptr %i.ap, null
  br i1 %.not30.us, label %._crit_edge, label %.lr.ph46.split.us, !llvm.loop !279

.lr.ph46.split:                                   ; preds = %.lr.ph46, %.lr.ph46.split
  %i.aq = phi ptr [ %i.at, %.lr.ph46.split ], [ %i.y, %.lr.ph46 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 19
  %i.as = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.358, ptr noundef nonnull %i.b) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.at = call ptr @readdir(ptr noundef nonnull %.023) #29 ; 2 uses
  %.not30 = icmp eq ptr %i.at, null
  br i1 %.not30, label %._crit_edge, label %.lr.ph46.split, !llvm.loop !279

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.lr.ph46.split, %bb.b
  %i.au = call i32 @closedir(ptr noundef nonnull %.023) ; 0 uses
  br label %hwloc_opendir.exit39.thread

hwloc_opendir.exit39.thread:                      ; preds = %hwloc_checkat.exit.thread.i.i34, %hwloc_opendir.exit39, %._crit_edge
  %.024 = phi i32 [ 0, %._crit_edge ], [ -1, %hwloc_opendir.exit39 ], [ -1, %hwloc_checkat.exit.thread.i.i34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_node_mscaches(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 6 uses
  %i.b = alloca [11 x i8], align 1                ; 6 uses
  %i.c = alloca [22 x i8], align 16               ; 6 uses
  %i.d = alloca [128 x i8], align 16              ; 14 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !50     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !114  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.h = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.359, ptr noundef nonnull %2, i32 noundef %i.g) #29 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !79   ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %.preheader.i.i.i, label %hwloc_checkat.exit.thread.i.i

.preheader.i.i.i:                                 ; preds = %bb.a, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.n, %.preheader.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.l = load i8, ptr %.0.i.i.i, align 1, !tbaa !19
  %i.m = icmp eq i8 %i.l, 47
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %i.m, label %.preheader.i.i.i, label %hwloc_checkat.exit.thread.i.i, !llvm.loop !0

hwloc_checkat.exit.thread.i.i:                    ; preds = %.preheader.i.i.i, %bb.a
  %.1.i11.i.i = phi ptr [ %i.d, %bb.a ], [ %.0.i.i.i, %.preheader.i.i.i ]
  %i.o = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.j, ptr noundef nonnull %.1.i11.i.i, i32 noundef 65536) #29 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %hwloc_opendir.exit.thread, label %hwloc_opendir.exit

hwloc_opendir.exit:                               ; preds = %hwloc_checkat.exit.thread.i.i
  %i.q = call noalias ptr @fdopendir(i32 noundef %i.o) #29 ; 4 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %hwloc_opendir.exit.thread, label %.preheader

.preheader:                                       ; preds = %hwloc_opendir.exit
  %i.r = call ptr @readdir(ptr noundef nonnull %i.q) #29 ; 2 uses
  %.not4372 = icmp eq ptr %i.r, null
end_hunk_0
