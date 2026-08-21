inline.NumInlined: 142
inline.NumDeleted: 36
begin_hunk_0_@_hostlist_create:bb.a
  %.5.i = phi ptr [ %i.al, %bb.i ], [ %i.v, %.critedge2._crit_edge.i.i ] ; 3 uses
  %i.ah = phi i8 [ %i.am, %bb.i ], [ %i.u, %.critedge2._crit_edge.i.i ] ; 2 uses
  %i.ai = zext nneg i8 %i.ah to i64
  %memchr.bounds48.i.i = icmp ugt i8 %i.ah, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.aj, 17596481013249
  %memchr.bits49.i.i = icmp eq i64 %i.ak, 0
  %memchr50.not.i.i = select i1 %memchr.bounds48.i.i, i1 true, i1 %memchr.bits49.i.i
  br i1 %memchr50.not.i.i, label %_next_tok.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph20.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 3 uses
  store i8 0, ptr %.5.i, align 1
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %.not47.i.i = icmp eq i8 %i.am, 0
  br i1 %.not47.i.i, label %_next_tok.exit.i, label %.lr.ph20.i.i, !llvm.loop !60

_next_tok.exit.i:                                 ; preds = %bb.i, %.lr.ph20.i.i, %.critedge2._crit_edge.i.i
  %.6.i = phi ptr [ %i.v, %.critedge2._crit_edge.i.i ], [ %i.al, %bb.i ], [ %.5.i, %.lr.ph20.i.i ] ; 2 uses
  %i.an = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.1.i, i32 noundef 91) #24 ; 3 uses
  %.not40.i = icmp eq ptr %i.an, null
  br i1 %.not40.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_next_tok.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  store i8 0, ptr %i.an, align 1
  %i.ap = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ao, i32 noundef 93) #24 ; 3 uses
  %.not41.i = icmp eq ptr %i.ap, null
  br i1 %.not41.i, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1
  switch i8 %i.ar, label %bb.l [
    i8 44, label %bb.m
    i8 0, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  br i1 %i.g, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.k
  %.0.i = phi ptr [ null, %bb.k ], [ null, %bb.k ], [ %i.aq, %bb.l ]
  store i8 0, ptr %i.ap, align 1
  %i.as = call fastcc i32 @_parse_range_list(ptr noundef %i.ao, ptr noundef %i.a, ptr noundef %i.b, i32 noundef %1) ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.a, align 8
  %i.av = call fastcc i32 @_push_range_list(ptr noundef %i.c, ptr noundef nonnull %.1.i, ptr noundef %.0.i, ptr noundef %i.au, i32 noundef %i.as, i32 noundef %1)
  %.not44.i = icmp eq i32 %i.av, 0
  br i1 %.not44.i, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_next_tok.exit.i
  %i.aw = call i32 @hostlist_push_host_dims(ptr noundef %i.c, ptr noundef nonnull %.1.i, i32 noundef %1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ax = load i8, ptr %.6.i, align 1             ; 2 uses
  %.not6.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not6.i.i, label %_next_tok.exit.thread.i, label %.lr.ph.i.i.backedge

_next_tok.exit.thread.i:                          ; preds = %bb.p, %bb.d, %.preheader.i
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  call void @free(ptr noundef %i.e) #21
  br label %_hostlist_create_bracketed.exit

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.ay = tail call ptr @__errno_location() #22   ; 2 uses
  store i32 22, ptr %i.ay, align 4
  call void @hostlist_destroy(ptr noundef %i.c)
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  call void @free(ptr noundef %i.e) #21
  store i32 22, ptr %i.ay, align 4
  br label %_hostlist_create_bracketed.exit

_hostlist_create_bracketed.exit:                  ; preds = %bb.a, %bb.c, %_next_tok.exit.thread.i, %bb.q
  %.032.i = phi ptr [ null, %bb.c ], [ %i.c, %bb.a ], [ null, %bb.q ], [ %i.c, %_next_tok.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.032.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @xstrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @slurm_controller_hostlist_expansion(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @hostlist_new() unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 80, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 1142, ptr noundef nonnull @__func__.hostlist_new) #21 ; 8 uses
  store i32 57005, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.b, ptr noundef null) #21 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #22
  store i32 %i.c, ptr %i.d, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.hostlist_new) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @slurm_xcalloc(i64 noundef 16, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 1147, ptr noundef nonnull @__func__.hostlist_new) #21
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store ptr null, ptr %i.h, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !61

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 16, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.l, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @hostname_create_dims(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 1
  %i.c = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 489, ptr noundef nonnull @__func__.hostname_create_dims) #21
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21 ; 3 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = icmp ugt i16 %i.d, 1                     ; 2 uses
  %i.g = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 489, ptr noundef nonnull @__func__.hostname_create_dims) #21 ; 2 uses
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.i = zext i16 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.j = phi ptr [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.c, %.thread ] ; 5 uses
  %i.k = phi i1 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %i.b, %.thread ]
  %.03044 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.c ], [ %1, %.thread ]
  %.017.i = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.c ], [ %1, %.thread ]
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #24
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.m, -1                         ; 5 uses
  %i.o = icmp sgt i32 %.017.i, 1
  %i.p = icmp sgt i32 %i.n, -1                    ; 2 uses
  br i1 %i.o, label %.preheader.i, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.d
  br i1 %i.p, label %.lr.ph.i, label %host_prefix_end.exit

