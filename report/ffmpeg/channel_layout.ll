Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/channel_layout?download=true
inline.NumInlined: 39
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@av_channel_layout_channel_from_string:bb.a
  %i.aa = and i64 %i.z, %i.v
  %.not27.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not27.i.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add i32 %.3.i, -1
  %.not28.i.1 = icmp eq i32 %.3.i, 0
  br i1 %.not28.i.1, label %.loopexit.loopexit.split.loop.exit.i.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3.i.1 = phi i32 [ %i.ab, %bb.j ], [ %.3.i, %bb.i ]
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %av_channel_layout_channel_from_index.exit, label %bb.g, !llvm.loop !1

.loopexit.loopexit.split.loop.exit.i.split.loop.exit: ; preds = %bb.j
  %indvars.iv.next.i.le = or disjoint i64 %indvars.iv.i, 1
  br label %.loopexit.loopexit.split.loop.exit.i

.loopexit.loopexit.split.loop.exit.i:             ; preds = %bb.h, %.loopexit.loopexit.split.loop.exit.i.split.loop.exit
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.next.i.le, %.loopexit.loopexit.split.loop.exit.i.split.loop.exit ], [ %indvars.iv.i, %bb.h ]
  %i.ac = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  br label %av_channel_layout_channel_from_index.exit

av_channel_layout_channel_from_index.exit:        ; preds = %bb.k, %.loopexit.loopexit.split.loop.exit.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.t, %bb.e ], [ -1, %bb.c ], [ %i.j, %bb.d ], [ -1, %bb.b ], [ %i.ac, %.loopexit.loopexit.split.loop.exit.i ], [ -1, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @av_channel_layout_index_from_string(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !29
  switch i32 %i.b, label %.critedge [
    i32 2, label %bb.b
    i32 3, label %.critedge.thread
    i32 1, label %.critedge.thread
  ]

bb.b:                                             ; preds = %bb.a
  %strchr = tail call ptr @strchr(ptr nonnull dereferenceable(1) %1, i32 64) ; 2 uses
  %.not = icmp eq ptr %strchr, null
  br i1 %.not, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = getelementptr inbounds nuw i8, ptr %strchr, i64 1 ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 16)
  %i.h = call i64 @av_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.g) #15 ; 0 uses
  %i.i = load i8, ptr %i.c, align 1, !tbaa !24
  %i.j = call i32 @av_channel_from_string(ptr noundef nonnull %i.a)
  %.034.fr = freeze i32 %i.j                      ; 3 uses
  %i.k = icmp ne i32 %.034.fr, -1
  %i.l = load i8, ptr %i.a, align 16
  %i.m = icmp eq i8 %i.l, 0
  %or.cond.not = select i1 %i.k, i1 true, i1 %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %or.cond.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.not41 = icmp eq i8 %i.i, 0
  br i1 %.not41, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = icmp eq i32 %.034.fr, -1
  %i.r = icmp sgt i32 %i.o, 0                     ; 2 uses
  br i1 %i.q, label %.lr.ph.split.us.split, label %.lr.ph.split.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  br i1 %i.r, label %.lr.ph65, label %.critedge.thread

.lr.ph65:                                         ; preds = %.lr.ph.split.us.split
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !24
  %wide.trip.count76 = zext nneg i32 %i.o to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph65, %bb.f
  %indvars.iv73 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next74, %bb.f ] ; 3 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv73
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.u) #16
  %.not45.us = icmp eq i32 %i.v, 0
  br i1 %.not45.us, label %.critedge.loopexit66, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %.critedge.thread, label %bb.e

.lr.ph.split.split:                               ; preds = %.lr.ph
  br i1 %i.r, label %.lr.ph62, label %.critedge.thread

.lr.ph62:                                         ; preds = %.lr.ph.split.split
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !24
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph62, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.y) #16
  %.not45 = icmp eq i32 %i.z, 0
  br i1 %.not45, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !26
  %i.ab = icmp eq i32 %.034.fr, %i.aa
  br i1 %i.ab, label %.critedge.loopexit67, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %bb.g

