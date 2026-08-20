inline.NumInlined: 369
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.523 = private unnamed_addr constant [12 x i8] c"%s/cache_l2\00", align 1
@.str.524 = private unnamed_addr constant [19 x i8] c"VectorEngineL2Size\00", align 1
@.str.525 = private unnamed_addr constant [13 x i8] c"%s/cache_l1d\00", align 1
@.str.526 = private unnamed_addr constant [20 x i8] c"VectorEngineL1dSize\00", align 1
@.str.527 = private unnamed_addr constant [13 x i8] c"%s/cache_l1i\00", align 1
@.str.528 = private unnamed_addr constant [20 x i8] c"VectorEngineL1iSize\00", align 1
@.str.529 = private unnamed_addr constant [15 x i8] c"/sys/class/bxi\00", align 1
@.str.530 = private unnamed_addr constant [18 x i8] c"/sys/class/bxi/%s\00", align 1
@.str.531 = private unnamed_addr constant [4 x i8] c"BXI\00", align 1
@.str.532 = private unnamed_addr constant [8 x i8] c"%s/uuid\00", align 1
@.str.533 = private unnamed_addr constant [8 x i8] c"BXIUUID\00", align 1
@.str.534 = private unnamed_addr constant [15 x i8] c"/sys/class/drm\00", align 1
@.str.535 = private unnamed_addr constant [22 x i8] c"/sys/class/drm/%s/dev\00", align 1
@.str.536 = private unnamed_addr constant [18 x i8] c"/sys/class/drm/%s\00", align 1
@.str.537 = private unnamed_addr constant [15 x i8] c"/sys/class/dma\00", align 1
@.str.538 = private unnamed_addr constant [18 x i8] c"/sys/class/dma/%s\00", align 1
@.str.539 = private unnamed_addr constant [36 x i8] c"/sys/firmware/dmi/entries/17-%u/raw\00", align 1
@.str.540 = private unnamed_addr constant [9 x i8] c"AssetTag\00", align 1
@.str.541 = private unnamed_addr constant [11 x i8] c"PartNumber\00", align 1
@.str.542 = private unnamed_addr constant [15 x i8] c"DeviceLocation\00", align 1
@.str.543 = private unnamed_addr constant [13 x i8] c"BankLocation\00", align 1
@.str.544 = private unnamed_addr constant [62 x i8] c"hwloc/linux: hwloc could read a DMI firmware entry #%u in %s\0A\00", align 1
@.str.545 = private unnamed_addr constant [13 x i8] c"MemoryModule\00", align 1
@.str.546 = private unnamed_addr constant [52 x i8] c"/sys/bus/pci/devices/%04x:%02x:%02x.%01x/local_cpus\00", align 1
@switch.table.hwloc_linux_get_thisthread_membind = private unnamed_addr constant [6 x i8] c"\01\02\02\03\01\02", align 4
@switch.table.hwloc_linux__get_allowed_resources.18 = private unnamed_addr constant [3 x ptr] [ptr @.str.46, ptr @.str.48, ptr @.str.50], align 8
@switch.table.hwloc_linuxfs_look_cpu = private unnamed_addr constant [4 x ptr] [ptr @hwloc_linux_parse_cpuinfo_x86, ptr @hwloc_linux_parse_cpuinfo_ia64, ptr @hwloc_linux_parse_cpuinfo_arm, ptr @hwloc_linux_parse_cpuinfo_ppc], align 8

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @hwloc_linux_read_path_as_cpumask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @hwloc__read_path_as_cpumask(ptr noundef %0, ptr noundef %1, i32 noundef -1)
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @hwloc__read_path_as_cpumask(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = load i32, ptr @hwloc__read_path_as_cpumask._nr_maps_allocated, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %2, -1
  br i1 %i.c, label %.preheader.i.i.i, label %hwloc_checkat.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.a, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.f, %.preheader.i.i.i ], [ %0, %bb.a ] ; 3 uses
  %i.d = load i8, ptr %.0.i.i.i, align 1, !tbaa !12
  %i.e = icmp eq i8 %i.d, 47
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %i.e, label %.preheader.i.i.i, label %hwloc_open.exit, !llvm.loop !13

hwloc_checkat.exit.i.i:                           ; preds = %bb.a
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %hwloc_open.exit.thread, label %hwloc_open.exit