.lr.ph.i:                                         ; preds = %.preheader22.i
  %i.q = tail call ptr @__ctype_b_loc() #22
  %i.r = load ptr, ptr %i.q, align 8
  %2 = zext nneg i32 %i.n to i64
  br label %bb.f

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.p, label %.lr.ph28.i, label %host_prefix_end.exit

.lr.ph28.i:                                       ; preds = %.preheader.i
  %i.s = tail call ptr @__ctype_b_loc() #22
  %i.t = load ptr, ptr %i.s, align 8
  %3 = zext nneg i32 %i.n to i64
  br label %bb.e

bb.e:                                             ; preds = %.critedge2.i, %.lr.ph28.i
  %indvars.iv35.i = phi i64 [ %3, %.lr.ph28.i ], [ %indvars.iv.next36.i, %.critedge2.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv35.i
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2
  %i.z = and i16 %i.y, 2304
  %or.cond.i = icmp eq i16 %i.z, 0
  br i1 %or.cond.i, label %.critedge.loopexit.split.loop.exit.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.e
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1
  %i.aa = icmp sgt i64 %indvars.iv35.i, 0
  br i1 %i.aa, label %bb.e, label %host_prefix_end.exit, !llvm.loop !62

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %2, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = and i16 %i.af, 2048
  %.not19.i = icmp eq i16 %i.ag, 0
  br i1 %.not19.i, label %.critedge.loopexit40.split.loop.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ah = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ah, label %bb.f, label %host_prefix_end.exit, !llvm.loop !63

.critedge.loopexit.split.loop.exit.i:             ; preds = %bb.e
  %4 = trunc nuw nsw i64 %indvars.iv35.i to i32
  br label %host_prefix_end.exit

.critedge.loopexit40.split.loop.exit.i:           ; preds = %bb.f
  %5 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %host_prefix_end.exit

host_prefix_end.exit:                             ; preds = %bb.g, %.critedge2.i, %.preheader22.i, %.preheader.i, %.critedge.loopexit.split.loop.exit.i, %.critedge.loopexit40.split.loop.exit.i
  %.2.i = phi i32 [ %i.n, %.preheader22.i ], [ %i.n, %.preheader.i ], [ -1, %.critedge2.i ], [ %4, %.critedge.loopexit.split.loop.exit.i ], [ %5, %.critedge.loopexit40.split.loop.exit.i ], [ -1, %bb.g ] ; 2 uses
  %i.ai = tail call ptr @xstrdup(ptr noundef nonnull %0) #21 ; 2 uses
  store ptr %i.ai, ptr %i.j, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.am = sext i32 %.2.i to i64                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.an = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.ao = add i64 %i.an, -1
  %i.ap = icmp eq i64 %i.ao, %i.am
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %host_prefix_end.exit
  %i.aq = tail call ptr @xstrdup(ptr noundef nonnull %0) #21
  store ptr %i.aq, ptr %i.ak, align 8
  br label %bb.n

bb.i:                                             ; preds = %host_prefix_end.exit
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 3 uses
  store ptr %i.as, ptr %i.al, align 8
  br i1 %i.k, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #24
  %i.au = zext nneg i32 %.03044 to i64
  %.not34 = icmp eq i64 %i.at, %i.au
  %spec.select = select i1 %.not34, i32 36, i32 10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i32 [ 10, %bb.i ], [ %spec.select, %bb.j ]
  %i.av = call i64 @strtoul(ptr noundef nonnull %i.as, ptr noundef nonnull %i.a, i32 noundef %.0) #21
  store i64 %i.av, ptr %i.aj, align 8
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = add nsw i32 %.2.i, 1
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call ptr @xstrndup(ptr noundef nonnull %0, i64 noundef %i.ba) #21
  store ptr %i.bb, ptr %i.ak, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bc = tail call ptr @xstrdup(ptr noundef nonnull %0) #21
  store ptr %i.bc, ptr %i.ak, align 8
  store ptr null, ptr %i.al, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hostlist_push_range(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #22
  store i32 %i.b, ptr %i.c, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_push_range) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 5 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %.in = select i1 %i.f, ptr %i.k, ptr %i.h
  %i.l = load ptr, ptr %.in, align 8              ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, %i.e
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i32 %i.e, 16                     ; 2 uses
  %i.q = sext i32 %i.p to i64
  store i32 %i.p, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %i.r, i64 noundef range(i64 -2147483648, 2147483648) %i.q, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 1170, ptr noundef nonnull @__func__.hostlist_resize) #21 ; 0 uses
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi i32 [ %.pre, %bb.d ], [ %i.e, %bb.c ]
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %hostrange_width_combine.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = icmp eq i64 %i.w, %i.z
  br i1 %i.aa, label %bb.g, label %hostrange_width_combine.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = tail call i32 @strnatcmp(ptr noundef %i.ab, ptr noundef %i.ac) #21
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %hostrange_prefix_cmp.exit, label %hostrange_width_combine.exit

