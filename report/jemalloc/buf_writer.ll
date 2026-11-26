Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/buf_writer?download=true
inline.NumInlined: 32
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.buf_writer_t = type { ptr, ptr, ptr, i64, i64, i8 }
%struct.emap_s = type { %struct.rtree_s }
%struct.rtree_s = type { ptr, %struct.malloc_mutex_s, [262144 x %struct.rtree_node_elm_s] }
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
%struct.rtree_node_elm_s = type { %struct.atomic_p_t }
%struct.atomic_p_t = type { ptr }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.rtree_contents_s = type { ptr, %struct.rtree_metadata_s }
%struct.rtree_metadata_s = type { i32, i32, i8, i8 }

@malloc_message = external local_unnamed_addr global ptr, align 8
@je_buf_writer_pipe.backup_buf = internal global [16 x i8] zeroinitializer, align 16
@je_buf_writer_pipe.backup_buf_writer = internal unnamed_addr global %struct.buf_writer_t zeroinitializer, align 8
@je_sz_index2size_tab = external local_unnamed_addr global [232 x i64], align 16
@je_sz_size2index_tab = external local_unnamed_addr global [0 x i8], align 1
@je_opt_disable_large_size_classes = external local_unnamed_addr global i8, align 1
@je_arena_emap_global = external global %struct.emap_s, align 8
@je_arenas = external local_unnamed_addr global [0 x %struct.atomic_p_t], align 8
@je_sz_large_pad = external local_unnamed_addr global i64, align 8

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_buf_writer_init(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 41)) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %7 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %8 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %9 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %.not = icmp eq ptr %2, null
  %i.a = load ptr, ptr @malloc_message, align 8   ; 2 uses
  %.not21 = icmp eq ptr %i.a, null
  %i.b = select i1 %.not21, ptr @je_wrtmessage, ptr %i.a
  %storemerge = select i1 %.not, ptr %i.b, ptr %2
  store ptr %storemerge, ptr %1, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !18
  %.not22 = icmp eq ptr %4, null
  br i1 %.not22, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %5, 4097
  br i1 %i.d, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %5, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %i.i = zext i8 %i.h to i32
  br label %sz_size2index.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %5, 8070450532247928832
  br i1 %i.j, label %sz_size2index.exit.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw i64 %5, 1
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 3 uses
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = sub nuw nsw i64 60, %i.m
  %10 = ashr exact i64 -1152921504606846976, %i.m
  %i.p = add nsw i64 %5, -1
  %11 = and i64 %10, %i.p
  %i.q = lshr i64 %11, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 3
  %i.t = shl nuw nsw i32 %i.n, 2
  %reass.sub = sub nsw i32 %i.s, %i.t
  %i.u = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.i, %bb.c ], [ %i.u, %bb.e ], [ 232, %bb.d ] ; 2 uses
  %i.v = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.w = icmp ult i64 %5, 14337                   ; 2 uses
  %i.x = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.x, label %tsdn_witness_tsdp_get.exit.thread.i, label %tsdn_witness_tsdp_get.exit.i

tsdn_witness_tsdp_get.exit.i:                     ; preds = %sz_size2index.exit.i
  %i.y = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %0, ptr noundef %i.v, i64 noundef %5, i32 noundef range(i32 0, 256) %.0.i.i, i1 noundef zeroext false, i1 noundef zeroext %i.w) #7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.n, label %bb.f, !prof !21

tsdn_witness_tsdp_get.exit.thread.i:              ; preds = %sz_size2index.exit.i
  %i.z = tail call ptr @je_arena_malloc_hard(ptr noundef null, ptr noundef %i.v, i64 noundef %5, i32 noundef range(i32 0, 256) %.0.i.i, i1 noundef zeroext false, i1 noundef zeroext %i.w) #7 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.z, null
  br i1 %.not.i9.i, label %bb.n, label %.thread.i, !prof !21

.thread.i:                                        ; preds = %tsdn_witness_tsdp_get.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %8) #7
  br label %tsdn_rtree_ctx.exit.i

