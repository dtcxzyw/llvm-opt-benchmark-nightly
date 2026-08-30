Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qcow2-cache?download=true
inline.NumInlined: 32
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"num_tables > 0\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"../block/qcow2-cache.c\00", align 1
@__PRETTY_FUNCTION__.qcow2_cache_create = private unnamed_addr constant [70 x i8] c"Qcow2Cache *qcow2_cache_create(BlockDriverState *, int, unsigned int)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"is_power_of_2(table_size)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"table_size >= (1 << MIN_CLUSTER_BITS)\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"table_size <= s->cluster_size\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"c->entries[i].ref == 0\00", align 1
@__PRETTY_FUNCTION__.qcow2_cache_destroy = private unnamed_addr constant [38 x i8] c"int qcow2_cache_destroy(Qcow2Cache *)\00", align 1
@__PRETTY_FUNCTION__.qcow2_cache_empty = private unnamed_addr constant [56 x i8] c"int qcow2_cache_empty(BlockDriverState *, Qcow2Cache *)\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"c->entries[i].ref >= 0\00", align 1
@__PRETTY_FUNCTION__.qcow2_cache_put = private unnamed_addr constant [44 x i8] c"void qcow2_cache_put(Qcow2Cache *, void **)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"c->entries[i].offset != 0\00", align 1
@__PRETTY_FUNCTION__.qcow2_cache_entry_mark_dirty = private unnamed_addr constant [56 x i8] c"void qcow2_cache_entry_mark_dirty(Qcow2Cache *, void *)\00", align 1
@__PRETTY_FUNCTION__.qcow2_cache_discard = private unnamed_addr constant [47 x i8] c"void qcow2_cache_discard(Qcow2Cache *, void *)\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_QCOW2_CACHE_FLUSH_DSTATE = external local_unnamed_addr global i16, align 2
@.str.8 = private unnamed_addr constant [40 x i8] c"qcow2_cache_flush co %p is_l2_cache %d\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@_TRACE_QCOW2_CACHE_ENTRY_FLUSH_DSTATE = external local_unnamed_addr global i16, align 2
@.str.9 = private unnamed_addr constant [55 x i8] c"qcow2_cache_entry_flush co %p is_l2_cache %d index %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"offset != 0\00", align 1
@__PRETTY_FUNCTION__.qcow2_cache_do_get = private unnamed_addr constant [83 x i8] c"int qcow2_cache_do_get(BlockDriverState *, Qcow2Cache *, uint64_t, void **, _Bool)\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Cannot get entry from %s cache: Offset %#lx is unaligned\00", align 1
@_TRACE_QCOW2_CACHE_GET_DSTATE = external local_unnamed_addr global i16, align 2
@.str.12 = private unnamed_addr constant [69 x i8] c"qcow2_cache_get co %p is_l2_cache %d offset 0x%lx read_from_disk %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"refcount block\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"L2 table\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@_TRACE_QCOW2_CACHE_GET_REPLACE_ENTRY_DSTATE = external local_unnamed_addr global i16, align 2
@.str.16 = private unnamed_addr constant [61 x i8] c"qcow2_cache_get_replace_entry co %p is_l2_cache %d index %d\0A\00", align 1
@_TRACE_QCOW2_CACHE_GET_READ_DSTATE = external local_unnamed_addr global i16, align 2
@.str.17 = private unnamed_addr constant [52 x i8] c"qcow2_cache_get_read co %p is_l2_cache %d index %d\0A\00", align 1
@_TRACE_QCOW2_CACHE_GET_DONE_DSTATE = external local_unnamed_addr global i16, align 2
@.str.18 = private unnamed_addr constant [52 x i8] c"qcow2_cache_get_done co %p is_l2_cache %d index %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [63 x i8] c"idx >= 0 && idx < c->size && table_offset % c->table_size == 0\00", align 1
@__PRETTY_FUNCTION__.qcow2_cache_get_table_idx = private unnamed_addr constant [52 x i8] c"int qcow2_cache_get_table_idx(Qcow2Cache *, void *)\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.21 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-io.h\00", section "llvm.metadata"
@.str.22 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@llvm.global.annotations = appending global [8 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @bdrv_flush, ptr @.str.20, ptr @.str.21, i32 374, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_flush, ptr @.str.22, ptr @.str.21, i32 374, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_debug_event, ptr @.str.20, ptr @.str.21, i32 249, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_debug_event, ptr @.str.22, ptr @.str.21, i32 249, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pwrite, ptr @.str.20, ptr @.str.21, i32 57, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pwrite, ptr @.str.22, ptr @.str.21, i32 57, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.20, ptr @.str.21, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.22, ptr @.str.21, i32 53, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qcow2_cache_clean_unused(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = getelementptr i8, ptr %0, i64 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %qcow2_cache_table_release.exit
  %i.g = phi i32 [ %i.b, %.preheader.lr.ph ], [ %i.bu, %qcow2_cache_table_release.exit ] ; 5 uses
  %.02547 = phi i32 [ 0, %.preheader.lr.ph ], [ %.2.lcssa60, %qcow2_cache_table_release.exit ]
  %i.h = load ptr, ptr %0, align 8
  %i.i = zext nneg i32 %.02547 to i64
  %i.j = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %can_clean_entry.exit.thread
  %indvars.iv = phi i64 [ %i.i, %.preheader ], [ %indvars.iv.next, %can_clean_entry.exit.thread ] ; 6 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %can_clean_entry.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = load i8, ptr %i.o, align 4, !range !7, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %can_clean_entry.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.k, align 8
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %can_clean_entry.exit.thread, label %can_clean_entry.exit

can_clean_entry.exit:                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = load i64, ptr %i.d, align 8
  %.not = icmp ugt i64 %i.t, %i.u
  br i1 %.not, label %can_clean_entry.exit.thread, label %.critedge

can_clean_entry.exit.thread:                      ; preds = %bb.b, %bb.c, %bb.d, %can_clean_entry.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !9

.critedge:                                        ; preds = %can_clean_entry.exit
  %i.w = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.x = icmp sgt i32 %i.g, %i.w
  br i1 %i.x, label %.lr.ph.preheader, label %qcow2_cache_table_release.exit

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph67, label %.critedge2

.lr.ph:                                           ; preds = %bb.f
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv.next50 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph67, label %.critedge2, !llvm.loop !11

.lr.ph67:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ai = phi ptr [ %i.ae, %.lr.ph ], [ %i.z, %.lr.ph.preheader ] ; 4 uses
  %.03466 = phi i32 [ %i.au, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %indvars.iv4965 = phi i64 [ %indvars.iv.next50, %.lr.ph ], [ %indvars.iv, %.lr.ph.preheader ] ; 5 uses
  %i.aj = phi i32 [ %i.av, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.al = load i8, ptr %i.ak, align 4, !range !7, !noundef !8
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %.lr.ph67
  %i.an = load i64, ptr %i.ai, align 8
  %.not.i27 = icmp eq i64 %i.an, 0
  br i1 %.not.i27, label %.critedge2, label %can_clean_entry.exit28

can_clean_entry.exit28:                           ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.d, align 8
  %.not29 = icmp ugt i64 %i.ap, %i.aq
  br i1 %.not29, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %can_clean_entry.exit28
  store i64 0, ptr %i.ai, align 8
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %indvars.iv4965
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 0, ptr %i.at, align 8
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv4965, 1 ; 5 uses
  %i.au = add i32 %.03466, 1                      ; 3 uses
  %i.av = load i32, ptr %i.a, align 8             ; 4 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next50, %i.aw
  br i1 %i.ax, label %.lr.ph, label %..critedge2_crit_edge, !llvm.loop !11

..critedge2_crit_edge:                            ; preds = %bb.f
  br label %.critedge2, !llvm.loop !11

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph67, %bb.e, %can_clean_entry.exit28, %..critedge2_crit_edge, %.lr.ph.preheader
  %i.ay = phi i32 [ %i.g, %.lr.ph.preheader ], [ %i.av, %..critedge2_crit_edge ], [ %i.av, %.lr.ph ], [ %i.aj, %.lr.ph67 ], [ %i.aj, %bb.e ], [ %i.aj, %can_clean_entry.exit28 ] ; 2 uses
  %.2.lcssa.ph.in = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next50, %..critedge2_crit_edge ], [ %indvars.iv.next50, %.lr.ph ], [ %indvars.iv4965, %.lr.ph67 ], [ %indvars.iv4965, %bb.e ], [ %indvars.iv4965, %can_clean_entry.exit28 ]
  %.0.lcssa.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.au, %..critedge2_crit_edge ], [ %i.au, %.lr.ph ], [ %.03466, %.lr.ph67 ], [ %.03466, %bb.e ], [ %.03466, %can_clean_entry.exit28 ] ; 3 uses
  %.2.lcssa.ph = trunc i64 %.2.lcssa.ph.in to i32 ; 4 uses
  %i.az = icmp sgt i32 %.0.lcssa.ph, 0
  br i1 %i.az, label %bb.g, label %qcow2_cache_table_release.exit

bb.g:                                             ; preds = %.critedge2
  %i.ba = sub nsw i32 %.2.lcssa.ph, %.0.lcssa.ph
  %.val = load i32, ptr %i.e, align 4
  %.val26 = load ptr, ptr %i.f, align 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = sext i32 %.val to i64                   ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.bd ; 2 uses
  %i.bf = tail call i32 @getpagesize() #11
  %i.bg = sext i32 %i.bf to i64                   ; 3 uses
  %i.bh = zext nneg i32 %.0.lcssa.ph to i64
  %i.bi = mul nsw i64 %i.bc, %i.bh                ; 2 uses
  %i.bj = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bk = add i64 %i.bj, %i.bg
  %.fr20.i = freeze i64 %i.bk
  %i.bl = add i64 %.fr20.i, -1                    ; 2 uses
  %i.bm = urem i64 %i.bl, %i.bg
  %i.bn = add i64 %i.bm, %i.bj
  %i.bo = sub i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = sub i64 %i.bi, %i.bo
  %.fr.i = freeze i64 %i.bp                       ; 3 uses
  %1 = urem i64 %.fr.i, %i.bg                     ; 2 uses
  %i.bq = icmp ugt i64 %i.bi, %i.bo
  %2 = icmp ne i64 %.fr.i, %1
  %or.cond.i = and i1 %i.bq, %2
  br i1 %or.cond.i, label %bb.h, label %qcow2_cache_table_release.exit

bb.h:                                             ; preds = %bb.g
  %i.br = sub nuw i64 %.fr.i, %1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bo
  %i.bt = tail call i32 @madvise(ptr noundef %i.bs, i64 noundef %i.br, i32 noundef 4) #12 ; 0 uses
  %.pre = load i32, ptr %i.a, align 8
  br label %qcow2_cache_table_release.exit

qcow2_cache_table_release.exit:                   ; preds = %.critedge, %bb.h, %bb.g, %.critedge2
  %.2.lcssa60 = phi i32 [ %.2.lcssa.ph, %bb.h ], [ %.2.lcssa.ph, %bb.g ], [ %.2.lcssa.ph, %.critedge2 ], [ %i.w, %.critedge ] ; 2 uses
  %i.bu = phi i32 [ %.pre, %bb.h ], [ %i.ay, %bb.g ], [ %i.ay, %.critedge2 ], [ %i.g, %.critedge ] ; 2 uses
  %i.bv = icmp slt i32 %.2.lcssa60, %i.bu
  br i1 %i.bv, label %.preheader, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %qcow2_cache_table_release.exit, %can_clean_entry.exit.thread, %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bx, ptr %i.by, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @qcow2_cache_create(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 129, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_create) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %or.cond52 = icmp eq i32 %i.d, 1
  br i1 %or.cond52, label %bb.d, label %is_power_of_2.exit.thread

is_power_of_2.exit.thread:                        ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 130, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_create) #13
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ugt i32 %2, 511
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 131, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_create) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %.not = icmp ugt i32 %2, %i.g
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 132, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_create) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.h = tail call noalias dereferenceable_or_null(56) ptr @g_malloc0(i64 noundef 56) #14 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 %2, ptr %i.j, align 4
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %i.l = tail call noalias ptr @g_try_malloc0_n(i64 noundef %i.k, i64 noundef 24) #15 ; 3 uses
  store ptr %i.l, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = sext i32 %2 to i64
  %i.q = mul nsw i64 %i.p, %i.k
  %i.r = tail call ptr @qemu_try_blockalign(ptr noundef %i.o, i64 noundef %i.q) #12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.r, ptr %i.s, align 8
  %.not49 = icmp eq ptr %i.l, null
  %.not50 = icmp eq ptr %i.r, null
  %or.cond = select i1 %.not49, i1 true, i1 %.not50
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @qemu_vfree(ptr noundef %i.r) #12
  tail call void @g_free(ptr noundef %i.l) #12
  tail call void @g_free(ptr noundef nonnull %i.h) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.045 = phi ptr [ %i.h, %bb.h ], [ null, %bb.i ]
  ret ptr %.045
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_try_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @qemu_try_blockalign(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @qemu_vfree(ptr noundef) local_unnamed_addr #4

declare void @g_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @qcow2_cache_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !13

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 156, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_destroy) #13
  unreachable

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @qemu_vfree(ptr noundef %i.j) #12
  %i.k = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.k) #12
  tail call void @g_free(ptr noundef nonnull %0) #12
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @qcow2_cache_write(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @qemu_coroutine_self() #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %1, %i.e
  %i.g = zext i1 %i.f to i32
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_qcow2_cache_flush.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr @_TRACE_QCOW2_CACHE_FLUSH_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.i, 0
  br i1 %.not1.i, label %trace_qcow2_cache_flush.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %trace_qcow2_cache_flush.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, ptr noundef %i.c, i32 noundef range(i32 0, 2) %i.g) #12
  br label %trace_qcow2_cache_flush.exit

