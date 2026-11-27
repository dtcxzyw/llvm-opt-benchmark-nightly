Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/symlinks?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0_@schedule_dir_for_removal:bb.a
  %i.ao = trunc nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.an, i32 %i.ao, i32 %.01824 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %longest_path_match.exit
  %.018.lcssa = phi i32 [ %.234.i, %longest_path_match.exit ], [ %i.ak, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.ap = icmp slt i32 %.234.i, %.018.lcssa
  br i1 %i.ap, label %bb.j, label %.critedge

bb.j:                                             ; preds = %._crit_edge
  %i.aq = sext i32 %.234.i to i64                 ; 2 uses
  %i.ar = icmp ugt i64 %i.f, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @do_remove_scheduled_dirs(i32 noundef %.234.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.at = sub nsw i32 %.018.lcssa, %.234.i
  %i.au = zext nneg i32 %i.at to i64
  tail call void @strbuf_add(ptr noundef nonnull @removal, ptr noundef %i.as, i64 noundef %i.au) #11
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_remove_scheduled_dirs(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 4 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.c = icmp ugt i64 %i.b, %i.a
  br i1 %i.c, label %.lr.ph.preheader, label %lstat_cache_aware_rmdir.exit.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 16), align 8, !tbaa !22
  br label %.lr.ph

.lr.ph.loopexit:                                  ; preds = %.lr.ph23
  br label %.lr.ph, !llvm.loop !32

.lr.ph:                                           ; preds = %.lr.ph.loopexit, %.lr.ph.preheader
  %i.d = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.n, %.lr.ph.loopexit ]
  %i.e = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.s, %.lr.ph.loopexit ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !24
  %i.g = load ptr, ptr @startup_info, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %.pre14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 16), align 8, !tbaa !22 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pre14, ptr noundef nonnull dereferenceable(1) %i.i) #13
  %.not6 = icmp eq i32 %i.j, 0
  br i1 %.not6, label %lstat_cache_aware_rmdir.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.k = tail call i32 @rmdir(ptr noundef readonly %.pre14) #11
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %lstat_cache_aware_rmdir.exit.thread

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 8), align 8, !tbaa !23
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 16), align 8, !tbaa !22 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.l, @strbuf_slopbuf
  br i1 %.not9.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.l, align 1, !tbaa !24
  br label %lstat_cache_aware_rmdir.exit

bb.f:                                             ; preds = %bb.d
  %i.m = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !24
  %.not10.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not10.i.i.i.i, label %lstat_cache_aware_rmdir.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #14
  unreachable

lstat_cache_aware_rmdir.exit:                     ; preds = %bb.e, %bb.f
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 24), align 8, !tbaa !27
  %.promoted = load i64, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 8), align 8, !tbaa !23
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 16), align 8 ; 2 uses
  %i.o = add i64 %.promoted, -1                   ; 3 uses
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 8), align 8, !tbaa !23
  %i.p = icmp ugt i64 %i.o, %i.a
  br i1 %i.p, label %.lr.ph23, label %lstat_cache_aware_rmdir.exit.thread

bb.h:                                             ; preds = %.lr.ph23
  %i.q = add i64 %i.s, -1                         ; 3 uses
  store i64 %i.q, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 8), align 8, !tbaa !23
  %i.r = icmp ugt i64 %i.q, %i.a
  br i1 %i.r, label %.lr.ph23, label %lstat_cache_aware_rmdir.exit.thread, !llvm.loop !32

.lr.ph23:                                         ; preds = %lstat_cache_aware_rmdir.exit, %bb.h
  %i.s = phi i64 [ %i.q, %bb.h ], [ %i.o, %lstat_cache_aware_rmdir.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %.not8 = icmp eq i8 %i.u, 47
  br i1 %.not8, label %.lr.ph.loopexit, label %bb.h, !llvm.loop !32

lstat_cache_aware_rmdir.exit.thread:              ; preds = %bb.b, %bb.c, %lstat_cache_aware_rmdir.exit, %bb.h, %bb.a
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @removal, i64 8), align 8, !tbaa !23
  ret void
}

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @remove_scheduled_dirs() local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @do_remove_scheduled_dirs(i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @invalidate_lstat_cache() local_unnamed_addr #0 {
bb.a:
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 8), align 8, !tbaa !23
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 16), align 8, !tbaa !22 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.a, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !24
  br label %reset_lstat_cache.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !24
  %.not10.i.i = icmp eq i8 %i.b, 0
  br i1 %.not10.i.i, label %reset_lstat_cache.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #14
  unreachable

reset_lstat_cache.exit:                           ; preds = %bb.b, %bb.c
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 24), align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lstat_cache_aware_rmdir(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rmdir(ptr noundef %0) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 8), align 8, !tbaa !23
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 16), align 8, !tbaa !22 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.b, @strbuf_slopbuf
  br i1 %.not9.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !24
  br label %invalidate_lstat_cache.exit