.critedge.thread:                                 ; preds = %bb.i, %bb.f, %bb.b, %bb.d, %.lr.ph.split.split, %.lr.ph.split.us.split, %bb.a, %bb.a
  %i.ac = call i32 @av_channel_from_string(ptr noundef %1) ; 6 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.critedge.thread
  %i.ae = load i32, ptr %0, align 8, !tbaa !29    ; 2 uses
  switch i32 %i.ae, label %.critedge [
    i32 2, label %.preheader.i
    i32 3, label %bb.m
    i32 1, label %bb.m
  ]

.preheader.i:                                     ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !30 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24
  %wide.trip.count.i = zext nneg i32 %i.ag to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26
  %i.am = icmp eq i32 %i.al, %i.ac
  br i1 %i.am, label %.loopexit.loopexit.split.loop.exit36.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %bb.k, !llvm.loop !5

bb.m:                                             ; preds = %bb.j, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !30
  %i.ar = trunc i64 %i.ao to i32
  %i.as = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ar)
  %i.at = lshr i64 %i.ao, 32
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.au)
  %i.aw = add nuw nsw i32 %i.as, %i.av
  %i.ax = sub i32 %i.aq, %i.aw                    ; 2 uses
  %i.ay = icmp eq i32 %i.ae, 3
  %i.az = icmp sgt i32 %i.ac, 1023
  %or.cond.i = and i1 %i.az, %i.ay
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = add nsw i32 %i.ac, -1024                ; 2 uses
  %.not28.i = icmp slt i32 %i.ba, %i.ax
  %..i = select i1 %.not28.i, i32 %i.ba, i32 -22
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bb = icmp ugt i32 %i.ac, 63
  br i1 %i.bb, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = zext nneg i32 %i.ac to i64
  %i.bd = shl nuw i64 1, %i.bc                    ; 2 uses
  %i.be = and i64 %i.ao, %i.bd
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = add i64 %i.bd, -1
  %i.bg = and i64 %i.ao, %i.bf                    ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bh)
  %i.bj = lshr i64 %i.bg, 32
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.bk)
  %i.bm = add nuw nsw i32 %i.bl, %i.bi
  %i.bn = add nsw i32 %i.bm, %i.ax
  br label %.critedge

.loopexit.loopexit.split.loop.exit36.i:           ; preds = %bb.k
  %i.bo = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge

.critedge.loopexit66:                             ; preds = %bb.e
  %i.bp = trunc nuw nsw i64 %indvars.iv73 to i32
  br label %.critedge

.critedge.loopexit67:                             ; preds = %bb.h
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.loopexit67, %.critedge.loopexit66, %.loopexit.loopexit.split.loop.exit36.i, %bb.q, %bb.p, %bb.o, %bb.n, %.preheader.i, %bb.j, %bb.a, %.critedge.thread, %bb.c
  %.3 = phi i32 [ -22, %.critedge.thread ], [ -22, %bb.c ], [ -22, %.preheader.i ], [ -22, %bb.a ], [ %i.bp, %.critedge.loopexit66 ], [ -22, %bb.p ], [ -22, %bb.o ], [ %i.bo, %.loopexit.loopexit.split.loop.exit36.i ], [ -22, %bb.j ], [ %..i, %bb.n ], [ %i.bn, %bb.q ], [ %i.bq, %.critedge.loopexit67 ], [ -22, %bb.l ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @av_channel_layout_index_from_channel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !29     ; 2 uses
  switch i32 %i.b, label %.loopexit [
    i32 2, label %.preheader
    i32 3, label %bb.e
    i32 1, label %bb.e
  ]

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %.loopexit.loopexit.split.loop.exit36, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !5

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %i.o = trunc i64 %i.l to i32
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.o)
  %i.q = lshr i64 %i.l, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.r)
  %i.t = add nuw nsw i32 %i.p, %i.s
  %i.u = sub i32 %i.n, %i.t                       ; 2 uses
  %i.v = icmp eq i32 %i.b, 3
  %i.w = icmp sgt i32 %1, 1023
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %1, -1024                    ; 2 uses
  %.not28 = icmp slt i32 %i.x, %i.u
  %. = select i1 %.not28, i32 %i.x, i32 -22
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.y = icmp ugt i32 %1, 63
  br i1 %i.y, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = zext nneg i32 %1 to i64
  %i.aa = shl nuw i64 1, %i.z                     ; 2 uses
  %i.ab = and i64 %i.l, %i.aa
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %i.aa, -1
  %i.ad = and i64 %i.l, %i.ac                     ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ae)
  %i.ag = lshr i64 %i.ad, 32
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.ah)
  %i.aj = add nuw nsw i32 %i.ai, %i.af
  %i.ak = add nsw i32 %i.aj, %i.u
  br label %.loopexit