bb.f:                                             ; preds = %tsdn_witness_tsdp_get.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.f, %.thread.i
  %i.ab = phi ptr [ %i.z, %.thread.i ], [ %i.y, %bb.f ] ; 2 uses
  %.0.i5.i = phi ptr [ %8, %.thread.i ], [ %i.aa, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef %0, ptr noundef nonnull %.0.i5.i, i64 noundef %i.ac)
  %i.ad = load ptr, ptr %9, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %.val.i = load i64, ptr %i.ad, align 8, !tbaa !28
  %i.ae = and i64 %.val.i, 4095
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ae
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  br i1 %i.x, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %tsdn_rtree_ctx.exit.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %6) #7
  br label %tsdn_rtree_ctx.exit.i.i

bb.h:                                             ; preds = %tsdn_rtree_ctx.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i

tsdn_rtree_ctx.exit.i.i:                          ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %6, %bb.g ], [ %i.ah, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef %0, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.ac)
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !29 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !30, !range !31, !noundef !32
  %i.am = icmp eq i32 %i.aj, 232
  %i.an = load ptr, ptr %7, align 8               ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  %or.cond.i.i = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %or.cond.i.i, label %emap_alloc_ctx_lookup.exit.i, label %bb.i

bb.i:                                             ; preds = %tsdn_rtree_ctx.exit.i.i
  %.val.i.i = load i64, ptr %i.an, align 8, !tbaa !28
  %i.ap = trunc i64 %.val.i.i to i32
  %i.aq = lshr i32 %i.ap, 20
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %i.as = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !33, !range !31, !noundef !32
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = icmp samesign ugt i32 %i.ar, 35
  %or.cond.not.i.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !34
  br label %emap_alloc_ctx_lookup.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !20
  %i.ba = and i64 %i.az, -4096
  %i.bb = load i64, ptr @je_sz_large_pad, align 8, !tbaa !34
  %i.bc = sub i64 %i.ba, %i.bb
  br label %emap_alloc_ctx_lookup.exit.i

emap_alloc_ctx_lookup.exit.i:                     ; preds = %bb.k, %bb.j, %tsdn_rtree_ctx.exit.i.i
  %i.bd = phi i64 [ 0, %tsdn_rtree_ctx.exit.i.i ], [ %i.ax, %bb.j ], [ %i.bc, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.be = trunc nuw i8 %i.al to i1
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %emap_alloc_ctx_lookup.exit.i
  %i.bf = zext i32 %i.aj to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %emap_alloc_ctx_lookup.exit.i, %bb.l
  %.0.i6.i = phi i64 [ %i.bh, %bb.l ], [ %i.bd, %emap_alloc_ctx_lookup.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.bj = atomicrmw add ptr %i.bi, i64 %.0.i6.i monotonic, align 8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.m
  %.sink37 = phi ptr [ %i.ab, %bb.m ], [ %4, %bb.a ]
  %.sink35 = phi i8 [ 1, %bb.m ], [ 0, %bb.a ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sink37, ptr %i.bk, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 %.sink35, ptr %i.bl, align 8, !tbaa !36
  %i.bm = add i64 %5, -1
  br label %bb.o

bb.n:                                             ; preds = %tsdn_witness_tsdp_get.exit.thread.i, %tsdn_witness_tsdp_get.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.bn, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.bo, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread
  %.not2332 = phi i1 [ true, %bb.n ], [ false, %.thread ]
  %.sink = phi i64 [ 0, %bb.n ], [ %i.bm, %.thread ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sink, ptr %i.bp, align 8, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.bq, align 8, !tbaa !38
  ret i1 %.not2332
}

declare void @je_wrtmessage(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @je_buf_writer_flush(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !20
  %i.g = load ptr, ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void %i.g(ptr noundef %i.i, ptr noundef %i.j) #7
  store i64 0, ptr %i.d, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_buf_writer_cb(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  tail call void %i.d(ptr noundef %i.f, ptr noundef %1) #7
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8 ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.h, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %je_buf_writer_flush.exit
  %i.k = phi i64 [ %.pre, %.lr.ph ], [ %i.ab, %je_buf_writer_flush.exit ] ; 5 uses
  %.030 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %je_buf_writer_flush.exit ] ; 3 uses
end_hunk_0
