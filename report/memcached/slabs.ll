Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/slabs?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.settings = type { i64, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, double, double, i32, i32, i8, i32, i8, i8, ptr, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i8, i32, i32, ptr, i32 }
%struct.slabclass_t = type { i32, i32, ptr, i32, i32, ptr, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.thread_stats = type { %union.pthread_mutex_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [64 x %struct.slab_stats], [256 x i64], i64, i64, i64 }
%struct.slab_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@settings = external local_unnamed_addr global %struct.settings, align 8
@slabclass = internal unnamed_addr global [64 x %struct.slabclass_t] zeroinitializer, align 16
@power_largest = internal unnamed_addr global i32 0, align 4
@mem_limit = internal unnamed_addr global i64 0, align 8
@mem_base = internal unnamed_addr global ptr null, align 8
@mem_current = internal unnamed_addr global ptr null, align 8
@mem_avail = internal unnamed_addr global i64 0, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [98 x i8] c"Warning: Failed to allocate requested memory in one large chunk.\0AWill allocate in smaller chunks\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"slab class %3d: chunk size %9u perslab %7u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"T_MEMD_INITIAL_MALLOC\00", align 1
@mem_malloced = internal unnamed_addr global i64 0, align 8
@slabs_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"it->it_flags == ITEM_SLABBED\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"slabs.c\00", align 1
@__PRETTY_FUNCTION__.do_slabs_unlink_free_chunk = private unnamed_addr constant [60 x i8] c"void do_slabs_unlink_free_chunk(const unsigned int, item *)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"d_cls->slab_list != NULL\00", align 1
@__PRETTY_FUNCTION__.slabs_finalize_page_move = private unnamed_addr constant [78 x i8] c"void slabs_finalize_page_move(const unsigned int, const unsigned int, void *)\00", align 1
@slabs_pick_any_for_reassign.cur = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Failed to get supported huge page size\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"huge page size: %zu\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Failed to get aligned memory chunk: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Failed to set transparent hugepage hint: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [121 x i8] c"Error while preallocating slab memory!\0AIf using -L or other prealloc options, max memory must be at least %d megabytes.\0A\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"p->sl_curr == 0 || (((item *)p->slots)->it_flags & ITEM_SLABBED)\00", align 1
@__PRETTY_FUNCTION__.do_slabs_alloc = private unnamed_addr constant [49 x i8] c"void *do_slabs_alloc(unsigned int, unsigned int)\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"id >= POWER_SMALLEST && id <= power_largest\00", align 1
@__PRETTY_FUNCTION__.do_slabs_free = private unnamed_addr constant [41 x i8] c"void do_slabs_free(void *, unsigned int)\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"chunk->it_flags == ITEM_CHUNK\00", align 1
@__PRETTY_FUNCTION__.do_slabs_free_chunked = private unnamed_addr constant [35 x i8] c"void do_slabs_free_chunked(item *)\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%d:%s\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"chunk_size\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"chunks_per_page\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"total_pages\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"total_chunks\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"used_chunks\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"free_chunks\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"free_chunks_end\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"get_hits\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"cmd_set\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"delete_hits\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"incr_hits\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"decr_hits\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"cas_hits\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"cas_badval\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"touch_hits\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"active_slabs\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"total_malloced\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @slabs_clsid(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 116), align 4
  %.fr = freeze i32 %i.a
  %i.b = sext i32 %.fr to i64
  %i.c = add i64 %0, -1
  %or.cond.not = icmp ult i64 %i.c, %i.b
  br i1 %or.cond.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = load i32, ptr @power_largest, align 4    ; 2 uses
  %i.e = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17
  %i.h = zext i32 %i.g to i64
  %i.i = icmp ugt i64 %0, %i.h
  br i1 %i.i, label %bb.c, label %.loopexit.loopexit.split.loop.exit13

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.j = icmp eq i64 %indvars.iv, %i.e
  br i1 %i.j, label %.loopexit, label %bb.b, !llvm.loop !42

.loopexit.loopexit.split.loop.exit13:             ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit.loopexit.split.loop.exit13, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ %i.k, %.loopexit.loopexit.split.loop.exit13 ], [ %i.d, %bb.c ]
  ret i32 %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @slabs_class_check(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  %i.b = load i32, ptr @power_largest, align 4
  %i.c = icmp sle i32 %0, %i.b
  %or.cond.not = select i1 %i.a, i1 %i.c, i1 false
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @slabs_size(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [40 x i8], ptr @slabclass, i64 %i.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local i32 @slabs_fixup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !19
  %i.c = and i8 %i.b, 63                          ; 3 uses
  %i.d = zext nneg i8 %i.c to i32
  %i.e = icmp eq i8 %i.c, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4, !tbaa !20 ; 5 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 32), align 16, !tbaa !21
  %i.h = icmp eq i32 %i.f, %i.g
  %.pre30 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 24), align 8, !tbaa !22 ; 3 uses
  br i1 %i.h, label %bb.c, label %do_grow_slab_list.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.f, 0
  %i.i = shl i32 %i.f, 1
  %spec.select.i = select i1 %.not.i, i32 16, i32 %i.i ; 2 uses
  %i.j = zext i32 %spec.select.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = tail call ptr @realloc(ptr noundef %.pre30, i64 noundef %i.k) #18 ; 3 uses
  %.not18.i = icmp eq ptr %i.l, null
  br i1 %.not18.i, label %do_grow_slab_list.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %spec.select.i, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 32), align 16, !tbaa !21
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 24), align 8, !tbaa !22
  br label %do_grow_slab_list.exit

do_grow_slab_list.exit:                           ; preds = %bb.b, %bb.c, %bb.d
  %i.m = phi ptr [ %.pre30, %bb.b ], [ %.pre30, %bb.c ], [ %i.l, %bb.d ]
  %i.n = add i32 %i.f, 1
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4, !tbaa !20
  %i.o = zext i32 %i.f to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  store ptr %0, ptr %i.p, align 8, !tbaa !23
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.q = zext nneg i8 %i.c to i64
  %i.r = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.q ; 8 uses
  %i.s = icmp eq i32 %1, 0
  br i1 %i.s, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr @power_largest, align 4, !tbaa !24
  %i.u = icmp ult i32 %i.t, %i.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !20 ; 5 uses
  br i1 %i.u, label %do_grow_slab_list.exit29, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !21
  %i.x = icmp eq i32 %.pre, %i.w
  br i1 %i.x, label %bb.h, label %do_grow_slab_list.exit29

bb.h:                                             ; preds = %bb.g
  %.not.i26 = icmp eq i32 %.pre, 0
  %i.y = shl i32 %.pre, 1
  %spec.select.i27 = select i1 %.not.i26, i32 16, i32 %i.y ; 2 uses
  %i.z = zext i32 %spec.select.i27 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = shl nuw nsw i64 %i.z, 3
  %i.ad = tail call ptr @realloc(ptr noundef %i.ab, i64 noundef %i.ac) #18 ; 2 uses
  %.not18.i28 = icmp eq ptr %i.ad, null
  br i1 %.not18.i28, label %do_grow_slab_list.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %spec.select.i27, ptr %i.v, align 8, !tbaa !21
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !22
  br label %do_grow_slab_list.exit29