hwloc_open.exit:                                  ; preds = %.preheader.i.i.i, %hwloc_checkat.exit.i.i
  %.1.i8.i.i = phi ptr [ %0, %hwloc_checkat.exit.i.i ], [ %.0.i.i.i, %.preheader.i.i.i ]
  %i.g = tail call i32 (i32, ptr, i32, ...) @openat(i32 noundef %2, ptr noundef nonnull %.1.i8.i.i, i32 noundef 0) #29 ; 5 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %hwloc_open.exit.thread, label %bb.b

bb.b:                                             ; preds = %hwloc_open.exit
  %i.i = load i64, ptr @hwloc__read_path_as_cpumask._filesize, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @sysconf(i32 noundef 30) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.068 = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.k = add i64 %.068, 1                         ; 3 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #30 ; 5 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %hwloc__read_fd.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i64 @read(i32 noundef range(i32 0, -2147483648) %i.g, ptr noundef nonnull %i.l, i64 noundef %i.k) #29 ; 4 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %hwloc__read_fd.exit.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ult i64 %i.m, %i.k
  br i1 %i.o, label %.loopexit73, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %bb.h
  %.040.i = phi ptr [ %i.r, %bb.h ], [ %i.l, %bb.f ] ; 2 uses
  %.038.i = phi i64 [ %i.p, %bb.h ], [ %.068, %bb.f ] ; 4 uses
  %.036.i = phi i64 [ %i.w, %bb.h ], [ %i.m, %bb.f ]
  %i.p = shl i64 %.038.i, 1                       ; 3 uses
  %i.q = or disjoint i64 %i.p, 1
  %i.r = tail call ptr @realloc(ptr noundef nonnull %.040.i, i64 noundef %i.q) #31 ; 5 uses
  %.not51.i = icmp eq ptr %i.r, null
  br i1 %.not51.i, label %hwloc__read_fd.exit.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.038.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = tail call i64 @read(i32 noundef range(i32 0, -2147483648) %i.g, ptr noundef nonnull %i.t, i64 noundef %.038.i) #29 ; 3 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %hwloc__read_fd.exit.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add i64 %i.u, %.036.i                    ; 2 uses
  %i.x = icmp eq i64 %i.u, %.038.i
  br i1 %i.x, label %.preheader.i, label %.loopexit73, !llvm.loop !17

hwloc__read_fd.exit.thread.sink.split:            ; preds = %bb.g, %.preheader.i, %bb.e
  %.sink = phi ptr [ %i.l, %bb.e ], [ %.040.i, %.preheader.i ], [ %i.r, %bb.g ]
  tail call void @free(ptr noundef nonnull %.sink) #29
  br label %hwloc__read_fd.exit.thread

hwloc__read_fd.exit.thread:                       ; preds = %hwloc__read_fd.exit.thread.sink.split, %bb.d
  %i.y = tail call i32 @close(i32 noundef %i.g) #29 ; 0 uses
  br label %hwloc_open.exit.thread