trace_qcow2_cache_flush.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %trace_qcow2_cache_flush.exit, %.lr.ph
  %.016 = phi i32 [ %i.r, %.lr.ph ], [ 0, %trace_qcow2_cache_flush.exit ] ; 2 uses
  %.01315 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %trace_qcow2_cache_flush.exit ] ; 2 uses
  %i.o = tail call fastcc i32 @qcow2_cache_entry_flush(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %.016) ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = icmp ne i32 %.01315, -28
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  %spec.select = select i1 %or.cond, i32 %i.o, i32 %.01315 ; 2 uses
  %i.r = add nuw nsw i32 %.016, 1                 ; 2 uses
  %i.s = load i32, ptr %i.l, align 8
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %trace_qcow2_cache_flush.exit
  %.013.lcssa = phi i32 [ 0, %trace_qcow2_cache_flush.exit ], [ %spec.select, %.lr.ph ]
  ret i32 %.013.lcssa
}

declare ptr @qemu_coroutine_self() local_unnamed_addr #4
end_hunk_0
begin_hunk_1_@qcow2_cache_entry_flush:bb.a
bb.v:                                             ; preds = %.sink.split, %bb.t, %bb.u, %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %1, align 8
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bl, i64 %i.d
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr i8, ptr %1, i64 32
  %.val64 = load ptr, ptr %i.br, align 8
  %i.bs = mul nsw i64 %i.bq, %i.d
  %i.bt = getelementptr inbounds nuw i8, ptr %.val64, i64 %i.bs
  %i.bu = tail call i32 @bdrv_pwrite(ptr noundef %i.bk, i64 noundef %i.bn, i64 noundef %i.bq, ptr noundef %i.bt, i32 noundef 0) #12 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %qcow2_cache_flush_dependency.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = load ptr, ptr %1, align 8
  %i.bx = getelementptr inbounds [24 x i8], ptr %i.bw, i64 %i.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  store i8 0, ptr %i.by, align 4
  br label %qcow2_cache_flush_dependency.exit

