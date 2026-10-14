Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@porterCreate:bb.a
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @porterDestroy(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.d(ptr noundef nonnull %i.c) #57, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #57, !inline_history !13
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.i = sub nsw i64 %i.h, %i.g
  store i64 %i.i, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.k = add nsw i64 %i.j, -1
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.l(ptr noundef nonnull %0) #57, !inline_history !749
  %i.m = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.n(ptr noundef nonnull %i.m) #57, !inline_history !750
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.o(ptr noundef nonnull %0) #57, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @porterOpen(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !785
  %.not.i.not = icmp eq i32 %i.a, 0
  br i1 %.not.i.not, label %sqlite3_malloc.exit, label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit:                              ; preds = %bb.a
  %i.b = tail call fastcc ptr @sqlite3Malloc(i64 noundef 48), !inline_history !785 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_malloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !2694
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #58
  %i.h = trunc i64 %i.g to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.sink = phi i32 [ %i.h, %bb.d ], [ 0, %bb.b ], [ %2, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sink, ptr %i.i, align 8, !tbaa !2695
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %i.j, align 4, !tbaa !2696
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !2697
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.l, align 8, !tbaa !2698
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.m, align 8, !tbaa !2699
  store ptr %i.b, ptr %3, align 8, !tbaa !2595
  br label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit.thread:                       ; preds = %bb.a, %sqlite3_malloc.exit, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 7, %sqlite3_malloc.exit ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @porterClose(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2698 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.f(ptr noundef nonnull %i.e) #57, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.b) #57, !inline_history !13
  %i.i = sext i32 %i.h to i64
  %i.j = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.k = sub nsw i64 %i.j, %i.i
  store i64 %i.k, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.m = add nsw i64 %i.l, -1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.n(ptr noundef nonnull %i.b) #57, !inline_history !749
  %i.o = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.p(ptr noundef nonnull %i.o) #57, !inline_history !750
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.q(ptr noundef nonnull %i.b) #57, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.f, %bb.e, %sqlite3_mutex_enter.exit.i, %bb.a
  %i.r = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i3 = icmp eq i32 %i.r, 0
  br i1 %.not.i3, label %bb.j, label %bb.g

bb.g:                                             ; preds = %sqlite3_free.exit
  %i.s = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4, label %sqlite3_mutex_enter.exit.i5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.t(ptr noundef nonnull %i.s) #57, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i5

sqlite3_mutex_enter.exit.i5:                      ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.v = tail call i32 %i.u(ptr noundef nonnull %0) #57, !inline_history !13
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.y = sub nsw i64 %i.x, %i.w
  store i64 %i.y, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ab(ptr noundef nonnull %0) #57, !inline_history !749
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i6, label %sqlite3_free.exit7, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i5
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ad(ptr noundef nonnull %i.ac) #57, !inline_history !750
  br label %sqlite3_free.exit7

bb.j:                                             ; preds = %sqlite3_free.exit
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ae(ptr noundef nonnull %0) #57, !inline_history !749
  br label %sqlite3_free.exit7

sqlite3_free.exit7:                               ; preds = %sqlite3_mutex_enter.exit.i5, %bb.i, %bb.j
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 102) i32 @porterNext(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 61 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2694 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.e, align 4, !tbaa !2696 ; 2 uses
  %i.l = load i32, ptr %i.f, align 8, !tbaa !2695 ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.preheader, label %.thread449

.lr.ph.preheader:                                 ; preds = %bb.a, %.backedge
  %i.n = phi i32 [ %i.aun, %.backedge ], [ %i.l, %bb.a ] ; 4 uses
  %i.o = phi i32 [ %i.aum, %.backedge ], [ %i.k, %bb.a ] ; 3 uses
  %i.p = sext i32 %i.o to i64                     ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !733   ; 2 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %.lr.ph940, label %.critedge

.lr.ph:                                           ; preds = %.critedge3
  %i.t = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.next
  %i.u = load i8, ptr %i.t, align 1, !tbaa !733   ; 2 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %.lr.ph940, label %.critedge, !llvm.loop !5884

.lr.ph940:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.w = phi i8 [ %i.u, %.lr.ph ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv939 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %.promoted558705938 = phi i32 [ %i.ac, %.lr.ph ], [ %i.o, %.lr.ph.preheader ]
  %i.x = icmp samesign ult i8 %i.w, 48
  br i1 %i.x, label %.critedge3, label %bb.b

bb.b:                                             ; preds = %.lr.ph940
  %i.y = zext nneg i8 %i.w to i64
  %i.z = getelementptr i8, ptr @porterIdChar, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -48
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !733
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %.critedge3, label %.critedge

.critedge3:                                       ; preds = %.lr.ph940, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv939, 1 ; 4 uses
  %i.ac = trunc i64 %indvars.iv.next to i32       ; 4 uses
  store i32 %i.ac, ptr %i.e, align 4, !tbaa !2696
  %exitcond.not = icmp eq i32 %i.n, %i.ac
  br i1 %exitcond.not, label %.backedge, label %.lr.ph, !llvm.loop !5884

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.lr.ph.preheader
  %.promoted558705.lcssa = phi i32 [ %i.o, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ], [ %.promoted558705938, %bb.b ] ; 3 uses
  %indvars.iv.lcssa = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv939, %bb.b ] ; 4 uses
  %i.ad = trunc nsw i64 %indvars.iv.lcssa to i32  ; 3 uses
  %i.ae = icmp slt i32 %.promoted558705.lcssa, %i.n
  br i1 %i.ae, label %.lr.ph559.preheader, label %.critedge5

.lr.ph559.preheader:                              ; preds = %.critedge
  %i.af = sext i32 %.promoted558705.lcssa to i64
  br label %.lr.ph559

.lr.ph559:                                        ; preds = %.lr.ph559.preheader, %.critedge67
  %indvars.iv653 = phi i64 [ %i.af, %.lr.ph559.preheader ], [ %indvars.iv.next654, %.critedge67 ] ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv653
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !733 ; 3 uses
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %bb.c, label %.critedge67

bb.c:                                             ; preds = %.lr.ph559
  %i.aj = icmp samesign ult i8 %i.ah, 48
  br i1 %i.aj, label %.critedge5.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = zext nneg i8 %i.ah to i64
  %i.al = getelementptr i8, ptr @porterIdChar, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -48
  %i.an = load i8, ptr %i.am, align 1, !tbaa !733
  %.not63.not = icmp eq i8 %i.an, 0
  br i1 %.not63.not, label %.critedge5.loopexit.split.loop.exit877, label %.critedge67

.critedge67:                                      ; preds = %.lr.ph559, %bb.d
  %indvars.iv.next654 = add nsw i64 %indvars.iv653, 1 ; 2 uses
  %i.ao = trunc i64 %indvars.iv.next654 to i32    ; 2 uses
  store i32 %i.ao, ptr %i.e, align 4, !tbaa !2696
  %exitcond657.not = icmp eq i32 %i.n, %i.ao
  br i1 %exitcond657.not, label %.critedge5, label %.lr.ph559, !llvm.loop !5885

.critedge5.loopexit.split.loop.exit:              ; preds = %bb.c
  %i.ap = trunc nsw i64 %indvars.iv653 to i32
  br label %.critedge5

.critedge5.loopexit.split.loop.exit877:           ; preds = %bb.d
  %i.aq = trunc nsw i64 %indvars.iv653 to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge67, %.critedge5.loopexit.split.loop.exit, %.critedge5.loopexit.split.loop.exit877, %.critedge
  %.lcssa496 = phi i32 [ %.promoted558705.lcssa, %.critedge ], [ %i.ap, %.critedge5.loopexit.split.loop.exit ], [ %i.aq, %.critedge5.loopexit.split.loop.exit877 ], [ %i.n, %.critedge67 ] ; 2 uses
  %.not65 = icmp sgt i32 %.lcssa496, %i.ad
  br i1 %.not65, label %bb.e, label %.backedge

bb.e:                                             ; preds = %.critedge5
  %i.ar = sub nsw i32 %.lcssa496, %i.ad           ; 12 uses
  %i.as = load i32, ptr %i.g, align 8, !tbaa !2699
  %i.at = icmp sgt i32 %i.ar, %i.as
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !2698 ; 2 uses
  br i1 %i.at, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.au = add nuw nsw i32 %i.ar, 20               ; 2 uses
  store i32 %i.au, ptr %i.g, align 8, !tbaa !2699
  %i.av = tail call i32 @sqlite3_initialize(), !inline_history !1234
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.thread449

sqlite3_realloc64.exit:                           ; preds = %bb.f
  %i.aw = sext i32 %i.au to i64
  %i.ax = tail call fastcc ptr @sqlite3Realloc(ptr noundef %.pre, i64 noundef %i.aw), !inline_history !1234 ; 3 uses
  %.not64.not = icmp eq ptr %i.ax, null
  br i1 %.not64.not, label %.thread449, label %bb.g

bb.g:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.ax, ptr %i.h, align 8, !tbaa !2698
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ay = phi ptr [ %i.ax, %bb.g ], [ %.pre, %bb.e ] ; 25 uses
  %i.az = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.lcssa ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #57
  %i.ba = add nsw i32 %i.ar, -21
  %or.cond.i = icmp ult i32 %i.ba, -18
  %wide.trip.count.i.i = zext i32 %i.ar to i64    ; 15 uses
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %min.iters.check972 = icmp ult i32 %i.ar, 8
  br i1 %min.iters.check972, label %.lr.ph.i.i.preheader1026, label %vector.memcheck969

vector.memcheck969:                               ; preds = %.lr.ph.i.i.preheader
  %6 = ptrtoaddr ptr %i.ay to i64
  %7 = ptrtoaddr ptr %i.d to i64
  %i.bb = add i64 %indvars.iv.lcssa, %7
  %i.bc = sub i64 %i.bb, %6
  %diff.check970 = icmp ugt i64 %i.bc, -8
  br i1 %diff.check970, label %.lr.ph.i.i.preheader1026, label %vector.ph973

vector.ph973:                                     ; preds = %vector.memcheck969
  %n.vec974 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body975

vector.body975:                                   ; preds = %vector.body975, %vector.ph973
  %index976 = phi i64 [ 0, %vector.ph973 ], [ %index.next981, %vector.body975 ] ; 3 uses
  %vec.phi977 = phi <4 x i1> [ zeroinitializer, %vector.ph973 ], [ %i.br, %vector.body975 ]
  %vec.phi978 = phi <4 x i1> [ zeroinitializer, %vector.ph973 ], [ %i.bs, %vector.body975 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %index976 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %wide.load979 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !733 ; 4 uses
  %wide.load980 = load <4 x i8>, ptr %i.be, align 1, !tbaa !733 ; 4 uses
  %i.bf = add <4 x i8> %wide.load979, splat (i8 -65)
  %i.bg = add <4 x i8> %wide.load980, splat (i8 -65)
  %i.bh = icmp ult <4 x i8> %i.bf, splat (i8 26)
  %i.bi = icmp ult <4 x i8> %i.bg, splat (i8 26)
  %i.bj = or disjoint <4 x i8> %wide.load979, splat (i8 32)
  %i.bk = or disjoint <4 x i8> %wide.load980, splat (i8 32)
  %i.bl = select <4 x i1> %i.bh, <4 x i8> %i.bj, <4 x i8> %wide.load979
  %i.bm = select <4 x i1> %i.bi, <4 x i8> %i.bk, <4 x i8> %wide.load980
  %i.bn = add <4 x i8> %wide.load979, splat (i8 -48)
  %i.bo = icmp ult <4 x i8> %i.bn, splat (i8 10)
  %i.bp = add <4 x i8> %wide.load980, splat (i8 -48)
  %i.bq = icmp ult <4 x i8> %i.bp, splat (i8 10)
  %i.br = or <4 x i1> %vec.phi977, %i.bo          ; 2 uses
  %i.bs = or <4 x i1> %vec.phi978, %i.bq          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index976 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store <4 x i8> %i.bl, ptr %i.bt, align 1, !tbaa !733
  store <4 x i8> %i.bm, ptr %i.bu, align 1, !tbaa !733
  %index.next981 = add nuw i64 %index976, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next981, %n.vec974
  br i1 %i.bv, label %middle.block982, label %vector.body975, !llvm.loop !5886

middle.block982:                                  ; preds = %vector.body975
  %bin.rdx983 = or <4 x i1> %i.bs, %i.br
  %bin.rdx983.fr = freeze <4 x i1> %bin.rdx983
  %i.bw = bitcast <4 x i1> %bin.rdx983.fr to i4
  %.not1022 = icmp ne i4 %i.bw, 0
  %rdx.select984 = zext i1 %.not1022 to i32       ; 2 uses
  %cmp.n985 = icmp eq i64 %n.vec974, %wide.trip.count.i.i
  br i1 %cmp.n985, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader1026

.lr.ph.i.i.preheader1026:                         ; preds = %vector.memcheck969, %.lr.ph.i.i.preheader, %middle.block982
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck969 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec974, %middle.block982 ] ; 5 uses
  %.045.i.i.ph = phi i32 [ 0, %vector.memcheck969 ], [ 0, %.lr.ph.i.i.preheader ], [ %rdx.select984, %middle.block982 ] ; 2 uses
  %xtraiter1089 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod1090.not = icmp eq i64 %xtraiter1089, 0
  br i1 %lcmp.mod1090.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader1026
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i.ph
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !733 ; 4 uses
  %i.bz = add i8 %i.by, -65
  %or.cond.i.i.prol = icmp ult i8 %i.bz, 26
  %i.ca = or disjoint i8 %i.by, 32
  %.sink.i.i.prol = select i1 %or.cond.i.i.prol, i8 %i.ca, i8 %i.by
  %i.cb = add i8 %i.by, -58
  %i.cc = icmp ult i8 %i.cb, -10
  %.2.i.i.prol = select i1 %i.cc, i32 %.045.i.i.ph, i32 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv.i.i.ph
  store i8 %.sink.i.i.prol, ptr %i.cd, align 1, !tbaa !733
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader1026
  %.2.i.i.lcssa1027.unr = phi i32 [ poison, %.lr.ph.i.i.preheader1026 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader1026 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.045.i.i.unr = phi i32 [ %.045.i.i.ph, %.lr.ph.i.i.preheader1026 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ce = add nsw i64 %wide.trip.count.i.i, -1
  %i.cf = icmp eq i64 %indvars.iv.i.i.ph, %i.ce
  br i1 %i.cf, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.045.i.i = phi i32 [ %.2.i.i.1, %.lr.ph.i.i ], [ %.045.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !733 ; 4 uses
  %i.ci = add i8 %i.ch, -65
  %or.cond.i.i = icmp ult i8 %i.ci, 26
  %i.cj = or disjoint i8 %i.ch, 32
  %.sink.i.i = select i1 %or.cond.i.i, i8 %i.cj, i8 %i.ch
  %i.ck = add i8 %i.ch, -58
  %i.cl = icmp ult i8 %i.ck, -10
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.cm, align 1, !tbaa !733
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !733 ; 4 uses
  %i.cp = add i8 %i.co, -65
  %or.cond.i.i.1 = icmp ult i8 %i.cp, 26
  %i.cq = or disjoint i8 %i.co, 32
  %.sink.i.i.1 = select i1 %or.cond.i.i.1, i8 %i.cq, i8 %i.co
  %i.cr = add i8 %i.co, -58
  %i.cs = icmp ult i8 %i.cr, -10
  %i.ct = select i1 %i.cs, i1 %i.cl, i1 false
  %.2.i.i.1 = select i1 %i.ct, i32 %.045.i.i, i32 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv.next.i.i
  store i8 %.sink.i.i.1, ptr %i.cu, align 1, !tbaa !733
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5887

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block982
  %.2.i.i.lcssa = phi i32 [ %rdx.select984, %middle.block982 ], [ %.2.i.i.lcssa1027.unr, %.lr.ph.i.i.prol.loopexit ], [ %.2.i.i.1, %.lr.ph.i.i ]
  %i.cv = icmp eq i32 %.2.i.i.lcssa, 0
  %i.cw = select i1 %i.cv, i32 10, i32 3          ; 3 uses
  %i.cx = shl nuw nsw i32 %i.cw, 1
  %i.cy = icmp sgt i32 %i.ar, %i.cx
  br i1 %i.cy, label %iter.check1007, label %.loopexit.sink.split.i

iter.check1007:                                   ; preds = %._crit_edge.loopexit.i.i
  %i.cz = sub i32 %i.ar, %i.cw
  %i.da = zext nneg i32 %i.cw to i64              ; 6 uses
  %i.db = zext i32 %i.cz to i64                   ; 8 uses
  %i.dc = add nuw nsw i64 %i.db, 1
  %umax990 = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 %wide.trip.count.i.i)
  %i.dd = sub nsw i64 %umax990, %i.db             ; 7 uses
  %min.iters.check992 = icmp ult i64 %i.dd, 8
  %i.de = sub nsw i64 %i.db, %i.da
  %diff.check989 = icmp ugt i64 %i.de, -32
  %or.cond1023 = select i1 %min.iters.check992, i1 true, i1 %diff.check989
  br i1 %or.cond1023, label %.lr.ph50.i.i.preheader, label %vector.main.loop.iter.check993

vector.main.loop.iter.check993:                   ; preds = %iter.check1007
  %min.iters.check994 = icmp ult i64 %i.dd, 32
  br i1 %min.iters.check994, label %vec.epilog.ph1011, label %vector.ph995

vector.ph995:                                     ; preds = %vector.main.loop.iter.check993
  %i.df = and i64 %i.dd, 24
  %n.vec996 = and i64 %i.dd, -32                  ; 5 uses
  %i.dg = add nsw i64 %n.vec996, %i.db
  %i.dh = or disjoint i64 %n.vec996, %i.da        ; 2 uses
  %invariant.gep1133.a = getelementptr i8, ptr %i.ay, i64 %i.db
  %invariant.gep1135.a = getelementptr i8, ptr %i.ay, i64 %i.da
  br label %vector.body997

vector.body997:                                   ; preds = %vector.ph995, %vector.body997
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next1001, %vector.body997 ] ; 3 uses
  %gep1134.a = getelementptr i8, ptr %invariant.gep1133.a, i64 %index998 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %gep1134.a, i64 16
  %wide.load999 = load <16 x i8>, ptr %gep1134.a, align 1, !tbaa !733
  %wide.load1000 = load <16 x i8>, ptr %i.di, align 1, !tbaa !733
  %gep1136.a = getelementptr i8, ptr %invariant.gep1135.a, i64 %index998 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %gep1136.a, i64 16
  store <16 x i8> %wide.load999, ptr %gep1136.a, align 1, !tbaa !733
  store <16 x i8> %wide.load1000, ptr %i.dj, align 1, !tbaa !733
  %index.next1001 = add nuw i64 %index998, 32     ; 2 uses
  %i.dk = icmp eq i64 %index.next1001, %n.vec996
  br i1 %i.dk, label %middle.block1002, label %vector.body997, !llvm.loop !5888

middle.block1002:                                 ; preds = %vector.body997
  %cmp.n1003 = icmp eq i64 %i.dd, %n.vec996
  br i1 %cmp.n1003, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check1009

vec.epilog.iter.check1009:                        ; preds = %middle.block1002
  %min.epilog.iters.check1010 = icmp eq i64 %i.df, 0
  br i1 %min.epilog.iters.check1010, label %.lr.ph50.i.i.preheader, label %vec.epilog.ph1011, !prof !1824

vec.epilog.ph1011:                                ; preds = %vector.main.loop.iter.check993, %vec.epilog.iter.check1009
  %vec.epilog.resume.val1004 = phi i64 [ %n.vec996, %vec.epilog.iter.check1009 ], [ 0, %vector.main.loop.iter.check993 ]
  %n.vec1012 = and i64 %i.dd, -8                  ; 4 uses
  %i.dl = add nsw i64 %n.vec1012, %i.db
  %i.dm = add nsw i64 %n.vec1012, %i.da           ; 2 uses
  %invariant.gep1137.a = getelementptr i8, ptr %i.ay, i64 %i.db
  %invariant.gep1139 = getelementptr i8, ptr %i.ay, i64 %i.da
  br label %vec.epilog.vector.body1013

vec.epilog.vector.body1013:                       ; preds = %vec.epilog.vector.body1013, %vec.epilog.ph1011
  %index1014 = phi i64 [ %vec.epilog.resume.val1004, %vec.epilog.ph1011 ], [ %index.next1016, %vec.epilog.vector.body1013 ] ; 3 uses
  %gep1138.a = getelementptr i8, ptr %invariant.gep1137.a, i64 %index1014
  %wide.load1015 = load <8 x i8>, ptr %gep1138.a, align 1, !tbaa !733
  %gep1140 = getelementptr i8, ptr %invariant.gep1139, i64 %index1014
  store <8 x i8> %wide.load1015, ptr %gep1140, align 1, !tbaa !733
  %index.next1016 = add nuw i64 %index1014, 8     ; 2 uses
  %i.dn = icmp eq i64 %index.next1016, %n.vec1012
  br i1 %i.dn, label %vec.epilog.middle.block1017, label %vec.epilog.vector.body1013, !llvm.loop !5889

vec.epilog.middle.block1017:                      ; preds = %vec.epilog.vector.body1013
  %cmp.n1018 = icmp eq i64 %i.dd, %n.vec1012
  br i1 %cmp.n1018, label %.loopexit.loopexit.i.i, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %iter.check1007, %vec.epilog.iter.check1009, %vec.epilog.middle.block1017
  %indvars.iv57.i.i.ph = phi i64 [ %i.db, %iter.check1007 ], [ %i.dg, %vec.epilog.iter.check1009 ], [ %i.dl, %vec.epilog.middle.block1017 ]
  %indvars.iv55.i.i.ph = phi i64 [ %i.da, %iter.check1007 ], [ %i.dh, %vec.epilog.iter.check1009 ], [ %i.dm, %vec.epilog.middle.block1017 ]
  br label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.preheader, %.lr.ph50.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %.lr.ph50.i.i ], [ %indvars.iv57.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.lr.ph50.i.i ], [ %indvars.iv55.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv57.i.i
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !733
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv55.i.i
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !733
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.dr = icmp samesign ult i64 %indvars.iv.next58.i.i, %wide.trip.count.i.i
  br i1 %i.dr, label %.lr.ph50.i.i, label %.loopexit.loopexit.i.i, !llvm.loop !5890

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph50.i.i, %vec.epilog.middle.block1017, %middle.block1002
  %indvars.iv.next56.i.i.lcssa = phi i64 [ %i.dm, %vec.epilog.middle.block1017 ], [ %i.dh, %middle.block1002 ], [ %indvars.iv.next56.i.i, %.lr.ph50.i.i ]
  %i.ds = trunc nuw nsw i64 %indvars.iv.next56.i.i.lcssa to i32
  br label %.loopexit.sink.split.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.k
  %indvars.iv786.i = phi i64 [ %indvars.iv.next787.i, %bb.k ], [ 0, %bb.h ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 22, %bb.h ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv786.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !733 ; 4 uses
  %i.dv = add i8 %i.du, -65
  %or.cond4.i = icmp ult i8 %i.dv, 26
  br i1 %or.cond4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.dw = or disjoint i8 %i.du, 32
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.dx = add i8 %i.du, -97
  %or.cond7.i = icmp ult i8 %i.dx, 26
  br i1 %or.cond7.i, label %bb.k, label %.lr.ph.i111.i.preheader

.lr.ph.i111.i.preheader:                          ; preds = %bb.j
  %min.iters.check = icmp ult i32 %i.ar, 8
  br i1 %min.iters.check, label %.lr.ph.i111.i.preheader1081, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i111.i.preheader
  %8 = ptrtoaddr ptr %i.ay to i64
  %9 = ptrtoaddr ptr %i.d to i64
  %i.dy = add i64 %indvars.iv.lcssa, %9
  %i.dz = sub i64 %i.dy, %8
  %diff.check = icmp ugt i64 %i.dz, -8
  br i1 %diff.check, label %.lr.ph.i111.i.preheader1081, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 24       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.eo, %vector.body ]
  %vec.phi944 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ep, %vector.body ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %wide.load = load <4 x i8>, ptr %i.ea, align 1, !tbaa !733 ; 4 uses
  %wide.load945 = load <4 x i8>, ptr %i.eb, align 1, !tbaa !733 ; 4 uses
  %i.ec = add <4 x i8> %wide.load, splat (i8 -65)
  %i.ed = add <4 x i8> %wide.load945, splat (i8 -65)
  %i.ee = icmp ult <4 x i8> %i.ec, splat (i8 26)
  %i.ef = icmp ult <4 x i8> %i.ed, splat (i8 26)
  %i.eg = or disjoint <4 x i8> %wide.load, splat (i8 32)
  %i.eh = or disjoint <4 x i8> %wide.load945, splat (i8 32)
  %i.ei = select <4 x i1> %i.ee, <4 x i8> %i.eg, <4 x i8> %wide.load
  %i.ej = select <4 x i1> %i.ef, <4 x i8> %i.eh, <4 x i8> %wide.load945
  %i.ek = add <4 x i8> %wide.load, splat (i8 -48)
  %i.el = icmp ult <4 x i8> %i.ek, splat (i8 10)
  %i.em = add <4 x i8> %wide.load945, splat (i8 -48)
  %i.en = icmp ult <4 x i8> %i.em, splat (i8 10)
  %i.eo = or <4 x i1> %vec.phi, %i.el             ; 2 uses
  %i.ep = or <4 x i1> %vec.phi944, %i.en          ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store <4 x i8> %i.ei, ptr %i.eq, align 1, !tbaa !733
  store <4 x i8> %i.ej, ptr %i.er, align 1, !tbaa !733
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !5891

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.ep, %i.eo
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.et = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not1021 = icmp ne i4 %i.et, 0
  %rdx.select = zext i1 %.not1021 to i32          ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i.preheader1081

.lr.ph.i111.i.preheader1081:                      ; preds = %vector.memcheck, %.lr.ph.i111.i.preheader, %middle.block
  %indvars.iv.i112.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.045.i113.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %rdx.select, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i111.i.prol.loopexit, label %.lr.ph.i111.i.prol

.lr.ph.i111.i.prol:                               ; preds = %.lr.ph.i111.i.preheader1081
  %i.eu = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i.ph
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !733 ; 4 uses
  %i.ew = add i8 %i.ev, -65
  %or.cond.i114.i.prol = icmp ult i8 %i.ew, 26
  %i.ex = or disjoint i8 %i.ev, 32
  %.sink.i115.i.prol = select i1 %or.cond.i114.i.prol, i8 %i.ex, i8 %i.ev
  %i.ey = add i8 %i.ev, -58
  %i.ez = icmp ult i8 %i.ey, -10
  %.2.i116.i.prol = select i1 %i.ez, i32 %.045.i113.i.ph, i32 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv.i112.i.ph
  store i8 %.sink.i115.i.prol, ptr %i.fa, align 1, !tbaa !733
  %indvars.iv.next.i117.i.prol = or disjoint i64 %indvars.iv.i112.i.ph, 1
  br label %.lr.ph.i111.i.prol.loopexit

.lr.ph.i111.i.prol.loopexit:                      ; preds = %.lr.ph.i111.i.prol, %.lr.ph.i111.i.preheader1081
  %.2.i116.i.lcssa1082.unr = phi i32 [ poison, %.lr.ph.i111.i.preheader1081 ], [ %.2.i116.i.prol, %.lr.ph.i111.i.prol ]
  %indvars.iv.i112.i.unr = phi i64 [ %indvars.iv.i112.i.ph, %.lr.ph.i111.i.preheader1081 ], [ %indvars.iv.next.i117.i.prol, %.lr.ph.i111.i.prol ]
  %.045.i113.i.unr = phi i32 [ %.045.i113.i.ph, %.lr.ph.i111.i.preheader1081 ], [ %.2.i116.i.prol, %.lr.ph.i111.i.prol ]
  %i.fb = add nsw i64 %wide.trip.count.i.i, -1
  %i.fc = icmp eq i64 %indvars.iv.i112.i.ph, %i.fb
  br i1 %i.fc, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i
  %indvars.iv.i112.i = phi i64 [ %indvars.iv.next.i117.i.1, %.lr.ph.i111.i ], [ %indvars.iv.i112.i.unr, %.lr.ph.i111.i.prol.loopexit ] ; 4 uses
  %.045.i113.i = phi i32 [ %.2.i116.i.1, %.lr.ph.i111.i ], [ %.045.i113.i.unr, %.lr.ph.i111.i.prol.loopexit ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !733 ; 4 uses
  %i.ff = add i8 %i.fe, -65
  %or.cond.i114.i = icmp ult i8 %i.ff, 26
  %i.fg = or disjoint i8 %i.fe, 32
  %.sink.i115.i = select i1 %or.cond.i114.i, i8 %i.fg, i8 %i.fe
  %i.fh = add i8 %i.fe, -58
  %i.fi = icmp ult i8 %i.fh, -10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv.i112.i
  store i8 %.sink.i115.i, ptr %i.fj, align 1, !tbaa !733
  %indvars.iv.next.i117.i = add nuw nsw i64 %indvars.iv.i112.i, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i117.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !733 ; 4 uses
  %i.fm = add i8 %i.fl, -65
  %or.cond.i114.i.1 = icmp ult i8 %i.fm, 26
  %i.fn = or disjoint i8 %i.fl, 32
  %.sink.i115.i.1 = select i1 %or.cond.i114.i.1, i8 %i.fn, i8 %i.fl
  %i.fo = add i8 %i.fl, -58
  %i.fp = icmp ult i8 %i.fo, -10
  %i.fq = select i1 %i.fp, i1 %i.fi, i1 false
  %.2.i116.i.1 = select i1 %i.fq, i32 %.045.i113.i, i32 1 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv.next.i117.i
  store i8 %.sink.i115.i.1, ptr %i.fr, align 1, !tbaa !733
  %indvars.iv.next.i117.i.1 = add nuw nsw i64 %indvars.iv.i112.i, 2 ; 2 uses
  %exitcond.not.i118.i.1 = icmp eq i64 %indvars.iv.next.i117.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i118.i.1, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i, !llvm.loop !5892

._crit_edge.loopexit.i119.i:                      ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i, %middle.block
  %.2.i116.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.2.i116.i.lcssa1082.unr, %.lr.ph.i111.i.prol.loopexit ], [ %.2.i116.i.1, %.lr.ph.i111.i ]
  %i.fs = icmp eq i32 %.2.i116.i.lcssa, 0
  %i.ft = select i1 %i.fs, i32 10, i32 3          ; 3 uses
  %i.fu = shl nuw nsw i32 %i.ft, 1
  %i.fv = icmp sgt i32 %i.ar, %i.fu
  br i1 %i.fv, label %iter.check, label %.loopexit.sink.split.i

iter.check:                                       ; preds = %._crit_edge.loopexit.i119.i
  %i.fw = sub nsw i32 %i.ar, %i.ft
  %i.fx = zext nneg i32 %i.ft to i64              ; 6 uses
  %i.fy = zext i32 %i.fw to i64                   ; 8 uses
  %i.fz = add nuw nsw i64 %i.fy, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fz, i64 %wide.trip.count.i.i)
  %i.ga = sub nsw i64 %umax, %i.fy                ; 7 uses
  %min.iters.check949 = icmp ult i64 %i.ga, 8
  %i.gb = sub nsw i64 %i.fy, %i.fx
  %diff.check947 = icmp ugt i64 %i.gb, -32
  %or.cond1024 = select i1 %min.iters.check949, i1 true, i1 %diff.check947
  br i1 %or.cond1024, label %.lr.ph50.i103.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check950 = icmp ult i64 %i.ga, 32
  br i1 %min.iters.check950, label %vec.epilog.ph, label %vector.ph951

vector.ph951:                                     ; preds = %vector.main.loop.iter.check
  %i.gc = and i64 %i.ga, 24
  %n.vec952 = and i64 %i.ga, -32                  ; 5 uses
  %i.gd = add nsw i64 %n.vec952, %i.fy
  %i.ge = or disjoint i64 %n.vec952, %i.fx        ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.ay, i64 %i.fy
  %invariant.gep1127 = getelementptr i8, ptr %i.ay, i64 %i.fx
  br label %vector.body953

vector.body953:                                   ; preds = %vector.ph951, %vector.body953
  %index954 = phi i64 [ 0, %vector.ph951 ], [ %index.next957, %vector.body953 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index954 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load955 = load <16 x i8>, ptr %gep, align 1, !tbaa !733
  %wide.load956 = load <16 x i8>, ptr %i.gf, align 1, !tbaa !733
  %gep1128 = getelementptr i8, ptr %invariant.gep1127, i64 %index954 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %gep1128, i64 16
  store <16 x i8> %wide.load955, ptr %gep1128, align 1, !tbaa !733
  store <16 x i8> %wide.load956, ptr %i.gg, align 1, !tbaa !733
  %index.next957 = add nuw i64 %index954, 32      ; 2 uses
  %i.gh = icmp eq i64 %index.next957, %n.vec952
  br i1 %i.gh, label %middle.block958, label %vector.body953, !llvm.loop !5893

middle.block958:                                  ; preds = %vector.body953
  %cmp.n959 = icmp eq i64 %i.ga, %n.vec952
  br i1 %cmp.n959, label %.loopexit.loopexit.i108.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block958
  %min.epilog.iters.check = icmp eq i64 %i.gc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph50.i103.i.preheader, label %vec.epilog.ph, !prof !1824

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec952, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec962 = and i64 %i.ga, -8                   ; 4 uses
  %i.gi = add nsw i64 %n.vec962, %i.fy
  %i.gj = add nsw i64 %n.vec962, %i.fx            ; 2 uses
  %invariant.gep1129 = getelementptr i8, ptr %i.ay, i64 %i.fy
  %invariant.gep1131 = getelementptr i8, ptr %i.ay, i64 %i.fx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index963 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next965, %vec.epilog.vector.body ] ; 3 uses
  %gep1130 = getelementptr i8, ptr %invariant.gep1129, i64 %index963
  %wide.load964 = load <8 x i8>, ptr %gep1130, align 1, !tbaa !733
  %gep1132 = getelementptr i8, ptr %invariant.gep1131, i64 %index963
  store <8 x i8> %wide.load964, ptr %gep1132, align 1, !tbaa !733
  %index.next965 = add nuw i64 %index963, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next965, %n.vec962
  br i1 %i.gk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5894

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n966 = icmp eq i64 %i.ga, %n.vec962
  br i1 %cmp.n966, label %.loopexit.loopexit.i108.i, label %.lr.ph50.i103.i.preheader

.lr.ph50.i103.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i104.i.ph = phi i64 [ %i.fy, %iter.check ], [ %i.gd, %vec.epilog.iter.check ], [ %i.gi, %vec.epilog.middle.block ]
  %indvars.iv55.i105.i.ph = phi i64 [ %i.fx, %iter.check ], [ %i.ge, %vec.epilog.iter.check ], [ %i.gj, %vec.epilog.middle.block ]
  br label %.lr.ph50.i103.i

.lr.ph50.i103.i:                                  ; preds = %.lr.ph50.i103.i.preheader, %.lr.ph50.i103.i
  %indvars.iv57.i104.i = phi i64 [ %indvars.iv.next58.i106.i, %.lr.ph50.i103.i ], [ %indvars.iv57.i104.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %indvars.iv55.i105.i = phi i64 [ %indvars.iv.next56.i107.i, %.lr.ph50.i103.i ], [ %indvars.iv55.i105.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv57.i104.i
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !733
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv55.i105.i
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !733
  %indvars.iv.next58.i106.i = add nuw nsw i64 %indvars.iv57.i104.i, 1 ; 2 uses
  %indvars.iv.next56.i107.i = add nuw nsw i64 %indvars.iv55.i105.i, 1 ; 2 uses
  %i.go = icmp samesign ult i64 %indvars.iv.next58.i106.i, %wide.trip.count.i.i
end_hunk_0
