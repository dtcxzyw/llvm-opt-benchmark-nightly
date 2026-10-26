Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/items?download=true
inline.NumInlined: 30
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.22 = private unnamed_addr constant [14 x i8] c"moves_to_warm\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"moves_within_lru\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"direct_reclaims\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"lru_bumps_dropped\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"items:%d:%s\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"number_hot\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"number_warm\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"number_cold\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"number_temp\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"age_hot\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"age_warm\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"mem_requested\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"evicted\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"evicted_nonzero\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"evicted_time\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"outofmemory\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"tailrepairs\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"hits_to_hot\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"hits_to_warm\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"hits_to_cold\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"hits_to_temp\00", align 1
@stats_sizes_hist = internal unnamed_addr global ptr null, align 8
@stats_sizes_buckets = internal unnamed_addr global i32 0, align 4
@.str.46 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"sizes_status\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.49 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [6 x i8] c"> %s \00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"FOUND KEY\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"NOT FOUND\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c" -removed by flush\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c" -removed by expire\00", align 1
@logger_key = external local_unnamed_addr global i32, align 4
@lru_maintainer_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@do_run_lru_maintainer_thread = internal global i32 0, align 4
@lru_maintainer_tid = internal global i64 0, align 8
@.str.57 = private unnamed_addr constant [42 x i8] c"Failed to stop LRU maintainer thread: %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"Can't create LRU maintainer thread: %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"mc-lrumaint\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"it->it_flags == 1\00", align 1
@__PRETTY_FUNCTION__.do_item_linktail_q = private unnamed_addr constant [32 x i8] c"void do_item_linktail_q(item *)\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"it->nbytes == 0\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"it != *tail\00", align 1
@.str.63 = private unnamed_addr constant [47 x i8] c"(*head && *tail) || (*head == 0 && *tail == 0)\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"it->prev->next == 0\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"it->prev == 0\00", align 1
@__PRETTY_FUNCTION__.do_item_unlinktail_q = private unnamed_addr constant [34 x i8] c"void do_item_unlinktail_q(item *)\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"it->next == 0\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"it->next != it\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"it->prev != it\00", align 1
@__PRETTY_FUNCTION__.do_item_crawl_q = private unnamed_addr constant [30 x i8] c"item *do_item_crawl_q(item *)\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"*head == it\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"it->next->prev == it\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"it->prev->next == it\00", align 1
@__PRETTY_FUNCTION__.do_item_unlink_q = private unnamed_addr constant [30 x i8] c"void do_item_unlink_q(item *)\00", align 1
@__PRETTY_FUNCTION__.do_item_link_q = private unnamed_addr constant [28 x i8] c"void do_item_link_q(item *)\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"it != *head\00", align 1
@bump_buf_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@bump_buf_head = internal unnamed_addr global ptr null, align 8
@.str.73 = private unnamed_addr constant [19 x i8] c"b != bump_buf_head\00", align 1
@__PRETTY_FUNCTION__.lru_bump_buf_link_q = private unnamed_addr constant [41 x i8] c"void lru_bump_buf_link_q(lru_bump_buf *)\00", align 1
@bump_buf_tail = internal unnamed_addr global ptr null, align 8
@.str.74 = private unnamed_addr constant [59 x i8] c"Failed to allocate crawler data for LRU maintainer thread\0A\00", align 1
@.str.75 = private unnamed_addr constant [53 x i8] c"Failed to allocate logger for LRU maintainer thread\0A\00", align 1
@.str.76 = private unnamed_addr constant [43 x i8] c"Starting LRU maintainer background thread\0A\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"LRU maintainer thread stopping\0A\00", align 1
@lru_maintainer_crawler_check.next_crawls = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@lru_maintainer_crawler_check.next_crawl_wait = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@.str.79 = private unnamed_addr constant [4 x i8] c"hot\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"warm\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@switch.table.lru_maintainer_thread = private unnamed_addr constant [4 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], align 8

; Function Attrs: nounwind uwtable
define dso_local void @item_stats_reset() local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %indvars.iv ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #19 ; 0 uses
  %i.c = getelementptr inbounds nuw [168 x i8], ptr @itemstats, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.c, i8 0, i64 168, i1 false)
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #19 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !88

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @do_item_stats_add_crawl(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [168 x i8], ptr @itemstats, i64 %i.a ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = add i64 %i.d, %1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.f, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %i.k = add i64 %i.j, %3
  store i64 %i.k, ptr %i.i, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_cas_id() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @cas_id_lock) #19 ; 0 uses
  %i.b = load i64, ptr @cas_id, align 8, !tbaa !18
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr @cas_id, align 8, !tbaa !18
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @cas_id_lock) #19 ; 0 uses
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @set_cas_id(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @cas_id_lock) #19 ; 0 uses
  store i64 %0, ptr @cas_id, align 8, !tbaa !18
  %i.b = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @cas_id_lock) #19 ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @item_is_flushed(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 36), align 4, !tbaa !25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26
  %.not = icmp ugt i32 %i.c, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %.not4 = icmp ugt i32 %i.a, %i.d
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @do_get_lru_size(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @sizes, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @do_item_alloc_pull(i64 %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.h
  %.021 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.h ]   ; 3 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 136), align 8, !tbaa !27, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @lru_pull_tail(i32 noundef %1, i32 noundef 128, i64 noundef 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = tail call ptr @slabs_alloc(i32 noundef %1, i32 noundef 0) #19 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @lru_pull_tail(i32 noundef %1, i32 noundef 128, i64 noundef 0, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null)
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 136), align 8, !tbaa !27, !range !28, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i32 @lru_pull_tail(i32 noundef %1, i32 noundef 0, i64 noundef 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.k = add nuw nsw i32 %.021, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, 10
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !89

bb.i:                                             ; preds = %bb.d, %bb.f
  %.lcssa = phi ptr [ %i.d, %bb.d ], [ null, %bb.f ] ; 2 uses
  %.not = icmp eq i32 %.021, 0
  br i1 %.not, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %.020 = phi i32 [ %.021, %bb.i ], [ 10, %bb.h ]
  %.117 = phi ptr [ %.lcssa, %bb.i ], [ null, %bb.h ]
  %i.l = zext i32 %1 to i64                       ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %i.l ; 2 uses
  %i.n = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.m) #19 ; 0 uses
  %i.o = zext nneg i32 %.020 to i64
  %i.p = getelementptr inbounds nuw [168 x i8], ptr @itemstats, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30
  %i.s = add i64 %i.r, %i.o
  store i64 %i.s, ptr %i.q, align 8, !tbaa !30
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #19 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.118 = phi ptr [ %.117, %.thread ], [ %.lcssa, %bb.i ]
  ret ptr %.118
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lru_pull_tail(i32 noundef %0, i32 noundef %1, i64 noundef %2, i8 noundef zeroext %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.bk, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %1, %0
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds [40 x i8], ptr @lru_locks, i64 %i.c ; 10 uses
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #19 ; 0 uses
  %i.f = getelementptr inbounds [8 x i8], ptr @tails, i64 %i.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %.not264 = icmp eq ptr %i.g, null
  br i1 %.not264, label %.thread336, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds [168 x i8], ptr @itemstats, i64 %i.c ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.m = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 26)
  %i.n = icmp eq i32 %1, 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.p = and i8 %3, 2
  %.not158 = icmp eq i8 %i.p, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread
  %.0113263 = phi i64 [ 0, %.lr.ph ], [ %.5, %.thread ] ; 6 uses
  %.0126262 = phi ptr [ %i.g, %.lr.ph ], [ %i.r, %.thread ] ; 29 uses
  %.0127261 = phi i32 [ 5, %.lr.ph ], [ %i.fd, %.thread ] ; 6 uses
  %.0130260 = phi i32 [ 0, %.lr.ph ], [ %.3133, %.thread ] ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0126262, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0126262, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !26
  %i.u = icmp eq i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.0126262, i64 41
  %i.w = load i8, ptr %i.v, align 1, !tbaa !33    ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  %or.cond412 = select i1 %i.u, i1 %i.x, i1 false
  br i1 %or.cond412, label %bb.d, label %._crit_edge319

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.0126262, i64 38
  %i.z = load i16, ptr %i.y, align 2, !tbaa !35
  %i.aa = icmp eq i16 %i.z, 1
  br i1 %i.aa, label %bb.e, label %._crit_edge319

