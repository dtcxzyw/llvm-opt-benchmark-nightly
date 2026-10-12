Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/items?download=true
inline.NumInlined: 30
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@item_cachedump:bb.a
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
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %indvars.iv ; 2 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.d = getelementptr inbounds nuw [168 x i8], ptr @itemstats, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !112
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.i = or disjoint i64 %indvars.iv, 128         ; 3 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %i.i ; 2 uses
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.j) #19 ; 0 uses
  %i.l = getelementptr inbounds nuw [168 x i8], ptr @itemstats, i64 %i.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !43
  store i64 %i.m, ptr %i.a, align 8, !tbaa !113
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @tails, i64 %i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 8 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !26
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 41
  %i.t = load i8, ptr %i.s, align 1, !tbaa !33
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 38
  %i.w = load i16, ptr %i.v, align 2, !tbaa !35
  %i.x = icmp eq i16 %i.w, 1
  br i1 %i.x, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %.not25 = icmp eq ptr %i.z, null
  br i1 %.not25, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink33 = phi ptr [ %i.z, %bb.f ], [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ]
  %i.aa = load volatile i32, ptr @current_time, align 4, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink33, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26
  %i.ad = sub i32 %i.aa, %i.ac
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.b
  %.sink = phi i32 [ 0, %bb.f ], [ 0, %bb.b ], [ %i.ad, %.sink.split ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.sink, ptr %i.ae, align 8, !tbaa !114
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #19 ; 0 uses
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
  %.sroa.621.086 = phi i64 [ 0, %bb.a ], [ %i.co, %.preheader ]
  %.sroa.0.085 = phi i64 [ 0, %bb.a ], [ %i.cm, %.preheader ]
  %i.a = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.cq, %.preheader ]
  %i.b = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.cs, %.preheader ]
  %i.c = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.cu, %.preheader ]
  %i.d = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.cw, %.preheader ]
  %i.e = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.cy, %.preheader ]
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
  %2 = and i64 %indvars.iv, 4294967231
  %i.s = or disjoint i64 %2, 64                   ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [168 x i8], ptr @itemstats, i64 %i.s ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %3 = and i64 %indvars.iv, 4294967167
  %i.ab = or disjoint i64 %3, 128                 ; 2 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw [168 x i8], ptr @itemstats, i64 %i.ab ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %4 = and i64 %indvars.iv, 4294967103
  %i.ak = or disjoint i64 %4, 192                 ; 2 uses
  %i.al = getelementptr inbounds nuw [40 x i8], ptr @lru_locks, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw [168 x i8], ptr @itemstats, i64 %i.ak ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ap = load <2 x i64>, ptr %i.n, align 8, !tbaa !18
  %i.aq = add <2 x i64> %i.ap, %i.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.as = load <2 x i64>, ptr %i.o, align 8, !tbaa !18
  %i.at = add <2 x i64> %i.as, %i.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load <2 x i64>, ptr %i.p, align 8, !tbaa !18
  %i.aw = add <2 x i64> %i.av, %i.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ay = load <2 x i64>, ptr %i.q, align 8, !tbaa !18
  %i.az = add <2 x i64> %i.ay, %i.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.bb = load <2 x i64>, ptr %i.r, align 8, !tbaa !18
  %i.bc = add <2 x i64> %i.bb, %i.e
  %i.bd = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #19 ; 0 uses
  %i.be = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.t) #19 ; 0 uses
  %i.bf = load i64, ptr %i.u, align 8, !tbaa !43
  %i.bg = add i64 %i.bf, %i.j
  %i.bh = load i64, ptr %i.v, align 8, !tbaa !39
  %i.bi = add i64 %i.bh, %i.m
  %i.bj = load <2 x i64>, ptr %i.w, align 8, !tbaa !18
  %i.bk = add <2 x i64> %i.bj, %i.aq
  %i.bl = load <2 x i64>, ptr %i.x, align 8, !tbaa !18
  %i.bm = add <2 x i64> %i.bl, %i.at
  %i.bn = load <2 x i64>, ptr %i.y, align 8, !tbaa !18
  %i.bo = add <2 x i64> %i.bn, %i.aw
  %i.bp = load <2 x i64>, ptr %i.z, align 8, !tbaa !18
  %i.bq = add <2 x i64> %i.bp, %i.az
  %i.br = load <2 x i64>, ptr %i.aa, align 8, !tbaa !18
  %i.bs = add <2 x i64> %i.br, %i.bc
  %i.bt = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.t) #19 ; 0 uses
  %i.bu = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ac) #19 ; 0 uses
  %i.bv = load i64, ptr %i.ad, align 8, !tbaa !43
  %i.bw = add i64 %i.bv, %i.bg
  %i.bx = load i64, ptr %i.ae, align 8, !tbaa !39
  %i.by = add i64 %i.bx, %i.bi
  %i.bz = load <2 x i64>, ptr %i.af, align 8, !tbaa !18
  %i.ca = add <2 x i64> %i.bz, %i.bk
  %i.cb = load <2 x i64>, ptr %i.ag, align 8, !tbaa !18
  %i.cc = add <2 x i64> %i.cb, %i.bm
  %i.cd = load <2 x i64>, ptr %i.ah, align 8, !tbaa !18
  %i.ce = add <2 x i64> %i.cd, %i.bo
  %i.cf = load <2 x i64>, ptr %i.ai, align 8, !tbaa !18
  %i.cg = add <2 x i64> %i.cf, %i.bq
  %i.ch = load <2 x i64>, ptr %i.aj, align 8, !tbaa !18
  %i.ci = add <2 x i64> %i.ch, %i.bs
  %i.cj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ac) #19 ; 0 uses
  %i.ck = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.al) #19 ; 0 uses
  %i.cl = load i64, ptr %i.am, align 8, !tbaa !43
  %i.cm = add i64 %i.cl, %i.bw                    ; 2 uses
  %i.cn = load i64, ptr %i.an, align 8, !tbaa !39
  %i.co = add i64 %i.cn, %i.by                    ; 2 uses
  %i.cp = load <2 x i64>, ptr %i.ao, align 8, !tbaa !18
  %i.cq = add <2 x i64> %i.cp, %i.ca              ; 3 uses
  %i.cr = load <2 x i64>, ptr %i.ar, align 8, !tbaa !18
  %i.cs = add <2 x i64> %i.cr, %i.cc              ; 3 uses
  %i.ct = load <2 x i64>, ptr %i.au, align 8, !tbaa !18
  %i.cu = add <2 x i64> %i.ct, %i.ce              ; 3 uses
  %i.cv = load <2 x i64>, ptr %i.ax, align 8, !tbaa !18
  %i.cw = add <2 x i64> %i.cv, %i.cg              ; 3 uses
  %i.cx = load <2 x i64>, ptr %i.ba, align 8, !tbaa !18
  %i.cy = add <2 x i64> %i.cx, %i.ci              ; 3 uses
  %i.cz = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.al) #19 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !115

