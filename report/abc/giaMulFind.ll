inline.NumInlined: 669
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Gia_ManMulFindArg1:bb.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val28.i, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !31
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %.val29.i, i64 %i.ai ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val.i = load i32, ptr %i.ak, align 4, !tbaa !35
  %i.al = icmp eq i32 %.val.i, 0
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %i.aj, i64 8
  %.val27.i = load ptr, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val27.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !31 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, %.242
  %i.aq = getelementptr inbounds nuw i8, ptr %.val27.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !31 ; 2 uses
  %..i = select i1 %i.ap, i32 %i.ar, i32 -1
  %i.as = icmp eq i32 %i.ar, %.242
  %spec.select.i23 = select i1 %i.as, i32 %i.ao, i32 %..i ; 3 uses
  %i.at = icmp eq i32 %spec.select.i23, -1
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.g, !llvm.loop !84

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !35
  %i.av = load i32, ptr %i.b, align 4, !tbaa !35  ; 7 uses
  %i.aw = load i32, ptr %2, align 8, !tbaa !36
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.k, label %.Vec_IntPush.exit31_crit_edge

.Vec_IntPush.exit31_crit_edge:                    ; preds = %bb.j
  %.pre54 = load ptr, ptr %i.af, align 8, !tbaa !37
  br label %Vec_IntPush.exit31

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp slt i32 %i.av, 16
  br i1 %i.ay, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i29 = icmp eq ptr %i.az, null
  br i1 %.not9.i.i29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.az, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i27

bb.n:                                             ; preds = %bb.l
  %i.bb = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i27

bb.o:                                             ; preds = %bb.k
  %i.bc = icmp samesign ult i32 %i.av, 1073741823
  %i.bd = shl nuw nsw i32 %i.av, 1
  %spec.select.i24 = select i1 %i.bc, i32 %i.bd, i32 2147483647 ; 4 uses
  %.not.i9.i25 = icmp samesign ult i32 %i.av, %spec.select.i24
  %.pre55 = load ptr, ptr %i.af, align 8, !tbaa !37 ; 3 uses
  br i1 %.not.i9.i25, label %bb.p, label %Vec_IntPush.exit31

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i26 = icmp eq ptr %.pre55, null
  %i.be = zext nneg i32 %spec.select.i24 to i64
  %i.bf = shl nuw nsw i64 %i.be, 2                ; 2 uses
  br i1 %.not9.i10.i26, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = tail call ptr @realloc(ptr noundef nonnull %.pre55, i64 noundef %i.bf) #23
  br label %Vec_IntGrow.exit11.sink.split.i27

bb.r:                                             ; preds = %bb.p
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bf) #24
  br label %Vec_IntGrow.exit11.sink.split.i27

Vec_IntGrow.exit11.sink.split.i27:                ; preds = %bb.q, %bb.r, %bb.m, %bb.n
  %i.bi = phi ptr [ %i.bb, %bb.n ], [ %i.ba, %bb.m ], [ %i.bg, %bb.q ], [ %i.bh, %bb.r ] ; 2 uses
  %spec.select.sink.i28 = phi i32 [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select.i24, %bb.q ], [ %spec.select.i24, %bb.r ]
  store ptr %i.bi, ptr %i.af, align 8, !tbaa !37
  store i32 %spec.select.sink.i28, ptr %2, align 8, !tbaa !36
  %.pre56 = load i32, ptr %i.b, align 4, !tbaa !35
  br label %Vec_IntPush.exit31

Vec_IntPush.exit31:                               ; preds = %.Vec_IntPush.exit31_crit_edge, %bb.o, %Vec_IntGrow.exit11.sink.split.i27
  %i.bj = phi i32 [ %i.av, %.Vec_IntPush.exit31_crit_edge ], [ %i.av, %bb.o ], [ %.pre56, %Vec_IntGrow.exit11.sink.split.i27 ] ; 2 uses
  %i.bk = phi ptr [ %.pre54, %.Vec_IntPush.exit31_crit_edge ], [ %.pre55, %bb.o ], [ %i.bi, %Vec_IntGrow.exit11.sink.split.i27 ]
  %i.bl = add nsw i32 %i.bj, 1
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !35
  %i.bm = sext i32 %i.bj to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bm
  store i32 %spec.select.i23, ptr %i.bn, align 4, !tbaa !31
  %.val23.i = load i32, ptr %i.ab, align 4, !tbaa !35 ; 2 uses
  %i.bo = icmp sgt i32 %.val23.i, 0
  br i1 %i.bo, label %.lr.ph.i, label %.loopexit, !llvm.loop !86

.loopexit:                                        ; preds = %Vec_IntPush.exit31, %bb.i, %.loopexit35
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.bq) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit, %bb.s
  tail call void @free(ptr noundef nonnull %i.a) #22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gia_ManMulFindNextEntryCount(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !35  ; 2 uses
  %i.b = icmp sgt i32 %.val, 1
  br i1 %i.b, label %.critedge.lr.ph, label %.split.loop.exit

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val13 = load ptr, ptr %i.c, align 8, !tbaa !37 ; 2 uses
  br label %.critedge

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.d = trunc i64 %indvars.iv.next to i32
  %i.e = or disjoint i32 %i.d, 1
  %i.f = icmp slt i32 %i.e, %.val
  br i1 %i.f, label %.critedge, label %.split.loop.exit, !llvm.loop !87

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %.split.loop.exit14, label %bb.b