hostrange_prefix_cmp.exit:                        ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i8, ptr %i.af, align 4, !range !8, !noundef !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.ai = load i8, ptr %i.ah, align 4, !range !8, !noundef !9
  %i.aj = icmp eq i8 %i.ag, %i.ai
  br i1 %i.aj, label %bb.h, label %hostrange_width_combine.exit

bb.h:                                             ; preds = %hostrange_prefix_cmp.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.al = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.x, align 8             ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = load i32, ptr %i.am, align 8            ; 7 uses
  %i.aq = load i32, ptr %i.ao, align 8            ; 7 uses
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i.i = icmp ult i64 %i.al, 10
  br i1 %.not8.i.i.i, label %_zero_padded.exit.thread.i.i, label %.lr.ph.i.i.i

_zero_padded.exit.thread.i.i:                     ; preds = %bb.i
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 1)
  br label %_zero_padded.exit28.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi i32 [ %i.au, %.lr.ph.i.i.i ], [ 1, %bb.i ]
  %.069.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i ], [ %i.al, %bb.i ] ; 2 uses
  %i.at = udiv i64 %.069.i.i.i, 10
  %i.au = add nuw nsw i32 %.010.i.i.i, 1          ; 2 uses
  %.not.i.i.i = icmp ult i64 %.069.i.i.i, 100
  br i1 %.not.i.i.i, label %.lr.ph.i23.i.i, label %.lr.ph.i.i.i, !llvm.loop !35

.lr.ph.i23.i.i:                                   ; preds = %.lr.ph.i.i.i, %.lr.ph.i23.i.i
  %.010.i24.i.i = phi i32 [ %i.aw, %.lr.ph.i23.i.i ], [ 1, %.lr.ph.i.i.i ]
  %.069.i25.i.i = phi i64 [ %i.av, %.lr.ph.i23.i.i ], [ %i.al, %.lr.ph.i.i.i ] ; 2 uses
  %i.av = udiv i64 %.069.i25.i.i, 10
  %i.aw = add nuw nsw i32 %.010.i24.i.i, 1        ; 2 uses
  %.not.i26.i.i = icmp ult i64 %.069.i25.i.i, 100
  br i1 %.not.i26.i.i, label %_zero_padded.exit28.loopexit.i.i, label %.lr.ph.i23.i.i, !llvm.loop !35