bb.d:                                             ; preds = %bb.b
  %i.c = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !24
  %.not10.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not10.i.i.i, label %invalidate_lstat_cache.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #14
  unreachable

invalidate_lstat_cache.exit:                      ; preds = %bb.c, %bb.d
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @default_cache, i64 24), align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %invalidate_lstat_cache.exit, %bb.a
  ret i32 %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lstat_cache_matchlen(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef range(i32 5, 34) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.stat, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34
  %.not = icmp eq i32 %i.b, %4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35
  %.not105 = icmp eq i32 %i.d, %5
  br i1 %.not105, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.g, align 1, !tbaa !24
  %.pre.pre = load i64, ptr %i.e, align 8, !tbaa !36
  br label %reset_lstat_cache.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !24
  %.not10.i.i = icmp eq i8 %i.h, 0
  br i1 %.not10.i.i, label %reset_lstat_cache.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #14
  unreachable

reset_lstat_cache.exit:                           ; preds = %bb.d, %bb.e
  %.pre = phi i64 [ %.pre.pre, %bb.d ], [ 0, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = zext nneg i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 32
  store i64 %8, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %5, ptr %i.j, align 8, !tbaa !35
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 4 uses
  %i.o = trunc i64 %i.n to i32                    ; 4 uses
  %i.p = icmp slt i32 %2, %i.o
  %i.q = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.o) ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.q to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 4 uses
  %.03143.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select38.i, %bb.h ] ; 2 uses
  %.03242.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i, %bb.h ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !24
  %i.w = icmp eq i8 %i.t, %i.v
  br i1 %i.w, label %bb.h, label %longest_path_match.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.x = icmp eq i8 %i.t, 47                      ; 2 uses
  %i.y = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 %.03242.i ; 2 uses
  %spec.select38.i = select i1 %i.x, i32 %.03242.i, i32 %.03143.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.h, %bb.g
  %.032.lcssa.i = phi i32 [ 0, %bb.g ], [ %spec.select.i, %bb.h ] ; 3 uses
  %.031.lcssa.i = phi i32 [ 0, %bb.g ], [ %spec.select38.i, %bb.h ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.q, %bb.h ]
  %i.z = icmp sgt i32 %2, %i.o
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge.i
  %sext = shl i64 %i.n, 32
  %i.aa = ashr exact i64 %sext, 32
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ad = icmp eq i8 %i.ac, 47
  br i1 %i.ad, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge.i
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = sext i32 %2 to i64
  %i.af = getelementptr inbounds i8, ptr %i.l, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !24
  %i.ah = icmp eq i8 %i.ag, 47
  br i1 %i.ah, label %bb.m, label %longest_path_match.exit

bb.l:                                             ; preds = %bb.j
  %.old.i = icmp eq i32 %2, %i.o
  br i1 %.old.i, label %bb.m, label %longest_path_match.exit

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  br label %longest_path_match.exit

longest_path_match.exit:                          ; preds = %.lr.ph.i, %bb.k, %bb.l, %bb.m
  %.234.i = phi i32 [ %.0.lcssa.i, %bb.m ], [ %.032.lcssa.i, %bb.l ], [ %.032.lcssa.i, %bb.k ], [ %.03242.i, %.lr.ph.i ] ; 2 uses
  %.2.i = phi i32 [ %.032.lcssa.i, %bb.m ], [ %.031.lcssa.i, %bb.l ], [ %.031.lcssa.i, %bb.k ], [ %.03143.i, %.lr.ph.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !27
  %i.ak = and i32 %4, 6
  %i.al = and i32 %i.ak, %i.aj                    ; 2 uses
  store i32 %i.al, ptr %3, align 4, !tbaa !13
  %.not106 = icmp samesign ult i32 %4, 32
  %i.am = icmp eq i32 %.234.i, %2
  %or.cond115 = select i1 %.not106, i1 %i.am, i1 false
  %.089 = select i1 %or.cond115, i32 %.2.i, i32 %.234.i ; 4 uses
  %.not107 = icmp ne i32 %i.al, 0
  %i.an = sext i32 %.089 to i64
  %i.ao = icmp eq i64 %i.n, %i.an
  %or.cond122 = select i1 %.not107, i1 %i.ao, i1 false
  br i1 %or.cond122, label %bb.ai, label %bb.n

bb.n:                                             ; preds = %longest_path_match.exit
  %i.ap = and i32 %4, 1
  store i32 %i.ap, ptr %3, align 4, !tbaa !13
  %.not108 = trunc i32 %4 to i1
  %i.aq = icmp eq i32 %2, %.089
  %or.cond116 = select i1 %.not108, i1 %i.aq, i1 false
  br i1 %or.cond116, label %bb.ai, label %bb.o

bb.o:                                             ; preds = %bb.n, %reset_lstat_cache.exit
  %i.ar = phi i64 [ %.pre, %reset_lstat_cache.exit ], [ %i.n, %bb.n ] ; 2 uses
  %.1 = phi i32 [ 0, %reset_lstat_cache.exit ], [ %.089, %bb.n ] ; 2 uses
  store i32 1, ptr %3, align 4, !tbaa !13
  %i.as = sext i32 %2 to i64                      ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.au = icmp ult i64 %i.ar, %i.as
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = sub nuw i64 %i.as, %i.ar
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef %i.av) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %.not111 = icmp samesign ult i32 %4, 32
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  br i1 %.not111, label %.split.preheader, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.q
  %i.ay = add i32 %2, -1                          ; 2 uses
  %i.az = add nsw i64 %i.as, -1                   ; 2 uses
  br label %.split.us

