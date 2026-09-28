Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/flexfilelayout?download=true
inline.NumInlined: 525
inline.NumDeleted: 183
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@ff_layout_write_call_ops_v4 = internal constant %struct.rpc_call_ops { ptr @ff_layout_write_prepare_v4, ptr @ff_layout_write_call_done, ptr @ff_layout_write_count_stats, ptr @ff_layout_write_release }, align 8
@__tracepoint_ff_layout_write_error = external dso_local global %struct.tracepoint, align 8
@__do_trace_ff_layout_write_error.__trace_check_ff_layout_write_error = internal constant [22 x i8] c"ff_layout_write_error\00", section "__tracepoint_check", align 16
@__do_trace_ff_layout_write_error.__UNIQUE_ID_addressable___SCK__tp_func_ff_layout_write_error_1699 = internal global ptr @__SCK__tp_func_ff_layout_write_error, section ".discard.addressable", align 8
@__SCK__tp_func_ff_layout_write_error = external dso_local global %struct.static_call_key, align 8
@__tracepoint_nfs4_pnfs_write = external dso_local global %struct.tracepoint, align 8
@__do_trace_nfs4_pnfs_write.__trace_check_nfs4_pnfs_write = internal constant [16 x i8] c"nfs4_pnfs_write\00", section "__tracepoint_check", align 16
@__do_trace_nfs4_pnfs_write.__UNIQUE_ID_addressable___SCK__tp_func_nfs4_pnfs_write_1545 = internal global ptr @__SCK__tp_func_nfs4_pnfs_write, section ".discard.addressable", align 8
@__SCK__tp_func_nfs4_pnfs_write = external dso_local global %struct.static_call_key, align 8
@__tracepoint_pnfs_mds_fallback_write_done = external dso_local global %struct.tracepoint, align 8
@__do_trace_pnfs_mds_fallback_write_done.__trace_check_pnfs_mds_fallback_write_done = internal constant [29 x i8] c"pnfs_mds_fallback_write_done\00", section "__tracepoint_check", align 16
@__do_trace_pnfs_mds_fallback_write_done.__UNIQUE_ID_addressable___SCK__tp_func_pnfs_mds_fallback_write_done_1643 = internal global ptr @__SCK__tp_func_pnfs_mds_fallback_write_done, section ".discard.addressable", align 8
@__SCK__tp_func_pnfs_mds_fallback_write_done = external dso_local global %struct.static_call_key, align 8
@__tracepoint_pnfs_mds_fallback_write_pagelist = external dso_local global %struct.tracepoint, align 8
@__do_trace_pnfs_mds_fallback_write_pagelist.__trace_check_pnfs_mds_fallback_write_pagelist = internal constant [33 x i8] c"pnfs_mds_fallback_write_pagelist\00", section "__tracepoint_check", align 16
@__do_trace_pnfs_mds_fallback_write_pagelist.__UNIQUE_ID_addressable___SCK__tp_func_pnfs_mds_fallback_write_pagelist_1657 = internal global ptr @__SCK__tp_func_pnfs_mds_fallback_write_pagelist, section ".discard.addressable", align 8
@__SCK__tp_func_pnfs_mds_fallback_write_pagelist = external dso_local global %struct.static_call_key, align 8
@layoutreturn_ops = internal constant %struct.nfs4_xdr_opaque_ops { ptr @ff_layout_encode_layoutreturn, ptr @ff_layout_free_layoutreturn }, align 8
@layoutstat_ops = internal constant %struct.nfs4_xdr_opaque_ops { ptr @ff_layout_encode_layoutstats, ptr @ff_layout_free_layoutstats }, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c".%u.%u\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"::ffff:%pI4\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%pI6c\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"include/linux/nfs_xdr.h\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"\016%s: NFSv4 Flexfile Layout Driver Registering...\0A\00", align 1
@__func__.nfs4flexfilelayout_init = private unnamed_addr constant [24 x i8] c"nfs4flexfilelayout_init\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_addressable_nfs4flexfilelayout_init_1776, ptr @__UNIQUE_ID_modinfo_1771, ptr @__UNIQUE_ID_modinfo_1772, ptr @__UNIQUE_ID_modinfo_1773, ptr @__UNIQUE_ID_modinfo_1774, ptr @__UNIQUE_ID_modinfo_1777, ptr @__UNIQUE_ID_modinfo_1778, ptr @__do_trace_ff_layout_commit_error.__UNIQUE_ID_addressable___SCK__tp_func_ff_layout_commit_error_1706, ptr @__do_trace_ff_layout_commit_error.__trace_check_ff_layout_commit_error, ptr @__do_trace_ff_layout_read_error.__UNIQUE_ID_addressable___SCK__tp_func_ff_layout_read_error_1692, ptr @__do_trace_ff_layout_read_error.__trace_check_ff_layout_read_error, ptr @__do_trace_ff_layout_write_error.__UNIQUE_ID_addressable___SCK__tp_func_ff_layout_write_error_1699, ptr @__do_trace_ff_layout_write_error.__trace_check_ff_layout_write_error, ptr @__do_trace_nfs4_pnfs_commit_ds.__UNIQUE_ID_addressable___SCK__tp_func_nfs4_pnfs_commit_ds_1559, ptr @__do_trace_nfs4_pnfs_commit_ds.__trace_check_nfs4_pnfs_commit_ds, ptr @__do_trace_nfs4_pnfs_read.__UNIQUE_ID_addressable___SCK__tp_func_nfs4_pnfs_read_1531, ptr @__do_trace_nfs4_pnfs_read.__trace_check_nfs4_pnfs_read, ptr @__do_trace_nfs4_pnfs_write.__UNIQUE_ID_addressable___SCK__tp_func_nfs4_pnfs_write_1545, ptr @__do_trace_nfs4_pnfs_write.__trace_check_nfs4_pnfs_write, ptr @__do_trace_pnfs_mds_fallback_pg_get_mirror_count.__UNIQUE_ID_addressable___SCK__tp_func_pnfs_mds_fallback_pg_get_mirror_count_1629, ptr @__do_trace_pnfs_mds_fallback_pg_get_mirror_count.__trace_check_pnfs_mds_fallback_pg_get_mirror_count, ptr @__do_trace_pnfs_mds_fallback_pg_init_read.__UNIQUE_ID_addressable___SCK__tp_func_pnfs_mds_fallback_pg_init_read_1615, ptr @__do_trace_pnfs_mds_fallback_pg_init_read.__trace_check_pnfs_mds_fallback_pg_init_read, ptr @__do_trace_pnfs_mds_fallback_pg_init_write.__UNIQUE_ID_addressable___SCK__tp_func_pnfs_mds_fallback_pg_init_write_1622, ptr @__do_trace_pnfs_mds_fallback_pg_init_write.__trace_check_pnfs_mds_fallback_pg_init_write, ptr @__do_trace_pnfs_mds_fallback_read_done.__UNIQUE_ID_addressable___SCK__tp_func_pnfs_mds_fallback_read_done_1636, ptr @__do_trace_pnfs_mds_fallback_read_done.__trace_check_pnfs_mds_fallback_read_done, ptr @__do_trace_pnfs_mds_fallback_read_pagelist.__UNIQUE_ID_addressable___SCK__tp_func_pnfs_mds_fallback_read_pagelist_1650, ptr @__do_trace_pnfs_mds_fallback_read_pagelist.__trace_check_pnfs_mds_fallback_read_pagelist, ptr @__do_trace_pnfs_mds_fallback_write_done.__UNIQUE_ID_addressable___SCK__tp_func_pnfs_mds_fallback_write_done_1643, ptr @__do_trace_pnfs_mds_fallback_write_done.__trace_check_pnfs_mds_fallback_write_done, ptr @__do_trace_pnfs_mds_fallback_write_pagelist.__UNIQUE_ID_addressable___SCK__tp_func_pnfs_mds_fallback_write_pagelist_1657, ptr @__do_trace_pnfs_mds_fallback_write_pagelist.__trace_check_pnfs_mds_fallback_write_pagelist, ptr @__param_io_maxretrans, ptr @nfs4flexfilelayout_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local void @ff_layout_send_layouterror(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @nfs4flexfilelayout_exit() #1 section ".exit.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nfs4flexfilelayout_exit) #18 ; 0 uses
  tail call void @pnfs_unregister_layoutdriver(ptr noundef nonnull @flexfilelayout_type) #19
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pnfs_unregister_layoutdriver(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @nfs4flexfilelayout_init() #1 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.nfs4flexfilelayout_init) #18 ; 0 uses
  %i.b = tail call i32 @pnfs_register_layoutdriver(ptr noundef nonnull @flexfilelayout_type) #19
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @ff_layout_set_layoutdriver(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef ptr @ff_layout_alloc_layout_hdr(ptr nofree readnone captures(none) %0, i32 noundef %1) #4 align 16 prefalign(16) {
__kmalloc_index.exit.i:
  %i.a = or i32 %1, 256
  %i.b = and i32 %1, 17
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_kzalloc_noprof.exit, label %bb.a, !prof !14

bb.a:                                             ; preds = %__kmalloc_index.exit.i
  %i.d = and i32 %1, 1
  %..i.i = add nuw nsw i32 %i.d, 1
  %i.e = zext nneg i32 %..i.i to i64
  br label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %__kmalloc_index.exit.i, %bb.a
  %.0.i3.i = phi i64 [ 0, %__kmalloc_index.exit.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i3.i
  %i.g = getelementptr i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = tail call noalias align 8 dereferenceable_or_null(248) ptr @__kmalloc_cache_noprof(ptr noundef %i.h, i32 noundef range(i32 256, 0) %i.a, i64 noundef 248) #20 ; 10 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_kzalloc_noprof.exit
  %i.j = getelementptr i8, ptr %i.i, i64 168      ; 3 uses
  store volatile ptr %i.j, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 176
  store volatile ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.i, i64 192      ; 2 uses
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.i, i64 216      ; 3 uses
  store volatile ptr %i.m, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.i, i64 224
  store volatile ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.i, i64 200      ; 3 uses
  store volatile ptr %i.o, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 208
  store volatile ptr %i.o, ptr %i.p, align 8
  %i.q = tail call i64 @ktime_get() #19
  %i.r = getelementptr i8, ptr %i.i, i64 232
  store i64 %i.q, ptr %i.r, align 8
  store ptr @ff_layout_commit_ops, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %_kzalloc_noprof.exit, %bb.b
  ret ptr %i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ff_layout_free_layout_hdr(ptr noundef %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 216        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.b, %i.a
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.023 = phi ptr [ %.019, %.lr.ph ], [ %i.b, %bb.a ] ; 4 uses
  %.019 = load ptr, ptr %.023, align 8            ; 4 uses
  %i.c = getelementptr i8, ptr %.023, i64 8       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %.019, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store volatile ptr %.019, ptr %i.d, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.023, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.c, align 8
  tail call void @kfree(ptr noundef %.023) #19
  %.not = icmp eq ptr %.019, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not21 = icmp eq ptr %0, null
  br i1 %.not21, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr i8, ptr %0, i64 152
  tail call void @kvfree_call_rcu(ptr noundef %i.f, ptr noundef nonnull %0) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ff_layout_alloc_lseg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.xdr_stream, align 8         ; 20 uses
  %4 = alloca %struct.xdr_buf, align 8            ; 4 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = tail call ptr @folio_alloc_noprof(i32 noundef %2, i32 noundef 0) #19 ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %folio_put.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false), !annotation !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false), !annotation !16
  %i.c = getelementptr i8, ptr %1, i64 96
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 12
  %i.g = load i32, ptr %i.f, align 4
  call void @xdr_init_decode_pages(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %i.e, i32 noundef %i.g) #19
  %i.h = load i64, ptr @vmemmap_base, align 8
  %i.i = load i64, ptr @page_offset_base, align 8
  %i.j = load volatile i64, ptr %i.b, align 8
  %i.k = and i64 %i.j, 64
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %xdr_set_scratch_folio.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.b, i64 64
  %.val.i.i.i = load i64, ptr %i.l, align 16
  %i.m = and i64 %.val.i.i.i, 255
  br label %xdr_set_scratch_folio.exit

xdr_set_scratch_folio.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi i64 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = sub i64 %i.n, %i.h
  %i.p = shl i64 %i.o, 6
  %i.q = add i64 %i.p, %i.i
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = shl i64 4096, %.0.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.s, ptr %i.u, align 8
  %i.v = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef 12) #19 ; 3 uses
  %.not201 = icmp eq ptr %i.v, null
  br i1 %.not201, label %_ff_layout_free_lseg.exit, label %bb.d

bb.d:                                             ; preds = %xdr_set_scratch_folio.exit
  %.val.i = load i64, ptr %i.v, align 1           ; 2 uses
  %i.w = call i64 @llvm.bswap.i64(i64 %.val.i)
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = call i32 @llvm.bswap.i32(i32 %i.y)       ; 3 uses
  %i.aa = add i32 %i.z, -4097
  %or.cond = icmp ult i32 %i.aa, -4096
  br i1 %or.cond, label %_ff_layout_free_lseg.exit, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.d
  %i.ab = or i32 %2, 256                          ; 4 uses
  %i.ac = shl nuw nsw i32 %i.z, 3
  %narrow = add nuw nsw i32 %i.ac, 112
  %i.ad = zext nneg i32 %narrow to i64
  %i.ae = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.ad, i32 noundef range(i32 256, 0) %i.ab) #22 ; 10 uses
  %.not202 = icmp eq ptr %i.ae, null
  br i1 %.not202, label %_ff_layout_free_lseg.exit, label %5

5:                                                ; preds = %_kzalloc_noprof.exit
  %6 = getelementptr i8, ptr %i.ae, i64 108       ; 7 uses
  store i32 %i.z, ptr %6, align 4
  %7 = getelementptr i8, ptr %i.ae, i64 96
  store i64 %i.w, ptr %7, align 8
  %.not304 = icmp eq i32 %i.y, 0
  br i1 %.not304, label %._crit_edge300, label %.lr.ph299

.lr.ph299:                                        ; preds = %5
  %i.af = icmp eq i64 %.val.i, 0
  %i.ag = and i32 %2, 17
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = and i32 %2, 1
  %..i.i.i = add nuw nsw i32 %i.ai, 1
  %i.aj = zext nneg i32 %..i.i.i to i64
  %i.ak = getelementptr i8, ptr %i.ae, i64 112    ; 3 uses
  %i.al = and i32 %2, 128
  %.not215 = icmp eq i32 %i.al, 0
  %i.am = getelementptr i8, ptr %1, i64 48        ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph299, %bb.ai
  %.0173297 = phi i32 [ 0, %.lr.ph299 ], [ %i.ex, %bb.ai ] ; 3 uses
  %.0179296 = phi i32 [ 0, %.lr.ph299 ], [ %.1180, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !annotation !16
  %i.an = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef 4) #19 ; 2 uses
  %.not206 = icmp eq ptr %i.an, null
  br i1 %.not206, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp eq i32 %.0179296, 0
  %i.ap = load i32, ptr %i.an, align 4
  %i.aq = call i32 @llvm.bswap.i32(i32 %i.ap)     ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not207 = icmp eq i32 %.0179296, %i.aq
  br i1 %.not207, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1180 = phi i32 [ %.0179296, %bb.g ], [ %i.aq, %bb.f ] ; 7 uses
  %i.ar = add i32 %.1180, -4097
  %or.cond3 = icmp ult i32 %i.ar, -4096
  %i.as = icmp samesign ugt i32 %.1180, 1
  %or.cond5 = select i1 %i.as, i1 %i.af, i1 false
  %or.cond303 = select i1 %or.cond3, i1 true, i1 %or.cond5
  br i1 %or.cond303, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.ah, label %_kzalloc_noprof.exit.i, label %bb.j, !prof !14

bb.j:                                             ; preds = %bb.i
  br label %_kzalloc_noprof.exit.i

_kzalloc_noprof.exit.i:                           ; preds = %bb.j, %bb.i
  %.0.i3.i.i = phi i64 [ 0, %bb.i ], [ %i.aj, %bb.j ]
  %i.at = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i3.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 16
  %i.aw = call noalias align 8 dereferenceable_or_null(64) ptr @__kmalloc_cache_noprof(ptr noundef %i.av, i32 noundef range(i32 256, 0) %i.ab, i64 noundef 64) #20 ; 9 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %ff_layout_alloc_mirror.exit.thread, label %_kzalloc_noprof.exit45.i

_kzalloc_noprof.exit45.i:                         ; preds = %_kzalloc_noprof.exit.i
  %i.ay = getelementptr i8, ptr %i.aw, i64 44
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %i.aw, i64 40
  store volatile i32 1, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.aw, i64 8      ; 3 uses
  store volatile ptr %i.ba, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.aw, i64 16
  store volatile ptr %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %i.aw, i64 24
  store i32 %.1180, ptr %i.bc, align 8
  %narrow.i = mul nuw nsw i32 %.1180, 288
  %i.bd = zext nneg i32 %narrow.i to i64
  %i.be = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.bd, i32 noundef range(i32 256, 0) %i.ab) #22 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.aw, i64 32
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = icmp eq ptr %i.be, null
  br i1 %i.bg, label %bb.k, label %.lr.ph.preheader

bb.k:                                             ; preds = %_kzalloc_noprof.exit45.i
  call void @kfree(ptr noundef nonnull %i.aw) #19
  br label %ff_layout_alloc_mirror.exit.thread

ff_layout_alloc_mirror.exit.thread:               ; preds = %_kzalloc_noprof.exit.i, %bb.k
  %i.bh = sext i32 %.0173297 to i64
  %i.bi = getelementptr [8 x i8], ptr %i.ak, i64 %i.bh
  store ptr null, ptr %i.bi, align 8
  br label %.critedge

.lr.ph.preheader:                                 ; preds = %_kzalloc_noprof.exit45.i
  %i.bj = sext i32 %.0173297 to i64
  %i.bk = getelementptr [8 x i8], ptr %i.ak, i64 %i.bj ; 7 uses
  store ptr %i.aw, ptr %i.bk, align 8
  %wide.trip.count = zext nneg i32 %.1180 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr [288 x i8], ptr %i.bn, i64 %indvars.iv ; 8 uses
  store ptr %i.bl, ptr %i.bo, align 8
  %i.bp = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef 16) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %.critedge, label %bb.l, !prof !17

