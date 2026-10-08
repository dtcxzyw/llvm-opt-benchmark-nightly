Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/items?download=true
inline.NumInlined: 30
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@item_flush_expired:bb.a
  %i.x = zext nneg i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.02433, i64 41
  %i.aa = zext i8 %i.q to i64
  %i.ab = tail call i32 %i.r(ptr noundef nonnull %i.y, i64 noundef %i.aa) #19
  %i.ac = tail call ptr @item_trylock(i32 noundef %i.ab) #19 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph._crit_edge
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !26
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 36), align 4, !tbaa !25
  %.not28 = icmp ult i32 %i.ae, %i.af
  br i1 %.not28, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i16, ptr %i.t, align 2, !tbaa !35
  %i.ah = and i16 %i.ag, 4
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr @ext_storage, align 8, !tbaa !36
  tail call void @storage_delete(ptr noundef %i.aj, ptr noundef nonnull %.02433) #19
  %i.ak = load ptr, ptr @hash, align 8, !tbaa !36
  %i.al = load i16, ptr %i.t, align 2, !tbaa !35
  %i.am = shl i16 %i.al, 2
  %i.an = and i16 %i.am, 8
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ao
  %i.aq = load i8, ptr %i.z, align 1, !tbaa !33
  %i.ar = zext i8 %i.aq to i64
  %i.as = tail call i32 %i.ak(ptr noundef nonnull %i.ap, i64 noundef %i.ar) #19
  tail call void @do_item_unlink_nolock(ptr noundef nonnull %.02433, i32 noundef %i.as)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @item_trylock_unlock(ptr noundef nonnull %i.ac) #19
  br label %bb.g

.thread:                                          ; preds = %bb.c
  tail call void @item_trylock_unlock(ptr noundef nonnull %i.ac) #19
  br label %.loopexit

bb.g:                                             ; preds = %bb.f, %.lr.ph._crit_edge, %bb.b
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !107

.loopexit:                                        ; preds = %bb.g, %.preheader, %.thread
  %i.at = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #19 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.loopexit31, label %.preheader, !llvm.loop !108

.loopexit31:                                      ; preds = %.loopexit, %bb.a
  ret void
}

declare ptr @item_trylock(i32 noundef) local_unnamed_addr #7

declare void @storage_delete(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @item_trylock_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @item_cachedump(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [251 x i8], align 16              ; 5 uses
  %i.b = alloca [512 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = or i32 %0, 128
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %i.d ; 3 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #19 ; 0 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @heads, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #21 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.k = add i32 %1, -1
  %.not6278 = icmp eq ptr %i.h, null
  br i1 %.not6278, label %.critedge, label %.lr.ph.split.preheader

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #19 ; 0 uses
  br label %bb.f

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %.04064 = phi ptr [ %i.x, %bb.e ], [ %.040.ph80, %.lr.ph.split.preheader ] ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04064, i64 41
  %i.n = load i8, ptr %i.m, align 1, !tbaa !33    ; 3 uses
  %i.o = icmp ult i8 %i.n, -5
  br i1 %i.o, label %bb.c, label %.split

.split:                                           ; preds = %.lr.ph.split
  call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 662, ptr noundef nonnull @__PRETTY_FUNCTION__.item_cachedump) #20
  unreachable

bb.c:                                             ; preds = %.lr.ph.split
  %i.p = getelementptr inbounds nuw i8, ptr %.04064, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !26
  %i.r = icmp eq i32 %i.q, 0
  %i.s = icmp eq i8 %i.n, 0
  %or.cond49 = and i1 %i.s, %i.r
  br i1 %or.cond49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.04064, i64 38
  %i.u = load i16, ptr %i.t, align 2, !tbaa !35
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 4096
  %.not47 = icmp eq i32 %i.w, 0
  br i1 %.not47, label %.split67, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.x = load ptr, ptr %.04064, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !109

.split67:                                         ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.04064, i64 41
  %i.z = getelementptr inbounds nuw i8, ptr %.04064, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.04064, i64 48
  %i.ab = shl nuw nsw i32 %i.v, 2
  %i.ac = and i32 %i.ab, 8
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = zext i8 %i.n to i64
  %i.ag = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ae, i64 noundef %i.af) #19 ; 0 uses
  %i.ah = load i8, ptr %i.y, align 1, !tbaa !33
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 0, ptr %i.aj, align 1, !tbaa !33
  %i.ak = load i32, ptr %i.z, align 8, !tbaa !26
  %i.al = add nsw i32 %i.ak, -2
  %i.am = getelementptr inbounds nuw i8, ptr %.04064, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = zext i32 %i.an to i64
  %i.aq = load i64, ptr @process_started, align 8
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = select i1 %i.ao, i64 0, i64 %i.ar
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 512, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a, i32 noundef %i.al, i64 noundef %i.as) #19 ; 2 uses
  %i.au = add i32 %i.at, %.041.ph79               ; 3 uses
  %i.av = add i32 %i.au, -2097147
  %i.aw = icmp ult i32 %i.av, -2097153
  br i1 %i.aw, label %.critedge, label %.outer