qcow2_cache_flush_dependency.exit:                ; preds = %bb.j, %bb.g, %bb.v, %bb.q, %bb.a, %bb.b, %bb.w
  %.053 = phi i32 [ 0, %bb.a ], [ %i.bu, %bb.v ], [ %.1, %bb.q ], [ 0, %bb.w ], [ 0, %bb.b ], [ %i.ad, %bb.j ], [ %i.u, %bb.g ]
  ret i32 %.053
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @qcow2_cache_flush(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @qemu_coroutine_self() #12, !inline_history !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %1, %i.e
  %i.g = zext i1 %i.f to i32
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %trace_qcow2_cache_flush.exit.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr @_TRACE_QCOW2_CACHE_FLUSH_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.i, 0
  br i1 %.not1.i.i, label %trace_qcow2_cache_flush.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not2.i.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i.i, label %trace_qcow2_cache_flush.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, ptr noundef %i.c, i32 noundef range(i32 0, 2) %i.g) #12, !inline_history !17
  br label %trace_qcow2_cache_flush.exit.i

trace_qcow2_cache_flush.exit.i:                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %qcow2_cache_write.exit.thread

.lr.ph:                                           ; preds = %trace_qcow2_cache_flush.exit.i, %.lr.ph
  %.0.i10 = phi i32 [ %i.r, %.lr.ph ], [ 0, %trace_qcow2_cache_flush.exit.i ] ; 2 uses
  %.013.i9 = phi i32 [ %spec.select.i, %.lr.ph ], [ 0, %trace_qcow2_cache_flush.exit.i ] ; 2 uses
  %i.o = tail call fastcc i32 @qcow2_cache_entry_flush(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %.0.i10), !inline_history !17 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = icmp ne i32 %.013.i9, -28
  %or.cond.i = select i1 %i.p, i1 %i.q, i1 false
  %spec.select.i = select i1 %or.cond.i, i32 %i.o, i32 %.013.i9 ; 3 uses
  %i.r = add nuw nsw i32 %.0.i10, 1               ; 2 uses
  %i.s = load i32, ptr %i.l, align 8
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %.lr.ph, label %qcow2_cache_write.exit, !llvm.loop !15

