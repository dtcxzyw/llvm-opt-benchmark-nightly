Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qcow?download=true
inline.NumInlined: 31
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.17 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"../block/qcow.c\00", align 1
@__func__.qcow_open = private unnamed_addr constant [10 x i8] c"qcow_open\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Image not in qcow format\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"qcow (v%d) does not support qcow version %u\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Try the 'qcow2' driver instead.\0A\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"Image size is too small (must be at least 2 bytes)\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"Cluster size must be between 512 and 64k\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"L2 table size must be between 512 and 64k\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"Use of AES-CBC encrypted qcow images is no longer supported in system emulators\00", align 1
@.str.27 = private unnamed_addr constant [153 x i8] c"You can use 'qemu-img convert' to convert your image to an alternative supported format, such as unencrypted qcow, or raw with the LUKS format instead.\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"Header reported 'aes' encryption format but options specify '%s'\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"invalid encryption method in qcow header\00", align 1
@.str.31 = private unnamed_addr constant [65 x i8] c"No encryption in image header, but options specified format '%s'\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Image too large\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"Could not allocate memory for L1 table\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"Could not allocate L2 table cache\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"Backing file name too long\00", align 1
@.str.36 = private unnamed_addr constant [66 x i8] c"The qcow format used by node '%s' does not support live migration\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"!obj || obj->base.refcnt\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/qemu/qemu/include/qobject/qobject.h\00", align 1
@__PRETTY_FUNCTION__.qobject_unref_impl = private unnamed_addr constant [35 x i8] c"void qobject_unref_impl(QObject *)\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"opts->driver == BLOCKDEV_DRIVER_QCOW\00", align 1
@__PRETTY_FUNCTION__.qcow_co_create = private unnamed_addr constant [54 x i8] c"int qcow_co_create(BlockdevCreateOptions *, Error **)\00", align 1
@__func__.qcow_co_create = private unnamed_addr constant [15 x i8] c"qcow_co_create\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"Image size is too small, cannot be zero length\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Unsupported encryption format\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"fat:\00", align 1
@qcow_co_create_opts.opt_renames = internal constant [3 x %struct.QDictRenames] [%struct.QDictRenames { ptr @.str.5, ptr @.str.43 }, %struct.QDictRenames { ptr @.str.9, ptr @.str.11 }, %struct.QDictRenames zeroinitializer], align 16
@.str.43 = private unnamed_addr constant [13 x i8] c"backing-file\00", align 1
@__func__.qcow_co_create_opts = private unnamed_addr constant [20 x i8] c"qcow_co_create_opts\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"unrecognized backing format '%s'\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"create_options->driver == BLOCKDEV_DRIVER_QCOW\00", align 1
@__PRETTY_FUNCTION__.qcow_co_create_opts = private unnamed_addr constant [75 x i8] c"int qcow_co_create_opts(BlockDriver *, const char *, QemuOpts *, Error **)\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"s->crypto\00", align 1
@__PRETTY_FUNCTION__.qcow_co_preadv = private unnamed_addr constant [91 x i8] c"int qcow_co_preadv(BlockDriverState *, int64_t, int64_t, QEMUIOVector *, BdrvRequestFlags)\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"QEMU_IS_ALIGNED(n_start | n_end, BDRV_SECTOR_SIZE)\00", align 1
@__PRETTY_FUNCTION__.get_cluster_offset = private unnamed_addr constant [85 x i8] c"int get_cluster_offset(BlockDriverState *, uint64_t, int, int, int, int, uint64_t *)\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@__PRETTY_FUNCTION__.qcow_co_pwritev = private unnamed_addr constant [92 x i8] c"int qcow_co_pwritev(BlockDriverState *, int64_t, int64_t, QEMUIOVector *, BdrvRequestFlags)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_bdrv_qcow_init, ptr null }]
@.str.52 = private unnamed_addr constant [13 x i8] c"coroutine_fn\00", section "llvm.metadata"
@.str.53 = private unnamed_addr constant [16 x i8] c"../block/qcow.c\00", section "llvm.metadata"
@.str.54 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.55 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-io.h\00", section "llvm.metadata"
@.str.56 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@.str.57 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-global-state.h\00", section "llvm.metadata"
@.str.58 = private unnamed_addr constant [70 x i8] c"/opt-bench/work/qemu/qemu/include/system/block-backend-global-state.h\00", section "llvm.metadata"
@.str.59 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/qemu/qemu/include/system/block-backend-io.h\00", section "llvm.metadata"
@.str.60 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/coroutine-core.h\00", section "llvm.metadata"
@.str.61 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/qemu/qemu/include/block/block_int-io.h\00", section "llvm.metadata"
@llvm.global.annotations = appending global [32 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @qcow_co_create, ptr @.str.52, ptr @.str.53, i32 811, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qcow_co_create_opts, ptr @.str.52, ptr @.str.53, i32 932, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qcow_co_preadv, ptr @.str.52, ptr @.str.53, i32 629, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qcow_co_pwritev, ptr @.str.52, ptr @.str.53, i32 725, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qcow_co_block_status, ptr @.str.52, ptr @.str.53, i32 533, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qcow_co_pwritev_compressed, ptr @.str.52, ptr @.str.53, i32 1055, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qcow_co_get_info, ptr @.str.52, ptr @.str.53, i32 1138, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.54, ptr @.str.55, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.56, ptr @.str.55, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_open_blockdev_ref, ptr @.str.52, ptr @.str.57, i32 106, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_new_with_bs, ptr @.str.52, ptr @.str.58, i32 32, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_pwrite, ptr @.str.52, ptr @.str.59, i32 172, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_unref, ptr @.str.52, ptr @.str.58, i32 47, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_unref, ptr @.str.52, ptr @.str.57, i32 250, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_create_file, ptr @.str.52, ptr @.str.57, i32 70, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_open, ptr @.str.52, ptr @.str.57, i32 120, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pwrite_sync, ptr @.str.54, ptr @.str.55, i32 61, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pwrite_sync, ptr @.str.56, ptr @.str.55, i32 61, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_truncate, ptr @.str.54, ptr @.str.55, i32 364, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_truncate, ptr @.str.56, ptr @.str.55, i32 364, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_mutex_lock, ptr @.str.52, ptr @.str.60, i32 146, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @get_cluster_offset, ptr @.str.52, ptr @.str.53, i32 359, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_mutex_unlock, ptr @.str.52, ptr @.str.60, i32 152, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_debug_event, ptr @.str.52, ptr @.str.55, i32 246, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pread, ptr @.str.52, ptr @.str.61, i32 60, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @decompress_cluster, ptr @.str.52, ptr @.str.53, i32 596, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_getlength, ptr @.str.52, ptr @.str.55, i32 85, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pwrite_sync, ptr @.str.52, ptr @.str.55, i32 65, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pwrite, ptr @.str.52, ptr @.str.61, i32 70, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_truncate, ptr @.str.52, ptr @.str.55, i32 79, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pwritev, ptr @.str.52, ptr @.str.61, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_preadv, ptr @.str.52, ptr @.str.61, i32 47, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_bdrv_qcow_init() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @bdrv_qcow_init, i32 noundef 1) #14
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bdrv_qcow_init() #0 {
bb.a:
  tail call void @bdrv_register(ptr noundef nonnull @bdrv_qcow) #14
  ret void
}