.outer:                                           ; preds = %.split67
  %i.ax = zext i32 %.041.ph79 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  %i.az = zext i32 %i.at to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 16 %i.b, i64 %i.az, i1 false)
  %i.ba = add i32 %.0.ph81, 1                     ; 2 uses
  %i.bb = load ptr, ptr %.04064, align 8, !tbaa !32 ; 2 uses
  %.not46 = icmp ult i32 %i.k, %i.ba
  %.not62 = icmp eq ptr %i.bb, null
  %or.cond63 = select i1 %.not62, i1 true, i1 %.not46
  br i1 %or.cond63, label %.critedge, label %.lr.ph.split.preheader, !llvm.loop !109

.lr.ph.split.preheader:                           ; preds = %.preheader, %.outer
  %.0.ph81 = phi i32 [ %i.ba, %.outer ], [ 0, %.preheader ]
  %.040.ph80 = phi ptr [ %i.bb, %.outer ], [ %i.h, %.preheader ]
  %.041.ph79 = phi i32 [ %i.au, %.outer ], [ 0, %.preheader ] ; 4 uses
  br label %.lr.ph.split

.critedge:                                        ; preds = %.split67, %.outer, %bb.e, %.preheader
  %.041.ph60 = phi i32 [ 0, %.preheader ], [ %.041.ph79, %bb.e ], [ %.041.ph79, %.split67 ], [ %i.au, %.outer ] ; 2 uses
  %i.bc = zext i32 %.041.ph60 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bd, ptr noundef nonnull align 1 dereferenceable(6) @.str.11, i64 6, i1 false)
  %i.be = add i32 %.041.ph60, 5
  store i32 %i.be, ptr %2, align 4, !tbaa !26
  %i.bf = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @fill_item_stats_automove(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 7 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %indvars.iv ; 2 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.d = getelementptr inbounds nuw [168 x i8], ptr @itemstats, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !112
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #19 ; 0 uses
  %1 = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %indvars.iv
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 5120 ; 2 uses
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %2) #19 ; 0 uses
  %i.j = getelementptr inbounds nuw [168 x i8], ptr @itemstats, i64 %indvars.iv
  %3 = getelementptr inbounds nuw i8, ptr %i.j, i64 21504
  %i.k = load i64, ptr %3, align 8, !tbaa !43
  store i64 %i.k, ptr %i.a, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @tails, i64 %indvars.iv
  %4 = getelementptr inbounds nuw i8, ptr %i.l, i64 1024
  %i.m = load ptr, ptr %4, align 8, !tbaa !32     ; 8 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !26
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 41
  %i.r = load i8, ptr %i.q, align 1, !tbaa !33
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 38
  %i.u = load i16, ptr %i.t, align 2, !tbaa !35
  %i.v = icmp eq i16 %i.u, 1
  br i1 %i.v, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %.not25 = icmp eq ptr %i.x, null
  br i1 %.not25, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink33 = phi ptr [ %i.x, %bb.f ], [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ]
  %i.y = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %.sink33, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !26
  %i.ab = sub i32 %i.y, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.b
  %.sink = phi i32 [ 0, %bb.f ], [ 0, %bb.b ], [ %i.ab, %.sink.split ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.sink, ptr %i.ac, align 8, !tbaa !114
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %2) #19 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !110