bb.e:                                             ; preds = %bb.d
  br i1 %.not158, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #19 ; 0 uses
  br label %bb.bk

bb.g:                                             ; preds = %bb.e
  %i.ac = add nuw nsw i32 %.0127261, 1
  br label %.thread

._crit_edge319:                                   ; preds = %bb.c, %bb.d
  %i.ad = phi i8 [ %i.w, %bb.c ], [ 0, %bb.d ]
  %i.ae = load ptr, ptr @hash, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %.0126262, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.0126262, i64 38 ; 10 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !35
  %i.ai = shl i16 %i.ah, 2
  %i.aj = and i16 %i.ai, 8
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %i.am = zext i8 %i.ad to i64
  %i.an = tail call i32 %i.ae(ptr noundef nonnull %i.al, i64 noundef %i.am) #19 ; 5 uses
  %i.ao = tail call ptr @item_trylock(i32 noundef %i.an) #19 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge319
  %i.aq = getelementptr inbounds nuw i8, ptr %.0126262, i64 36 ; 9 uses
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !35
  %i.as = add i16 %i.ar, 1                        ; 2 uses
  store i16 %i.as, ptr %i.aq, align 4, !tbaa !35
  %.not = icmp eq i16 %i.as, 2
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load i64, ptr %i.i, align 8, !tbaa !37
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.i, align 8, !tbaa !37
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 180), align 4, !tbaa !91 ; 2 uses
  %.not146 = icmp eq i32 %i.av, 0
  br i1 %.not146, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0126262, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !26
  %i.ay = add i32 %i.ax, %i.av
  %i.az = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.ba = icmp ult i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = load i64, ptr %i.j, align 8, !tbaa !38
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.j, align 8, !tbaa !38
  store i16 1, ptr %i.aq, align 4, !tbaa !35
  %i.bd = load ptr, ptr @ext_storage, align 8, !tbaa !36
  tail call void @storage_delete(ptr noundef %i.bd, ptr noundef nonnull %.0126262) #19
  tail call void @do_item_unlink_nolock(ptr noundef nonnull %.0126262, i32 noundef %i.an)
  tail call void @item_trylock_unlock(ptr noundef nonnull %i.ao) #19
  br label %.thread

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.0126262, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !26 ; 2 uses
  %.not147 = icmp eq i32 %i.bf, 0
  br i1 %.not147, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.bh = icmp ult i32 %i.bf, %i.bg
  br i1 %i.bh, label %item_is_flushed.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 36), align 4, !tbaa !25 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0126262, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !26 ; 3 uses
  %.not.i = icmp ugt i32 %i.bk, %i.bi
  br i1 %.not.i, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %.not4.i = icmp ugt i32 %i.bi, %i.bl
  br i1 %.not4.i, label %bb.w, label %item_is_flushed.exit

item_is_flushed.exit:                             ; preds = %bb.o, %bb.m
  %i.bm = load i64, ptr %i.k, align 8, !tbaa !39
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.k, align 8, !tbaa !39
  %i.bo = load i16, ptr %i.ag, align 2, !tbaa !35
  %i.bp = and i16 %i.bo, 8
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %item_is_flushed.exit
  %i.br = load i64, ptr %i.l, align 8, !tbaa !16
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %i.l, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %item_is_flushed.exit
  tail call void @do_item_unlink_nolock(ptr noundef nonnull %.0126262, i32 noundef %i.an)
  %i.bt = load ptr, ptr @ext_storage, align 8, !tbaa !36
  tail call void @storage_delete(ptr noundef %i.bt, ptr noundef nonnull %.0126262) #19
  %i.bu = load i16, ptr %i.ag, align 2, !tbaa !35
  %i.bv = and i16 %i.bu, 4
  %i.bw = icmp eq i16 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_remove) #20
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bx = load i16, ptr %i.aq, align 4, !tbaa !35 ; 2 uses
  %.not.i159 = icmp eq i16 %i.bx, 0
  br i1 %.not.i159, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 541, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_remove) #20
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.by = add i16 %i.bx, -1                       ; 2 uses
  store i16 %i.by, ptr %i.aq, align 4, !tbaa !35
  %i.bz = icmp eq i16 %i.by, 0
  br i1 %i.bz, label %bb.v, label %do_item_remove.exit

bb.v:                                             ; preds = %bb.u
  tail call void @item_free(ptr noundef nonnull %.0126262)
  br label %do_item_remove.exit

do_item_remove.exit:                              ; preds = %bb.u, %bb.v
  tail call void @item_trylock_unlock(ptr noundef nonnull %i.ao) #19
  %i.ca = add nsw i32 %.0130260, 1
  br label %.thread

bb.w:                                             ; preds = %bb.n, %bb.o
  switch i32 %i.m, label %.thread [
    i32 0, label %bb.x
    i32 1, label %bb.y
    i32 2, label %bb.am
    i32 3, label %.thread172.thread
  ]

