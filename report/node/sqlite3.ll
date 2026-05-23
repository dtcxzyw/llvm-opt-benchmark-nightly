inline.NumInlined: 12424
inline.NumDeleted: 1708
begin_hunk_0_@fts5SentenceFinderCb:bb.a
  ]

bb.f:                                             ; preds = %.critedge, %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7783 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !7731 ; 2 uses
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !7739
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %i.p, 0
  %i.t = shl nsw i32 %i.p, 1
  %spec.select.i = select i1 %.not.i, i32 64, i32 %i.t ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7739
  %i.w = tail call i32 @sqlite3_initialize(), !inline_history !7784
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %sqlite3_realloc64.exit.i, label %fts5SentenceFinderAdd.exit

sqlite3_realloc64.exit.i:                         ; preds = %bb.g
  %i.x = sext i32 %spec.select.i to i64
  %i.y = shl nsw i64 %i.x, 2
  %i.z = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.v, i64 noundef %i.y), !inline_history !7784 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %fts5SentenceFinderAdd.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3_realloc64.exit.i
  store ptr %i.z, ptr %i.u, align 8, !tbaa !7739
  store i32 %spec.select.i, ptr %i.o, align 4, !tbaa !7783
  %.pre19.i = load i32, ptr %i.q, align 8, !tbaa !7731
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.ab = phi i32 [ %i.r, %._crit_edge.i ], [ %.pre19.i, %bb.h ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.z, %bb.h ]
  %i.ad = add nsw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.q, align 8, !tbaa !7731
  br label %fts5SentenceFinderAdd.exit.sink.split

bb.j:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7783 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !7731 ; 2 uses
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.k, label %._crit_edge.i34

._crit_edge.i34:                                  ; preds = %bb.j
  %.phi.trans.insert.i35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i36 = load ptr, ptr %.phi.trans.insert.i35, align 8, !tbaa !7739
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not.i38 = icmp eq i32 %i.af, 0
  %i.aj = shl nsw i32 %i.af, 1
  %spec.select.i39 = select i1 %.not.i38, i32 64, i32 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !7739
  %i.am = tail call i32 @sqlite3_initialize(), !inline_history !7784
  %.not.i.i40 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i40, label %sqlite3_realloc64.exit.i41, label %fts5SentenceFinderAdd.exit

sqlite3_realloc64.exit.i41:                       ; preds = %bb.k
  %i.an = sext i32 %spec.select.i39 to i64
  %i.ao = shl nsw i64 %i.an, 2
  %i.ap = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.al, i64 noundef %i.ao), !inline_history !7784 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %fts5SentenceFinderAdd.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3_realloc64.exit.i41
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !7739
  store i32 %spec.select.i39, ptr %i.ae, align 4, !tbaa !7783
  %.pre19.i42 = load i32, ptr %i.ag, align 8, !tbaa !7731
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i34
  %i.ar = phi i32 [ %i.ah, %._crit_edge.i34 ], [ %.pre19.i42, %bb.l ] ; 2 uses
  %i.as = phi ptr [ %.pre.i36, %._crit_edge.i34 ], [ %i.ap, %bb.l ]
  %i.at = add nsw i32 %i.ar, 1
  store i32 %i.at, ptr %i.ag, align 8, !tbaa !7731
  br label %fts5SentenceFinderAdd.exit.sink.split

fts5SentenceFinderAdd.exit.sink.split:            ; preds = %bb.i, %bb.m
  %.sink64 = phi i32 [ %i.ar, %bb.m ], [ %i.ab, %bb.i ]
  %.sink62 = phi ptr [ %i.as, %bb.m ], [ %i.ac, %bb.i ]
  %.sink = phi i32 [ 0, %bb.m ], [ %i.c, %bb.i ]
  %i.au = sext i32 %.sink64 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.sink62, i64 %i.au
  store i32 %.sink, ptr %i.av, align 4, !tbaa !5
  br label %fts5SentenceFinderAdd.exit

fts5SentenceFinderAdd.exit:                       ; preds = %fts5SentenceFinderAdd.exit.sink.split, %bb.c, %sqlite3_realloc64.exit.i41, %bb.k, %sqlite3_realloc64.exit.i, %bb.g, %._crit_edge.split.loop.exit58, %.critedge
  %.133 = phi i32 [ 7, %bb.g ], [ 0, %._crit_edge.split.loop.exit58 ], [ 0, %.critedge ], [ 7, %bb.k ], [ 7, %sqlite3_realloc64.exit.i ], [ 0, %bb.c ], [ 7, %sqlite3_realloc64.exit.i41 ], [ 0, %fts5SentenceFinderAdd.exit.sink.split ]
  %i.aw = load i32, ptr %0, align 8, !tbaa !7729
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %0, align 8, !tbaa !7729
  br label %bb.n

