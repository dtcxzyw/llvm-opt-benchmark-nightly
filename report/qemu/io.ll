Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/io?download=true
inline.NumInlined: 185
inline.NumDeleted: 42
begin_hunk_0
@.str.57 = private unnamed_addr constant [37 x i8] c"(bs->open_flags & BDRV_O_NO_IO) == 0\00", align 1
@.str.58 = private unnamed_addr constant [82 x i8] c"!(flags & ~(BDRV_REQ_COPY_ON_READ | BDRV_REQ_PREFETCH | BDRV_REQ_REGISTERED_BUF))\00", align 1
@.str.59 = private unnamed_addr constant [65 x i8] c"!(flags & ~(bs->supported_read_flags | BDRV_REQ_REGISTERED_BUF))\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"progress >= bytes\00", align 1
@__PRETTY_FUNCTION__.bdrv_co_do_copy_on_readv = private unnamed_addr constant [89 x i8] c"int bdrv_co_do_copy_on_readv(BdrvChild *, int64_t, int64_t, QEMUIOVector *, size_t, int)\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"skip_bytes < pnum\00", align 1
@_TRACE_BDRV_CO_DO_COPY_ON_READV_DSTATE = external local_unnamed_addr global i16, align 2
@.str.63 = private unnamed_addr constant [90 x i8] c"bdrv_co_do_copy_on_readv bs %p offset %ld bytes %ld cluster_offset %ld cluster_bytes %ld\0A\00", align 1
@.str.64 = private unnamed_addr constant [42 x i8] c"alignment % bs->bl.request_alignment == 0\00", align 1
@__PRETTY_FUNCTION__.bdrv_co_do_pwrite_zeroes = private unnamed_addr constant [85 x i8] c"int bdrv_co_do_pwrite_zeroes(BlockDriverState *, int64_t, int64_t, BdrvRequestFlags)\00", align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"max_write_zeroes >= bs->bl.request_alignment\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"num < max_write_zeroes\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"!bs->supported_zero_flags\00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"QEMU_IS_ALIGNED(offset, BDRV_SECTOR_SIZE)\00", align 1
@__PRETTY_FUNCTION__.bdrv_driver_pwritev = private unnamed_addr constant [104 x i8] c"int bdrv_driver_pwritev(BlockDriverState *, int64_t, int64_t, QEMUIOVector *, size_t, BdrvRequestFlags)\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"QEMU_IS_ALIGNED(bytes, BDRV_SECTOR_SIZE)\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"bytes <= BDRV_REQUEST_MAX_BYTES\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"drv->bdrv_co_writev\00", align 1
@_TRACE_BDRV_CO_PWRITEV_PART_DSTATE = external local_unnamed_addr global i16, align 2
@.str.72 = private unnamed_addr constant [60 x i8] c"bdrv_co_pwritev_part bs %p offset %ld bytes %ld flags 0x%x\0A\00", align 1
@__PRETTY_FUNCTION__.bdrv_co_do_zero_pwritev = private unnamed_addr constant [99 x i8] c"int bdrv_co_do_zero_pwritev(BdrvChild *, int64_t, int64_t, BdrvRequestFlags, BdrvTrackedRequest *)\00", align 1
@.str.73 = private unnamed_addr constant [38 x i8] c"!bytes || (offset & (align - 1)) == 0\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"align == pad.tail + bytes\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"req->serialising && pad->buf\00", align 1
@__PRETTY_FUNCTION__.bdrv_padding_rmw_read = private unnamed_addr constant [90 x i8] c"int bdrv_padding_rmw_read(BdrvChild *, BdrvTrackedRequest *, BdrvRequestPadding *, _Bool)\00", align 1
@__PRETTY_FUNCTION__.bdrv_aligned_pwritev = private unnamed_addr constant [129 x i8] c"int bdrv_aligned_pwritev(BdrvChild *, BdrvTrackedRequest *, int64_t, int64_t, int64_t, QEMUIOVector *, size_t, BdrvRequestFlags)\00", align 1
@_TRACE_BDRV_CO_PWRITE_ZEROES_DSTATE = external local_unnamed_addr global i16, align 2
@.str.76 = private unnamed_addr constant [61 x i8] c"bdrv_co_pwrite_zeroes bs %p offset %ld bytes %ld flags 0x%x\0A\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"pnum\00", align 1
@__PRETTY_FUNCTION__.bdrv_co_do_block_status = private unnamed_addr constant [123 x i8] c"int bdrv_co_do_block_status(BlockDriverState *, unsigned int, int64_t, int64_t, int64_t *, int64_t *, BlockDriverState **)\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"bs->drv\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"local_file == bs\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"local_map == aligned_offset\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"local_file\00", align 1
@.str.82 = private unnamed_addr constant [74 x i8] c"*pnum && QEMU_IS_ALIGNED(*pnum, align) && align > offset - aligned_offset\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"ret & BDRV_BLOCK_DATA\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"ret & BDRV_BLOCK_OFFSET_VALID\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"!(ret & BDRV_BLOCK_ZERO)\00", align 1
@.str.86 = private unnamed_addr constant [44 x i8] c"ret & BDRV_BLOCK_OFFSET_VALID && local_file\00", align 1
@.str.87 = private unnamed_addr constant [37 x i8] c"!(flags & ~bs->supported_read_flags)\00", align 1
@__PRETTY_FUNCTION__.bdrv_driver_preadv = private unnamed_addr constant [90 x i8] c"int bdrv_driver_preadv(BlockDriverState *, int64_t, int64_t, QEMUIOVector *, size_t, int)\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"drv->bdrv_co_readv\00", align 1
@.str.89 = private unnamed_addr constant [36 x i8] c"!(bs->open_flags & BDRV_O_INACTIVE)\00", align 1
@__PRETTY_FUNCTION__.bdrv_co_write_req_prepare = private unnamed_addr constant [88 x i8] c"int bdrv_co_write_req_prepare(BdrvChild *, int64_t, int64_t, BdrvTrackedRequest *, int)\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"!(flags & ~BDRV_REQ_MASK)\00", align 1
@.str.91 = private unnamed_addr constant [65 x i8] c"!((flags & BDRV_REQ_NO_WAIT) && !(flags & BDRV_REQ_SERIALISING))\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"req->overlap_offset <= offset\00", align 1
@.str.93 = private unnamed_addr constant [59 x i8] c"offset + bytes <= req->overlap_offset + req->overlap_bytes\00", align 1
@.str.94 = private unnamed_addr constant [88 x i8] c"offset + bytes <= bs->total_sectors * BDRV_SECTOR_SIZE || child->perm & BLK_PERM_RESIZE\00", align 1
@.str.95 = private unnamed_addr constant [58 x i8] c"child->perm & (BLK_PERM_WRITE_UNCHANGED | BLK_PERM_WRITE)\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"child->perm & BLK_PERM_WRITE\00", align 1
@.str.97 = private unnamed_addr constant [30 x i8] c"child->perm & BLK_PERM_RESIZE\00", align 1
@__PRETTY_FUNCTION__.bdrv_register_buf_rollback = private unnamed_addr constant [81 x i8] c"void bdrv_register_buf_rollback(BlockDriverState *, void *, size_t, BdrvChild *)\00", align 1
@_TRACE_BDRV_CO_COPY_RANGE_FROM_DSTATE = external local_unnamed_addr global i16, align 2
@.str.98 = private unnamed_addr constant [90 x i8] c"bdrv_co_copy_range_from src %p offset %ld dst %p offset %ld bytes %ld rw flags 0x%x 0x%x\0A\00", align 1
@.str.99 = private unnamed_addr constant [37 x i8] c"!(read_flags & BDRV_REQ_NO_FALLBACK)\00", align 1
@__PRETTY_FUNCTION__.bdrv_co_copy_range_internal = private unnamed_addr constant [128 x i8] c"int bdrv_co_copy_range_internal(BdrvChild *, int64_t, BdrvChild *, int64_t, int64_t, BdrvRequestFlags, BdrvRequestFlags, _Bool)\00", align 1
@.str.100 = private unnamed_addr constant [38 x i8] c"!(write_flags & BDRV_REQ_NO_FALLBACK)\00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c"!(read_flags & BDRV_REQ_NO_WAIT)\00", align 1
@.str.102 = private unnamed_addr constant [34 x i8] c"!(write_flags & BDRV_REQ_NO_WAIT)\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"!(read_flags & BDRV_REQ_SERIALISING)\00", align 1
@_TRACE_BDRV_CO_COPY_RANGE_TO_DSTATE = external local_unnamed_addr global i16, align 2
@.str.104 = private unnamed_addr constant [88 x i8] c"bdrv_co_copy_range_to src %p offset %ld dst %p offset %ld bytes %ld rw flags 0x%x 0x%x\0A\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@.str.106 = private unnamed_addr constant [14 x i8] c"../block/io.c\00", section "llvm.metadata"
@.str.107 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.108 = private unnamed_addr constant [45 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/aio.h\00", section "llvm.metadata"
@.str.109 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-io.h\00", section "llvm.metadata"
@.str.110 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/qemu/qemu/include/block/block_int-io.h\00", section "llvm.metadata"
@.str.111 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/coroutine.h\00", section "llvm.metadata"
@.str.112 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/coroutine-core.h\00", section "llvm.metadata"
@llvm.global.annotations = appending global [77 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @bdrv_drained_begin, ptr @.str.105, ptr @.str.106, i32 390, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_drain_all_begin, ptr @.str.105, ptr @.str.106, i32 508, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_yield_to_drain, ptr @.str.4, ptr @.str.106, i32 315, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @aio_poll, ptr @.str.107, ptr @.str.108, i32 538, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_get_self_request, ptr @.str.4, ptr @.str.106, i32 716, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_round_to_subclusters, ptr @.str.4, ptr @.str.106, i32 736, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_get_info, ptr @.str.4, ptr @.str.109, i32 199, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_make_request_serialising, ptr @.str.4, ptr @.str.106, i32 797, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_wait_serialising_requests_locked, ptr @.str.4, ptr @.str.106, i32 682, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_getlength, ptr @.str.107, ptr @.str.109, i32 86, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_getlength, ptr @.str.105, ptr @.str.109, i32 86, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_block_status, ptr @.str.107, ptr @.str.109, i32 136, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_block_status, ptr @.str.105, ptr @.str.109, i32 136, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pwrite_zeroes, ptr @.str.107, ptr @.str.109, i32 47, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pwrite_zeroes, ptr @.str.105, ptr @.str.109, i32 47, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pwrite_sync, ptr @.str.4, ptr @.str.106, i32 938, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pwrite, ptr @.str.4, ptr @.str.110, i32 70, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_flush, ptr @.str.4, ptr @.str.106, i32 3030, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_preadv, ptr @.str.4, ptr @.str.106, i32 1766, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_preadv_part, ptr @.str.4, ptr @.str.106, i32 1774, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_is_inserted, ptr @.str.4, ptr @.str.109, i32 178, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @tracked_request_begin, ptr @.str.4, ptr @.str.106, i32 604, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_aligned_preadv, ptr @.str.4, ptr @.str.106, i32 1328, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @tracked_request_end, ptr @.str.4, ptr @.str.106, i32 583, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pwritev, ptr @.str.4, ptr @.str.106, i32 2237, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pwritev_part, ptr @.str.4, ptr @.str.106, i32 2245, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_do_zero_pwritev, ptr @.str.4, ptr @.str.106, i32 2168, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_padding_rmw_read, ptr @.str.4, ptr @.str.106, i32 1514, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_aligned_pwritev, ptr @.str.4, ptr @.str.106, i32 2080, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pwrite_zeroes, ptr @.str.4, ptr @.str.106, i32 2337, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_flush, ptr @.str.107, ptr @.str.109, i32 374, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_flush, ptr @.str.105, ptr @.str.109, i32 374, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_common_block_status_above, ptr @.str.4, ptr @.str.106, i32 2642, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_do_block_status, ptr @.str.4, ptr @.str.106, i32 2405, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_block_status_above, ptr @.str.4, ptr @.str.106, i32 2745, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_block_status, ptr @.str.4, ptr @.str.106, i32 2757, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_is_zero_fast, ptr @.str.4, ptr @.str.106, i32 2773, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_is_all_zeroes, ptr @.str.4, ptr @.str.106, i32 2806, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_getlength, ptr @.str.4, ptr @.str.109, i32 85, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_driver_preadv, ptr @.str.4, ptr @.str.106, i32 973, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_is_allocated, ptr @.str.4, ptr @.str.106, i32 2856, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_is_allocated_above, ptr @.str.4, ptr @.str.106, i32 2889, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_readv_vmstate, ptr @.str.4, ptr @.str.106, i32 2913, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_writev_vmstate, ptr @.str.4, ptr @.str.106, i32 2946, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_writev_vmstate, ptr @.str.107, ptr @.str.109, i32 383, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_writev_vmstate, ptr @.str.105, ptr @.str.109, i32 383, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_readv_vmstate, ptr @.str.107, ptr @.str.109, i32 380, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_readv_vmstate, ptr @.str.105, ptr @.str.109, i32 380, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_queue_wait_impl, ptr @.str.4, ptr @.str.111, i32 122, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_debug_event, ptr @.str.4, ptr @.str.109, i32 246, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_coroutine_yield, ptr @.str.4, ptr @.str.112, i32 101, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_queue_next, ptr @.str.4, ptr @.str.111, i32 131, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pdiscard, ptr @.str.4, ptr @.str.106, i32 3155, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_write_req_prepare, ptr @.str.4, ptr @.str.106, i32 1975, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_write_req_finish, ptr @.str.4, ptr @.str.106, i32 2029, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_ioctl, ptr @.str.4, ptr @.str.106, i32 3265, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_zone_report, ptr @.str.4, ptr @.str.106, i32 3296, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_zone_mgmt, ptr @.str.4, ptr @.str.106, i32 3317, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_zone_append, ptr @.str.4, ptr @.str.106, i32 3337, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_copy_range_from, ptr @.str.4, ptr @.str.106, i32 3545, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_copy_range_internal, ptr @.str.4, ptr @.str.106, i32 3462, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_copy_range_to, ptr @.str.4, ptr @.str.106, i32 3563, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_copy_range, ptr @.str.4, ptr @.str.106, i32 3577, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_parent_cb_resize, ptr @.str.4, ptr @.str.106, i32 3590, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_truncate, ptr @.str.4, ptr @.str.106, i32 3611, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_refresh_total_sectors, ptr @.str.4, ptr @.str.110, i32 128, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_preadv_snapshot, ptr @.str.4, ptr @.str.106, i32 3755, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_snapshot_block_status, ptr @.str.4, ptr @.str.106, i32 3780, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_pdiscard_snapshot, ptr @.str.4, ptr @.str.106, i32 3807, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_find_conflicting_request, ptr @.str.4, ptr @.str.106, i32 648, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_get_cluster_size, ptr @.str.4, ptr @.str.106, i32 751, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_wait_serialising_requests, ptr @.str.4, ptr @.str.106, i32 784, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_do_copy_on_readv, ptr @.str.4, ptr @.str.106, i32 1164, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_co_do_pwrite_zeroes, ptr @.str.4, ptr @.str.106, i32 50, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_driver_pwritev, ptr @.str.4, ptr @.str.106, i32 1042, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_queue_restart_all, ptr @.str.4, ptr @.str.111, i32 138, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_driver_pwritev_compressed, ptr @.str.4, ptr @.str.106, i32 1128, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_parent_drained_end_single(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_parent_drained_end_single) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 72, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_parent_drained_end_single) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.h(ptr noundef nonnull %0) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare zeroext i1 @qemu_in_main_thread() local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @bdrv_parent_drained_poll_single(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 %i.d(ptr noundef nonnull %0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_parent_drained_begin_single(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 126, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_parent_drained_begin_single) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 128, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_parent_drained_begin_single) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %i.b, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.h(ptr noundef nonnull %0) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_refresh_limits(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ErrorPropagator, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %3, align 8
  store ptr %2, ptr %i.a, align 8
  %i.b = icmp eq ptr %2, null
  %i.c = icmp eq ptr %2, @error_fatal
  %or.cond = or i1 %i.b, %i.c
  %spec.select = select i1 %or.cond, ptr %3, ptr %2 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 178, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_refresh_limits) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias dereferenceable_or_null(128) ptr @g_malloc(i64 noundef 128) #16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16464
  store ptr %0, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %i.h, i64 120, i1 false)
  tail call void @tran_add(ptr noundef nonnull %1, ptr noundef nonnull @bdrv_refresh_limits_drv, ptr noundef nonnull %i.g) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16464 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.i, i8 noundef 0, i64 noundef 120, i1 noundef false) #14
  %.not55 = icmp eq ptr %i.e, null
  br i1 %.not55, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.k = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.j, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 546, ptr null)
  %i.l = load ptr, ptr %i.k, align 8
  %.not56 = icmp eq ptr %i.l, null
  br i1 %.not56, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.n = load ptr, ptr %i.m, align 8
  %.not57 = icmp eq ptr %i.n, null
  br i1 %.not57, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.p = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.o, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 550, ptr null)
  %i.q = load ptr, ptr %i.p, align 8
  %.not58 = icmp eq ptr %i.q, null
  %i.r = select i1 %.not58, i32 512, i32 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.s = phi i32 [ 1, %bb.g ], [ 1, %bb.f ], [ %i.r, %bb.h ]
  store i32 %i.s, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16816
  %.04865 = load ptr, ptr %i.t, align 8           ; 2 uses
  %.not5966 = icmp eq ptr %.04865, null
  br i1 %.not5966, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16480 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16500 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16504 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16512 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16536 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16528 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16544 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16520 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16548 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.n
  %.04868 = phi ptr [ %.04865, %.lr.ph ], [ %.048, %bb.n ] ; 4 uses
  %.05067 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.n ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.04868, i64 24 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = and i32 %i.ae, 13
  %.not62 = icmp eq i32 %i.af, 0
  br i1 %.not62, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %.04868, align 8          ; 8 uses
  %i.ah = load i32, ptr %i.u, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16480
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 %i.aj)
  store i32 %i.ak, ptr %i.u, align 8
  %i.al = load i32, ptr %i.v, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16500
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = tail call i32 @llvm.umax.i32(i32 %i.al, i32 %i.an)
  store i32 %i.ao, ptr %i.v, align 4
  %i.ap = load i32, ptr %i.w, align 8             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16504
  %i.ar = load i32, ptr %i.aq, align 8
  %.fr.i = freeze i32 %i.ar                       ; 2 uses
  %i.as = add i32 %.fr.i, -1
  %i.at = add i32 %i.ap, -1
  %.not.i = icmp ult i32 %i.at, %i.as
  %i.au = select i1 %.not.i, i32 %i.ap, i32 %.fr.i
  store i32 %i.au, ptr %i.w, align 8
  %i.av = load i64, ptr %i.x, align 8             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 16512
  %i.ax = load i64, ptr %i.aw, align 8
  %.fr88.i = freeze i64 %i.ax                     ; 2 uses
  %i.ay = add i64 %.fr88.i, -1
  %i.az = add i64 %i.av, -1
  %.not89.i = icmp ult i64 %i.az, %i.ay
  %i.ba = select i1 %.not89.i, i64 %i.av, i64 %.fr88.i
  store i64 %i.ba, ptr %i.x, align 8
  %i.bb = load i64, ptr %i.y, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 16536
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.bd)
  store i64 %i.be, ptr %i.y, align 8
  %i.bf = load i64, ptr %i.z, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 16528
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bh)
  store i64 %i.bi, ptr %i.z, align 8
  %i.bj = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 16544
  %i.bl = load i32, ptr %i.bk, align 8            ; 3 uses
  %i.bm = icmp eq i32 %i.bj, 0
  %i.bn = icmp eq i32 %i.bl, 0
  %i.bo = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bj)
  %spec.select86.i = select i1 %i.bn, i32 %i.bj, i32 %i.bo
  %i.bp = select i1 %i.bm, i32 %i.bl, i32 %spec.select86.i
  store i32 %i.bp, ptr %i.aa, align 8
  %i.bq = load i32, ptr %i.ab, align 8            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 16520
  %i.bs = load i32, ptr %i.br, align 8            ; 3 uses
  %i.bt = icmp eq i32 %i.bq, 0
  %i.bu = icmp eq i32 %i.bs, 0
  %i.bv = tail call i32 @llvm.smin.i32(i32 %i.bs, i32 %i.bq)
  %spec.select87.i = select i1 %i.bu, i32 %i.bq, i32 %i.bv
  %i.bw = select i1 %i.bt, i32 %i.bs, i32 %spec.select87.i
  store i32 %i.bw, ptr %i.ab, align 8
  %.pre = load i32, ptr %i.ad, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bx = phi i32 [ %.pre, %bb.k ], [ %i.ae, %bb.j ]
  %.1 = phi i1 [ true, %bb.k ], [ %.05067, %bb.j ] ; 2 uses
  %i.by = and i32 %i.bx, 4
  %.not63 = icmp eq i32 %i.by, 0
  br i1 %.not63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = load ptr, ptr %.04868, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16548
  %i.cb = load i8, ptr %i.ca, align 4, !range !7, !noundef !8
  %i.cc = load i8, ptr %i.ac, align 4, !range !7, !noundef !8
  %i.cd = or i8 %i.cc, %i.cb
  store i8 %i.cd, ptr %i.ac, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %.04868, i64 64
  %.048 = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not59 = icmp eq ptr %.048, null
  br i1 %.not59, label %._crit_edge, label %bb.j, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.n
  br i1 %.1, label %bb.o, label %.critedge

