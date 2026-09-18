Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cloop?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
begin_hunk_0
@.str.12 = private unnamed_addr constant [65 x i8] c"invalid compressed block size at index %u, image file is corrupt\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Could not allocate compressed_block\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Could not allocate uncompressed_block\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.16 = private unnamed_addr constant [84 x i8] c"#!/bin/sh\0A#V2.0 Format\0Amodprobe cloop file=$0 && mount -r -t iso9660 /dev/cloop $1\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"QEMU_IS_ALIGNED(offset, BDRV_SECTOR_SIZE)\00", align 1
@__PRETTY_FUNCTION__.cloop_co_preadv = private unnamed_addr constant [92 x i8] c"int cloop_co_preadv(BlockDriverState *, int64_t, int64_t, QEMUIOVector *, BdrvRequestFlags)\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"QEMU_IS_ALIGNED(bytes, BDRV_SECTOR_SIZE)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_bdrv_cloop_init, ptr null }]
@.str.19 = private unnamed_addr constant [13 x i8] c"coroutine_fn\00", section "llvm.metadata"
@.str.20 = private unnamed_addr constant [17 x i8] c"../block/cloop.c\00", section "llvm.metadata"
@.str.21 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.22 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-io.h\00", section "llvm.metadata"
@.str.23 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@.str.24 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/coroutine-core.h\00", section "llvm.metadata"
@.str.25 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/qemu/qemu/include/block/block_int-io.h\00", section "llvm.metadata"
@llvm.global.annotations = appending global [8 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @cloop_co_preadv, ptr @.str.19, ptr @.str.20, i32 256, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.21, ptr @.str.22, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.23, ptr @.str.22, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_mutex_lock, ptr @.str.19, ptr @.str.24, i32 146, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @cloop_read_block, ptr @.str.19, ptr @.str.20, i32 223, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_mutex_unlock, ptr @.str.19, ptr @.str.24, i32 152, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pread, ptr @.str.19, ptr @.str.25, i32 60, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_preadv, ptr @.str.19, ptr @.str.25, i32 47, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_bdrv_cloop_init() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @bdrv_cloop_init, i32 noundef 1) #10
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bdrv_cloop_init() #0 {
bb.a:
  tail call void @bdrv_register(ptr noundef nonnull @bdrv_cloop) #10
  ret void
}

declare void @bdrv_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @cloop_open(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 11 uses
  %i.c = tail call zeroext i1 @qemu_in_main_thread() #10
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__.cloop_open) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @bdrv_graph_rdlock_main_loop() #10
  %i.d = tail call i32 @bdrv_apply_auto_read_only(ptr noundef nonnull %0, ptr noundef null, ptr noundef %3) #10 ; 2 uses
  tail call void @bdrv_graph_rdunlock_main_loop() #10
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @bdrv_open_file_child(ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %0, ptr noundef %3) #10 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @bdrv_graph_rdlock_main_loop() #10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.k = tail call i32 @bdrv_pread(ptr noundef %i.i, i64 noundef 128, i64 noundef 4, ptr noundef nonnull %i.j, i32 noundef 0) #10 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.j, align 8              ; 2 uses
  %i.n = tail call noundef i32 @llvm.bswap.i32(i32 %i.m) ; 5 uses
  store i32 %i.n, ptr %i.j, align 8
  %i.o = and i32 %i.n, 511
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 94, ptr noundef nonnull @__func__.cloop_open, ptr noundef nonnull @.str.5, i32 noundef %i.n) #10
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.h:                                             ; preds = %bb.f
  %i.p = icmp eq i32 %i.m, 0
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 98, ptr noundef nonnull @__func__.cloop_open, ptr noundef nonnull @.str.6) #10
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.j:                                             ; preds = %bb.h
  %i.q = icmp ugt i32 %i.n, 67108864
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 109, ptr noundef nonnull @__func__.cloop_open, ptr noundef nonnull @.str.7, i32 noundef %i.n, i32 noundef 64) #10
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.l:                                             ; preds = %bb.j
  %i.r = load ptr, ptr %i.h, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 7 uses
  %i.t = tail call i32 @bdrv_pread(ptr noundef %i.r, i64 noundef 132, i64 noundef 4, ptr noundef nonnull %i.s, i32 noundef 0) #10 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load i32, ptr %i.s, align 4
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v) ; 4 uses
  store i32 %i.w, ptr %i.s, align 4
  %i.x = icmp ugt i32 %i.w, 536870911
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 124, ptr noundef nonnull @__func__.cloop_open, ptr noundef nonnull @.str.8, i32 noundef %i.w, i64 noundef 536870911) #10
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.o:                                             ; preds = %bb.m
  %i.y = shl nuw i32 %i.w, 3
  %i.z = add i32 %i.y, 8                          ; 2 uses
  %i.aa = icmp ugt i32 %i.z, 536870912
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 134, ptr noundef nonnull @__func__.cloop_open, ptr noundef nonnull @.str.9) #10
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.q:                                             ; preds = %bb.o
  %i.ab = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ac = tail call noalias ptr @g_try_malloc(i64 noundef %i.ab) #12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 140, ptr noundef nonnull @__func__.cloop_open, ptr noundef nonnull @.str.10) #10
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.s:                                             ; preds = %bb.q
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = tail call i32 @bdrv_pread(ptr noundef %i.af, i64 noundef 136, i64 noundef %i.ab, ptr noundef nonnull %i.ac, i32 noundef 0) #10 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.ai = load i32, ptr %i.s, align 4
  %.not120 = icmp eq i32 %i.ai, -1
  br i1 %.not120, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %.preheader
  %i.aj = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  store i64 %i.al, ptr %i.aj, align 8
  %i.am = load i32, ptr %i.s, align 4
  %i.an = add i32 %i.am, -1
  %i.ao = icmp ult i32 %i.an, -2
  br i1 %i.ao, label %.lr.ph.peel.next, label %._crit_edge