bb.n:                                             ; preds = %fts5SentenceFinderAdd.exit, %bb.a
  %.2 = phi i32 [ %.133, %fts5SentenceFinderAdd.exit ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts5SnippetScore(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull writeonly captures(none) %7, ptr noundef writeonly captures(address_is_null) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #71
  store i32 0, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #71
  store i32 0, ptr %i.b, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #71
  store i32 0, ptr %i.c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #71
  %i.e = sext i32 %5 to i64
  %i.f = sext i32 %6 to i64                       ; 2 uses
  %i.g = add nsw i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7728
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.d) #71 ; 2 uses
  %i.k = load i32, ptr %i.d, align 4, !tbaa !5
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = icmp eq i32 %i.j, 0
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.03653 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ] ; 2 uses
  %.03752 = phi i32 [ 0, %.lr.ph ], [ %.138, %bb.e ] ; 3 uses
  %.03951 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.e ] ; 4 uses
  %.04150 = phi i32 [ 0, %.lr.ph ], [ %i.ai, %bb.e ] ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !7737
  %i.r = call i32 %i.q(ptr noundef %1, i32 noundef %.04150, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #71 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0                      ; 2 uses
  %i.t = load i32, ptr %i.b, align 4
  %i.u = icmp eq i32 %i.t, %4
  %or.cond = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.c, align 4, !tbaa !5    ; 4 uses
  %.not45 = icmp sge i32 %i.v, %5
  %i.w = sext i32 %i.v to i64
  %i.x = icmp sgt i64 %i.g, %i.w
  %or.cond49 = select i1 %.not45, i1 %i.x, i1 false
  br i1 %or.cond49, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.a, align 4, !tbaa !5    ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %3, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !227
  %.not46 = icmp eq i8 %i.ab, 0
  %i.ac = select i1 %.not46, i32 1000, i32 1
  %i.ad = add nsw i32 %i.ac, %.03752
  store i8 1, ptr %i.aa, align 1, !tbaa !227
  %i.ae = icmp slt i32 %.03951, 0
  %spec.select = select i1 %i.ae, i32 %i.v, i32 %.03951
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !7741
  %i.ag = call i32 %i.af(ptr noundef %1, i32 noundef %i.y) #71
  %i.ah = add nsw i32 %i.ag, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.2 = phi i32 [ %spec.select, %bb.d ], [ %.03951, %bb.b ], [ %.03951, %bb.c ] ; 2 uses
  %.138 = phi i32 [ %i.ad, %bb.d ], [ %.03752, %bb.b ], [ %.03752, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.ah, %bb.d ], [ %.03653, %bb.b ], [ %.03653, %bb.c ] ; 2 uses
  %i.ai = add nuw nsw i32 %.04150, 1              ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !5
  %i.ak = icmp slt i32 %i.ai, %i.aj
  %i.al = and i1 %i.ak, %i.s
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !7742

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.039.lcssa = phi i32 [ -1, %bb.a ], [ %.2, %bb.e ] ; 2 uses
  %.037.lcssa = phi i32 [ 0, %bb.a ], [ %.138, %bb.e ]
  %.036.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ]
  %.035.lcssa = phi i32 [ %i.j, %bb.a ], [ %i.r, %bb.e ]
  store i32 %.037.lcssa, ptr %7, align 4, !tbaa !5
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %.neg = add i32 %.039.lcssa, %6
  %i.am = sub i32 %.neg, %.036.lcssa
  %.neg44 = sdiv i32 %i.am, -2
  %i.an = add i32 %.neg44, %.039.lcssa
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = add nsw i64 %i.ao, %i.f
  %i.aq = sext i32 %2 to i64
  %i.ar = icmp sgt i64 %i.ap, %i.aq
  %i.as = sub nsw i32 %2, %6
  %9 = sext i32 %i.as to i64
  %.0 = select i1 %i.ar, i64 %9, i64 %i.ao
  %spec.store.select = call i64 @llvm.smax.i64(i64 %.0, i64 0)
  %10 = trunc nuw nsw i64 %spec.store.select to i32
  store i32 %10, ptr %8, align 4, !tbaa !5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #71
  ret i32 %.035.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts5CInstIterInit(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull initializes((0, 40)) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr %0, ptr %3, align 8, !tbaa !7754
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !7755
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 %2, ptr %i.f, align 8, !tbaa !7757
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7728
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.j = tail call i32 %i.h(ptr noundef %1, ptr noundef nonnull %i.i) #71 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %fts5CInstIterNext.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  store i32 -1, ptr %i.l, align 4, !tbaa !7750
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 -1, ptr %i.m, align 8, !tbaa !7751
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7752 ; 2 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !7753
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %fts5CInstIterNext.exit

.lr.ph:                                           ; preds = %bb.b, %bb.h
  %i.r = phi i32 [ %i.aq, %bb.h ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #71
  %i.s = load ptr, ptr %3, align 8, !tbaa !7754
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7737
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !7755
  %i.w = call i32 %i.u(ptr noundef %i.v, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #71, !inline_history !7756 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %.critedge.sink.split.i

bb.c:                                             ; preds = %.lr.ph
  %i.y = load i32, ptr %i.b, align 4, !tbaa !5
  %i.z = load i32, ptr %i.f, align 8, !tbaa !7757
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !5
  %i.ac = add nsw i32 %i.ab, -1
  %i.ad = load ptr, ptr %3, align 8, !tbaa !7754
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !7741
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !7755
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !5
  %i.ai = call i32 %i.af(ptr noundef %i.ag, i32 noundef %i.ah) #71, !inline_history !7756
  %i.aj = add nsw i32 %i.ac, %i.ai                ; 2 uses
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !7750
  %i.al = icmp slt i32 %i.ak, 0
  %i.am = load i32, ptr %i.c, align 4, !tbaa !5   ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.am, ptr %i.l, align 4, !tbaa !7750
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.an = load i32, ptr %i.m, align 8, !tbaa !7751 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, %i.an
  br i1 %.not.i, label %.critedge.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp sgt i32 %i.aj, %i.an
  br i1 %i.ao, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.e
  store i32 %i.aj, ptr %i.m, align 8, !tbaa !7751
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %bb.g, %bb.c
  %i.ap = load i32, ptr %i.n, align 4, !tbaa !7752
  %i.aq = add nsw i32 %i.ap, 1                    ; 3 uses
  store i32 %i.aq, ptr %i.n, align 4, !tbaa !7752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #71
  %i.ar = load i32, ptr %i.i, align 8, !tbaa !7753
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph, label %fts5CInstIterNext.exit

.critedge.sink.split.i:                           ; preds = %bb.f, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #71
  br label %fts5CInstIterNext.exit

fts5CInstIterNext.exit:                           ; preds = %bb.h, %bb.b, %.critedge.sink.split.i, %bb.a
  %.0 = phi i32 [ %i.j, %bb.a ], [ %i.w, %.critedge.sink.split.i ], [ 0, %bb.b ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @fts5HighlightCb(ptr noundef %0, i32 noundef %1, ptr readnone captures(none) %2, i32 %3, i32 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = and i32 %1, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7785 ; 10 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !7785
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7726 ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %0, align 8, !tbaa !7746   ; 3 uses
  %i.l = icmp slt i32 %i.f, %i.k
  %i.m = icmp sgt i32 %i.f, %i.i
  %or.cond = or i1 %i.m, %i.l
  br i1 %or.cond, label %bb.ap, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not77 = icmp ne i32 %i.k, 0
  %i.n = icmp eq i32 %i.f, %i.k
  %or.cond82 = select i1 %.not77, i1 %i.n, i1 false
  br i1 %or.cond82, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %4, ptr %i.o, align 4, !tbaa !7761
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !7760
  %.not78 = icmp eq i32 %i.q, 0
  br i1 %.not78, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7749 ; 2 uses
  %.not79 = icmp sle i32 %i.f, %i.s
  %i.t = icmp slt i32 %i.s, 0
  %or.cond83 = or i1 %.not79, %i.t
  br i1 %or.cond83, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7761
  %i.w = icmp sgt i32 %4, %i.v
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7725 ; 3 uses
  %.not125 = icmp eq ptr %i.y, null
  br i1 %.not125, label %fts5HighlightAppend.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #72, !inline_history !7747
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7748
  %i.ad = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1752, ptr noundef %i.ac, i32 noundef %i.aa, ptr noundef nonnull %i.y), !inline_history !7747 ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !7748
  %i.ae = icmp eq ptr %i.ad, null
  %spec.select = select i1 %i.ae, i32 7, i32 0
  br label %fts5HighlightAppend.exit

fts5HighlightAppend.exit:                         ; preds = %bb.j, %bb.i
  %.7 = phi i32 [ 0, %bb.i ], [ %spec.select, %bb.j ]
  store i32 0, ptr %i.p, align 8, !tbaa !7760
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %fts5HighlightAppend.exit, %bb.h, %bb.f
  %i.af = phi i1 [ true, %bb.f ], [ true, %fts5HighlightAppend.exit ], [ false, %bb.h ], [ false, %bb.g ] ; 2 uses
  %.0114 = phi i32 [ 0, %bb.f ], [ %.7, %fts5HighlightAppend.exit ], [ 0, %bb.h ], [ 0, %bb.g ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7749
end_hunk_0