.loopexit73:                                      ; preds = %bb.h, %bb.f
  %.242.i = phi ptr [ %i.l, %bb.f ], [ %i.r, %bb.h ] ; 6 uses
  %.139.i = phi i64 [ %.068, %bb.f ], [ %i.p, %bb.h ]
  %.2.i = phi i64 [ %i.m, %bb.f ], [ %i.w, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %.242.i, i64 %.2.i
  store i8 0, ptr %i.z, align 1, !tbaa !12
  %i.aa = tail call i32 @close(i32 noundef %i.g) #29 ; 0 uses
  store i64 %.139.i, ptr @hwloc__read_path_as_cpumask._filesize, align 8, !tbaa !15
  %i.ab = zext nneg i32 %i.b to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #30 ; 3 uses
  %.not61 = icmp eq ptr %i.ad, null
  br i1 %.not61, label %bb.s, label %bb.i

bb.i:                                             ; preds = %.loopexit73
  tail call void @hwloc_bitmap_zero(ptr noundef %1) #29
  %i.ae = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.242.i, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #29
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %.lr.ph, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.i
  call void @free(ptr noundef nonnull %.242.i) #29
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %.backedge
  %.04891 = phi ptr [ %i.aq, %.backedge ], [ %.242.i, %bb.i ]
  %.04990 = phi i32 [ %.2, %.backedge ], [ %i.b, %bb.i ] ; 3 uses
  %.05089 = phi i32 [ %.050.be, %.backedge ], [ 0, %bb.i ] ; 6 uses
  %.05288 = phi ptr [ %.254, %.backedge ], [ %i.ad, %bb.i ] ; 3 uses
  %i.ag = icmp eq i32 %.05089, %.04990
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.ah = shl nsw i32 %.04990, 1                  ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = call ptr @realloc(ptr noundef %.05288, i64 noundef %i.aj) #31 ; 2 uses
  %.not62 = icmp eq ptr %i.ak, null
  br i1 %.not62, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %.254 = phi ptr [ %i.ak, %bb.j ], [ %.05288, %.lr.ph ] ; 6 uses
  %.2 = phi i32 [ %i.ah, %bb.j ], [ %.04990, %.lr.ph ] ; 3 uses
  %i.al = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.04891, i32 noundef 44) #32 ; 2 uses
  %.not63 = icmp eq ptr %i.al, null
  br i1 %.not63, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = load i64, ptr %i.a, align 8, !tbaa !15
  %i.an = add nsw i32 %.05089, 1
  %i.ao = sext i32 %.05089 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %.254, i64 %i.ao
  store i64 %i.am, ptr %i.ap, align 8, !tbaa !15
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = icmp ne i32 %.05089, 0
  %or.cond = or i1 %i.as, %i.at
  br i1 %or.cond, label %bb.n, label %.backedge

bb.n:                                             ; preds = %bb.m
  %i.au = add nsw i32 %.05089, 1
  %i.av = sext i32 %.05089 to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %.254, i64 %i.av
  store i64 %i.ar, ptr %i.aw, align 8, !tbaa !15
  br label %.backedge