bb.h:                                             ; preds = %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @item_stats_totals(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 6 uses
  %.sroa.621.086 = phi i64 [ 0, %bb.a ], [ %i.cr, %.preheader ]
  %.sroa.0.085 = phi i64 [ 0, %bb.a ], [ %i.cp, %.preheader ]
  %i.a = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ct, %.preheader ]
  %i.b = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.cv, %.preheader ]
  %i.c = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.cx, %.preheader ]
  %i.d = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.cz, %.preheader ]
  %i.e = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.db, %.preheader ]
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %indvars.iv ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #19 ; 0 uses
  %i.h = getelementptr inbounds nuw [168 x i8], ptr @itemstats, i64 %indvars.iv ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = add i64 %i.i, %.sroa.0.085
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39
  %i.m = add i64 %i.l, %.sroa.621.086
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.s = shl i64 %indvars.iv, 32
  %sext = ashr exact i64 %i.s, 32
  %i.t = or i64 %sext, 64                         ; 2 uses
  %i.u = getelementptr inbounds [40 x i8], ptr @lru_locks, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds [168 x i8], ptr @itemstats, i64 %i.t ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.ac = shl i64 %indvars.iv, 32
  %sext112 = ashr exact i64 %i.ac, 32
  %i.ad = or i64 %sext112, 128                    ; 2 uses
  %i.ae = getelementptr inbounds [40 x i8], ptr @lru_locks, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds [168 x i8], ptr @itemstats, i64 %i.ad ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.am = shl i64 %indvars.iv, 32
  %sext113 = ashr exact i64 %i.am, 32
  %i.an = or i64 %sext113, 192                    ; 2 uses
  %i.ao = getelementptr inbounds [40 x i8], ptr @lru_locks, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds [168 x i8], ptr @itemstats, i64 %i.an ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.as = load <2 x i64>, ptr %i.n, align 8, !tbaa !18
  %i.at = add <2 x i64> %i.as, %i.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.av = load <2 x i64>, ptr %i.o, align 8, !tbaa !18
  %i.aw = add <2 x i64> %i.av, %i.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ay = load <2 x i64>, ptr %i.p, align 8, !tbaa !18
  %i.az = add <2 x i64> %i.ay, %i.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.bb = load <2 x i64>, ptr %i.q, align 8, !tbaa !18
  %i.bc = add <2 x i64> %i.bb, %i.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %i.be = load <2 x i64>, ptr %i.r, align 8, !tbaa !18
  %i.bf = add <2 x i64> %i.be, %i.e
  %i.bg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #19 ; 0 uses
  %i.bh = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.u) #19 ; 0 uses
  %i.bi = load i64, ptr %i.v, align 8, !tbaa !43
  %i.bj = add i64 %i.bi, %i.j
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !39
  %i.bl = add i64 %i.bk, %i.m
  %i.bm = load <2 x i64>, ptr %i.x, align 8, !tbaa !18
  %i.bn = add <2 x i64> %i.bm, %i.at
  %i.bo = load <2 x i64>, ptr %i.y, align 8, !tbaa !18
  %i.bp = add <2 x i64> %i.bo, %i.aw
  %i.bq = load <2 x i64>, ptr %i.z, align 8, !tbaa !18
  %i.br = add <2 x i64> %i.bq, %i.az
  %i.bs = load <2 x i64>, ptr %i.aa, align 8, !tbaa !18
  %i.bt = add <2 x i64> %i.bs, %i.bc
  %i.bu = load <2 x i64>, ptr %i.ab, align 8, !tbaa !18
  %i.bv = add <2 x i64> %i.bu, %i.bf
  %i.bw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #19 ; 0 uses
  %i.bx = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ae) #19 ; 0 uses
  %i.by = load i64, ptr %i.af, align 8, !tbaa !43
  %i.bz = add i64 %i.by, %i.bj
  %i.ca = load i64, ptr %i.ag, align 8, !tbaa !39
  %i.cb = add i64 %i.ca, %i.bl
  %i.cc = load <2 x i64>, ptr %i.ah, align 8, !tbaa !18
  %i.cd = add <2 x i64> %i.cc, %i.bn
  %i.ce = load <2 x i64>, ptr %i.ai, align 8, !tbaa !18
  %i.cf = add <2 x i64> %i.ce, %i.bp
  %i.cg = load <2 x i64>, ptr %i.aj, align 8, !tbaa !18
  %i.ch = add <2 x i64> %i.cg, %i.br
  %i.ci = load <2 x i64>, ptr %i.ak, align 8, !tbaa !18
  %i.cj = add <2 x i64> %i.ci, %i.bt
  %i.ck = load <2 x i64>, ptr %i.al, align 8, !tbaa !18
  %i.cl = add <2 x i64> %i.ck, %i.bv
  %i.cm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ae) #19 ; 0 uses
  %i.cn = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ao) #19 ; 0 uses
  %i.co = load i64, ptr %i.ap, align 8, !tbaa !43
  %i.cp = add i64 %i.co, %i.bz                    ; 2 uses
  %i.cq = load i64, ptr %i.aq, align 8, !tbaa !39
  %i.cr = add i64 %i.cq, %i.cb                    ; 2 uses
  %i.cs = load <2 x i64>, ptr %i.ar, align 8, !tbaa !18
  %i.ct = add <2 x i64> %i.cs, %i.cd              ; 3 uses
  %i.cu = load <2 x i64>, ptr %i.au, align 8, !tbaa !18
  %i.cv = add <2 x i64> %i.cu, %i.cf              ; 3 uses
  %i.cw = load <2 x i64>, ptr %i.ax, align 8, !tbaa !18
  %i.cx = add <2 x i64> %i.cw, %i.ch              ; 3 uses
  %i.cy = load <2 x i64>, ptr %i.ba, align 8, !tbaa !18
  %i.cz = add <2 x i64> %i.cy, %i.cj              ; 3 uses
  %i.da = load <2 x i64>, ptr %i.bd, align 8, !tbaa !18
  %i.db = add <2 x i64> %i.da, %i.cl              ; 3 uses
  %i.dc = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ao) #19 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !115

