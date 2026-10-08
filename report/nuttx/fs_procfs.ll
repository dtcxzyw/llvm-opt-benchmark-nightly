Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/fs_procfs?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@procfs_open:bb.a
  %.018 = phi i32 [ 0, %bb.i ], [ %.1, %bb.j ], [ -21, %bb.c ], [ -21, %bb.c ]
  ret i32 %.018
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @procfs_close(ptr noundef %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 472, ptr noundef nonnull @.str.16) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ 0, %bb.e ]
  store ptr null, ptr %i.a, align 8
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal i64 @procfs_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.17) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i64 %i.g(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #14
  ret i64 %i.h
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal i64 @procfs_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 524, ptr noundef nonnull @.str.17) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i64 %i.g(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.h, %bb.d ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @procfs_ioctl(ptr nofree readnone captures(none) %0, i32 %1, i64 %2) #4 {
bb.a:
  ret i32 -25
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @procfs_poll(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 546, ptr noundef nonnull @.str.17) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ -38, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @procfs_dup(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 588, ptr noundef nonnull @.str.18) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef %1) #14
  ret i32 %i.h
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal noundef i32 @procfs_fstat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 613, ptr noundef nonnull @.str.17) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %1, i8 0, i64 88, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 33060, ptr %i.c, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %.not6 = icmp eq ptr %i.h, null
  %spec.store.select = select i1 %.not6, i32 33060, i32 33206
  store i32 %spec.store.select, ptr %i.c, align 8
  ret i32 0
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @procfs_opendir(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond.not = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %1, null
  %spec.select = or i1 %i.c, %or.cond.not
  br i1 %spec.select, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 649, ptr noundef nonnull @.str.19) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.f = load volatile i32, ptr @g_npidhash, align 4 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = add nsw i64 %i.h, 56
  %i.j = tail call noalias ptr @zalloc(i64 noundef %i.i) #17 ; 9 uses
  %.not72.not = icmp eq ptr %i.j, null
  br i1 %.not72.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18 ; 3 uses
  store i16 0, ptr %i.k, align 2
  %i.l = trunc i32 %i.f to i16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 2 uses
  store i16 %i.l, ptr %i.m, align 4
  tail call void @nxsched_foreach(ptr noundef nonnull @procfs_enum, ptr noundef nonnull %i.j) #14
  %i.n = load i16, ptr %i.k, align 2              ; 3 uses
  store i16 %i.n, ptr %i.m, align 4
  store i16 0, ptr %i.k, align 2
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %procfs_sort_pid.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %invariant.op.i = add nsw i32 %i.o, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv26.in.i = phi i32 [ %i.o, %.preheader.lr.ph.i ], [ %indvars.iv26.i, %._crit_edge.i ]
  %.01923.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.x, %._crit_edge.i ] ; 2 uses
  %indvars.iv26.i = add nsw i32 %indvars.iv26.in.i, -1 ; 2 uses
  %i.q = icmp slt i32 %.01923.i, %invariant.op.i
  br i1 %i.q, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %indvars.iv26.i to i64
  %.pre.i = load i32, ptr %i.p, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %i.r = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.w, %bb.g ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = icmp sgt i32 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  store i32 %i.t, ptr %i.v, align 4
  store i32 %i.r, ptr %i.s, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.w = phi i32 [ %i.t, %.lr.ph.i ], [ %i.r, %bb.f ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.g, %.preheader.i
  %i.x = add nuw nsw i32 %.01923.i, 1             ; 2 uses
  %exitcond28.not.i = icmp eq i32 %i.x, %i.o
  br i1 %exitcond28.not.i, label %procfs_sort_pid.exit, label %.preheader.i, !llvm.loop !11

procfs_sort_pid.exit:                             ; preds = %._crit_edge.i, %bb.e
  %3 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @.str.20, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i8 0, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr null, ptr %5, align 8
  store ptr %i.j, ptr %2, align 8
  br label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.y = tail call i64 @strlen(ptr noundef nonnull %1) #16 ; 2 uses
  %sext = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext, 32                 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.r
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr @g_procfs_entries, i64 %indvars.iv ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = tail call i32 @fnmatch(ptr noundef %i.ab, ptr noundef nonnull %1, i32 noundef 0) #14
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call i32 %i.ah(ptr noundef nonnull %1, ptr noundef %2) #14 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %2, align 8               ; 2 uses
  %.not71 = icmp eq ptr %i.al, null
  br i1 %.not71, label %bb.m, label %bb.n, !prof !7

bb.m:                                             ; preds = %bb.l
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 735, ptr noundef nonnull @.str.22) #15
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.aa, ptr %i.am, align 8
  br label %.critedge

bb.o:                                             ; preds = %bb.i
  %i.an = tail call i32 @strncmp(ptr noundef %i.ab, ptr noundef nonnull %1, i64 noundef range(i64 -2147483648, 2147483648) %i.z) #16
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds i8, ptr %i.ab, i64 %i.z
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, 47
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = tail call noalias dereferenceable_or_null(48) ptr @zalloc(i64 noundef 48) #17 ; 9 uses
  %.not69.not = icmp eq ptr %i.as, null
  br i1 %.not69.not, label %.critedge, label %.critedge74.thread78

.critedge74.thread78:                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 1, ptr %i.at, align 8
  %i.au = trunc i64 %indvars.iv to i16            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 18
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 34
  store i16 %i.au, ptr %i.aw, align 2
  %i.ax = trunc i64 %i.y to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 33
  store i8 %i.ax, ptr %i.ay, align 1
  %6 = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr @.str.20, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i8 0, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr null, ptr %8, align 8
  store ptr %i.as, ptr %2, align 8
  br label %.critedge