.lr.ph.peel.next:                                 ; preds = %bb.t, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 1, %bb.t ] ; 6 uses
  %.092118 = phi i64 [ %spec.select113, %bb.v ], [ 1, %bb.t ]
  %i.ap = load ptr, ptr %i.ad, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = tail call noundef i64 @llvm.bswap.i64(i64 %i.ar)
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp ult i64 %i.av, %i.ay
  br i1 %i.az, label %.loopexit, label %bb.u

.loopexit:                                        ; preds = %.lr.ph.peel.next
  %i.ba = trunc nuw i64 %indvars.iv to i32
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 159, ptr noundef nonnull @__func__.cloop_open, ptr noundef nonnull @.str.11, i32 noundef %i.ba) #10
  br label %.thread

bb.u:                                             ; preds = %.lr.ph.peel.next
  %i.bb = sub nuw i64 %i.av, %i.ay                ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 134217728
  br i1 %i.bc, label %.loopexit125, label %bb.v

.loopexit125:                                     ; preds = %bb.u
  %i.bd = trunc nuw i64 %indvars.iv to i32
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 173, ptr noundef nonnull @__func__.cloop_open, ptr noundef nonnull @.str.12, i32 noundef %i.bd) #10
  br label %.thread

bb.v:                                             ; preds = %bb.u
  %spec.select113 = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %.092118) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = load i32, ptr %i.s, align 4
  %i.bf = add i32 %i.be, 1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %.lr.ph.peel.next, label %._crit_edge.loopexit.loopexit, !llvm.loop !8

._crit_edge.loopexit.loopexit:                    ; preds = %bb.v
  %i.bi = add nuw nsw i64 %spec.select113, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.t, %._crit_edge.loopexit.loopexit, %.preheader
  %.092.lcssa = phi i64 [ 2, %.preheader ], [ 2, %bb.t ], [ %i.bi, %._crit_edge.loopexit.loopexit ]
  %i.bj = tail call noalias ptr @g_try_malloc(i64 noundef %.092.lcssa) #12 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.bj, ptr %i.bk, align 8
  %i.bl = icmp eq ptr %i.bj, null
  br i1 %i.bl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 186, ptr noundef nonnull @__func__.cloop_open, ptr noundef nonnull @.str.13) #10
  br label %.thread

bb.x:                                             ; preds = %._crit_edge
  %i.bm = load i32, ptr %i.j, align 8
  %i.bn = zext i32 %i.bm to i64
  %i.bo = tail call noalias ptr @g_try_malloc(i64 noundef %i.bn) #12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.bo, ptr %i.bp, align 8
  %i.bq = icmp eq ptr %i.bo, null
  br i1 %i.bq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 193, ptr noundef nonnull @__func__.cloop_open, ptr noundef nonnull @.str.14) #10
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bs = tail call i32 @inflateInit_(ptr noundef nonnull %i.br, ptr noundef nonnull @.str.15, i32 noundef 112) #10
  %.not109 = icmp eq i32 %i.bs, 0
  br i1 %.not109, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.bt = load i32, ptr %i.s, align 4             ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %i.bt, ptr %i.bu, align 4
  %i.bv = load i32, ptr %i.j, align 8
  %i.bw = lshr i32 %i.bv, 9                       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %i.bw, ptr %i.bx, align 8
  %i.by = zext i32 %i.bt to i64
  %i.bz = zext nneg i32 %i.bw to i64
  %i.ca = mul nuw nsw i64 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16880
  store i64 %i.ca, ptr %i.cb, align 8
  tail call void @qemu_co_mutex_init(ptr noundef nonnull %i.b) #10
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