bb.b:                                             ; preds = %.preheader
  %i.dd = extractelement <2 x i64> %i.ct, i64 0
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.12, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.dd) #19
  %i.de = extractelement <2 x i64> %i.ct, i64 1
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.14, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.de) #19
  %i.df = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 135), align 1, !tbaa !61, !range !28, !noundef !29
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dh = extractelement <2 x i64> %i.cv, i64 0
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.15, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.dh) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.16, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.cp) #19
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.17, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.cr) #19
  %i.di = extractelement <2 x i64> %i.cv, i64 1
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.18, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.di) #19
  %i.dj = extractelement <2 x i64> %i.cx, i64 0
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.19, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.dj) #19
  %i.dk = extractelement <2 x i64> %i.cx, i64 1
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.20, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.dk) #19
  %i.dl = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 135), align 1, !tbaa !61, !range !28, !noundef !29
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dn = extractelement <2 x i64> %i.cz, i64 0
end_hunk_0
begin_hunk_1_@item_lru_bump_buf_create:bb.a
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
  ret ptr %.0
}

declare ptr @bipbuf_new(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @stop_lru_maintainer_thread() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @lru_maintainer_lock) #19 ; 0 uses
  store volatile i32 0, ptr @do_run_lru_maintainer_thread, align 4, !tbaa !26
  %i.b = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @lru_maintainer_lock) #19 ; 0 uses
  %i.c = load i64, ptr @lru_maintainer_tid, align 8, !tbaa !18
  %i.d = tail call i32 @pthread_join(i64 noundef %i.c, ptr noundef null) #19 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.f = tail call ptr @strerror(i32 noundef %i.d) #19
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.57, ptr noundef %i.f) #23 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 135), align 1, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @start_lru_maintainer_thread(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @lru_maintainer_lock) #19 ; 0 uses
  store volatile i32 1, ptr @do_run_lru_maintainer_thread, align 4, !tbaa !26
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 135), align 1, !tbaa !61
  %i.b = tail call i32 @pthread_create(ptr noundef nonnull @lru_maintainer_tid, ptr noundef null, ptr noundef nonnull @lru_maintainer_thread, ptr noundef %0) #19 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.d = tail call ptr @strerror(i32 noundef %i.b) #19
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.58, ptr noundef %i.d) #23 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr @lru_maintainer_tid, align 8, !tbaa !18
  tail call void @thread_setname(i64 noundef %i.f, ptr noundef nonnull @.str.59) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @lru_maintainer_lock) #19 ; 0 uses
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @lru_maintainer_thread(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca [64 x i32], align 16              ; 4 uses
  %i.e = alloca [64 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.e, i8 0, i64 256, i1 false)
  %i.f = tail call noalias dereferenceable_or_null(137272) ptr @calloc(i64 noundef 1, i64 noundef 137272) #22 ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !83
  %fwrite59 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 58, i64 1, ptr %i.h) #24 ; 0 uses
  tail call void @abort() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.f, ptr noundef null) #19 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 137264
  store i8 1, ptr %i.j, align 8, !tbaa !139
  %i.k = tail call ptr @logger_create() #19       ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !83
  %fwrite58 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 52, i64 1, ptr %i.m) #24 ; 0 uses
  tail call void @abort() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @lru_maintainer_lock) #19 ; 0 uses
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !81
  %i.p = icmp sgt i32 %i.o, 2
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !83
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.76, i64 42, i64 1, ptr %i.q) #24 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load volatile i32, ptr @do_run_lru_maintainer_thread, align 4, !tbaa !26
  %.not86 = icmp eq i32 %i.r, 0
  br i1 %.not86, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.bo
  %.088 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.bo ] ; 3 uses
  %.04187 = phi i32 [ 1000, %.lr.ph ], [ %.4, %bb.bo ] ; 3 uses
  %i.u = call i32 @pthread_mutex_unlock(ptr noundef nonnull @lru_maintainer_lock) #19 ; 0 uses
  %.not53 = icmp eq i32 %.04187, 0
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = call i32 @usleep(i32 noundef %.04187) #19 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = call i32 @pthread_mutex_lock(ptr noundef nonnull @lru_maintainer_lock) #19 ; 0 uses
  %i.x = call i32 @llvm.umax.i32(i32 %.04187, i32 1000) ; 2 uses
  call void @STATS_LOCK() #19
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 112), align 8, !tbaa !140
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 112), align 8, !tbaa !140
  call void @STATS_UNLOCK() #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.ac
  %indvars.iv = phi i64 [ 1, %bb.j ], [ %indvars.iv.next, %bb.ac ] ; 12 uses
  %.14285 = phi i32 [ 999999, %bb.j ], [ %spec.select60, %bb.ac ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26 ; 2 uses
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %i.ab, i32 %i.x) ; 2 uses
  store i32 %spec.select, ptr %i.aa, align 4, !tbaa !26
  %.not55.not = icmp ugt i32 %i.ab, %i.x
  br i1 %.not55.not, label %bb.ac, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !26
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32    ; 5 uses
  %i.ad = call i32 @slabs_available_chunks(i32 noundef range(i32 -2147483648, 64) %i.ac, ptr noundef null, ptr noundef nonnull %i.c) #19 ; 0 uses
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 236), align 4, !tbaa !55, !range !28, !noundef !29
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.l, %bb.m
  %.04249.i = phi i32 [ %i.ai, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ag = call i32 @lru_pull_tail(i32 noundef range(i32 -2147483648, 64) %i.ac, i32 noundef 192, i64 noundef 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %.preheader.i
  %i.ai = add nuw nsw i32 %.04249.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ai, 500
  br i1 %exitcond.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !130

.loopexit.i:                                      ; preds = %bb.m, %.preheader.i, %bb.l
  %.143.i = phi i32 [ 0, %bb.l ], [ 500, %bb.m ], [ %.04249.i, %.preheader.i ] ; 2 uses
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 136), align 8, !tbaa !27, !range !28, !noundef !29
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.loopexit.i
  %1 = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %indvars.iv
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 5120 ; 2 uses
  %i.al = call i32 @pthread_mutex_lock(ptr noundef nonnull %2) #19 ; 0 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @tails, i64 %indvars.iv
  %3 = getelementptr inbounds nuw i8, ptr %i.am, i64 1024
  %i.an = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !26
  %i.ar = sub i32 %i.ao, %i.aq
  %i.as = uitofp i32 %i.ar to double
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.040.i = phi double [ %i.as, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @sizes_bytes, i64 %indvars.iv
  %4 = getelementptr inbounds nuw i8, ptr %i.at, i64 1024
  %i.au = load i64, ptr %4, align 8, !tbaa !18
  %i.av = call i32 @pthread_mutex_unlock(ptr noundef nonnull %2) #19 ; 0 uses
  %i.aw = load double, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 216), align 8, !tbaa !141
  %i.ax = fmul double %.040.i, %i.aw
  %i.ay = fptoui double %i.ax to i32
  %i.az = load double, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 224), align 8, !tbaa !142
  %i.ba = fmul double %.040.i, %i.az
  %i.bb = fptoui double %i.ba to i32
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %indvars.iv ; 2 uses
  %i.bd = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bc) #19 ; 0 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @sizes_bytes, i64 %indvars.iv
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !18
  %i.bg = add i64 %i.bf, %i.au
  %i.bh = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bc) #19 ; 0 uses
  %5 = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %indvars.iv
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 2560 ; 2 uses
  %i.bi = call i32 @pthread_mutex_lock(ptr noundef nonnull %6) #19 ; 0 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @sizes_bytes, i64 %indvars.iv
  %7 = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  %i.bk = load i64, ptr %7, align 8, !tbaa !18
  %i.bl = add i64 %i.bg, %i.bk
  %i.bm = call i32 @pthread_mutex_unlock(ptr noundef nonnull %6) #19 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit.i
  %.041.i = phi i64 [ %i.bl, %bb.p ], [ 0, %.loopexit.i ] ; 3 uses
  %.039.i = phi i32 [ %i.ay, %bb.p ], [ 0, %.loopexit.i ]
  %.038.i = phi i32 [ %i.bb, %bb.p ], [ 0, %.loopexit.i ]
  %i.bn = add nuw nsw i32 %.143.i, 499
  br label %bb.r