do_grow_slab_list.exit29:                         ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ah = add i32 %.pre, 1
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !20
  %i.ai = zext i32 %.pre to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ai
  store ptr %0, ptr %i.aj, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %do_grow_slab_list.exit29, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !26
  %i.am = icmp eq i16 %i.al, 4
  br i1 %i.am, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29 ; 3 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !28
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %0, ptr %i.aq, align 8, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %0, ptr %i.ao, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !30
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.au = load i32, ptr %i.r, align 8, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %do_grow_slab_list.exit
  %.0 = phi i32 [ -1, %do_grow_slab_list.exit ], [ %i.au, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @slabs_init(i64 noundef %0, double noundef %1, i1 noundef zeroext %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca [64 x i8], align 16               ; 7 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 80), align 8, !tbaa !46
  %i.f = add i32 %i.e, 48
  store i64 %0, ptr @mem_limit, align 8, !tbaa !37
  %i.g = icmp eq ptr %4, null
  %or.cond = and i1 %2, %i.g
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 0, ptr %i.b, align 8, !tbaa !37
  %i.h = tail call noalias ptr @fopen(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.i = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 64, ptr noundef nonnull %i.h)
  %.not1317.i = icmp eq ptr %i.i, null
  br i1 %.not1317.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %i.k = load i64, ptr %i.c, align 16
  %i.l = xor i64 %i.k, 7306916055797429576
  %i.m = getelementptr i8, ptr %i.c, i64 5
  %i.n = load i64, ptr %i.m, align 1
  %i.o = xor i64 %i.n, 4207904020173776737
  %i.p = or i64 %i.l, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %.not16.i = icmp eq i32 %i.r, 0
  br i1 %.not16.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.t = load i64, ptr %i.b, align 8, !tbaa !37
  %i.u = shl i64 %i.t, 10
  store i64 %i.u, ptr %i.b, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 64, ptr noundef nonnull %i.h)
  %.not13.i = icmp eq ptr %i.v, null
  br i1 %.not13.i, label %.loopexit.i, label %bb.d, !llvm.loop !43

.loopexit.i:                                      ; preds = %bb.f, %bb.c
  %i.w = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !37 ; 3 uses
  %.not14.i = icmp eq i64 %.pre.i, 0
  br i1 %.not14.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %.loopexit.i, %bb.b
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !48
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.10, i64 39, i64 1, ptr %i.x) #20 ; 0 uses
  br label %alloc_large_chunk.exit.thread

bb.g:                                             ; preds = %.loopexit.i
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !49
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.11, i64 noundef %.pre.i) #21 ; 0 uses
  %.pre18.i = load i64, ptr %i.b, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi i64 [ %.pre18.i, %bb.h ], [ %.pre.i, %bb.g ]
  %i.ad = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef %i.ac, i64 noundef %0) #19 ; 2 uses
  %.not15.i = icmp eq i32 %i.ad, 0
  br i1 %.not15.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.12, i32 noundef %i.ad) #21 ; 0 uses
  br label %alloc_large_chunk.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ah = call i32 @madvise(ptr noundef %i.ag, i64 noundef %0, i32 noundef 14) #19 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %alloc_large_chunk.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.ak = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.13, i32 noundef %i.ah) #21 ; 0 uses
  %6 = load ptr, ptr %i.a, align 8, !tbaa !23
  call void @free(ptr noundef %6) #19
  br label %alloc_large_chunk.exit.thread

alloc_large_chunk.exit.thread:                    ; preds = %bb.j, %.thread.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr null, ptr @mem_base, align 8, !tbaa !23
  br label %bb.n

alloc_large_chunk.exit:                           ; preds = %bb.k
  %.pre20.i = load ptr, ptr %i.a, align 8, !tbaa !23 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %.pre20.i, ptr @mem_base, align 8, !tbaa !23
  %.not49 = icmp eq ptr %.pre20.i, null
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %alloc_large_chunk.exit
  store ptr %.pre20.i, ptr @mem_current, align 8, !tbaa !23
  %i.al = load i64, ptr @mem_limit, align 8, !tbaa !37
  store i64 %i.al, ptr @mem_avail, align 8, !tbaa !37
  br label %bb.s

bb.n:                                             ; preds = %alloc_large_chunk.exit.thread, %alloc_large_chunk.exit
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !48
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 97, i64 1, ptr %i.am) #20 ; 0 uses
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  %i.an = icmp ne ptr %4, null
  %or.cond3 = and i1 %2, %i.an
  br i1 %or.cond3, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  store ptr %4, ptr @mem_base, align 8, !tbaa !23
  br i1 %5, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %0
  store ptr %i.ao, ptr @mem_current, align 8, !tbaa !23
  store i64 0, ptr @mem_avail, align 8, !tbaa !37
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store ptr %4, ptr @mem_current, align 8, !tbaa !23
  store i64 %0, ptr @mem_avail, align 8, !tbaa !37
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.q, %bb.m, %bb.n
  %.not = phi i1 [ %5, %bb.m ], [ true, %bb.n ], [ true, %bb.q ], [ false, %bb.r ], [ true, %bb.o ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2560) @slabclass, i8 0, i64 2560, i1 false)
  %.not50 = icmp eq ptr %3, null
  br i1 %.not50, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.s
  %.pre72 = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !50
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.v
  %i.ap = phi i32 [ %.pre72, %.split.us.preheader ], [ %i.bg, %bb.v ] ; 3 uses
  %indvars.iv67 = phi i64 [ 1, %.split.us.preheader ], [ %indvars.iv.next68, %bb.v ] ; 3 uses
  %.04057.us = phi i32 [ %i.f, %.split.us.preheader ], [ %i.bb, %bb.v ] ; 2 uses
  %i.aq = uitofp i32 %.04057.us to double
  %i.ar = sitofp i32 %i.ap to double
  %i.as = fdiv double %i.ar, %1
  %i.at = fcmp ugt double %i.as, %i.aq
  %i.au = trunc nuw nsw i64 %indvars.iv67 to i32  ; 2 uses
  br i1 %i.at, label %bb.t, label %.split59.us

bb.t:                                             ; preds = %.split.us
  %.1.biased.us = add i32 %.04057.us, 7
  %.2.us = and i32 %.1.biased.us, -8              ; 4 uses
  %i.av = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %indvars.iv67 ; 2 uses
  store i32 %.2.us, ptr %i.av, align 8, !tbaa !17
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !38
  %i.ax = udiv i32 %i.aw, %.2.us                  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !39
  %i.az = uitofp i32 %.2.us to double
  %i.ba = fmul double %1, %i.az
  %i.bb = fptoui double %i.ba to i32
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !49
  %i.bd = icmp sgt i32 %i.bc, 1
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.bf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.1, i32 noundef %i.au, i32 noundef %.2.us, i32 noundef %i.ax) #21 ; 0 uses
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !50
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bg = phi i32 [ %.pre, %bb.u ], [ %i.ap, %bb.t ] ; 2 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next68, 63
  br i1 %exitcond70.not, label %.split59.us, label %.split.us, !llvm.loop !44

.split:                                           ; preds = %bb.s, %bb.y
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %bb.y ], [ 0, %bb.s ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 1, %bb.s ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv62
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !24 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %i.bj, label %.split59.us.loopexit60, label %bb.w

bb.w:                                             ; preds = %.split
  %.1.biased = add i32 %i.bi, 7
  %.2 = and i32 %.1.biased, -8                    ; 3 uses
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %indvars.iv ; 2 uses
  store i32 %.2, ptr %i.bl, align 8, !tbaa !17
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !38
  %i.bn = udiv i32 %i.bm, %.2                     ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !39
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !49
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.1, i32 noundef %i.bk, i32 noundef %.2, i32 noundef %i.bn) #21 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next63, 62
  br i1 %exitcond.not, label %.split59.us.loopexit60, label %.split, !llvm.loop !44

.split59.us.loopexit60:                           ; preds = %.split, %bb.y
  %.us-phi.ph61 = phi i32 [ %i.bk, %.split ], [ 63, %bb.y ]
  %.pre73 = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !50
  br label %.split59.us