.loopexit.loopexit.split.loop.exit36:             ; preds = %bb.c
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit36, %.preheader, %bb.b, %bb.i, %bb.f, %bb.h, %bb.g, %bb.a
  %.1 = phi i32 [ -22, %bb.h ], [ -22, %bb.g ], [ -22, %bb.a ], [ -22, %bb.b ], [ %., %bb.f ], [ %i.ak, %bb.i ], [ -22, %.preheader ], [ %i.al, %.loopexit.loopexit.split.loop.exit36 ], [ -22, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @av_channel_layout_check(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30   ; 4 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !29
  switch i32 %i.d, label %bb.f [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 0, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.g)
  %i.i = lshr i64 %i.f, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.j)
  %i.l = add nuw nsw i32 %i.k, %i.h
  %i.m = icmp eq i32 %i.l, %i.b
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 8, !tbaa !26
  %.not22 = icmp ne i32 %i.q, -1                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not22, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !6

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !24   ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.t)
  %i.v = lshr i64 %i.s, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.w)
  %i.y = add nuw nsw i32 %i.x, %i.u
  %i.z = icmp samesign ult i32 %i.y, %i.b
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.d, %bb.a, %bb.f, %bb.e, %bb.c
  %.1.shrunk = phi i1 [ true, %bb.b ], [ false, %bb.f ], [ %i.m, %bb.c ], [ false, %bb.d ], [ %i.z, %bb.e ], [ false, %bb.a ], [ %.not22, %.lr.ph ]
  %.1 = zext i1 %.1.shrunk to i32
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @av_channel_layout_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !29     ; 4 uses
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !29     ; 3 uses
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %.not20.not = xor i1 %i.f, %i.h
  %brmerge = or i1 %i.f, %i.h
  br i1 %brmerge, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.e, label %bb.f [
    i32 1, label %bb.d
    i32 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.i = icmp eq i32 %i.e, %i.g
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24
  %i.n = icmp ne i64 %i.k, %i.m
  br label %.loopexit

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.o = icmp sgt i32 %i.b, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.g

bb.g:                                             ; preds = %av_channel_layout_channel_from_index.exit37, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %av_channel_layout_channel_from_index.exit37 ] ; 11 uses
  switch i32 %i.e, label %av_channel_layout_channel_from_index.exit [
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 8, !tbaa !26
  br label %av_channel_layout_channel_from_index.exit

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24 ; 3 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.u)
  %i.w = lshr i64 %i.t, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %i.z = add nuw nsw i32 %i.v, %i.y
  %i.aa = sub nsw i32 %i.b, %i.z                  ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %.not26.i = icmp samesign ult i64 %indvars.iv, %i.ab
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %i.ad = sub nuw i32 %i.ac, %i.aa
  %i.ae = trunc i64 %indvars.iv to i32
  %i.af = add i32 %i.ae, 1024
  br i1 %.not26.i, label %av_channel_layout_channel_from_index.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %i.ag = phi i64 [ %i.t, %bb.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %.1.i = phi i32 [ %i.ad, %bb.i ], [ %i.p, %._crit_edge.i ]
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %indvars.iv.i = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i.1, %bb.o ] ; 5 uses
  %.231.i = phi i32 [ %.1.i, %bb.j ], [ %.3.i.1, %bb.o ] ; 3 uses
  %i.ah = shl nuw i64 1, %indvars.iv.i
  %i.ai = and i64 %i.ah, %i.ag
  %.not27.i = icmp eq i64 %i.ai, 0
  br i1 %.not27.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = add i32 %.231.i, -1
  %.not28.i = icmp eq i32 %.231.i, 0
  br i1 %.not28.i, label %.loopexit.loopexit.split.loop.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3.i = phi i32 [ %i.aj, %bb.l ], [ %.231.i, %bb.k ] ; 3 uses
  %i.ak = shl nuw i64 2, %indvars.iv.i
  %i.al = and i64 %i.ak, %i.ag
  %.not27.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not27.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = add i32 %.3.i, -1
  %.not28.i.1 = icmp eq i32 %.3.i, 0
  br i1 %.not28.i.1, label %.loopexit.loopexit.split.loop.exit.i.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.3.i.1 = phi i32 [ %i.am, %bb.n ], [ %.3.i, %bb.m ]
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %av_channel_layout_channel_from_index.exit, label %bb.k, !llvm.loop !1