qcow2_cache_write.exit:                           ; preds = %.lr.ph
  %i.u = icmp eq i32 %spec.select.i, 0
  br i1 %i.u, label %qcow2_cache_write.exit.thread, label %bb.e

qcow2_cache_write.exit.thread:                    ; preds = %trace_qcow2_cache_flush.exit.i, %qcow2_cache_write.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i32 @bdrv_flush(ptr noundef %i.x) #12
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.y, i32 0)
  br label %bb.e

bb.e:                                             ; preds = %qcow2_cache_write.exit.thread, %qcow2_cache_write.exit
  %.1 = phi i32 [ %spec.select, %qcow2_cache_write.exit.thread ], [ %spec.select.i, %qcow2_cache_write.exit ]
  ret i32 %.1
}

declare i32 @bdrv_flush(ptr noundef) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @qcow2_cache_set_dependency(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @qcow2_cache_flush(ptr noundef %0, ptr noundef nonnull %i.b), !inline_history !16 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %qcow2_cache_flush_dependency.exit.thread, label %qcow2_cache_flush_dependency.exit

qcow2_cache_flush_dependency.exit:                ; preds = %bb.b
  store ptr null, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %qcow2_cache_flush_dependency.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not17 = icmp eq ptr %i.g, null
  %.not18 = icmp eq ptr %i.g, %2
  %or.cond = or i1 %.not17, %.not18
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @qcow2_cache_flush(ptr noundef %0, ptr noundef nonnull %i.g), !inline_history !16 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %qcow2_cache_flush_dependency.exit.thread, label %qcow2_cache_flush_dependency.exit19

qcow2_cache_flush_dependency.exit19:              ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %qcow2_cache_flush_dependency.exit19, %bb.c
  store ptr %2, ptr %i.f, align 8
  br label %qcow2_cache_flush_dependency.exit.thread

qcow2_cache_flush_dependency.exit.thread:         ; preds = %bb.d, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.c, %bb.b ], [ %i.h, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @qcow2_cache_depends_on_flush(ptr nofree noundef writeonly captures(none) initializes((24, 25)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @qcow2_cache_empty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @qcow2_cache_flush(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.d to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 311, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_empty) #13
  unreachable

bb.c:                                             ; preds = %.lr.ph
  store i64 0, ptr %i.g, align 8
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.m, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.c, align 8
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.c, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.o, %bb.c ]
  %i.q = getelementptr i8, ptr %1, i64 20
  %.val = load i32, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %1, i64 32
  %.val19 = load ptr, ptr %i.r, align 8           ; 2 uses
  %i.s = sext i32 %.val to i64
  %i.t = tail call i32 @getpagesize() #11
  %i.u = sext i32 %i.t to i64                     ; 3 uses
  %i.v = mul nsw i64 %.pre-phi, %i.s              ; 2 uses
  %i.w = ptrtoint ptr %.val19 to i64              ; 2 uses
  %i.x = add i64 %i.u, %i.w
  %.fr20.i = freeze i64 %i.x
  %i.y = add i64 %.fr20.i, -1                     ; 2 uses
  %i.z = urem i64 %i.y, %i.u
  %i.aa = add i64 %i.z, %i.w
  %i.ab = sub i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = sub i64 %i.v, %i.ab
  %.fr.i = freeze i64 %i.ac                       ; 3 uses
  %2 = urem i64 %.fr.i, %i.u                      ; 2 uses
  %i.ad = icmp ugt i64 %i.v, %i.ab
  %3 = icmp ne i64 %.fr.i, %2
  %or.cond.i = and i1 %i.ad, %3
  br i1 %or.cond.i, label %bb.d, label %qcow2_cache_table_release.exit

bb.d:                                             ; preds = %._crit_edge
  %i.ae = sub nuw i64 %.fr.i, %2
  %i.af = getelementptr inbounds nuw i8, ptr %.val19, i64 %i.ab
  %i.ag = tail call i32 @madvise(ptr noundef %i.af, i64 noundef %i.ae, i32 noundef 4) #12 ; 0 uses
  br label %qcow2_cache_table_release.exit

qcow2_cache_table_release.exit:                   ; preds = %._crit_edge, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.ah, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %qcow2_cache_table_release.exit
  %.016 = phi i32 [ 0, %qcow2_cache_table_release.exit ], [ %i.a, %bb.a ]
  ret i32 %.016
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @qcow2_cache_get(ptr noundef %0, ptr nofree noundef captures(address) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @qcow2_cache_do_get(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @qcow2_cache_do_get(ptr noundef %0, ptr nofree noundef captures(address) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 334, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_do_get) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @qemu_coroutine_self() #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %1, %i.e
  %i.g = zext i1 %i.f to i32
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_qcow2_cache_get.exit, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.i = load i16, ptr @_TRACE_QCOW2_CACHE_GET_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.i, 0
  br i1 %.not3.i, label %trace_qcow2_cache_get.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not4.i = icmp eq i32 %i.k, 0
  br i1 %.not4.i, label %trace_qcow2_cache_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = zext i1 %4 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, ptr noundef %i.c, i32 noundef range(i32 0, 2) %i.g, i64 noundef range(i64 1, 0) %2, i32 noundef %i.l) #12
  br label %trace_qcow2_cache_get.exit

trace_qcow2_cache_get.exit:                       ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = urem i64 %2, %i.o
  %i.q = udiv i64 %2, %i.o
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %bb.i, label %bb.g

bb.g:                                             ; preds = %trace_qcow2_cache_get.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %1, %i.t
  br i1 %i.u, label %qcow2_cache_get_name.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = icmp eq ptr %1, %i.v
  %.str.14..str.15.i = select i1 %i.w, ptr @.str.14, ptr @.str.15
  br label %qcow2_cache_get_name.exit

qcow2_cache_get_name.exit:                        ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ @.str.13, %bb.g ], [ %.str.14..str.15.i, %bb.h ]
  tail call void (ptr, i1, i64, i64, ptr, ...) @qcow2_signal_corruption(ptr noundef nonnull %0, i1 noundef zeroext true, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.11, ptr noundef nonnull %.0.i, i64 noundef %2) #12
  br label %trace_qcow2_cache_get_done.exit

bb.i:                                             ; preds = %trace_qcow2_cache_get.exit
  %i.x = shl i64 %i.q, 2
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = urem i64 %i.x, %i.aa
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = load ptr, ptr %1, align 8               ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.071 = phi i32 [ %i.ac, %bb.i ], [ %spec.store.select, %bb.m ] ; 4 uses
  %.068 = phi i64 [ -1, %bb.i ], [ %.169, %bb.m ] ; 3 uses
  %.067 = phi i32 [ -1, %bb.i ], [ %.1, %bb.m ]   ; 2 uses
  %i.ae = sext i32 %.071 to i64                   ; 2 uses
  %i.af = getelementptr inbounds [24 x i8], ptr %i.ad, i64 %i.ae ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp eq i64 %i.ag, %2
  br i1 %i.ah, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ult i64 %i.am, %.068
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %.068)
  %spec.select82 = select i1 %i.an, i32 %.071, i32 %.067
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.169 = phi i64 [ %.068, %bb.k ], [ %spec.select, %bb.l ]
  %.1 = phi i32 [ %.067, %bb.k ], [ %spec.select82, %bb.l ] ; 7 uses
  %i.ao = add i32 %.071, 1                        ; 2 uses
  %i.ap = icmp eq i32 %i.ao, %i.z
  %spec.store.select = select i1 %i.ap, i32 0, i32 %i.ao ; 2 uses
  %.not80 = icmp eq i32 %spec.store.select, %i.ac
  br i1 %.not80, label %bb.n, label %bb.j, !llvm.loop !19

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp eq i32 %.1, -1
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @abort() #13
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ar = tail call ptr @qemu_coroutine_self() #12
  %i.as = load ptr, ptr %i.d, align 8
  %i.at = icmp eq ptr %1, %i.as
  %i.au = zext i1 %i.at to i32
  %i.av = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i86 = icmp eq i32 %i.av, 0
  br i1 %.not.i86, label %trace_qcow2_cache_get_replace_entry.exit, label %bb.q, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.aw = load i16, ptr @_TRACE_QCOW2_CACHE_GET_REPLACE_ENTRY_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.aw, 0
  br i1 %.not2.i, label %trace_qcow2_cache_get_replace_entry.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = load i32, ptr @qemu_loglevel, align 4
  %i.ay = and i32 %i.ax, 32768
  %.not3.i87 = icmp eq i32 %i.ay, 0
  br i1 %.not3.i87, label %trace_qcow2_cache_get_replace_entry.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16, ptr noundef %i.ar, i32 noundef range(i32 0, 2) %i.au, i32 noundef range(i32 0, -1) %.1) #12
  br label %trace_qcow2_cache_get_replace_entry.exit