.split59.us:                                      ; preds = %.split.us, %bb.v, %.split59.us.loopexit60
  %i.bt = phi i32 [ %.pre73, %.split59.us.loopexit60 ], [ %i.bg, %bb.v ], [ %i.ap, %.split.us ] ; 3 uses
  %.us-phi = phi i32 [ %.us-phi.ph61, %.split59.us.loopexit60 ], [ 63, %bb.v ], [ %i.au, %.split.us ] ; 3 uses
  store i32 %.us-phi, ptr @power_largest, align 4, !tbaa !24
  %i.bu = zext nneg i32 %.us-phi to i64
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.bu ; 2 uses
  store i32 %i.bt, ptr %i.bv, align 8, !tbaa !17
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !38
  %i.bx = sdiv i32 %i.bw, %i.bt                   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !39
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !49
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.split59.us
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.cc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cb, ptr noundef nonnull @.str.1, i32 noundef %.us-phi, i32 noundef %i.bt, i32 noundef %i.bx) #21 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.split59.us
  %i.cd = call ptr @getenv(ptr noundef nonnull @.str.2) #19 ; 2 uses
  %.not52 = icmp eq ptr %i.cd, null
  br i1 %.not52, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.ce = call zeroext i1 @safe_strtoll(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.d) #19
  br i1 %i.ce, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !37
  store i64 %i.cf, ptr @mem_malloced, align 8, !tbaa !37
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  br i1 %.not, label %slabs_preallocate.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = load i32, ptr @power_largest, align 4, !tbaa !24
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ai
  %i.ch = add nuw nsw i32 %.057.i, 1
  %exitcond.not.i = icmp eq i32 %i.ci, 63
  br i1 %exitcond.not.i, label %slabs_preallocate.exit, label %bb.ah, !llvm.loop !45

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.08.i = phi i32 [ 0, %bb.af ], [ %i.ci, %bb.ag ] ; 2 uses
  %.057.i = phi i32 [ 1, %bb.af ], [ %i.ch, %bb.ag ] ; 2 uses
  %i.ci = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %exitcond71.not = icmp eq i32 %.08.i, %i.cg
  br i1 %exitcond71.not, label %slabs_preallocate.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cj = call fastcc i32 @do_slabs_newslab(i32 noundef %.057.i)
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.aj, label %bb.ag

bb.aj:                                            ; preds = %bb.ai
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.cm = load i32, ptr @power_largest, align 4, !tbaa !24
  %i.cn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cl, ptr noundef nonnull @.str.14, i32 noundef %i.cm) #21 ; 0 uses
  call void @exit(i32 noundef 1) #22
  unreachable

slabs_preallocate.exit:                           ; preds = %bb.ah, %bb.ag, %bb.ae
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #7

declare zeroext i1 @safe_strtoll(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @slabs_prefill_global() local_unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr @mem_limit, align 8, !tbaa !37 ; 3 uses
  %mem_malloced.promoted = load i64, ptr @mem_malloced, align 8, !tbaa !37 ; 3 uses
  %i.b = icmp ult i64 %mem_malloced.promoted, %i.a
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.promoted9 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 24), align 8 ; 2 uses
  %.promoted6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 32), align 16 ; 2 uses
  %.promoted = load i32, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4 ; 2 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !38
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = load ptr, ptr @mem_base, align 8, !tbaa !23
  %i.f = icmp eq ptr %i.e, null
  %.biased.i = add nsw i64 %i.d, 7
  %.010.i = and i64 %.biased.i, -8                ; 3 uses
  br i1 %i.f, label %memory_allocate.exit.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %mem_current.promoted = load ptr, ptr @mem_current, align 8
  %mem_avail.promoted = load i64, ptr @mem_avail, align 8
  br label %.lr.ph.split

memory_allocate.exit.us:                          ; preds = %.lr.ph, %do_grow_slab_list.exit.us
  %i.g = phi i64 [ %i.k, %do_grow_slab_list.exit.us ], [ %mem_malloced.promoted, %.lr.ph ]
  %i.h = phi i32 [ %i.r, %do_grow_slab_list.exit.us ], [ %.promoted, %.lr.ph ] ; 6 uses
  %spec.select.i810.us = phi i32 [ %spec.select.i7.us, %do_grow_slab_list.exit.us ], [ %.promoted6, %.lr.ph ] ; 2 uses
  %i.i = phi ptr [ %i.q, %do_grow_slab_list.exit.us ], [ %.promoted9, %.lr.ph ] ; 3 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.d) #23 ; 3 uses
  %i.k = add i64 %i.g, %i.d                       ; 3 uses
  %.not.us = icmp eq ptr %i.j, null
  br i1 %.not.us, label %.critedge.sink.split, label %bb.b

bb.b:                                             ; preds = %memory_allocate.exit.us
  %i.l = icmp eq i32 %i.h, %spec.select.i810.us
  br i1 %i.l, label %bb.c, label %do_grow_slab_list.exit.us

bb.c:                                             ; preds = %bb.b
  %.not.i.us = icmp eq i32 %i.h, 0
  %i.m = shl i32 %i.h, 1
  %spec.select.i.us = select i1 %.not.i.us, i32 16, i32 %i.m ; 3 uses
  %i.n = zext i32 %spec.select.i.us to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call ptr @realloc(ptr noundef %i.i, i64 noundef %i.o) #18 ; 3 uses
  %.not18.i.us = icmp eq ptr %i.p, null
  br i1 %.not18.i.us, label %do_grow_slab_list.exit.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %spec.select.i.us, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 32), align 16, !tbaa !21
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 24), align 8, !tbaa !22
  br label %do_grow_slab_list.exit.us

do_grow_slab_list.exit.us:                        ; preds = %bb.d, %bb.c, %bb.b
  %i.q = phi ptr [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %spec.select.i7.us = phi i32 [ %spec.select.i810.us, %bb.b ], [ %i.h, %bb.c ], [ %spec.select.i.us, %bb.d ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  %i.r = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4, !tbaa !20
  %i.s = zext i32 %i.h to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  store ptr %i.j, ptr %i.t, align 8, !tbaa !23
  %i.u = icmp ult i64 %i.k, %i.a
  br i1 %i.u, label %memory_allocate.exit.us, label %.critedge.sink.split, !llvm.loop !51

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %do_grow_slab_list.exit
  %i.v = phi i64 [ %i.ac, %do_grow_slab_list.exit ], [ %mem_malloced.promoted, %.lr.ph.split.preheader ]
  %i.w = phi ptr [ %i.ab, %do_grow_slab_list.exit ], [ %mem_current.promoted, %.lr.ph.split.preheader ] ; 4 uses
  %i.x = phi i64 [ %spec.select, %do_grow_slab_list.exit ], [ %mem_avail.promoted, %.lr.ph.split.preheader ] ; 2 uses
  %i.y = phi i32 [ %i.aj, %do_grow_slab_list.exit ], [ %.promoted, %.lr.ph.split.preheader ] ; 6 uses
  %spec.select.i810 = phi i32 [ %spec.select.i7, %do_grow_slab_list.exit ], [ %.promoted6, %.lr.ph.split.preheader ] ; 2 uses
  %i.z = phi ptr [ %i.ai, %do_grow_slab_list.exit ], [ %.promoted9, %.lr.ph.split.preheader ] ; 3 uses
  %i.aa = icmp ult i64 %i.x, %i.d
  br i1 %i.aa, label %.critedge, label %memory_allocate.exit

memory_allocate.exit:                             ; preds = %.lr.ph.split
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %.010.i ; 2 uses
  store ptr %i.ab, ptr @mem_current, align 8, !tbaa !23
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 %.010.i) ; 2 uses
  store i64 %spec.select, ptr @mem_avail, align 8, !tbaa !37
  %i.ac = add i64 %.010.i, %i.v                   ; 3 uses
  store i64 %i.ac, ptr @mem_malloced, align 8, !tbaa !37
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %memory_allocate.exit
  %i.ad = icmp eq i32 %i.y, %spec.select.i810
  br i1 %i.ad, label %bb.f, label %do_grow_slab_list.exit

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i32 %i.y, 0
  %i.ae = shl i32 %i.y, 1
  %spec.select.i = select i1 %.not.i, i32 16, i32 %i.ae ; 3 uses
  %i.af = zext i32 %spec.select.i to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = tail call ptr @realloc(ptr noundef %i.z, i64 noundef %i.ag) #18 ; 3 uses
  %.not18.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i, label %do_grow_slab_list.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %spec.select.i, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 32), align 16, !tbaa !21
  store ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 24), align 8, !tbaa !22
  br label %do_grow_slab_list.exit