.loopexit.loopexit.split.loop.exit.i.split.loop.exit: ; preds = %bb.n
  %indvars.iv.next.i.le = or disjoint i64 %indvars.iv.i, 1
  br label %.loopexit.loopexit.split.loop.exit.i

.loopexit.loopexit.split.loop.exit.i:             ; preds = %bb.l, %.loopexit.loopexit.split.loop.exit.i.split.loop.exit
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.next.i.le, %.loopexit.loopexit.split.loop.exit.i.split.loop.exit ], [ %indvars.iv.i, %bb.l ]
  %i.an = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  br label %av_channel_layout_channel_from_index.exit

av_channel_layout_channel_from_index.exit:        ; preds = %bb.o, %bb.g, %bb.h, %bb.i, %.loopexit.loopexit.split.loop.exit.i
  %.122.i = phi i32 [ %i.af, %bb.i ], [ -1, %bb.g ], [ %i.s, %bb.h ], [ %i.an, %.loopexit.loopexit.split.loop.exit.i ], [ -1, %bb.o ]
  switch i32 %i.g, label %av_channel_layout_channel_from_index.exit37 [
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 1, label %._crit_edge.i24
  ]

._crit_edge.i24:                                  ; preds = %av_channel_layout_channel_from_index.exit
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !24
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.r

bb.p:                                             ; preds = %av_channel_layout_channel_from_index.exit
  %i.ap = load ptr, ptr %.phi.trans.insert.i25, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !26
  br label %av_channel_layout_channel_from_index.exit37

bb.q:                                             ; preds = %av_channel_layout_channel_from_index.exit
  %i.as = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !24 ; 3 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.at)
  %i.av = lshr i64 %i.as, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aw)
  %i.ay = add nuw nsw i32 %i.au, %i.ax
  %i.az = sub nsw i32 %i.b, %i.ay                 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %.not26.i36 = icmp samesign ult i64 %indvars.iv, %i.ba
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  %i.bc = sub nuw i32 %i.bb, %i.az
  %i.bd = trunc i64 %indvars.iv to i32
  %i.be = add i32 %i.bd, 1024
  br i1 %.not26.i36, label %av_channel_layout_channel_from_index.exit37, label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i24
  %i.bf = phi i64 [ %i.as, %bb.q ], [ %.pre.i26, %._crit_edge.i24 ] ; 2 uses
  %.1.i27 = phi i32 [ %i.bc, %bb.q ], [ %i.ao, %._crit_edge.i24 ]
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %bb.r
  %indvars.iv.i28 = phi i64 [ 0, %bb.r ], [ %indvars.iv.next.i33.1, %bb.w ] ; 5 uses
  %.231.i29 = phi i32 [ %.1.i27, %bb.r ], [ %.3.i32.1, %bb.w ] ; 3 uses
  %i.bg = shl nuw i64 1, %indvars.iv.i28
  %i.bh = and i64 %i.bg, %i.bf
  %.not27.i30 = icmp eq i64 %i.bh, 0
  br i1 %.not27.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = add i32 %.231.i29, -1
  %.not28.i31 = icmp eq i32 %.231.i29, 0
  br i1 %.not28.i31, label %.loopexit.loopexit.split.loop.exit.i35, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3.i32 = phi i32 [ %i.bi, %bb.t ], [ %.231.i29, %bb.s ] ; 3 uses
  %i.bj = shl nuw i64 2, %indvars.iv.i28
  %i.bk = and i64 %i.bj, %i.bf
  %.not27.i30.1 = icmp eq i64 %i.bk, 0
  br i1 %.not27.i30.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = add i32 %.3.i32, -1
  %.not28.i31.1 = icmp eq i32 %.3.i32, 0
  br i1 %.not28.i31.1, label %.loopexit.loopexit.split.loop.exit.i35.split.loop.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3.i32.1 = phi i32 [ %i.bl, %bb.v ], [ %.3.i32, %bb.u ]
  %indvars.iv.next.i33.1 = add nuw nsw i64 %indvars.iv.i28, 2 ; 2 uses
  %exitcond.not.i34.1 = icmp eq i64 %indvars.iv.next.i33.1, 64
  br i1 %exitcond.not.i34.1, label %av_channel_layout_channel_from_index.exit37, label %bb.s, !llvm.loop !1