bb.l:                                             ; preds = %.lr.ph
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 4 dereferenceable(16) %i.bp, i64 16, i1 false)
  %i.br = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef 4) #19 ; 2 uses
  %.not210 = icmp eq ptr %i.br, null
  br i1 %.not210, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = call i32 @llvm.bswap.i32(i32 %i.bs)
  %i.bu = getelementptr i8, ptr %i.bo, i64 24
  store i32 %i.bt, ptr %i.bu, align 8
  %i.bv = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef 16) #19 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.critedge, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr i8, ptr %i.bo, i64 56
  %i.by = getelementptr i8, ptr %i.bo, i64 72
  store i32 6, ptr %i.by, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 4 dereferenceable(16) %i.bv, i64 16, i1 false)
  %i.bz = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef 4) #19 ; 2 uses
  %.not212 = icmp eq ptr %i.bz, null
  br i1 %.not212, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %i.cb = call i32 @llvm.bswap.i32(i32 %i.ca)     ; 3 uses
  %i.cc = icmp eq i32 %i.ca, 0
  br i1 %i.cc, label %.critedge, label %_kzalloc_noprof.exit231

_kzalloc_noprof.exit231:                          ; preds = %bb.o
  %i.cd = zext i32 %i.cb to i64
  %i.ce = mul nuw nsw i64 %i.cd, 130
  %i.cf = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.ce, i32 noundef range(i32 256, 0) %i.ab) #22 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bo, i64 48     ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ch = icmp eq ptr %i.cf, null
  br i1 %i.ch, label %.critedge, label %.preheader271