bb.x:                                             ; preds = %bb.w
end_hunk_0
begin_hunk_1_@lru_pull_tail:bb.a
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 212), align 4, !tbaa !93
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %2, %i.ch
  %i.cj = udiv i64 %i.ci, 100
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2115 = phi i64 [ %i.cj, %bb.z ], [ %.1114, %bb.y ] ; 2 uses
  %i.ck = load i16, ptr %i.ag, align 2, !tbaa !35 ; 2 uses
  %i.cl = and i16 %i.ck, 16
  %.not154 = icmp eq i16 %i.cl, 0
  br i1 %.not154, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = and i16 %i.ck, -17
  store i16 %i.cm, ptr %i.ag, align 2, !tbaa !35
  %i.cn = add nsw i32 %.0130260, 1                ; 2 uses
  br i1 %i.n, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.co = load i64, ptr %i.o, align 8, !tbaa !40
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.o, align 8, !tbaa !40
  tail call fastcc void @do_item_unlink_q(ptr noundef nonnull %.0126262)
  tail call fastcc void @do_item_link_q(ptr noundef nonnull %.0126262)
  %i.cq = load i16, ptr %i.ag, align 2, !tbaa !35
  %i.cr = and i16 %i.cq, 4
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_remove) #20
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ct = load i16, ptr %i.aq, align 4, !tbaa !35 ; 2 uses
  %.not.i160 = icmp eq i16 %i.ct, 0
  br i1 %.not.i160, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 541, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_remove) #20
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cu = add i16 %i.ct, -1                       ; 2 uses
  store i16 %i.cu, ptr %i.aq, align 4, !tbaa !35
  %i.cv = icmp eq i16 %i.cu, 0
  br i1 %i.cv, label %bb.ah, label %do_item_remove.exit161

bb.ah:                                            ; preds = %bb.ag
  tail call void @item_free(ptr noundef nonnull %.0126262)
  br label %do_item_remove.exit161

do_item_remove.exit161:                           ; preds = %bb.ag, %bb.ah
  tail call void @item_trylock_unlock(ptr noundef nonnull %i.ao) #19
  br label %.thread

bb.ai:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !41
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !41
  tail call fastcc void @do_item_unlink_q(ptr noundef nonnull %.0126262)
  br label %bb.bb

bb.aj:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds [8 x i8], ptr @sizes_bytes, i64 %i.c
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !18
  %i.db = icmp ugt i64 %i.da, %.2115
  br i1 %i.db, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dc = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.dd = sub i32 %i.dc, %i.bk
  %i.de = icmp ugt i32 %i.dd, %4
  br i1 %i.de, label %bb.al, label %.thread172.thread

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !42
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !42
  tail call fastcc void @do_item_unlink_q(ptr noundef nonnull %.0126262)
  %i.di = add nsw i32 %.0130260, 1
  br label %bb.bb

bb.am:                                            ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %.0126262, i64 28
  %i.dk = zext i8 %3 to i32                       ; 2 uses
  %i.dl = and i32 %i.dk, 1
  %.not149 = icmp eq i32 %i.dl, 0
  br i1 %.not149, label %bb.ax, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 40), align 8, !tbaa !94
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.thread172.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.do = load i64, ptr %i.h, align 8, !tbaa !43
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %i.h, align 8, !tbaa !43
  %i.dq = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.dr = sub i32 %i.dq, %i.bk
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store i32 %i.dr, ptr %i.ds, align 8, !tbaa !44
  %i.dt = load i32, ptr %i.dj, align 4, !tbaa !26
  %.not151 = icmp eq i32 %i.dt, 0
  br i1 %.not151, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !45
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !45
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dx = load i16, ptr %i.ag, align 2, !tbaa !35 ; 2 uses
  %i.dy = and i16 %i.dx, 8
  %i.dz = icmp eq i16 %i.dy, 0
  br i1 %i.dz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !46
  %i.ec = add i64 %i.eb, 1
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !46
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ed = and i16 %i.dx, 16
  %.not152 = icmp eq i16 %i.ed, 0
  br i1 %.not152, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !47
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !47
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.eh = load i32, ptr @logger_key, align 4, !tbaa !26
  %i.ei = tail call ptr @pthread_getspecific(i32 noundef %i.eh) #19 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 84
  %i.ek = load i16, ptr %i.ej, align 4, !tbaa !51
  %i.el = and i16 %i.ek, 64
  %.not153 = icmp eq i16 %i.el, 0
  br i1 %.not153, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.em = tail call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.ei, i32 noundef 1, ptr noundef nonnull %.0126262) #19 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.en = load ptr, ptr @ext_storage, align 8, !tbaa !36
  tail call void @storage_delete(ptr noundef %i.en, ptr noundef nonnull %.0126262) #19
  tail call void @do_item_unlink_nolock(ptr noundef nonnull %.0126262, i32 noundef %i.an)
  %i.eo = add nsw i32 %.0130260, 1
  %i.ep = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 140), align 4, !tbaa !95
  %i.eq = icmp eq i32 %i.ep, 2
  br label %.thread172.thread

bb.ax:                                            ; preds = %bb.am
  %i.er = and i32 %i.dk, 4
  %.not150 = icmp eq i32 %i.er, 0
  br i1 %.not150, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr %.0126262, ptr %5, align 8, !tbaa !97
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.an, ptr %i.es, align 8, !tbaa !98
  br label %.thread172.thread

bb.az:                                            ; preds = %bb.ax
  %i.et = load i16, ptr %i.ag, align 2, !tbaa !35 ; 2 uses
  %i.eu = and i16 %i.et, 16
  %i.ev = icmp ne i16 %i.eu, 0
  %i.ew = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 136), align 8, !range !28
  %i.ex = trunc nuw i8 %i.ew to i1
  %or.cond = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %or.cond, label %bb.ba, label %.thread172.thread

bb.ba:                                            ; preds = %bb.az
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !41
  %i.fa = add i64 %i.ez, 1
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !41
  %i.fb = and i16 %i.et, -17
  store i16 %i.fb, ptr %i.ag, align 2, !tbaa !35
  tail call fastcc void @do_item_unlink_q(ptr noundef nonnull %.0126262)
  %i.fc = add nsw i32 %.0130260, 1
  br label %bb.bb

.thread:                                          ; preds = %bb.w, %do_item_remove.exit161, %do_item_remove.exit, %bb.k, %._crit_edge319, %bb.g
  %.3133 = phi i32 [ %.0130260, %bb.g ], [ %.0130260, %._crit_edge319 ], [ %i.ca, %do_item_remove.exit ], [ %.0130260, %bb.k ], [ %.0130260, %bb.w ], [ %i.cn, %do_item_remove.exit161 ] ; 2 uses
  %.1128 = phi i32 [ %i.ac, %bb.g ], [ %.0127261, %._crit_edge319 ], [ %.0127261, %do_item_remove.exit ], [ %.0127261, %bb.k ], [ %.0127261, %bb.w ], [ %.0127261, %do_item_remove.exit161 ] ; 2 uses
  %.5 = phi i64 [ %.0113263, %bb.g ], [ %.0113263, %._crit_edge319 ], [ %.0113263, %do_item_remove.exit ], [ %.0113263, %bb.k ], [ %.0113263, %bb.w ], [ %.2115, %do_item_remove.exit161 ]
  %i.fd = add nsw i32 %.1128, -1
  %6 = icmp samesign ugt i32 %.1128, 1
  %i.fe = icmp ne ptr %i.r, null
  %i.ff = select i1 %6, i1 %i.fe, i1 false
  br i1 %i.ff, label %bb.c, label %.thread336, !llvm.loop !90

