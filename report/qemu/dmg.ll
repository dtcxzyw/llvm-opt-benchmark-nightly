Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/dmg?download=true
inline.NumInlined: 33
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.DmgHeaderState = type { i64, i32, i32 }
%struct.QEMUIOVector = type { ptr, i32, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { i32, %struct.iovec }
%struct.iovec = type { ptr, i64 }

@dmg_uncompress_bz2 = dso_local local_unnamed_addr global ptr null, align 8
@dmg_uncompress_lzfse = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [4 x i8] c"dmg\00", align 1
@bdrv_dmg = internal global { ptr, i32, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, i32 232, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, [6 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmg_open, ptr @dmg_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmg_refresh_limits, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdrv_default_perms, ptr null, ptr null, %struct.anon zeroinitializer, ptr @dmg_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmg_co_preadv, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"qemu_in_main_thread()\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"../block/dmg.c\00", align 1
@__PRETTY_FUNCTION__.dmg_open = private unnamed_addr constant [57 x i8] c"int dmg_open(BlockDriverState *, QDict *, int, Error **)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"block-\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dmg-bz2\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"dmg-lzfse\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@__func__.dmg_find_koly_offset = private unnamed_addr constant [21 x i8] c"dmg_find_koly_offset\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Failed to get file size while reading UDIF trailer\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"dmg file must be at least 512 bytes long\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed while reading UDIF trailer\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Could not locate UDIF trailer in dmg file\00", align 1
@dmg_read_mish_block.print_once_ = internal global i8 0, align 1
@.str.13 = private unnamed_addr constant [89 x i8] c"dmg-bzip2 module is missing, accessing bzip2 compressed blocks will result in I/O errors\00", align 1
@dmg_read_mish_block.print_once_.14 = internal global i8 0, align 1
@.str.15 = private unnamed_addr constant [89 x i8] c"dmg-lzfse module is missing, accessing lzfse compressed blocks will result in I/O errors\00", align 1
@dmg_read_mish_block.print_once_.16 = internal global i8 0, align 1
@.str.17 = private unnamed_addr constant [83 x i8] c"Image contains chunks of unknown type %x, accessing them will result in I/O errors\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"sector count %lu for chunk %u is larger than max (%u)\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"length %lu for chunk %u is larger than max (%u)\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"length %lu for chunk %u is inconsistent with sector count %lu\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"<data>\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"</data>\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c".dmg\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"QEMU_IS_ALIGNED(offset, BDRV_SECTOR_SIZE)\00", align 1
@__PRETTY_FUNCTION__.dmg_co_preadv = private unnamed_addr constant [90 x i8] c"int dmg_co_preadv(BlockDriverState *, int64_t, int64_t, QEMUIOVector *, BdrvRequestFlags)\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"QEMU_IS_ALIGNED(bytes, BDRV_SECTOR_SIZE)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_bdrv_dmg_init, ptr null }]
@.str.26 = private unnamed_addr constant [13 x i8] c"coroutine_fn\00", section "llvm.metadata"
@.str.27 = private unnamed_addr constant [15 x i8] c"../block/dmg.c\00", section "llvm.metadata"
@.str.28 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.29 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-io.h\00", section "llvm.metadata"
@.str.30 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@.str.31 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/coroutine-core.h\00", section "llvm.metadata"
@.str.32 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/qemu/qemu/include/block/block_int-io.h\00", section "llvm.metadata"
@llvm.global.annotations = appending global [10 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @dmg_co_preadv, ptr @.str.26, ptr @.str.27, i32 763, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_getlength, ptr @.str.28, ptr @.str.29, i32 86, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_getlength, ptr @.str.30, ptr @.str.29, i32 86, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.28, ptr @.str.29, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.30, ptr @.str.29, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_mutex_lock, ptr @.str.26, ptr @.str.31, i32 146, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @dmg_read_chunk, ptr @.str.26, ptr @.str.27, i32 655, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_mutex_unlock, ptr @.str.26, ptr @.str.31, i32 152, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pread, ptr @.str.26, ptr @.str.32, i32 60, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_preadv, ptr @.str.26, ptr @.str.32, i32 47, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_bdrv_dmg_init() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @bdrv_dmg_init, i32 noundef 1) #11
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bdrv_dmg_init() #0 {
bb.a:
  tail call void @bdrv_register(ptr noundef nonnull @bdrv_dmg) #11
  ret void
}