.preheader271:                                    ; preds = %_kzalloc_noprof.exit231, %bb.s
  %.0186291 = phi i32 [ %i.cx, %bb.s ], [ 0, %_kzalloc_noprof.exit231 ] ; 2 uses
  %i.ci = load ptr, ptr %i.cg, align 8
  %i.cj = sext i32 %.0186291 to i64
  %i.ck = getelementptr [130 x i8], ptr %i.ci, i64 %i.cj ; 3 uses
  %i.cl = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef 4) #19 ; 2 uses
  %.not.i232 = icmp eq ptr %i.cl, null
  br i1 %.not.i232, label %.critedge, label %bb.p, !prof !17

bb.p:                                             ; preds = %.preheader271
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = call i32 @llvm.bswap.i32(i32 %i.cm)     ; 2 uses
  %i.co = trunc i32 %i.cn to i16
  store i16 %i.co, ptr %i.ck, align 2
  %i.cp = and i32 %i.cn, 65535                    ; 3 uses
  %i.cq = icmp samesign ugt i32 %i.cp, 128
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cr = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %i.cp) #18 ; 0 uses
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.cs = zext nneg i32 %i.cp to i64
  %i.ct = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef %i.cs) #19 ; 2 uses
  %.not13.i = icmp eq ptr %i.ct, null
  br i1 %.not13.i, label %.critedge, label %bb.s, !prof !17

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr i8, ptr %i.ck, i64 2
  %i.cv = load i16, ptr %i.ck, align 2
  %i.cw = zext i16 %i.cv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.cu, ptr nonnull align 4 %i.ct, i64 %i.cw, i1 false)
  %i.cx = add nuw i32 %.0186291, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, %i.cb
  br i1 %exitcond.not, label %bb.t, label %.preheader271, !llvm.loop !42

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr i8, ptr %i.bo, i64 40
  store i32 %i.cb, ptr %i.cy, align 8
  %i.cz = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef 4) #19 ; 2 uses
  %.not.i234 = icmp eq ptr %i.cz, null
  br i1 %.not.i234, label %.critedge, label %bb.u, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = call i32 @llvm.bswap.i32(i32 %i.da)     ; 2 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = zext nneg i32 %i.db to i64              ; 2 uses
  %i.de = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef %i.dd) #19 ; 2 uses
  %.not11.i = icmp eq ptr %i.de, null
  br i1 %.not11.i, label %.critedge, label %bb.w, !prof !17