.critedge:                                        ; preds = %bb.i, %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16528
  store i64 512, ptr %i.cf, align 8
  %i.cg = tail call i32 @getpagesize() #17
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16536
  store i64 %i.ch, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16544
  store i32 1024, ptr %i.cj, align 8
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not60 = icmp eq ptr %i.cl, null
  br i1 %.not60, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void %i.cl(ptr noundef %0, ptr noundef %spec.select) #14
  %i.cm = load ptr, ptr %spec.select, align 8
  %.not61 = icmp eq ptr %i.cm, null
  br i1 %.not61, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.pre70 = load i32, ptr %i.i, align 8
  %i.cn = icmp ugt i32 %.pre70, 1073741824
  br i1 %i.cn, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 231, ptr noundef nonnull @__func__.bdrv_refresh_limits, ptr noundef nonnull @.str.6) #14
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.q, %bb.r, %bb.p, %bb.e
  %.val = load ptr, ptr %3, align 8
  %.val64 = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %.val64, ptr noundef %.val) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

end_hunk_0
begin_hunk_1_@bdrv_co_flush:bb.a
.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 17040
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  store ptr %i.h, ptr %1, align 8
  store <2 x ptr> <ptr @qemu_lockable_mutex_lock, ptr @qemu_lockable_mutex_unlock>, ptr %i.o, align 8
  call void @qemu_co_queue_wait_impl(ptr noundef nonnull %i.n, ptr noundef nonnull %1, i32 noundef 0) #14
  %i.p = load i8, ptr %i.k, align 8, !range !7, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.e, %bb.d
  store i8 1, ptr %i.k, align 8
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1, i32 noundef 3056) #14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 616 ; 2 uses
  %i.u = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.t, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 689, ptr null)
  %i.v = load ptr, ptr %i.u, align 8
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.t, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 689, ptr null)
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call i32 %i.x(ptr noundef nonnull %0) #14
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge
  %.not64 = icmp eq ptr %i.a, null                ; 2 uses
  br i1 %.not64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.a, align 8
  call void @bdrv_co_debug_event(ptr noundef %i.z, i32 noundef 33) #14
  %.pre = load ptr, ptr %i.r, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = phi ptr [ %.pre, %bb.h ], [ %i.s, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 640 ; 2 uses
  %i.ac = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ab, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 707, ptr null)
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not65 = icmp eq ptr %i.ad, null
  br i1 %.not65, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ab, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 707, ptr null)
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call i32 %i.af(ptr noundef nonnull %0) #14 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.thread74, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = load i32, ptr %0, align 8
  %i.aj = and i32 %i.ai, 512
  %.not66 = icmp eq i32 %i.aj, 0
  br i1 %.not66, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 17060
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, %i.j
  br i1 %i.am, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not64, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr %i.a, align 8
  call void @bdrv_co_debug_event(ptr noundef %i.an, i32 noundef 34) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = load ptr, ptr %i.r, align 8             ; 3 uses
  %.not67 = icmp eq ptr %i.ao, null
  br i1 %.not67, label %.thread74, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 632 ; 2 uses
  %i.aq = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ap, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 699, ptr null)
  %i.ar = load ptr, ptr %i.aq, align 8
  %.not68 = icmp eq ptr %i.ar, null
  br i1 %.not68, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ap, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 699, ptr null)
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i32 %i.at(ptr noundef nonnull %0) #14
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 488
  %i.aw = load ptr, ptr %i.av, align 8
  %.not69 = icmp eq ptr %i.aw, null
  br i1 %.not69, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.ax = call ptr @qemu_coroutine_self() #14
  store ptr %i.ax, ptr %2, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.az, align 4
  %i.ba = load ptr, ptr %i.r, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 488
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call ptr %i.bc(ptr noundef nonnull %0, ptr noundef nonnull @bdrv_co_io_em_complete, ptr noundef nonnull %2) #14
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @qemu_coroutine_yield() #14
  %i.bf = load i32, ptr %i.ay, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.059 = phi i32 [ %i.bf, %bb.t ], [ -5, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %.1 = phi i32 [ %i.au, %bb.q ], [ %.059, %bb.u ] ; 2 uses
  %i.bg = icmp slt i32 %.1, 0
  br i1 %i.bg, label %.thread74, label %.thread

.thread:                                          ; preds = %bb.r, %bb.v, %bb.l, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16816
  %.077 = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not7078 = icmp eq ptr %.077, null
  br i1 %.not7078, label %.loopexit.thread, label %.lr.ph81

.lr.ph81:                                         ; preds = %.thread, %bb.x
  %.080 = phi ptr [ %.0, %bb.x ], [ %.077, %.thread ] ; 3 uses
  %.279 = phi i32 [ %.4, %bb.x ], [ 0, %.thread ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.080, i64 40
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = and i64 %i.bj, 6
  %.not71 = icmp eq i64 %i.bk, 0
  br i1 %.not71, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph81
  %i.bl = load ptr, ptr %.080, align 8
  %i.bm = call i32 @bdrv_co_flush(ptr noundef %i.bl)
  %.not72 = icmp eq i32 %.279, 0
  %spec.select = select i1 %.not72, i32 %i.bm, i32 %.279
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph81, %bb.w
  %.4 = phi i32 [ %spec.select, %bb.w ], [ %.279, %.lr.ph81 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.080, i64 64
  %.0 = load ptr, ptr %i.bn, align 8              ; 2 uses
  %.not70 = icmp eq ptr %.0, null
  br i1 %.not70, label %.loopexit, label %.lr.ph81, !llvm.loop !34

.loopexit:                                        ; preds = %bb.x, %bb.f
  %.5 = phi i32 [ %i.y, %bb.f ], [ %.4, %bb.x ]   ; 2 uses
  %i.bo = icmp eq i32 %.5, 0
  br i1 %i.bo, label %.loopexit.thread, label %.thread74

.loopexit.thread:                                 ; preds = %.thread, %.loopexit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 17060
  store i32 %i.j, ptr %i.bp, align 4
  br label %.thread74

.thread74:                                        ; preds = %bb.o, %bb.v, %bb.j, %.loopexit.thread, %.loopexit
  %.576 = phi i32 [ %.5, %.loopexit ], [ 0, %.loopexit.thread ], [ -123, %bb.o ], [ %.1, %bb.v ], [ %i.ag, %bb.j ]
  %i.bq = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.bq(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1, i32 noundef 3144) #14
  store i8 0, ptr %i.k, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 17040
  %i.bs = call zeroext i1 @qemu_co_queue_next(ptr noundef nonnull %i.br) #14 ; 0 uses
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1, i32 noundef 3148) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.b, %bb.c, %.thread74
  %.6 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %.576, %.thread74 ], [ 0, %bb.a ]
  %i.bt = atomicrmw sub ptr %i.b, i32 1 seq_cst, align 4 ; 0 uses
  call void @aio_wait_kick() #14
  ret i32 %.6
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @bdrv_co_preadv(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @bdrv_co_preadv_part(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @bdrv_co_preadv_part(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.BdrvTrackedRequest, align 8 ; 19 uses
  %7 = alloca %struct.BdrvRequestPadding, align 8 ; 12 uses
  store i64 %1, ptr %i.a, align 8
  store i64 %2, ptr %i.b, align 8
  store ptr %3, ptr %i.c, align 8
  store i64 %4, ptr %i.d, align 8
  store i32 %5, ptr %i.e, align 4
  %i.f = load ptr, ptr %0, align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.g = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %trace_bdrv_co_preadv_part.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr @_TRACE_BDRV_CO_PREADV_PART_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.h, 0
  br i1 %.not3.i, label %trace_bdrv_co_preadv_part.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 32768
  %.not4.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i, label %trace_bdrv_co_preadv_part.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.46, ptr noundef %i.f, i64 noundef %1, i64 noundef %2, i32 noundef %5) #14
  br label %trace_bdrv_co_preadv_part.exit

trace_bdrv_co_preadv_part.exit:                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = tail call zeroext i1 @bdrv_co_is_inserted(ptr noundef %i.f) #14
  br i1 %i.k, label %bb.e, label %bb.v

bb.e:                                             ; preds = %trace_bdrv_co_preadv_part.exit
  %i.l = tail call i32 @bdrv_check_qiov_request(i64 noundef %1, i64 noundef %2, ptr noundef readonly %3, i64 noundef %4, ptr noundef null) ; 2 uses
  %i.m = icmp slt i32 %i.l, 0                     ; 2 uses
  %i.n = icmp ugt i64 %2, 2147483136              ; 2 uses
  %..i = select i1 %i.n, i32 -5, i32 0
  %.0.i = select i1 %i.m, i32 %i.l, i32 %..i
  %i.o = or i1 %i.n, %i.m
  br i1 %i.o, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16464
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64
  %i.t = srem i64 %1, %i.s
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, i8 0, i64 96, i1 false), !annotation !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 0, i64 144, i1 false), !annotation !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16964 ; 2 uses
  %i.w = atomicrmw add ptr %i.v, i32 1 seq_cst, align 4 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16960
  %i.y = load atomic i32, ptr %i.x monotonic, align 8
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = or i32 %5, 1
  store i32 %i.z, ptr %i.e, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = call fastcc i32 @bdrv_pad_request(ptr noundef nonnull %i.f, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.b, i1 noundef zeroext false, ptr noundef %7, ptr noundef null, ptr noundef %i.e) ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.a, align 8             ; 4 uses
  %i.ad = load i64, ptr %i.b, align 8             ; 4 uses
  %i.ae = call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.af = call ptr @qemu_coroutine_self() #14
  store ptr %i.f, ptr %6, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ac, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ad, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i64 %i.ac, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.ad, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.af, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i.a, i8 0, i64 24, i1 false)
  call void @qemu_co_queue_init(ptr noundef nonnull %.sroa.11.0..sroa_idx.i.a) #14
  %i.ag = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16984 ; 2 uses
  call void %i.ag(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.1, i32 noundef 625) #14, !inline_history !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 17032 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  store ptr %i.aj, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.not.i20 = icmp eq ptr %i.aj, null
  br i1 %.not.i20, label %tracked_request_begin.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store ptr %.sroa.9.0..sroa_idx.i, ptr %i.ak, align 8
  br label %tracked_request_begin.exit

