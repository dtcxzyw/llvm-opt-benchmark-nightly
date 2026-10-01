Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vmdk?download=true
inline.NumInlined: 149
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.72 = private unnamed_addr constant [26 x i8] c"Invalid extent line: %.*s\00", align 1
@.str.73 = private unnamed_addr constant [47 x i8] c"No write support for seSparse images available\00", align 1
@__func__.vmdk_open_se_sparse = private unnamed_addr constant [20 x i8] c"vmdk_open_se_sparse\00", align 1
@.str.74 = private unnamed_addr constant [43 x i8] c"Could not read const header from file '%s'\00", align 1
@.str.75 = private unnamed_addr constant [46 x i8] c"Could not read volatile header from file '%s'\00", align 1
@__func__.check_se_sparse_const_header = private unnamed_addr constant [29 x i8] c"check_se_sparse_const_header\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"Bad const header magic: 0x%016lx\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"Unsupported version: 0x%016lx\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"Unsupported grain size: %lu\00", align 1
@.str.79 = private unnamed_addr constant [34 x i8] c"Unsupported grain table size: %lu\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"Unsupported flags: 0x%016lx\00", align 1
@.str.81 = private unnamed_addr constant [63 x i8] c"Unsupported reserved bits: 0x%016lx 0x%016lx 0x%016lx 0x%016lx\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"Unsupported non-zero const header padding\00", align 1
@__func__.check_se_sparse_volatile_header = private unnamed_addr constant [32 x i8] c"check_se_sparse_volatile_header\00", align 1
@.str.83 = private unnamed_addr constant [36 x i8] c"Bad volatile header magic: 0x%016lx\00", align 1
@.str.84 = private unnamed_addr constant [48 x i8] c"Image is dirty, Replaying journal not supported\00", align 1
@.str.85 = private unnamed_addr constant [45 x i8] c"Unsupported non-zero volatile header padding\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"parentFileNameHint\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"parentCID\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"CID\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@__func__.vmdk_co_create = private unnamed_addr constant [15 x i8] c"vmdk_co_create\00", align 1
@.str.90 = private unnamed_addr constant [43 x i8] c"Image size must be a multiple of 512 bytes\00", align 1
@__const.vmdk_co_do_create.desc_template = private unnamed_addr constant [283 x i8] c"# Disk DescriptorFile\0Aversion=1\0ACID=%x\0AparentCID=%x\0AcreateType=\22%s\22\0A%s\0A# Extent description\0A%s\0A# The Disk Data Base\0A#DDB\0A\0Addb.virtualHWVersion = \22%s\22\0Addb.geometry.cylinders = \22%ld\22\0Addb.geometry.heads = \22%u\22\0Addb.geometry.sectors = \2263\22\0Addb.adapterType = \22%s\22\0Addb.toolsVersion = \22%s\22\0A\00", align 16
@__func__.vmdk_co_do_create = private unnamed_addr constant [18 x i8] c"vmdk_co_do_create\00", align 1
@.str.91 = private unnamed_addr constant [45 x i8] c"compat6 cannot be enabled with hwversion set\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"2147483647\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"RW %ld FLAT \22%s\22 0\0A\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"RW %ld SPARSE \22%s\22\0A\00", align 1
@.str.97 = private unnamed_addr constant [35 x i8] c"Flat image can't have backing file\00", align 1
@.str.98 = private unnamed_addr constant [37 x i8] c"Flat image can't enable zeroed grain\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"full_backing\00", align 1
@__PRETTY_FUNCTION__.vmdk_co_do_create = private unnamed_addr constant [176 x i8] c"int vmdk_co_do_create(int64_t, BlockdevVmdkSubformat, BlockdevVmdkAdapterType, const char *, const char *, const char *, _Bool, _Bool, vmdk_create_extent_fn, void *, Error **)\00", align 1
@.str.100 = private unnamed_addr constant [46 x i8] c"Invalid backing file format: %s. Must be vmdk\00", align 1
@.str.101 = private unnamed_addr constant [26 x i8] c"Failed to read parent CID\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"parentFileNameHint=\22%s\22\00", align 1
@.str.103 = private unnamed_addr constant [40 x i8] c"List of extents contains unused extents\00", align 1
@BlockdevVmdkSubformat_lookup = external constant %struct.QEnumLookup, align 8
@BlockdevVmdkAdapterType_lookup = external constant %struct.QEnumLookup, align 8
@.str.104 = private unnamed_addr constant [28 x i8] c"Could not write description\00", align 1
@__func__.vmdk_co_create_cb = private unnamed_addr constant [18 x i8] c"vmdk_co_create_cb\00", align 1
@.str.105 = private unnamed_addr constant [26 x i8] c"Extent [%d] not specified\00", align 1
@__func__.vmdk_init_extent = private unnamed_addr constant [17 x i8] c"vmdk_init_extent\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"failed to write VMDK magic\00", align 1
@.str.107 = private unnamed_addr constant [28 x i8] c"failed to write VMDK header\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"failed to write VMDK grain directory\00", align 1
@.str.109 = private unnamed_addr constant [44 x i8] c"failed to write VMDK backup grain directory\00", align 1
@__func__.vmdk_co_create_opts = private unnamed_addr constant [20 x i8] c"vmdk_co_create_opts\00", align 1
@.str.110 = private unnamed_addr constant [34 x i8] c"backing_file must be a vmdk image\00", align 1
@__func__.filename_decompose = private unnamed_addr constant [19 x i8] c"filename_decompose\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"No filename provided\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"errp == NULL\00", align 1
@__PRETTY_FUNCTION__.vmdk_co_create_opts_cb = private unnamed_addr constant [97 x i8] c"BlockBackend *vmdk_co_create_opts_cb(int64_t, int, _Bool, _Bool, _Bool, _Bool, void *, Error **)\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"%s-%c%03d%s\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"idx == 1\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"%s-flat%s\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"backing\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"version=1\0A\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"version=2\0A\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"version=3\0A\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"version=1\0D\0A\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"version=2\0D\0A\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"version=3\0D\0A\00", align 1
@.str.124 = private unnamed_addr constant [39 x i8] c"extent->entry_size == sizeof(uint64_t)\00", align 1
@__PRETTY_FUNCTION__.get_cluster_offset = private unnamed_addr constant [122 x i8] c"int get_cluster_offset(BlockDriverState *, VmdkExtent *, VmdkMetaData *, uint64_t, _Bool, uint64_t *, uint64_t, uint64_t)\00", align 1
@.str.125 = private unnamed_addr constant [32 x i8] c"skip_end_bytes <= cluster_bytes\00", align 1
@__PRETTY_FUNCTION__.get_whole_cluster = private unnamed_addr constant [103 x i8] c"int get_whole_cluster(BlockDriverState *, VmdkExtent *, uint64_t, uint64_t, uint64_t, uint64_t, _Bool)\00", align 1
@.str.126 = private unnamed_addr constant [47 x i8] c"Wrong offset: offset=0x%lx total_sectors=0x%lx\00", align 1
@.str.127 = private unnamed_addr constant [57 x i8] c"Could not write to allocated cluster for streamOptimized\00", align 1
@.str.128 = private unnamed_addr constant [30 x i8] c"VMDK description file too big\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c"s->num_extents\00", align 1
@__PRETTY_FUNCTION__.vmdk_co_get_info = private unnamed_addr constant [60 x i8] c"int vmdk_co_get_info(BlockDriverState *, BlockDriverInfo *)\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.131 = private unnamed_addr constant [45 x i8] c"ERROR: could not find extent for sector %ld\0A\00", align 1
@.str.132 = private unnamed_addr constant [52 x i8] c"ERROR: could not get cluster_offset for sector %ld\0A\00", align 1
@.str.133 = private unnamed_addr constant [56 x i8] c"ERROR: could not get extent file length for sector %ld\0A\00", align 1
@.str.134 = private unnamed_addr constant [55 x i8] c"ERROR: cluster offset for sector %ld points after EOF\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @do_qemu_init_bdrv_vmdk_init, ptr null }]
@.str.135 = private unnamed_addr constant [13 x i8] c"coroutine_fn\00", section "llvm.metadata"
@.str.136 = private unnamed_addr constant [16 x i8] c"../block/vmdk.c\00", section "llvm.metadata"
@.str.137 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.138 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-io.h\00", section "llvm.metadata"
@.str.139 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@.str.140 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-global-state.h\00", section "llvm.metadata"
@.str.141 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/qemu/qemu/include/block/graph-lock.h\00", section "llvm.metadata"
@.str.142 = private unnamed_addr constant [70 x i8] c"/opt-bench/work/qemu/qemu/include/system/block-backend-global-state.h\00", section "llvm.metadata"
@.str.143 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/qemu/qemu/include/system/block-backend-io.h\00", section "llvm.metadata"
@.str.144 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/coroutine-core.h\00", section "llvm.metadata"
@.str.145 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/qemu/qemu/include/block/block_int-io.h\00", section "llvm.metadata"
@llvm.global.annotations = appending global [55 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_create, ptr @.str.135, ptr @.str.136, i32 2863, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_create_opts, ptr @.str.135, ptr @.str.136, i32 2703, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_preadv, ptr @.str.135, ptr @.str.136, i32 1980, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_pwritev, ptr @.str.135, ptr @.str.136, i32 2160, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_pwrite_zeroes, ptr @.str.135, ptr @.str.136, i32 2200, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_block_status, ptr @.str.135, ptr @.str.136, i32 1782, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_get_allocated_file_size, ptr @.str.135, ptr @.str.136, i32 2898, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_pwritev_compressed, ptr @.str.135, ptr @.str.136, i32 2172, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_get_info, ptr @.str.135, ptr @.str.136, i32 3053, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_check, ptr @.str.135, ptr @.str.136, i32 2958, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_getlength, ptr @.str.137, ptr @.str.138, i32 86, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_getlength, ptr @.str.139, ptr @.str.138, i32 86, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.137, ptr @.str.138, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.139, ptr @.str.138, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_nb_sectors, ptr @.str.139, ptr @.str.138, i32 83, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_open_child, ptr @.str.137, ptr @.str.140, i32 88, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_graph_wrlock_drained, ptr @.str.137, ptr @.str.141, i32 121, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_graph_wrunlock, ptr @.str.137, ptr @.str.141, i32 132, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_do_create, ptr @.str.135, ptr @.str.136, i32 2427, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_create_cb, ptr @.str.135, ptr @.str.136, i32 2812, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_new_open, ptr @.str.135, ptr @.str.142, i32 40, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_unref, ptr @.str.135, ptr @.str.142, i32 47, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_graph_co_rdlock, ptr @.str.135, ptr @.str.141, i32 157, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_graph_co_rdunlock, ptr @.str.135, ptr @.str.141, i32 166, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_pwrite, ptr @.str.135, ptr @.str.143, i32 172, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_truncate, ptr @.str.135, ptr @.str.143, i32 236, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_open_blockdev_ref, ptr @.str.135, ptr @.str.140, i32 106, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_new_with_bs, ptr @.str.135, ptr @.str.142, i32 32, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_unref, ptr @.str.135, ptr @.str.140, i32 250, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_init_extent, ptr @.str.135, ptr @.str.136, i32 2218, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_co_create_opts_cb, ptr @.str.135, ptr @.str.136, i32 2661, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_create_extent, ptr @.str.135, ptr @.str.136, i32 2330, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_create_file, ptr @.str.135, ptr @.str.140, i32 70, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_has_zero_init, ptr @.str.139, ptr @.str.140, i32 208, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_mutex_lock, ptr @.str.135, ptr @.str.144, i32 146, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @get_cluster_offset, ptr @.str.135, ptr @.str.136, i32 1585, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_is_cid_valid, ptr @.str.135, ptr @.str.136, i32 395, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_debug_event, ptr @.str.135, ptr @.str.138, i32 246, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_preadv, ptr @.str.135, ptr @.str.145, i32 47, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_read_extent, ptr @.str.135, ptr @.str.136, i32 1914, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_mutex_unlock, ptr @.str.135, ptr @.str.144, i32 152, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pread, ptr @.str.135, ptr @.str.145, i32 60, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @get_whole_cluster, ptr @.str.135, ptr @.str.136, i32 1454, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pwrite, ptr @.str.135, ptr @.str.145, i32 70, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pwritev, ptr @.str.135, ptr @.str.145, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_pwritev, ptr @.str.135, ptr @.str.136, i32 2062, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_L2update, ptr @.str.135, ptr @.str.136, i32 1533, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_write_extent, ptr @.str.135, ptr @.str.136, i32 1832, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @vmdk_write_cid, ptr @.str.135, ptr @.str.136, i32 346, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_flush, ptr @.str.135, ptr @.str.138, i32 112, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pwrite_sync, ptr @.str.135, ptr @.str.138, i32 65, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_get_allocated_file_size, ptr @.str.135, ptr @.str.138, i32 89, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_getlength, ptr @.str.135, ptr @.str.138, i32 85, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_truncate, ptr @.str.135, ptr @.str.138, i32 79, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_nb_sectors, ptr @.str.135, ptr @.str.138, i32 82, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_bdrv_vmdk_init() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @bdrv_vmdk_init, i32 noundef 1) #13
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @bdrv_vmdk_init() #0 {
bb.a:
  tail call void @bdrv_register(ptr noundef nonnull @bdrv_vmdk) #13
  ret void
}