_zero_padded.exit28.loopexit.i.i:                 ; preds = %.lr.ph.i23.i.i
  %i.ax = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.ap)
  br label %_zero_padded.exit28.i.i

_zero_padded.exit28.i.i:                          ; preds = %_zero_padded.exit28.loopexit.i.i, %_zero_padded.exit.thread.i.i
  %.pn.i.i = phi i32 [ %i.as, %_zero_padded.exit.thread.i.i ], [ %i.ax, %_zero_padded.exit28.loopexit.i.i ]
  %.0.lcssa.i27.i.i = phi i32 [ 1, %_zero_padded.exit.thread.i.i ], [ %i.aw, %_zero_padded.exit28.loopexit.i.i ]
  %i.ay = sub nsw i32 %i.ap, %.pn.i.i
  %i.az = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i27.i.i, i32 %i.aq)
  %i.ba = sub nsw i32 %i.aq, %i.az
  %.not8.i29.i.i = icmp ult i64 %i.an, 10
  br i1 %.not8.i29.i.i, label %_zero_padded.exit35.thread.i.i, label %.lr.ph.i30.i.i

_zero_padded.exit35.thread.i.i:                   ; preds = %_zero_padded.exit28.i.i
  %i.bb = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 1)
  br label %_zero_padded.exit42.i.i

.lr.ph.i30.i.i:                                   ; preds = %_zero_padded.exit28.i.i, %.lr.ph.i30.i.i
  %.010.i31.i.i = phi i32 [ %i.bd, %.lr.ph.i30.i.i ], [ 1, %_zero_padded.exit28.i.i ]
  %.069.i32.i.i = phi i64 [ %i.bc, %.lr.ph.i30.i.i ], [ %i.an, %_zero_padded.exit28.i.i ] ; 2 uses
  %i.bc = udiv i64 %.069.i32.i.i, 10
  %i.bd = add nuw nsw i32 %.010.i31.i.i, 1        ; 2 uses
  %.not.i33.i.i = icmp ult i64 %.069.i32.i.i, 100
  br i1 %.not.i33.i.i, label %.lr.ph.i37.i.i, label %.lr.ph.i30.i.i, !llvm.loop !35

.lr.ph.i37.i.i:                                   ; preds = %.lr.ph.i30.i.i, %.lr.ph.i37.i.i
  %.010.i38.i.i = phi i32 [ %i.bf, %.lr.ph.i37.i.i ], [ 1, %.lr.ph.i30.i.i ]
  %.069.i39.i.i = phi i64 [ %i.be, %.lr.ph.i37.i.i ], [ %i.an, %.lr.ph.i30.i.i ] ; 2 uses
  %i.be = udiv i64 %.069.i39.i.i, 10
  %i.bf = add nuw nsw i32 %.010.i38.i.i, 1        ; 2 uses
  %.not.i40.i.i = icmp ult i64 %.069.i39.i.i, 100
  br i1 %.not.i40.i.i, label %_zero_padded.exit42.loopexit.i.i, label %.lr.ph.i37.i.i, !llvm.loop !35

_zero_padded.exit42.loopexit.i.i:                 ; preds = %.lr.ph.i37.i.i
  %i.bg = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.aq)
  br label %_zero_padded.exit42.i.i

_zero_padded.exit42.i.i:                          ; preds = %_zero_padded.exit42.loopexit.i.i, %_zero_padded.exit35.thread.i.i
  %.pn45.i.i = phi i32 [ %i.bb, %_zero_padded.exit35.thread.i.i ], [ %i.bg, %_zero_padded.exit42.loopexit.i.i ]
  %.0.lcssa.i41.i.i = phi i32 [ 1, %_zero_padded.exit35.thread.i.i ], [ %i.bf, %_zero_padded.exit42.loopexit.i.i ]
end_hunk_0