bb.w:                                             ; preds = %bb.v
  %i.df = call i32 @nfs_map_string_to_numeric(ptr noundef nonnull %i.de, i64 noundef %i.dd, ptr noundef nonnull %i.a) #19
  %.not12.i = icmp eq i32 %i.df, 0
  br i1 %.not12.i, label %.critedge, label %decode_name.exit

decode_name.exit:                                 ; preds = %bb.w
  %i.dg = load i32, ptr %i.a, align 4
  %i.dh = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef 4) #19 ; 2 uses
  %.not.i236 = icmp eq ptr %i.dh, null
  br i1 %.not.i236, label %.critedge, label %bb.x, !prof !17

bb.x:                                             ; preds = %decode_name.exit
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = call i32 @llvm.bswap.i32(i32 %i.di)     ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dm = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef %i.dl) #19 ; 2 uses
  %.not11.i237 = icmp eq ptr %i.dm, null
  br i1 %.not11.i237, label %.critedge, label %bb.z, !prof !17

bb.z:                                             ; preds = %bb.y
  %i.dn = call i32 @nfs_map_string_to_numeric(ptr noundef nonnull %i.dm, i64 noundef %i.dl, ptr noundef nonnull %i.a) #19
  %.not12.i238 = icmp eq i32 %i.dn, 0
  br i1 %.not12.i238, label %.critedge, label %decode_name.exit241

decode_name.exit241:                              ; preds = %bb.z
  %i.do = load i32, ptr %i.a, align 4
  br i1 %.not215, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %decode_name.exit241
  %i.dp = call ptr @prepare_kernel_cred(ptr noundef nonnull @init_task) #19
  br label %bb.ac

bb.ab:                                            ; preds = %decode_name.exit241
  %i.dq = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #23, !srcloc !18
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr i8, ptr %i.dr, i64 44     ; 4 uses
  %i.dt = load i32, ptr %i.ds, align 4            ; 2 uses
  %i.du = or i32 %i.dt, 262144
  store i32 %i.du, ptr %i.ds, align 4
  %i.dv = call ptr @prepare_kernel_cred(ptr noundef nonnull @init_task) #19
  %i.dw = or i32 %i.dt, -262145
  %i.dx = load i32, ptr %i.ds, align 4
  %i.dy = and i32 %i.dx, %i.dw
  store i32 %i.dy, ptr %i.ds, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0182 = phi ptr [ %i.dp, %bb.aa ], [ %i.dv, %bb.ab ] ; 4 uses
  %.not216 = icmp eq ptr %.0182, null
  br i1 %.not216, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = getelementptr i8, ptr %.0182, i64 32
  store i32 %i.dg, ptr %i.dz, align 8
  %i.ea = getelementptr i8, ptr %.0182, i64 36
  store i32 %i.do, ptr %i.ea, align 4
  %i.eb = load i32, ptr %i.am, align 8
  %i.ec = icmp eq i32 %i.eb, 1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21
  %. = select i1 %i.ec, i64 80, i64 88
  %i.ed = getelementptr i8, ptr %i.bo, i64 %.
  store volatile ptr %.0182, ptr %i.ed, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond329.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.ad
  %.pre = load ptr, ptr %i.bk, align 8
  %i.ee = call fastcc ptr @ff_layout_add_mirror(ptr noundef %0, ptr noundef %.pre) #24, !srcloc !53 ; 3 uses
  %i.ef = load ptr, ptr %i.bk, align 8
  %.not208 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not208, label %bb.ai, label %.lr.ph294

.lr.ph294:                                        ; preds = %._crit_edge
  %i.eg = getelementptr i8, ptr %i.ee, i64 32
  %wide.trip.count333 = zext nneg i32 %.1180 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph294, %bb.ah
  %indvars.iv330 = phi i64 [ 0, %.lr.ph294 ], [ %indvars.iv.next331, %bb.ah ] ; 3 uses
  %i.eh = load ptr, ptr %i.bk, align 8
  %i.ei = getelementptr i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr [288 x i8], ptr %i.ej, i64 %indvars.iv330 ; 2 uses
  %i.el = load i32, ptr %i.am, align 8
  %i.em = icmp eq i32 %i.el, 1
  %i.en = load ptr, ptr %i.eg, align 8
  %i.eo = getelementptr [288 x i8], ptr %i.en, i64 %indvars.iv330 ; 2 uses
  br i1 %i.em, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr i8, ptr %i.eo, i64 80     ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ek, i64 80     ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.ep, ptr %i.er, ptr elementtype(ptr) %i.ep) #21, !srcloc !54
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !55
  store volatile ptr %i.es, ptr %i.eq, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.et = getelementptr i8, ptr %i.eo, i64 88     ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ek, i64 88     ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.et, ptr %i.ev, ptr elementtype(ptr) %i.et) #21, !srcloc !56
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !57
  store volatile ptr %i.ew, ptr %i.eu, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %wide.trip.count333
  br i1 %exitcond334.not, label %._crit_edge295, label %bb.ae, !llvm.loop !44

._crit_edge295:                                   ; preds = %bb.ah
  %.pre335 = load ptr, ptr %i.bk, align 8
  call fastcc void @ff_layout_free_mirror(ptr noundef %.pre335) #24, !srcloc !58
  store ptr %i.ee, ptr %i.bk, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge295, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ex = add nuw i32 %.0173297, 1                ; 2 uses
  %i.ey = load i32, ptr %6, align 4
  %i.ez = icmp ult i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.e, label %._crit_edge300, !llvm.loop !45

._crit_edge300:                                   ; preds = %bb.ai, %5
  %i.fa = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef 4) #19 ; 2 uses
  %.not203 = icmp eq ptr %i.fa, null
  br i1 %.not203, label %thread-pre-split, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge300
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = call i32 @llvm.bswap.i32(i32 %i.fb)     ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ae, i64 104
  store i32 %i.fc, ptr %i.fd, align 8
  %i.fe = and i32 %i.fc, 2
  %.not204 = icmp eq i32 %i.fe, 0
  br i1 %.not204, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ff = getelementptr i8, ptr %0, i64 240       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ff, i32 1, ptr elementtype(i8) %i.ff) #21, !srcloc !19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fg = call ptr @xdr_inline_decode(ptr noundef nonnull %3, i64 noundef 4) #19 ; 6 uses
  %.not205 = icmp eq ptr %i.fg, null
  br i1 %.not205, label %thread-pre-split, label %.preheader

.preheader:                                       ; preds = %bb.al
  %i.fh = load i32, ptr %6, align 4               ; 6 uses
  %.not307 = icmp eq i32 %i.fh, 0
  br i1 %.not307, label %.lr.ph32.i, label %.lr.ph302