tracked_request_begin.exit:                       ; preds = %bb.k, %bb.l
  store ptr %6, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.al, align 8
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.1, i32 noundef 627) #14
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16464
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = load i64, ptr %i.d, align 8
  %i.ar = load i32, ptr %i.e, align 4
  %i.as = call i32 @bdrv_aligned_preadv(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %i.ac, i64 noundef %i.ad, i64 noundef %i.ao, ptr noundef %i.ap, i64 noundef %i.aq, i32 noundef %i.ar)
  %i.at = load i8, ptr %.sroa.5.0..sroa_idx.i, align 4, !range !7, !noundef !8
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %tracked_request_begin.exit
  %i.av = load ptr, ptr %6, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16968
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %tracked_request_begin.exit
  %i.ay = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.az = load ptr, ptr %6, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16984
  call void %i.ay(ptr noundef nonnull %i.ba, ptr noundef nonnull @.str.1, i32 noundef 589) #14, !inline_history !36
  %i.bb = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 3 uses
  %.not.i21 = icmp eq ptr %i.bb, null
  %.pre15.i = load ptr, ptr %i.al, align 8        ; 2 uses
  br i1 %.not.i21, label %tracked_request_end.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  store ptr %.pre15.i, ptr %i.bc, align 8
  br label %tracked_request_end.exit

tracked_request_end.exit:                         ; preds = %bb.n, %bb.o
  store ptr %i.bb, ptr %.pre15.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %i.bd = load ptr, ptr %6, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16984
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.be, ptr noundef nonnull @.str.1, i32 noundef 591) #14
  call void @qemu_co_queue_restart_all(ptr noundef nonnull %.sroa.11.0..sroa_idx.i.a) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 3 uses
  %.not.i22 = icmp eq ptr %i.bg, null
  br i1 %.not.i22, label %bb.s, label %bb.p