trace_qcow2_cache_get_replace_entry.exit:         ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.az = tail call fastcc i32 @qcow2_cache_entry_flush(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %.1) ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %trace_qcow2_cache_get_done.exit, label %bb.t

bb.t:                                             ; preds = %trace_qcow2_cache_get_replace_entry.exit
  %i.bb = tail call ptr @qemu_coroutine_self() #12
  %i.bc = load ptr, ptr %i.d, align 8
  %i.bd = icmp eq ptr %1, %i.bc
  %i.be = zext i1 %i.bd to i32
  %i.bf = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i88 = icmp eq i32 %i.bf, 0
  br i1 %.not.i88, label %trace_qcow2_cache_get_read.exit, label %bb.u, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.bg = load i16, ptr @_TRACE_QCOW2_CACHE_GET_READ_DSTATE, align 2
  %.not2.i89 = icmp eq i16 %i.bg, 0
  br i1 %.not2.i89, label %trace_qcow2_cache_get_read.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = load i32, ptr @qemu_loglevel, align 4
  %i.bi = and i32 %i.bh, 32768
  %.not3.i90 = icmp eq i32 %i.bi, 0
  br i1 %.not3.i90, label %trace_qcow2_cache_get_read.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.17, ptr noundef %i.bb, i32 noundef range(i32 0, 2) %i.be, i32 noundef range(i32 0, -1) %.1) #12
  br label %trace_qcow2_cache_get_read.exit