bb.r:                                             ; preds = %bb.x, %bb.q
  %.251.i = phi i32 [ %.143.i, %bb.q ], [ %i.bv, %bb.x ] ; 3 uses
  %i.bo = call i32 @lru_pull_tail(i32 noundef range(i32 -2147483648, 64) %i.ac, i32 noundef 0, i64 noundef %.041.i, i8 noundef zeroext 2, i32 noundef %.039.i, ptr noundef null)
  %.not46.i = icmp eq i32 %i.bo, 0
  br i1 %.not46.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bp = call i32 @lru_pull_tail(i32 noundef range(i32 -2147483648, 64) %i.ac, i32 noundef 64, i64 noundef %.041.i, i8 noundef zeroext 2, i32 noundef %.038.i, ptr noundef null)
  %.not47.i = icmp eq i32 %i.bp, 0
  br i1 %.not47.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.037.i = phi i32 [ 1, %bb.t ], [ 0, %bb.s ]    ; 2 uses
  %i.bq = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 136), align 8, !tbaa !27, !range !28, !noundef !29
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bs = call i32 @lru_pull_tail(i32 noundef range(i32 -2147483648, 64) %i.ac, i32 noundef 128, i64 noundef %.041.i, i8 noundef zeroext 2, i32 noundef 0, ptr noundef null)
  %i.bt = add nsw i32 %i.bs, %.037.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.i = phi i32 [ %i.bt, %bb.v ], [ %.037.i, %bb.u ]
  %i.bu = icmp eq i32 %.1.i, 0
  br i1 %i.bu, label %lru_maintainer_juggle.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = add nuw nsw i32 %.251.i, 1
  %exitcond52.not.i = icmp eq i32 %.251.i, %i.bn
  br i1 %exitcond52.not.i, label %lru_maintainer_juggle.exit.thread, label %bb.r, !llvm.loop !131