declare void @bdrv_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @qcow_reopen_prepare(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @qcow_open(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.QCowHeader, align 4         ; 15 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i64 48, i1 false), !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8
  call void @qdict_extract_subqdict(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.16) #14
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = call ptr @qdict_get_try_str(ptr noundef %i.d, ptr noundef nonnull @.str.17) #14 ; 5 uses
  %i.f = call i32 @bdrv_open_file_child(ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %0, ptr noundef %3) #14 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @bdrv_graph_rdlock_main_loop() #14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i32 @bdrv_pread(ptr noundef %i.i, i64 noundef 0, i64 noundef 48, ptr noundef nonnull %4, i32 noundef 0) #14 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %4, align 4                ; 2 uses
  %i.m = call noundef i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.m, ptr %4, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 2 uses
  store i32 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 4
  %i.s = call noundef i64 @llvm.bswap.i64(i64 %i.r)
  store i64 %i.s, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = call noundef i32 @llvm.bswap.i32(i32 %i.u)
  store i32 %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = call noundef i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 4
  %i.ab = call noundef i64 @llvm.bswap.i64(i64 %i.aa) ; 3 uses
  store i64 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = call noundef i32 @llvm.bswap.i32(i32 %i.ad) ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 4
  %i.ah = call noundef i64 @llvm.bswap.i64(i64 %i.ag)
  store i64 %i.ah, ptr %i.af, align 4
  %.not = icmp eq i32 %i.l, -79083951
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 146, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.20) #14
  br label %bb.ao

