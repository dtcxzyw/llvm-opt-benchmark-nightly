Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 369
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3Fts3GetVarintU:bb.a

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = and i32 %i.j, 16383
  %i.o = load i8, ptr %i.m, align 1, !tbaa !733   ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 14
  %i.r = or disjoint i32 %i.q, %i.n               ; 2 uses
  %i.s = icmp sgt i8 %i.o, -1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = zext nneg i32 %i.r to i64
  store i64 %i.t, ptr %1, align 8, !tbaa !565
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.v = and i32 %i.r, 2097151
  %i.w = load i8, ptr %i.u, align 1, !tbaa !733   ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = or disjoint i32 %i.y, %i.v               ; 2 uses
  %i.aa = icmp sgt i8 %i.w, -1
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = zext nneg i32 %i.z to i64
  store i64 %i.ab, ptr %1, align 8, !tbaa !565
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = and i32 %i.z, 268435455
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !733 ; 2 uses
  %i.ah = and i8 %i.ag, 127
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 28
  %i.ak = or disjoint i64 %i.aj, %i.ae            ; 2 uses
  %i.al = icmp sgt i8 %i.ag, -1
  br i1 %i.al, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.an = load i8, ptr %i.af, align 1, !tbaa !733 ; 2 uses
  %i.ao = and i8 %i.an, 127
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 35
  %i.ar = or disjoint i64 %i.aq, %i.ak            ; 2 uses
  %i.as = icmp sgt i8 %i.an, -1
  br i1 %i.as, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  %i.au = load i8, ptr %i.am, align 1, !tbaa !733 ; 2 uses
  %i.av = and i8 %i.au, 127
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 42
  %i.ay = or disjoint i64 %i.ax, %i.ar            ; 2 uses
  %i.az = icmp sgt i8 %i.au, -1
  br i1 %i.az, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = load i8, ptr %i.at, align 1, !tbaa !733 ; 2 uses
  %i.bc = and i8 %i.bb, 127
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 49
  %i.bf = or disjoint i64 %i.be, %i.ay            ; 2 uses
  %i.bg = icmp sgt i8 %i.bb, -1
  br i1 %i.bg, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !733 ; 2 uses
  %i.bj = and i8 %i.bi, 127
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 56
  %i.bm = or disjoint i64 %i.bl, %i.bf            ; 2 uses
  %i.bn = icmp sgt i8 %i.bi, -1
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !733
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl i64 %i.bp, 63
  %i.br = or disjoint i64 %i.bq, %i.bm
  %spec.select = getelementptr i8, ptr %0, i64 10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.lcssa42 = phi ptr [ %i.af, %bb.i ], [ %i.ba, %bb.l ], [ %i.am, %bb.j ], [ %spec.select, %bb.n ], [ %i.at, %bb.k ], [ %i.bh, %bb.m ]
  %.lcssa = phi i64 [ %i.ak, %bb.i ], [ %i.bf, %bb.l ], [ %i.ar, %bb.j ], [ %i.br, %bb.n ], [ %i.ay, %bb.k ], [ %i.bm, %bb.m ]
  store i64 %.lcssa, ptr %1, align 8, !tbaa !565
  %i.bs = ptrtoint ptr %.lcssa42 to i64
  %i.bt = ptrtoint ptr %0 to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = trunc i64 %i.bu to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h, %bb.f, %bb.d, %bb.b
  %.038 = phi i32 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.h ], [ %i.bv, %bb.o ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3SegReaderStart(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2638 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !2662
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.not36 = icmp eq ptr %2, null
  br i1 %.not36, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge3.split.us.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.critedge3.split.us.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !2638
  %i.g = sext i32 %i.f to i64
  %i.h = icmp slt i64 %indvars.iv62, %i.g
  br i1 %i.h, label %.split.us.us, label %.critedge

.split.us.us:                                     ; preds = %.lr.ph.split.us
  %i.i = load ptr, ptr %1, align 8, !tbaa !2639
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv62
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2641
  %i.l = tail call fastcc i32 @fts3SegReaderNext(ptr noundef %0, ptr noundef %i.k) ; 2 uses
  %.not.us.us = icmp eq i32 %i.l, 0
  br i1 %.not.us.us, label %.critedge3.split.us.us, label %.critedge38

.critedge3.split.us.us:                           ; preds = %.split.us.us
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %i.m = load i32, ptr %i.c, align 4, !tbaa !2662
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.split.us, label %.critedge, !llvm.loop !5863

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge3.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge3.thread ], [ 0, %.lr.ph ] ; 3 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !2638
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv, %i.p
  br i1 %i.q, label %.split, label %.critedge

.split:                                           ; preds = %.lr.ph.split
  %i.r = load ptr, ptr %1, align 8, !tbaa !2639
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2641 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  br label %bb.b

bb.b:                                             ; preds = %fts3SegReaderTermCmp.exit, %.split
  %i.x = tail call fastcc i32 @fts3SegReaderNext(ptr noundef %0, ptr noundef %i.t) ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.c, label %.critedge38

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !2647
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.critedge3.thread, label %fts3SegReaderTermCmp.exit

fts3SegReaderTermCmp.exit:                        ; preds = %bb.c
  %i.z = load i32, ptr %i.v, align 8, !tbaa !2663 ; 2 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !2645
  %..i = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %3)
  %i.ab = sext i32 %..i to i64
  %i.ac = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef nonnull readonly %2, i64 noundef %i.ab) #59 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = sub nsw i32 %i.z, %3
  %spec.select.i = select i1 %i.ad, i32 %i.ae, i32 %i.ac ; 2 uses
  %i.af = icmp slt i32 %spec.select.i, 0
  br i1 %i.af, label %bb.b, label %.critedge3.split, !llvm.loop !5864

.critedge3.split:                                 ; preds = %fts3SegReaderTermCmp.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !2653
  %i.ai = icmp ne i8 %i.ah, 0
  %i.aj = icmp ne i32 %spec.select.i, 0
  %or.cond = and i1 %i.aj, %i.ai
  br i1 %or.cond, label %bb.d, label %.critedge3.thread

bb.d:                                             ; preds = %.critedge3.split
  tail call fastcc void @fts3SegReaderSetEof(ptr noundef nonnull %i.t)
  br label %.critedge3.thread

.critedge3.thread:                                ; preds = %bb.c, %bb.d, %.critedge3.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !2662
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.split, label %.critedge, !llvm.loop !5863

.critedge:                                        ; preds = %.lr.ph.split, %.critedge3.thread, %.lr.ph.split.us, %.critedge3.split.us.us, %bb.a
  %i.am = load ptr, ptr %1, align 8, !tbaa !2639  ; 3 uses
  %spec.select.i39 = add i32 %i.b, -1             ; 3 uses
  %i.an = icmp sgt i32 %spec.select.i39, 0
  br i1 %i.an, label %.preheader.lr.ph.i, label %.critedge38

.preheader.lr.ph.i:                               ; preds = %.critedge
  %i.ao = add i32 %i.b, -2
  %i.ap = zext nneg i32 %i.ao to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.thread.i, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ap, %.preheader.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %.02532.in.i = phi i32 [ %spec.select.i39, %.preheader.lr.ph.i ], [ %.02532.i, %.thread.i ] ; 3 uses
  %.02532.i = add nsw i32 %.02532.in.i, -1
  %4 = icmp slt i32 %.02532.in.i, %i.b
  br i1 %4, label %.lr.ph.preheader.i, label %.thread.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2641 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2647
  %.not.i40 = icmp eq ptr %.pre, null             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  %i.as = zext i1 %.not.i40 to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next34.i, %bb.j ] ; 2 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next34.i ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2641 ; 5 uses
  %.phi.trans.insert.i41 = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %.pre.i42 = load ptr, ptr %.phi.trans.insert.i41, align 8, !tbaa !2647
  %i.av = icmp eq ptr %.pre.i42, null             ; 2 uses
  br i1 %.not.i40, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.aw = sext i1 %i.av to i32
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.aq, align 8, !tbaa !2663 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !2663 ; 2 uses
  %i.ba = sub nsw i32 %i.ax, %i.az                ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !2645
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2645
  %..i43 = select i1 %i.bb, i32 %i.ax, i32 %i.az
  %i.bf = sext i32 %..i43 to i64
  %i.bg = tail call i32 @memcmp(ptr noundef %i.bc, ptr noundef %i.be, i64 noundef %i.bf) #59 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  %spec.select.i44 = select i1 %i.bh, i32 %i.ba, i32 %i.bg
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %._crit_edge.i
  %.neg.i = phi i32 [ %i.aw, %._crit_edge.i ], [ -1, %bb.e ]
  %i.bi = add nsw i32 %.neg.i, %i.as
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i = phi i32 [ %spec.select.i44, %bb.f ], [ %i.bi, %bb.g ] ; 2 uses
  %i.bj = icmp eq i32 %.2.i, 0
  br i1 %i.bj, label %bb.i, label %fts3SegReaderCmp.exit