lru_maintainer_juggle.exit.thread:                ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.z

lru_maintainer_juggle.exit:                       ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.bw = icmp eq i32 %.251.i, 0
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %lru_maintainer_juggle.exit
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !26 ; 3 uses
  %.not57 = icmp eq i32 %i.by, 0
  %i.bz = lshr i32 %i.by, 3
  %i.ca = add i32 %i.bz, %i.by
  %i.cb = call i32 @llvm.umin.i32(i32 %i.ca, i32 999999)
  %spec.store.select63 = select i1 %.not57, i32 1000, i32 %i.cb ; 2 uses
  store i32 %spec.store.select63, ptr %i.bx, align 4, !tbaa !26
  br label %bb.ab

bb.z:                                             ; preds = %lru_maintainer_juggle.exit.thread, %lru_maintainer_juggle.exit
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !26 ; 3 uses
  %.not56 = icmp eq i32 %i.cd, 0
  br i1 %.not56, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = lshr i32 %i.cd, 1
  %i.cf = icmp ult i32 %i.cd, 2000
  %spec.store.select61 = select i1 %i.cf, i32 0, i32 %i.ce ; 2 uses
  store i32 %spec.store.select61, ptr %i.cc, align 4, !tbaa !26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.z
  %i.cg = phi i32 [ %spec.store.select63, %bb.y ], [ %spec.store.select61, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  store i32 %i.cg, ptr %i.aa, align 4, !tbaa !26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.k, %bb.ab
  %spec.select.sink = phi i32 [ %i.cg, %bb.ab ], [ %spec.select, %bb.k ]
  %spec.select60 = call i32 @llvm.umin.i32(i32 %spec.select.sink, i32 %.14285) ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.ad, label %bb.k, !llvm.loop !132

bb.ad:                                            ; preds = %bb.ac
  %i.ch = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 136), align 8, !tbaa !27, !range !28, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ae, label %bb.ar

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.cj = call i32 @pthread_mutex_lock(ptr noundef nonnull @bump_buf_lock) #19 ; 0 uses
  %.01830.i = load ptr, ptr @bump_buf_head, align 8, !tbaa !63 ; 2 uses
  %.not31.i = icmp eq ptr %.01830.i, null
  br i1 %.not31.i, label %lru_maintainer_bumps.exit.thread, label %.lr.ph35.i