.loopexit.loopexit.split.loop.exit.i35.split.loop.exit: ; preds = %bb.v
  %indvars.iv.next.i33.le = or disjoint i64 %indvars.iv.i28, 1
  br label %.loopexit.loopexit.split.loop.exit.i35

.loopexit.loopexit.split.loop.exit.i35:           ; preds = %bb.t, %.loopexit.loopexit.split.loop.exit.i35.split.loop.exit
  %indvars.iv.i28.lcssa = phi i64 [ %indvars.iv.next.i33.le, %.loopexit.loopexit.split.loop.exit.i35.split.loop.exit ], [ %indvars.iv.i28, %bb.t ]
  %i.bm = trunc nuw nsw i64 %indvars.iv.i28.lcssa to i32
  br label %av_channel_layout_channel_from_index.exit37

av_channel_layout_channel_from_index.exit37:      ; preds = %bb.w, %av_channel_layout_channel_from_index.exit, %bb.p, %bb.q, %.loopexit.loopexit.split.loop.exit.i35
  %.122.i23 = phi i32 [ %i.be, %bb.q ], [ -1, %av_channel_layout_channel_from_index.exit ], [ %i.ar, %bb.p ], [ %i.bm, %.loopexit.loopexit.split.loop.exit.i35 ], [ -1, %bb.w ]
  %.not21.not = icmp ne i32 %.122.i, %.122.i23    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %.not21.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %bb.g, !llvm.loop !49