.thread336:                                       ; preds = %.thread, %bb.b
  %.0130.lcssa = phi i32 [ 0, %bb.b ], [ %.3133, %.thread ]
  %i.fg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #19 ; 0 uses
  br label %bb.bk

bb.bb:                                            ; preds = %bb.ai, %bb.al, %bb.ba
  %.1119196 = phi i8 [ -128, %bb.al ], [ 64, %bb.ai ], [ 64, %bb.ba ]
  %.1131195 = phi i32 [ %i.di, %bb.al ], [ %i.cn, %bb.ai ], [ %i.fc, %bb.ba ]
  %i.fh = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #19 ; 0 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0126262, i64 40 ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !33
  %i.fk = and i8 %i.fj, 63
  %i.fl = or disjoint i8 %i.fk, %.1119196         ; 2 uses
  store i8 %i.fl, ptr %i.fi, align 8, !tbaa !33
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %i.fm
  %i.fo = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.fn) #19 ; 0 uses
  tail call fastcc void @do_item_link_q(ptr noundef nonnull %.0126262)
  %i.fp = load i8, ptr %i.fi, align 8, !tbaa !33
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %i.fq
  br label %.thread172.thread

.thread172.thread:                                ; preds = %bb.w, %bb.an, %bb.ak, %bb.aw, %bb.ay, %bb.az, %bb.bb
  %.sink = phi ptr [ %i.fr, %bb.bb ], [ %i.d, %bb.an ], [ %i.d, %bb.az ], [ %i.d, %bb.ay ], [ %i.d, %bb.aw ], [ %i.d, %bb.ak ], [ %i.d, %bb.w ]
  %.1131195335 = phi i32 [ %.1131195, %bb.bb ], [ %.0130260, %bb.an ], [ %.0130260, %bb.az ], [ %.0130260, %bb.ay ], [ %i.eo, %bb.aw ], [ %.0130260, %bb.ak ], [ %.0130260, %bb.w ] ; 3 uses
  %.1197334 = phi i1 [ false, %bb.bb ], [ false, %bb.an ], [ false, %bb.az ], [ false, %bb.ay ], [ %i.eq, %bb.aw ], [ false, %bb.ak ], [ false, %bb.w ] ; 2 uses
  %i.fs = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.sink) #19 ; 0 uses
  %i.ft = and i8 %3, 4
  %i.fu = icmp eq i8 %i.ft, 0
  br i1 %i.fu, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %.thread172.thread
  %i.fv = load i16, ptr %i.ag, align 2, !tbaa !35
  %i.fw = and i16 %i.fv, 4
  %i.fx = icmp eq i16 %i.fw, 0
  br i1 %i.fx, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_remove) #20
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.fy = load i16, ptr %i.aq, align 4, !tbaa !35 ; 2 uses
  %.not.i162 = icmp eq i16 %i.fy, 0
  br i1 %.not.i162, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 541, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_remove) #20
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.fz = add i16 %i.fy, -1                       ; 2 uses
  store i16 %i.fz, ptr %i.aq, align 4, !tbaa !35
  %i.ga = icmp eq i16 %i.fz, 0
  br i1 %i.ga, label %bb.bh, label %do_item_remove.exit163

bb.bh:                                            ; preds = %bb.bg
  tail call void @item_free(ptr noundef nonnull %.0126262)
  br label %do_item_remove.exit163

do_item_remove.exit163:                           ; preds = %bb.bg, %bb.bh
  tail call void @item_trylock_unlock(ptr noundef nonnull %i.ao) #19
  br i1 %.1197334, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %.thread172.thread
  br i1 %.1197334, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %do_item_remove.exit163, %bb.bi
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 264), align 8, !tbaa !99
  %i.gc = tail call i32 @slabs_reassign(ptr noundef %i.gb, i32 noundef -1, i32 noundef %0, i32 noundef 1) #19 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %do_item_remove.exit163, %.thread336, %bb.f, %bb.bj, %bb.bi, %bb.a
  %.1141 = phi i32 [ 0, %bb.a ], [ 0, %bb.f ], [ %.1131195335, %bb.bj ], [ %.1131195335, %bb.bi ], [ %.0130.lcssa, %.thread336 ], [ %.1131195335, %do_item_remove.exit163 ]
  ret i32 %.1141
}

declare ptr @slabs_alloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @do_item_alloc_chunk(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 48
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !52
  %i.c = sext i32 %i.b to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.c) ; 3 uses
  %i.d = tail call i32 @slabs_clsid(i64 noundef %spec.select) #19 ; 2 uses
  %i.e = tail call ptr @do_item_alloc_pull(i64 poison, i32 noundef %i.d) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !52
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp eq i64 %spec.select, %i.h
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @slabs_clsid(i64 noundef %i.h) #19 ; 2 uses
  %i.k = tail call ptr @do_item_alloc_pull(i64 poison, i32 noundef %i.j) ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.1 = phi i64 [ %i.h, %bb.c ], [ %spec.select, %bb.a ]
  %.025 = phi i32 [ %i.j, %bb.c ], [ %i.d, %bb.a ]
  %.0 = phi ptr [ %i.k, %bb.c ], [ %i.e, %bb.a ]  ; 9 uses
  tail call void @slabs_mlock() #19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !32
  store ptr %.0, ptr %0, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store ptr %0, ptr %i.p, align 8, !tbaa !101
  store ptr null, ptr %.0, align 8, !tbaa !101
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 28
  store i32 0, ptr %i.q, align 4, !tbaa !26
  %i.r = trunc i32 %.025 to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 40
  store i8 %i.r, ptr %i.s, align 8, !tbaa !33
  %i.t = trunc i64 %.1 to i32
  %i.u = add i32 %i.t, -48
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i32 %i.u, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 38 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !35
  %i.y = or i16 %i.x, 64
  store i16 %i.y, ptr %i.w, align 2, !tbaa !35
  tail call void @slabs_munlock() #19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.027 = phi ptr [ %.0, %bb.d ], [ null, %bb.b ], [ null, %bb.c ]
  ret ptr %.027
}

declare i32 @slabs_clsid(i64 noundef) local_unnamed_addr #7

declare void @slabs_mlock() local_unnamed_addr #7