do_grow_slab_list.exit:                           ; preds = %bb.e, %bb.f, %bb.g
  %i.ai = phi ptr [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %i.ah, %bb.g ] ; 2 uses
  %spec.select.i7 = phi i32 [ %spec.select.i810, %bb.e ], [ %i.y, %bb.f ], [ %spec.select.i, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  %i.aj = add i32 %i.y, 1                         ; 2 uses
  store i32 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4, !tbaa !20
  %i.ak = zext i32 %i.y to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  store ptr %i.w, ptr %i.al, align 8, !tbaa !23
  %i.am = icmp ult i64 %i.ac, %i.a
  br i1 %i.am, label %.lr.ph.split, label %.critedge, !llvm.loop !51

.critedge.sink.split:                             ; preds = %do_grow_slab_list.exit.us, %memory_allocate.exit.us
  store i64 %i.k, ptr @mem_malloced, align 8, !tbaa !37
  br label %.critedge

.critedge:                                        ; preds = %memory_allocate.exit, %do_grow_slab_list.exit, %.lr.ph.split, %.critedge.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @slabs_grow_slab_list(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  %i.b = load i32, ptr @power_largest, align 4, !tbaa !24
  %i.c = icmp ugt i32 %0, %i.b
  br i1 %i.c, label %do_grow_slab_list.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %0 to i64
  %i.e = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !20   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %do_grow_slab_list.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.g, 0
  %i.k = shl i32 %i.g, 1
  %spec.select.i = select i1 %.not.i, i32 16, i32 %i.k ; 2 uses
  %i.l = zext i32 %spec.select.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %i.o) #18 ; 2 uses
  %.not18.i = icmp eq ptr %i.p, null
  br i1 %.not18.i, label %do_grow_slab_list.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %spec.select.i, ptr %i.h, align 8, !tbaa !21
  store ptr %i.p, ptr %i.m, align 8, !tbaa !22
  br label %do_grow_slab_list.exit

do_grow_slab_list.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.b ]
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret i32 %.2.i
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @fill_slab_stats_automove(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %indvars.iv ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load <2 x i32>, ptr %i.d, align 16, !tbaa !24
  %i.g = zext <2 x i32> %i.f to <2 x i64>
  store <2 x i64> %i.g, ptr %i.e, align 8, !tbaa !37
  %i.h = load <2 x i32>, ptr %i.b, align 16, !tbaa !24
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.i, ptr %i.c, align 8, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %indvars.iv.next ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load <2 x i32>, ptr %i.l, align 8, !tbaa !24
  %i.o = zext <2 x i32> %i.n to <2 x i64>
  store <2 x i64> %i.o, ptr %i.m, align 8, !tbaa !37
  %i.p = load <2 x i32>, ptr %i.j, align 8, !tbaa !24
  %i.q = shufflevector <2 x i32> %i.p, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.q, ptr %i.k, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %bb.c, label %bb.b, !llvm.loop !52

bb.c:                                             ; preds = %bb.b
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @global_page_pool_size(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @mem_malloced, align 8, !tbaa !37
  %i.c = load i64, ptr @mem_limit, align 8, !tbaa !37
  %i.d = icmp uge i64 %i.b, %i.c
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %0, align 1, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4, !tbaa !20
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @slabs_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  %i.b = load i32, ptr @power_largest, align 4
  %i.c = freeze i32 %i.b
  %i.d = add i32 %0, -1
  %or.cond26.not.i = icmp ult i32 %i.d, %i.c
  br i1 %or.cond26.not.i, label %bb.b, label %do_slabs_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %0 to i64
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 38
  %i.m = load i16, ptr %i.l, align 2, !tbaa !26
  %i.n = and i16 %i.m, 4
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %bb.d, label %.thread.thread.i

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, i32 noundef 422, ptr noundef nonnull @__PRETTY_FUNCTION__.do_slabs_alloc) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  %.not30.i = icmp eq i32 %1, 1
  br i1 %.not30.i, label %do_slabs_alloc.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.o = tail call fastcc i32 @do_slabs_newslab(i32 noundef %0) ; 0 uses
  %.pr.pre.i = load i32, ptr %i.g, align 8, !tbaa !30 ; 2 uses
  %.not23.i = icmp eq i32 %.pr.pre.i, 0
  br i1 %.not23.i, label %do_slabs_alloc.exit, label %.thread.i..thread.thread.i_crit_edge

.thread.i..thread.thread.i_crit_edge:             ; preds = %.thread.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.i..thread.thread.i_crit_edge, %bb.c
  %i.p = phi ptr [ %.pre, %.thread.i..thread.thread.i_crit_edge ], [ %i.k, %bb.c ] ; 4 uses
  %.pr35.i = phi i32 [ %.pr.pre.i, %.thread.i..thread.thread.i_crit_edge ], [ %i.h, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !28   ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !29
  %.not24.i = icmp eq ptr %i.r, null
  br i1 %.not24.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.thread.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 38 ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !26
  %i.v = and i16 %i.u, -5
  store i16 %i.v, ptr %i.t, align 2, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i16 1, ptr %i.w, align 4, !tbaa !26
  %i.x = add i32 %.pr35.i, -1
  store i32 %i.x, ptr %i.g, align 8, !tbaa !30
  br label %do_slabs_alloc.exit

do_slabs_alloc.exit:                              ; preds = %bb.a, %bb.e, %.thread.i, %bb.g
  %.020.i = phi ptr [ null, %bb.a ], [ %i.p, %bb.g ], [ null, %.thread.i ], [ null, %bb.e ]
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret ptr %.020.i
}

; Function Attrs: nounwind uwtable
define dso_local void @slabs_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  tail call fastcc void @do_slabs_free(ptr noundef %0, i32 noundef %1)
  %i.b = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_slabs_free(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @power_largest, align 4
  %i.b = freeze i32 %i.a
  %i.c = add i32 %1, -1
  %or.cond.not = icmp ult i32 %i.c, %i.b
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.4, i32 noundef 505, ptr noundef nonnull @__PRETTY_FUNCTION__.do_slabs_free) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !26   ; 2 uses
  %i.h = and i16 %i.g, 32
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i16 4, ptr %i.f, align 2, !tbaa !26
  %i.j = trunc i32 %1 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !28
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %0, ptr %i.o, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %0, ptr %i.m, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !30
  br label %do_slabs_free_chunked.exit

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 49
  %i.x = zext i16 %i.g to i32                     ; 2 uses
  %i.y = lshr i32 %i.x, 6
  %i.z = and i32 %i.y, 4
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %i.ac = shl nuw nsw i32 %i.x, 2
  %i.ad = and i32 %i.ac, 8
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae ; 2 uses
  store i16 4, ptr %i.f, align 2, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 41
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !19  ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.ai, ptr %i.al, align 8, !tbaa !19
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !55 ; 3 uses
  %.not.i = icmp eq ptr %i.am, null               ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %i.ag, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29 ; 3 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !28
  %.not39.i = icmp eq ptr %i.ap, null
  br i1 %.not39.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %0, ptr %i.aq, align 8, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %0, ptr %i.ao, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !30
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !30
  br i1 %.not.i, label %do_slabs_free_chunked.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.o
  %.143.i = phi ptr [ %i.bb, %bb.o ], [ %i.am, %bb.k ] ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.143.i, i64 38 ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !26
  %i.aw = icmp eq i16 %i.av, 64
  br i1 %i.aw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, i32 noundef 484, ptr noundef nonnull @__PRETTY_FUNCTION__.do_slabs_free_chunked) #24
  unreachable