bb.r:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %.critedge, label %bb.i, !llvm.loop !12

.critedge:                                        ; preds = %bb.r, %procfs_sort_pid.exit, %.critedge74.thread78, %bb.n, %bb.k, %bb.j, %bb.q, %bb.d
  %.4 = phi i32 [ -12, %bb.q ], [ -12, %bb.d ], [ 0, %procfs_sort_pid.exit ], [ 0, %bb.n ], [ %i.aj, %bb.k ], [ -2, %bb.j ], [ 0, %.critedge74.thread78 ], [ -2, %bb.r ]
  ret i32 %.4
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @procfs_closedir(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %.not11 = or i1 %i.a, %i.b
  br i1 %.not11, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 804, ptr noundef nonnull @.str.24) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 %i.h(ptr noundef nonnull %1) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  tail call void @free(ptr noundef nonnull %1) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.i, %bb.e ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @procfs_readdir(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %.not105 = or i1 %i.a, %i.b
  br i1 %.not105, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 839, ptr noundef nonnull @.str.24) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4              ; 2 uses
  %.not106 = icmp ult i16 %i.g, %i.i
  br i1 %.not106, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %narrow = sub nuw i16 %i.g, %i.i                ; 2 uses
  %i.j = icmp ult i16 %narrow, 12
  br i1 %i.j, label %.lr.ph125, label %.thread

.lr.ph125:                                        ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = zext nneg i16 %narrow to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph125, %.critedge.thread
  %indvars.iv = phi i64 [ %i.m, %.lr.ph125 ], [ %indvars.iv.next, %.critedge.thread ] ; 4 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr @g_procfs_entries, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.191 = phi ptr [ %i.o, %bb.f ], [ %i.q, %bb.h ] ; 2 uses
  %i.p = load i8, ptr %.191, align 1
  switch i8 %i.p, label %bb.h [
    i8 47, label %.critedge
    i8 0, label %.critedge
    i8 42, label %.critedge.thread
    i8 91, label %.critedge.thread
    i8 63, label %.critedge.thread
  ]

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.191, i64 1
  br label %bb.g, !llvm.loop !13

.critedge:                                        ; preds = %bb.g, %bb.g
  %i.r = load i8, ptr %i.k, align 8               ; 2 uses
  %.not111 = icmp eq i8 %i.r, 0
  br i1 %.not111, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.s = load ptr, ptr %i.l, align 8
  %i.t = zext i8 %i.r to i64
  %i.u = tail call i32 @strncmp(ptr noundef %i.o, ptr noundef %i.s, i64 noundef range(i64 -2147483648, 2147483648) %i.t) #16
  %.not112 = icmp eq i32 %i.u, 0
  br i1 %.not112, label %.critedge.thread, label %bb.j

.critedge.thread:                                 ; preds = %bb.g, %bb.g, %bb.g, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %.thread, label %bb.f, !llvm.loop !14

bb.j:                                             ; preds = %bb.i, %.critedge
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  %i.w = tail call i64 @strcspn(ptr noundef %i.o, ptr noundef nonnull @.str.25) #16 ; 2 uses
  %i.x = trunc i64 %i.w to i8
  store i8 %i.x, ptr %i.k, align 8
  store ptr %i.o, ptr %i.l, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.z = and i64 %i.w, 255
  %i.aa = add nuw nsw i64 %i.z, 1
  %i.ab = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef %i.aa) #14 ; 0 uses
  switch i32 %i.v, label %bb.k [
    i32 7, label %bb.l
    i32 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.k, align 8
  %i.ad = zext i8 %i.ac to i64
  %i.ae = tail call i64 @strlen(ptr noundef nonnull %i.o) #16
  %.not113 = icmp eq i64 %i.ae, %i.ad
  %spec.select143 = select i1 %.not113, i8 8, i8 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.j
  %.sink141 = phi i8 [ %spec.select143, %bb.k ], [ 4, %bb.j ], [ 4, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %.sink141, ptr %i.af, align 4
  %i.ag = load i16, ptr %i.h, align 4
  %i.ah = trunc i64 %indvars.iv to i16
  %i.ai = add i16 %i.ag, %i.ah
  store i16 %i.ai, ptr %i.f, align 2
  br label %.thread

bb.m:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = zext i16 %i.g to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = tail call ptr @nxsched_get_tcb(i32 noundef %i.am) #14
  %.not107.not = icmp eq ptr %i.an, null
  br i1 %.not107.not, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 4, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.aq = tail call i32 (ptr, i64, ptr, ...) @procfs_snprintf(ptr noundef nonnull %i.ap, i64 noundef 33, ptr noundef nonnull @.str.26, i32 noundef %i.am) #14 ; 0 uses
  %i.ar = add nuw i16 %i.g, 1
  store i16 %i.ar, ptr %i.f, align 2
  br label %.thread

bb.o:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 4 uses
  %i.aw = load i16, ptr %i.av, align 2            ; 2 uses
  %i.ax = icmp ult i16 %i.aw, 12
  br i1 %i.ax, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.az = load i16, ptr %i.ay, align 2            ; 2 uses
  %i.ba = icmp ult i16 %i.az, 12
  br i1 %i.ba, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bb = zext nneg i16 %i.aw to i64
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr @g_procfs_entries, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = zext nneg i16 %i.az to i64
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr @g_procfs_entries, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 33 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = tail call i32 @strncmp(ptr noundef %i.bd, ptr noundef %i.bg, i64 noundef range(i64 -2147483648, 2147483648) %i.bj) #16
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.s, label %.thread

end_hunk_0