trace_qcow2_cache_get_read.exit:                  ; preds = %bb.t, %bb.u, %bb.v, %bb.w
  %i.bj = load ptr, ptr %1, align 8
  %i.bk = sext i32 %.1 to i64                     ; 4 uses
  %i.bl = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.bk
  store i64 0, ptr %i.bl, align 8
  br i1 %4, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %trace_qcow2_cache_get_read.exit
  %i.bm = load ptr, ptr %i.d, align 8
  %i.bn = icmp eq ptr %1, %i.bm
  br i1 %i.bn, label %bb.y, label %bb.aa
end_hunk_1
begin_hunk_2_@qcow2_cache_put:bb.a

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp sgt i32 %i.o, %i.l
  %i.q = icmp eq i64 %i.k, 0
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %qcow2_cache_get_table_idx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_get_table_idx) #13
  unreachable

qcow2_cache_get_table_idx.exit:                   ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8
  %i.s = and i64 %i.j, 2147483647                 ; 3 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 8
  store ptr null, ptr %1, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.s ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %qcow2_cache_get_table_idx.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.s
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 16
  %.pre12 = load i32, ptr %.phi.trans.insert11, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %qcow2_cache_get_table_idx.exit
  %i.ag = phi i32 [ %.pre12, %bb.d ], [ %i.aa, %qcow2_cache_get_table_idx.exit ]
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_put) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qcow2_cache_entry_mark_dirty(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sdiv i64 %i.e, %i.h                      ; 2 uses
  %i.j = srem i64 %i.e, %i.h
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp sgt i32 %i.n, %i.k
  %i.p = icmp eq i64 %i.j, 0
  %or.cond = and i1 %i.o, %i.p
  br i1 %or.cond, label %qcow2_cache_get_table_idx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_get_table_idx) #13
  unreachable