bb.m:                                             ; preds = %.lr.ph.i
  store i16 4, ptr %i.au, align 2, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %.143.i, i64 40
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !19
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.az ; 2 uses
  %i.bb = load ptr, ptr %.143.i, align 8, !tbaa !55 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.143.i, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !29 ; 3 uses
  store ptr %i.be, ptr %.143.i, align 8, !tbaa !55
  %.not41.i = icmp eq ptr %i.be, null
  br i1 %.not41.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.143.i, ptr %i.bf, align 8, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %.143.i, ptr %i.bd, align 8, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !30
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !30
  %.not40.i = icmp eq ptr %i.bb, null
  br i1 %.not40.i, label %do_slabs_free_chunked.exit, label %.lr.ph.i, !llvm.loop !53

do_slabs_free_chunked.exit:                       ; preds = %bb.o, %bb.k, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slabs_stats(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.thread_stats, align 8       ; 4 uses
  %i.a = alloca [128 x i8], align 16              ; 32 uses
  %i.b = alloca [128 x i8], align 16              ; 32 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @threadlocal_stats_aggregate(ptr noundef nonnull %2) #19
  %i.d = load i32, ptr @power_largest, align 4, !tbaa !24 ; 2 uses
  %.not108.i = icmp slt i32 %i.d, 1
  br i1 %.not108.i, label %do_slabs_stats.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 280
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.f = phi i32 [ %i.d, %.lr.ph.i ], [ %i.cc, %bb.d ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 5 uses
  %.0105109.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %indvars.iv.i ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20   ; 3 uses
  %.not107.i = icmp eq i32 %i.i, 0
  br i1 %.not107.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.l = trunc nuw nsw i64 %indvars.iv.i to i32   ; 15 uses
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.19) #19
  %i.n = load i32, ptr %i.g, align 8, !tbaa !17
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.20, i32 noundef %i.n) #19
  %i.p = trunc i32 %i.m to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.p, ptr noundef nonnull %i.b, i32 noundef %i.o, ptr noundef %1) #19, !inline_history !56
  %i.q = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.21) #19
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.20, i32 noundef %i.k) #19
  %i.s = trunc i32 %i.q to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.s, ptr noundef nonnull %i.b, i32 noundef %i.r, ptr noundef %1) #19, !inline_history !56
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.22) #19
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.20, i32 noundef %i.i) #19
  %i.v = trunc i32 %i.t to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.v, ptr noundef nonnull %i.b, i32 noundef %i.u, ptr noundef %1) #19, !inline_history !56
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.23) #19
  %i.x = mul i32 %i.k, %i.i                       ; 2 uses
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.20, i32 noundef %i.x) #19
  %i.z = trunc i32 %i.w to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.z, ptr noundef nonnull %i.b, i32 noundef %i.y, ptr noundef %1) #19, !inline_history !56
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.24) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !30
  %i.ad = sub i32 %i.x, %i.ac
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.20, i32 noundef %i.ad) #19
  %i.af = trunc i32 %i.aa to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.af, ptr noundef nonnull %i.b, i32 noundef %i.ae, ptr noundef %1) #19, !inline_history !56
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.25) #19
  %i.ah = load i32, ptr %i.ab, align 8, !tbaa !30
  %i.ai = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.20, i32 noundef %i.ah) #19
  %i.aj = trunc i32 %i.ag to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.aj, ptr noundef nonnull %i.b, i32 noundef %i.ai, ptr noundef %1) #19, !inline_history !56
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.26) #19
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.20, i32 noundef 0) #19
  %i.am = trunc i32 %i.ak to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.am, ptr noundef nonnull %i.b, i32 noundef %i.al, ptr noundef %1) #19, !inline_history !56
  %i.an = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.27) #19
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %indvars.iv.i ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.28, i64 noundef %i.aq) #19
  %i.as = trunc i32 %i.an to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.as, ptr noundef nonnull %i.b, i32 noundef %i.ar, ptr noundef %1) #19, !inline_history !56
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.29) #19
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !60
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.28, i64 noundef %i.au) #19
  %i.aw = trunc i32 %i.at to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.aw, ptr noundef nonnull %i.b, i32 noundef %i.av, ptr noundef %1) #19, !inline_history !56
  %i.ax = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.30) #19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !61
  %i.ba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.28, i64 noundef %i.az) #19
  %i.bb = trunc i32 %i.ax to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.bb, ptr noundef nonnull %i.b, i32 noundef %i.ba, ptr noundef %1) #19, !inline_history !56
  %i.bc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.31) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !62
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.28, i64 noundef %i.be) #19
  %i.bg = trunc i32 %i.bc to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.bg, ptr noundef nonnull %i.b, i32 noundef %i.bf, ptr noundef %1) #19, !inline_history !56
  %i.bh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.32) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !63
  %i.bk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.28, i64 noundef %i.bj) #19
  %i.bl = trunc i32 %i.bh to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.bl, ptr noundef nonnull %i.b, i32 noundef %i.bk, ptr noundef %1) #19, !inline_history !56
  %i.bm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.33) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !64
  %i.bp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.28, i64 noundef %i.bo) #19
  %i.bq = trunc i32 %i.bm to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.bq, ptr noundef nonnull %i.b, i32 noundef %i.bp, ptr noundef %1) #19, !inline_history !56
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.34) #19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !65
  %i.bu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.28, i64 noundef %i.bt) #19
  %i.bv = trunc i32 %i.br to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.bv, ptr noundef nonnull %i.b, i32 noundef %i.bu, ptr noundef %1) #19, !inline_history !56
  %i.bw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %i.l, ptr noundef nonnull @.str.35) #19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !66
  %i.bz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.28, i64 noundef %i.by) #19
  %i.ca = trunc i32 %i.bw to i16
  call void %0(ptr noundef nonnull %i.a, i16 noundef zeroext %i.ca, ptr noundef nonnull %i.b, i32 noundef %i.bz, ptr noundef %1) #19, !inline_history !56
  %i.cb = add nsw i32 %.0105109.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.pre.i = load i32, ptr @power_largest, align 4, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cc = phi i32 [ %.pre.i, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.1.i = phi i32 [ %i.cb, %bb.c ], [ %.0105109.i, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.cd = sext i32 %i.cc to i64
  %.not.not.i = icmp slt i64 %indvars.iv.i, %i.cd
  br i1 %.not.not.i, label %bb.b, label %do_slabs_stats.exit, !llvm.loop !57

do_slabs_stats.exit:                              ; preds = %bb.d, %bb.a
  %.0105.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1.i, %bb.d ]
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.36, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %.0105.lcssa.i) #19
  %i.ce = load i64, ptr @mem_malloced, align 8, !tbaa !37
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.38, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.28, i64 noundef %i.ce) #19
  call void %0(ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef %1) #19, !inline_history !56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.cf = call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @slabs_adjust_mem_limit(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  %i.b = load ptr, ptr @mem_base, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %do_slabs_adjust_mem_limit.exit

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr @settings, align 8, !tbaa !67
  store i64 %0, ptr @mem_limit, align 8, !tbaa !37
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 137), align 1, !range !41
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.preheader.i.i, label %do_slabs_adjust_mem_limit.exit