.lr.ph302:                                        ; preds = %.preheader
  %i.fi = getelementptr i8, ptr %i.ae, i64 112    ; 5 uses
  %xtraiter = and i32 %i.fh, 3                    ; 3 uses
  %i.fj = icmp ult i32 %i.fh, 4
  br i1 %i.fj, label %.epil.preheader, label %.lr.ph302.new

.lr.ph302.new:                                    ; preds = %.lr.ph302
  %unroll_iter = and i32 %i.fh, -4
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph302.new
  %.1301 = phi i32 [ 0, %.lr.ph302.new ], [ %i.gl, %bb.am ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph302.new ], [ %niter.next.3, %bb.am ]
  %i.fk = load i32, ptr %i.fg, align 4
  %i.fl = call i32 @llvm.bswap.i32(i32 %i.fk)
  %i.fm = sext i32 %.1301 to i64
  %i.fn = getelementptr [8 x i8], ptr %i.fi, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr i8, ptr %i.fo, i64 56
  store i32 %i.fl, ptr %i.fp, align 8
  %i.fq = load i32, ptr %i.fg, align 4
  %i.fr = call i32 @llvm.bswap.i32(i32 %i.fq)
  %i.fs = sext i32 %.1301 to i64
  %i.ft = getelementptr [8 x i8], ptr %i.fi, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr i8, ptr %i.fv, i64 56
  store i32 %i.fr, ptr %i.fw, align 8
  %i.fx = load i32, ptr %i.fg, align 4
  %i.fy = call i32 @llvm.bswap.i32(i32 %i.fx)
  %i.fz = sext i32 %.1301 to i64
  %i.ga = getelementptr [8 x i8], ptr %i.fi, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr i8, ptr %i.gc, i64 56
  store i32 %i.fy, ptr %i.gd, align 8
  %i.ge = load i32, ptr %i.fg, align 4
  %i.gf = call i32 @llvm.bswap.i32(i32 %i.ge)
  %i.gg = sext i32 %.1301 to i64
  %i.gh = getelementptr [8 x i8], ptr %i.fi, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr i8, ptr %i.gj, i64 56
  store i32 %i.gf, ptr %i.gk, align 8
  %i.gl = add nuw i32 %.1301, 4                   ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %bb.am, !llvm.loop !46

thread-pre-split:                                 ; preds = %._crit_edge300, %bb.al
  %.pr = load i32, ptr %6, align 4
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.am
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph302
  %.1301.epil.init = phi i32 [ 0, %.lr.ph302 ], [ %i.gl, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod432 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod432)
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.epil.preheader
  %.1301.epil = phi i32 [ %.1301.epil.init, %.epil.preheader ], [ %i.gs, %bb.an ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.an ]
  %i.gm = load i32, ptr %i.fg, align 4
  %i.gn = call i32 @llvm.bswap.i32(i32 %i.gm)
  %i.go = sext i32 %.1301.epil to i64
  %i.gp = getelementptr [8 x i8], ptr %i.fi, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = getelementptr i8, ptr %i.gq, i64 56
  store i32 %i.gn, ptr %i.gr, align 8
  %i.gs = add nuw i32 %.1301.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.an, !llvm.loop !47

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.an, %thread-pre-split
  %i.gt = phi i32 [ %.pr, %thread-pre-split ], [ %i.fh, %bb.an ], [ %i.fh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.not.i242 = icmp eq i32 %i.gt, 1
  br i1 %.not.i242, label %ff_layout_sort_mirrors.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.preheader, %.loopexit
  %i.gu = phi i32 [ %i.gt, %.loopexit ], [ 0, %.preheader ]
  %i.gv = getelementptr i8, ptr %i.ae, i64 112    ; 2 uses
  br label %bb.ao

.loopexit.i:                                      ; preds = %ff_mirror_efficiency_sum.exit28.thread.i, %bb.ao
  %i.gw = phi i32 [ %i.gz, %bb.ao ], [ %i.jj, %ff_mirror_efficiency_sum.exit28.thread.i ] ; 2 uses
  %i.gx = add i32 %i.gw, -1
  %i.gy = icmp ult i32 %i.ha, %i.gx
  br i1 %i.gy, label %bb.ao, label %ff_layout_sort_mirrors.exit, !llvm.loop !48

bb.ao:                                            ; preds = %.loopexit.i, %.lr.ph32.i
  %i.gz = phi i32 [ %i.gu, %.lr.ph32.i ], [ %i.gw, %.loopexit.i ] ; 4 uses
  %.031.i = phi i32 [ 0, %.lr.ph32.i ], [ %i.ha, %.loopexit.i ] ; 2 uses
  %i.ha = add nuw i32 %.031.i, 1                  ; 4 uses
  %i.hb = icmp ult i32 %i.ha, %i.gz
  br i1 %i.hb, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.ao
  %i.hc = sext i32 %.031.i to i64
  %i.hd = getelementptr [8 x i8], ptr %i.gv, i64 %i.hc ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %ff_mirror_efficiency_sum.exit28.thread.i, %.lr.ph.i
  %i.he = phi i32 [ %i.gz, %.lr.ph.i ], [ %i.jj, %ff_mirror_efficiency_sum.exit28.thread.i ] ; 2 uses
  %i.hf = phi i32 [ %i.gz, %.lr.ph.i ], [ %i.jk, %ff_mirror_efficiency_sum.exit28.thread.i ] ; 2 uses
  %.01930.i = phi i32 [ %i.ha, %.lr.ph.i ], [ %i.jl, %ff_mirror_efficiency_sum.exit28.thread.i ] ; 2 uses
  %i.hg = load ptr, ptr %i.hd, align 8            ; 3 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 24
  %i.hi = load i32, ptr %i.hh, align 8            ; 3 uses
  %.not.i.i = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i, label %ff_mirror_efficiency_sum.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ap
  %i.hj = getelementptr i8, ptr %i.hg, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8            ; 5 uses
  %wide.trip.count.i.i = zext i32 %i.hi to i64    ; 2 uses
  %xtraiter434 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.hl = icmp ult i32 %i.hi, 4
  br i1 %i.hl, label %.epil.preheader433, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter439 = and i64 %wide.trip.count.i.i, 4294967292
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.aq ] ; 5 uses
  %.08.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %i.ib, %bb.aq ]
  %niter440 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter440.next.3, %bb.aq ]
  %i.hm = getelementptr [288 x i8], ptr %i.hk, i64 %indvars.iv.i.i
  %i.hn = getelementptr i8, ptr %i.hm, i64 24
  %i.ho = load i32, ptr %i.hn, align 8
  %i.hp = add i32 %i.ho, %.08.i.i
  %i.hq = getelementptr [288 x i8], ptr %i.hk, i64 %indvars.iv.i.i
  %i.hr = getelementptr i8, ptr %i.hq, i64 312
  %i.hs = load i32, ptr %i.hr, align 8
  %i.ht = add i32 %i.hs, %i.hp
  %i.hu = getelementptr [288 x i8], ptr %i.hk, i64 %indvars.iv.i.i
  %i.hv = getelementptr i8, ptr %i.hu, i64 600
  %i.hw = load i32, ptr %i.hv, align 8
  %i.hx = add i32 %i.hw, %i.ht
  %i.hy = getelementptr [288 x i8], ptr %i.hk, i64 %indvars.iv.i.i
  %i.hz = getelementptr i8, ptr %i.hy, i64 888
  %i.ia = load i32, ptr %i.hz, align 8
  %i.ib = add i32 %i.ia, %i.hx                    ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter440.next.3 = add i64 %niter440, 4         ; 2 uses
  %niter440.ncmp.3 = icmp eq i64 %niter440.next.3, %unroll_iter439
  br i1 %niter440.ncmp.3, label %ff_mirror_efficiency_sum.exit.i.loopexit.unr-lcssa, label %bb.aq, !llvm.loop !49