bb.p:                                             ; preds = %tracked_request_end.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 41
  %i.bi = load i8, ptr %i.bh, align 1, !range !7, !noundef !8
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.bk, i64 noundef 0, ptr noundef nonnull %i.bg, i64 noundef %i.bm) #14 ; 0 uses
  %.pre.i23 = load ptr, ptr %i.bf, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bo = phi ptr [ %.pre.i23, %bb.q ], [ %i.bg, %bb.p ]
  call void @qemu_vfree(ptr noundef %i.bo) #14
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @qemu_iovec_destroy(ptr noundef nonnull %i.bp) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %tracked_request_end.exit
  %i.bq = load ptr, ptr %7, align 8               ; 2 uses
  %.not12.i = icmp eq ptr %i.bq, null
  br i1 %.not12.i, label %bdrv_padding_finalize.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @qemu_vfree(ptr noundef nonnull %i.bq) #14
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @qemu_iovec_destroy(ptr noundef nonnull %i.br) #14
  br label %bdrv_padding_finalize.exit

bdrv_padding_finalize.exit:                       ; preds = %bb.s, %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 noundef 0, i64 noundef 144, i1 noundef false) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.j, %bdrv_padding_finalize.exit
  %.017 = phi i32 [ %i.aa, %bb.j ], [ %i.as, %bdrv_padding_finalize.exit ]
  %i.bs = atomicrmw sub ptr %i.v, i32 1 seq_cst, align 4 ; 0 uses
  call void @aio_wait_kick() #14
  br label %bb.v

bb.v:                                             ; preds = %bb.g, %bb.e, %trace_bdrv_co_preadv_part.exit, %bb.u
  %.0 = phi i32 [ -123, %trace_bdrv_co_preadv_part.exit ], [ %.017, %bb.u ], [ %.0.i, %bb.e ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.0
}

declare zeroext i1 @bdrv_co_is_inserted(ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -22, 1) i32 @bdrv_pad_request(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, i1 noundef zeroext %5, ptr noundef nonnull %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef nonnull captures(none) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = load i64, ptr %3, align 8
  %i.e = load i64, ptr %4, align 8                ; 2 uses
  %i.f = load ptr, ptr %1, align 8
  %i.g = load i64, ptr %2, align 8
  %i.h = tail call i32 @bdrv_check_qiov_request(i64 noundef %i.d, i64 noundef %i.e, ptr noundef readonly %i.f, i64 noundef %i.g, ptr noundef null) ; 2 uses
  %i.i = icmp slt i32 %i.h, 0                     ; 2 uses
  %i.j = icmp ugt i64 %i.e, 2147483136            ; 2 uses
  %..i = select i1 %i.j, i32 -5, i32 0
  %.0.i = select i1 %i.i, i32 %i.h, i32 %..i
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %3, align 8
  %i.m = load i64, ptr %4, align 8
  %i.n = tail call fastcc zeroext i1 @bdrv_init_padding(ptr noundef %0, i64 noundef %i.l, i64 noundef %i.m, i1 noundef zeroext %5, ptr noundef %6)
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %7, align 1
  br label %bb.ae

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %.not42 = icmp eq ptr %i.o, null
  br i1 %.not42, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.a, align 4, !annotation !31
  store i64 0, ptr %i.b, align 8, !annotation !31
  store i64 0, ptr %i.c, align 8, !annotation !31
  %i.p = load i64, ptr %2, align 8
  %i.q = load i64, ptr %4, align 8
  %i.r = call ptr @qemu_iovec_slice(ptr noundef nonnull %i.o, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #14 ; 3 uses
  %i.s = load i64, ptr %4, align 8                ; 4 uses
  %i.t = load i32, ptr %i.a, align 4              ; 4 uses
  %i.u = load i64, ptr %i.b, align 8              ; 2 uses
  %i.v = icmp slt i32 %i.t, 1025
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 1617, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_create_padded_qiov) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = xor i64 %i.x, -1                         ; 2 uses
  %i.z = icmp ugt i64 %i.s, %i.y
  br i1 %i.z, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = sub nuw i64 %i.y, %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp ne i64 %i.x, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = add nsw i32 %i.t, %i.af
  %i.ah = icmp ne i64 %i.ac, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = add nsw i32 %i.ag, %i.ai                ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 6 uses
  %i.al = call i32 @llvm.smin.i32(i32 %i.aj, i32 1024) ; 2 uses
  call void @qemu_iovec_init(ptr noundef nonnull %i.ak, i32 noundef %i.al) #14
  %i.am = load i64, ptr %i.w, align 8             ; 2 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %6, align 8
  call void @qemu_iovec_add(ptr noundef nonnull %i.ak, ptr noundef %i.an, i64 noundef %i.am) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = icmp sgt i32 %i.aj, 1024
  br i1 %i.ao, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ap = add nsw i32 %i.aj, -1024
  %i.aq = load i64, ptr %i.w, align 8
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = load i64, ptr %i.ab, align 8
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = add nuw nsw i32 %i.av, %i.as
  %.not80.i = icmp samesign ugt i32 %i.ap, %i.aw
  br i1 %.not80.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 1652, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_create_padded_qiov) #15
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ax = add nsw i32 %i.aj, -1023                ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 3 uses
  call void @qemu_iovec_init(ptr noundef nonnull %i.ay, i32 noundef %i.ax) #14
  %i.az = call i64 @qemu_iovec_concat_iov(ptr noundef nonnull %i.ay, ptr noundef %i.r, i32 noundef %i.ax, i64 noundef %i.u, i64 noundef -1) #14 ; 0 uses
  %i.ba = zext nneg i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ba
  %i.bc = sub i32 %i.t, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = sub i64 %i.s, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 3 uses
  store i64 %i.be, ptr %i.bg, align 8
  %i.bh = call i64 @bdrv_opt_mem_align(ptr noundef %0) #14
  %i.bi = call ptr @qemu_memalign(i64 noundef %i.bh, i64 noundef %i.be) #14 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 41
  %i.bl = load i8, ptr %i.bk, align 1, !range !7, !noundef !8
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = load i64, ptr %i.bg, align 8
  %i.bo = call i64 @qemu_iovec_to_buf(ptr noundef nonnull %i.ay, i64 noundef 0, ptr noundef %i.bi, i64 noundef %i.bn) #14 ; 0 uses
  %.pre.i = load ptr, ptr %i.bj, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bp = phi ptr [ %.pre.i, %bb.p ], [ %i.bi, %bb.o ]
  %i.bq = load i64, ptr %i.bg, align 8
  call void @qemu_iovec_add(ptr noundef nonnull %i.ak, ptr noundef %i.bp, i64 noundef %i.bq) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.071.i = phi i64 [ %i.bf, %bb.q ], [ %i.s, %bb.l ]
  %.070.i = phi i64 [ 0, %bb.q ], [ %i.u, %bb.l ]
  %.069.i = phi i32 [ %i.bc, %bb.q ], [ %i.t, %bb.l ]
  %.068.i = phi ptr [ %i.bb, %bb.q ], [ %i.r, %bb.l ]
  %i.br = call i64 @qemu_iovec_concat_iov(ptr noundef nonnull %i.ak, ptr noundef %.068.i, i32 noundef %.069.i, i64 noundef %.070.i, i64 noundef %.071.i) #14 ; 0 uses
  %i.bs = load i64, ptr %i.ab, align 8            ; 3 uses
  %.not81.i = icmp eq i64 %i.bs, 0
  br i1 %.not81.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = load ptr, ptr %6, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = sub i64 0, %i.bs
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  call void @qemu_iovec_add(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.by, i64 noundef %i.bs) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = icmp eq i32 %i.ca, %i.al
  br i1 %i.cb, label %bdrv_create_padded_qiov.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 1689, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_create_padded_qiov) #15
  unreachable

bb.v:                                             ; preds = %bb.h, %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %.not.i45 = icmp eq ptr %i.cd, null
  br i1 %.not.i45, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 41
  %i.cf = load i8, ptr %i.ce, align 1, !range !7, !noundef !8
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.ch, i64 noundef 0, ptr noundef nonnull %i.cd, i64 noundef %i.cj) #14 ; 0 uses
  %.pre.i46 = load ptr, ptr %i.cc, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cl = phi ptr [ %.pre.i46, %bb.x ], [ %i.cd, %bb.w ]
  call void @qemu_vfree(ptr noundef %i.cl) #14
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @qemu_iovec_destroy(ptr noundef nonnull %i.cm) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.cn = load ptr, ptr %6, align 8               ; 2 uses
  %.not12.i = icmp eq ptr %i.cn, null
  br i1 %.not12.i, label %bdrv_padding_finalize.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @qemu_vfree(ptr noundef nonnull %i.cn) #14
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @qemu_iovec_destroy(ptr noundef nonnull %i.co) #14
  br label %bdrv_padding_finalize.exit

bdrv_padding_finalize.exit:                       ; preds = %bb.z, %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %6, i8 noundef 0, i64 noundef 144, i1 noundef false) #14
  br label %bb.ae

bdrv_create_padded_qiov.exit:                     ; preds = %bb.t
  store ptr %i.ak, ptr %1, align 8
  store i64 0, ptr %2, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bdrv_create_padded_qiov.exit, %bb.e
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = add i64 %i.cs, %i.cq
  %i.cu = load i64, ptr %4, align 8
  %i.cv = add i64 %i.ct, %i.cu
  store i64 %i.cv, ptr %4, align 8
  %i.cw = load i64, ptr %i.cp, align 8
  %i.cx = load i64, ptr %3, align 8
  %i.cy = sub i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %3, align 8
  %.not43 = icmp eq ptr %7, null
  br i1 %.not43, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %7, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.cz = load i32, ptr %8, align 4
  %i.da = and i32 %i.cz, -9
  store i32 %i.da, ptr %8, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.c, %bb.d, %bb.a, %bb.ad, %bdrv_padding_finalize.exit
  %.0 = phi i32 [ %.0.i, %bb.a ], [ -22, %bdrv_padding_finalize.exit ], [ 0, %bb.ad ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @tracked_request_begin(ptr noundef initializes((0, 96)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %2, i64 noundef %3, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.b = tail call ptr @qemu_coroutine_self() #14
  store ptr %1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.a, i8 0, i64 24, i1 false)
  tail call void @qemu_co_queue_init(ptr noundef nonnull %.sroa.11.0..sroa_idx.a) #14
  %i.c = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16984 ; 2 uses
  tail call void %i.c(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.1, i32 noundef 625) #14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 17032 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  store ptr %i.f, ptr %.sroa.9.0..sroa_idx, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %.sroa.9.0..sroa_idx, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %0, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.e, ptr %i.h, align 8
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.1, i32 noundef 627) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @bdrv_aligned_preadv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) #0 {
bb.a:
  %8 = alloca %struct.BlockDriverInfo, align 8    ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8                ; 9 uses
  %i.c = tail call i32 @bdrv_check_qiov_request(i64 noundef %2, i64 noundef %3, ptr noundef %5, i64 noundef %6, ptr noundef nonnull @error_abort) ; 0 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %4)
  %or.cond144 = icmp eq i64 %i.d, 1
  br i1 %or.cond144, label %bb.b, label %is_power_of_2.exit.thread