declare void @slabs_munlock() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @do_item_alloc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %4, 2
  br i1 %i.a, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, 1                            ; 2 uses
  %i.c = icmp eq i32 %2, 0                        ; 3 uses
  %i.d = and i64 %i.b, 255
  %i.e = add nuw nsw i64 %i.d, 48
  %i.f = select i1 %i.c, i64 0, i64 4             ; 2 uses
  %i.g = zext nneg i32 %4 to i64
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 104), align 8, !tbaa !53, !range !28, !noundef !29
  %i.i = shl nuw nsw i8 %i.h, 3
  %i.j = zext nneg i8 %i.i to i64
  %i.k = add nuw nsw i64 %i.e, %i.f
  %i.l = add nuw nsw i64 %i.k, %i.g
  %spec.select = add nuw nsw i64 %i.l, %i.j       ; 2 uses
  %i.m = tail call i32 @slabs_clsid(i64 noundef %spec.select) #19 ; 6 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !52
  %i.p = sext i32 %i.o to i64
  %i.q = icmp ugt i64 %spec.select, %i.p
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = add i64 %i.f, %i.b
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 104), align 8, !tbaa !53, !range !28, !noundef !29
  %i.t = trunc nuw i8 %i.s to i1
  %spec.select78.v = select i1 %i.t, i64 104, i64 96
  %spec.select78 = add i64 %i.r, %spec.select78.v
  %sext = shl i64 %spec.select78, 32
  %i.u = ashr exact i64 %sext, 32
  %i.v = tail call i32 @slabs_clsid(i64 noundef %i.u) #19 ; 2 uses
  %i.w = tail call ptr @do_item_alloc_pull(i64 poison, i32 noundef %i.v) ; 3 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 38 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !35
  %i.z = or i16 %i.y, 32
  store i16 %i.z, ptr %i.x, align 2, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = trunc i32 %i.v to i8
  br label %bb.h
end_hunk_1
begin_hunk_2_@do_item_get:bb.a

bb.p:                                             ; preds = %bb.o
  tail call void @item_free(ptr noundef nonnull %i.a)
  br label %do_item_remove.exit67

do_item_remove.exit67:                            ; preds = %bb.o, %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 2 uses
  %i.ak = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.aj) #19 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 416 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !124
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !124
  %i.ao = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.aj) #19 ; 0 uses
  br label %.critedge

bb.q:                                             ; preds = %bb.j, %bb.i
  br i1 %4, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  tail call void @do_item_bump(ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef %2)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %do_item_remove.exit, %bb.q, %bb.r, %do_item_remove.exit67
  %.051 = phi ptr [ null, %do_item_remove.exit ], [ null, %do_item_remove.exit67 ], [ %i.a, %bb.r ], [ %i.a, %bb.q ], [ null, %bb.a ] ; 4 uses
  %i.ap = phi i1 [ true, %do_item_remove.exit ], [ false, %do_item_remove.exit67 ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.a ]
  %i.aq = phi i1 [ false, %do_item_remove.exit ], [ true, %do_item_remove.exit67 ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.a ]
  %.050 = phi i32 [ 2, %do_item_remove.exit ], [ 3, %do_item_remove.exit67 ], [ 1, %bb.r ], [ 1, %bb.q ], [ 0, %bb.a ]
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !81
  %i.as = icmp sgt i32 %i.ar, 2
  br i1 %i.as, label %bb.s, label %bb.x

bb.s:                                             ; preds = %.critedge
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.au = select i1 %.not, ptr @.str.52, ptr @.str.51
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.au) #23 ; 0 uses
  %.not71 = icmp eq i64 %1, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.s
  br i1 %i.ap, label %bb.t, label %bb.u

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.s ] ; 2 uses
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !33
  %i.az = sext i8 %i.ay to i32
  %fputc64 = tail call i32 @fputc(i32 %i.az, ptr %i.aw) ; 0 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

bb.t:                                             ; preds = %._crit_edge
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !83
  %fwrite60 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 18, i64 1, ptr %i.ba) #24 ; 0 uses
  br label %bb.w

bb.u:                                             ; preds = %._crit_edge
  br i1 %i.aq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !83
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.55, i64 19, i64 1, ptr %i.bb) #24 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !83
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bc) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.critedge, %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 6968
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !125 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bg = load i32, ptr @logger_key, align 4, !tbaa !26
  %i.bh = tail call ptr @pthread_getspecific(i32 noundef %i.bg) #19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0 = phi ptr [ %i.bh, %bb.y ], [ %i.be, %bb.x ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0, i64 84
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !51
  %i.bk = and i16 %i.bj, 4
  %.not62 = icmp eq i16 %i.bk, 0
  br i1 %.not62, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not63 = icmp eq ptr %.051, null
  br i1 %.not63, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %.051, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %.051, i64 40
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !33
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i32
  br label %.thread

.thread:                                          ; preds = %bb.aa, %bb.ab
  %i.br = phi i32 [ %i.bm, %bb.ab ], [ 0, %bb.aa ]
  %i.bs = phi i32 [ %i.bq, %bb.ab ], [ 0, %bb.aa ]
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !126
  %i.bv = tail call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %.0, i32 noundef 2, ptr noundef null, i32 noundef %.050, ptr noundef %0, i64 noundef %1, i32 noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bu) #19 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.z
  ret ptr %.051
}

declare ptr @assoc_find(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @do_item_bump(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 136), align 8, !tbaa !27, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 38 ; 6 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !35   ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = and i32 %i.e, 16
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.e, 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = or i16 %i.d, 8
  store i16 %i.j, ptr %i.c, align 2, !tbaa !35
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.k = or i16 %i.d, 16
  store i16 %i.k, ptr %i.c, align 2, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i8, ptr %i.l, align 8, !tbaa !33
  %.not = icmp slt i8 %i.m, -64
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.n, ptr %i.o, align 8, !tbaa !26
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6976
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !127  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !35
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.v = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.u) #19 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !84
  %i.y = tail call ptr @bipbuf_request(ptr noundef %i.x, i32 noundef 16) #19 ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %1, ptr %i.y, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %2, ptr %i.z, align 8, !tbaa !87
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !84
  %i.ab = tail call i32 @bipbuf_push(ptr noundef %i.aa, i32 noundef 16) #19
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %lru_bump_async.exit.thread

lru_bump_async.exit.thread:                       ; preds = %bb.h
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #19 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !65
  %i.ah = load i16, ptr %i.r, align 4, !tbaa !35
  %i.ai = add i16 %i.ah, -1
  store i16 %i.ai, ptr %i.r, align 4, !tbaa !35
  %i.aj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #19 ; 0 uses
  %i.ak = load i16, ptr %i.c, align 2, !tbaa !35
  %i.al = and i16 %i.ak, -17
  store i16 %i.al, ptr %i.c, align 2, !tbaa !35
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.am = or i16 %i.d, 8
  store i16 %i.am, ptr %i.c, align 2, !tbaa !35
  tail call void @do_item_update(ptr noundef nonnull %1)
  br label %bb.k