ff_mirror_efficiency_sum.exit.i.loopexit.unr-lcssa: ; preds = %bb.aq
  %lcmp.mod436.not = icmp eq i64 %xtraiter434, 0
  br i1 %lcmp.mod436.not, label %ff_mirror_efficiency_sum.exit.i, label %.epil.preheader433

.epil.preheader433:                               ; preds = %ff_mirror_efficiency_sum.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %ff_mirror_efficiency_sum.exit.i.loopexit.unr-lcssa ]
  %.08.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ib, %ff_mirror_efficiency_sum.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod438 = icmp ne i64 %xtraiter434, 0
  call void @llvm.assume(i1 %lcmp.mod438)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.epil.preheader433
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader433 ], [ %indvars.iv.next.i.i.epil, %bb.ar ] ; 2 uses
  %.08.i.i.epil = phi i32 [ %.08.i.i.epil.init, %.epil.preheader433 ], [ %i.if, %bb.ar ]
  %epil.iter435 = phi i64 [ 0, %.epil.preheader433 ], [ %epil.iter435.next, %bb.ar ]
  %i.ic = getelementptr [288 x i8], ptr %i.hk, i64 %indvars.iv.i.i.epil
  %i.id = getelementptr i8, ptr %i.ic, i64 24
  %i.ie = load i32, ptr %i.id, align 8
  %i.if = add i32 %i.ie, %.08.i.i.epil            ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter435.next = add i64 %epil.iter435, 1   ; 2 uses
  %epil.iter435.cmp.not = icmp eq i64 %epil.iter435.next, %xtraiter434
  br i1 %epil.iter435.cmp.not, label %ff_mirror_efficiency_sum.exit.i, label %bb.ar, !llvm.loop !50

ff_mirror_efficiency_sum.exit.i:                  ; preds = %ff_mirror_efficiency_sum.exit.i.loopexit.unr-lcssa, %bb.ar, %bb.ap
  %.0.lcssa.i.i = phi i32 [ 0, %bb.ap ], [ %i.ib, %ff_mirror_efficiency_sum.exit.i.loopexit.unr-lcssa ], [ %i.if, %bb.ar ]
  %i.ig = sext i32 %.01930.i to i64
  %i.ih = getelementptr [8 x i8], ptr %i.gv, i64 %i.ig ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8            ; 3 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 24
  %i.ik = load i32, ptr %i.ij, align 8            ; 3 uses
  %.not.i20.i = icmp eq i32 %i.ik, 0
  br i1 %.not.i20.i, label %ff_mirror_efficiency_sum.exit28.thread.i, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %ff_mirror_efficiency_sum.exit.i
  %i.il = getelementptr i8, ptr %i.ii, i64 32
  %i.im = load ptr, ptr %i.il, align 8            ; 5 uses
  %wide.trip.count.i22.i = zext i32 %i.ik to i64  ; 2 uses
  %xtraiter442 = and i64 %wide.trip.count.i22.i, 3 ; 3 uses
  %i.in = icmp ult i32 %i.ik, 4
  br i1 %i.in, label %.epil.preheader441, label %.lr.ph.i21.i.new

.lr.ph.i21.i.new:                                 ; preds = %.lr.ph.i21.i
  %unroll_iter447 = and i64 %wide.trip.count.i22.i, 4294967292
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i21.i.new
  %indvars.iv.i23.i = phi i64 [ 0, %.lr.ph.i21.i.new ], [ %indvars.iv.next.i25.i.3, %bb.as ] ; 5 uses
  %.08.i24.i = phi i32 [ 0, %.lr.ph.i21.i.new ], [ %i.jd, %bb.as ]
  %niter448 = phi i64 [ 0, %.lr.ph.i21.i.new ], [ %niter448.next.3, %bb.as ]
  %i.io = getelementptr [288 x i8], ptr %i.im, i64 %indvars.iv.i23.i
  %i.ip = getelementptr i8, ptr %i.io, i64 24
  %i.iq = load i32, ptr %i.ip, align 8
  %i.ir = add i32 %i.iq, %.08.i24.i
  %i.is = getelementptr [288 x i8], ptr %i.im, i64 %indvars.iv.i23.i
  %i.it = getelementptr i8, ptr %i.is, i64 312
  %i.iu = load i32, ptr %i.it, align 8
  %i.iv = add i32 %i.iu, %i.ir
  %i.iw = getelementptr [288 x i8], ptr %i.im, i64 %indvars.iv.i23.i
  %i.ix = getelementptr i8, ptr %i.iw, i64 600
  %i.iy = load i32, ptr %i.ix, align 8
  %i.iz = add i32 %i.iy, %i.iv
  %i.ja = getelementptr [288 x i8], ptr %i.im, i64 %indvars.iv.i23.i
  %i.jb = getelementptr i8, ptr %i.ja, i64 888
  %i.jc = load i32, ptr %i.jb, align 8
  %i.jd = add i32 %i.jc, %i.iz                    ; 3 uses
  %indvars.iv.next.i25.i.3 = add nuw nsw i64 %indvars.iv.i23.i, 4 ; 2 uses
  %niter448.next.3 = add i64 %niter448, 4         ; 2 uses
  %niter448.ncmp.3 = icmp eq i64 %niter448.next.3, %unroll_iter447
  br i1 %niter448.ncmp.3, label %ff_mirror_efficiency_sum.exit28.i.unr-lcssa, label %bb.as, !llvm.loop !49

ff_mirror_efficiency_sum.exit28.i.unr-lcssa:      ; preds = %bb.as
  %lcmp.mod444.not = icmp eq i64 %xtraiter442, 0
  br i1 %lcmp.mod444.not, label %ff_mirror_efficiency_sum.exit28.i, label %.epil.preheader441

