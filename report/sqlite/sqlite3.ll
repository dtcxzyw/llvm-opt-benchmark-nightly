Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10220
inline.NumDeleted: 1303
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 375
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@fts3EvalTestExpr:bb.a
  br i1 %i.pe, label %bb.da, label %common.ret

bb.da:                                            ; preds = %bb.cz
  %i.pf = getelementptr inbounds nuw i8, ptr %.tr88107, i64 40
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !2751
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !2745
  %i.pj = icmp eq i64 %i.pg, %i.pi
  br i1 %i.pj, label %bb.db, label %common.ret

bb.db:                                            ; preds = %bb.da
  %i.pk = getelementptr inbounds nuw i8, ptr %.tr88107, i64 32
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !2733
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 48
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !2782
  %i.po = icmp sgt i32 %i.pn, 0
  br label %common.ret
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @fts3PendingListAppendVarint(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2804   ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @sqlite3_initialize(), !inline_history !811
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit:                            ; preds = %bb.b
  %i.c = tail call fastcc ptr @sqlite3Malloc(i64 noundef 148), !inline_history !811 ; 6 uses
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %sqlite3_malloc64.exit.thread, label %bb.c

bb.c:                                             ; preds = %sqlite3_malloc64.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 100, ptr %i.d, align 8, !tbaa !2806
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !2662
  store i64 0, ptr %i.c, align 8, !tbaa !2661
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !2661 ; 2 uses
  %i.h = add nsw i64 %i.g, 11
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !2806 ; 3 uses
  %i.k = icmp sgt i64 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2662
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @sqlite3_initialize(), !inline_history !1230
  %.not.i36 = icmp eq i32 %i.l, 0
  br i1 %.not.i36, label %sqlite3_realloc64.exit, label %sqlite3_realloc64.exit.thread

sqlite3_realloc64.exit:                           ; preds = %bb.e
  %i.m = shl nsw i64 %i.j, 1
  %i.n = add i64 %i.m, 48
  %i.o = tail call fastcc ptr @sqlite3Realloc(ptr noundef nonnull %i.a, i64 noundef %i.n), !inline_history !1230 ; 6 uses
  %.not35.not = icmp eq ptr %i.o, null
  br i1 %.not35.not, label %sqlite3_realloc64.exit.thread, label %bb.k

sqlite3_realloc64.exit.thread:                    ; preds = %bb.e, %sqlite3_realloc64.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !2804   ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %sqlite3_malloc64.exit.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %sqlite3_realloc64.exit.thread
  %i.r = load i32, ptr @sqlite3Config, align 8, !tbaa !693
  %.not.i38 = icmp eq i32 %i.r, 0
  br i1 %.not.i38, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !559
  tail call void %i.t(ptr noundef nonnull %i.s) #57, !inline_history !744
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !633
  %i.v = tail call i32 %i.u(ptr noundef nonnull %i.p) #57, !inline_history !13
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.y = sub nsw i64 %i.x, %i.w
  store i64 %i.y, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  tail call void %i.ab(ptr noundef nonnull %i.p) #57, !inline_history !745
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i, label %sqlite3_malloc64.exit.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  tail call void %i.ad(ptr noundef nonnull %i.ac) #57, !inline_history !746
  br label %sqlite3_malloc64.exit.thread.sink.split

bb.j:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  tail call void %i.ae(ptr noundef nonnull %i.p) #57, !inline_history !745
  br label %sqlite3_malloc64.exit.thread.sink.split

bb.k:                                             ; preds = %sqlite3_realloc64.exit
  %i.af = shl i64 %i.j, 33
  %i.ag = ashr exact i64 %i.af, 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !2806
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !2662
  %.pre53 = load i64, ptr %i.o, align 8, !tbaa !2661
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.c
  %i.ak = phi i64 [ %.pre53, %bb.k ], [ %i.g, %._crit_edge ], [ 0, %bb.c ]
  %i.al = phi ptr [ %i.ai, %bb.k ], [ %.pre, %._crit_edge ], [ %i.e, %bb.c ]
  %.028 = phi ptr [ %i.o, %bb.k ], [ %i.a, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.ak ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.08.i = phi ptr [ %i.an, %bb.l ], [ %i.aq, %bb.m ] ; 3 uses
  %.0.i39 = phi i64 [ %1, %bb.l ], [ %i.ar, %bb.m ] ; 2 uses
  %i.ao = trunc i64 %.0.i39 to i8                 ; 2 uses
  %i.ap = or i8 %i.ao, -128
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  store i8 %i.ap, ptr %.08.i, align 1, !tbaa !729
  %i.ar = lshr i64 %.0.i39, 7                     ; 2 uses
  %.not.i40 = icmp eq i64 %i.ar, 0
  br i1 %.not.i40, label %sqlite3Fts3PutVarint.exit, label %bb.m, !llvm.loop !488

sqlite3Fts3PutVarint.exit:                        ; preds = %bb.m
  store i8 %i.ao, ptr %.08.i, align 1, !tbaa !729
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = shl i64 %i.au, 32
  %i.aw = ashr exact i64 %i.av, 32
  %i.ax = load i64, ptr %.028, align 8, !tbaa !2661
  %i.ay = add nsw i64 %i.ax, %i.aw                ; 2 uses
  store i64 %i.ay, ptr %.028, align 8, !tbaa !2661
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !2662
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ay
  store i8 0, ptr %i.ba, align 1, !tbaa !729
  br label %sqlite3_malloc64.exit.thread.sink.split

sqlite3_malloc64.exit.thread.sink.split:          ; preds = %sqlite3_realloc64.exit.thread, %sqlite3_mutex_enter.exit.i, %bb.i, %bb.j, %sqlite3Fts3PutVarint.exit
  %.sink = phi ptr [ %.028, %sqlite3Fts3PutVarint.exit ], [ null, %bb.j ], [ null, %bb.i ], [ null, %sqlite3_mutex_enter.exit.i ], [ null, %sqlite3_realloc64.exit.thread ]
  %.1.ph = phi i32 [ 0, %sqlite3Fts3PutVarint.exit ], [ 7, %bb.j ], [ 7, %bb.i ], [ 7, %sqlite3_mutex_enter.exit.i ], [ 7, %sqlite3_realloc64.exit.thread ]
  store ptr %.sink, ptr %0, align 8, !tbaa !2804
  br label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit.thread:                     ; preds = %sqlite3_malloc64.exit.thread.sink.split, %bb.b, %sqlite3_malloc64.exit
  %.1 = phi i32 [ 7, %sqlite3_malloc64.exit ], [ 7, %bb.b ], [ %.1.ph, %sqlite3_malloc64.exit.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @fts3EvalNearTrim(i32 noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !566
  %i.i = add nsw i32 %i.h, %0
  %i.j = load i32, ptr %3, align 4, !tbaa !566
  %i.k = add nsw i32 %i.j, %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #57
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2779 ; 7 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !737
  store ptr %i.m, ptr %i.e, align 8, !tbaa !737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !737
  %i.n = load ptr, ptr %2, align 8, !tbaa !737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #57
  store ptr %1, ptr %i.b, align 8, !tbaa !737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #57
  %i.o = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.b, i32 noundef %i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %i.e) ; 0 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !737  ; 8 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !737
  store ptr %i.p, ptr %i.d, align 8, !tbaa !737
  store ptr %i.n, ptr %2, align 8, !tbaa !737
  store ptr %i.m, ptr %i.e, align 8, !tbaa !737
  %i.q = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.c, i32 noundef %i.k, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.e, ptr noundef nonnull %2) ; 0 uses
  %.not.i = icmp eq ptr %i.p, %1
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !737  ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not15.i = icmp eq ptr %i.r, %i.p
  br i1 %.not15.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call fastcc i32 @fts3PoslistMerge(ptr noundef nonnull %i.f, ptr noundef %i.a, ptr noundef %i.d) ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !737
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr %1, align 1, !tbaa !729     ; 2 uses
  %.not20.i.i = icmp eq i8 %i.t, 0
  br i1 %.not20.i.i, label %fts3PoslistCopy.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.u = sext i8 %i.t to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.v = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.u, %.lr.ph.preheader.i.i ]
  %.021.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %1, %.lr.ph.preheader.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 1 ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !729
  %i.y = sext i8 %i.x to i32                      ; 2 uses
  %i.z = and i32 %i.v, -128
  %i.aa = or i32 %i.z, %i.y
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %fts3PoslistCopy.exit.i, label %.lr.ph.i.i, !llvm.loop !490

fts3PoslistCopy.exit.i:                           ; preds = %.lr.ph.i.i, %bb.d
  %.0.lcssa.i.i = phi ptr [ %1, %bb.d ], [ %i.w, %.lr.ph.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = shl i64 %i.ae, 32
  %i.ag = ashr exact i64 %i.af, 32                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %1, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds i8, ptr %i.m, i64 %i.ag
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %.not17.i = icmp eq ptr %i.r, %1
  br i1 %.not17.i, label %fts3PoslistNearMerge.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load i8, ptr %i.p, align 1, !tbaa !729  ; 2 uses
  %.not20.i18.i = icmp eq i8 %i.ai, 0
  br i1 %.not20.i18.i, label %fts3PoslistCopy.exit24.i, label %.lr.ph.preheader.i19.i

.lr.ph.preheader.i19.i:                           ; preds = %bb.f
  %i.aj = sext i8 %i.ai to i32
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.preheader.i19.i
  %i.ak = phi i32 [ %i.an, %.lr.ph.i20.i ], [ %i.aj, %.lr.ph.preheader.i19.i ]
  %.021.i21.i = phi ptr [ %i.al, %.lr.ph.i20.i ], [ %i.p, %.lr.ph.preheader.i19.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.021.i21.i, i64 1 ; 3 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !729
  %i.an = sext i8 %i.am to i32                    ; 2 uses
  %i.ao = and i32 %i.ak, -128
  %i.ap = or i32 %i.ao, %i.an
  %.not.i22.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i22.i, label %fts3PoslistCopy.exit24.i, label %.lr.ph.i20.i, !llvm.loop !490

fts3PoslistCopy.exit24.i:                         ; preds = %.lr.ph.i20.i, %bb.f
  %.0.lcssa.i23.i = phi ptr [ %i.p, %bb.f ], [ %i.al, %.lr.ph.i20.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i23.i, i64 1
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %1 to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = shl i64 %i.at, 32
  %i.av = ashr exact i64 %i.au, 32                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.p, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.m, i64 %i.av
  br label %bb.g

fts3PoslistNearMerge.exit:                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.g:                                             ; preds = %bb.c, %fts3PoslistCopy.exit.i, %fts3PoslistCopy.exit24.i
  %i.ax = phi ptr [ %.pre, %bb.c ], [ %i.ah, %fts3PoslistCopy.exit.i ], [ %i.aw, %fts3PoslistCopy.exit24.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !2779 ; 4 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = add nsw i32 %i.bc, -1                   ; 4 uses
  %i.be = icmp sgt i32 %i.bc, 0
  br i1 %i.be, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !2782 ; 2 uses
  %.not25 = icmp sgt i32 %i.bd, %i.bg
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bh
  %i.bj = sub nuw nsw i32 %i.bg, %i.bd
  %i.bk = zext nneg i32 %i.bj to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bi, i8 0, i64 %i.bk, i1 false)
  store i32 %i.bd, ptr %i.bf, align 8, !tbaa !2782
  %.pre32 = load ptr, ptr %i.l, align 8, !tbaa !2779
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bl = phi ptr [ %.pre32, %bb.i ], [ %i.ay, %bb.h ], [ %i.ay, %bb.g ]
  store ptr %i.bl, ptr %2, align 8, !tbaa !737
  %i.bm = load i32, ptr %i.g, align 8, !tbaa !566
  store i32 %i.bm, ptr %3, align 4, !tbaa !566
  br label %bb.k

bb.k:                                             ; preds = %fts3PoslistNearMerge.exit, %bb.j
  %.0.i29 = phi i32 [ 1, %bb.j ], [ 0, %fts3PoslistNearMerge.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #57
  ret i32 %.0.i29
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3DeleteByRowid(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8, !tbaa !757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #57
  %i.h = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 7, ptr noundef %i.f, ptr noundef nonnull %i.e), !inline_history !6177 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !885  ; 8 uses
  br i1 %i.i, label %bb.b, label %fts3DeleteTerms.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @sqlite3_step(ptr noundef %i.j), !inline_history !6177
  %i.l = icmp eq i32 %i.k, 100
  br i1 %i.l, label %bb.c, label %fts3DeleteTerms.exit.thread63

fts3DeleteTerms.exit.thread63:                    ; preds = %bb.b
  %i.m = call i32 @sqlite3_reset(ptr noundef %i.j), !inline_history !6177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2697
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %langidFromSelect.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !2623
  %i.r = add nsw i32 %i.q, 1
  %i.s = call i32 @sqlite3_column_int(ptr noundef %i.j, i32 noundef %i.r), !inline_history !6177
  br label %langidFromSelect.exit.i

langidFromSelect.exit.i:                          ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.s, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.t = call i64 @sqlite3_column_int64(ptr noundef %i.j, i32 noundef 0), !inline_history !6177 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !2752 ; 2 uses
  %i.w = icmp slt i64 %i.t, %i.v
  br i1 %i.w, label %bb.i, label %bb.e

bb.e:                                             ; preds = %langidFromSelect.exit.i
  %i.x = icmp eq i64 %i.t, %i.v
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.z = load i32, ptr %i.y, align 4, !tbaa !2753
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2644
  %.not.i34.i = icmp eq i32 %i.ac, %.0.i.i
  br i1 %.not.i34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !2754
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !2755
  %i.ah = icmp sgt i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %langidFromSelect.exit.i
  %i.ai = call fastcc i32 @sqlite3Fts3PendingTermsFlush(ptr noundef nonnull %0), !inline_history !6178 ; 2 uses
  %.not22.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not22.not.i.i, label %.lr.ph.i, label %fts3DeleteTerms.exit.thread

.lr.ph.i:                                         ; preds = %bb.i, %bb.h
  store i64 %i.t, ptr %i.u, align 8, !tbaa !2752
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 %.0.i.i, ptr %i.aj, align 8, !tbaa !2644
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 1, ptr %i.ak, align 4, !tbaa !2753
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !2623
  %i.ao = sext i32 %i.an to i64
  %.not32.i = icmp sgt i64 %indvars.iv.i, %i.ao
  br i1 %.not32.i, label %fts3DeleteTerms.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i64 %indvars.iv.i, -1           ; 2 uses
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !2756
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !729
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.av = call ptr @sqlite3_column_text(ptr noundef %i.j, i32 noundef %i.au), !inline_history !6177
  %i.aw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ap
  %i.ax = call fastcc i32 @fts3PendingTermsAdd(ptr noundef nonnull %0, i32 noundef %.0.i.i, ptr noundef %i.av, i32 noundef -1, ptr noundef nonnull %i.aw), !inline_history !6177
  %i.ay = call i32 @sqlite3_column_bytes(ptr noundef %i.j, i32 noundef %i.au), !inline_history !6177
  %i.az = load i32, ptr %i.al, align 8, !tbaa !2623
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !566
  %i.bd = add i32 %i.bc, %i.ay
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !566
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi i32 [ %i.ax, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.be = icmp eq i32 %.1.i, 0
  br i1 %i.be, label %bb.j, label %fts3DeleteTerms.exit.thread, !llvm.loop !6179

fts3DeleteTerms.exit.thread:                      ; preds = %bb.m, %bb.a, %bb.i
  %.0.lcssa.sink.i.ph = phi i32 [ %i.h, %bb.a ], [ %i.ai, %bb.i ], [ %.1.i, %bb.m ]
  %i.bf = call i32 @sqlite3_reset(ptr noundef %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

fts3DeleteTerms.exit:                             ; preds = %bb.j
  %i.bg = call i32 @sqlite3_reset(ptr noundef %i.j), !inline_history !6177 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.n, label %bb.y

bb.n:                                             ; preds = %fts3DeleteTerms.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
end_hunk_0