declare void @bdrv_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @dmg_open(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [515 x i8], align 16              ; 9 uses
  %4 = alloca %struct.DmgHeaderState, align 8     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.i = tail call zeroext i1 @qemu_in_main_thread() #11
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 474, ptr noundef nonnull @__PRETTY_FUNCTION__.dmg_open) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @bdrv_graph_rdlock_main_loop() #11
  %i.j = tail call i32 @bdrv_apply_auto_read_only(ptr noundef nonnull %0, ptr noundef null, ptr noundef %3) #11 ; 2 uses
  tail call void @bdrv_graph_rdunlock_main_loop() #11
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @bdrv_open_file_child(ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %0, ptr noundef %3) #11 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @bdrv_graph_rdlock_main_loop() #11
  %i.n = tail call i32 @module_load(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %3) #11
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @module_load(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef %3) #11
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 9 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.ab = tail call i64 @bdrv_getlength(ptr noundef %i.aa) #11 ; 6 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = sub i32 0, %i.ad
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 165, ptr noundef nonnull @__func__.dmg_find_koly_offset, i32 noundef %i.ae, ptr noundef nonnull @.str.9) #11
  br label %dmg_find_koly_offset.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.af = icmp samesign ult i64 %i.ab, 512
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 168, ptr noundef nonnull @__func__.dmg_find_koly_offset, ptr noundef nonnull @.str.10) #11
  br label %dmg_find_koly_offset.exit.thread

bb.k:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(515) %i.f, i8 0, i64 515, i1 false), !annotation !7
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ab, i64 1023) ; 2 uses
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 515) ; 2 uses
  %i.ah = call i32 @bdrv_pread(ptr noundef nonnull %i.z, i64 noundef %spec.select.i, i64 noundef %i.ag, ptr noundef nonnull %i.f, i32 noundef 0) #11 ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.aj = add nsw i64 %i.ag, -3
  br label %.lr.ph.i

bb.l:                                             ; preds = %bb.k
  %i.ak = sub i32 0, %i.ah
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 177, ptr noundef nonnull @__func__.dmg_find_koly_offset, i32 noundef %i.ak, ptr noundef nonnull @.str.11) #11
  %i.al = zext i32 %i.ah to i64
  br label %dmg_find_koly_offset.exit.thread

