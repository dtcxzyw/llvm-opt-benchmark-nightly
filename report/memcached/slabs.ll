Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/slabs?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumUnrolled: 2
begin_hunk_0_@do_slabs_unlink_free_chunk:bb.a
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
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #20 ; 0 uses
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
  %i.y = tail call ptr @realloc(ptr noundef %i.w, i64 noundef %i.x) #19 ; 2 uses
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
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 768, ptr noundef nonnull @__PRETTY_FUNCTION__.slabs_finalize_page_move) #25
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
  tail call void @free(ptr noundef nonnull %i.bb) #20
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
  %i.bg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #20 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @slabs_pick_any_for_reassign(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #20 ; 0 uses
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
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #20 ; 0 uses
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
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #20 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.04 = phi i32 [ %i.k, %bb.d ], [ -1, %bb.h ]
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slabs_page_count(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #20 ; 0 uses
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [40 x i8], ptr @slabclass, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #20 ; 0 uses
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slabs_locked_callback(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #20 ; 0 uses
  %i.b = tail call i32 %0(ptr noundef %1) #20
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #20 ; 0 uses
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @slabs_mlock() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @slabs_lock) #20 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slabs_munlock() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slabs_lock) #20 ; 0 uses
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

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
  %i.af = tail call ptr @realloc(ptr noundef %i.ad, i64 noundef %i.ae) #19 ; 2 uses
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
  %i.ar = tail call noalias ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ao) #24
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
end_hunk_0