is_power_of_2.exit.thread:                        ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 1339, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_aligned_preadv) #15
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %4, -1                           ; 3 uses
  %i.f = and i64 %i.e, %2
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 1340, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_aligned_preadv) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = and i64 %i.e, %3
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.1, i32 noundef 1341, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_aligned_preadv) #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.b, align 8
  %i.k = and i32 %i.j, 65536
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 1342, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_aligned_preadv) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16504
  %i.n = load i32, ptr %i.m, align 8
  %.fr124 = freeze i32 %i.n                       ; 2 uses
  %i.o = add i32 %.fr124, -1
  %or.cond136 = icmp ult i32 %i.o, 2147483646
  %narrow = select i1 %or.cond136, i32 %.fr124, i32 2147483647
  %.fr = zext nneg i32 %narrow to i64             ; 2 uses
  %i.p = srem i64 %.fr, %4
  %i.q = sub nsw i64 %.fr, %i.p                   ; 2 uses
  %i.r = and i32 %7, -522
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 1353, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_aligned_preadv) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.s = and i32 %7, 1
  %.not125 = icmp eq i32 %i.s, 0
  br i1 %.not125, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !annotation !31
  %i.t = call i32 @bdrv_co_get_info(ptr noundef nonnull %i.b, ptr noundef nonnull %8) #14
  %i.u = icmp slt i32 %i.t, 0
  %i.v = load i32, ptr %8, align 8                ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.w
  br i1 %or.cond.i, label %bb.l, label %bdrv_get_cluster_size.exit

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16464
  %i.y = load i32, ptr %i.x, align 8
  br label %bdrv_get_cluster_size.exit

bdrv_get_cluster_size.exit:                       ; preds = %bb.k, %bb.l
  %.0.i137 = phi i32 [ %i.y, %bb.l ], [ %i.v, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.z = sext i32 %.0.i137 to i64                 ; 2 uses
  %i.aa = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16984
  call void %i.aa(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.1, i32 noundef 802) #14, !inline_history !37
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %i.ae, i64 noundef %i.ag, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4, !range !7, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bdrv_co_is_allocated.exit, label %bb.m

bb.m:                                             ; preds = %bdrv_get_cluster_size.exit
  %i.al = load ptr, ptr %1, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16968
  %i.an = atomicrmw add ptr %i.am, i32 1 seq_cst, align 8 ; 0 uses
  store i8 1, ptr %i.ai, align 4
  br label %bdrv_co_is_allocated.exit

bb.n:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %1, align 8               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16968
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 8
  %.not.i138 = icmp eq i32 %i.aq, 0
  br i1 %.not.i138, label %bdrv_wait_serialising_requests.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16984 ; 2 uses
  tail call void %i.ar(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.1, i32 noundef 792) #14, !inline_history !38
  tail call void @bdrv_wait_serialising_requests_locked(ptr noundef nonnull %1)
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.1, i32 noundef 794) #14
  br label %bdrv_wait_serialising_requests.exit.thread

bdrv_co_is_allocated.exit:                        ; preds = %bb.m, %bdrv_get_cluster_size.exit
  %i.at = add nsw i64 %i.z, -1
  %i.au = add i64 %i.at, %i.ae
  %i.av = add i64 %i.au, %i.ag
  %i.aw = sub nsw i64 0, %i.z                     ; 2 uses
  %i.ax = and i64 %i.av, %i.aw
  %i.ay = and i64 %i.ae, %i.aw                    ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = call i64 @llvm.smin.i64(i64 %i.bb, i64 %i.ay)
  store i64 %i.bc, ptr %i.ba, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = call i64 @llvm.smax.i64(i64 %i.be, i64 %i.az)
  store i64 %i.bf, ptr %i.bd, align 8
  call void @bdrv_wait_serialising_requests_locked(ptr noundef nonnull %1)
  %i.bg = load ptr, ptr %1, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16984
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.bh, ptr noundef nonnull @.str.1, i32 noundef 807) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !annotation !31
  %i.bi = and i32 %7, 520                         ; 2 uses
  call void @assert_bdrv_graph_readable() #14
  %i.bj = call i32 @bdrv_co_do_block_status(ptr noundef nonnull %i.b, i32 noundef 16, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) ; 3 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %.thread, label %bb.p

bb.p:                                             ; preds = %bdrv_co_is_allocated.exit
  %i.bl = and i32 %i.bj, 16
  %.not126 = icmp ne i32 %i.bl, 0
  %i.bm = load i64, ptr %i.a, align 8
  %.not127 = icmp eq i64 %i.bm, %3
  %or.cond = select i1 %.not126, i1 %.not127, i1 false
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = call i32 @bdrv_co_do_copy_on_readv(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %3, ptr noundef %5, i64 noundef %6, i32 noundef %i.bi)
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %.not128 = icmp samesign ult i32 %7, 512
  br i1 %.not128, label %bb.s, label %.thread

.thread:                                          ; preds = %bdrv_co_is_allocated.exit, %bb.q, %bb.r
  %.0110.ph = phi i32 [ 1, %bb.r ], [ %i.bn, %bb.q ], [ %i.bj, %bdrv_co_is_allocated.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bdrv_wait_serialising_requests.exit.thread

bdrv_wait_serialising_requests.exit.thread:       ; preds = %bb.n, %bb.o, %bb.s
  %.1111 = phi i32 [ 1, %bb.s ], [ 0, %bb.o ], [ 0, %bb.n ]
  %.0108 = phi i32 [ %i.bi, %bb.s ], [ %7, %bb.o ], [ %7, %bb.n ] ; 3 uses
  %i.bo = call i64 @bdrv_co_getlength(ptr noundef nonnull %i.b) #14 ; 3 uses
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bdrv_wait_serialising_requests.exit.thread
  %i.bq = trunc i64 %i.bo to i32
  br label %.loopexit

bb.u:                                             ; preds = %bdrv_wait_serialising_requests.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 16584
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = and i32 %i.bs, 512
  %i.bu = xor i32 %i.bt, 512
  %i.bv = and i32 %i.bu, %.0108
  %.not129 = icmp eq i32 %i.bv, 0
  br i1 %.not129, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @__assert_fail(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.1, i32 noundef 1394, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_aligned_preadv) #15
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bw = sub i64 %i.bo, %2
  %i.bx = call i64 @llvm.smax.i64(i64 %i.bw, i64 0)
  %i.by = add nuw i64 %i.e, %i.bx
  %i.bz = sub i64 0, %4
  %i.ca = and i64 %i.by, %i.bz                    ; 2 uses
  %.not130 = icmp sgt i64 %3, %i.ca
  %.not131 = icmp sgt i64 %3, %i.q
  %or.cond161 = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond161, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = call i32 @bdrv_driver_preadv(ptr noundef nonnull %i.b, i64 noundef %2, i64 noundef %3, ptr noundef %5, i64 noundef %6, i32 noundef %.0108)
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %.not132146 = icmp eq i64 %3, 0
  br i1 %.not132146, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.cc = add i64 %3, %2
  %i.cd = add i64 %6, %3                          ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %.lr.ph
  %.0109148 = phi i64 [ %i.ca, %.lr.ph ], [ %.1, %bb.ae ] ; 3 uses
  %.0112147 = phi i64 [ %3, %.lr.ph ], [ %i.co, %bb.ae ] ; 7 uses
  %.not133 = icmp eq i64 %.0109148, 0
  br i1 %.not133, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = call i64 @llvm.smin.i64(i64 %.0109148, i64 %i.q)
  %i.cf = call i64 @llvm.smin.i64(i64 %.0112147, i64 %i.ce) ; 4 uses
  %.not135 = icmp eq i64 %i.cf, 0
  br i1 %.not135, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 1407, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_aligned_preadv) #15
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cg = sub i64 %i.cc, %.0112147
  %i.ch = sub i64 %i.cd, %.0112147
  %i.ci = call i32 @bdrv_driver_preadv(ptr noundef nonnull %i.b, i64 noundef %i.cg, i64 noundef %i.cf, ptr noundef %5, i64 noundef %i.ch, i32 noundef %.0108)
  %i.cj = sub i64 %.0109148, %i.cf
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.ck = sub i64 %i.cd, %.0112147
  %i.cl = call i64 @qemu_iovec_memset(ptr noundef %5, i64 noundef %i.ck, i32 noundef 0, i64 noundef %.0112147) #14
  %i.cm = trunc i64 %i.cl to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0114 = phi i64 [ %i.cf, %bb.ac ], [ %.0112147, %bb.ad ]
  %.3 = phi i32 [ %i.ci, %bb.ac ], [ %i.cm, %bb.ad ] ; 2 uses
  %.1 = phi i64 [ %i.cj, %bb.ac ], [ 0, %bb.ad ]
  %i.cn = icmp slt i32 %.3, 0
  %i.co = sub i64 %.0112147, %.0114               ; 2 uses
  %.not132 = icmp eq i64 %i.co, 0
  %or.cond160 = select i1 %i.cn, i1 true, i1 %.not132
  br i1 %or.cond160, label %.loopexit, label %bb.z

.loopexit:                                        ; preds = %bb.ae, %bb.y, %.thread, %bb.x, %bb.t
  %.4 = phi i32 [ %i.bq, %bb.t ], [ %i.cb, %bb.x ], [ %.0110.ph, %.thread ], [ %.1111, %bb.y ], [ %.3, %bb.ae ]
  %i.cp = call i32 @llvm.smin.i32(i32 %.4, i32 0)
  ret i32 %i.cp
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @tracked_request_end(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i8, ptr %i.a, align 4, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16968
  %i.f = atomicrmw sub ptr %i.e, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16984
  tail call void %i.g(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.1, i32 noundef 589) #14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %.pre15, ptr %i.l, align 8
  %.pre = load ptr, ptr %i.j, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %.pre, %bb.d ], [ null, %bb.c ]
  store ptr %i.m, ptr %.pre15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16984
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.1, i32 noundef 591) #14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @qemu_co_queue_restart_all(ptr noundef nonnull %i.p) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @bdrv_co_pwritev(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @bdrv_co_pwritev_part(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @bdrv_co_pwritev_part(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %6 = alloca %struct.BdrvTrackedRequest, align 8 ; 25 uses
  %7 = alloca %struct.BdrvRequestPadding, align 8 ; 13 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  store i64 %1, ptr %i.a, align 8
  store i64 %2, ptr %i.b, align 8
  store ptr %3, ptr %i.c, align 8
  store i64 %4, ptr %i.d, align 8
  store i32 %5, ptr %i.e, align 4
  %i.g = load ptr, ptr %0, align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16464 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i8 0, ptr %i.f, align 1
  %i.k = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %trace_bdrv_co_pwritev_part.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr @_TRACE_BDRV_CO_PWRITEV_PART_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.l, 0
  br i1 %.not3.i, label %trace_bdrv_co_pwritev_part.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 32768
  %.not4.i = icmp eq i32 %i.n, 0
  br i1 %.not4.i, label %trace_bdrv_co_pwritev_part.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.72, ptr noundef nonnull %i.g, i64 noundef %1, i64 noundef %2, i32 noundef %5) #14
  br label %trace_bdrv_co_pwritev_part.exit

trace_bdrv_co_pwritev_part.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.o = tail call zeroext i1 @bdrv_co_is_inserted(ptr noundef nonnull %i.g) #14
  br i1 %i.o, label %bb.e, label %bb.af