bb.e:                                             ; preds = %bb.c
  %.not170 = icmp eq i32 %i.o, 16777216
  br i1 %.not170, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 152, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef %i.p) #14
  %i.ai = load i32, ptr %i.n, align 4
  %i.aj = and i32 %i.ai, -2
  %or.cond = icmp eq i32 %i.aj, 2
  br i1 %or.cond, label %bb.g, label %bb.ao

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @error_append_hint(ptr noundef %3, ptr noundef nonnull @.str.22) #14
  br label %bb.ao

bb.h:                                             ; preds = %bb.e
  %i.ak = icmp ult i64 %i.ab, 2
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 162, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.23) #14
  br label %bb.ao

bb.j:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4             ; 2 uses
  %i.an = add i8 %i.am, -17
  %or.cond6 = icmp ult i8 %i.an, -8
  br i1 %or.cond6, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 167, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.24) #14
  br label %bb.ao

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 33 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %i.aq = add i8 %i.ap, -14
  %or.cond10 = icmp ult i8 %i.aq, -8
  br i1 %or.cond10, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 175, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.25) #14
  br label %bb.ao

bb.n:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  store i32 %i.ae, ptr %i.ar, align 8
  %.not171 = icmp eq i32 %i.ad, 0
  br i1 %.not171, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = call zeroext i1 @bdrv_uses_whitelist() #14
  %i.at = load i32, ptr %i.ar, align 8
  %i.au = icmp eq i32 %i.at, 1                    ; 2 uses
  br i1 %i.as, label %bb.p, label %5

bb.p:                                             ; preds = %bb.o
  br i1 %i.au, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 186, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.26) #14
  call void (ptr, ptr, ...) @error_append_hint(ptr noundef %3, ptr noundef nonnull @.str.27) #14
  br label %bb.ao

5:                                                ; preds = %bb.o
  br i1 %i.au, label %bb.r, label %.thread

bb.r:                                             ; preds = %5
  %.not173 = icmp eq ptr %i.e, null
  br i1 %.not173, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(4) @.str.28) #15
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 199, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.e) #14
  br label %bb.ao

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.ax = load ptr, ptr %i.a, align 8
  call void @qdict_put_str(ptr noundef %i.ax, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str) #14
  %i.ay = load ptr, ptr %i.a, align 8
  %i.az = call ptr @block_crypto_open_opts_init(ptr noundef %i.ay, ptr noundef %3) #14 ; 4 uses
  %.not174 = icmp eq ptr %i.az, null
  br i1 %.not174, label %bb.ao, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = lshr i32 %2, 16
  %.lobit = and i32 %i.ba, 1
  %i.bb = call ptr @qcrypto_block_open(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef %.lobit, ptr noundef %3) #14 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store ptr %i.bb, ptr %i.bc, align 8
  %.not176 = icmp eq ptr %i.bb, null
  br i1 %.not176, label %bb.ao, label %bb.w

.thread:                                          ; preds = %bb.p, %5
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 220, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.30) #14
  br label %bb.ao

bb.w:                                             ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %i.bd, align 4
  %.pre = load i8, ptr %i.al, align 4
  %.pre188 = load i8, ptr %i.ao, align 1
  %.pre189 = load i64, ptr %i.z, align 4
  br label %bb.z