.epil.preheader441:                               ; preds = %ff_mirror_efficiency_sum.exit28.i.unr-lcssa, %.lr.ph.i21.i
  %indvars.iv.i23.i.epil.init = phi i64 [ 0, %.lr.ph.i21.i ], [ %indvars.iv.next.i25.i.3, %ff_mirror_efficiency_sum.exit28.i.unr-lcssa ]
  %.08.i24.i.epil.init = phi i32 [ 0, %.lr.ph.i21.i ], [ %i.jd, %ff_mirror_efficiency_sum.exit28.i.unr-lcssa ]
  %lcmp.mod446 = icmp ne i64 %xtraiter442, 0
  call void @llvm.assume(i1 %lcmp.mod446)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader441
  %indvars.iv.i23.i.epil = phi i64 [ %indvars.iv.i23.i.epil.init, %.epil.preheader441 ], [ %indvars.iv.next.i25.i.epil, %bb.at ] ; 2 uses
  %.08.i24.i.epil = phi i32 [ %.08.i24.i.epil.init, %.epil.preheader441 ], [ %i.jh, %bb.at ]
  %epil.iter443 = phi i64 [ 0, %.epil.preheader441 ], [ %epil.iter443.next, %bb.at ]
  %i.je = getelementptr [288 x i8], ptr %i.im, i64 %indvars.iv.i23.i.epil
  %i.jf = getelementptr i8, ptr %i.je, i64 24
  %i.jg = load i32, ptr %i.jf, align 8
  %i.jh = add i32 %i.jg, %.08.i24.i.epil          ; 2 uses
  %indvars.iv.next.i25.i.epil = add nuw nsw i64 %indvars.iv.i23.i.epil, 1
  %epil.iter443.next = add i64 %epil.iter443, 1   ; 2 uses
  %epil.iter443.cmp.not = icmp eq i64 %epil.iter443.next, %xtraiter442
  br i1 %epil.iter443.cmp.not, label %ff_mirror_efficiency_sum.exit28.i, label %bb.at, !llvm.loop !51

ff_mirror_efficiency_sum.exit28.i:                ; preds = %bb.at, %ff_mirror_efficiency_sum.exit28.i.unr-lcssa
  %.lcssa413 = phi i32 [ %i.jd, %ff_mirror_efficiency_sum.exit28.i.unr-lcssa ], [ %i.jh, %bb.at ]
  %i.ji = icmp ult i32 %.0.lcssa.i.i, %.lcssa413
  br i1 %i.ji, label %bb.au, label %ff_mirror_efficiency_sum.exit28.thread.i

bb.au:                                            ; preds = %ff_mirror_efficiency_sum.exit28.i
  store ptr %i.ii, ptr %i.hd, align 8
  store ptr %i.hg, ptr %i.ih, align 8
  %.pre.i = load i32, ptr %6, align 4             ; 2 uses
  br label %ff_mirror_efficiency_sum.exit28.thread.i

ff_mirror_efficiency_sum.exit28.thread.i:         ; preds = %bb.au, %ff_mirror_efficiency_sum.exit28.i, %ff_mirror_efficiency_sum.exit.i
  %i.jj = phi i32 [ %i.he, %ff_mirror_efficiency_sum.exit28.i ], [ %.pre.i, %bb.au ], [ %i.he, %ff_mirror_efficiency_sum.exit.i ] ; 2 uses
  %i.jk = phi i32 [ %i.hf, %ff_mirror_efficiency_sum.exit28.i ], [ %.pre.i, %bb.au ], [ %i.hf, %ff_mirror_efficiency_sum.exit.i ] ; 2 uses
  %i.jl = add nuw i32 %.01930.i, 1                ; 2 uses
  %i.jm = icmp ult i32 %i.jl, %i.jk
  br i1 %i.jm, label %bb.ap, label %.loopexit.i, !llvm.loop !52

ff_layout_sort_mirrors.exit:                      ; preds = %.loopexit.i, %.loopexit, %_ff_layout_free_lseg.exit
  %.0171 = phi ptr [ %i.ka, %_ff_layout_free_lseg.exit ], [ %i.ae, %.loopexit ], [ %i.ae, %.loopexit.i ] ; 2 uses
  %i.jn = getelementptr i8, ptr %i.b, i64 52      ; 2 uses
  %i.jo = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.jn, ptr elementtype(i32) %i.jn) #21, !srcloc !20 ; 2 uses
  %i.jp = icmp ult i8 %i.jo, 2
  call void @llvm.assume(i1 %i.jp)
  %.not.i243 = icmp eq i8 %i.jo, 0
  br i1 %.not.i243, label %folio_put.exit, label %bb.av

bb.av:                                            ; preds = %ff_layout_sort_mirrors.exit
  call void @__folio_put(ptr noundef nonnull %i.b) #19
  br label %folio_put.exit

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.e, %bb.z, %bb.y, %bb.x, %decode_name.exit, %bb.w, %bb.v, %bb.u, %bb.t, %bb.l, %bb.n, %bb.o, %_kzalloc_noprof.exit231, %.lr.ph, %bb.ac, %bb.m, %bb.r, %.preheader271, %bb.q, %ff_layout_alloc_mirror.exit.thread
  %.1175.ph = phi i64 [ -12, %ff_layout_alloc_mirror.exit.thread ], [ -105, %bb.m ], [ -75, %bb.q ], [ -105, %bb.r ], [ -105, %.preheader271 ], [ -105, %bb.y ], [ -105, %decode_name.exit ], [ -22, %bb.u ], [ -105, %bb.v ], [ -105, %bb.t ], [ -22, %bb.z ], [ -22, %bb.x ], [ -5, %bb.l ], [ -5, %bb.n ], [ -22, %bb.o ], [ -12, %_kzalloc_noprof.exit231 ], [ -22, %bb.w ], [ -105, %.lr.ph ], [ -12, %bb.ac ], [ -5, %bb.e ], [ -5, %bb.h ], [ -5, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.jq = load i32, ptr %6, align 4
  %.not.i.i245 = icmp eq i32 %i.jq, 0
  br i1 %.not.i.i245, label %ff_layout_free_mirror_array.exit.i, label %.lr.ph.i.i246

.lr.ph.i.i246:                                    ; preds = %.critedge, %ff_layout_put_mirror.exit.i.i
  %indvars.iv.i.i247 = phi i64 [ %indvars.iv.next.i.i249, %ff_layout_put_mirror.exit.i.i ], [ 0, %.critedge ] ; 2 uses
  %i.jr = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv.i.i247
  %i.js = load ptr, ptr %i.jr, align 8            ; 3 uses
  %.not.i.i.i248 = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i248, label %ff_layout_put_mirror.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i246
  %i.jt = getelementptr i8, ptr %i.js, i64 40     ; 3 uses
  %i.ju = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.jt, i32 -1, ptr elementtype(i32) %i.jt) #21, !srcloc !21 ; 2 uses
  %i.jv = icmp eq i32 %i.ju, 1
  br i1 %i.jv, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jw = icmp slt i32 %i.ju, 1
  br i1 %i.jw, label %bb.ay, label %ff_layout_put_mirror.exit.i.i, !prof !17

bb.ay:                                            ; preds = %bb.ax
  call void @refcount_warn_saturate(ptr noundef %i.jt, i32 noundef 3) #19
  br label %ff_layout_put_mirror.exit.i.i

bb.az:                                            ; preds = %bb.aw
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !22
  call fastcc void @ff_layout_free_mirror(ptr noundef nonnull %i.js) #24, !srcloc !23
  br label %ff_layout_put_mirror.exit.i.i

ff_layout_put_mirror.exit.i.i:                    ; preds = %bb.az, %bb.ay, %bb.ax, %.lr.ph.i.i246
  %indvars.iv.next.i.i249 = add nuw nsw i64 %indvars.iv.i.i247, 1 ; 2 uses
  %i.jx = load i32, ptr %6, align 4
  %i.jy = zext i32 %i.jx to i64
  %i.jz = icmp samesign ult i64 %indvars.iv.next.i.i249, %i.jy
  br i1 %i.jz, label %.lr.ph.i.i246, label %ff_layout_free_mirror_array.exit.i, !llvm.loop !0