bb.e:                                             ; preds = %trace_bdrv_co_pwritev_part.exit
  %i.p = and i32 %5, 2
  %.not = icmp eq i32 %i.p, 0                     ; 2 uses
  %i.q = tail call i32 @bdrv_check_qiov_request(i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null) ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  %i.s = icmp ugt i64 %2, 2147483136
  %..i = select i1 %i.s, i32 -5, i32 0
  %i.t = select i1 %.not, i1 %i.r, i1 false
  %.0 = select i1 %i.t, i32 %..i, i32 %i.q        ; 2 uses
  %i.u = icmp slt i32 %.0, 0
  br i1 %i.u, label %bb.af, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = and i32 %5, 256
  %.not22 = icmp eq i32 %i.v, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = or i64 %2, %1
  %i.x = urem i64 %i.w, %i.j
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.af

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = icmp eq i64 %2, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.h, align 8
  %i.ab = zext i32 %i.aa to i64
  %i.ac = srem i64 %1, %i.ab
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.af

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, i8 0, i64 96, i1 false), !annotation !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 0, i64 144, i1 false), !annotation !31
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = call fastcc i32 @bdrv_pad_request(ptr noundef nonnull %i.g, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.b, i1 noundef zeroext true, ptr noundef %7, ptr noundef nonnull %i.f, ptr noundef %i.e) ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.af, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i64, ptr %i.a, align 8
  %.pre30 = load i64, ptr %i.b, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.ag = phi i64 [ %.pre30, %._crit_edge ], [ %2, %bb.j ] ; 5 uses
  %i.ah = phi i64 [ %.pre, %._crit_edge ], [ %1, %bb.j ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 16964 ; 2 uses
  %i.aj = atomicrmw add ptr %i.ai, i32 1 seq_cst, align 4 ; 0 uses
  %i.ak = call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %i.ah, i64 noundef %i.ag, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.al = call ptr @qemu_coroutine_self() #14
  store ptr %i.g, ptr %6, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ah, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %i.ag, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i64 %i.ah, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store i64 %i.ag, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.al, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i.a, i8 0, i64 24, i1 false)
  call void @qemu_co_queue_init(ptr noundef nonnull %.sroa.11.0..sroa_idx.i.a) #14
  %i.am = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16984 ; 2 uses
  call void %i.am(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.1, i32 noundef 625) #14, !inline_history !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 17032 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  store ptr %i.ap, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.not.i26 = icmp eq ptr %i.ap, null
  br i1 %.not.i26, label %tracked_request_begin.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store ptr %.sroa.9.0..sroa_idx.i, ptr %i.aq, align 8
  br label %tracked_request_begin.exit

tracked_request_begin.exit:                       ; preds = %bb.l, %bb.m
  store ptr %6, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.ao, ptr %i.ar, align 8
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.1, i32 noundef 627) #14
  %i.as = load i32, ptr %i.e, align 4             ; 4 uses
  %i.at = and i32 %i.as, 2
  %.not24 = icmp eq i32 %i.at, 0
  %i.au = load i8, ptr %i.f, align 1, !range !7, !noundef !8
  %i.av = trunc nuw i8 %i.au to i1                ; 2 uses
  br i1 %.not24, label %bb.q, label %bb.n

bb.n:                                             ; preds = %tracked_request_begin.exit
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 2308, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_pwritev_part) #15
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aw = call i32 @bdrv_co_do_zero_pwritev(ptr noundef nonnull %0, i64 noundef %i.ah, i64 noundef %i.ag, i32 noundef %i.as, ptr noundef nonnull %6)
  br label %bb.ab

bb.q:                                             ; preds = %tracked_request_begin.exit
  br i1 %i.av, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ax = and i32 %i.as, 1024
  %.not25 = icmp eq i32 %i.ax, 0
  br i1 %.not25, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 2320, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_pwritev_part) #15
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ay = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.az = load ptr, ptr %6, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16984
  call void %i.ay(ptr noundef nonnull %i.ba, ptr noundef nonnull @.str.1, i32 noundef 802) #14, !inline_history !37
  %i.bb = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.bc = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 2 uses
  %i.bd = call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.be = load i8, ptr %.sroa.5.0..sroa_idx.i, align 4, !range !7, !noundef !8
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bdrv_make_request_serialising.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %6, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16968
  %i.bi = atomicrmw add ptr %i.bh, i32 1 seq_cst, align 8 ; 0 uses
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 4
  br label %bdrv_make_request_serialising.exit

bdrv_make_request_serialising.exit:               ; preds = %bb.t, %bb.u
  %i.bj = add nsw i64 %i.j, -1
  %i.bk = add i64 %i.bj, %i.bb
  %i.bl = add i64 %i.bk, %i.bc
  %i.bm = sub nsw i64 0, %i.j                     ; 2 uses
  %i.bn = and i64 %i.bl, %i.bm
  %i.bo = and i64 %i.bb, %i.bm                    ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.br = call i64 @llvm.smin.i64(i64 %i.bq, i64 %i.bo)
  store i64 %i.br, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.bs = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.bt = call i64 @llvm.smax.i64(i64 %i.bs, i64 %i.bp)
  store i64 %i.bt, ptr %.sroa.8.0..sroa_idx.i, align 8
  call void @bdrv_wait_serialising_requests_locked(ptr noundef nonnull %6)
  %i.bu = load ptr, ptr %6, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16984
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.1, i32 noundef 807) #14
  %i.bw = call i32 @bdrv_padding_rmw_read(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i1 noundef zeroext false) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bdrv_make_request_serialising.exit, %bb.q
  %i.bx = load ptr, ptr %i.c, align 8
  %i.by = load i64, ptr %i.d, align 8
  %i.bz = call i32 @bdrv_aligned_pwritev(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %i.ah, i64 noundef %i.ag, i64 noundef %i.j, ptr noundef %i.bx, i64 noundef %i.by, i32 noundef %i.as)
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %.not.i27 = icmp eq ptr %i.cb, null
  br i1 %.not.i27, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 41
  %i.cd = load i8, ptr %i.cc, align 1, !range !7, !noundef !8
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.cf, i64 noundef 0, ptr noundef nonnull %i.cb, i64 noundef %i.ch) #14 ; 0 uses
  %.pre.i = load ptr, ptr %i.ca, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cj = phi ptr [ %.pre.i, %bb.x ], [ %i.cb, %bb.w ]
  call void @qemu_vfree(ptr noundef %i.cj) #14
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @qemu_iovec_destroy(ptr noundef nonnull %i.ck) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.cl = load ptr, ptr %7, align 8               ; 2 uses
  %.not12.i = icmp eq ptr %i.cl, null
  br i1 %.not12.i, label %bdrv_padding_finalize.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @qemu_vfree(ptr noundef nonnull %i.cl) #14
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @qemu_iovec_destroy(ptr noundef nonnull %i.cm) #14
  br label %bdrv_padding_finalize.exit

bdrv_padding_finalize.exit:                       ; preds = %bb.z, %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 noundef 0, i64 noundef 144, i1 noundef false) #14
  br label %bb.ab

bb.ab:                                            ; preds = %bdrv_padding_finalize.exit, %bb.p
  %.1 = phi i32 [ %i.aw, %bb.p ], [ %i.bz, %bdrv_padding_finalize.exit ]
  %i.cn = load i8, ptr %.sroa.5.0..sroa_idx.i, align 4, !range !7, !noundef !8
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cp = load ptr, ptr %6, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16968
  %i.cr = atomicrmw sub ptr %i.cq, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cs = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.ct = load ptr, ptr %6, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16984
  call void %i.cs(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.1, i32 noundef 589) #14, !inline_history !36
  %i.cv = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 3 uses
  %.not.i28 = icmp eq ptr %i.cv, null
  %.pre15.i = load ptr, ptr %i.ar, align 8        ; 2 uses
  br i1 %.not.i28, label %tracked_request_end.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  store ptr %.pre15.i, ptr %i.cw, align 8
  br label %tracked_request_end.exit

tracked_request_end.exit:                         ; preds = %bb.ad, %bb.ae
  store ptr %i.cv, ptr %.pre15.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %i.cx = load ptr, ptr %6, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16984
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.cy, ptr noundef nonnull @.str.1, i32 noundef 591) #14
  call void @qemu_co_queue_restart_all(ptr noundef nonnull %.sroa.11.0..sroa_idx.i.a) #14
  %i.cz = atomicrmw sub ptr %i.ai, i32 1 seq_cst, align 4 ; 0 uses
  call void @aio_wait_kick() #14
  br label %bb.af

bb.af:                                            ; preds = %bb.k, %bb.i, %bb.g, %bb.e, %trace_bdrv_co_pwritev_part.exit, %tracked_request_end.exit
  %.020 = phi i32 [ -123, %trace_bdrv_co_pwritev_part.exit ], [ %.1, %tracked_request_end.exit ], [ 0, %bb.i ], [ -95, %bb.g ], [ %.0, %bb.e ], [ %i.ae, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.020
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @bdrv_co_do_zero_pwritev(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef captures(address) %4) #0 {
bb.a:
  %5 = alloca %struct.QEMUIOVector, align 8       ; 13 uses
  %6 = alloca %struct.BdrvRequestPadding, align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16464
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64                     ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %6, i8 0, i64 144, i1 false), !annotation !31
  %i.e = and i32 %3, -9
  %i.f = call fastcc zeroext i1 @bdrv_init_padding(ptr noundef %i.a, i64 noundef %1, i64 noundef %2, i1 noundef zeroext true, ptr noundef %6)
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %3, 1024
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 2183, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_do_zero_pwritev) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.i = load ptr, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16984
  call void %i.h(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.1, i32 noundef 802) #14, !inline_history !37
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %i.l, i64 noundef %i.n, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !range !7, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bdrv_make_request_serialising.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %4, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16968
  %i.u = atomicrmw add ptr %i.t, i32 1 seq_cst, align 8 ; 0 uses
  store i8 1, ptr %i.p, align 4
  br label %bdrv_make_request_serialising.exit