.preheader.i.i:                                   ; preds = %bb.b
  %mem_malloced.promoted.i.i = load i64, ptr @mem_malloced, align 8, !tbaa !37 ; 2 uses
  %i.e = icmp ugt i64 %mem_malloced.promoted.i.i, %0
  br i1 %i.e, label %.lr.ph.i.i, label %do_slabs_adjust_mem_limit.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4 ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 24), align 8
  %i.g = icmp eq i32 %.promoted.i.i, 0
  br i1 %i.g, label %do_slabs_adjust_mem_limit.exit, label %get_page_from_global_pool.exit.i.i.lr.ph

get_page_from_global_pool.exit.i.i.lr.ph:         ; preds = %.lr.ph.i.i
  %i.h = zext i32 %.promoted.i.i to i64
  br label %get_page_from_global_pool.exit.i.i

bb.c:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %i.i, label %do_slabs_adjust_mem_limit.exit.loopexit, label %get_page_from_global_pool.exit.i.i, !llvm.loop !0

get_page_from_global_pool.exit.i.i:               ; preds = %get_page_from_global_pool.exit.i.i.lr.ph, %bb.c
  %i.j = phi i64 [ %mem_malloced.promoted.i.i, %get_page_from_global_pool.exit.i.i.lr.ph ], [ %i.o, %bb.c ]
  %indvars.iv.i.i4 = phi i64 [ %i.h, %get_page_from_global_pool.exit.i.i.lr.ph ], [ %indvars.iv.next.i.i, %bb.c ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i4, -1 ; 4 uses
  %indvars.i.i = trunc nuw i64 %indvars.iv.next.i.i to i32 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.l, null
  br i1 %.not1.i.i, label %do_slabs_adjust_mem_limit.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %get_page_from_global_pool.exit.i.i
  tail call void @free(ptr noundef nonnull %i.l) #19
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !38
  %i.n = sext i32 %i.m to i64
  %i.o = sub i64 %i.j, %i.n                       ; 3 uses
  store i64 %i.o, ptr @mem_malloced, align 8, !tbaa !37
  %i.p = icmp ugt i64 %i.o, %0
  br i1 %i.p, label %bb.c, label %.do_slabs_adjust_mem_limit.exit.loopexit_crit_edge, !llvm.loop !0

.do_slabs_adjust_mem_limit.exit.loopexit_crit_edge: ; preds = %bb.d
  store i32 %indvars.i.i, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4, !tbaa !20
  br label %do_slabs_adjust_mem_limit.exit, !llvm.loop !0

do_slabs_adjust_mem_limit.exit.loopexit:          ; preds = %bb.c, %get_page_from_global_pool.exit.i.i
  store i32 %indvars.i.i, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4, !tbaa !20
  br label %do_slabs_adjust_mem_limit.exit

do_slabs_adjust_mem_limit.exit:                   ; preds = %do_slabs_adjust_mem_limit.exit.loopexit, %.lr.ph.i.i, %.do_slabs_adjust_mem_limit.exit.loopexit_crit_edge, %bb.a, %bb.b, %.preheader.i.i
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret i1 %.not.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slabs_available_chunks(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @mem_malloced, align 8, !tbaa !37
  %i.g = load i64, ptr @mem_limit, align 8, !tbaa !37
  %i.h = icmp uge i64 %i.f, %i.g
  %i.i = zext i1 %i.h to i8
  store i8 %i.i, ptr %1, align 1, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39
  store i32 %i.k, ptr %2, align 4, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local ptr @slabs_peek_page(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @power_largest, align 4, !tbaa !24
  %i.b = icmp ugt i32 %0, %i.a
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  %i.d = zext i32 %0 to i64
  %i.e = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !20
  %i.h = icmp ult i32 %i.g, 2
  br i1 %i.h, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 8, !tbaa !17
  store i32 %i.i, ptr %1, align 4, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39
  store i32 %i.k, ptr %2, align 4, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.0.ph = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @do_slabs_unlink_free_chunk(i32 noundef %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.d = load i16, ptr %i.c, align 2, !tbaa !26
  %i.e = icmp eq i16 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 744, ptr noundef nonnull @__PRETTY_FUNCTION__.do_slabs_unlink_free_chunk) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = icmp eq ptr %i.g, %1
  %i.i = load ptr, ptr %1, align 8, !tbaa !28     ; 3 uses
  br i1 %i.h, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.f, align 8, !tbaa !29
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %i.i, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28 ; 3 uses
  br i1 %.not, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %thread-pre-split
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.pre, ptr %i.j, align 8, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %thread-pre-split, %bb.e
  %.not14 = icmp eq ptr %.pre, null
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.k = load ptr, ptr %1, align 8, !tbaa !28
  store ptr %i.k, ptr %.pre, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !30
  %i.n = add i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !30
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @slabs_finalize_page_move(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.b ; 2 uses
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.d ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !20
  %i.h = add i32 %i.g, -1                         ; 3 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !20
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.j, i64 8
  %i.k = zext i32 %i.h to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.j, ptr nonnull align 8 %scevgep, i64 %i.l, i1 false), !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.m = load i32, ptr @power_largest, align 4, !tbaa !24
  %i.n = icmp ugt i32 %1, %i.m
  br i1 %i.n, label %do_grow_slab_list.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !20   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !21
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %do_grow_slab_list.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.p, 0
  %i.t = shl i32 %i.p, 1
  %spec.select.i = select i1 %.not.i, i32 16, i32 %i.t ; 2 uses
  %i.u = zext i32 %spec.select.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = shl nuw nsw i64 %i.u, 3
  %i.y = tail call ptr @realloc(ptr noundef %i.w, i64 noundef %i.x) #18 ; 2 uses
  %.not18.i = icmp eq ptr %i.y, null
  br i1 %.not18.i, label %do_grow_slab_list.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %spec.select.i, ptr %i.q, align 8, !tbaa !21
  store ptr %i.y, ptr %i.v, align 8, !tbaa !22
  br label %do_grow_slab_list.exit

do_grow_slab_list.exit:                           ; preds = %._crit_edge, %bb.b, %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %do_grow_slab_list.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 768, ptr noundef nonnull @__PRETTY_FUNCTION__.slabs_finalize_page_move) #24
  unreachable

bb.f:                                             ; preds = %do_grow_slab_list.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !20 ; 2 uses
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !20
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ae
  store ptr %2, ptr %i.af, align 8, !tbaa !23
  %.not22 = icmp eq i32 %1, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !38
  %i.ah = sext i32 %i.ag to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !39
  %.not.i23 = icmp eq i32 %i.aj, 0
  br i1 %.not.i23, label %split_slab_page_into_freelist.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.09.i = phi i32 [ %i.an, %.lr.ph.i ], [ 0, %bb.g ]
  %.078.i = phi ptr [ %i.am, %.lr.ph.i ], [ %2, %bb.g ] ; 2 uses
  tail call fastcc void @do_slabs_free(ptr noundef %.078.i, i32 noundef %1)
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !17
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.078.i, i64 %i.al
  %i.an = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %i.ao = load i32, ptr %i.ai, align 4, !tbaa !39
  %i.ap = icmp ult i32 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %split_slab_page_into_freelist.exit, !llvm.loop !1

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  %i.aq = load ptr, ptr @mem_base, align 8, !tbaa !23
  %.not.i24 = icmp eq ptr %i.aq, null
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 137), align 1, !range !41
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond.i = select i1 %.not.i24, i1 %i.as, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %split_slab_page_into_freelist.exit

.preheader.i:                                     ; preds = %bb.h
  %i.at = load i64, ptr @mem_limit, align 8, !tbaa !37 ; 2 uses
  %mem_malloced.promoted.i = load i64, ptr @mem_malloced, align 8, !tbaa !37 ; 2 uses
  %i.au = icmp ugt i64 %mem_malloced.promoted.i, %i.at
  br i1 %i.au, label %.lr.ph.i25, label %split_slab_page_into_freelist.exit

.lr.ph.i25:                                       ; preds = %.preheader.i
  %.promoted.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4 ; 2 uses
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 24), align 8
  %i.aw = icmp eq i32 %.promoted.i, 0
  br i1 %i.aw, label %split_slab_page_into_freelist.exit, label %get_page_from_global_pool.exit.i.lr.ph