ff_layout_free_mirror_array.exit.i:               ; preds = %ff_layout_put_mirror.exit.i.i, %.critedge
  call void @kfree(ptr noundef nonnull %i.ae) #19
  br label %_ff_layout_free_lseg.exit

_ff_layout_free_lseg.exit:                        ; preds = %xdr_set_scratch_folio.exit, %_kzalloc_noprof.exit, %bb.d, %ff_layout_free_mirror_array.exit.i
  %.2270 = phi i64 [ %.1175.ph, %ff_layout_free_mirror_array.exit.i ], [ -5, %bb.d ], [ -5, %xdr_set_scratch_folio.exit ], [ -12, %_kzalloc_noprof.exit ]
  %i.ka = inttoptr i64 %.2270 to ptr
  br label %ff_layout_sort_mirrors.exit

folio_put.exit:                                   ; preds = %bb.av, %ff_layout_sort_mirrors.exit, %bb.a
  %.0 = phi ptr [ inttoptr (i64 -12 to ptr), %bb.a ], [ %.0171, %ff_layout_sort_mirrors.exit ], [ %.0171, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ff_layout_free_lseg(ptr noundef %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 144
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 128      ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.h) #19
  %i.i = getelementptr i8, ptr %i.e, i64 168
  tail call void @pnfs_generic_ds_cinfo_release_lseg(ptr noundef %i.i, ptr noundef %0) #19
  tail call void @_raw_spin_unlock(ptr noundef %i.h) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ff_layout_free_lseg.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 108        ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %ff_layout_free_mirror_array.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 112
  br label %bb.e

bb.e:                                             ; preds = %ff_layout_put_mirror.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %ff_layout_put_mirror.exit.i.i ] ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %ff_layout_put_mirror.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.n, i64 40       ; 3 uses
  %i.p = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.o, i32 -1, ptr elementtype(i32) %i.o) #21, !srcloc !21 ; 2 uses
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = icmp slt i32 %i.p, 1
  br i1 %i.r, label %bb.h, label %ff_layout_put_mirror.exit.i.i, !prof !17

bb.h:                                             ; preds = %bb.g
  tail call void @refcount_warn_saturate(ptr noundef %i.o, i32 noundef 3) #19
  br label %ff_layout_put_mirror.exit.i.i

bb.i:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !22
  tail call fastcc void @ff_layout_free_mirror(ptr noundef nonnull %i.n) #24, !srcloc !23
  br label %ff_layout_put_mirror.exit.i.i

ff_layout_put_mirror.exit.i.i:                    ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.j, align 4
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next.i.i, %i.t
  br i1 %i.u, label %bb.e, label %ff_layout_free_mirror_array.exit.i, !llvm.loop !0

ff_layout_free_mirror_array.exit.i:               ; preds = %ff_layout_put_mirror.exit.i.i, %bb.d
  tail call void @kfree(ptr noundef nonnull %0) #19
  br label %_ff_layout_free_lseg.exit

_ff_layout_free_lseg.exit:                        ; preds = %bb.c, %ff_layout_free_mirror_array.exit.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ff_layout_add_lseg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 align 16 prefalign(16) {
bb.a:
  tail call void @pnfs_generic_layout_insert_lseg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ff_lseg_range_is_after, ptr noundef nonnull @ff_lseg_merge, ptr noundef %2) #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal ptr @ff_layout_get_ds_info(ptr nofree noundef readonly captures(none) %0) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr i8, ptr %i.b, i64 168
  %spec.select = select i1 %i.c, ptr null, ptr %i.d
  ret ptr %spec.select
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pnfs_nfs_generic_sync(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 3) i32 @ff_layout_read_pagelist(ptr noundef %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.c = getelementptr i8, ptr %0, i64 680        ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 924
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 108
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ult i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %FF_LAYOUT_COMP.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.b, i64 112
  %i.k = zext i32 %i.f to i64
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  br label %FF_LAYOUT_COMP.exit

FF_LAYOUT_COMP.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.n = getelementptr i8, ptr %i.b, i64 96
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %.0.i, i64 24
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq i32 %i.q, 1
  %i.s = icmp eq i64 %i.o, 0
  %or.cond.i = or i1 %i.s, %i.r
  br i1 %or.cond.i, label %nfs4_ff_layout_calc_dss_id.exit, label %bb.c

bb.c:                                             ; preds = %FF_LAYOUT_COMP.exit
  %i.t = and i64 %i.o, 4294967295
  %i.u = udiv i64 %i.d, %i.t
  %i.v = zext i32 %i.q to i64
  %i.w = urem i64 %i.u, %i.v
  %i.x = trunc nuw i64 %i.w to i32
  br label %nfs4_ff_layout_calc_dss_id.exit

nfs4_ff_layout_calc_dss_id.exit:                  ; preds = %FF_LAYOUT_COMP.exit, %bb.c
  %.0.i75 = phi i32 [ %i.x, %bb.c ], [ 0, %FF_LAYOUT_COMP.exit ] ; 6 uses
  %i.y = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %i.b, ptr noundef %.0.i, i32 noundef %.0.i75, i1 noundef zeroext false) #19 ; 3 uses
  %i.z = icmp ugt ptr %i.y, inttoptr (i64 -4096 to ptr)
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %nfs4_ff_layout_calc_dss_id.exit
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = trunc i64 %i.aa to i32
  switch i32 %i.ab, label %nfs_error_is_fatal.exit [
    i32 -512, label %nfs_error_is_fatal.exit.thread
    i32 -4, label %nfs_error_is_fatal.exit.thread
    i32 -13, label %nfs_error_is_fatal.exit.thread
    i32 -122, label %nfs_error_is_fatal.exit.thread
    i32 -27, label %nfs_error_is_fatal.exit.thread
    i32 -5, label %nfs_error_is_fatal.exit.thread
    i32 -28, label %nfs_error_is_fatal.exit.thread
    i32 -30, label %nfs_error_is_fatal.exit.thread
    i32 -116, label %nfs_error_is_fatal.exit.thread
    i32 -7, label %nfs_error_is_fatal.exit.thread
    i32 -12, label %nfs_error_is_fatal.exit.thread
    i32 -110, label %nfs_error_is_fatal.exit.thread
  ]

bb.e:                                             ; preds = %nfs4_ff_layout_calc_dss_id.exit
  %i.ac = getelementptr i8, ptr %i.y, i64 48      ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %0, align 8
  %i.af = tail call ptr @nfs4_ff_find_or_create_ds_client(ptr noundef %.0.i, ptr noundef %i.ad, ptr noundef %i.ae, i32 noundef %.0.i75) #19 ; 2 uses
  %i.ag = icmp ugt ptr %i.af, inttoptr (i64 -4096 to ptr)
  br i1 %i.ag, label %nfs_error_is_fatal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %i.b, i64 48
  %i.ai = getelementptr i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call ptr @ff_layout_get_ds_cred(ptr noundef %.0.i, ptr noundef %i.ah, ptr noundef %i.aj, i32 noundef %.0.i75) #19 ; 5 uses
  %.not72 = icmp eq ptr %i.ak, null
  br i1 %.not72, label %nfs_error_is_fatal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %.0.i, i64 32
  %.val = load ptr, ptr %i.al, align 8
  %i.am = zext i32 %.0.i75 to i64
end_hunk_0