bb.i:                                             ; preds = %bb.h
  %i.bk = load i32, ptr %i.au, align 8, !tbaa !2651
  %i.bl = load i32, ptr %.pre.i, align 8, !tbaa !2651
  %i.bm = sub nsw i32 %i.bk, %i.bl
  br label %fts3SegReaderCmp.exit

fts3SegReaderCmp.exit:                            ; preds = %bb.h, %bb.i
  %.3.i = phi i32 [ %i.bm, %bb.i ], [ %.2.i, %bb.h ]
  %i.bn = icmp slt i32 %.3.i, 0
  br i1 %i.bn, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %fts3SegReaderCmp.exit
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv33.i
  store ptr %.pre.i, ptr %i.at, align 8, !tbaa !2641
  store ptr %i.au, ptr %i.bo, align 8, !tbaa !2641
  %i.bp = trunc nuw i64 %indvars.iv.next34.i to i32
  %i.bq = icmp sgt i32 %spec.select.i39, %i.bp
  br i1 %i.bq, label %.lr.ph.i, label %.thread.i, !llvm.loop !479

.thread.i:                                        ; preds = %bb.j, %fts3SegReaderCmp.exit, %.preheader.i
  %i.br = icmp sgt i32 %.02532.in.i, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.br, label %.preheader.i, label %.critedge38, !llvm.loop !480