get_page_from_global_pool.exit.i.lr.ph:           ; preds = %.lr.ph.i25
  %i.ax = zext i32 %.promoted.i to i64
  br label %get_page_from_global_pool.exit.i

bb.i:                                             ; preds = %bb.j
  %i.ay = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %i.ay, label %split_slab_page_into_freelist.exit.loopexit, label %get_page_from_global_pool.exit.i, !llvm.loop !0

get_page_from_global_pool.exit.i:                 ; preds = %get_page_from_global_pool.exit.i.lr.ph, %bb.i
  %i.az = phi i64 [ %mem_malloced.promoted.i, %get_page_from_global_pool.exit.i.lr.ph ], [ %i.be, %bb.i ]
  %indvars.iv.i40 = phi i64 [ %i.ax, %get_page_from_global_pool.exit.i.lr.ph ], [ %indvars.iv.next.i, %bb.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i40, -1 ; 4 uses
  %indvars.i = trunc nuw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %.not1.i = icmp eq ptr %i.bb, null
  br i1 %.not1.i, label %split_slab_page_into_freelist.exit.loopexit, label %bb.j

bb.j:                                             ; preds = %get_page_from_global_pool.exit.i
  tail call void @free(ptr noundef nonnull %i.bb) #19
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !38
  %i.bd = sext i32 %i.bc to i64
  %i.be = sub i64 %i.az, %i.bd                    ; 3 uses
  store i64 %i.be, ptr @mem_malloced, align 8, !tbaa !37
  %i.bf = icmp ugt i64 %i.be, %i.at
  br i1 %i.bf, label %bb.i, label %.split_slab_page_into_freelist.exit.loopexit_crit_edge41, !llvm.loop !0

.split_slab_page_into_freelist.exit.loopexit_crit_edge41: ; preds = %bb.j
  store i32 %indvars.i, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4, !tbaa !20
  br label %split_slab_page_into_freelist.exit, !llvm.loop !0

split_slab_page_into_freelist.exit.loopexit:      ; preds = %get_page_from_global_pool.exit.i, %bb.i
  store i32 %indvars.i, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4, !tbaa !20
  br label %split_slab_page_into_freelist.exit

split_slab_page_into_freelist.exit:               ; preds = %.lr.ph.i, %split_slab_page_into_freelist.exit.loopexit, %.lr.ph.i25, %.split_slab_page_into_freelist.exit.loopexit_crit_edge41, %.preheader.i, %bb.h, %bb.g
  %i.bg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @slabs_pick_any_for_reassign(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  %slabs_pick_any_for_reassign.cur.promoted = load i32, ptr @slabs_pick_any_for_reassign.cur, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.07 = phi i32 [ 64, %bb.a ], [ %i.t, %bb.g ]   ; 2 uses
  %spec.store.select56 = phi i32 [ %slabs_pick_any_for_reassign.cur.promoted, %bb.a ], [ %spec.store.select.1, %bb.g ] ; 2 uses
  %i.b = add nsw i32 %spec.store.select56, 1
  %i.c = icmp sgt i32 %spec.store.select56, 62
  %spec.store.select = select i1 %i.c, i32 1, i32 %i.b ; 5 uses
  %i.d = icmp eq i32 %spec.store.select, %0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %spec.store.select to i64
  %i.f = getelementptr inbounds [40 x i8], ptr @slabclass, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.c
  %spec.store.select.lcssa = phi i32 [ %spec.store.select, %bb.c ], [ %spec.store.select.1, %bb.f ]
  store i32 %spec.store.select.lcssa, ptr @slabs_pick_any_for_reassign.cur, align 4
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  %i.k = load i32, ptr @slabs_pick_any_for_reassign.cur, align 4, !tbaa !24
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.l = add nsw i32 %spec.store.select, 1
  %i.m = icmp sgt i32 %spec.store.select, 62
  %spec.store.select.1 = select i1 %i.m, i32 1, i32 %i.l ; 5 uses
  %i.n = icmp eq i32 %spec.store.select.1, %0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = sext i32 %spec.store.select.1 to i64
  %i.p = getelementptr inbounds [40 x i8], ptr @slabclass, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !20
  %i.s = icmp ugt i32 %i.r, 1
  br i1 %i.s, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = add nsw i32 %.07, -2
  %.not = icmp eq i32 %.07, 2
  br i1 %.not, label %bb.h, label %bb.b, !llvm.loop !68

bb.h:                                             ; preds = %bb.g
  store i32 %spec.store.select.1, ptr @slabs_pick_any_for_reassign.cur, align 4
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.04 = phi i32 [ %i.k, %bb.d ], [ -1, %bb.h ]
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slabs_page_count(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slabs_locked_callback(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  %i.b = tail call i32 %0(ptr noundef %1) #19
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @slabs_mlock() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slabs_munlock() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #19 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @do_slabs_newslab(i32 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.a ; 10 uses
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 137), align 1, !tbaa !69, !range !41, !noundef !70
  %i.d = trunc nuw i8 %i.c to i1
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !38 ; 2 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8
  %.not = icmp ne i32 %i.e, %.pre
  %or.cond40.not = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond40.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39
  %i.i = mul i32 %i.h, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.i, %bb.b ], [ %.pre, %bb.a ] ; 3 uses
  %i.k = load i64, ptr @mem_limit, align 8, !tbaa !37 ; 2 uses
  %.not19 = icmp eq i64 %i.k, 0
  br i1 %.not19, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr @mem_malloced, align 8, !tbaa !37
  %i.m = sext i32 %i.j to i64
  %i.n = add i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.n, %i.k
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !20   ; 2 uses
  %.not20 = icmp ne i32 %i.q, 0
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4
  %i.s = icmp eq i32 %i.r, 0
  %or.cond = select i1 %.not20, i1 %i.s, i1 false
  %i.t = load i32, ptr @power_largest, align 4
  %i.u = icmp ugt i32 %0, %i.t
  %or.cond28 = select i1 %or.cond, i1 true, i1 %i.u
  br i1 %or.cond28, label %do_grow_slab_list.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.old = load i32, ptr @power_largest, align 4, !tbaa !24
  %.old27 = icmp ugt i32 %0, %.old
  br i1 %.old27, label %do_grow_slab_list.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.pre29 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e
  %i.v = phi i32 [ %.pre29, %._crit_edge ], [ %i.q, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !21
  %i.z = icmp eq i32 %i.v, %i.y
  br i1 %i.z, label %bb.h, label %do_grow_slab_list.exit

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i32 %i.v, 0
  %i.aa = shl i32 %i.v, 1
  %spec.select.i = select i1 %.not.i, i32 16, i32 %i.aa ; 2 uses
  %i.ab = zext i32 %spec.select.i to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = shl nuw nsw i64 %i.ab, 3
  %i.af = tail call ptr @realloc(ptr noundef %i.ad, i64 noundef %i.ae) #18 ; 2 uses
  %.not18.i = icmp eq ptr %i.af, null
  br i1 %.not18.i, label %do_grow_slab_list.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %spec.select.i, ptr %i.x, align 8, !tbaa !21
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !22
  br label %do_grow_slab_list.exit

do_grow_slab_list.exit:                           ; preds = %bb.i, %bb.g
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4, !tbaa !20 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %get_page_from_global_pool.exit.thread, label %get_page_from_global_pool.exit

get_page_from_global_pool.exit:                   ; preds = %do_grow_slab_list.exit
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 24), align 8, !tbaa !22
  %i.aj = add i32 %i.ag, -1                       ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  store i32 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @slabclass, i64 20), align 4, !tbaa !20
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %get_page_from_global_pool.exit.thread, label %get_page_from_global_pool.exit._crit_edge

get_page_from_global_pool.exit._crit_edge:        ; preds = %get_page_from_global_pool.exit
  %.pre30 = sext i32 %i.j to i64
  br label %bb.o

get_page_from_global_pool.exit.thread:            ; preds = %do_grow_slab_list.exit, %get_page_from_global_pool.exit
  %i.ao = sext i32 %i.j to i64                    ; 5 uses
  %i.ap = load ptr, ptr @mem_base, align 8, !tbaa !23
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %get_page_from_global_pool.exit.thread
  %i.ar = tail call noalias ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ao) #23
  br label %memory_allocate.exit