.backedge:                                        ; preds = %bb.n, %bb.m
  %.050.be = phi i32 [ %i.au, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.ax = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #29
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.lr.ph, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %.backedge, %bb.l
  %.151 = phi i32 [ %i.an, %bb.l ], [ %.050.be, %.backedge ] ; 3 uses
  call void @free(ptr noundef %.242.i) #29
  %i.az = icmp sgt i32 %.151, 0
  br i1 %i.az, label %.lr.ph95.preheader, label %._crit_edge

.lr.ph95.preheader:                               ; preds = %.loopexit
  %i.ba = add nuw i32 %.151, 1
  %3 = sdiv i32 %i.ba, 2
  %i.bb = zext nneg i32 %.151 to i64              ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph95.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.bc = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bd = sub nsw i64 %i.bb, %i.bc
  %i.be = getelementptr [8 x i8], ptr %.254, i64 %i.bd ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !15 ; 2 uses
  %i.bh = or disjoint i64 %i.bc, 1
  %i.bi = icmp samesign ult i64 %i.bh, %i.bb
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph95
  %i.bj = getelementptr i8, ptr %i.be, i64 -16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !15
  %i.bl = shl i64 %i.bk, 32
  %i.bm = or i64 %i.bl, %i.bg
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph95
  %.0 = phi i64 [ %i.bm, %bb.o ], [ %i.bg, %.lr.ph95 ]
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  %i.bo = call i32 @hwloc_bitmap_set_ith_ulong(ptr noundef %1, i32 noundef %i.bn, i64 noundef %.0) #29 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph95, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.p, %.loopexit.thread, %.loopexit
  %.3125 = phi i32 [ %i.b, %.loopexit.thread ], [ %.2, %.loopexit ], [ %.2, %bb.p ] ; 2 uses
  %.355124 = phi ptr [ %i.ad, %.loopexit.thread ], [ %.254, %.loopexit ], [ %.254, %bb.p ]
  call void @free(ptr noundef %.355124) #29
  %i.bp = load i32, ptr @hwloc__read_path_as_cpumask._nr_maps_allocated, align 4, !tbaa !11
  %i.bq = icmp sgt i32 %.3125, %i.bp
  br i1 %i.bq, label %bb.q, label %hwloc_open.exit.thread

bb.q:                                             ; preds = %._crit_edge
  store i32 %.3125, ptr @hwloc__read_path_as_cpumask._nr_maps_allocated, align 4, !tbaa !11
  br label %hwloc_open.exit.thread

bb.r:                                             ; preds = %bb.j
  call void @free(ptr noundef %.05288) #29
  br label %bb.s

bb.s:                                             ; preds = %.loopexit73, %bb.r
  call void @free(ptr noundef %.242.i) #29
  br label %hwloc_open.exit.thread

hwloc_open.exit.thread:                           ; preds = %hwloc_checkat.exit.i.i, %hwloc__read_fd.exit.thread, %bb.s, %hwloc_open.exit, %._crit_edge, %bb.q
  %.056 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.s ], [ 0, %bb.q ], [ -1, %hwloc__read_fd.exit.thread ], [ -1, %hwloc_open.exit ], [ -1, %hwloc_checkat.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.056
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_linux_set_tid_cpubind(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @hwloc_bitmap_last(ptr noundef %2) #32 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #33
  store i32 22, ptr %i.c, align 4, !tbaa !11
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = add nuw nsw i32 %i.a, 1
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = add nsw i64 %i.e, 63
  %i.g = lshr i64 %i.f, 3
  %i.h = and i64 %i.g, 2305843009213693944        ; 3 uses
  %i.i = tail call ptr @__sched_cpualloc(i64 noundef %i.e) #29 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.h, i1 false)
  %i.j = tail call i32 @hwloc_bitmap_weight(ptr noundef %2) #32
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 861, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_linux_set_tid_cpubind) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i32 @hwloc_bitmap_first(ptr noundef %2) #32 ; 2 uses
  %.not2425 = icmp eq i32 %i.k, -1
  br i1 %.not2425, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.02226 = phi i32 [ %i.u, %bb.g ], [ %i.k, %bb.e ] ; 2 uses
  %i.l = zext i32 %.02226 to i64                  ; 3 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = icmp samesign ult i64 %i.m, %i.h
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.l, 63
  %i.p = shl nuw i64 1, %i.o
  %i.q = lshr i64 %i.l, 6
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15
  %i.t = or i64 %i.s, %i.p
  store i64 %i.t, ptr %i.r, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.u = tail call i32 @hwloc_bitmap_next(ptr noundef %2, i32 noundef %.02226) #32 ; 2 uses
  %.not24 = icmp eq i32 %i.u, -1
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %i.v = tail call i32 @sched_setaffinity(i32 noundef %1, i64 noundef %i.h, ptr noundef %i.i) #29
  tail call void @__sched_cpufree(ptr noundef %i.i) #29
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.v, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_last(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_weight(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_next(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sched_setaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__sched_cpufree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @hwloc_linux_get_tid_cpubind(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hwloc_linux_find_kernel_nr_cpus._nr_cpus, align 4, !tbaa !11 ; 2 uses
  %.not.i = icmp eq i32 %i.a, -1
  br i1 %.not.i, label %bb.b, label %hwloc_linux_find_kernel_nr_cpus.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not30.i = icmp eq ptr %i.g, null
  br i1 %.not30.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @hwloc_bitmap_last(ptr noundef nonnull %i.g) #32
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %i.j = add nuw nsw i32 %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.021.i = phi i32 [ %i.j, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %i.k = tail call noalias ptr @hwloc_bitmap_alloc_full() #29 ; 4 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %hwloc__alloc_read_path_as_cpulist.exit.thread.i.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc i32 @hwloc__read_path_as_cpulist(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.k, i32 noundef -1)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %hwloc__alloc_read_path_as_cpulist.exit.thread.sink.split.i, label %hwloc__alloc_read_path_as_cpulist.exit.i

hwloc__alloc_read_path_as_cpulist.exit.i:         ; preds = %bb.e
  %i.n = tail call i32 @hwloc_bitmap_last(ptr noundef nonnull %i.k) #32
  %i.o = add nsw i32 %i.n, 1
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.021.i, i32 %i.o)
  br label %hwloc__alloc_read_path_as_cpulist.exit.thread.sink.split.i

hwloc__alloc_read_path_as_cpulist.exit.thread.sink.split.i: ; preds = %hwloc__alloc_read_path_as_cpulist.exit.i, %bb.e
  %.2.ph.i = phi i32 [ %spec.select.i, %hwloc__alloc_read_path_as_cpulist.exit.i ], [ %.021.i, %bb.e ]
  tail call void @hwloc_bitmap_free(ptr noundef nonnull %i.k) #29
  br label %hwloc__alloc_read_path_as_cpulist.exit.thread.i.preheader

end_hunk_0