bb.k:                                             ; preds = %lru_bump_async.exit.thread, %bb.b, %bb.f, %bb.i, %bb.d, %bb.j
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) local_unnamed_addr #2

declare i32 @logger_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @do_item_touch(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @do_item_get(ptr noundef %0, i64 noundef %1, i32 noundef %3, ptr noundef %4, i1 noundef zeroext true) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %2, ptr %i.b, align 4, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_item_link_q(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.b = load i16, ptr %i.a, align 2, !tbaa !35   ; 2 uses
  %i.c = and i16 %i.b, 4
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 409, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_link_q) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !33
  %i.g = zext i8 %i.f to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @heads, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @tails, i64 %i.g ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !32   ; 4 uses
  %.not = icmp eq ptr %0, %i.j
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 413, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_link_q) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not35 = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.l = icmp eq ptr %i.k, null                   ; 2 uses
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.l, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.1, i32 noundef 414, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_link_q) #20
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !32
  store ptr %i.j, ptr %0, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %0, ptr %i.n, align 8, !tbaa !32
  store ptr %0, ptr %i.h, align 8, !tbaa !32
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.h, align 8, !tbaa !32
  store ptr %0, ptr %i.i, align 8, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.o = load i8, ptr %i.e, align 8, !tbaa !33
  %i.p = zext i8 %i.o to i64                      ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @sizes, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !26
  %i.t = zext i16 %i.b to i32                     ; 5 uses
  %i.u = and i32 %i.t, 128
  %.not38 = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.w = load i8, ptr %i.v, align 1, !tbaa !33
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = lshr i32 %i.t, 6
  %i.z = and i32 %i.y, 4
  %i.aa = shl nuw nsw i32 %i.t, 2
  %i.ab = and i32 %i.aa, 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @sizes_bytes, i64 %i.p ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !18
  %narrow = add nuw nsw i32 %i.z, 61
  %narrow44 = add nuw nsw i32 %narrow, %i.ab
  %i.ae = zext nneg i32 %narrow44 to i64
  %i.af = add nuw nsw i64 %i.ae, %i.x
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ac, align 8, !tbaa !18
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26
  %i.aj = sext i32 %i.ai to i64
  %i.ak = lshr i32 %i.t, 6
  %i.al = and i32 %i.ak, 4
  %i.am = shl nuw nsw i32 %i.t, 2
  %i.an = and i32 %i.am, 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @sizes_bytes, i64 %i.p ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.aq = or disjoint i32 %i.al, %i.an
  %i.ar = or disjoint i32 %i.aq, 49
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, %i.x
  %i.au = add nsw i64 %i.at, %i.aj
  %i.av = add i64 %i.au, %i.ap
  store i64 %i.av, ptr %i.ao, align 8, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret void
}

declare i32 @slabs_reassign(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @item_lru_bump_buf_create() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #22 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @bipbuf_new(i32 noundef 131072) #19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %i.d, align 8, !tbaa !84
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #19
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.f, ptr noundef null) #19 ; 0 uses
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @bump_buf_lock) #19 ; 0 uses
  %i.i = load ptr, ptr @bump_buf_head, align 8, !tbaa !63 ; 4 uses
  %.not.i = icmp eq ptr %i.a, %i.i
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 1257, ptr noundef nonnull @__PRETTY_FUNCTION__.lru_bump_buf_link_q) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %i.a, align 8, !tbaa !128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !129
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.i, align 8, !tbaa !128
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.a, ptr @bump_buf_head, align 8, !tbaa !63
  %i.k = load ptr, ptr @bump_buf_tail, align 8, !tbaa !63
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %lru_bump_buf_link_q.exit

bb.i:                                             ; preds = %bb.h
  store ptr %i.a, ptr @bump_buf_tail, align 8, !tbaa !63
  br label %lru_bump_buf_link_q.exit

lru_bump_buf_link_q.exit:                         ; preds = %bb.h, %bb.i
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @bump_buf_lock) #19 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %lru_bump_buf_link_q.exit, %bb.c
  %.0 = phi ptr [ %i.a, %lru_bump_buf_link_q.exit ], [ null, %bb.c ], [ null, %bb.a ]
end_hunk_2
begin_hunk_3_@lru_maintainer_thread:bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 38
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !35 ; 2 uses
  %i.dd = and i16 %i.dc, 4
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_remove) #20
  unreachable

bb.ah:                                            ; preds = %.lr.ph.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 36 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 4, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 541, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_remove) #20
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dh = add i16 %i.dg, -1                       ; 2 uses
  store i16 %i.dh, ptr %i.df, align 4, !tbaa !35
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %bb.ak, label %do_item_remove.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.dj = and i16 %i.dc, 1
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__.item_free) #20
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !33  ; 2 uses
  %i.dn = zext i8 %i.dm to i64                    ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @heads, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !32
  %.not.i21.i = icmp eq ptr %i.da, %i.dp
  br i1 %.not.i21.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 353, ptr noundef nonnull @__PRETTY_FUNCTION__.item_free) #20
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @tails, i64 %i.dn
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !32
  %.not8.i.i = icmp eq ptr %i.da, %i.dr
  br i1 %.not8.i.i, label %bb.ap, label %item_free.exit.i

bb.ap:                                            ; preds = %bb.ao
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__.item_free) #20
  unreachable

item_free.exit.i:                                 ; preds = %bb.ao
  %i.ds = and i8 %i.dm, 63
  %i.dt = zext nneg i8 %i.ds to i32
  call void @slabs_free(ptr noundef nonnull %i.da, i32 noundef %i.dt) #19
  br label %do_item_remove.exit.i

do_item_remove.exit.i:                            ; preds = %item_free.exit.i, %bb.aj
  %i.du = load i32, ptr %i.cx, align 8, !tbaa !87
  call void @item_unlock(i32 noundef %i.du) #19
  %i.dv = getelementptr inbounds nuw i8, ptr %.01728.i, i64 16
  %i.dw = add i32 %.01629.i, -16                  ; 2 uses
  %.not20.i = icmp eq i32 %i.dw, 0
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !133