bb.b:                                             ; preds = %.preheader
  %i.da = extractelement <2 x i64> %i.cq, i64 0
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.12, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.da) #19
  %i.db = extractelement <2 x i64> %i.cq, i64 1
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.14, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.db) #19
  %i.dc = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 135), align 1, !tbaa !61, !range !28, !noundef !29
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.de = extractelement <2 x i64> %i.cs, i64 0
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.15, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.de) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.16, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.cm) #19
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.17, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.co) #19
  %i.df = extractelement <2 x i64> %i.cs, i64 1
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.18, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.df) #19
  %i.dg = extractelement <2 x i64> %i.cu, i64 0
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.19, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.dg) #19
  %i.dh = extractelement <2 x i64> %i.cu, i64 1
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.20, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.dh) #19
  %i.di = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 135), align 1, !tbaa !61, !range !28, !noundef !29
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dk = extractelement <2 x i64> %i.cw, i64 0
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.dk) #19
  %i.dl = extractelement <2 x i64> %i.cw, i64 1
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.22, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.dl) #19
  %i.dm = extractelement <2 x i64> %i.cy, i64 0
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.23, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.dm) #19
  %i.dn = extractelement <2 x i64> %i.cy, i64 1
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.24, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %i.dn) #19
  %i.do = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @bump_buf_lock) #19 ; 0 uses
  %.07.i = load ptr, ptr @bump_buf_head, align 8, !tbaa !63 ; 2 uses
  %.not8.i = icmp eq ptr %.07.i, null
  br i1 %.not8.i, label %lru_total_bumps_dropped.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.010.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.07.i, %bb.e ] ; 3 uses
  %.069.i = phi i64 [ %i.dt, %.lr.ph.i ], [ 0, %bb.e ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i, i64 16 ; 2 uses
  %i.dq = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.dp) #19 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.010.i, i64 64
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !65
  %i.dt = add i64 %i.ds, %.069.i                  ; 2 uses
  %i.du = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dp) #19 ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.0.i = load ptr, ptr %i.dv, align 8, !tbaa !63 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %lru_total_bumps_dropped.exit, label %.lr.ph.i, !llvm.loop !116