.loopexit:                                        ; preds = %av_channel_layout_channel_from_index.exit37, %bb.f, %bb.b, %bb.a, %bb.e
  %.018.shrunk = phi i1 [ %i.n, %bb.e ], [ true, %bb.a ], [ %.not20.not, %bb.b ], [ false, %bb.f ], [ %.not21.not, %av_channel_layout_channel_from_index.exit37 ]
  %.018 = zext i1 %.018.shrunk to i32
  ret i32 %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define ptr @av_channel_layout_standard(ptr nofree noundef captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.b = icmp ult ptr %i.a, inttoptr (i64 40 to ptr)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr @channel_layout_map, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = add nuw nsw i64 %i.c, 1
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.g, ptr %0, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @av_channel_layout_subset(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  switch i32 %i.a, label %.loopexit [
    i32 1, label %bb.e
    i32 3, label %bb.e
    i32 2, label %.preheader
  ]

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %av_channel_layout_index_from_channel.exit.thread.us, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %av_channel_layout_index_from_channel.exit.thread.us ], [ 0, %.preheader ] ; 3 uses
  %.01219.us = phi i64 [ %.1.us, %av_channel_layout_index_from_channel.exit.thread.us ], [ 0, %.preheader ] ; 4 uses
  %i.d = shl nuw i64 1, %indvars.iv               ; 2 uses
  %i.e = and i64 %i.d, %1
  %.not.us = icmp eq i64 %i.e, 0
  br i1 %.not.us, label %av_channel_layout_index_from_channel.exit.thread.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 4, !tbaa !30   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.us, label %av_channel_layout_index_from_channel.exit.thread.us

.lr.ph.i.us:                                      ; preds = %.preheader.i.us
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !24
  %wide.trip.count.i.us = zext nneg i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %indvars.iv.i.us
  %i.j = load i32, ptr %i.i, align 8, !tbaa !26
  %i.k = zext i32 %i.j to i64
  %i.l = icmp eq i64 %indvars.iv, %i.k
  br i1 %i.l, label %.loopexit.loopexit.split.loop.exit36.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %av_channel_layout_index_from_channel.exit.thread.us, label %bb.c, !llvm.loop !5

.loopexit.loopexit.split.loop.exit36.i.us:        ; preds = %bb.c
  %spec.select.us = or i64 %i.d, %.01219.us
  br label %av_channel_layout_index_from_channel.exit.thread.us

av_channel_layout_index_from_channel.exit.thread.us: ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit36.i.us, %.preheader.i.us, %bb.b
  %.1.us = phi i64 [ %.01219.us, %bb.b ], [ %.01219.us, %.preheader.i.us ], [ %spec.select.us, %.loopexit.loopexit.split.loop.exit36.i.us ], [ %.01219.us, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !50

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24
  %i.o = and i64 %i.n, %1
  br label %.loopexit

.loopexit:                                        ; preds = %av_channel_layout_index_from_channel.exit.thread.us, %bb.a, %bb.e
  %.013 = phi i64 [ %i.o, %bb.e ], [ 0, %bb.a ], [ %.1.us, %av_channel_layout_index_from_channel.exit.thread.us ]
  ret i64 %.013
}

; Function Attrs: nounwind uwtable
define range(i32 -38, 2) i32 @av_channel_layout_retype(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0                     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30   ; 17 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %av_channel_layout_check.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !29     ; 6 uses
  switch i32 %i.e, label %av_channel_layout_check.exit.thread [
    i32 1, label %.split
    i32 2, label %bb.c
    i32 3, label %av_channel_layout_check.exit
    i32 0, label %av_channel_layout_check.exit.thread165
  ]

.split:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.h)
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.k)
  %i.m = add nuw nsw i32 %i.l, %i.i
  %i.n = icmp eq i32 %i.m, %i.c
  br i1 %i.n, label %av_channel_layout_check.exit.thread165, label %av_channel_layout_check.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %av_channel_layout_check.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %av_channel_layout_check.exit.thread165, label %.lr.ph.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26
  %.not22.i = icmp eq i32 %i.r, -1
  br i1 %.not22.i, label %av_channel_layout_check.exit.thread, label %bb.d

av_channel_layout_check.exit:                     ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.u)
  %i.w = lshr i64 %i.t, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %i.z = add nuw nsw i32 %i.y, %i.v
  %i.aa = icmp samesign ult i32 %i.z, %i.c
  br i1 %i.aa, label %av_channel_layout_check.exit.thread165, label %av_channel_layout_check.exit.thread

av_channel_layout_check.exit.thread165:           ; preds = %bb.d, %.split, %bb.b, %av_channel_layout_check.exit
  %i.ab = and i32 %2, 2
  %.not96 = icmp eq i32 %i.ab, 0
  br i1 %.not96, label %canonical_order.exit, label %bb.e

bb.e:                                             ; preds = %av_channel_layout_check.exit.thread165
  %.not.i100 = icmp eq i32 %i.e, 2
  br i1 %.not.i100, label %.lr.ph.i.i, label %av_channel_layout_check.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24 ; 6 uses
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64 ; 5 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %has_channel_names.exit.i, label %bb.g, !llvm.loop !3

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !24
  %.not9.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not9.i.i, label %bb.f, label %canonical_order.exit

.critedge.i:                                      ; preds = %has_channel_names.exit.i
  br i1 %.not23.i, label %canonical_order.exit, label %.lr.ph.i24.i