qcow2_cache_get_table_idx.exit:                   ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8
  %i.r = and i64 %i.i, 2147483647
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %qcow2_cache_get_table_idx.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 435, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_entry_mark_dirty) #13
  unreachable

bb.e:                                             ; preds = %qcow2_cache_get_table_idx.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i8 1, ptr %i.u, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @qcow2_cache_is_table_offset(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !20

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, %1
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.h, align 4
  %i.i = getelementptr i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.i, align 8
  %i.j = sext i32 %.val to i64
  %i.k = mul nsw i64 %indvars.iv, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 %i.k
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.08 = phi ptr [ %i.l, %bb.d ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.08
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qcow2_cache_discard(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sdiv i64 %i.e, %i.h                      ; 2 uses
  %i.j = srem i64 %i.e, %i.h
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp sgt i32 %i.n, %i.k
  %i.p = icmp eq i64 %i.j, 0
  %or.cond = and i1 %i.o, %i.p
  br i1 %or.cond, label %qcow2_cache_get_table_idx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_get_table_idx) #13
  unreachable

qcow2_cache_get_table_idx.exit:                   ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8
  %i.r = and i64 %i.i, 2147483647                 ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %qcow2_cache_get_table_idx.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 455, ptr noundef nonnull @__PRETTY_FUNCTION__.qcow2_cache_discard) #13
  unreachable

bb.e:                                             ; preds = %qcow2_cache_get_table_idx.exit
  store i64 0, ptr %i.s, align 8
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 0, ptr %i.y, align 8
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.r
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i8 0, ptr %i.ab, align 4
  %.val = load i32, ptr %i.f, align 4
  %.val11 = load ptr, ptr %i.a, align 8
  %i.ac = sext i32 %.val to i64                   ; 3 uses
  %i.ad = mul nsw i64 %i.r, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.ad ; 2 uses
  %i.af = tail call i32 @getpagesize() #11
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ai = add i64 %i.ah, %i.ag
  %.fr20.i = freeze i64 %i.ai
  %i.aj = add i64 %.fr20.i, -1                    ; 2 uses
  %i.ak = urem i64 %i.aj, %i.ag
  %i.al = add i64 %i.ak, %i.ah
  %i.am = sub i64 %i.aj, %i.al                    ; 3 uses
  %i.an = sub i64 %i.ac, %i.am
  %.fr.i = freeze i64 %i.an                       ; 3 uses
  %2 = urem i64 %.fr.i, %i.ag                     ; 2 uses
  %i.ao = icmp ult i64 %i.am, %i.ac
  %3 = icmp ne i64 %.fr.i, %2
  %or.cond.i = and i1 %i.ao, %3
  br i1 %or.cond.i, label %bb.f, label %qcow2_cache_table_release.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = sub nuw i64 %.fr.i, %2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.am
  %i.ar = tail call i32 @madvise(ptr noundef %i.aq, i64 noundef %i.ap, i32 noundef 4) #12 ; 0 uses
  br label %qcow2_cache_table_release.exit

qcow2_cache_table_release.exit:                   ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #8

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #4

declare i32 @qcow2_pre_write_overlap_check(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @bdrv_debug_event(ptr noundef, i32 noundef) #4

declare i32 @bdrv_pwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #4

declare void @qcow2_signal_corruption(ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare i32 @bdrv_pread(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = distinct !{!15, !10}
!16 = distinct !{null}
!17 = !{ptr @qcow2_cache_write}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
end_hunk_2