bb.k:                                             ; preds = %get_page_from_global_pool.exit.thread
  %i.as = load ptr, ptr @mem_current, align 8, !tbaa !23 ; 3 uses
  %i.at = load i64, ptr @mem_avail, align 8, !tbaa !37 ; 3 uses
  %i.au = icmp ult i64 %i.at, %i.ao
  br i1 %i.au, label %do_grow_slab_list.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.biased.i = add nsw i64 %i.ao, 7
  %.010.i = and i64 %.biased.i, -8                ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.010.i
  store ptr %i.av, ptr @mem_current, align 8, !tbaa !23
  %i.aw = icmp ult i64 %.010.i, %i.at
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = sub nuw i64 %i.at, %.010.i
  store i64 %i.ax, ptr @mem_avail, align 8, !tbaa !37
  br label %memory_allocate.exit

bb.n:                                             ; preds = %bb.l
  store i64 0, ptr @mem_avail, align 8, !tbaa !37
  br label %memory_allocate.exit

memory_allocate.exit:                             ; preds = %bb.j, %bb.m, %bb.n
  %.1.i = phi i64 [ %i.ao, %bb.j ], [ %.010.i, %bb.m ], [ %.010.i, %bb.n ]
  %.0.i22 = phi ptr [ %i.ar, %bb.j ], [ %i.as, %bb.m ], [ %i.as, %bb.n ] ; 2 uses
  %i.ay = load i64, ptr @mem_malloced, align 8, !tbaa !37
  %i.az = add i64 %i.ay, %.1.i
  store i64 %i.az, ptr @mem_malloced, align 8, !tbaa !37
  %i.ba = icmp eq ptr %.0.i22, null
  br i1 %i.ba, label %do_grow_slab_list.exit.thread, label %bb.o

bb.o:                                             ; preds = %get_page_from_global_pool.exit._crit_edge, %memory_allocate.exit
  %.pre-phi = phi i64 [ %.pre30, %get_page_from_global_pool.exit._crit_edge ], [ %i.ao, %memory_allocate.exit ]
  %.0 = phi ptr [ %i.am, %get_page_from_global_pool.exit._crit_edge ], [ %.0.i22, %memory_allocate.exit ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0, i8 0, i64 %.pre-phi, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !39
  %.not.i23 = icmp eq i32 %i.bc, 0
  br i1 %.not.i23, label %split_slab_page_into_freelist.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %.09.i = phi i32 [ %i.bg, %.lr.ph.i ], [ 0, %bb.o ]
  %.078.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.0, %bb.o ] ; 2 uses
  tail call fastcc void @do_slabs_free(ptr noundef %.078.i, i32 noundef %0)
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !17
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %.078.i, i64 %i.be
  %i.bg = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %i.bh = load i32, ptr %i.bb, align 4, !tbaa !39
  %i.bi = icmp ult i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph.i, label %split_slab_page_into_freelist.exit, !llvm.loop !1

split_slab_page_into_freelist.exit:               ; preds = %.lr.ph.i, %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bl = load i32, ptr %i.w, align 4, !tbaa !20  ; 2 uses
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.w, align 4, !tbaa !20
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bn
  store ptr %.0, ptr %i.bo, align 8, !tbaa !23
  br label %do_grow_slab_list.exit.thread

do_grow_slab_list.exit.thread:                    ; preds = %bb.k, %bb.h, %bb.f, %memory_allocate.exit, %bb.e, %split_slab_page_into_freelist.exit
  %.015 = phi i32 [ 1, %split_slab_page_into_freelist.exit ], [ 0, %bb.e ], [ 0, %memory_allocate.exit ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.k ]
  ret i32 %.015
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

declare void @threadlocal_stats_aggregate(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @append_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind allocsize(1) }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { cold nounwind }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"any p2 pointer", !14, i64 0}
!16 = !{!"", !11, i64 0, !11, i64 4, !14, i64 8, !11, i64 16, !11, i64 20, !15, i64 24, !11, i64 32}
!17 = !{!16, !11, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!10, !10, i64 0}
!20 = !{!16, !11, i64 20}
!21 = !{!16, !11, i64 32}
!22 = !{!16, !15, i64 24}
!23 = !{!14, !14, i64 0}
!24 = !{!11, !11, i64 0}
!25 = !{!"short", !10, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTS8_stritem", !14, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!16, !14, i64 8}
!30 = !{!16, !11, i64 16}
!31 = !{!"long", !10, i64 0}
!32 = !{!"p1 omnipotent char", !14, i64 0}
!33 = !{!"double", !10, i64 0}
!34 = !{!"_Bool", !10, i64 0}
!35 = !{!"p1 _ZTS17slab_rebal_thread", !14, i64 0}
!36 = !{!"settings", !31, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !32, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !32, i64 48, !32, i64 56, !11, i64 64, !33, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !10, i64 92, !11, i64 96, !11, i64 100, !34, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !34, i64 132, !34, i64 133, !34, i64 134, !34, i64 135, !34, i64 136, !34, i64 137, !34, i64 138, !11, i64 140, !11, i64 144, !33, i64 152, !33, i64 160, !11, i64 168, !11, i64 172, !34, i64 176, !11, i64 180, !34, i64 184, !34, i64 185, !32, i64 192, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !33, i64 216, !33, i64 224, !11, i64 232, !34, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !11, i64 256, !34, i64 260, !34, i64 261, !34, i64 262, !35, i64 264, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !33, i64 312, !34, i64 320, !11, i64 324, !11, i64 328, !32, i64 336, !11, i64 344}
!37 = !{!31, !31, i64 0}
!38 = !{!36, !11, i64 124}
!39 = !{!16, !11, i64 4}
!40 = !{!34, !34, i64 0}
!41 = !{i8 0, i8 2}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = !{!36, !11, i64 80}
!47 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!36, !11, i64 32}
!50 = !{!36, !11, i64 120}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = !{!"p1 _ZTS9_strchunk", !14, i64 0}
!55 = !{!54, !54, i64 0}
!56 = distinct !{null}
!57 = distinct !{!57, !18}
!58 = !{!"slab_stats", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56}
!59 = !{!58, !31, i64 8}
!60 = !{!58, !31, i64 0}
!61 = !{!58, !31, i64 24}
!62 = !{!58, !31, i64 48}
!63 = !{!58, !31, i64 56}
!64 = !{!58, !31, i64 32}
!65 = !{!58, !31, i64 40}
!66 = !{!58, !31, i64 16}
!67 = !{!36, !31, i64 0}
!68 = distinct !{!68, !18}
!69 = !{!36, !34, i64 137}
!70 = !{}
end_hunk_0