bdrv_make_request_serialising.exit:               ; preds = %bb.d, %bb.e
  %i.v = add nsw i64 %i.d, -1
  %i.w = add i64 %i.v, %i.l
  %i.x = add i64 %i.w, %i.n
  %i.y = sub nsw i64 0, %i.d                      ; 3 uses
  %i.z = and i64 %i.x, %i.y
  %i.aa = and i64 %i.l, %i.y                      ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = call i64 @llvm.smin.i64(i64 %i.ad, i64 %i.aa)
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = call i64 @llvm.smax.i64(i64 %i.ag, i64 %i.ab)
  store i64 %i.ah, ptr %i.af, align 8
  call void @bdrv_wait_serialising_requests_locked(ptr noundef nonnull %4)
  %i.ai = load ptr, ptr %4, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16984
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.1, i32 noundef 807) #14
  %i.ak = call i32 @bdrv_padding_rmw_read(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %6, i1 noundef zeroext true) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !range !7
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %or.cond = select i1 %i.an, i1 true, i1 %i.aq
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bdrv_make_request_serialising.exit
  %i.ar = and i64 %1, %i.y
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.at = load i64, ptr %i.as, align 8
  %i.au = select i1 %i.aq, i64 %i.at, i64 %i.d    ; 3 uses
  %i.av = load ptr, ptr %6, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.aw, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %.sroa.2.0..sroa_idx.i, align 8
  store ptr %i.av, ptr %i.aw, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.au, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.ax = and i32 %3, -1035
  %i.ay = call i32 @bdrv_aligned_pwritev(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %i.ar, i64 noundef %i.au, i64 noundef %i.d, ptr noundef nonnull %5, i64 noundef 0, i32 noundef %i.ax) ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  %i.ba = load i8, ptr %i.ao, align 8, !range !7
  %i.bb = trunc nuw i8 %i.ba to i1
  %or.cond5 = select i1 %i.az, i1 true, i1 %i.bb
  %i.bc = load i64, ptr %i.al, align 8
  %i.bd = sub i64 %i.au, %i.bc                    ; 2 uses
  %i.be = add i64 %i.bd, %1
  %i.bf = sub i64 %2, %i.bd
  br i1 %or.cond5, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bdrv_make_request_serialising.exit, %bb.a
  %.170 = phi i64 [ %i.bf, %bb.f ], [ %2, %bdrv_make_request_serialising.exit ], [ %2, %bb.a ] ; 5 uses
  %.168 = phi i64 [ %i.be, %bb.f ], [ %1, %bdrv_make_request_serialising.exit ], [ %1, %bb.a ] ; 4 uses
  %.not78 = icmp eq i64 %.170, 0
  br i1 %.not78, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = add nsw i64 %i.d, -1
  %i.bh = and i64 %.168, %i.bg
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 2205, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_do_zero_pwritev) #15
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.h
  %.not79 = icmp ult i64 %.170, %i.d
  br i1 %.not79, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = sub nsw i64 0, %i.d
  %i.bk = and i64 %.170, %i.bj                    ; 3 uses
  %i.bl = call i32 @bdrv_aligned_pwritev(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %.168, i64 noundef %i.bk, i64 noundef %i.d, ptr noundef null, i64 noundef 0, i32 noundef %i.e) ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = sub i64 %.170, %i.bk
  %i.bo = add i64 %.168, %i.bk
  br i1 %i.bm, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.372 = phi i64 [ %i.bn, %bb.k ], [ %.170, %bb.j ] ; 2 uses
  %.3 = phi i64 [ %i.bo, %bb.k ], [ %.168, %bb.j ] ; 2 uses
  %.not80 = icmp eq i64 %.372, 0
  br i1 %.not80, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = add nsw i64 %i.d, -1
  %i.bq = and i64 %.3, %i.bp
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 2218, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_do_zero_pwritev) #15
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %i.bt, %.372
  %i.bv = icmp eq i64 %i.bu, %i.d
  br i1 %i.bv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @__assert_fail(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 2220, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_do_zero_pwritev) #15
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.by, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %.sroa.2.0..sroa_idx.i81, align 8
  store ptr %i.bx, ptr %i.by, align 8
  %.sroa.7.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx.i84, align 8
  %i.bz = and i32 %3, -11
  %i.ca = call i32 @bdrv_aligned_pwritev(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %.3, i64 noundef %i.d, i64 noundef %i.d, ptr noundef nonnull %5, i64 noundef 0, i32 noundef %i.bz)
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.f, %bb.l, %bb.q
  %.275 = phi i32 [ %i.ca, %bb.q ], [ 0, %bb.l ], [ %i.bl, %bb.k ], [ %i.ay, %bb.f ]
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 41
  %i.ce = load i8, ptr %i.cd, align 1, !range !7, !noundef !8
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 104
end_hunk_1
begin_hunk_2_@bdrv_co_copy_range_internal:bb.a

bb.u:                                             ; preds = %bb.t
  %i.s = tail call i32 @bdrv_check_qiov_request(i64 noundef %1, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef null) ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %.0.i90 = select i1 %i.t, i32 %i.s, i32 %..i    ; 2 uses
  %.not84 = icmp eq i32 %.0.i90, 0
  br i1 %.not84, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i64 96, i1 false), !annotation !31
  %i.u = load ptr, ptr %0, align 8                ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 560
  %i.y = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.x, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 601, ptr null)
  %i.z = load ptr, ptr %i.y, align 8
  %.not85 = icmp eq ptr %i.z, null
  br i1 %.not85, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aa = load ptr, ptr %2, align 8               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 568
  %i.ae = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ad, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 615, ptr null)
  %i.af = load ptr, ptr %i.ae, align 8
  %.not86 = icmp eq ptr %i.af, null
  br i1 %.not86, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !range !7, !noundef !8
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ak = load i8, ptr %i.aj, align 4, !range !7, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %7, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 16964
  %i.an = atomicrmw add ptr %i.am, i32 1 seq_cst, align 4 ; 0 uses
  %i.ao = load ptr, ptr %0, align 8
  call void @tracked_request_begin(ptr noundef nonnull %8, ptr noundef %i.ao, i64 noundef %1, i64 noundef %4, i32 noundef 0)
  %i.ap = and i32 %5, 128
  %.not88 = icmp eq i32 %i.ap, 0
  br i1 %.not88, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @__assert_fail(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.1, i32 noundef 3509, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_co_copy_range_internal) #15
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @bdrv_wait_serialising_requests(ptr noundef nonnull %8)
  %i.aq = load ptr, ptr %0, align 8               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 560
  %i.au = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.at, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 601, ptr null)
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call i32 %i.av(ptr noundef %i.aq, ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) #14
  call void @tracked_request_end(ptr noundef nonnull %8)
  %i.ax = load ptr, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16964
  %i.az = atomicrmw sub ptr %i.ay, i32 1 seq_cst, align 4 ; 0 uses
  call void @aio_wait_kick() #14
  br label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 16964
  %i.bb = atomicrmw add ptr %i.ba, i32 1 seq_cst, align 4 ; 0 uses
  %i.bc = load ptr, ptr %2, align 8
  call void @tracked_request_begin(ptr noundef nonnull %8, ptr noundef %i.bc, i64 noundef %3, i64 noundef %4, i32 noundef 1)
  %i.bd = call i32 @bdrv_co_write_req_prepare(ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %8, i32 noundef %6) ; 2 uses
  %.not87 = icmp eq i32 %i.bd, 0
  br i1 %.not87, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.be = load ptr, ptr %2, align 8               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 568
  %i.bi = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.bh, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 615, ptr null)
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call i32 %i.bj(ptr noundef %i.be, ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0 = phi i32 [ %i.bd, %bb.ad ], [ %i.bk, %bb.ae ] ; 2 uses
  call void @bdrv_co_write_req_finish(ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %8, i32 noundef %.0)
  call void @tracked_request_end(ptr noundef nonnull %8)
  %i.bl = load ptr, ptr %2, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16964
  %i.bn = atomicrmw sub ptr %i.bm, i32 1 seq_cst, align 4 ; 0 uses
  call void @aio_wait_kick() #14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af, %bb.v, %bb.w, %bb.x, %bb.y, %bb.u, %bb.r, %bb.s, %bb.t, %bb.l, %bb.i, %bb.j, %bb.k, %bdrv_co_pwrite_zeroes.exit
  %.067 = phi i32 [ -123, %bb.i ], [ %i.p, %bdrv_co_pwrite_zeroes.exit ], [ -123, %bb.r ], [ %.0.i90, %bb.u ], [ -95, %bb.v ], [ %.0.i, %bb.l ], [ -123, %bb.k ], [ -123, %bb.j ], [ -123, %bb.t ], [ -123, %bb.s ], [ -95, %bb.y ], [ -95, %bb.x ], [ -95, %bb.w ], [ %i.aw, %bb.ac ], [ %.0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret i32 %.067
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @bdrv_co_copy_range_to(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  tail call void @assert_bdrv_graph_readable() #14
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_bdrv_co_copy_range_to.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_BDRV_CO_COPY_RANGE_TO_DSTATE, align 2
  %.not6.i = icmp eq i16 %i.b, 0
  br i1 %.not6.i, label %trace_bdrv_co_copy_range_to.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not7.i = icmp eq i32 %i.d, 0
  br i1 %.not7.i, label %trace_bdrv_co_copy_range_to.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.104, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) #14
  br label %trace_bdrv_co_copy_range_to.exit

trace_bdrv_co_copy_range_to.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.e = tail call i32 @bdrv_co_copy_range_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext false)
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @bdrv_co_copy_range(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  tail call void @assert_bdrv_graph_readable() #14
  tail call void @assert_bdrv_graph_readable() #14
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %bdrv_co_copy_range_from.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_BDRV_CO_COPY_RANGE_FROM_DSTATE, align 2
  %.not6.i.i = icmp eq i16 %i.b, 0
  br i1 %.not6.i.i, label %bdrv_co_copy_range_from.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not7.i.i = icmp eq i32 %i.d, 0
  br i1 %.not7.i.i, label %bdrv_co_copy_range_from.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.98, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) #14
  br label %bdrv_co_copy_range_from.exit

bdrv_co_copy_range_from.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.e = tail call i32 @bdrv_co_copy_range_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext true)
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_co_parent_cb_resize(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  tail call void @assert_bdrv_graph_readable() #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16840
  %.08 = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not9 = icmp eq ptr %.08, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.010 = phi ptr [ %.0, %bb.c ], [ %.08, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.e, null
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void %i.e(ptr noundef nonnull %.010) #14
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.010, i64 80
  %.0 = load ptr, ptr %i.f, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @bdrv_co_truncate(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %6 = alloca %struct.BdrvTrackedRequest, align 8 ; 24 uses
  %i.a = load ptr, ptr %0, align 8                ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  tail call void @assert_bdrv_graph_readable() #14
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 3626, ptr noundef nonnull @__func__.bdrv_co_truncate, ptr noundef nonnull @.str.30) #14
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 3630, ptr noundef nonnull @__func__.bdrv_co_truncate, ptr noundef nonnull @.str.31) #14
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.e = icmp samesign ugt i64 %1, 9223372035781033984
  br i1 %i.e, label %bdrv_check_qiov_request.exit.thread, label %bdrv_check_qiov_request.exit

bdrv_check_qiov_request.exit.thread:              ; preds = %bb.e
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 836, ptr noundef nonnull @__func__.bdrv_check_qiov_request, ptr noundef nonnull @.str.16, i64 noundef %1, i64 noundef 9223372035781033984) #14
  br label %bb.af

bdrv_check_qiov_request.exit:                     ; preds = %bb.e
  %i.f = tail call i64 @bdrv_co_getlength(ptr noundef nonnull %i.a) #14 ; 5 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bdrv_check_qiov_request.exit
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  %i.i = sub i32 0, %i.h
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 3641, ptr noundef nonnull @__func__.bdrv_co_truncate, i32 noundef %i.i, ptr noundef nonnull @.str.32) #14
  br label %bb.af

bb.g:                                             ; preds = %bdrv_check_qiov_request.exit
  %i.j = tail call zeroext i1 @bdrv_is_read_only(ptr noundef nonnull %i.a) #14
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 3646, ptr noundef nonnull @__func__.bdrv_co_truncate, ptr noundef nonnull @.str.33) #14
  br label %bb.af

bb.i:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, i8 0, i64 96, i1 false), !annotation !31
  %.081 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %i.f) ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16964 ; 2 uses
  %i.l = atomicrmw add ptr %i.k, i32 1 seq_cst, align 4 ; 0 uses
  %i.m = sub nsw i64 %1, %.081                    ; 5 uses
  %i.n = tail call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %i.m, i64 noundef %.081, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.o = tail call ptr @qemu_coroutine_self() #14
  store ptr %i.a, ptr %6, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.m, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %.081, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 3, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i64 %i.m, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store i64 %.081, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.o, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i.a, i8 0, i64 24, i1 false)
  call void @qemu_co_queue_init(ptr noundef nonnull %.sroa.11.0..sroa_idx.i.a) #14
  %i.p = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16984 ; 2 uses
  call void %i.p(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.1, i32 noundef 625) #14, !inline_history !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 17032 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  store ptr %i.s, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %tracked_request_begin.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr %.sroa.9.0..sroa_idx.i, ptr %i.t, align 8
  br label %tracked_request_begin.exit

