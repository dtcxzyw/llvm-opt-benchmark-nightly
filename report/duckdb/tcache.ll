Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/tcache?download=true
inline.NumInlined: 257
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cache_bin_info_s = type { i16 }
%struct.malloc_mutex_s = type { %union.anon }
%union.anon = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.mutex_prof_data_t, %struct.atomic_b_t, %union.pthread_mutex_t }
%struct.mutex_prof_data_t = type { %struct.nstime_t, %struct.nstime_t, i64, i64, i32, %struct.atomic_u32_t, i64, ptr, i64 }
%struct.nstime_t = type { i64 }
%struct.atomic_u32_t = type { i32 }
%struct.atomic_b_t = type { i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.emap_s = type { %struct.rtree_s }
%struct.rtree_s = type { ptr, %struct.malloc_mutex_s, [262144 x %struct.rtree_node_elm_s] }
%struct.rtree_node_elm_s = type { %struct.atomic_p_t }
%struct.atomic_p_t = type { ptr }
%struct.div_info_s = type { i32 }
%struct.bin_info_s = type { i64, i64, i32, i32, %struct.bitmap_info_s }
%struct.bitmap_info_s = type { i64, i64 }
%struct.arena_config_s = type { ptr, i8 }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.bin_remote_free_data_s = type { ptr, ptr }
%union.emap_batch_lookup_result_u = type { ptr }
%struct.rtree_contents_s = type { ptr, %struct.rtree_metadata_s }
%struct.rtree_metadata_s = type { i32, i32, i8, i8 }

@duckdb_je_opt_tcache = local_unnamed_addr global i8 1, align 1
@duckdb_je_opt_tcache_max = local_unnamed_addr global i64 32768, align 8
@duckdb_je_opt_tcache_nslots_small_min = local_unnamed_addr global i32 20, align 4
@duckdb_je_opt_tcache_nslots_small_max = local_unnamed_addr global i32 200, align 4
@duckdb_je_opt_tcache_nslots_large = local_unnamed_addr global i32 20, align 4
@duckdb_je_opt_lg_tcache_nslots_mul = local_unnamed_addr global i64 1, align 8
@duckdb_je_opt_tcache_gc_incr_bytes = local_unnamed_addr global i64 65536, align 8
@duckdb_je_opt_tcache_gc_delay_bytes = local_unnamed_addr global i64 0, align 8
@duckdb_je_opt_lg_tcache_flush_small_div = local_unnamed_addr global i32 1, align 4
@duckdb_je_opt_lg_tcache_flush_large_div = local_unnamed_addr global i32 1, align 4
@duckdb_je_global_do_not_change_tcache_nbins = local_unnamed_addr global i32 0, align 4
@opt_tcache_ncached_max = internal global [73 x %struct.cache_bin_info_s] zeroinitializer, align 16
@opt_tcache_ncached_max_set = internal global [73 x i8] zeroinitializer, align 16
@tcaches_mtx = internal global %struct.malloc_mutex_s zeroinitializer, align 8
@tcaches_avail = internal unnamed_addr global ptr null, align 8
@duckdb_je_tcaches = local_unnamed_addr global ptr null, align 8
@tcaches_past = internal unnamed_addr global i32 0, align 4
@duckdb_je_global_do_not_change_tcache_maxclass = local_unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"tcaches\00", align 1
@duckdb_je_arena_emap_global = external global %struct.emap_s, align 8
@duckdb_je_sz_index2size_tab = external local_unnamed_addr global [232 x i64], align 16
@duckdb_je_opt_bin_info_remote_free_max_batch = external local_unnamed_addr global i64, align 8
@duckdb_je_arena_bin_offsets = external local_unnamed_addr global [36 x i32], align 16
@duckdb_je_bin_info_nbatched_sizes = external local_unnamed_addr global i32, align 4
@duckdb_je_arena_binind_div_info = external local_unnamed_addr global [36 x %struct.div_info_s], align 16
@duckdb_je_bin_infos = external local_unnamed_addr global [36 x %struct.bin_info_s], align 16
@duckdb_je_ticker_geom_table = external local_unnamed_addr constant [64 x i8], align 16
@duckdb_je_arenas = external local_unnamed_addr global [0 x %struct.atomic_p_t], align 8
@duckdb_je_manual_arena_base = external local_unnamed_addr global i32, align 4
@duckdb_je_sz_size2index_tab = external local_unnamed_addr global [0 x i8], align 1
@duckdb_je_disabled_bin = external constant i64, align 8
@duckdb_je_sz_large_pad = external local_unnamed_addr global i64, align 8
@duckdb_je_arena_config_default = external constant %struct.arena_config_s, align 8
@duckdb_je_malloc_init_state = external local_unnamed_addr global i32, align 4
@duckdb_je_background_thread_enabled_state = external local_unnamed_addr global %struct.atomic_b_t, align 1

; Function Attrs: nounwind uwtable
define i64 @duckdb_je_tcache_salloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %2) #15
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  %i.c = ptrtoint ptr %1 to i64
  %i.d = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.d, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.e = and i64 %.fca.0.extract.i, 4294967295
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !8
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @duckdb_je_tcache_gc_new_event_wait(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr @duckdb_je_opt_tcache_gc_incr_bytes, align 8, !tbaa !8
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @duckdb_je_tcache_gc_postponed_event_wait(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @duckdb_je_tcache_gc_dalloc_new_event_wait(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr @duckdb_je_opt_tcache_gc_incr_bytes, align 8, !tbaa !8
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @duckdb_je_tcache_gc_dalloc_postponed_event_wait(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret i64 1
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_gc_event_handler(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @tcache_event(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_event(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tcache_get.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14   ; 6 uses
  %i.f = zext i32 %i.e to i64                     ; 6 uses
  %i.g = icmp ult i32 %i.e, 36                    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f ; 10 uses
  %.val = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.j = icmp eq ptr %.val, @duckdb_je_disabled_bin
  %i.k = getelementptr i8, ptr %0, i64 304
  %i.l = getelementptr i8, ptr %i.i, i64 22
  br i1 %i.j, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, i32 noundef %i.e, i1 noundef zeroext %i.g)
  %i.m = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  %.val.i = load i16, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr i8, ptr %i.i, i64 20
  %.val4.i = load i16, ptr %i.n, align 4, !tbaa !32 ; 3 uses
  %i.o = sub i16 %.val4.i, %.val.i
  %i.p = lshr i16 %i.o, 3                         ; 3 uses
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.q = zext nneg i16 %i.p to i32                ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = sub nsw i32 %i.q, %i.r                   ; 3 uses
  %1 = sext i32 %i.s to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.f ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33    ; 2 uses
  %2 = zext i8 %i.v to i64
  %i.w = icmp ult i64 %1, %2
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = trunc i32 %i.s to i8
  %i.y = sub i8 %i.v, %i.x
  store i8 %i.y, ptr %i.u, align 1, !tbaa !33
  br label %tcache_gc_small.exit

bb.g:                                             ; preds = %bb.e
  %.val.i43 = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.z = ptrtoint ptr %.val.i43 to i64
  %i.aa = trunc i64 %i.z to i16
  %i.ab = sub i16 %.val4.i, %i.aa
  %i.ac = lshr i16 %i.ab, 3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.f
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !8
  %i.af = load i64, ptr @duckdb_je_opt_tcache_gc_delay_bytes, align 8, !tbaa !8
  %i.ag = udiv i64 %i.af, %i.ae
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 255)
  %i.ah = trunc nuw i64 %spec.select.i.i to i8
  store i8 %i.ah, ptr %i.u, align 1, !tbaa !33
  %i.ai = zext nneg i16 %i.ac to i32
  %i.aj = sub nsw i32 %i.ai, %i.s
  tail call void @duckdb_je_tcache_bin_flush_small(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, i32 noundef %i.e, i32 noundef %i.aj)
  %.val27.i = load i16, ptr %i.l, align 2, !tbaa !34
  %i.ak = zext i16 %.val27.i to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33  ; 2 uses
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = lshr i32 %i.ak, %i.ao
  %i.aq = icmp samesign ugt i32 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %tcache_gc_small.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = add i8 %i.an, 1
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !33
  br label %tcache_gc_small.exit

bb.i:                                             ; preds = %bb.d
  %.val.i44 = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.as = ptrtoint ptr %.val.i44 to i64
  %i.at = trunc i64 %i.as to i16
  %i.au = sub i16 %.val4.i, %i.at
  %i.av = lshr i16 %i.au, 3
  %i.aw = zext nneg i16 %i.av to i32
  %i.ax = zext nneg i16 %i.p to i32               ; 2 uses
  %i.ay = lshr i32 %i.ax, 2
  %i.az = sub nsw i32 %i.ay, %i.ax
  %i.ba = add nsw i32 %i.az, %i.aw
  tail call void @duckdb_je_tcache_bin_flush_large(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, i32 noundef %i.e, i32 noundef %i.ba)
  br label %tcache_gc_small.exit

bb.j:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.k, label %tcache_gc_small.exit

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.f ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !10, !range !12, !noundef !13
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.l, label %tcache_gc_small.exit

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.f ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !33  ; 2 uses
  %i.bi = icmp ugt i8 %i.bh, 1
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = add i8 %i.bh, -1
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i8 0, ptr %i.bc, align 1, !tbaa !10
  br label %tcache_gc_small.exit

tcache_gc_small.exit:                             ; preds = %bb.h, %bb.g, %bb.f, %bb.j, %bb.k, %bb.n, %bb.i
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = trunc i64 %i.bl to i16
  store i16 %i.bm, ptr %i.m, align 8, !tbaa !31
  %.pre = load i32, ptr %i.d, align 4, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %tcache_gc_small.exit
  %i.bn = phi i32 [ %i.e, %bb.b ], [ %.pre, %tcache_gc_small.exit ]
  %i.bo = add i32 %i.bn, 1                        ; 2 uses
  %.val41 = load i32, ptr %i.k, align 8, !tbaa !35
  %i.bp = icmp eq i32 %i.bo, %.val41
  %spec.store.select = select i1 %i.bp, i32 0, i32 %i.bo
  store i32 %spec.store.select, ptr %i.d, align 4
  br label %tcache_get.exit.thread

tcache_get.exit.thread:                           ; preds = %bb.o, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_gc_dalloc_event_handler(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @tcache_event(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr i8, ptr %3, i64 22
  %.val = load i16, ptr %i.b, align 2, !tbaa !34
  %i.c = zext i16 %.val to i32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !33
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i32 %i.c, %i.h                      ; 2 uses
  %i.j = trunc nuw i32 %i.i to i16
  %i.k = icmp eq i32 %i.i, 0
  %spec.store.select = select i1 %i.k, i16 1, i16 %i.j
  tail call void @duckdb_je_arena_cache_bin_fill_small(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %spec.store.select) #15
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.e
  store i8 1, ptr %i.m, align 1, !tbaa !10
  %i.n = load ptr, ptr %3, align 8, !tbaa !25     ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.t = trunc i64 %i.p to i16
  %.not.i = icmp eq i16 %i.s, %i.t
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  store ptr %i.q, ptr %3, align 8, !tbaa !25
  br label %cache_bin_alloc_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.v = load i16, ptr %i.u, align 4, !tbaa !32
  %.not21.i = icmp eq i16 %i.v, %i.s
  br i1 %.not21.i, label %cache_bin_alloc_impl.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  store ptr %i.q, ptr %3, align 8, !tbaa !25
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = trunc i64 %i.w to i16
  store i16 %i.x, ptr %i.r, align 8, !tbaa !31
  br label %cache_bin_alloc_impl.exit

cache_bin_alloc_impl.exit:                        ; preds = %bb.c, %bb.b, %bb.d
  %.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.c ]
  %.0.i = phi ptr [ %i.o, %bb.b ], [ %i.o, %bb.d ], [ null, %bb.c ]
  store i8 %.sink, ptr %5, align 1, !tbaa !10
  ret ptr %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @duckdb_je_arena_cache_bin_fill_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_bin_flush_small(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [16 x %struct.bin_remote_free_data_s], align 16 ; 4 uses
  %i.a = getelementptr i8, ptr %2, i64 20         ; 3 uses
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true)
  %.val = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %.val7 = load i16, ptr %i.a, align 4, !tbaa !32
  %i.b = ptrtoint ptr %.val to i64
  %i.c = trunc i64 %i.b to i16
  %i.d = sub i16 %.val7, %i.c                     ; 2 uses
  %i.e = lshr i16 %i.d, 3                         ; 2 uses
  %i.f = and i32 %4, 65535
  %i.g = zext nneg i16 %i.e to i32
  %i.h = icmp samesign ugt i32 %i.f, %i.g
  %i.i = trunc i32 %4 to i16
  %i.j = sub i16 %i.e, %i.i
  %i.k = select i1 %i.h, i16 0, i16 %i.j          ; 2 uses
  %i.l = zext i16 %i.d to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 %i.l
  %i.n = zext i16 %i.k to i64                     ; 4 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  %i.q = zext i16 %i.k to i32                     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.s = zext i32 %3 to i64                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_binind_div_info, i64 %i.s
  %i.x = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.z = icmp eq ptr %0, null
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
end_hunk_0