lru_maintainer_bumps.exit.thread:                 ; preds = %bb.ae
  %i.ck = call i32 @pthread_mutex_unlock(ptr noundef nonnull @bump_buf_lock) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ar

.lr.ph35.i:                                       ; preds = %bb.ae, %bb.aq
  %.01833.i = phi ptr [ %.018.i, %bb.aq ], [ %.01830.i, %bb.ae ] ; 3 uses
  %.032.i = phi i1 [ %.1.i64, %bb.aq ], [ false, %bb.ae ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.01833.i, i64 16 ; 4 uses
  %i.cm = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cl) #19 ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01833.i, i64 56 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !84
  %i.cp = call ptr @bipbuf_peek_all(ptr noundef %i.co, ptr noundef nonnull %i.b) #19 ; 2 uses
  %i.cq = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cl) #19 ; 0 uses
  %i.cr = icmp eq ptr %i.cp, null
  br i1 %i.cr, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %.lr.ph35.i
  %i.cs = load i32, ptr %i.b, align 4, !tbaa !26  ; 2 uses
  %.not2027.i = icmp eq i32 %i.cs, 0
  br i1 %.not2027.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af, %do_item_remove.exit.i
  %.01629.i = phi i32 [ %i.ds, %do_item_remove.exit.i ], [ %i.cs, %bb.af ]
  %.01728.i = phi ptr [ %i.dr, %do_item_remove.exit.i ], [ %i.cp, %bb.af ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01728.i, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !87
  call void @item_lock(i32 noundef %i.cu) #19
  %i.cv = load ptr, ptr %.01728.i, align 8, !tbaa !86
  call void @do_item_update(ptr noundef %i.cv)
  %i.cw = load ptr, ptr %.01728.i, align 8, !tbaa !86 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 38
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !35 ; 2 uses
  %i.cz = and i16 %i.cy, 4
  %i.da = icmp eq i16 %i.cz, 0
  br i1 %i.da, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_remove) #20
  unreachable

bb.ah:                                            ; preds = %.lr.ph.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 36 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 4, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 541, ptr noundef nonnull @__PRETTY_FUNCTION__.do_item_remove) #20
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dd = add i16 %i.dc, -1                       ; 2 uses
  store i16 %i.dd, ptr %i.db, align 4, !tbaa !35
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %bb.ak, label %do_item_remove.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.df = and i16 %i.cy, 1
  %i.dg = icmp eq i16 %i.df, 0
  br i1 %i.dg, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__.item_free) #20
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !33  ; 2 uses
  %i.dj = zext i8 %i.di to i64                    ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr @heads, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !32
  %.not.i21.i = icmp eq ptr %i.cw, %i.dl
  br i1 %.not.i21.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 353, ptr noundef nonnull @__PRETTY_FUNCTION__.item_free) #20
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @tails, i64 %i.dj
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !32
  %.not8.i.i = icmp eq ptr %i.cw, %i.dn
  br i1 %.not8.i.i, label %bb.ap, label %item_free.exit.i

bb.ap:                                            ; preds = %bb.ao
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__.item_free) #20
  unreachable

item_free.exit.i:                                 ; preds = %bb.ao
  %i.do = and i8 %i.di, 63
  %i.dp = zext nneg i8 %i.do to i32
  call void @slabs_free(ptr noundef nonnull %i.cw, i32 noundef %i.dp) #19
  br label %do_item_remove.exit.i

do_item_remove.exit.i:                            ; preds = %item_free.exit.i, %bb.aj
  %i.dq = load i32, ptr %i.ct, align 8, !tbaa !87
  call void @item_unlock(i32 noundef %i.dq) #19
  %i.dr = getelementptr inbounds nuw i8, ptr %.01728.i, i64 16
end_hunk_1