.split.loop.exit14:                               ; preds = %.critedge
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %bb.a, %.split.loop.exit14
  %.010 = phi i32 [ %i.l, %.split.loop.exit14 ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %.010
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Gia_ManMulFindNextEntry2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val65 = load i32, ptr %i.a, align 4, !tbaa !35 ; 2 uses
  %i.b = icmp sgt i32 %.val65, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val73 = load ptr, ptr %i.c, align 8, !tbaa !37 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val75 = load ptr, ptr %i.d, align 8, !tbaa !41 ; 2 uses
  %wide.trip.count = zext nneg i32 %.val65 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntFind.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntFind.exit.thread ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val73, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %.val75, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val64 = load i32, ptr %i.i, align 4, !tbaa !35 ; 2 uses
  %i.j = icmp sgt i32 %.val64, 0
  br i1 %i.j, label %.lr.ph.i, label %Vec_IntFind.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.val64 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %i.o = icmp eq i32 %i.n, %2
  br i1 %i.o, label %Vec_IntFind.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFind.exit.thread, label %bb.c, !llvm.loop !74

Vec_IntFind.exit:                                 ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  switch i32 %i.p, label %.loopexit [
    i32 -1, label %Vec_IntFind.exit.thread
    i32 1, label %.loopexit.sink.split.loopexit
    i32 2, label %.loopexit.sink.split
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %Vec_IntFind.exit
  br label %.loopexit.sink.split

.loopexit.sink.split.loopexit:                    ; preds = %Vec_IntFind.exit
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %Vec_IntFind.exit, %.loopexit.sink.split.loopexit, %bb.e
  %.sink164 = phi i64 [ 8, %.loopexit.sink.split.loopexit ], [ 4, %bb.e ], [ 4, %Vec_IntFind.exit ]
  %.sink163 = phi i64 [ 12, %.loopexit.sink.split.loopexit ], [ 8, %bb.e ], [ 12, %Vec_IntFind.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink164
  %i.r = load i32, ptr %i.q, align 4, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink163
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %Vec_IntFind.exit, %.loopexit.sink.split
  %.159 = phi i32 [ %i.r, %.loopexit.sink.split ], [ undef, %Vec_IntFind.exit ] ; 3 uses
  %.155 = phi i32 [ %i.t, %.loopexit.sink.split ], [ undef, %Vec_IntFind.exit ] ; 3 uses
  %6 = getelementptr i8, ptr %3, i64 4
  %.val.i = load i32, ptr %6, align 4, !tbaa !35  ; 3 uses
  %7 = icmp sgt i32 %.val.i, 1
  br i1 %7, label %.critedge.lr.ph.i, label %Gia_ManMulFindNextEntryCount.exit86

.critedge.lr.ph.i:                                ; preds = %.loopexit
  %i.u = getelementptr i8, ptr %3, i64 8
  %.val13.i = load ptr, ptr %i.u, align 8, !tbaa !37 ; 4 uses
  br label %.critedge.i

bb.f:                                             ; preds = %.critedge.i
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i76, 2 ; 2 uses
  %i.v = trunc i64 %indvars.iv.next.i77 to i32
  %i.w = or disjoint i32 %i.v, 1
  %i.x = icmp slt i32 %i.w, %.val.i
  br i1 %i.x, label %.critedge.i, label %.critedge.lr.ph.i80, !llvm.loop !87

.critedge.i:                                      ; preds = %bb.f, %.critedge.lr.ph.i
  %indvars.iv.i76 = phi i64 [ 0, %.critedge.lr.ph.i ], [ %indvars.iv.next.i77, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %indvars.iv.i76
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31
  %i.aa = icmp eq i32 %i.z, %.159
  br i1 %i.aa, label %.split.loop.exit14.i, label %bb.f

.split.loop.exit14.i:                             ; preds = %.critedge.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %indvars.iv.i76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31
  br label %.critedge.lr.ph.i80

.critedge.lr.ph.i80:                              ; preds = %bb.f, %.split.loop.exit14.i
  %.010.i = phi i32 [ %i.ad, %.split.loop.exit14.i ], [ -1, %bb.f ] ; 2 uses
  br label %.critedge.i82

bb.g:                                             ; preds = %.critedge.i82
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 2 ; 2 uses
  %i.ae = trunc i64 %indvars.iv.next.i84 to i32
  %i.af = or disjoint i32 %i.ae, 1
  %i.ag = icmp slt i32 %i.af, %.val.i
  br i1 %i.ag, label %.critedge.i82, label %Gia_ManMulFindNextEntryCount.exit86, !llvm.loop !87

.critedge.i82:                                    ; preds = %bb.g, %.critedge.lr.ph.i80
  %indvars.iv.i83 = phi i64 [ 0, %.critedge.lr.ph.i80 ], [ %indvars.iv.next.i84, %bb.g ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %indvars.iv.i83
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !31
  %i.aj = icmp eq i32 %i.ai, %.155
  br i1 %i.aj, label %.split.loop.exit14.i85, label %bb.g

.split.loop.exit14.i85:                           ; preds = %.critedge.i82
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %indvars.iv.i83
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !31
  br label %Gia_ManMulFindNextEntryCount.exit86

Gia_ManMulFindNextEntryCount.exit86:              ; preds = %bb.g, %.loopexit, %.split.loop.exit14.i85
  %.010.i97 = phi i32 [ %.010.i, %.split.loop.exit14.i85 ], [ -1, %.loopexit ], [ %.010.i, %bb.g ]
  %.010.i79 = phi i32 [ %i.am, %.split.loop.exit14.i85 ], [ -1, %.loopexit ], [ -1, %bb.g ]
  %.not = icmp sgt i32 %.010.i97, %.010.i79       ; 2 uses
  %i.an = select i1 %.not, i32 %.155, i32 %.159
  store i32 %i.an, ptr %4, align 4, !tbaa !31
  %i.ao = select i1 %.not, i32 %.159, i32 %.155
  store i32 %i.ao, ptr %5, align 4, !tbaa !31
  %.val63130 = load i32, ptr %i.a, align 4, !tbaa !35 ; 2 uses
  %i.ap = icmp sgt i32 %.val63130, 0
  br i1 %i.ap, label %.lr.ph132, label %.critedge

.lr.ph132:                                        ; preds = %Gia_ManMulFindNextEntryCount.exit86, %Vec_IntFind.exit94.thread
  %.val63145 = phi i32 [ %.val63, %Vec_IntFind.exit94.thread ], [ %.val63130, %Gia_ManMulFindNextEntryCount.exit86 ] ; 2 uses
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %Vec_IntFind.exit94.thread ], [ 0, %Gia_ManMulFindNextEntryCount.exit86 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val73, i64 %indvars.iv142
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !31
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %.val75, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 4      ; 2 uses
  %.val = load i32, ptr %i.au, align 4, !tbaa !35 ; 2 uses
  %i.av = icmp sgt i32 %.val, 0
  br i1 %i.av, label %.lr.ph.i88, label %Vec_IntFind.exit94.thread

.lr.ph.i88:                                       ; preds = %.lr.ph132
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37
  %wide.trip.count.i89 = zext nneg i32 %.val to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i88
  %indvars.iv.i90 = phi i64 [ 0, %.lr.ph.i88 ], [ %indvars.iv.next.i91, %bb.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.i90
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !31
  %i.ba = icmp eq i32 %i.az, %2
  br i1 %i.ba, label %Vec_IntFind.exit94, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %exitcond.not.i92 = icmp eq i64 %indvars.iv.next.i91, %wide.trip.count.i89
  br i1 %exitcond.not.i92, label %Vec_IntFind.exit94.thread, label %bb.h, !llvm.loop !74

Vec_IntFind.exit94:                               ; preds = %bb.h
  store i32 0, ptr %i.au, align 4, !tbaa !35
  %.val63.pre = load i32, ptr %i.a, align 4, !tbaa !35
  br label %Vec_IntFind.exit94.thread

Vec_IntFind.exit94.thread:                        ; preds = %bb.i, %Vec_IntFind.exit94, %.lr.ph132
  %.val63 = phi i32 [ %.val63145, %.lr.ph132 ], [ %.val63.pre, %Vec_IntFind.exit94 ], [ %.val63145, %bb.i ] ; 2 uses
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.bb = sext i32 %.val63 to i64
  %i.bc = icmp slt i64 %indvars.iv.next143, %i.bb
  br i1 %i.bc, label %.lr.ph132, label %.critedge, !llvm.loop !88

Vec_IntFind.exit.thread:                          ; preds = %bb.d, %Vec_IntFind.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !89

.critedge:                                        ; preds = %Vec_IntFind.exit.thread, %Vec_IntFind.exit94.thread, %bb.a, %Gia_ManMulFindNextEntryCount.exit86
  %.3 = phi i32 [ 1, %Gia_ManMulFindNextEntryCount.exit86 ], [ 0, %bb.a ], [ 1, %Vec_IntFind.exit94.thread ], [ 0, %Vec_IntFind.exit.thread ]
  ret i32 %.3
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManMulFindArg2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((4, 8)) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
._crit_edge:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !31
  store i32 %4, ptr %i.b, align 4, !tbaa !31
  %i.c = tail call ptr @Gia_ManMulFindCounts(ptr noundef %0, ptr noundef %1) ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val42 = load i32, ptr %i.d, align 4, !tbaa !35 ; 2 uses
  %i.e = icmp sgt i32 %.val42, 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  store i32 0, ptr %i.f, align 4, !tbaa !35
  br i1 %i.e, label %.critedge2.lr.ph, label %.loopexit

.critedge2.lr.ph:                                 ; preds = %._crit_edge
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val45 = load ptr, ptr %i.g, align 8, !tbaa !37
  br label %.critedge2

bb.a:                                             ; preds = %.critedge2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.h = trunc i64 %indvars.iv.next to i32
  %i.i = or disjoint i32 %i.h, 1
  %i.j = icmp slt i32 %i.i, %.val42
  br i1 %i.j, label %.critedge2, label %.loopexit, !llvm.loop !90

.critedge2:                                       ; preds = %.critedge2.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.critedge2.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31   ; 3 uses
  %i.m = icmp eq i32 %i.l, %3                     ; 2 uses
  %i.n = icmp eq i32 %i.l, %4
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.b, label %bb.a

bb.b:                                             ; preds = %.critedge2
  %i.o = select i1 %i.m, i32 %4, i32 %3
  %i.p = load i32, ptr %2, align 8, !tbaa !36
  %i.q = icmp eq i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37   ; 3 uses
  br i1 %i.q, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %.not9.i.i = icmp eq ptr %i.s, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.s, i64 noundef 64) #23
  %.pre69.pre = load i32, ptr %i.f, align 4, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.d, %bb.e
  %.pre69 = phi i32 [ %.pre69.pre, %bb.d ], [ 0, %bb.e ]
  %i.v = phi ptr [ %i.t, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  store ptr %i.v, ptr %i.r, align 8, !tbaa !37
  store i32 16, ptr %2, align 8, !tbaa !36
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %Vec_IntGrow.exit11.sink.split.i
  %i.w = phi i32 [ %.pre69, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %bb.b ] ; 2 uses
  %i.x = phi ptr [ %i.v, %Vec_IntGrow.exit11.sink.split.i ], [ %i.s, %bb.b ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = add nsw i32 %i.w, 1
  store i32 %i.z, ptr %i.f, align 4, !tbaa !35
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.aa
  store i32 %i.o, ptr %i.ab, align 4, !tbaa !31
  %i.ac = load i32, ptr %i.f, align 4, !tbaa !35  ; 7 uses
  %i.ad = load i32, ptr %2, align 8, !tbaa !36
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %Vec_IntPush.exit55

bb.f:                                             ; preds = %Vec_IntPush.exit
  %i.af = icmp slt i32 %i.ac, 16
  br i1 %i.af, label %Vec_IntGrow.exit11.sink.split.i51, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i32 %i.ac, 1073741823
  %i.ah = shl nuw nsw i32 %i.ac, 1
  %spec.select.i48 = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 3 uses
  %.not.i9.i49 = icmp samesign ult i32 %i.ac, %spec.select.i48
  br i1 %.not.i9.i49, label %bb.h, label %Vec_IntPush.exit55

bb.h:                                             ; preds = %bb.g
  %i.ai = zext nneg i32 %spec.select.i48 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  br label %Vec_IntGrow.exit11.sink.split.i51

Vec_IntGrow.exit11.sink.split.i51:                ; preds = %bb.f, %bb.h
  %.sink = phi i64 [ %i.aj, %bb.h ], [ 64, %bb.f ]
  %spec.select.sink.i52 = phi i32 [ %spec.select.i48, %bb.h ], [ 16, %bb.f ]
  %i.ak = tail call ptr @realloc(ptr noundef nonnull %i.x, i64 noundef %.sink) #23 ; 2 uses
  store ptr %i.ak, ptr %i.y, align 8, !tbaa !37
  store i32 %spec.select.sink.i52, ptr %2, align 8, !tbaa !36
  %.pre70 = load i32, ptr %i.f, align 4, !tbaa !35
  br label %Vec_IntPush.exit55

Vec_IntPush.exit55:                               ; preds = %Vec_IntPush.exit, %bb.g, %Vec_IntGrow.exit11.sink.split.i51
  %i.al = phi i32 [ %i.ac, %Vec_IntPush.exit ], [ %i.ac, %bb.g ], [ %.pre70, %Vec_IntGrow.exit11.sink.split.i51 ] ; 2 uses
  %i.am = phi ptr [ %i.x, %Vec_IntPush.exit ], [ %i.x, %bb.g ], [ %i.ak, %Vec_IntGrow.exit11.sink.split.i51 ]
  %i.an = add nsw i32 %i.al, 1
  store i32 %i.an, ptr %i.f, align 4, !tbaa !35
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %i.l, ptr %i.ap, align 4, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %._crit_edge, %Vec_IntPush.exit55
  %i.aq = getelementptr i8, ptr %2, i64 8
  %.val43 = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %.val43, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !31
  %i.at = call i32 @Gia_ManMulFindNextEntry2(ptr noundef %0, ptr noundef %1, i32 noundef %i.as, ptr noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not61 = icmp eq i32 %i.at, 0
  br i1 %.not61, label %._crit_edge63, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %i.au = load i32, ptr %i.a, align 4, !tbaa !31
  %i.av = load i32, ptr %i.b, align 4, !tbaa !31  ; 2 uses
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %2, i32 noundef %i.au, i32 noundef %i.av)
  %i.aw = call i32 @Gia_ManMulFindNextEntry2(ptr noundef %0, ptr noundef %1, i32 noundef %i.av, ptr noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %._crit_edge63, label %.lr.ph, !llvm.loop !91

._crit_edge63:                                    ; preds = %.lr.ph, %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge63
  tail call void @free(ptr noundef nonnull %i.ay) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge63, %bb.i
  tail call void @free(ptr noundef nonnull %i.c) #22
  ret void
end_hunk_0
begin_hunk_1_@Gia_ManMulFindAddEntry:bb.a
  store i32 %2, ptr %i.bc, align 4, !tbaa !31
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !35  ; 7 uses
  %i.be = load i32, ptr %0, align 8, !tbaa !36
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.r, label %Vec_IntPushThree.exit

bb.r:                                             ; preds = %Vec_IntPush.exit12.i
  %i.bg = icmp slt i32 %i.bd, 16
  br i1 %i.bg, label %Vec_IntGrow.exit11.sink.split.i16.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = icmp samesign ult i32 %i.bd, 1073741823
  %i.bi = shl nuw nsw i32 %i.bd, 1
  %spec.select.i13.i = select i1 %i.bh, i32 %i.bi, i32 2147483647 ; 3 uses
  %.not.i9.i14.i = icmp samesign ult i32 %i.bd, %spec.select.i13.i
  br i1 %.not.i9.i14.i, label %bb.t, label %Vec_IntPushThree.exit

bb.t:                                             ; preds = %bb.s
  %i.bj = zext nneg i32 %spec.select.i13.i to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  br label %Vec_IntGrow.exit11.sink.split.i16.i

Vec_IntGrow.exit11.sink.split.i16.i:              ; preds = %bb.t, %bb.r
  %.sink30.i = phi i64 [ %i.bk, %bb.t ], [ 64, %bb.r ]
  %spec.select.sink.i17.i = phi i32 [ %spec.select.i13.i, %bb.t ], [ 16, %bb.r ]
  %i.bl = tail call ptr @realloc(ptr noundef nonnull %i.az, i64 noundef %.sink30.i) #23 ; 2 uses
  store ptr %i.bl, ptr %i.ak, align 8, !tbaa !37
  store i32 %spec.select.sink.i17.i, ptr %0, align 8, !tbaa !36
  %.pre23.i = load i32, ptr %i.a, align 4, !tbaa !35
  br label %Vec_IntPushThree.exit

Vec_IntPushThree.exit:                            ; preds = %Vec_IntPush.exit12.i, %bb.s, %Vec_IntGrow.exit11.sink.split.i16.i
  %i.bm = phi i32 [ %i.bd, %Vec_IntPush.exit12.i ], [ %i.bd, %bb.s ], [ %.pre23.i, %Vec_IntGrow.exit11.sink.split.i16.i ] ; 2 uses
  %i.bn = phi ptr [ %i.az, %Vec_IntPush.exit12.i ], [ %i.az, %bb.s ], [ %i.bl, %Vec_IntGrow.exit11.sink.split.i16.i ]
  %i.bo = add nsw i32 %i.bm, 1
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !35
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bp
  store i32 1, ptr %i.bq, align 4, !tbaa !31
  br label %bb.u

bb.u:                                             ; preds = %Vec_IntPushThree.exit, %.critedge
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManMulFindBInputs2(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 %3) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  store i32 0, ptr %i.b, align 4, !tbaa !38
  store i32 10, ptr %i.a, align 8, !tbaa !40
  %i.c = tail call noalias dereferenceable_or_null(160) ptr @calloc(i64 noundef 10, i64 noundef 16) #25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 10 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !41
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !35
  store i32 1000, ptr %i.e, align 8, !tbaa !36
  %i.g = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !37
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 4 uses
  store i32 100, ptr %i.i, align 8, !tbaa !36
  %i.k = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 10 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val134189 = load i32, ptr %i.m, align 4, !tbaa !38 ; 2 uses
  %i.n = icmp sgt i32 %.val134189, 0
  br i1 %i.n, label %.lr.ph191, label %.critedge6

.lr.ph191:                                        ; preds = %bb.a
  %i.o = getelementptr i8, ptr %1, i64 8
  br label %bb.b

.critedge.preheader:                              ; preds = %.critedge2
  %.val121211.pre = load i32, ptr %i.f, align 4, !tbaa !35 ; 2 uses
  %i.p = icmp sgt i32 %.val121211.pre, 2
  br i1 %i.p, label %.lr.ph213, label %.critedge6

.lr.ph213:                                        ; preds = %.critedge.preheader
  %i.q = getelementptr i8, ptr %1, i64 8
  %i.r = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 8
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph191, %.critedge2
  %.val134239 = phi i32 [ %.val134189, %.lr.ph191 ], [ %.val134, %.critedge2 ]
  %indvars.iv221 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next222, %.critedge2 ] ; 2 uses
  %.val137 = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.val137, i64 %indvars.iv221 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4        ; 2 uses
  %.val123186 = load i32, ptr %i.u, align 4, !tbaa !35 ; 2 uses
  %i.v = icmp sgt i32 %.val123186, 1
  br i1 %i.v, label %.lr.ph188, label %.critedge2

.lr.ph188:                                        ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.t, i64 8        ; 2 uses
  br label %bb.c

.critedge4.loopexit:                              ; preds = %.lr.ph
  %.pre262 = sext i32 %.val122 to i64
  %i.x = icmp slt i64 %indvars.iv.next219, %.pre262
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.x, label %bb.c, label %.critedge2.loopexit, !llvm.loop !93

bb.c:                                             ; preds = %.lr.ph188, %.critedge4.loopexit
  %.val123238 = phi i32 [ %.val123186, %.lr.ph188 ], [ %.val122, %.critedge4.loopexit ]
  %indvars.iv218 = phi i64 [ 1, %.lr.ph188 ], [ %indvars.iv.next219, %.critedge4.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph188 ], [ %indvars.iv.next, %.critedge4.loopexit ] ; 2 uses
  %.val131 = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val131, i64 %indvars.iv218
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 3 uses
  %i.aa = sext i32 %.val123238 to i64
  %i.ab = icmp slt i64 %indvars.iv.next219, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.critedge2.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %.lr.ph ], [ %indvars.iv, %bb.c ] ; 2 uses
  %.val130 = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val130, i64 %indvars.iv215
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31
  tail call void @Gia_ManMulFindAddEntry(ptr noundef nonnull %i.e, i32 noundef %i.z, i32 noundef %i.ad)
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %.val122 = load i32, ptr %i.u, align 4, !tbaa !35 ; 3 uses
  %i.ae = trunc nuw i64 %indvars.iv.next216 to i32
  %i.af = icmp sgt i32 %.val122, %i.ae
  br i1 %i.af, label %.lr.ph, label %.critedge4.loopexit, !llvm.loop !94

.critedge2.loopexit:                              ; preds = %bb.c, %.critedge4.loopexit
  %.val134.pre = load i32, ptr %i.m, align 4, !tbaa !38
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.b
  %.val134 = phi i32 [ %.val134.pre, %.critedge2.loopexit ], [ %.val134239, %bb.b ] ; 2 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.ag = sext i32 %.val134 to i64
  %i.ah = icmp slt i64 %indvars.iv.next222, %i.ag
  br i1 %i.ah, label %bb.b, label %.critedge.preheader, !llvm.loop !95

bb.d:                                             ; preds = %.lr.ph213, %.critedge
  %.val121259 = phi i32 [ %.val121211.pre, %.lr.ph213 ], [ %.val121, %.critedge ]
  %indvars.iv233 = phi i64 [ 0, %.lr.ph213 ], [ %indvars.iv.next234, %.critedge ] ; 3 uses
  %.val129 = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val129, i64 %indvars.iv233 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !31 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !31 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !31
  %i.ao = icmp slt i32 %i.an, 3
  br i1 %i.ao, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 4, !tbaa !35
  %.val133200 = load i32, ptr %i.m, align 4, !tbaa !38 ; 2 uses
  %i.ap = icmp sgt i32 %.val133200, 0
  br i1 %i.ap, label %.lr.ph202, label %.critedge8

.lr.ph202:                                        ; preds = %bb.e, %.critedge10
  %.val133251 = phi i32 [ %.val133, %.critedge10 ], [ %.val133200, %bb.e ]
  %i.aq = phi i32 [ %i.cw, %.critedge10 ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %.critedge10 ], [ 0, %bb.e ] ; 3 uses
  %.val136 = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.val136, i64 %indvars.iv224 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 4      ; 6 uses
  %.val120197 = load i32, ptr %i.as, align 4, !tbaa !35 ; 2 uses
  %i.at = icmp sgt i32 %.val120197, 1
  br i1 %i.at, label %.lr.ph199, label %.critedge10

.lr.ph199:                                        ; preds = %.lr.ph202
  %i.au = getelementptr i8, ptr %i.ar, i64 8      ; 4 uses
  %i.av = trunc nuw nsw i64 %indvars.iv224 to i32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph199, %.critedge12
  %.val120247 = phi i32 [ %.val120197, %.lr.ph199 ], [ %.val120, %.critedge12 ] ; 5 uses
  %i.aw = phi i32 [ %i.aq, %.lr.ph199 ], [ %i.cu, %.critedge12 ] ; 3 uses
  %.1109198 = phi i32 [ 1, %.lr.ph199 ], [ %.pre-phi264, %.critedge12 ] ; 3 uses
  %.1113192 = add nsw i32 %.1109198, 1            ; 4 uses
  %i.ax = icmp slt i32 %.1113192, %.val120247
  br i1 %i.ax, label %.lr.ph196, label %.critedge12

.lr.ph196:                                        ; preds = %bb.f
  %.val126 = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.ay = sext i32 %.1109198 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %.val126, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31
  %i.bb = icmp eq i32 %i.ba, %i.aj
  %.fr = freeze i1 %i.bb
  br i1 %.fr, label %.lr.ph196.split, label %.critedge12

.lr.ph196.split:                                  ; preds = %.lr.ph196, %Vec_IntDrop.exit142
  %.val120249 = phi i32 [ %.val120250, %Vec_IntDrop.exit142 ], [ %.val120247, %.lr.ph196 ]
  %.val119246 = phi i32 [ %.val119, %Vec_IntDrop.exit142 ], [ %.val120247, %.lr.ph196 ]
  %i.bc = phi i32 [ %i.cs, %Vec_IntDrop.exit142 ], [ %i.aw, %.lr.ph196 ] ; 8 uses
  %.1113195 = phi i32 [ %.1113, %Vec_IntDrop.exit142 ], [ %.1113192, %.lr.ph196 ] ; 3 uses
  %.2110194 = phi i32 [ %.3, %Vec_IntDrop.exit142 ], [ %.1109198, %.lr.ph196 ] ; 3 uses
  %.val125 = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.bd = sext i32 %.1113195 to i64               ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %.val125, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !31
  %i.bg = icmp eq i32 %i.bf, %i.al
  br i1 %i.bg, label %bb.g, label %Vec_IntDrop.exit142

bb.g:                                             ; preds = %.lr.ph196.split
  %i.bh = load i32, ptr %i.i, align 8, !tbaa !36
  %i.bi = icmp eq i32 %i.bc, %i.bh
  br i1 %i.bi, label %bb.h, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !37
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.bj = icmp slt i32 %i.bc, 16
  br i1 %i.bj, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !37  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bk, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.bm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.bn = icmp samesign ult i32 %i.bc, 1073741823
  %i.bo = shl nuw nsw i32 %i.bc, 1
  %spec.select.i = select i1 %i.bn, i32 %i.bo, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bc, %spec.select.i
  %.pre243 = load ptr, ptr %i.l, align 8, !tbaa !37 ; 3 uses
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %.pre243, null
  %i.bp = zext nneg i32 %spec.select.i to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = tail call ptr @realloc(ptr noundef nonnull %.pre243, i64 noundef %i.bq) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.bq) #24
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge183 = phi ptr [ %i.bm, %bb.k ], [ %i.bl, %bb.j ], [ %i.br, %bb.n ], [ %i.bs, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %storemerge183, ptr %i.l, align 8, !tbaa !37
  store i32 %spec.select.sink.i, ptr %i.i, align 8, !tbaa !36
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.bt = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre243, %bb.l ], [ %storemerge183, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bu = add nsw i32 %i.bc, 1                    ; 3 uses
  store i32 %i.bu, ptr %i.j, align 4, !tbaa !35
  %i.bv = sext i32 %i.bc to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bv
  store i32 %i.av, ptr %i.bw, align 4, !tbaa !31
  %i.bx = load i32, ptr %i.as, align 4, !tbaa !35
  %i.by = add nsw i32 %i.bx, -1                   ; 3 uses
  store i32 %i.by, ptr %i.as, align 4, !tbaa !35
  %i.bz = icmp slt i32 %.1113195, %i.by
  br i1 %i.bz, label %.lr.ph.i, label %Vec_IntDrop.exit

.lr.ph.i:                                         ; preds = %Vec_IntPush.exit
  %i.ca = load ptr, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv.next.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !31
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv.i
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !31
  %i.ce = load i32, ptr %i.as, align 4, !tbaa !35 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next.i, %i.cf
  br i1 %i.cg, label %bb.p, label %Vec_IntDrop.exit, !llvm.loop !96

Vec_IntDrop.exit:                                 ; preds = %bb.p, %Vec_IntPush.exit
  %i.ch = phi i32 [ %i.by, %Vec_IntPush.exit ], [ %i.ce, %bb.p ]
  %i.ci = add nsw i32 %i.ch, -1                   ; 6 uses
  store i32 %i.ci, ptr %i.as, align 4, !tbaa !35
  %i.cj = icmp slt i32 %.2110194, %i.ci
  br i1 %i.cj, label %.lr.ph.i139, label %Vec_IntDrop.exit142

.lr.ph.i139:                                      ; preds = %Vec_IntDrop.exit
  %i.ck = load ptr, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %i.cl = sext i32 %.2110194 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i139
  %indvars.iv.i140 = phi i64 [ %i.cl, %.lr.ph.i139 ], [ %indvars.iv.next.i141, %bb.q ] ; 2 uses
  %indvars.iv.next.i141 = add nsw i64 %indvars.iv.i140, 1 ; 3 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv.next.i141
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !31
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv.i140
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !31
  %i.cp = load i32, ptr %i.as, align 4, !tbaa !35 ; 5 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next.i141, %i.cq
  br i1 %i.cr, label %bb.q, label %Vec_IntDrop.exit142, !llvm.loop !96

Vec_IntDrop.exit142:                              ; preds = %bb.q, %Vec_IntDrop.exit, %.lr.ph196.split
  %.val120250 = phi i32 [ %.val120249, %.lr.ph196.split ], [ %i.ci, %Vec_IntDrop.exit ], [ %i.cp, %bb.q ] ; 2 uses
  %.val119 = phi i32 [ %.val119246, %.lr.ph196.split ], [ %i.ci, %Vec_IntDrop.exit ], [ %i.cp, %bb.q ] ; 2 uses
  %i.cs = phi i32 [ %i.bc, %.lr.ph196.split ], [ %i.bu, %Vec_IntDrop.exit ], [ %i.bu, %bb.q ] ; 2 uses
  %.2114 = phi i32 [ %.1113195, %.lr.ph196.split ], [ %i.ci, %Vec_IntDrop.exit ], [ %i.cp, %bb.q ]
  %.3 = phi i32 [ %.2110194, %.lr.ph196.split ], [ %i.ci, %Vec_IntDrop.exit ], [ %i.cp, %bb.q ] ; 2 uses
  %.1113 = add nsw i32 %.2114, 1                  ; 2 uses
  %i.ct = icmp slt i32 %.1113, %.val119
  br i1 %i.ct, label %.lr.ph196.split, label %.critedge12.loopexit, !llvm.loop !97

.critedge12.loopexit:                             ; preds = %Vec_IntDrop.exit142
  %.pre263 = add nsw i32 %.3, 1
  br label %.critedge12

.critedge12:                                      ; preds = %.lr.ph196, %.critedge12.loopexit, %bb.f
  %.pre-phi264 = phi i32 [ %.1113192, %bb.f ], [ %.pre263, %.critedge12.loopexit ], [ %.1113192, %.lr.ph196 ] ; 2 uses
  %.val120 = phi i32 [ %.val120247, %bb.f ], [ %.val120250, %.critedge12.loopexit ], [ %.val120247, %.lr.ph196 ] ; 2 uses
  %i.cu = phi i32 [ %i.aw, %bb.f ], [ %i.cs, %.critedge12.loopexit ], [ %i.aw, %.lr.ph196 ] ; 2 uses
  %i.cv = icmp slt i32 %.pre-phi264, %.val120
  br i1 %i.cv, label %bb.f, label %.critedge10.loopexit, !llvm.loop !98

.critedge10.loopexit:                             ; preds = %.critedge12
  %.val133.pre = load i32, ptr %i.m, align 4, !tbaa !38
  br label %.critedge10

.critedge10:                                      ; preds = %.critedge10.loopexit, %.lr.ph202
  %.val133 = phi i32 [ %.val133.pre, %.critedge10.loopexit ], [ %.val133251, %.lr.ph202 ] ; 2 uses
  %i.cw = phi i32 [ %i.cu, %.critedge10.loopexit ], [ %i.aq, %.lr.ph202 ]
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.cx = sext i32 %.val133 to i64
  %i.cy = icmp slt i64 %indvars.iv.next225, %i.cx
  br i1 %i.cy, label %.lr.ph202, label %.critedge8, !llvm.loop !99

.critedge8:                                       ; preds = %.critedge10, %bb.e
  %i.cz = load i32, ptr %i.b, align 4, !tbaa !38  ; 12 uses
  %i.da = load i32, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.r, label %.Vec_WecGrow.exit12_crit_edge.i

.Vec_WecGrow.exit12_crit_edge.i:                  ; preds = %.critedge8
  %.val8.pre.i = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %Vec_WecPushLevel.exit

bb.r:                                             ; preds = %.critedge8
  %i.dc = icmp slt i32 %i.cz, 16
  br i1 %i.dc, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %.not13.i.i = icmp eq ptr %i.dd, null
  br i1 %.not13.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.dd, i64 noundef 256) #23
  br label %Vec_WecGrow.exit.i

bb.u:                                             ; preds = %bb.s
  %i.df = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #24
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.u, %bb.t
  %i.dg = phi ptr [ %i.de, %bb.t ], [ %i.df, %bb.u ] ; 3 uses
  store ptr %i.dg, ptr %i.d, align 8, !tbaa !41
  %i.dh = sext i32 %i.cz to i64
  %i.di = getelementptr inbounds [16 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = sub nsw i32 16, %i.cz
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.di, i8 0, i64 %i.dl, i1 false)
  store i32 16, ptr %i.a, align 8, !tbaa !40
  br label %Vec_WecPushLevel.exit

bb.v:                                             ; preds = %bb.r
  %i.dm = shl nuw nsw i32 %i.cz, 1                ; 3 uses
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %.not13.i10.i = icmp eq ptr %i.dn, null
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = shl nuw nsw i64 %i.do, 4                ; 2 uses
  br i1 %.not13.i10.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = tail call ptr @realloc(ptr noundef nonnull %i.dn, i64 noundef %i.dp) #23
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dp) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ds = phi ptr [ %i.dq, %bb.w ], [ %i.dr, %bb.x ] ; 3 uses
  store ptr %i.ds, ptr %i.d, align 8, !tbaa !41
  %i.dt = zext nneg i32 %i.cz to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = zext nneg i32 %i.cz to i64
  %i.dw = shl nuw nsw i64 %i.dv, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.du, i8 0, i64 %i.dw, i1 false)
  store i32 %i.dm, ptr %i.a, align 8, !tbaa !40
  br label %Vec_WecPushLevel.exit

Vec_WecPushLevel.exit:                            ; preds = %.Vec_WecGrow.exit12_crit_edge.i, %Vec_WecGrow.exit.i, %bb.y
  %i.dx = phi i32 [ %i.da, %.Vec_WecGrow.exit12_crit_edge.i ], [ %i.dm, %bb.y ], [ 16, %Vec_WecGrow.exit.i ] ; 5 uses
  %i.dy = phi ptr [ %.val8.pre.i, %.Vec_WecGrow.exit12_crit_edge.i ], [ %i.ds, %bb.y ], [ %i.dg, %Vec_WecGrow.exit.i ] ; 6 uses
  %i.dz = add nsw i32 %i.cz, 1                    ; 3 uses
  store i32 %i.dz, ptr %i.b, align 4, !tbaa !38
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr inbounds [16 x i8], ptr %i.dy, i64 %i.ea ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -16
  %i.ed = icmp eq i32 %i.dz, %i.dx
  br i1 %i.ed, label %bb.z, label %Vec_WecPushLevel.exit152

bb.z:                                             ; preds = %Vec_WecPushLevel.exit
  %i.ee = icmp slt i32 %i.cz, 15
  br i1 %i.ee, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not13.i.i149 = icmp eq ptr %i.dy, null
  br i1 %.not13.i.i149, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.dy, i64 noundef 256) #23
  br label %Vec_WecGrow.exit.i151

bb.ac:                                            ; preds = %bb.aa
  %i.eg = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #24
  br label %Vec_WecGrow.exit.i151

Vec_WecGrow.exit.i151:                            ; preds = %bb.ac, %bb.ab
  %i.eh = phi ptr [ %i.ef, %bb.ab ], [ %i.eg, %bb.ac ] ; 2 uses
  store ptr %i.eh, ptr %i.d, align 8, !tbaa !41
  %i.ei = sub nsw i32 16, %i.dx
  br label %Vec_WecPushLevel.exit152.sink.split

bb.ad:                                            ; preds = %bb.z
  %i.ej = shl nuw nsw i32 %i.dx, 1                ; 2 uses
  %.not13.i10.i147 = icmp eq ptr %i.dy, null
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 4                ; 2 uses
  br i1 %.not13.i10.i147, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.em = tail call ptr @realloc(ptr noundef nonnull %i.dy, i64 noundef %i.el) #23
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.en = tail call noalias ptr @malloc(i64 noundef %i.el) #24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eo = phi ptr [ %i.em, %bb.ae ], [ %i.en, %bb.af ] ; 2 uses
  store ptr %i.eo, ptr %i.d, align 8, !tbaa !41
  br label %Vec_WecPushLevel.exit152.sink.split

Vec_WecPushLevel.exit152.sink.split:              ; preds = %bb.ag, %Vec_WecGrow.exit.i151
  %.sink295 = phi i32 [ %i.ei, %Vec_WecGrow.exit.i151 ], [ %i.dx, %bb.ag ]
  %.pn = phi ptr [ %i.eh, %Vec_WecGrow.exit.i151 ], [ %i.eo, %bb.ag ] ; 2 uses
  %.sink = phi i32 [ 16, %Vec_WecGrow.exit.i151 ], [ %i.ej, %bb.ag ] ; 2 uses
  %.sink292 = getelementptr inbounds [16 x i8], ptr %.pn, i64 %i.ea
  %i.ep = sext i32 %.sink295 to i64
  %i.eq = shl nsw i64 %i.ep, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink292, i8 0, i64 %i.eq, i1 false)
  store i32 %.sink, ptr %i.a, align 8, !tbaa !40
  br label %Vec_WecPushLevel.exit152

Vec_WecPushLevel.exit152:                         ; preds = %Vec_WecPushLevel.exit152.sink.split, %Vec_WecPushLevel.exit
  %i.er = phi i32 [ %i.dx, %Vec_WecPushLevel.exit ], [ %.sink, %Vec_WecPushLevel.exit152.sink.split ] ; 4 uses
  %i.es = phi ptr [ %i.dy, %Vec_WecPushLevel.exit ], [ %.pn, %Vec_WecPushLevel.exit152.sink.split ] ; 5 uses
  %i.et = add nsw i32 %i.cz, 2                    ; 3 uses
  store i32 %i.et, ptr %i.b, align 4, !tbaa !38
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = getelementptr inbounds [16 x i8], ptr %i.es, i64 %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -16
  %i.ex = icmp eq i32 %i.et, %i.er
  br i1 %i.ex, label %bb.ah, label %Vec_WecPushLevel.exit162

bb.ah:                                            ; preds = %Vec_WecPushLevel.exit152
  %i.ey = icmp slt i32 %i.cz, 14
  br i1 %i.ey, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %.not13.i.i159 = icmp eq ptr %i.es, null
  br i1 %.not13.i.i159, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ez = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.es, i64 noundef 256) #23
  br label %Vec_WecGrow.exit.i161

bb.ak:                                            ; preds = %bb.ai
  %i.fa = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #24
  br label %Vec_WecGrow.exit.i161

Vec_WecGrow.exit.i161:                            ; preds = %bb.ak, %bb.aj
  %i.fb = phi ptr [ %i.ez, %bb.aj ], [ %i.fa, %bb.ak ] ; 2 uses
  store ptr %i.fb, ptr %i.d, align 8, !tbaa !41
  %i.fc = sub nsw i32 16, %i.er
  br label %Vec_WecPushLevel.exit162.sink.split

bb.al:                                            ; preds = %bb.ah
  %i.fd = shl nuw nsw i32 %i.er, 1                ; 2 uses
  %.not13.i10.i157 = icmp eq ptr %i.es, null
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 4                ; 2 uses
  br i1 %.not13.i10.i157, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fg = tail call ptr @realloc(ptr noundef nonnull %i.es, i64 noundef %i.ff) #23
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fh = tail call noalias ptr @malloc(i64 noundef %i.ff) #24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
end_hunk_1