._crit_edge.i:                                    ; preds = %do_item_remove.exit.i, %bb.af
  %i.dx = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cp) #19 ; 0 uses
  %i.dy = load ptr, ptr %i.cr, align 8, !tbaa !84
  %i.dz = load i32, ptr %i.b, align 4, !tbaa !26
  %i.ea = call ptr @bipbuf_poll(ptr noundef %i.dy, i32 noundef %i.dz) #19 ; 0 uses
  %i.eb = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cp) #19 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i, %.lr.ph35.i
  %.1.i64 = phi i1 [ %.032.i, %.lr.ph35.i ], [ true, %._crit_edge.i ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.01833.i, i64 8
  %.018.i = load ptr, ptr %i.ec, align 8, !tbaa !63 ; 2 uses
  %.not.i65 = icmp eq ptr %.018.i, null
  br i1 %.not.i65, label %lru_maintainer_bumps.exit, label %.lr.ph35.i, !llvm.loop !134

lru_maintainer_bumps.exit:                        ; preds = %bb.aq
  %i.ed = call i32 @pthread_mutex_unlock(ptr noundef nonnull @bump_buf_lock) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ee = call i32 @llvm.umin.i32(i32 %spec.select60, i32 1000)
  %spec.select70 = select i1 %.1.i64, i32 %i.ee, i32 %spec.select60
  br label %bb.ar

bb.ar:                                            ; preds = %lru_maintainer_bumps.exit, %lru_maintainer_bumps.exit.thread, %bb.ad
  %.4 = phi i32 [ %spec.select60, %bb.ad ], [ %spec.select60, %lru_maintainer_bumps.exit.thread ], [ %spec.select70, %lru_maintainer_bumps.exit ]
  %i.ef = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 134), align 2, !tbaa !143, !range !28, !noundef !29
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.as, label %bb.bo

bb.as:                                            ; preds = %bb.ar
  %i.eh = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %.not54 = icmp eq i32 %.088, %i.eh
  br i1 %.not54, label %bb.bo, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  br label %.outer.i

.outer.i:                                         ; preds = %.thread95.i, %bb.at
  %indvars.iv87.ph.i = phi i64 [ %indvars.iv.next8898.i, %.thread95.i ], [ 1, %bb.at ]
  %.05983.ph.i = phi i32 [ %spec.select.i, %.thread95.i ], [ 0, %bb.at ] ; 2 uses
  %.06182.ph.i = phi i1 [ true, %.thread95.i ], [ false, %bb.at ]
  br label %bb.au

bb.au:                                            ; preds = %bb.bm, %.outer.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %bb.bm ], [ %indvars.iv87.ph.i, %.outer.i ] ; 14 uses
  %i.ei = getelementptr inbounds nuw [536 x i8], ptr %i.s, i64 %indvars.iv87.i ; 11 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 528 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !145, !range !28, !noundef !29
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.av, label %bb.bl

bb.av:                                            ; preds = %bb.au
  %i.em = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #19 ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 512
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !146 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 496
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !147
  %i.er = sub i64 %i.eo, %i.eq
  %i.es = udiv i64 %i.er, 100
  %i.et = add nuw nsw i64 %i.es, 1                ; 6 uses
  %i.eu = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 524
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !148 ; 2 uses
  %i.ex = sub i32 %i.eu, %i.ew
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bf, %bb.av
  %indvars.iv.i = phi i64 [ 0, %bb.av ], [ %indvars.iv.next.i.4, %bb.bf ] ; 7 uses
  %.05679.i = phi i64 [ 0, %bb.av ], [ %i.fy, %bb.bf ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.i
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !18
  %i.fa = add i64 %i.ez, %.05679.i                ; 3 uses
  %i.fb = icmp ugt i64 %i.fa, %i.et
  br i1 %i.fb, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.aw
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.aw ], [ %indvars.iv.next.i, %bb.bb ], [ %indvars.iv.next.i.1, %bb.bc ], [ %indvars.iv.next.i.2, %bb.bd ], [ %indvars.iv.next.i.3, %bb.be ]
  %.lcssa = phi i64 [ %i.fa, %bb.aw ], [ %i.fm, %bb.bb ], [ %i.fq, %bb.bc ], [ %i.fu, %bb.bd ], [ %i.fy, %bb.be ] ; 3 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @lru_maintainer_crawler_check.next_crawl_wait, i64 %indvars.iv87.i ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !26 ; 5 uses
  %i.ff = mul nuw nsw i32 %i.fc, 60
  %i.fg = icmp ult i32 %i.fe, %i.ff
  br i1 %i.fg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fh = add nuw nsw i32 %i.fe, 60               ; 2 uses
  store i32 %i.fh, ptr %i.fd, align 4, !tbaa !26
  br label %.thread.i

bb.az:                                            ; preds = %bb.ax
  %i.fi = icmp ugt i32 %i.fe, 59
  br i1 %i.fi, label %bb.ba, label %.thread.thread.i

bb.ba:                                            ; preds = %bb.az
  %i.fj = add i32 %i.fe, -60                      ; 2 uses
  store i32 %i.fj, ptr %i.fd, align 4, !tbaa !26
  br label %.thread.i

bb.bb:                                            ; preds = %bb.aw
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !18
  %i.fm = add i64 %i.fl, %i.fa                    ; 3 uses
  %i.fn = icmp ugt i64 %i.fm, %i.et
  br i1 %i.fn, label %bb.ax, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i.1
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !18
  %i.fq = add i64 %i.fp, %i.fm                    ; 3 uses
  %i.fr = icmp ugt i64 %i.fq, %i.et
  br i1 %i.fr, label %bb.ax, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i.2
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !18
  %i.fu = add i64 %i.ft, %i.fq                    ; 3 uses
  %i.fv = icmp ugt i64 %i.fu, %i.et
  br i1 %i.fv, label %bb.ax, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i.3
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !18
  %i.fy = add i64 %i.fx, %i.fu                    ; 5 uses
  %i.fz = icmp ugt i64 %i.fy, %i.et
  br i1 %i.fz, label %bb.ax, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %exitcond.not.i66.4 = icmp eq i64 %indvars.iv.next.i.4, 60
  br i1 %exitcond.not.i66.4, label %bb.bg, label %bb.aw, !llvm.loop !135

bb.bg:                                            ; preds = %bb.bf
  %i.ga = icmp eq i64 %i.fy, 0
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr @lru_maintainer_crawler_check.next_crawl_wait, i64 %indvars.iv87.i ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !26 ; 2 uses
  br i1 %i.ga, label %bb.bh, label %.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.gd = add i32 %i.gc, 60                       ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !26
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bh, %bb.bg, %bb.ba, %bb.ay
  %i.ge = phi i64 [ %.lcssa, %bb.ba ], [ 0, %bb.bh ], [ %.lcssa, %bb.ay ], [ %i.fy, %bb.bg ] ; 2 uses
  %i.gf = phi i32 [ %i.fj, %bb.ba ], [ %i.gd, %bb.bh ], [ %i.fh, %bb.ay ], [ %i.gc, %bb.bg ] ; 2 uses
  %i.gg = icmp ugt i32 %i.gf, 3600
  br i1 %i.gg, label %bb.bi, label %.thread.thread.i

bb.bi:                                            ; preds = %.thread.i
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr @lru_maintainer_crawler_check.next_crawl_wait, i64 %indvars.iv87.i
  store i32 3600, ptr %i.gh, align 4, !tbaa !26
  br label %.thread.thread.i