.split.preheader:                                 ; preds = %bb.q
  %i.ba = add nsw i64 %i.as, -1                   ; 2 uses
  br label %.split

.split.us:                                        ; preds = %.split.us.preheader, %bb.u
  %.088.us = phi i32 [ %.lcssa154, %bb.u ], [ %.1, %.split.us.preheader ] ; 8 uses
  %i.bb = icmp slt i32 %.088.us, %2
  br i1 %i.bb, label %.preheader.us.preheader, label %.loopexit

.preheader.us.preheader:                          ; preds = %.split.us
  %i.bc = sext i32 %.088.us to i64                ; 4 uses
  %.phi.trans.insert167 = getelementptr inbounds i8, ptr %1, i64 %i.bc
  %.pre168 = load i8, ptr %.phi.trans.insert167, align 1, !tbaa !24
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !37
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.bc
  store i8 %.pre168, ptr %i.be, align 1, !tbaa !24
  %exitcond.not237 = icmp eq i64 %i.az, %i.bc
  br i1 %exitcond.not237, label %.critedge.us, label %.lr.ph

.preheader.us:                                    ; preds = %.lr.ph
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !37
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %indvars.iv.next
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !24
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.az
  br i1 %exitcond.not, label %.critedge.us, label %.lr.ph, !llvm.loop !33

.lr.ph:                                           ; preds = %.preheader.us.preheader, %.preheader.us
  %indvars.iv238 = phi i64 [ %indvars.iv.next, %.preheader.us ], [ %i.bc, %.preheader.us.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv238, 1 ; 6 uses
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !24  ; 2 uses
  %.not109.us = icmp eq i8 %i.bi, 47
  br i1 %.not109.us, label %..critedge.us_crit_edge, label %.preheader.us, !llvm.loop !33

..critedge.us_crit_edge:                          ; preds = %.lr.ph
  %i.bj = trunc nsw i64 %indvars.iv.next to i32
  %i.bk = trunc nsw i64 %indvars.iv238 to i32
  br label %.critedge.us, !llvm.loop !33

.critedge.us:                                     ; preds = %.preheader.us, %.preheader.us.preheader, %..critedge.us_crit_edge
  %.pre-phi = phi i64 [ %indvars.iv.next, %..critedge.us_crit_edge ], [ %i.as, %.preheader.us.preheader ], [ %i.as, %.preheader.us ]
  %.393.us.lcssa = phi i32 [ %i.bk, %..critedge.us_crit_edge ], [ %i.ay, %.preheader.us.preheader ], [ %i.ay, %.preheader.us ]
  %.lcssa154 = phi i32 [ %i.bj, %..critedge.us_crit_edge ], [ %2, %.preheader.us.preheader ], [ %2, %.preheader.us ] ; 4 uses
  %i.bl = load ptr, ptr %i.aw, align 8, !tbaa !37
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %.pre-phi
  store i8 0, ptr %i.bm, align 1, !tbaa !24
  %.not112.not.us = icmp slt i32 %.393.us.lcssa, %5
  %i.bn = load ptr, ptr %i.aw, align 8, !tbaa !37 ; 2 uses
  br i1 %.not112.not.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge.us
  %i.bo = call i32 @lstat64(ptr noundef %i.bn, ptr noundef nonnull %6) #11
  br label %bb.t

bb.s:                                             ; preds = %.critedge.us
  %i.bp = call i32 @stat64(ptr noundef %i.bn, ptr noundef nonnull %6) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.087.us = phi i32 [ %i.bp, %bb.s ], [ %i.bo, %bb.r ]
  %.not113.us = icmp eq i32 %.087.us, 0
  br i1 %.not113.us, label %bb.u, label %.split134.us

bb.u:                                             ; preds = %bb.t
  %i.bq = load i32, ptr %i.ax, align 8, !tbaa !40
  %i.br = trunc i32 %i.bq to i16
  %trunc.us = and i16 %i.br, -4096
  switch i16 %trunc.us, label %.loopexit.sink.split.loopexit256 [
    i16 16384, label %.split.us
    i16 -24576, label %.loopexit.sink.split
  ]

.split:                                           ; preds = %.split.preheader, %bb.z
  %.088 = phi i32 [ %i.ca, %bb.z ], [ %.1, %.split.preheader ] ; 14 uses
  %i.bs = icmp slt i32 %.088, %2
  br i1 %i.bs, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.split
end_hunk_0