declare void @bdrv_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @vmdk_reopen_prepare(ptr nofree noundef captures(address_is_null) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #13
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__.vmdk_reopen_prepare) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @bdrv_graph_rdlock_main_loop() #13
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__.vmdk_reopen_prepare) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %.not43 = icmp eq ptr %i.b, null
  br i1 %.not43, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 434, ptr noundef nonnull @__PRETTY_FUNCTION__.vmdk_reopen_prepare) #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, i32 noundef 435, ptr noundef nonnull @__PRETTY_FUNCTION__.vmdk_reopen_prepare) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = tail call noalias dereferenceable_or_null(8) ptr @g_malloc0(i64 noundef 8) #15 ; 3 uses
  store ptr %i.h, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 68 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noalias ptr @g_malloc(i64 noundef %i.k) #15
  store ptr %i.l, ptr %i.h, align 8
  %i.m = load i32, ptr %i.i, align 4
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %glib_autoptr_cleanup_GraphLockableMainloop.exit

.lr.ph:                                           ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw [272 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16832
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.r, %i.u
  %i.w = load ptr, ptr %i.h, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.y = zext i1 %i.v to i8
  store i8 %i.y, ptr %i.x, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.i, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.j, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, !llvm.loop !12

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %bb.j, %bb.i
  tail call void @bdrv_graph_rdunlock_main_loop() #13
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vmdk_reopen_commit(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call zeroext i1 @qemu_in_main_thread() #13
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 469, ptr noundef nonnull @__PRETTY_FUNCTION__.vmdk_reopen_commit) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @bdrv_graph_rdlock_main_loop() #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %glib_autoptr_cleanup_GraphLockableMainloop.exit

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi i32 [ %i.h, %.lr.ph ], [ %i.t, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %1 = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !range !9, !noundef !10
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16832
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw [272 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.q, ptr %i.s, align 8
  %.pre.a = load i32, ptr %i.g, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = phi i32 [ %i.k, %bb.d ], [ %.pre.a, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.d, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, !llvm.loop !13

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %bb.f, %bb.c
  %i.w = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  tail call void @g_free(ptr noundef %i.x) #13
  tail call void @g_free(ptr noundef nonnull %i.w) #13
  store ptr null, ptr %i.d, align 8
  tail call void @bdrv_graph_rdunlock_main_loop() #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vmdk_reopen_abort(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c) #13
  tail call void @g_free(ptr noundef nonnull %i.b) #13
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @vmdk_open(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = tail call i32 @bdrv_open_file_child(ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %0, ptr noundef %3) #13 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @bdrv_graph_rdlock_main_loop() #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call fastcc ptr @vmdk_read_desc(ptr noundef %i.h, i64 noundef 0, ptr noundef %3) ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load i32, ptr %i.i, align 1             ; 2 uses
  %i.j = tail call i32 @llvm.bswap.i32(i32 %.val)
  %i.k = load ptr, ptr %i.g, align 8              ; 2 uses
  switch i32 %i.j, label %bb.e [
    i32 1129273156, label %bb.d
    i32 1262767446, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.l = tail call fastcc i32 @vmdk_open_sparse(ptr noundef nonnull %0, ptr noundef %i.k, i32 noundef %2, i32 %.val, ptr noundef %1, ptr noundef %3)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 512, ptr %i.m, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, -2
  store i32 %i.p, ptr %i.n, align 8
  %i.q = load ptr, ptr %i.g, align 8
  %i.r = tail call i32 @bdrv_child_refresh_perms(ptr noundef nonnull %0, ptr noundef %i.q, ptr noundef nonnull @error_abort) #13 ; 0 uses
  %i.s = tail call fastcc i32 @vmdk_open_desc_file(ptr noundef nonnull %0, ptr noundef %i.i, ptr noundef %1, ptr noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.s, %bb.e ], [ %i.l, %bb.d ]  ; 2 uses
  %.not55 = icmp eq i32 %.0, 0
  br i1 %.not55, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = tail call noalias dereferenceable_or_null(10241) ptr @g_malloc0(i64 noundef 10241) #15 ; 4 uses
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call i32 @bdrv_pread(ptr noundef %i.v, i64 noundef %i.x, i64 noundef 10240, ptr noundef %i.u, i32 noundef 0) #13 ; 4 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %vmdk_parent_open.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.86) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %vmdk_parent_open.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 3 uses
  %i.ac = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ab, i32 noundef 34) #16 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %vmdk_parent_open.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 4095
  br i1 %i.ah, label %vmdk_parent_open.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8241 ; 2 uses
  %i.aj = trunc nuw nsw i64 %i.ag to i32
  %i.ak = add nuw nsw i32 %i.aj, 1
  tail call void @pstrcpy(ptr noundef nonnull %i.ai, i32 noundef %i.ak, ptr noundef nonnull %i.ab) #13
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4145
  tail call void @pstrcpy(ptr noundef nonnull %i.al, i32 noundef 4096, ptr noundef nonnull %i.ai) #13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12337
  tail call void @pstrcpy(ptr noundef nonnull %i.am, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %vmdk_parent_open.exit

vmdk_parent_open.exit.thread:                     ; preds = %bb.g, %bb.i, %bb.j
  %.1.i.ph = phi i32 [ -22, %bb.j ], [ -22, %bb.i ], [ %i.y, %bb.g ]
  tail call void @g_free(ptr noundef %i.u) #13
  br label %bb.t

vmdk_parent_open.exit:                            ; preds = %bb.h, %bb.k
  tail call void @g_free(ptr noundef nonnull %i.u) #13
  %.not56 = icmp eq i32 %i.y, 0
  br i1 %.not56, label %bb.l, label %bb.t

bb.l:                                             ; preds = %vmdk_parent_open.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !annotation !11
  %i.ao = load ptr, ptr %i.c, align 8
  %i.ap = tail call noalias dereferenceable_or_null(10240) ptr @g_malloc0(i64 noundef 10240) #15 ; 5 uses
  %i.aq = load ptr, ptr %i.g, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = tail call i32 @bdrv_pread(ptr noundef %i.aq, i64 noundef %i.as, i64 noundef 10240, ptr noundef %i.ap, i32 noundef 0) #13 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %vmdk_read_cid.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 10239
  store i8 0, ptr %i.av, align 1
  %i.aw = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.88) #16 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %vmdk_read_cid.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ay, ptr noundef nonnull @.str.89, ptr noundef nonnull %i.b) #13
  %.not19.i = icmp eq i32 %i.az, 1
  br i1 %.not19.i, label %bb.o, label %vmdk_read_cid.exit.thread

vmdk_read_cid.exit.thread:                        ; preds = %bb.l, %bb.m, %bb.n
  %.0.i.ph = phi i32 [ -22, %bb.n ], [ -22, %bb.m ], [ %i.at, %bb.l ]
  call void @g_free(ptr noundef %i.ap) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ba = load i32, ptr %i.b, align 4
  store i32 %i.ba, ptr %i.an, align 4
  call void @g_free(ptr noundef nonnull %i.ap) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = call noalias dereferenceable_or_null(10240) ptr @g_malloc0(i64 noundef 10240) #15 ; 5 uses
  %i.be = load ptr, ptr %i.g, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = call i32 @bdrv_pread(ptr noundef %i.be, i64 noundef %i.bg, i64 noundef 10240, ptr noundef %i.bd, i32 noundef 0) #13 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %vmdk_read_cid.exit63.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 10239
  store i8 0, ptr %i.bj, align 1
  %i.bk = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(1) @.str.87) #16 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %vmdk_read_cid.exit63.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  %i.bn = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.bm, ptr noundef nonnull @.str.89, ptr noundef nonnull %i.a) #13
  %.not19.i61 = icmp eq i32 %i.bn, 1
  br i1 %.not19.i61, label %bb.r, label %vmdk_read_cid.exit63.thread

vmdk_read_cid.exit63.thread:                      ; preds = %bb.o, %bb.p, %bb.q
  %.0.i62.ph = phi i32 [ -22, %bb.q ], [ -22, %bb.p ], [ %i.bh, %bb.o ]
  call void @g_free(ptr noundef %i.bd) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bo = load i32, ptr %i.a, align 4
  store i32 %i.bo, ptr %i.bb, align 4
  call void @g_free(ptr noundef nonnull %i.bd) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @qemu_co_mutex_init(ptr noundef nonnull %i.d) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
end_hunk_0
begin_hunk_1_@vmdk_co_create_opts:bb.a
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %.thread44.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 58) #16 ; 2 uses
  %.not42.i = icmp eq ptr %i.p, null
  br i1 %.not42.i, label %bb.k, label %.thread44.i

.thread44.i:                                      ; preds = %bb.i, %bb.h, %bb.g
  %.147.i = phi ptr [ %i.p, %bb.i ], [ %i.n, %bb.h ], [ %i.l, %bb.g ]
  %i.q = getelementptr inbounds nuw i8, ptr %.147.i, i64 1 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp ugt i64 %i.t, 4095
  br i1 %i.u, label %filename_decompose.exit.thread, label %bb.j

bb.j:                                             ; preds = %.thread44.i
  %i.v = trunc nuw nsw i64 %i.t to i32
  %i.w = add nuw nsw i32 %i.v, 1
  tail call void @pstrcpy(ptr noundef %i.b, i32 noundef %i.w, ptr noundef nonnull %1) #13
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i8 0, ptr %i.b, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i = phi ptr [ %i.q, %bb.j ], [ %1, %bb.k ]  ; 4 uses
  %i.x = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.2.i, i32 noundef 46) #16 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @pstrcpy(ptr noundef %i.c, i32 noundef 4096, ptr noundef nonnull %.2.i) #13
  store i8 0, ptr %i.d, align 1
  br label %filename_decompose.exit

bb.n:                                             ; preds = %bb.l
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %.2.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 4095
  br i1 %i.ac, label %filename_decompose.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = trunc nuw nsw i64 %i.ab to i32
  %i.ae = add nuw nsw i32 %i.ad, 1
  tail call void @pstrcpy(ptr noundef %i.c, i32 noundef %i.ae, ptr noundef nonnull %.2.i) #13
  tail call void @pstrcpy(ptr noundef %i.d, i32 noundef 4096, ptr noundef nonnull %i.x) #13
  br label %filename_decompose.exit

filename_decompose.exit:                          ; preds = %bb.o, %bb.m
  %i.af = tail call i64 @qemu_opt_get_size_del(ptr noundef %2, ptr noundef nonnull @.str.3, i64 noundef 0) #13
  %i.ag = add i64 %i.af, 511
  %i.ah = and i64 %i.ag, -512
  %i.ai = tail call ptr @qemu_opt_get_del(ptr noundef %2, ptr noundef nonnull @.str.5) #13 ; 5 uses
  %i.aj = tail call ptr @qemu_opt_get_del(ptr noundef %2, ptr noundef nonnull @.str.7) #13 ; 4 uses
  %i.ak = tail call ptr @qemu_opt_get_del(ptr noundef %2, ptr noundef nonnull @.str.14) #13 ; 3 uses
  %i.al = tail call ptr @qemu_opt_get_del(ptr noundef %2, ptr noundef nonnull @.str.17) #13 ; 4 uses
  %i.am = tail call zeroext i1 @qemu_opt_get_bool_del(ptr noundef %2, ptr noundef nonnull @.str.11, i1 noundef zeroext false) #13
  %i.an = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(10) @.str.16) #16
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %filename_decompose.exit
  tail call void @g_free(ptr noundef nonnull %i.ak) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %filename_decompose.exit
  %.057 = phi ptr [ null, %bb.p ], [ %i.ak, %filename_decompose.exit ] ; 4 uses
  %i.ap = tail call ptr @qemu_opt_get_del(ptr noundef %2, ptr noundef nonnull @.str.19) #13 ; 5 uses
  %i.aq = tail call zeroext i1 @qemu_opt_get_bool_del(ptr noundef %2, ptr noundef nonnull @.str.21, i1 noundef zeroext false) #13
  %.not66 = icmp eq ptr %i.ai, null
  br i1 %.not66, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = call i32 @qapi_enum_parse(ptr noundef nonnull @BlockdevVmdkAdapterType_lookup, ptr noundef nonnull %i.ai, i32 noundef 0, ptr noundef nonnull %i.a) #13
  %i.as = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not67 = icmp eq ptr %i.as, null
  br i1 %.not67, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @error_propagate(ptr noundef %3, ptr noundef nonnull %i.as) #13
  br label %filename_decompose.exit.thread

bb.t:                                             ; preds = %bb.q, %bb.r
  %.052 = phi i32 [ %i.ar, %bb.r ], [ 0, %bb.q ]
  %.not68 = icmp eq ptr %i.ap, null
  br i1 %.not68, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = call i32 @qapi_enum_parse(ptr noundef nonnull @BlockdevVmdkSubformat_lookup, ptr noundef nonnull %i.ap, i32 noundef 0, ptr noundef nonnull %i.a) #13
  %i.au = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not69 = icmp eq ptr %i.au, null
  br i1 %.not69, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @error_propagate(ptr noundef %3, ptr noundef nonnull %i.au) #13
  br label %filename_decompose.exit.thread

bb.w:                                             ; preds = %bb.t, %bb.u
  %.054 = phi i32 [ %i.at, %bb.u ], [ 0, %bb.t ]
  store ptr %i.b, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = call i32 @vmdk_co_do_create(i64 noundef %i.ah, i32 noundef %.054, i32 noundef %.052, ptr noundef %i.aj, ptr noundef %.057, ptr noundef %i.al, i1 noundef zeroext %i.am, i1 noundef zeroext %i.aq, ptr noundef nonnull @vmdk_co_create_opts_cb, ptr noundef nonnull %4, ptr noundef %3)
  br label %filename_decompose.exit.thread

filename_decompose.exit.thread:                   ; preds = %bb.n, %.thread44.i, %bb.f, %bb.w, %bb.v, %bb.s, %bb.c
  %.058 = phi ptr [ null, %bb.c ], [ %i.aj, %bb.w ], [ %i.aj, %bb.s ], [ %i.aj, %bb.v ], [ null, %bb.f ], [ null, %.thread44.i ], [ null, %bb.n ]
  %.1 = phi ptr [ null, %bb.c ], [ %.057, %bb.w ], [ %.057, %bb.s ], [ %.057, %bb.v ], [ null, %bb.f ], [ null, %.thread44.i ], [ null, %bb.n ]
  %.056 = phi ptr [ null, %bb.c ], [ %i.al, %bb.w ], [ %i.al, %bb.s ], [ %i.al, %bb.v ], [ null, %bb.f ], [ null, %.thread44.i ], [ null, %bb.n ]
  %.055 = phi ptr [ null, %bb.c ], [ %i.ap, %bb.w ], [ %i.ap, %bb.s ], [ %i.ap, %bb.v ], [ null, %bb.f ], [ null, %.thread44.i ], [ null, %bb.n ]
  %.053 = phi i32 [ -22, %bb.c ], [ %i.av, %bb.w ], [ -22, %bb.s ], [ -22, %bb.v ], [ -22, %bb.f ], [ -22, %.thread44.i ], [ -22, %bb.n ]
  %.0 = phi ptr [ null, %bb.c ], [ %i.ai, %bb.w ], [ %i.ai, %bb.s ], [ %i.ai, %bb.v ], [ null, %bb.f ], [ null, %.thread44.i ], [ null, %bb.n ]
  call void @g_free(ptr noundef %i.i) #13
  call void @g_free(ptr noundef %.0) #13
  call void @g_free(ptr noundef %.058) #13
  call void @g_free(ptr noundef %.1) #13
  call void @g_free(ptr noundef %.056) #13
  call void @g_free(ptr noundef %.055) #13
  call void @g_free(ptr noundef null) #13
  call void @g_free(ptr noundef %i.b) #13
  call void @g_free(ptr noundef %i.c) #13
  call void @g_free(ptr noundef %i.d) #13
  call void @g_free(ptr noundef %i.e) #13
  call void @g_free(ptr noundef %i.f) #13
  call void @g_free(ptr noundef %i.g) #13
  call void @g_free(ptr noundef %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.053
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vmdk_gather_child_options(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12360
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %qobject_ref_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i64 1 seq_cst, align 8 ; 0 uses
  br label %qobject_ref_impl.exit

qobject_ref_impl.exit:                            ; preds = %bb.a, %bb.b
  tail call void @qdict_put_obj(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %i.e) #13
  br i1 %2, label %bb.c, label %bb.g

bb.c:                                             ; preds = %qobject_ref_impl.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16824
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not35 = icmp eq ptr %i.i, null
  br i1 %.not35, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12360
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not36 = icmp eq ptr %i.l, null
  br i1 %.not36, label %qobject_ref_impl.exit38, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 1 seq_cst, align 8 ; 0 uses
  br label %qobject_ref_impl.exit38

qobject_ref_impl.exit38:                          ; preds = %bb.d, %bb.e
  tail call void @qdict_put_obj(ptr noundef %1, ptr noundef nonnull @.str.117, ptr noundef %i.l) #13
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @qdict_put_null(ptr noundef %1, ptr noundef nonnull @.str.117) #13
  br label %bb.g

bb.g:                                             ; preds = %qobject_ref_impl.exit38, %bb.f, %qobject_ref_impl.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @vmdk_refresh_limits(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.h = phi i32 [ %i.d, %.lr.ph ], [ %i.t, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %2 = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw [272 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !9, !noundef !10
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.g, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.p = load i64, ptr %i.o, align 8
  %i.q = shl i64 %i.p, 9
  %i.r = tail call i64 @llvm.smax.i64(i64 %i.q, i64 %i.n)
  %i.s = trunc i64 %i.r to i32
  store i32 %i.s, ptr %i.g, align 8
  %.pre.a = load i32, ptr %i.c, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = phi i32 [ %i.h, %bb.b ], [ %.pre.a, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @vmdk_has_zero_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.g = phi i32 [ %i.d, %.lr.ph ], [ %i.p, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw [272 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !9, !noundef !10
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 @bdrv_has_zero_init(ptr noundef %i.n) #13
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.c
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge13, %bb.b
  %i.p = phi i32 [ %.pre, %._crit_edge13 ], [ %i.g, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.08 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.c ]
  ret i32 %.08
}

declare void @bdrv_default_perms(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal range(i32 0, 101) i32 @vmdk_probe(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = icmp slt i32 %1, 4
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4
  %i.d = tail call noundef i32 @llvm.bswap.i32(i32 %i.c)
  switch i32 %i.d, label %.lr.ph59.preheader [
    i32 1262767446, label %.loopexit
    i32 1129273156, label %.loopexit
  ]

.lr.ph59.preheader:                               ; preds = %bb.b
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 5 uses
  %i.g = add i64 %i.a, %i.e                       ; 2 uses
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.backedge
  %.058 = phi ptr [ %.0.be, %.backedge ], [ %0, %.lr.ph59.preheader ] ; 17 uses
  %.05865 = ptrtoaddr ptr %.058 to i64            ; 2 uses
  %i.h = load i8, ptr %.058, align 1
  switch i8 %i.h, label %bb.f [
    i8 35, label %.preheader
    i8 32, label %.preheader49
  ]

.preheader49:                                     ; preds = %.lr.ph59
  %i.i = icmp ult ptr %.058, %i.f
  br i1 %i.i, label %.lr.ph.preheader, label %.critedge47

.lr.ph.preheader:                                 ; preds = %.preheader49
  %scevgep = getelementptr i8, ptr %.058, i64 %i.g
  %i.j = sub i64 0, %.05865
  %scevgep66 = getelementptr i8, ptr %scevgep, i64 %i.j ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph59
  %i.k = icmp ult ptr %.058, %i.f
  br i1 %i.k, label %.lr.ph54.preheader, label %.backedge

.lr.ph54.preheader:                               ; preds = %.preheader
  %scevgep67 = getelementptr i8, ptr %.058, i64 %i.g
  %i.l = sub i64 0, %.05865
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.l ; 2 uses
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %bb.c
  %.153 = phi ptr [ %i.n, %bb.c ], [ %.058, %.lr.ph54.preheader ] ; 3 uses
  %i.m = load i8, ptr %.153, align 1
  %.not46 = icmp eq i8 %i.m, 10
  br i1 %.not46, label %.backedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph54
  %i.n = getelementptr inbounds nuw i8, ptr %.153, i64 1 ; 2 uses
  %exitcond69.not = icmp eq ptr %i.n, %scevgep68
  br i1 %exitcond69.not, label %.backedge, label %.lr.ph54, !llvm.loop !16

.backedge:                                        ; preds = %bb.c, %.lr.ph54, %bb.e, %.preheader
  %.1.lcssa.pn = phi ptr [ %.3, %bb.e ], [ %.058, %.preheader ], [ %.153, %.lr.ph54 ], [ %scevgep68, %bb.c ]
  %.0.be = getelementptr inbounds nuw i8, ptr %.1.lcssa.pn, i64 1 ; 2 uses
  %i.o = icmp ult ptr %.0.be, %i.f
  br i1 %i.o, label %.lr.ph59, label %.loopexit, !llvm.loop !17

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.252 = phi ptr [ %i.r, %bb.d ], [ %.058, %.lr.ph.preheader ] ; 3 uses
  %i.p = load i8, ptr %.252, align 1              ; 2 uses
  %i.q = icmp eq i8 %i.p, 32
  br i1 %i.q, label %bb.d, label %.critedge3

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.252, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.r, %scevgep66
  br i1 %exitcond.not, label %.critedge47, label %.lr.ph, !llvm.loop !18

.critedge3:                                       ; preds = %.lr.ph
  %i.s = icmp eq i8 %i.p, 13
  %spec.select.idx = zext i1 %i.s to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.252, i64 %spec.select.idx
  br label %.critedge47

.critedge47:                                      ; preds = %bb.d, %.preheader49, %.critedge3
  %.3 = phi ptr [ %spec.select, %.critedge3 ], [ %.058, %.preheader49 ], [ %scevgep66, %bb.d ] ; 3 uses
  %i.t = icmp eq ptr %.3, %i.f
  br i1 %i.t, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.critedge47
  %i.u = load i8, ptr %.3, align 1
  %.not = icmp eq i8 %i.u, 10
  br i1 %.not, label %.backedge, label %.loopexit

bb.f:                                             ; preds = %.lr.ph59
  %i.v = ptrtoint ptr %i.f to i64
  %i.w = ptrtoint ptr %.058 to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp ugt i64 %i.x, 9
  br i1 %i.y, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.118, ptr noundef nonnull dereferenceable(1) %.058, i64 noundef 10) #16
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.119, ptr noundef nonnull dereferenceable(1) %.058, i64 noundef 10) #16
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.120, ptr noundef nonnull dereferenceable(1) %.058, i64 noundef 10) #16
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not48 = icmp eq i64 %i.x, 10
  br i1 %.not48, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.121, ptr noundef nonnull dereferenceable(1) %.058, i64 noundef 11) #16
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.122, ptr noundef nonnull dereferenceable(1) %.058, i64 noundef 11) #16
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.123, ptr noundef nonnull dereferenceable(1) %.058, i64 noundef 11) #16
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.f, %bb.m, %bb.j
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %.critedge47, %bb.e, %.thread, %bb.i, %bb.h, %bb.g, %bb.m, %bb.l, %bb.k, %bb.b, %bb.b, %bb.a
  %.142 = phi i32 [ 100, %bb.b ], [ 0, %bb.a ], [ 100, %bb.b ], [ 100, %bb.k ], [ 100, %bb.m ], [ 100, %bb.g ], [ 0, %.thread ], [ 100, %bb.l ], [ 100, %bb.i ], [ 100, %bb.h ], [ 0, %bb.e ], [ 0, %.critedge47 ], [ 0, %.backedge ]
  ret i32 %.142
}
end_hunk_1