lru_total_bumps_dropped.exit:                     ; preds = %.lr.ph.i, %bb.e
  %.06.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.dt, %.lr.ph.i ]
  %i.dw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @bump_buf_lock) #19 ; 0 uses
  tail call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.25, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %.06.lcssa.i) #19
  br label %bb.f

bb.f:                                             ; preds = %lru_total_bumps_dropped.exit, %bb.d
  ret void
}

declare void @append_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @item_stats(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.thread_stats, align 8       ; 4 uses
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %i.b = alloca [128 x i8], align 16              ; 60 uses
  %i.c = alloca [128 x i8], align 16              ; 60 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @threadlocal_stats_aggregate(ptr noundef nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4376 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.x
  %.0262305 = phi i32 [ 0, %bb.a ], [ %i.go, %bb.x ] ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.n
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %.0304 = phi i32 [ 0, %bb.b ], [ %.1270, %bb.n ] ; 5 uses
  %.0256303 = phi i32 [ 0, %bb.b ], [ %.1257269, %bb.n ] ; 5 uses
  %.0258302 = phi i32 [ 0, %bb.b ], [ %.1259268, %bb.n ] ; 6 uses
  %.0260301 = phi i32 [ 0, %bb.b ], [ %i.bl, %bb.n ]
  %.sroa.59.0299 = phi i32 [ 0, %bb.b ], [ %.sroa.59.1, %bb.n ] ; 5 uses
  %.sroa.56.0298 = phi i64 [ 0, %bb.b ], [ %i.bi, %bb.n ]
  %.sroa.54.0297 = phi i64 [ 0, %bb.b ], [ %.sroa.54.1, %bb.n ] ; 4 uses
  %.sroa.52.0296 = phi i64 [ 0, %bb.b ], [ %.sroa.52.1, %bb.n ] ; 4 uses
  %.sroa.50.0295 = phi i64 [ 0, %bb.b ], [ %.sroa.50.1, %bb.n ] ; 4 uses
  %.sroa.48.0294 = phi i64 [ 0, %bb.b ], [ %.sroa.48.1, %bb.n ] ; 4 uses
  %.sroa.45.0293 = phi i64 [ 0, %bb.b ], [ %i.bf, %bb.n ]
  %.sroa.42.0292 = phi i64 [ 0, %bb.b ], [ %i.bc, %bb.n ]
  %.sroa.39.0291 = phi i64 [ 0, %bb.b ], [ %i.az, %bb.n ]
  %.sroa.36.0290 = phi i64 [ 0, %bb.b ], [ %i.aw, %bb.n ]
  %.sroa.33.0289 = phi i64 [ 0, %bb.b ], [ %i.at, %bb.n ]
  %.sroa.30.0288 = phi i64 [ 0, %bb.b ], [ %i.aq, %bb.n ]
  %.sroa.27.0287 = phi i64 [ 0, %bb.b ], [ %i.an, %bb.n ]
  %.sroa.24.0286 = phi i64 [ 0, %bb.b ], [ %i.ak, %bb.n ]
  %.sroa.21.0285 = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.n ]
  %.sroa.18.0284 = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.n ]
  %.sroa.15.0283 = phi i64 [ 0, %bb.b ], [ %i.ab, %bb.n ]
  %.sroa.12.0282 = phi i64 [ 0, %bb.b ], [ %i.y, %bb.n ]
  %.sroa.9.0281 = phi i64 [ 0, %bb.b ], [ %i.v, %bb.n ]
  %.sroa.6.0280 = phi i64 [ 0, %bb.b ], [ %i.s, %bb.n ]
  %.sroa.0.0279 = phi i64 [ 0, %bb.b ], [ %i.p, %bb.n ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @lru_type_map, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26   ; 3 uses
  %i.j = or i32 %i.i, %.0262305
  %i.k = sext i32 %i.j to i64                     ; 11 uses
  %i.l = getelementptr inbounds [40 x i8], ptr @lru_locks, i64 %i.k ; 2 uses
  %i.m = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.l) #19 ; 0 uses
  %i.n = getelementptr inbounds [168 x i8], ptr @itemstats, i64 %i.k ; 16 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !43
  %i.p = add i64 %i.o, %.sroa.0.0279              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !45
  %i.s = add i64 %i.r, %.sroa.6.0280              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39
  %i.v = add i64 %i.u, %.sroa.9.0281              ; 2 uses
end_hunk_0