tracked_request_begin.exit:                       ; preds = %bb.i, %bb.j
  store ptr %6, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.r, ptr %i.u, align 8
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.1, i32 noundef 627) #14
  %i.v = icmp samesign ugt i64 %1, %i.f           ; 2 uses
  br i1 %i.v, label %.split88, label %.split

.split88:                                         ; preds = %tracked_request_begin.exit
  %i.w = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.x = load ptr, ptr %6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16984
  call void %i.w(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.1, i32 noundef 802) #14, !inline_history !37
  %i.z = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.aa = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 2 uses
  %i.ab = call range(i32 -5, 1) i32 @bdrv_check_qiov_request(i64 noundef %i.z, i64 noundef %i.aa, ptr noundef null, i64 noundef 0, ptr noundef nonnull @error_abort) ; 0 uses
  %i.ac = load i8, ptr %.sroa.5.0..sroa_idx.i, align 4, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bdrv_make_request_serialising.exit, label %bb.k

bb.k:                                             ; preds = %.split88
  %i.ae = load ptr, ptr %6, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16968
  %i.ag = atomicrmw add ptr %i.af, i32 1 seq_cst, align 8 ; 0 uses
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 4
  br label %bdrv_make_request_serialising.exit

bdrv_make_request_serialising.exit:               ; preds = %.split88, %bb.k
  %i.ah = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.ai = call i64 @llvm.smin.i64(i64 %i.ah, i64 %i.z)
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.aj = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.ak = call i64 @llvm.smax.i64(i64 %i.aj, i64 %i.aa)
  store i64 %i.ak, ptr %.sroa.8.0..sroa_idx.i, align 8
  call void @bdrv_wait_serialising_requests_locked(ptr noundef nonnull %6)
  %i.al = load ptr, ptr %6, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16984
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.1, i32 noundef 807) #14
  br label %.split

.split:                                           ; preds = %tracked_request_begin.exit, %bdrv_make_request_serialising.exit
  %.sink = phi i64 [ %.081, %bdrv_make_request_serialising.exit ], [ 0, %tracked_request_begin.exit ]
  %i.an = call i32 @bdrv_co_write_req_prepare(ptr noundef nonnull %0, i64 noundef %i.m, i64 noundef %.sink, ptr noundef nonnull %6, i32 noundef 0) ; 3 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split
  %i.ap = sub nsw i32 0, %i.an
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 3670, ptr noundef nonnull @__func__.bdrv_co_truncate, i32 noundef %i.ap, ptr noundef nonnull @.str.34) #14
  br label %bb.ab

bb.m:                                             ; preds = %.split
  %i.aq = call ptr @bdrv_filter_child(ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.ar = call ptr @bdrv_cow_child(ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.as = icmp ne ptr %i.ar, null
  %or.cond = select i1 %i.v, i1 %i.as, i1 false
  br i1 %or.cond, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.ar, align 8
  %i.au = call i64 @bdrv_co_getlength(ptr noundef %i.at) #14 ; 3 uses
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n
  %i.aw = icmp samesign ugt i64 %i.au, %i.f
  %i.ax = or i32 %4, 2
  %spec.select = select i1 %i.aw, i32 %i.ax, i32 %4
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = trunc i64 %i.au to i32                  ; 2 uses
  %i.az = sub i32 0, %i.ay
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 3693, ptr noundef nonnull @__func__.bdrv_co_truncate, i32 noundef %i.az, ptr noundef nonnull @.str.35) #14
  br label %bb.ab

bb.p:                                             ; preds = %.thread, %bb.m
  %.286 = phi i32 [ %spec.select, %.thread ], [ %4, %bb.m ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 648 ; 2 uses
  %i.bb = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ba, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 723, ptr null)
  %i.bc = load ptr, ptr %i.bb, align 8
  %.not99 = icmp eq ptr %i.bc, null
  br i1 %.not99, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16596
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = xor i32 %i.be, -1
  %i.bg = and i32 %.286, %i.bf
  %.not101 = icmp eq i32 %i.bg, 0
  br i1 %.not101, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 3704, ptr noundef nonnull @__func__.bdrv_co_truncate, ptr noundef nonnull @.str.36) #14
  br label %bb.ab

bb.s:                                             ; preds = %bb.q
  %i.bh = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ba, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 723, ptr null)
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call i32 %i.bi(ptr noundef nonnull %i.a, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %.286, ptr noundef %5) #14
  br label %bb.w

bb.t:                                             ; preds = %bb.p
  %.not100 = icmp eq ptr %i.aq, null
  br i1 %.not100, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = call i32 @bdrv_co_truncate(ptr noundef nonnull %i.aq, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %.286, ptr noundef %5)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 3712, ptr noundef nonnull @__func__.bdrv_co_truncate, ptr noundef nonnull @.str.37) #14
  br label %bb.ab

bb.w:                                             ; preds = %bb.u, %bb.s
  %.1 = phi i32 [ %i.bj, %bb.s ], [ %i.bk, %bb.u ] ; 2 uses
  %i.bl = icmp slt i32 %.1, 0
  br i1 %i.bl, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = lshr i64 %1, 9
  %i.bn = call i32 @bdrv_co_refresh_total_sectors(ptr noundef nonnull %i.a, i64 noundef %i.bm) #14 ; 3 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bp = sub i32 0, %i.bn
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 3722, ptr noundef nonnull @__func__.bdrv_co_truncate, i32 noundef %i.bp, ptr noundef nonnull @.str.38) #14
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 16880
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = shl i64 %i.br, 9
  %.pre = sub i64 %i.bs, %.081
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre-phi = phi i64 [ %.pre, %bb.z ], [ %i.m, %bb.y ]
  call void @bdrv_co_write_req_finish(ptr noundef nonnull %0, i64 noundef %.pre-phi, i64 noundef %.081, ptr noundef nonnull %6, i32 noundef 0)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.o, %bb.w, %bb.aa, %bb.v, %bb.r, %bb.l
  %.2 = phi i32 [ %i.an, %bb.l ], [ -95, %bb.r ], [ %.1, %bb.w ], [ %i.bn, %bb.aa ], [ -95, %bb.v ], [ %i.ay, %bb.o ]
  %i.bt = load i8, ptr %.sroa.5.0..sroa_idx.i, align 4, !range !7, !noundef !8
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bv = load ptr, ptr %6, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16968
  %i.bx = atomicrmw sub ptr %i.bw, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.by = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.bz = load ptr, ptr %6, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16984
  call void %i.by(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.1, i32 noundef 589) #14, !inline_history !36
  %i.cb = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 3 uses
  %.not.i102 = icmp eq ptr %i.cb, null
  %.pre15.i = load ptr, ptr %i.u, align 8         ; 2 uses
  br i1 %.not.i102, label %tracked_request_end.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store ptr %.pre15.i, ptr %i.cc, align 8
  br label %tracked_request_end.exit

tracked_request_end.exit:                         ; preds = %bb.ad, %bb.ae
  store ptr %i.cb, ptr %.pre15.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %i.cd = load ptr, ptr %6, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16984
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.ce, ptr noundef nonnull @.str.1, i32 noundef 591) #14
  call void @qemu_co_queue_restart_all(ptr noundef nonnull %.sroa.11.0..sroa_idx.i.a) #14
  %i.cf = atomicrmw sub ptr %i.k, i32 1 seq_cst, align 4 ; 0 uses
  call void @aio_wait_kick() #14
  br label %bb.af

bb.af:                                            ; preds = %bdrv_check_qiov_request.exit.thread, %tracked_request_end.exit, %bb.h, %bb.f, %bb.d, %bb.b
  %.082 = phi i32 [ -22, %bb.d ], [ -123, %bb.b ], [ %i.h, %bb.f ], [ -13, %bb.h ], [ %.2, %tracked_request_end.exit ], [ -5, %bdrv_check_qiov_request.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.082
}

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @bdrv_filter_child(ptr noundef) local_unnamed_addr #1

declare ptr @bdrv_cow_child(ptr noundef) local_unnamed_addr #1

declare i32 @bdrv_co_refresh_total_sectors(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @bdrv_cancel_in_flight(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3742, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_cancel_in_flight) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @bdrv_graph_rdlock_main_loop() #14
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.e(ptr noundef nonnull %0) #14
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  tail call void @bdrv_graph_rdunlock_main_loop() #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @bdrv_co_preadv_snapshot(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  tail call void @assert_bdrv_graph_readable() #14
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 584 ; 2 uses
  %i.e = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.d, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 667, ptr null)
  %i.f = load ptr, ptr %i.e, align 8
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16964 ; 2 uses
  %i.h = atomicrmw add ptr %i.g, i32 1 seq_cst, align 4 ; 0 uses
  %i.i = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.d, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 667, ptr null)
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef nonnull %i.a, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #14
  %i.l = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @aio_wait_kick() #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -123, %bb.a ], [ -95, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @bdrv_co_snapshot_block_status(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @assert_bdrv_graph_readable() #14
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 592 ; 2 uses
  %i.d = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.c, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 671, ptr null)
  %i.e = load ptr, ptr %i.d, align 8
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16964 ; 2 uses
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  %i.h = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.c, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 671, ptr null)
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #14
  %i.k = atomicrmw sub ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @aio_wait_kick() #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ -123, %bb.a ], [ -95, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @bdrv_co_pdiscard_snapshot(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @assert_bdrv_graph_readable() #14
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 2 uses
  %i.d = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.c, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 675, ptr null)
  %i.e = load ptr, ptr %i.d, align 8
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16964 ; 2 uses
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  %i.h = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.c, ptr nonnull @.str.4, ptr nonnull @.str.5, i32 675, ptr null)
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) #14
  %i.k = atomicrmw sub ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @aio_wait_kick() #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ -123, %bb.a ], [ -95, %bb.b ]
  ret i32 %.0
}

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @bdrv_refresh_limits_abort(ptr nofree noundef readonly captures(none) %0) #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16464
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %i.c, i64 120, i1 false)
  ret void
}

declare void @g_free(ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #11

declare ptr @bdrv_get_aio_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @bdrv_drain_poll_top_level(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 282, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_poll_top_level) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @bdrv_graph_rdlock_main_loop() #14
  %i.b = tail call zeroext i1 @qemu_in_main_thread() #14
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 266, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_drain_poll) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @assert_bdrv_graph_readable() #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16840
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not11.i.i = icmp eq ptr %i.d, null
  br i1 %.not11.i.i, label %bdrv_parent_drained_poll.exit.thread.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.e, %bdrv_parent_drained_poll_single.exit.i.i
  %.013.i.i = phi i1 [ %.1.i.i, %bdrv_parent_drained_poll_single.exit.i.i ], [ false, %bb.e ] ; 3 uses
  %.01012.i.i = phi ptr [ %i.f, %bdrv_parent_drained_poll_single.exit.i.i ], [ %i.d, %bb.e ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 80
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %.01012.i.i, %1
  br i1 %i.g, label %bdrv_parent_drained_poll_single.exit.i.i, label %bb.f
end_hunk_2