bb.x:                                             ; preds = %bb.n
  %.not172 = icmp eq ptr %i.e, null
  br i1 %.not172, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 228, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.e) #14
  br label %bb.ao

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.be = phi i64 [ %.pre189, %bb.w ], [ %i.ab, %bb.x ] ; 3 uses
  %i.bf = phi i8 [ %.pre188, %bb.w ], [ %i.ap, %bb.x ]
  %i.bg = phi i8 [ %.pre, %bb.w ], [ %i.am, %bb.x ]
  %.0147 = phi ptr [ %i.az, %bb.w ], [ null, %bb.x ] ; 9 uses
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  store i32 %i.bh, ptr %i.c, align 8
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  store i32 %i.bi, ptr %i.bj, align 4
  %i.bk = zext i8 %i.bf to i32                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 %i.bk, ptr %i.bl, align 8
  %i.bm = shl nuw i32 1, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = lshr i64 %i.be, 9
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16880
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = load i32, ptr %i.c, align 8             ; 2 uses
  %i.br = sub i32 63, %i.bq
  %i.bs = zext nneg i32 %i.br to i64
  %notmask = shl nsw i64 -1, %i.bs
  %i.bt = xor i64 %notmask, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = load i32, ptr %i.bl, align 8
  %i.bw = add i32 %i.bv, %i.bq
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = shl nuw i64 1, %i.bx                    ; 2 uses
  %i.bz = xor i64 %i.by, -1
  %i.ca = icmp ugt i64 %i.be, %i.bz
  br i1 %i.ca, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 243, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.32) #14
  br label %bb.ao

bb.ab:                                            ; preds = %bb.z
  %i.cb = add i64 %i.be, -1
  %i.cc = add i64 %i.cb, %i.by
  %i.cd = lshr i64 %i.cc, %i.bx                   ; 3 uses
  %i.ce = icmp ugt i64 %i.cd, 268435455
  br i1 %i.ce, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 249, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.32) #14
  br label %bb.ao

bb.ad:                                            ; preds = %bb.ab
  %i.cf = trunc nuw nsw i64 %i.cd to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i32 %i.cf, ptr %i.cg, align 8
  %i.ch = load i64, ptr %i.af, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ch, ptr %i.ci, align 8
  %i.cj = call noalias ptr @g_try_malloc_n(i64 noundef %i.cd, i64 noundef 8) #16 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8
  %i.cl = icmp eq ptr %i.cj, null
  br i1 %i.cl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 259, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.33) #14
  br label %bb.ao

bb.af:                                            ; preds = %bb.ad
  %i.cm = load ptr, ptr %i.h, align 8
  %i.cn = load i64, ptr %i.ci, align 8
  %i.co = load i32, ptr %i.cg, align 8
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = call i32 @bdrv_pread(ptr noundef %i.cm, i64 noundef %i.cn, i64 noundef %i.cq, ptr noundef nonnull %i.cj, i32 noundef 0) #14 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.ao, label %.preheader

.preheader:                                       ; preds = %bb.af
  %i.ct = load i32, ptr %i.cg, align 8
  %.not186 = icmp eq i32 %i.ct, 0
  br i1 %.not186, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.cu = load ptr, ptr %i.ck, align 8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = call noundef i64 @llvm.bswap.i64(i64 %i.cw)
  store i64 %i.cx, ptr %i.cv, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.cg, align 8
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.db = load ptr, ptr %i.h, align 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load i32, ptr %i.bn, align 4
  %i.de = shl i32 %i.dd, 4
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 3
  %i.dh = call ptr @qemu_try_blockalign(ptr noundef %i.dc, i64 noundef %i.dg) #14 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.dh, ptr %i.di, align 8
  %i.dj = icmp eq ptr %i.dh, null
  br i1 %i.dj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 279, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.34) #14
  br label %bb.ao