.thread:                                          ; preds = %.loopexit125, %.loopexit, %bb.z, %bb.s, %bb.y, %bb.w
  %.2 = phi i32 [ %i.ag, %bb.s ], [ -22, %bb.z ], [ -12, %bb.w ], [ -12, %bb.y ], [ -22, %.loopexit ], [ -22, %.loopexit125 ]
  %i.cc = load ptr, ptr %i.ad, align 8
  tail call void @g_free(ptr noundef %i.cc) #10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void @g_free(ptr noundef %i.ce) #10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void @g_free(ptr noundef %i.cg) #10
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %bb.l, %bb.e, %.thread, %bb.aa, %bb.r, %bb.p, %bb.n, %bb.k, %bb.i, %bb.g
  %.095 = phi i32 [ 0, %bb.aa ], [ -22, %bb.g ], [ -22, %bb.i ], [ -22, %bb.k ], [ %i.k, %bb.e ], [ -22, %bb.n ], [ -22, %bb.p ], [ -12, %bb.r ], [ %.2, %.thread ], [ %i.t, %bb.l ]
  tail call void @bdrv_graph_rdunlock_main_loop() #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %bb.c, %glib_autoptr_cleanup_GraphLockableMainloop.exit
  %.196 = phi i32 [ %.095, %glib_autoptr_cleanup_GraphLockableMainloop.exit ], [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  ret i32 %.196
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cloop_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @g_free(ptr noundef %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @g_free(ptr noundef %i.h) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = tail call i32 @inflateEnd(ptr noundef nonnull %i.i) #10 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @cloop_refresh_limits(ptr nofree noundef writeonly captures(none) initializes((16464, 16468)) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16464
  store i32 512, ptr %i.a, align 8
  ret void
}

declare void @bdrv_default_perms(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 3) i32 @cloop_probe(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %narrow = tail call i32 @llvm.smin.i32(i32 %1, i32 83)
  %spec.select = sext i32 %narrow to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull @.str.16, ptr %0, i64 %spec.select)
  %.not = icmp eq i32 %bcmp, 0
  %.07 = select i1 %.not, i32 2, i32 0
  ret i32 %.07
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -5, 1) i32 @cloop_co_preadv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ashr i64 %1, 9
  %i.d = lshr i64 %2, 9                           ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = and i64 %1, 511
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef 264, ptr noundef nonnull @__PRETTY_FUNCTION__.cloop_co_preadv) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = and i64 %2, 511
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, i32 noundef 265, ptr noundef nonnull @__PRETTY_FUNCTION__.cloop_co_preadv) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @qemu_co_mutex_lock(ptr noundef %i.b) #10
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %wide.trip.count = and i64 %i.d, 2147483647
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.m = add nsw i64 %i.c, %indvars.iv            ; 2 uses
  %i.n = load i32, ptr %i.k, align 8
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = udiv i64 %i.m, %i.o
  %i.q = urem i64 %i.m, %i.o
  %i.r = trunc i64 %i.p to i32
  %i.s = tail call i32 @cloop_read_block(ptr noundef %0, i32 noundef %i.r)
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.l, align 8
  %i.u = shl nuw nsw i64 %i.q, 9
  %i.v = and i64 %i.u, 4294966784
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = shl i32 %i.x, 9
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call i64 @qemu_iovec_from_buf(ptr noundef %3, i64 noundef %i.z, ptr noundef %i.w, i64 noundef 512) #10 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ -5, %bb.f ], [ 0, %bb.g ]
  tail call void @qemu_co_mutex_unlock(ptr noundef %i.b) #10
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare zeroext i1 @qemu_in_main_thread() local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @bdrv_graph_rdlock_main_loop() local_unnamed_addr #1

declare i32 @bdrv_apply_auto_read_only(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @bdrv_graph_rdunlock_main_loop() local_unnamed_addr #1

declare i32 @bdrv_open_file_child(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @bdrv_pread(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

end_hunk_0