.critedge38:                                      ; preds = %bb.b, %.split.us.us, %.thread.i, %.critedge
  %.3 = phi i32 [ 0, %.thread.i ], [ 0, %.critedge ], [ %i.l, %.split.us.us ], [ %i.x, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3SegReaderNext(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2664 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2647
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2665
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0113 = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %.not131 = icmp eq ptr %.0113, null
  br i1 %.not131, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2647
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !2657
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %.not132 = icmp ult ptr %.0113, %i.n
  br i1 %.not132, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2652 ; 2 uses
  %.not133 = icmp eq ptr %i.p, null
  br i1 %.not133, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2569 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2647 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %sqlite3_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.w(ptr noundef nonnull %i.v) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.j, %bb.i
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.y = tail call i32 %i.x(ptr noundef nonnull %i.s) #58, !inline_history !13
  %i.z = sext i32 %i.y to i64
  %i.aa = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ab = sub nsw i64 %i.aa, %i.z
  store i64 %i.ab, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ad = add nsw i64 %i.ac, -1
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ae(ptr noundef nonnull %i.s) #58, !inline_history !749
  %i.af = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.af, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.k

bb.k:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ag(ptr noundef nonnull %i.af) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.l:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ah(ptr noundef nonnull %i.s) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.g, %sqlite3_mutex_enter.exit.i, %bb.k, %bb.l
  store ptr null, ptr %i.r, align 8, !tbaa !2647
  %.not143 = icmp eq ptr %i.q, null
  br i1 %.not143, label %.critedge148, label %bb.m

bb.m:                                             ; preds = %sqlite3_free.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2574 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !2667
  %i.al = trunc i64 %i.ak to i32
  %i.am = add i32 %i.al, 1                        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !2572 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !5865
  %.not144 = icmp slt i32 %i.ao, %i.aq
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2645 ; 5 uses
  br i1 %.not144, label %._crit_edge, label %bb.n

._crit_edge:                                      ; preds = %bb.m
  %.pre184 = sext i32 %i.ao to i64
  br label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp eq ptr %.pre, null
  br i1 %i.ar, label %sqlite3_free.exit153, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i149 = icmp eq i32 %i.as, 0
  br i1 %.not.i149, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.at, null
  br i1 %.not.i.i150, label %sqlite3_mutex_enter.exit.i151, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.au(ptr noundef nonnull %i.at) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i151

sqlite3_mutex_enter.exit.i151:                    ; preds = %bb.q, %bb.p
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.aw = tail call i32 %i.av(ptr noundef nonnull %.pre) #58, !inline_history !13
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.az = sub nsw i64 %i.ay, %i.ax
  store i64 %i.az, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.bb = add nsw i64 %i.ba, -1
  store i64 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.bc(ptr noundef nonnull %.pre) #58, !inline_history !749
  %i.bd = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i152 = icmp eq ptr %i.bd, null
  br i1 %.not.i4.i152, label %sqlite3_free.exit153, label %bb.r

bb.r:                                             ; preds = %sqlite3_mutex_enter.exit.i151
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.be(ptr noundef nonnull %i.bd) #58, !inline_history !750
  br label %sqlite3_free.exit153

bb.s:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.bf(ptr noundef nonnull %.pre) #58, !inline_history !749
  br label %sqlite3_free.exit153

sqlite3_free.exit153:                             ; preds = %bb.n, %sqlite3_mutex_enter.exit.i151, %bb.r, %bb.s
  %i.bg = tail call i32 @sqlite3_initialize(), !inline_history !815
  %.not.i154 = icmp eq i32 %i.bg, 0
  br i1 %.not.i154, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit.thread:                     ; preds = %sqlite3_free.exit153
  store ptr null, ptr %.phi.trans.insert, align 8, !tbaa !2645
  br label %.critedge148

sqlite3_malloc64.exit:                            ; preds = %sqlite3_free.exit153
  %i.bh = sext i32 %i.ao to i64                   ; 2 uses
  %i.bi = shl nsw i64 %i.bh, 1
  %i.bj = add nsw i64 %i.bi, 2
  %i.bk = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.bj), !inline_history !815 ; 3 uses
  store ptr %i.bk, ptr %.phi.trans.insert, align 8, !tbaa !2645
  %.not145 = icmp eq ptr %i.bk, null
  br i1 %.not145, label %.critedge148, label %bb.t

bb.t:                                             ; preds = %sqlite3_malloc64.exit
  %i.bl = shl i32 %i.ao, 1
  %i.bm = add i32 %i.bl, 2
  store i32 %i.bm, ptr %i.ap, align 8, !tbaa !5865
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.t
  %.pre-phi = phi i64 [ %.pre184, %._crit_edge ], [ %i.bh, %bb.t ] ; 2 uses
  %i.bn = phi ptr [ %.pre, %._crit_edge ], [ %i.bk, %bb.t ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2571
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bq, i64 %.pre-phi, i1 false)
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !2645
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %.pre-phi
  store i8 0, ptr %i.bs, align 1, !tbaa !733
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.ao, ptr %i.bt, align 8, !tbaa !2663
end_hunk_0
begin_hunk_1_@fts3SegReaderIncrRead:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !594 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %sqlite3DbFree.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.ac(ptr noundef nonnull %i.ab) #58, !inline_history !2632
  br label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %bb.d, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 488
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !641
  %i.af = icmp ult ptr %i.v, %i.ae
  br i1 %i.af, label %bb.f, label %bb.j

bb.f:                                             ; preds = %sqlite3DbFree.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !696
  %.not22.i = icmp ult ptr %i.v, %i.ah
  br i1 %.not22.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 464 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !601
  store ptr %i.aj, ptr %i.v, align 8, !tbaa !597
  store ptr %i.v, ptr %i.ai, align 8, !tbaa !601
  br label %sqlite3DbFreeNN.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 480
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !640
  %.not23.i = icmp ult ptr %i.v, %i.al
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 448 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !599
  store ptr %i.an, ptr %i.v, align 8, !tbaa !597
  store ptr %i.v, ptr %i.am, align 8, !tbaa !599
  br label %sqlite3DbFreeNN.exit

bb.j:                                             ; preds = %bb.h, %sqlite3DbFree.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 768
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !639
  %.not24.i = icmp eq ptr %i.ap, null
  br i1 %.not24.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @measureAllocationSize(ptr noundef nonnull %i.z, ptr noundef nonnull %i.v)
  br label %sqlite3DbFreeNN.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i20 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i20, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.as(ptr noundef nonnull %i.ar) #58, !inline_history !2633
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.n, %bb.m
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.au = tail call i32 %i.at(ptr noundef nonnull %i.v) #58, !inline_history !476
  %i.av = sext i32 %i.au to i64
  %i.aw = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ax = sub nsw i64 %i.aw, %i.av
  store i64 %i.ax, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.az = add nsw i64 %i.ay, -1
  store i64 %i.az, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ba(ptr noundef nonnull %i.v) #58, !inline_history !2634
  %i.bb = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i4.i.i, label %sqlite3DbFreeNN.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.bc(ptr noundef nonnull %i.bb) #58, !inline_history !2635
  br label %sqlite3DbFreeNN.exit

bb.p:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.bd(ptr noundef nonnull %i.v) #58, !inline_history !2634
  br label %sqlite3DbFreeNN.exit

sqlite3DbFreeNN.exit:                             ; preds = %bb.g, %bb.i, %bb.k, %sqlite3_mutex_enter.exit.i.i, %bb.o, %bb.p
  %i.be = load ptr, ptr %i.aa, align 8, !tbaa !594 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.be, null
  br i1 %.not.i11.i, label %sqlite3_mutex_leave.exit.i, label %bb.q

bb.q:                                             ; preds = %sqlite3DbFreeNN.exit
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.bf(ptr noundef nonnull %i.be) #58, !inline_history !2636
  br label %sqlite3_mutex_leave.exit.i

sqlite3_mutex_leave.exit.i:                       ; preds = %bb.q, %sqlite3DbFreeNN.exit
  %i.bg = tail call i32 @sqlite3_finalize(ptr noundef %i.x), !inline_history !2637 ; 0 uses
  br label %sqlite3_blob_close.exit

sqlite3_blob_close.exit:                          ; preds = %bb.c, %sqlite3_mutex_leave.exit.i
  store ptr null, ptr %i.f, align 8, !tbaa !2648
  store i32 0, ptr %i.c, align 4, !tbaa !2669
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %sqlite3_blob_close.exit, %bb.a
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3Fts3SegReaderStep(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2619 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !2639   ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2638 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 463 ; 6 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !2672
  %.not = icmp eq i8 %i.m, 0
  %i.n = select i1 %.not, ptr @fts3SegReaderDoclistCmp, ptr @fts3SegReaderDoclistCmpRev ; 2 uses
  %i.o = icmp eq i32 %i.k, 0
  br i1 %i.o, label %.thread334, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !2673 ; 7 uses
  %i.r = and i32 %i.q, 32
  %i.s = and i32 %i.q, 16
  %i.t = and i32 %i.q, 8
  %i.u = and i32 %i.q, 4
  %i.v = and i32 %i.q, 1
  %i.w = and i32 %i.q, 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.y = add nsw i32 %i.k, -1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = icmp ne i32 %i.s, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not215 = icmp eq i32 %i.t, 0
  %i.ad = icmp sgt i32 %i.k, 1
  %.not218 = icmp eq i32 %i.r, 0
  %i.ae = and i32 %i.q, 34
  %i.af = icmp ne i32 %i.ae, 0
  %.not224 = icmp eq i32 %i.u, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ah = icmp eq i32 %i.w, 0
  %.not227 = icmp eq i32 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 14 uses
  %.pre = load i32, ptr %i.x, align 4, !tbaa !2674
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %._crit_edge412.thread
  %i.ak = phi i32 [ %.pre, %.preheader ], [ %.0183.lcssa, %._crit_edge412.thread ] ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2641 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !2653
  %.not230 = icmp eq i8 %i.ap, 0
  br i1 %.not230, label %bb.c, label %.thread

.thread:                                          ; preds = %.lr.ph
  call fastcc void @fts3SegReaderSetEof(ptr noundef nonnull %i.an)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.aq = call fastcc i32 @fts3SegReaderNext(ptr noundef %0, ptr noundef nonnull %i.an) ; 2 uses
  %.not231 = icmp eq i32 %i.aq, 0
  br i1 %.not231, label %bb.d, label %.thread334

bb.d:                                             ; preds = %.thread, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.x, align 4, !tbaa !2674 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !5866

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i32 [ %i.ak, %bb.b ], [ %i.ar, %bb.d ] ; 2 uses
  %i.au = icmp eq i32 %.lcssa, %i.k
  %i.av = sext i1 %i.au to i32
  %spec.select.i = add i32 %.lcssa, %i.av         ; 3 uses
  %i.aw = icmp sgt i32 %spec.select.i, 0
  br i1 %i.aw, label %.preheader.lr.ph.i, label %fts3SegReaderSort.exit

.preheader.lr.ph.i:                               ; preds = %._crit_edge
  %i.ax = add nsw i32 %spec.select.i, -1
  %i.ay = zext nneg i32 %i.ax to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.thread.i, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ay, %.preheader.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %.02532.in.i = phi i32 [ %spec.select.i, %.preheader.lr.ph.i ], [ %.02532.i, %.thread.i ] ; 3 uses
  %.02532.i = add nsw i32 %.02532.in.i, -1
  %i.az = icmp slt i32 %.02532.in.i, %i.k
  br i1 %i.az, label %.lr.ph.preheader.i, label %.thread.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2641 ; 5 uses
  %.phi.trans.insert465 = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %.pre466 = load ptr, ptr %.phi.trans.insert465, align 8, !tbaa !2647
  %.not.i302 = icmp eq ptr %.pre466, null         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre.i, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  %i.bc = zext i1 %.not.i302 to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next34.i, %bb.j ] ; 2 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next34.i ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2641 ; 5 uses
  %.phi.trans.insert.i303 = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %.pre.i304 = load ptr, ptr %.phi.trans.insert.i303, align 8, !tbaa !2647
  %i.bf = icmp eq ptr %.pre.i304, null            ; 2 uses
  br i1 %.not.i302, label %._crit_edge.i307, label %bb.e

._crit_edge.i307:                                 ; preds = %.lr.ph.i
  %i.bg = sext i1 %i.bf to i32
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %i.bf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !2663 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2663 ; 2 uses
  %i.bk = sub nsw i32 %i.bh, %i.bj                ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !2645
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2645
  %..i = select i1 %i.bl, i32 %i.bh, i32 %i.bj
  %i.bp = sext i32 %..i to i64
  %i.bq = call i32 @memcmp(ptr noundef %i.bm, ptr noundef %i.bo, i64 noundef %i.bp) #59 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  %spec.select.i305 = select i1 %i.br, i32 %i.bk, i32 %i.bq
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %._crit_edge.i307
  %.neg.i306 = phi i32 [ %i.bg, %._crit_edge.i307 ], [ -1, %bb.e ]
  %i.bs = add nsw i32 %.neg.i306, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i = phi i32 [ %spec.select.i305, %bb.f ], [ %i.bs, %bb.g ] ; 2 uses
  %i.bt = icmp eq i32 %.2.i, 0
  br i1 %i.bt, label %bb.i, label %fts3SegReaderCmp.exit

bb.i:                                             ; preds = %bb.h
  %i.bu = load i32, ptr %i.be, align 8, !tbaa !2651
  %i.bv = load i32, ptr %.pre.i, align 8, !tbaa !2651
  %i.bw = sub nsw i32 %i.bu, %i.bv
  br label %fts3SegReaderCmp.exit

fts3SegReaderCmp.exit:                            ; preds = %bb.h, %bb.i
  %.3.i = phi i32 [ %i.bw, %bb.i ], [ %.2.i, %bb.h ]
  %i.bx = icmp slt i32 %.3.i, 0
  br i1 %i.bx, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %fts3SegReaderCmp.exit
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv33.i
  store ptr %.pre.i, ptr %i.bd, align 8, !tbaa !2641
  store ptr %i.be, ptr %i.by, align 8, !tbaa !2641
  %i.bz = trunc nuw i64 %indvars.iv.next34.i to i32
  %i.ca = icmp sgt i32 %i.y, %i.bz
  br i1 %i.ca, label %.lr.ph.i, label %.thread.i, !llvm.loop !479

.thread.i:                                        ; preds = %bb.j, %fts3SegReaderCmp.exit, %.preheader.i
  %i.cb = icmp sgt i32 %.02532.in.i, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.cb, label %.preheader.i, label %fts3SegReaderSort.exit, !llvm.loop !480

fts3SegReaderSort.exit:                           ; preds = %.thread.i, %._crit_edge
  store i32 0, ptr %i.x, align 4, !tbaa !2674
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !2641 ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2647
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.thread334, label %bb.k

bb.k:                                             ; preds = %fts3SegReaderSort.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !2663 ; 5 uses
  store i32 %i.ch, ptr %i.z, align 8, !tbaa !2675
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2645 ; 3 uses
  store ptr %i.cj, ptr %i.aa, align 8, !tbaa !2676
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !2620 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  %or.cond = select i1 %i.cl, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = load i32, ptr %i.ac, align 8, !tbaa !2621 ; 3 uses
  %i.cn = icmp slt i32 %i.ch, %i.cm
  %i.co = icmp sgt i32 %i.ch, %i.cm
  %or.cond232 = and i1 %.not215, %i.co
  %or.cond414 = select i1 %i.cn, i1 true, i1 %or.cond232
  br i1 %or.cond414, label %.thread334, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = sext i32 %i.cm to i64
  %bcmp = call i32 @bcmp(ptr %i.cj, ptr nonnull %i.ck, i64 %i.cp)
  %.not216 = icmp eq i32 %bcmp, 0
  br i1 %.not216, label %bb.n, label %.thread334

bb.n:                                             ; preds = %bb.m, %bb.k
  br i1 %i.ad, label %.lr.ph391, label %.critedge

.lr.ph391:                                        ; preds = %bb.n
  %i.cq = sext i32 %i.ch to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph391, %bb.r
  %indvars.iv448 = phi i64 [ 1, %.lr.ph391 ], [ %indvars.iv.next449, %bb.r ] ; 5 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv448
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2641 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !2647
  %.not217 = icmp eq ptr %i.cu, null
  br i1 %.not217, label %.critedge.loopexit.split.loop.exit530, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !2663
  %i.cx = icmp eq i32 %i.cw, %i.ch
  br i1 %i.cx, label %bb.q, label %.critedge.loopexit.split.loop.exit

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !2645
  %bcmp348 = call i32 @bcmp(ptr %i.cj, ptr %i.cz, i64 %i.cq)
  %i.da = icmp eq i32 %bcmp348, 0
  br i1 %i.da, label %bb.r, label %.critedge.loopexit.split.loop.exit534

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next449, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.o, !llvm.loop !5867

.critedge.loopexit.split.loop.exit:               ; preds = %bb.p
  %i.db = trunc nuw nsw i64 %indvars.iv448 to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit530:            ; preds = %bb.o
  %i.dc = trunc nuw nsw i64 %indvars.iv448 to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit534:            ; preds = %bb.q
  %i.dd = trunc nuw nsw i64 %indvars.iv448 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %.critedge.loopexit.split.loop.exit, %.critedge.loopexit.split.loop.exit530, %.critedge.loopexit.split.loop.exit534, %bb.n
  %.0183.lcssa = phi i32 [ 1, %bb.n ], [ %i.dd, %.critedge.loopexit.split.loop.exit534 ], [ %i.db, %.critedge.loopexit.split.loop.exit ], [ %i.dc, %.critedge.loopexit.split.loop.exit530 ], [ %i.k, %bb.r ] ; 11 uses
  %i.de = icmp ne i32 %.0183.lcssa, 1
  %or.cond8 = select i1 %i.de, i1 true, i1 %i.af
  br i1 %or.cond8, label %bb.y, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.df = load i8, ptr %i.l, align 1, !tbaa !2672
  %i.dg = icmp eq i8 %i.df, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %.pre462 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2652
  %i.dh = icmp eq ptr %.pre462, null              ; 2 uses
  br i1 %i.dg, label %split, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.dh, label %split.thread, label %bb.y

split.thread:                                     ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !2665
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !2677
  br label %.thread490

split:                                            ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !2665 ; 3 uses
end_hunk_1
begin_hunk_2_@sqlite3Fts3SegReaderStep:bb.a
  %.0.i273 = phi i32 [ 0, %bb.bl ], [ 1, %sqlite3Fts3PutVarint.exit.i ] ; 2 uses
  %.not20.i.i = icmp ult i8 %i.lr, 2
  br i1 %.not20.i.i, label %fts3ColumnlistCopy.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bm
  %i.ls = zext i8 %i.lr to i32
  br label %.lr.ph.i.i274

.lr.ph.i.i274:                                    ; preds = %.lr.ph.i.i274, %.lr.ph.preheader.i.i
  %i.lt = phi i32 [ %i.lx, %.lr.ph.i.i274 ], [ %i.ls, %.lr.ph.preheader.i.i ]
  %.021.i.i = phi ptr [ %i.lu, %.lr.ph.i.i274 ], [ %i.lc, %.lr.ph.preheader.i.i ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 1 ; 3 uses
  %i.lv = and i32 %i.lt, 128
  %i.lw = load i8, ptr %i.lu, align 1, !tbaa !733
  %i.lx = zext i8 %i.lw to i32                    ; 2 uses
  %.masked.i.i = and i32 %i.lx, 254
  %i.ly = or i32 %.masked.i.i, %i.lv
  %.not.i32.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i32.i, label %fts3ColumnlistCopy.exit.i, label %.lr.ph.i.i274, !llvm.loop !490

fts3ColumnlistCopy.exit.i:                        ; preds = %.lr.ph.i.i274, %bb.bm, %bb.bl
  %.053.i = phi ptr [ %i.lc, %bb.bl ], [ %i.lc, %bb.bm ], [ %i.lu, %.lr.ph.i.i274 ] ; 2 uses
  %.126.i = phi i32 [ 0, %bb.bl ], [ %.025.i, %bb.bm ], [ %.025.i, %.lr.ph.i.i274 ] ; 2 uses
  %.1.i275 = phi i32 [ 0, %bb.bl ], [ %.0.i273, %bb.bm ], [ %.0.i273, %.lr.ph.i.i274 ] ; 2 uses
  %i.lz = icmp ult ptr %.053.i, %i.le
  br i1 %i.lz, label %.lr.ph.i277, label %._crit_edge.i276

.lr.ph.i277:                                      ; preds = %fts3ColumnlistCopy.exit.i, %fts3ColumnlistCopy.exit48.i
  %.265.i = phi i32 [ %.4.i, %fts3ColumnlistCopy.exit48.i ], [ %.1.i275, %fts3ColumnlistCopy.exit.i ] ; 2 uses
  %.22764.i = phi i32 [ %.429.i, %fts3ColumnlistCopy.exit48.i ], [ %.126.i, %fts3ColumnlistCopy.exit.i ] ; 4 uses
  %.15463.i = phi ptr [ %.0.lcssa.i47.i, %fts3ColumnlistCopy.exit48.i ], [ %.053.i, %fts3ColumnlistCopy.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.ma = getelementptr inbounds nuw i8, ptr %.15463.i, i64 1 ; 2 uses
  %i.mb = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.ma, ptr noundef nonnull %i.a)
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds i8, ptr %i.ma, i64 %i.mc ; 4 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !733 ; 2 uses
  %i.mf = icmp eq i8 %i.me, 2
  br i1 %i.mf, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %.lr.ph.i277
  %i.mg = icmp eq i32 %.265.i, 0
  br i1 %i.mg, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.mh = sext i32 %.22764.i to i64
  %i.mi = getelementptr inbounds i8, ptr %i.lb, i64 %i.mh ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %bb.bo
  %.08.i33.i = phi ptr [ %i.mi, %bb.bo ], [ %i.ml, %bb.bp ] ; 3 uses
  %.0.i34.i = phi i64 [ %.0, %bb.bo ], [ %i.mm, %bb.bp ] ; 2 uses
  %i.mj = trunc i64 %.0.i34.i to i8               ; 2 uses
  %i.mk = or i8 %i.mj, -128
  %i.ml = getelementptr inbounds nuw i8, ptr %.08.i33.i, i64 1 ; 2 uses
  store i8 %i.mk, ptr %.08.i33.i, align 1, !tbaa !733
  %i.mm = lshr i64 %.0.i34.i, 7                   ; 2 uses
  %.not.i35.i = icmp eq i64 %i.mm, 0
  br i1 %.not.i35.i, label %sqlite3Fts3PutVarint.exit36.i, label %bb.bp, !llvm.loop !489

sqlite3Fts3PutVarint.exit36.i:                    ; preds = %bb.bp
  store i8 %i.mj, ptr %.08.i33.i, align 1, !tbaa !733
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = ptrtoint ptr %i.mi to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = trunc i64 %i.mp to i32
  %i.mr = add nsw i32 %.22764.i, %i.mq
  br label %bb.bq

bb.bq:                                            ; preds = %sqlite3Fts3PutVarint.exit36.i, %bb.bn
  %.328.i = phi i32 [ %i.mr, %sqlite3Fts3PutVarint.exit36.i ], [ %.22764.i, %bb.bn ] ; 2 uses
  %i.ms = add nsw i32 %.328.i, 1                  ; 2 uses
  %i.mt = sext i32 %.328.i to i64
  %i.mu = getelementptr inbounds i8, ptr %i.lb, i64 %i.mt
  store i8 1, ptr %i.mu, align 1, !tbaa !733
  %i.mv = sext i32 %i.ms to i64
  %i.mw = getelementptr inbounds i8, ptr %i.lb, i64 %i.mv ; 2 uses
  %i.mx = load i64, ptr %i.a, align 8, !tbaa !565
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %bb.bq
  %.08.i37.i = phi ptr [ %i.mw, %bb.bq ], [ %i.na, %bb.br ] ; 3 uses
  %.0.i38.i = phi i64 [ %i.mx, %bb.bq ], [ %i.nb, %bb.br ] ; 2 uses
  %i.my = trunc i64 %.0.i38.i to i8               ; 2 uses
  %i.mz = or i8 %i.my, -128
  %i.na = getelementptr inbounds nuw i8, ptr %.08.i37.i, i64 1 ; 2 uses
  store i8 %i.mz, ptr %.08.i37.i, align 1, !tbaa !733
  %i.nb = lshr i64 %.0.i38.i, 7                   ; 2 uses
  %.not.i39.i = icmp eq i64 %i.nb, 0
  br i1 %.not.i39.i, label %sqlite3Fts3PutVarint.exit40.i, label %bb.br, !llvm.loop !489

sqlite3Fts3PutVarint.exit40.i:                    ; preds = %bb.br
  store i8 %i.my, ptr %.08.i37.i, align 1, !tbaa !733
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = ptrtoint ptr %i.mw to i64
  %i.ne = sub i64 %i.nc, %i.nd
  %i.nf = trunc i64 %i.ne to i32
  %i.ng = add nsw i32 %i.ms, %i.nf                ; 2 uses
  %i.nh = add nsw i32 %i.ng, 1
  %i.ni = sext i32 %i.ng to i64
  %i.nj = getelementptr inbounds i8, ptr %i.lb, i64 %i.ni
  store i8 2, ptr %i.nj, align 1, !tbaa !733
  %.pr55.i = load i8, ptr %i.md, align 1, !tbaa !733
  br label %bb.bs

bb.bs:                                            ; preds = %sqlite3Fts3PutVarint.exit40.i, %.lr.ph.i277
  %i.nk = phi i8 [ %.pr55.i, %sqlite3Fts3PutVarint.exit40.i ], [ %i.me, %.lr.ph.i277 ] ; 2 uses
  %.429.i = phi i32 [ %i.nh, %sqlite3Fts3PutVarint.exit40.i ], [ %.22764.i, %.lr.ph.i277 ] ; 2 uses
  %.4.i = phi i32 [ 1, %sqlite3Fts3PutVarint.exit40.i ], [ %.265.i, %.lr.ph.i277 ] ; 2 uses
  %.not20.i41.i = icmp ult i8 %i.nk, 2
  br i1 %.not20.i41.i, label %fts3ColumnlistCopy.exit48.i, label %.lr.ph.preheader.i42.i

.lr.ph.preheader.i42.i:                           ; preds = %bb.bs
  %i.nl = zext i8 %i.nk to i32
  br label %.lr.ph.i43.i

.lr.ph.i43.i:                                     ; preds = %.lr.ph.i43.i, %.lr.ph.preheader.i42.i
  %i.nm = phi i32 [ %i.nq, %.lr.ph.i43.i ], [ %i.nl, %.lr.ph.preheader.i42.i ]
  %.021.i44.i = phi ptr [ %i.nn, %.lr.ph.i43.i ], [ %i.md, %.lr.ph.preheader.i42.i ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.021.i44.i, i64 1 ; 3 uses
  %i.no = and i32 %i.nm, 128
  %i.np = load i8, ptr %i.nn, align 1, !tbaa !733
  %i.nq = zext i8 %i.np to i32                    ; 2 uses
  %.masked.i45.i = and i32 %i.nq, 254
  %i.nr = or i32 %.masked.i45.i, %i.no
  %.not.i46.i = icmp eq i32 %i.nr, 0
  br i1 %.not.i46.i, label %fts3ColumnlistCopy.exit48.i, label %.lr.ph.i43.i, !llvm.loop !490

fts3ColumnlistCopy.exit48.i:                      ; preds = %.lr.ph.i43.i, %bb.bs
  %.0.lcssa.i47.i = phi ptr [ %i.md, %bb.bs ], [ %i.nn, %.lr.ph.i43.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.ns = icmp ult ptr %.0.lcssa.i47.i, %i.le
  br i1 %i.ns, label %.lr.ph.i277, label %._crit_edge.i276, !llvm.loop !5871

._crit_edge.i276:                                 ; preds = %fts3ColumnlistCopy.exit48.i, %fts3ColumnlistCopy.exit.i
  %.227.lcssa.i = phi i32 [ %.126.i, %fts3ColumnlistCopy.exit.i ], [ %.429.i, %fts3ColumnlistCopy.exit48.i ] ; 3 uses
  %.2.lcssa.i = phi i32 [ %.1.i275, %fts3ColumnlistCopy.exit.i ], [ %.4.i, %fts3ColumnlistCopy.exit48.i ]
  %.not31.i = icmp eq i32 %.2.lcssa.i, 0
  br i1 %.not31.i, label %sqlite3Fts3FirstFilter.exit, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i276
  %i.nt = add nsw i32 %.227.lcssa.i, 1
  %i.nu = sext i32 %.227.lcssa.i to i64
  %i.nv = getelementptr inbounds i8, ptr %i.lb, i64 %i.nu
  store i8 0, ptr %i.nv, align 1, !tbaa !733
  br label %sqlite3Fts3FirstFilter.exit

sqlite3Fts3FirstFilter.exit:                      ; preds = %._crit_edge.i276, %bb.bt
  %.5.i = phi i32 [ %i.nt, %bb.bt ], [ %.227.lcssa.i, %._crit_edge.i276 ] ; 2 uses
  %.not229 = icmp eq i32 %.5.i, 0
  %i.nw = add nsw i32 %.5.i, %.0175409
  %spec.select235 = select i1 %.not229, i64 %.0174410, i64 %i.fg
  br label %fts3GrowSegReaderBuffer.exit

.preheader543:                                    ; preds = %bb.bk, %.preheader543
  %.08.i = phi ptr [ %i.nz, %.preheader543 ], [ %i.lb, %bb.bk ] ; 3 uses
  %.0.i278 = phi i64 [ %i.oa, %.preheader543 ], [ %.0, %bb.bk ] ; 2 uses
  %i.nx = trunc i64 %.0.i278 to i8                ; 2 uses
  %i.ny = or i8 %i.nx, -128
  %i.nz = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  store i8 %i.ny, ptr %.08.i, align 1, !tbaa !733
  %i.oa = lshr i64 %.0.i278, 7                    ; 2 uses
  %.not.i279 = icmp eq i64 %i.oa, 0
  br i1 %.not.i279, label %sqlite3Fts3PutVarint.exit, label %.preheader543, !llvm.loop !489

sqlite3Fts3PutVarint.exit:                        ; preds = %.preheader543
  store i8 %i.nx, ptr %.08.i, align 1, !tbaa !733
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = ptrtoint ptr %i.lb to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = trunc i64 %i.od to i32
  %i.of = add nsw i32 %.0175409, %i.oe            ; 3 uses
  br i1 %.not227, label %fts3GrowSegReaderBuffer.exit, label %bb.bu

bb.bu:                                            ; preds = %sqlite3Fts3PutVarint.exit
  %i.og = load ptr, ptr %i.aj, align 8, !tbaa !2642
  %i.oh = sext i32 %i.of to i64
  %i.oi = getelementptr inbounds i8, ptr %i.og, i64 %i.oh
  %i.oj = load ptr, ptr %i.e, align 8, !tbaa !741
  %i.ok = sext i32 %i.ke to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oi, ptr align 1 %i.oj, i64 %i.ok, i1 false)
  %i.ol = add nsw i32 %i.of, %i.ke                ; 2 uses
  %i.om = load ptr, ptr %i.aj, align 8, !tbaa !2642
  %i.on = add nsw i32 %i.ol, 1
  %i.oo = sext i32 %i.ol to i64
  %i.op = getelementptr inbounds i8, ptr %i.om, i64 %i.oo
  store i8 0, ptr %i.op, align 1, !tbaa !733
  br label %fts3GrowSegReaderBuffer.exit

fts3SegReaderSort.exit295.thread:                 ; preds = %sqlite3_realloc64.exit.i269, %bb.bi, %bb.be, %bb.bc
  %.4199.ph = phi i32 [ 7, %bb.bi ], [ 7, %sqlite3_realloc64.exit.i269 ], [ 267, %bb.be ], [ 267, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  br label %.thread334

fts3GrowSegReaderBuffer.exit:                     ; preds = %sqlite3Fts3PutVarint.exit, %bb.bu, %sqlite3Fts3FirstFilter.exit, %bb.ba
  %.4179 = phi i32 [ %.0175409, %bb.ba ], [ %i.nw, %sqlite3Fts3FirstFilter.exit ], [ %i.on, %bb.bu ], [ %i.of, %sqlite3Fts3PutVarint.exit ] ; 4 uses
  %.4 = phi i64 [ %.0174410, %bb.ba ], [ %spec.select235, %sqlite3Fts3FirstFilter.exit ], [ %i.fg, %bb.bu ], [ %i.fg, %sqlite3Fts3PutVarint.exit ]
  %i.oq = icmp eq i32 %.0173.lcssa, %.0183.lcssa
  %i.or = sext i1 %i.oq to i32
  %spec.select.i280 = add i32 %.0173.lcssa, %i.or ; 3 uses
  %i.os = icmp sgt i32 %spec.select.i280, 0
  br i1 %i.os, label %.preheader.lr.ph.i282, label %fts3SegReaderSort.exit295

.preheader.lr.ph.i282:                            ; preds = %fts3GrowSegReaderBuffer.exit
  %i.ot = add nsw i32 %spec.select.i280, -1
  %i.ou = zext nneg i32 %i.ot to i64
  br label %.preheader.i283

.preheader.i283:                                  ; preds = %.thread.i287, %.preheader.lr.ph.i282
  %indvars.iv.i284 = phi i64 [ %i.ou, %.preheader.lr.ph.i282 ], [ %indvars.iv.next.i288, %.thread.i287 ] ; 3 uses
  %.02532.in.i285 = phi i32 [ %spec.select.i280, %.preheader.lr.ph.i282 ], [ %.02532.i286, %.thread.i287 ] ; 3 uses
  %.02532.i286 = add nsw i32 %.02532.in.i285, -1
  %i.ov = icmp slt i32 %.02532.in.i285, %.0183.lcssa
  br i1 %i.ov, label %.lr.ph.preheader.i289, label %.thread.i287

.lr.ph.preheader.i289:                            ; preds = %.preheader.i283
  %.phi.trans.insert.i290 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i284
  %.pre.i291 = load ptr, ptr %.phi.trans.insert.i290, align 8, !tbaa !2641
  br label %.lr.ph.i292

.lr.ph.i292:                                      ; preds = %bb.bv, %.lr.ph.preheader.i289
  %i.ow = phi ptr [ %.pre.i291, %.lr.ph.preheader.i289 ], [ %i.pd, %bb.bv ]
  %indvars.iv33.i293 = phi i64 [ %indvars.iv.i284, %.lr.ph.preheader.i289 ], [ %indvars.iv.next34.i294, %bb.bv ] ; 2 uses
  %indvars.iv.next34.i294 = add nuw nsw i64 %indvars.iv33.i293, 1 ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next34.i294 ; 3 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !2641
  %i.oz = call i32 %i.n(ptr noundef %i.ow, ptr noundef %i.oy) #58, !callees !483, !inline_history !484
  %i.pa = icmp slt i32 %i.oz, 0
  br i1 %i.pa, label %.thread.i287, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i292
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv33.i293 ; 2 uses
  %i.pc = load ptr, ptr %i.ox, align 8, !tbaa !2641
  %i.pd = load ptr, ptr %i.pb, align 8, !tbaa !2641 ; 2 uses
  store ptr %i.pd, ptr %i.ox, align 8, !tbaa !2641
  store ptr %i.pc, ptr %i.pb, align 8, !tbaa !2641
  %i.pe = trunc nuw i64 %indvars.iv.next34.i294 to i32
  %i.pf = icmp sgt i32 %spec.select.i239, %i.pe
  br i1 %i.pf, label %.lr.ph.i292, label %.thread.i287, !llvm.loop !479

.thread.i287:                                     ; preds = %bb.bv, %.lr.ph.i292, %.preheader.i283
  %i.pg = icmp sgt i32 %.02532.in.i285, 1
  %indvars.iv.next.i288 = add nsw i64 %indvars.iv.i284, -1
  br i1 %i.pg, label %.preheader.i283, label %fts3SegReaderSort.exit295, !llvm.loop !480

fts3SegReaderSort.exit295:                        ; preds = %.thread.i287, %fts3GrowSegReaderBuffer.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  %i.ph = load ptr, ptr %i.i, align 8, !tbaa !2641 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 112
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !2671
  %.not221 = icmp eq ptr %i.pj, null
  br i1 %.not221, label %._crit_edge412, label %.lr.ph411, !llvm.loop !5872

._crit_edge412:                                   ; preds = %fts3SegReaderSort.exit295
  %i.pk = icmp sgt i32 %.4179, 0
  br i1 %i.pk, label %bb.bw, label %._crit_edge412.thread

bb.bw:                                            ; preds = %._crit_edge412
  %i.pl = zext nneg i32 %.4179 to i64             ; 2 uses
  %i.pm = add nuw nsw i64 %i.pl, 20               ; 2 uses
  %i.pn = load i64, ptr %i.ai, align 8, !tbaa !2678
  %i.po = icmp sgt i64 %i.pm, %i.pn
  %.pre464 = load ptr, ptr %i.aj, align 8, !tbaa !2642 ; 2 uses
  br i1 %i.po, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.pp = shl nuw nsw i64 %i.pm, 1                ; 2 uses
  store i64 %i.pp, ptr %i.ai, align 8, !tbaa !2678
  %i.pq = call i32 @sqlite3_initialize(), !inline_history !5870
  %.not.i.i298 = icmp eq i32 %i.pq, 0
  br i1 %.not.i.i298, label %sqlite3_realloc64.exit.i299, label %.thread334

sqlite3_realloc64.exit.i299:                      ; preds = %bb.bx
  %i.pr = call fastcc ptr @sqlite3Realloc(ptr noundef %.pre464, i64 noundef %i.pp), !inline_history !5870 ; 3 uses
  %.not.i300 = icmp eq ptr %i.pr, null
  br i1 %.not.i300, label %.thread334, label %bb.by

bb.by:                                            ; preds = %sqlite3_realloc64.exit.i299
  store ptr %i.pr, ptr %i.aj, align 8, !tbaa !2642
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bw, %bb.by
  %i.ps = phi ptr [ %.pre464, %bb.bw ], [ %i.pr, %bb.by ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.pt, i8 0, i64 20, i1 false)
  %i.pu = load ptr, ptr %i.aj, align 8, !tbaa !2642
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.pu, ptr %i.pv, align 8, !tbaa !2679
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %.4179, ptr %i.pw, align 8, !tbaa !2677
  br label %.thread345

.thread345:                                       ; preds = %.thread492, %bb.x, %.thread490, %bb.bz
  %.10.ph = phi i32 [ 100, %bb.bz ], [ 7, %.thread492 ], [ 100, %bb.x ], [ 100, %.thread490 ]
  store i32 %.0183.lcssa, ptr %i.x, align 4, !tbaa !2674
  br label %.thread334

._crit_edge412.thread:                            ; preds = %fts3SegReaderSort.exit254, %._crit_edge412
  store i32 %.0183.lcssa, ptr %i.x, align 4, !tbaa !2674
  br label %bb.b, !llvm.loop !5873

.thread334:                                       ; preds = %bb.l, %bb.m, %fts3SegReaderSort.exit, %bb.c, %sqlite3_realloc64.exit.i299, %bb.bx, %fts3SegReaderSort.exit295.thread, %.thread345, %bb.a
  %.10205 = phi i32 [ 0, %bb.a ], [ %i.aq, %bb.c ], [ %.10.ph, %.thread345 ], [ %.4199.ph, %fts3SegReaderSort.exit295.thread ], [ 7, %sqlite3_realloc64.exit.i299 ], [ 7, %bb.bx ], [ 0, %fts3SegReaderSort.exit ], [ 0, %bb.m ], [ 0, %bb.l ]
  ret i32 %.10205
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @fts3SegReaderDoclistCmpRev(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2671
  %i.c = icmp eq ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2671
  %i.g = icmp eq ptr %i.f, null
  %.neg = sext i1 %i.g to i32
  %i.h = add nsw i32 %.neg, %i.d                  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2680 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2680 ; 2 uses
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %1, align 8, !tbaa !2651
  %i.p = load i32, ptr %0, align 8, !tbaa !2651
  %i.q = sub nsw i32 %i.o, %i.p
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = icmp slt i64 %i.k, %i.m
  %i.s = select i1 %i.r, i32 1, i32 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.h, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @fts3SegReaderDoclistCmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2671
  %i.c = icmp eq ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2671
  %i.g = icmp eq ptr %i.f, null
  %.neg = sext i1 %i.g to i32
  %i.h = add nsw i32 %.neg, %i.d                  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2680 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2680 ; 2 uses
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %1, align 8, !tbaa !2651
  %i.p = load i32, ptr %0, align 8, !tbaa !2651
  %i.q = sub nsw i32 %i.o, %i.p
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = icmp sgt i64 %i.k, %i.m
  %i.s = select i1 %i.r, i32 1, i32 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.h, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3SegReaderFirstDocid(i8 %.463.val, ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %.not = icmp eq i8 %.463.val, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2652
  %.not18 = icmp eq ptr %i.c, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
end_hunk_2
begin_hunk_3_@sqlite3Fts3MsrIncrNext:bb.a
  %or.cond97 = and i1 %i.z, %i.q
  br i1 %or.cond97, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %fts3SegReaderNextDocid.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %fts3SegReaderNextDocid.exit ], [ 1, %bb.c ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2641 ; 13 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2671 ; 3 uses
  %.not49 = icmp eq ptr %i.ad, null
  br i1 %.not49, label %.critedge.thread.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 128 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !2680
  %i.ag = icmp eq i64 %i.af, %i.x
  br i1 %i.ag, label %bb.e, label %.critedge.thread.loopexit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !741
  %i.ah = load i8, ptr %i.i, align 1, !tbaa !2672
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2652
  %.not54.i = icmp eq ptr %i.aj, null
  br i1 %.not54.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i8 0, ptr %i.b, align 1, !tbaa !733
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2664
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2665
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  call fastcc void @sqlite3Fts3DoclistPrev(i32 noundef 0, ptr noundef %i.al, i32 noundef %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.b), !inline_history !2681
  %i.ap = load i8, ptr %i.b, align 1, !tbaa !733
  %.not61.i = icmp eq i8 %i.ap, 0
  %i.aq = load ptr, ptr %i.a, align 8
  %storemerge.i = select i1 %.not61.i, ptr %i.aq, ptr null
  store ptr %storemerge.i, ptr %i.ac, align 8, !tbaa !2671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %fts3SegReaderNextDocid.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2664 ; 2 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.av = load i32, ptr %i.au, align 8, !tbaa !2665
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 52 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.lcssa7681.i = phi ptr [ %i.ad, %bb.h ], [ %.lcssa76.i, %bb.k ] ; 3 uses
  %.041.i = phi i8 [ 0, %bb.h ], [ %.1.lcssa.i, %bb.k ] ; 2 uses
  %i.bb = load i8, ptr %.lcssa7681.i, align 1, !tbaa !733 ; 2 uses
  %i.bc = or i8 %i.bb, %.041.i
  %.not5577.i = icmp eq i8 %i.bc, 0
  br i1 %.not5577.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.bd = phi i8 [ %i.bh, %.lr.ph.i ], [ %i.bb, %bb.i ]
  %i.be = phi ptr [ %i.bf, %.lr.ph.i ], [ %.lcssa7681.i, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 3 uses
  %i.bg = and i8 %i.bd, -128                      ; 2 uses
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !733 ; 2 uses
  %i.bi = or i8 %i.bh, %i.bg
  %.not55.i = icmp eq i8 %i.bi, 0
  br i1 %.not55.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !485

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.i
  %.lcssa76.i = phi ptr [ %.lcssa7681.i, %bb.i ], [ %i.bf, %.lr.ph.i ] ; 3 uses
  %.1.lcssa.i = phi i8 [ %.041.i, %bb.i ], [ %i.bg, %.lr.ph.i ]
  %i.bj = load ptr, ptr %i.ay, align 8, !tbaa !2648
  %i.bk = icmp eq ptr %i.bj, null                 ; 2 uses
  br i1 %i.bk, label %bb.l, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !2647
  %i.bm = load i32, ptr %i.ba, align 4, !tbaa !2669
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn
  %i.bp = icmp ult ptr %.lcssa76.i, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = call fastcc i32 @fts3SegReaderIncrRead(ptr noundef nonnull %i.ab), !inline_history !2681 ; 2 uses
  %.not56.i = icmp eq i32 %i.bq, 0
  br i1 %.not56.i, label %bb.i, label %.critedge.loopexit.thread

bb.l:                                             ; preds = %bb.j, %._crit_edge.i
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa76.i, i64 1 ; 5 uses
  store ptr %i.br, ptr %i.a, align 8, !tbaa !741
  %i.bs = icmp ult ptr %i.br, %i.ax
  br i1 %i.bs, label %.lr.ph86.preheader.i, label %.critedge.i

.lr.ph86.preheader.i:                             ; preds = %bb.l
  %.promoted97.i = ptrtoaddr ptr %i.br to i64
  %i.bt = add i64 %i.aw, %i.at
  %i.bu = sub i64 %i.bt, %.promoted97.i
  %scevgep.i = getelementptr i8, ptr %i.br, i64 %i.bu
  br label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %bb.m, %.lr.ph86.preheader.i
  %i.bv = phi ptr [ %i.by, %bb.m ], [ %i.br, %.lr.ph86.preheader.i ] ; 6 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !733
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph86.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.by, %scevgep.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph86.i, !llvm.loop !486

.critedge.i:                                      ; preds = %bb.m, %bb.l
  store ptr null, ptr %i.ac, align 8, !tbaa !2671
  br label %fts3SegReaderNextDocid.exit

bb.n:                                             ; preds = %.lr.ph86.i
  store ptr %i.bv, ptr %i.a, align 8
  br i1 %i.bk, label %fts3SegReaderRequire.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = add i64 %i.bz, 10
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i
  %i.cb = load ptr, ptr %i.az, align 8, !tbaa !2647
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.ca, %i.cc
  %i.ce = load i32, ptr %i.ba, align 4, !tbaa !2669
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp sgt i64 %i.cd, %i.cf
  br i1 %i.cg, label %bb.p, label %fts3SegReaderRequire.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.ch = call fastcc i32 @fts3SegReaderIncrRead(ptr noundef nonnull %i.ab), !inline_history !2682 ; 2 uses
  %i.ci = load ptr, ptr %i.ay, align 8, !tbaa !2648
  %i.cj = icmp ne ptr %i.ci, null
  %i.ck = icmp eq i32 %i.ch, 0                    ; 2 uses
  %or.cond.i.i = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond.i.i, label %bb.o, label %fts3SegReaderRequire.exit.i, !llvm.loop !481

fts3SegReaderRequire.exit.i:                      ; preds = %bb.p
  br i1 %i.ck, label %fts3SegReaderRequire.exit.thread.i, label %.critedge.loopexit.thread

fts3SegReaderRequire.exit.thread.i:               ; preds = %bb.o, %fts3SegReaderRequire.exit.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.cl = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.c), !inline_history !2681
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.bv, i64 %i.cm
  store ptr %i.cn, ptr %i.ac, align 8, !tbaa !2671
  %i.co = load i8, ptr %i.i, align 1, !tbaa !2672
  %.not59.i = icmp eq i8 %i.co, 0
  %i.cp = load i64, ptr %i.ae, align 8, !tbaa !2680
  %i.cq = load i64, ptr %i.c, align 8, !tbaa !565 ; 2 uses
  %i.cr = sub i64 0, %i.cq
  %.sink.p.i = select i1 %.not59.i, i64 %i.cq, i64 %i.cr
  %.sink.i = add i64 %.sink.p.i, %i.cp
  store i64 %.sink.i, ptr %i.ae, align 8, !tbaa !2680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %fts3SegReaderNextDocid.exit

.critedge.loopexit.thread:                        ; preds = %fts3SegReaderRequire.exit.i, %bb.k
  %.145.i.ph = phi i32 [ %i.bq, %bb.k ], [ %i.ch, %fts3SegReaderRequire.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %.thread71

fts3SegReaderNextDocid.exit:                      ; preds = %bb.g, %.critedge.i, %fts3SegReaderRequire.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cs = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.cs, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !6170

.critedge.loopexit:                               ; preds = %fts3SegReaderNextDocid.exit
  %i.ct = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.c
  br i1 %i.z, label %.critedge.thread, label %.thread71

.critedge.thread.loopexit:                        ; preds = %.lr.ph, %bb.d
  %i.cu = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.loopexit, %.critedge.thread.loopexit, %.critedge
  %.089 = phi i32 [ 1, %.critedge ], [ %i.ct, %.critedge.loopexit ], [ %i.cu, %.critedge.thread.loopexit ] ; 2 uses
  %i.cv = load ptr, ptr %1, align 8, !tbaa !2639  ; 3 uses
  %i.cw = icmp eq i32 %.089, %i.g
  %i.cx = sext i1 %i.cw to i32
  %spec.select.i = add i32 %.089, %i.cx           ; 3 uses
  %i.cy = icmp sgt i32 %spec.select.i, 0
  br i1 %i.cy, label %.preheader.lr.ph.i, label %fts3SegReaderSort.exit

.preheader.lr.ph.i:                               ; preds = %.critedge.thread
  %i.cz = add nsw i32 %spec.select.i, -1
  %i.da = zext nneg i32 %i.cz to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.thread.i, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.da, %.preheader.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %.02532.in.i = phi i32 [ %spec.select.i, %.preheader.lr.ph.i ], [ %.02532.i, %.thread.i ] ; 3 uses
  %.02532.i = add nsw i32 %.02532.in.i, -1
  %i.db = icmp slt i32 %.02532.in.i, %i.g
  br i1 %i.db, label %.lr.ph.preheader.i, label %.thread.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2641
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.q, %.lr.ph.preheader.i
  %i.dc = phi ptr [ %.pre.i, %.lr.ph.preheader.i ], [ %i.dj, %bb.q ]
  %indvars.iv33.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next34.i, %bb.q ] ; 2 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next34.i ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2641
  %i.df = call i32 %i.k(ptr noundef %i.dc, ptr noundef %i.de) #58, !callees !483, !inline_history !484
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i54
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv33.i ; 2 uses
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !2641
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !2641 ; 2 uses
  store ptr %i.dj, ptr %i.dd, align 8, !tbaa !2641
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !2641
  %i.dk = trunc nuw i64 %indvars.iv.next34.i to i32
  %i.dl = icmp sgt i32 %i.r, %i.dk
  br i1 %i.dl, label %.lr.ph.i54, label %.thread.i, !llvm.loop !479

.thread.i:                                        ; preds = %bb.q, %.lr.ph.i54, %.preheader.i
  %i.dm = icmp sgt i32 %.02532.in.i, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.dm, label %.preheader.i, label %fts3SegReaderSort.exit, !llvm.loop !480

fts3SegReaderSort.exit:                           ; preds = %.thread.i, %.critedge.thread
  %i.dn = load i32, ptr %i.e, align 4, !tbaa !570 ; 5 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %bb.r, label %bb.w

bb.r:                                             ; preds = %fts3SegReaderSort.exit
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !2641
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2652
  %.not51 = icmp eq ptr %i.dr, null
  br i1 %.not51, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = load ptr, ptr %i.d, align 8, !tbaa !741
  %narrow = add nuw i32 %i.dn, 1                  ; 2 uses
  %i.dt = zext i32 %narrow to i64                 ; 3 uses
  %i.du = add nuw nsw i64 %i.dt, 20
  %i.dv = load i64, ptr %i.s, align 8, !tbaa !2678
  %i.dw = icmp sgt i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.t, label %._crit_edge.i55

._crit_edge.i55:                                  ; preds = %bb.s
  %.pre.i57 = load ptr, ptr %.phi.trans.insert.i56, align 8, !tbaa !2642
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dx = shl i32 %narrow, 1
  %i.dy = add i32 %i.dx, 20
  %i.dz = load ptr, ptr %.phi.trans.insert.i56, align 8, !tbaa !2642
  %i.ea = sext i32 %i.dy to i64                   ; 2 uses
  %i.eb = call i32 @sqlite3_initialize(), !inline_history !482
  %.not.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i, label %sqlite3_realloc64.exit.i, label %.thread71

sqlite3_realloc64.exit.i:                         ; preds = %bb.t
  %i.ec = call fastcc ptr @sqlite3Realloc(ptr noundef %i.dz, i64 noundef %i.ea), !inline_history !482 ; 3 uses
  %.not.i59 = icmp eq ptr %i.ec, null
  br i1 %.not.i59, label %.thread71, label %bb.u

bb.u:                                             ; preds = %sqlite3_realloc64.exit.i
  store ptr %i.ec, ptr %.phi.trans.insert.i56, align 8, !tbaa !2642
  store i64 %i.ea, ptr %i.s, align 8, !tbaa !2678
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i55
  %i.ed = phi ptr [ %.pre.i57, %._crit_edge.i55 ], [ %i.ec, %bb.u ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ed, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ds, i64 range(i64 -2147483648, 2147483649) %i.dt, i1 false)
  %i.ee = load ptr, ptr %.phi.trans.insert.i56, align 8, !tbaa !2642
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ef, i8 0, i64 20, i1 false)
  %i.eg = load ptr, ptr %.phi.trans.insert.i56, align 8, !tbaa !2642
  store ptr %i.eg, ptr %i.d, align 8, !tbaa !741
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r, %fts3SegReaderSort.exit
  %i.eh = load i32, ptr %i.t, align 8, !tbaa !2804 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, -1
  br i1 %i.ei, label %bb.x, label %thread-pre-split

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !741 ; 4 uses
  %i.ek = ptrtoaddr ptr %i.ej to i64
  %i.el = sext i32 %i.dn to i64                   ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %i.el ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %sqlite3Fts3GetVarint32.exit.i, %bb.x
  %.048.i = phi i32 [ 0, %bb.x ], [ %.149.i, %sqlite3Fts3GetVarint32.exit.i ]
  %.040.i = phi ptr [ %i.ej, %bb.x ], [ %.1.lcssa.i61, %sqlite3Fts3GetVarint32.exit.i ] ; 2 uses
  %.038.i = phi i32 [ %i.dn, %bb.x ], [ %i.fa, %sqlite3Fts3GetVarint32.exit.i ]
  %.037.i = phi ptr [ %i.ej, %bb.x ], [ %i.gj, %sqlite3Fts3GetVarint32.exit.i ] ; 5 uses
  %i.en = icmp ult ptr %.037.i, %i.em
  br i1 %i.en, label %.lr.ph.preheader.i62, label %.critedge.i60

.lr.ph.preheader.i62:                             ; preds = %bb.y
  %.03766.i = ptrtoaddr ptr %.037.i to i64
  %i.eo = getelementptr i8, ptr %.037.i, i64 %i.ek
  %scevgep.i63 = getelementptr i8, ptr %i.eo, i64 %i.el
  %i.ep = sub i64 0, %.03766.i
  %scevgep67.i = getelementptr i8, ptr %scevgep.i63, i64 %i.ep ; 2 uses
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.z, %.lr.ph.preheader.i62
  %.03661.i = phi i32 [ %i.eu, %bb.z ], [ 0, %.lr.ph.preheader.i62 ]
  %.160.i = phi ptr [ %i.et, %bb.z ], [ %.037.i, %.lr.ph.preheader.i62 ] ; 3 uses
  %i.eq = load i8, ptr %.160.i, align 1, !tbaa !733
  %i.er = zext i8 %i.eq to i32                    ; 2 uses
  %.masked.i = and i32 %i.er, 254
  %i.es = or i32 %.masked.i, %.03661.i
  %.not.i65 = icmp eq i32 %i.es, 0
  br i1 %.not.i65, label %.critedge.i60, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i64
  %i.et = getelementptr inbounds nuw i8, ptr %.160.i, i64 1 ; 2 uses
  %i.eu = and i32 %i.er, 128
  %exitcond.not.i66 = icmp eq ptr %i.et, %scevgep67.i
  br i1 %exitcond.not.i66, label %.critedge.i60, label %.lr.ph.i64, !llvm.loop !487

.critedge.i60:                                    ; preds = %bb.z, %.lr.ph.i64, %bb.y
  %.1.lcssa.i61 = phi ptr [ %.037.i, %bb.y ], [ %.160.i, %.lr.ph.i64 ], [ %scevgep67.i, %bb.z ] ; 8 uses
  %i.ev = icmp eq i32 %i.eh, %.048.i
  %i.ew = ptrtoint ptr %.1.lcssa.i61 to i64       ; 2 uses
  %i.ex = ptrtoint ptr %.040.i to i64             ; 2 uses
  br i1 %i.ev, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge.i60
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = trunc i64 %i.ey to i32
  br label %.loopexit.i

bb.ab:                                            ; preds = %.critedge.i60
  %.neg.i = sub i64 %i.ex, %i.ew
  %.neg45.i = trunc i64 %.neg.i to i32
  %i.fa = add i32 %.038.i, %.neg45.i              ; 3 uses
  %i.fb = icmp slt i32 %i.fa, 1
  br i1 %i.fb, label %.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %.1.lcssa.i61, i64 1 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !733 ; 3 uses
  %.not46.i = icmp sgt i8 %i.fd, -1
  br i1 %.not46.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = getelementptr inbounds nuw i8, ptr %.1.lcssa.i61, i64 2
  %i.ff = and i8 %i.fd, 127
  %i.fg = zext nneg i8 %i.ff to i32
  %i.fh = load i8, ptr %i.fe, align 1, !tbaa !733 ; 2 uses
  %i.fi = zext i8 %i.fh to i32
  %i.fj = shl nuw nsw i32 %i.fi, 7
  %i.fk = or disjoint i32 %i.fj, %i.fg            ; 2 uses
  %i.fl = icmp sgt i8 %i.fh, -1
  br i1 %i.fl, label %sqlite3Fts3GetVarint32.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fm = getelementptr inbounds nuw i8, ptr %.1.lcssa.i61, i64 3
  %i.fn = and i32 %i.fk, 16383
  %i.fo = load i8, ptr %i.fm, align 1, !tbaa !733 ; 2 uses
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 14
  %i.fr = or disjoint i32 %i.fq, %i.fn            ; 2 uses
  %i.fs = icmp sgt i8 %i.fo, -1
  br i1 %i.fs, label %sqlite3Fts3GetVarint32.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %.1.lcssa.i61, i64 4
  %i.fu = and i32 %i.fr, 2097151
  %i.fv = load i8, ptr %i.ft, align 1, !tbaa !733 ; 2 uses
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, 21
  %i.fy = or disjoint i32 %i.fx, %i.fu            ; 2 uses
  %i.fz = icmp sgt i8 %i.fv, -1
  br i1 %i.fz, label %sqlite3Fts3GetVarint32.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
end_hunk_3