.thread.thread.i:                                 ; preds = %bb.bi, %.thread.i, %bb.az
  %i.gi = phi i64 [ %i.ge, %bb.bi ], [ %i.ge, %.thread.i ], [ %.lcssa, %bb.az ]
  %i.gj = phi i32 [ 3600, %bb.bi ], [ %i.gf, %.thread.i ], [ %i.fe, %bb.az ]
  %i.gk = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.gl = add nuw nsw i32 %i.gj, 5
  %i.gm = add i32 %i.gl, %i.gk                    ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr @lru_maintainer_crawler_check.next_crawls, i64 %indvars.iv87.i
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !26
  %i.go = load i16, ptr %i.t, align 4, !tbaa !51
  %i.gp = and i16 %i.go, 2
  %.not71.i = icmp eq i16 %i.gp, 0
  br i1 %.not71.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.thread.thread.i
  %i.gq = lshr i64 %indvars.iv87.i, 6
  %i.gr = and i64 %i.gq, 67108863
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.lru_maintainer_thread, i64 %i.gr
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.gs = trunc nuw nsw i64 %indvars.iv87.i to i32
  %i.gt = and i32 %i.gs, 63
  %i.gu = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.gv = sub i32 %i.gm, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ei, i64 520
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !149
  %i.gy = sub i32 %i.ew, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ei, i64 504
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !150
  %i.hb = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.k, i32 noundef 4, ptr noundef null, i32 noundef %i.gt, ptr noundef nonnull %switch.load, i64 noundef %i.et, i64 noundef %i.gi, i32 noundef %i.ex, i32 noundef %i.gv, i32 noundef %i.gy, i64 noundef %i.eo, i64 noundef %i.ha) #19 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.thread.thread.i
  store i8 0, ptr %i.ej, align 8, !tbaa !145
  %i.hc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #19 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.au
  %i.hd = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.he = getelementptr inbounds nuw [4 x i8], ptr @lru_maintainer_crawler_check.next_crawls, i64 %indvars.iv87.i
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !26
  %i.hg = icmp ugt i32 %i.hd, %i.hf
  br i1 %i.hg, label %.thread95.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next88.i, 256
  br i1 %exitcond89.not.i, label %bb.bn, label %bb.au, !llvm.loop !136

.thread95.i:                                      ; preds = %bb.bl
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr @lru_maintainer_crawler_check.next_crawls, i64 %indvars.iv87.i
  %i.hi = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %indvars.iv87.i ; 2 uses
  %i.hj = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.hi) #19 ; 0 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr @sizes, i64 %indvars.iv87.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !26
  %spec.select.i = call i32 @llvm.umax.i32(i32 %i.hl, i32 %.05983.ph.i) ; 2 uses
  %i.hm = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.hi) #19 ; 0 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv87.i
  store i8 1, ptr %i.hn, align 1, !tbaa !33
  %i.ho = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.hp = add i32 %i.ho, 5
  store i32 %i.hp, ptr %i.hh, align 4, !tbaa !26
  %indvars.iv.next8898.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond89.not99.i = icmp eq i64 %indvars.iv.next8898.i, 256
  br i1 %exitcond89.not99.i, label %.thread102.i, label %.outer.i, !llvm.loop !136

bb.bn:                                            ; preds = %bb.bm
  br i1 %.06182.ph.i, label %.thread102.i, label %lru_maintainer_crawler_check.exit

.thread102.i:                                     ; preds = %.thread95.i, %bb.bn
  %.2101105.i = phi i32 [ %.05983.ph.i, %bb.bn ], [ %spec.select.i, %.thread95.i ] ; 2 uses
  %i.hq = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 204), align 4, !tbaa !151 ; 2 uses
  %.not.not.i = icmp eq i32 %i.hq, 0
  %i.hr = call i32 @llvm.umin.i32(i32 %i.hq, i32 %.2101105.i)
  %.3.i = select i1 %.not.not.i, i32 %.2101105.i, i32 %i.hr
  %i.hs = call i32 @lru_crawler_start(ptr noundef nonnull %i.a, i32 noundef %.3.i, i32 noundef 0, ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 0) #19 ; 0 uses
  br label %lru_maintainer_crawler_check.exit

lru_maintainer_crawler_check.exit:                ; preds = %bb.bn, %.thread102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ht = load volatile i32, ptr @current_time, align 4, !tbaa !26
  br label %bb.bo

bb.bo:                                            ; preds = %lru_maintainer_crawler_check.exit, %bb.as, %bb.ar
  %.1 = phi i32 [ %i.ht, %lru_maintainer_crawler_check.exit ], [ %.088, %bb.as ], [ %.088, %bb.ar ]
  %i.hu = load volatile i32, ptr @do_run_lru_maintainer_thread, align 4, !tbaa !26
  %.not = icmp eq i32 %i.hu, 0
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !137

._crit_edge:                                      ; preds = %bb.bo, %bb.g
  %i.hv = call i32 @pthread_mutex_unlock(ptr noundef nonnull @lru_maintainer_lock) #19 ; 0 uses
  call void @free(ptr noundef %i.f) #19
  %i.hw = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !81
  %i.hx = icmp sgt i32 %i.hw, 2
  br i1 %i.hx, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %._crit_edge
  %i.hy = load ptr, ptr @stderr, align 8, !tbaa !83
  %fwrite52 = call i64 @fwrite(ptr nonnull @.str.77, i64 31, i64 1, ptr %i.hy) #24 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  ret ptr null
}

declare void @thread_setname(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @lru_maintainer_pause() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @lru_maintainer_lock) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lru_maintainer_resume() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @lru_maintainer_lock) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @do_item_linktail_q(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.b = load i16, ptr %i.a, align 2, !tbaa !35
  %i.c = icmp eq i16 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 1680, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_linktail_q) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.1, i32 noundef 1681, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_linktail_q) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i8, ptr %i.g, align 8, !tbaa !33
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @heads, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @tails, i64 %i.i ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 5 uses
  %.not = icmp eq ptr %0, %i.l
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 1686, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_linktail_q) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !32
  %.not24 = icmp eq ptr %i.m, null                ; 2 uses
  %.not25 = icmp eq ptr %i.l, null                ; 2 uses
  %or.cond = or i1 %.not25, %.not24
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %brmerge.demorgan = and i1 %.not25, %.not24
  br i1 %brmerge.demorgan, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.1, i32 noundef 1687, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_linktail_q) #20
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !32
  store ptr null, ptr %0, align 8, !tbaa !32
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 1691, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_linktail_q) #20
  unreachable

bb.l:                                             ; preds = %bb.j
  store ptr %0, ptr %i.l, align 8, !tbaa !32
  store ptr %0, ptr %i.k, align 8, !tbaa !32
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
end_hunk_3