bb.ah:                                            ; preds = %._crit_edge
  %i.dk = load i32, ptr %i.bj, align 4
  %i.dl = sext i32 %i.dk to i64
  %i.dm = call noalias ptr @g_malloc(i64 noundef %i.dl) #17
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store ptr %i.dm, ptr %i.dn, align 8
  %i.do = load i32, ptr %i.bj, align 4
  %i.dp = sext i32 %i.do to i64
  %i.dq = call noalias ptr @g_malloc(i64 noundef %i.dp) #17
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr %i.dq, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store i64 -1, ptr %i.ds, align 8
  %i.dt = load i64, ptr %i.q, align 4             ; 2 uses
  %.not177 = icmp eq i64 %i.dt, 0
  br i1 %.not177, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.du = load i32, ptr %i.t, align 4             ; 2 uses
  %i.dv = icmp ugt i32 %i.du, 1023
  %i.dw = zext i32 %i.du to i64                   ; 2 uses
  br i1 %i.dv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 291, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.35) #14
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.dx = load ptr, ptr %i.h, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8241 ; 3 uses
  %i.dz = call i32 @bdrv_pread(ptr noundef %i.dx, i64 noundef %i.dt, i64 noundef %i.dw, ptr noundef nonnull %i.dy, i32 noundef 0) #14 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 0, ptr %i.eb, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4145
  call void @pstrcpy(ptr noundef nonnull %i.ec, i32 noundef 4096, ptr noundef nonnull %i.dy) #14
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ah
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  %i.ee = call ptr @bdrv_get_device_or_node_name(ptr noundef nonnull %0) #14
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.19, i32 noundef 308, ptr noundef nonnull @__func__.qcow_open, ptr noundef nonnull @.str.36, ptr noundef %i.ee) #14
  %i.ef = call i32 @migrate_add_blocker_normal(ptr noundef nonnull %i.ed, ptr noundef %3) #14 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eh = load ptr, ptr %i.a, align 8
  call fastcc void @qobject_unref_impl(ptr noundef %i.eh)
  call void @qapi_free_QCryptoBlockOpenOptions(ptr noundef %.0147) #14
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  call void @qemu_co_mutex_init(ptr noundef nonnull %i.ei) #14
  call void @bdrv_graph_rdunlock_main_loop() #14
  br label %bb.au

bb.ao:                                            ; preds = %bb.ac, %bb.v, %bb.u, %bb.g, %bb.f, %bb.am, %bb.ak, %bb.af, %bb.b, %bb.aj, %bb.ag, %bb.ae, %bb.aa, %bb.y, %.thread, %bb.t, %bb.q, %bb.m, %bb.k, %bb.i, %bb.d
  %.1148 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.y ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.q ], [ %.0147, %bb.aa ], [ %.0147, %bb.ae ], [ %.0147, %bb.af ], [ %.0147, %bb.ag ], [ %.0147, %bb.aj ], [ %.0147, %bb.ak ], [ %.0147, %bb.am ], [ %.0147, %bb.ac ], [ null, %bb.u ], [ null, %bb.g ], [ null, %bb.t ], [ null, %.thread ], [ null, %bb.f ], [ %i.az, %bb.v ]
  %.1 = phi i32 [ %i.j, %bb.b ], [ -22, %bb.d ], [ -22, %bb.y ], [ -22, %bb.i ], [ -22, %bb.k ], [ -22, %bb.m ], [ -38, %bb.q ], [ -22, %bb.aa ], [ -12, %bb.ae ], [ %i.cr, %bb.af ], [ -12, %bb.ag ], [ -22, %bb.aj ], [ %i.dz, %bb.ak ], [ %i.ef, %bb.am ], [ -22, %bb.ac ], [ -22, %bb.u ], [ -95, %bb.g ], [ -22, %bb.t ], [ -22, %.thread ], [ -95, %bb.f ], [ -22, %bb.v ]
  call void @bdrv_graph_rdunlock_main_loop() #14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %bb.ao
  %.2149 = phi ptr [ null, %bb.a ], [ %.1148, %bb.ao ]
  %.2 = phi i32 [ %i.f, %bb.a ], [ %.1, %bb.ao ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8
  call void @g_free(ptr noundef %i.ek) #14
end_hunk_0