.lr.ph.i:                                         ; preds = %.lr.ph._crit_edge.i, %.lr.ph.preheader.i
  %i.am = phi i64 [ %i.ar, %.lr.ph._crit_edge.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.035.i = phi i32 [ %i.aq, %.lr.ph._crit_edge.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %i.f, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %i.ao, 107
  %i.aq = add i32 %.035.i, 1                      ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  br i1 %i.ap, label %bb.m, label %.lr.ph._crit_edge.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds i8, ptr %i.f, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 111
  br i1 %i.au, label %bb.n, label %.lr.ph._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %5 = add i32 %.035.i, 2
  %6 = sext i32 %5 to i64
  %i.av = getelementptr inbounds i8, ptr %i.f, i64 %6
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 108
  br i1 %i.ax, label %bb.o, label %.lr.ph._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %7 = add i32 %.035.i, 3
  %8 = sext i32 %7 to i64
  %i.ay = getelementptr inbounds i8, ptr %i.f, i64 %8
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = icmp eq i8 %i.az, 121
  br i1 %i.ba, label %dmg_find_koly_offset.exit, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph.i
  %i.bb = icmp sgt i64 %i.aj, %i.ar
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph._crit_edge.i
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 186, ptr noundef nonnull @__func__.dmg_find_koly_offset, ptr noundef nonnull @.str.12) #11
  br label %dmg_find_koly_offset.exit.thread

dmg_find_koly_offset.exit.thread:                 ; preds = %bb.h, %bb.j, %bb.l, %._crit_edge.i
  %.030.i.ph = phi i64 [ -22, %._crit_edge.i ], [ %i.al, %bb.l ], [ -22, %bb.j ], [ %i.ab, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %bb.p

dmg_find_koly_offset.exit:                        ; preds = %bb.o
  %i.bc = add i64 %i.am, %spec.select.i           ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %dmg_find_koly_offset.exit.thread, %dmg_find_koly_offset.exit
  %.030.i116 = phi i64 [ %.030.i.ph, %dmg_find_koly_offset.exit.thread ], [ %i.bc, %dmg_find_koly_offset.exit ]
  %i.be = trunc i64 %.030.i116 to i32
  br label %bb.ai

bb.q:                                             ; preds = %dmg_find_koly_offset.exit
  %i.bf = add nuw i64 %i.bc, 24
  %.val94 = load ptr, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 0, ptr %i.e, align 8, !annotation !7
  %i.bg = call i32 @bdrv_pread(ptr noundef %.val94, i64 noundef range(i64 24, -9223372036854775316) %i.bf, i64 noundef 8, ptr noundef nonnull %i.e, i32 noundef 0) #11 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %read_uint64.exit.thread, label %bb.r

read_uint64.exit.thread:                          ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.ai

bb.r:                                             ; preds = %bb.q
  store i64 0, ptr %4, align 8, !annotation !7
  %i.bi = load i64, ptr %i.e, align 8
  %i.bj = call noundef i64 @llvm.bswap.i64(i64 %i.bi) ; 2 uses
  store i64 %i.bj, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  %i.bk = icmp ugt i64 %i.bj, %i.bc
  br i1 %i.bk, label %bb.ai, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = add nuw i64 %i.bc, 40
  %.val93 = load ptr, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 0, ptr %i.d, align 8, !annotation !7
  %i.bm = call i32 @bdrv_pread(ptr noundef %.val93, i64 noundef range(i64 24, -9223372036854775316) %i.bl, i64 noundef 8, ptr noundef nonnull %i.d, i32 noundef 0) #11 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %read_uint64.exit97.thread, label %bb.t

read_uint64.exit97.thread:                        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.ai

bb.t:                                             ; preds = %bb.s
  %i.bo = load i64, ptr %i.d, align 8
  %i.bp = call noundef i64 @llvm.bswap.i64(i64 %i.bo) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.bq = add nuw i64 %i.bc, 48
  %.val92 = load ptr, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !annotation !7
  %i.br = call i32 @bdrv_pread(ptr noundef %.val92, i64 noundef range(i64 24, -9223372036854775316) %i.bq, i64 noundef 8, ptr noundef nonnull %i.c, i32 noundef 0) #11 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %read_uint64.exit99.thread, label %bb.u

read_uint64.exit99.thread:                        ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.bt = load i64, ptr %i.c, align 8             ; 2 uses
  %i.bu = call noundef i64 @llvm.bswap.i64(i64 %i.bt) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %.not = icmp uge i64 %i.bp, %i.bc
  %i.bv = sub nuw nsw i64 %i.bc, %i.bp
  %i.bw = icmp ugt i64 %i.bu, %i.bv
  %or.cond127 = select i1 %.not, i1 true, i1 %i.bw
  br i1 %or.cond127, label %bb.ai, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = add nuw i64 %i.bc, 216
  %.val91 = load ptr, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !annotation !7
  %i.by = call i32 @bdrv_pread(ptr noundef %.val91, i64 noundef range(i64 24, -9223372036854775316) %i.bx, i64 noundef 8, ptr noundef nonnull %i.b, i32 noundef 0) #11 ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %read_uint64.exit101.thread, label %bb.w

read_uint64.exit101.thread:                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.ca = load i64, ptr %i.b, align 8
  %i.cb = call noundef i64 @llvm.bswap.i64(i64 %i.ca) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.cc = add nuw i64 %i.bc, 224
  %.val90 = load ptr, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !7
  %i.cd = call i32 @bdrv_pread(ptr noundef %.val90, i64 noundef range(i64 24, -9223372036854775316) %i.cc, i64 noundef 8, ptr noundef nonnull %i.a, i32 noundef 0) #11 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %read_uint64.exit103.thread, label %bb.x

read_uint64.exit103.thread:                       ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.cf = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cg = call noundef i64 @llvm.bswap.i64(i64 %i.cf) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not86 = icmp uge i64 %i.cb, %i.bc
  %i.ch = sub nuw nsw i64 %i.bc, %i.cb
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  %or.cond129 = select i1 %.not86, i1 true, i1 %i.ci
  br i1 %or.cond129, label %bb.ai, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = add nuw i64 %i.bc, 492
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16880 ; 2 uses
  %.val = load ptr, ptr %i.y, align 8
  %i.cl = call fastcc i32 @read_uint64(ptr %.val, i64 noundef %i.cj, ptr noundef nonnull %i.ck) ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = load i64, ptr %i.ck, align 8
  %i.co = icmp slt i64 %i.cn, 0
  br i1 %i.co, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not87 = icmp eq i64 %i.bt, 0
  br i1 %.not87, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = call fastcc i32 @dmg_read_resource_fork(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %i.bp, i64 noundef %i.bu) ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.ai, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %.not88 = icmp eq i64 %i.cf, 0
  br i1 %.not88, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = call fastcc i32 @dmg_read_plist_xml(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %i.cb, i64 noundef %i.cg) ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.ct = load i32, ptr %i.r, align 8
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.y, align 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load i32, ptr %i.w, align 8
  %i.cy = add i32 %i.cx, 1
  %i.cz = zext i32 %i.cy to i64
  %i.da = call ptr @qemu_try_blockalign(ptr noundef %i.cw, i64 noundef %i.cz) #11
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = load ptr, ptr %i.y, align 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = load i32, ptr %i.x, align 4
  %i.df = shl i32 %i.de, 9
  %i.dg = zext i32 %i.df to i64
  %i.dh = call ptr @qemu_try_blockalign(ptr noundef %i.dd, i64 noundef %i.dg) #11 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr %i.dh, ptr %i.di, align 8
  %i.dj = load ptr, ptr %i.db, align 8
  %i.dk = icmp eq ptr %i.dj, null
  %i.dl = icmp eq ptr %i.dh, null
  %or.cond = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.dn = call i32 @inflateInit_(ptr noundef nonnull %i.dm, ptr noundef nonnull @.str.8, i32 noundef 112) #11
  %.not89 = icmp eq i32 %i.dn, 0
  br i1 %.not89, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.do = load i32, ptr %i.r, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 %i.do, ptr %i.dp, align 8
  call void @qemu_co_mutex_init(ptr noundef nonnull %i.h) #11
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

end_hunk_0