has_channel_names.exit.i:                         ; preds = %bb.f, %has_channel_names.exit.i
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i103, %has_channel_names.exit.i ], [ 0, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i102
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26
  %.not23.i = icmp eq i32 %i.ai, 768              ; 2 uses
  %indvars.iv.next.i103 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %i.aj = icmp samesign ult i64 %indvars.iv.next.i103, %wide.trip.count.i.i
  %or.cond.i = select i1 %i.aj, i1 %.not23.i, i1 false
  br i1 %or.cond.i, label %has_channel_names.exit.i, label %.critedge.i, !llvm.loop !51

.lr.ph.i24.i:                                     ; preds = %.critedge.i, %bb.i
  %indvars.iv.i26.i = phi i64 [ %indvars.iv.next.i27.i, %bb.i ], [ 0, %.critedge.i ] ; 2 uses
  %.01830.i.i = phi i64 [ %i.ap, %bb.i ], [ 0, %.critedge.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i26.i
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.al, 63
  br i1 %or.cond.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.i24.i
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 1, %i.am                ; 2 uses
  %i.ao = icmp samesign ult i64 %.01830.i.i, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = or i64 %i.an, %.01830.i.i
  %indvars.iv.next.i27.i = add nuw nsw i64 %indvars.iv.i26.i, 1 ; 2 uses
  %exitcond.not.i28.i = icmp eq i64 %indvars.iv.next.i27.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i28.i, label %canonical_order.exit, label %.lr.ph.i24.i, !llvm.loop !4

bb.j:                                             ; preds = %bb.h, %.lr.ph.i24.i
  %i.aq = load i32, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.ar = add i32 %i.aq, -1025
  %or.cond60.not.peel.i.i = icmp ult i32 %i.ar, 1023
  br i1 %or.cond60.not.peel.i.i, label %canonical_order.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = and i32 %i.aq, -1024
  %spec.select.peel.i.i = icmp ne i32 %i.as, 1024
  %.140.peel.i.i = sext i1 %spec.select.peel.i.i to i32 ; 2 uses
  %exitcond.peel.not.i.i = icmp eq i32 %i.c, 1
  br i1 %exitcond.peel.not.i.i, label %.loopexit.i.i, label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %bb.k, %.thread.i.i
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i33.i, %.thread.i.i ], [ 1, %bb.k ] ; 4 uses
  %.03964.i.i = phi i32 [ %.140.i.i, %.thread.i.i ], [ %.140.peel.i.i, %bb.k ]
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i31.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !26 ; 2 uses
  %i.av = and i32 %i.au, -1024
  %spec.select.i32.i = icmp eq i32 %i.av, 1024    ; 2 uses
  br i1 %spec.select.i32.i, label %bb.l, label %.thread.i.i

bb.l:                                             ; preds = %.lr.ph.i30.i
  %i.aw = getelementptr i8, ptr %i.at, i64 -32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !26
  %i.ay = and i32 %i.ax, -1024
  %or.cond55.i.i = icmp ne i32 %i.ay, 1024
  %i.az = add nsw i32 %i.au, -1024
  %i.ba = zext nneg i32 %i.az to i64
  %.not52.i.i = icmp ne i64 %indvars.iv.i31.i, %i.ba
  %or.cond.i35.i = select i1 %or.cond55.i.i, i1 true, i1 %.not52.i.i
  br i1 %or.cond.i35.i, label %canonical_order.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.l, %.lr.ph.i30.i
  %i.bb = trunc nuw nsw i64 %indvars.iv.i31.i to i32
  %.140.i.i = select i1 %spec.select.i32.i, i32 %i.bb, i32 %.03964.i.i ; 2 uses
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %indvars.iv.next.i33.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i34.i, label %.loopexit.i.i, label %.lr.ph.i30.i, !llvm.loop !2

.loopexit.i.i:                                    ; preds = %.thread.i.i, %bb.k
  %.4.i.i = phi i32 [ %.140.peel.i.i, %bb.k ], [ %.140.i.i, %.thread.i.i ] ; 3 uses
  %i.bc = icmp slt i32 %.4.i.i, 0
  br i1 %i.bc, label %canonical_order.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit.i.i
  %i.bd = uitofp nneg i32 %.4.i.i to double
  %i.be = tail call nsz double @llvm.sqrt.f64(double %i.bd)
  %i.bf = tail call nsz double @llvm.floor.f64(double %i.be)
  %i.bg = fptosi double %i.bf to i32
  %i.bh = add nuw nsw i32 %i.bg, 1                ; 2 uses
  %i.bi = mul nuw nsw i32 %i.bh, %i.bh            ; 3 uses
  %i.bj = add nuw nsw i32 %.4.i.i, 1
  %.not54.i.i = icmp eq i32 %i.bi, %i.bj
  br i1 %.not54.i.i, label %bb.n, label %canonical_order.exit
end_hunk_0
