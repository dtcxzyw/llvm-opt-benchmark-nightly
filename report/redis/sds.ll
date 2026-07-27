inline.NumInlined: 136
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@sdstoupper:bb.a
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.0.i, -4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.09 = phi i64 [ 0, %.lr.ph.new ], [ %i.aw, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.09 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17
  %i.u = sext i8 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.s, align 1, !tbaa !17
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.09
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.aa, align 1, !tbaa !17
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.09
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = sext i8 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  %i.an = trunc i32 %i.am to i8
  store i8 %i.an, ptr %i.ai, align 1, !tbaa !17
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.09
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = sext i8 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !9
  %i.av = trunc i32 %i.au to i8
  store i8 %i.av, ptr %i.aq, align 1, !tbaa !17
  %i.aw = add nuw i64 %.09, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !36

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.09.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.09.epil = phi i64 [ %.09.epil.init, %.epil.preheader ], [ %i.be, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.09.epil ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = sext i8 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !9
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !17
  %i.be = add nuw i64 %.09.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !37

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %bb.a, %sdslen.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sdscmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !17 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !18
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !14
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 -1
  %.val.i16 = load i8, ptr %i.p, align 1, !tbaa !17 ; 2 uses
  %i.q = and i8 %.val.i16, 7
  switch i8 %i.q, label %sdslen.exit18 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %sdslen.exit
  %i.r = lshr i8 %.val.i16, 3
  %i.s = zext nneg i8 %i.r to i64
  br label %sdslen.exit18

bb.h:                                             ; preds = %sdslen.exit
  %i.t = getelementptr inbounds i8, ptr %1, i64 -3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i64
  br label %sdslen.exit18

bb.i:                                             ; preds = %sdslen.exit
  %i.w = getelementptr inbounds i8, ptr %1, i64 -5
  %i.x = load i16, ptr %i.w, align 1, !tbaa !18
  %i.y = zext i16 %i.x to i64
  br label %sdslen.exit18

bb.j:                                             ; preds = %sdslen.exit
  %i.z = getelementptr inbounds i8, ptr %1, i64 -9
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i32 %i.aa to i64
  br label %sdslen.exit18

bb.k:                                             ; preds = %sdslen.exit
  %i.ac = getelementptr inbounds i8, ptr %1, i64 -17
  %i.ad = load i64, ptr %i.ac, align 1, !tbaa !14
  br label %sdslen.exit18

sdslen.exit18:                                    ; preds = %sdslen.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i17 = phi i64 [ %i.ad, %bb.k ], [ %i.s, %bb.g ], [ %i.v, %bb.h ], [ %i.y, %bb.i ], [ %i.ab, %bb.j ], [ 0, %sdslen.exit ] ; 2 uses
  %i.ae = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %.0.i17)
  %i.af = tail call i32 @memcmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.ae) #23 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = tail call i32 @llvm.ucmp.i32.i64(i64 %.0.i, i64 %.0.i17)
  %.0 = select i1 %i.ag, i32 %i.ah, i32 %i.af
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @sdssplitlen(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %3, 1
  %i.b = icmp slt i64 %1, 1
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(40) ptr @zmalloc(i64 noundef 40) #24 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = add nsw i32 %3, -1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = sub nsw i64 %1, %i.f                     ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = icmp eq i32 %3, 1
  %i.j = zext nneg i32 %3 to i64                  ; 2 uses
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.06081.us = phi ptr [ %.2.us, %bb.h ], [ %i.c, %.lr.ph ] ; 3 uses
  %.06180.us = phi i64 [ %.164.us.a, %bb.h ], [ 0, %.lr.ph ] ; 4 uses
  %.06379.us = phi i64 [ %.164.us, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %.06578.us = phi i32 [ %.166.us, %bb.h ], [ 5, %.lr.ph ] ; 3 uses
  %.06777.us = phi i32 [ %.168.us, %bb.h ], [ 0, %.lr.ph ] ; 6 uses
  %i.k = add nsw i32 %.06777.us, 2
  %i.l = icmp slt i32 %.06578.us, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.m = shl nsw i32 %.06578.us, 1                ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call ptr @zrealloc(ptr noundef %.06081.us, i64 noundef %i.o) #26 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us
  %.166.us = phi i32 [ %i.m, %bb.c ], [ %.06578.us, %.lr.ph.split.us ]
  %.2.us = phi ptr [ %i.p, %bb.c ], [ %.06081.us, %.lr.ph.split.us ] ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %.06180.us ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  %i.t = load i8, ptr %2, align 1, !tbaa !17
  %i.u = icmp eq i8 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %lhsc = load i8, ptr %i.r, align 1
  %rhsc = load i8, ptr %2, align 1
  %i.v = icmp eq i8 %lhsc, %rhsc
  br i1 %i.v, label %bb.f, label %._crit_edge98

._crit_edge98:                                    ; preds = %bb.e
  %.pre = add nsw i64 %.06180.us, 1
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds i8, ptr %0, i64 %.06379.us
  %i.x = sub nsw i64 %.06180.us, %.06379.us
  %i.y = tail call ptr @_sdsnewlen(ptr noundef readonly %i.w, i64 noundef %i.x, i32 noundef 0) ; 2 uses
  %i.z = sext i32 %.06777.us to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.2.us, i64 %i.z
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !20
  %i.ab = icmp eq ptr %i.y, null
  br i1 %i.ab, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i32 %.06777.us, 1
  %i.ad = add nsw i64 %.06180.us, 1               ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge98, %bb.g
  %.164.us.a = phi i64 [ %.pre, %._crit_edge98 ], [ %i.ad, %bb.g ] ; 2 uses
  %.168.us = phi i32 [ %.06777.us, %._crit_edge98 ], [ %i.ac, %bb.g ] ; 2 uses
  %.164.us = phi i64 [ %.06379.us, %._crit_edge98 ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ae = icmp slt i64 %.164.us.a, %i.g
  br i1 %i.ae, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !38

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %.06081 = phi ptr [ %.2, %bb.m ], [ %i.c, %.lr.ph ] ; 3 uses
  %.06180 = phi i64 [ %i.ax, %bb.m ], [ 0, %.lr.ph ] ; 4 uses
  %.06379 = phi i64 [ %.164, %bb.m ], [ 0, %.lr.ph ] ; 3 uses
  %.06578 = phi i32 [ %.166, %bb.m ], [ 5, %.lr.ph ] ; 3 uses
  %.06777 = phi i32 [ %.168, %bb.m ], [ 0, %.lr.ph ] ; 6 uses
  %i.af = add nsw i32 %.06777, 2
  %i.ag = icmp slt i32 %.06578, %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split
  %i.ah = shl nsw i32 %.06578, 1                  ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = tail call ptr @zrealloc(ptr noundef %.06081, i64 noundef %i.aj) #26 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split
  %.166 = phi i32 [ %i.ah, %bb.i ], [ %.06578, %.lr.ph.split ]
  %.2 = phi ptr [ %i.ak, %bb.i ], [ %.06081, %.lr.ph.split ] ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %0, i64 %.06180
  %bcmp = tail call i32 @bcmp(ptr %i.am, ptr %2, i64 %i.j)
  %i.an = icmp eq i32 %bcmp, 0
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.06379
  %i.ap = sub nsw i64 %.06180, %.06379
  %i.aq = tail call ptr @_sdsnewlen(ptr noundef readonly %i.ao, i64 noundef %i.ap, i32 noundef 0) ; 2 uses
  %i.ar = sext i32 %.06777 to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.2, i64 %i.ar
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !20
  %i.at = icmp eq ptr %i.aq, null
  br i1 %i.at, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = add nsw i32 %.06777, 1
  %i.av = add nsw i64 %.06180, %i.j               ; 2 uses
  %i.aw = add nsw i64 %i.av, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.168 = phi i32 [ %i.au, %bb.l ], [ %.06777, %bb.j ] ; 2 uses
  %.164 = phi i64 [ %i.av, %bb.l ], [ %.06379, %bb.j ] ; 2 uses
  %.162 = phi i64 [ %i.aw, %bb.l ], [ %.06180, %bb.j ]
  %i.ax = add nsw i64 %.162, 1                    ; 2 uses
  %i.ay = icmp slt i64 %i.ax, %i.g
  br i1 %i.ay, label %.lr.ph.split, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.m, %bb.h, %.preheader
  %.067.lcssa = phi i32 [ 0, %.preheader ], [ %.168.us, %bb.h ], [ %.168, %bb.m ] ; 3 uses
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.164.us, %bb.h ], [ %.164, %bb.m ] ; 2 uses
  %.060.lcssa = phi ptr [ %i.c, %.preheader ], [ %.2.us, %bb.h ], [ %.2, %bb.m ] ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %0, i64 %.063.lcssa
  %i.ba = sub nsw i64 %1, %.063.lcssa
  %i.bb = tail call ptr @_sdsnewlen(ptr noundef readonly %i.az, i64 noundef %i.ba, i32 noundef 0) ; 2 uses
  %i.bc = sext i32 %.067.lcssa to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.060.lcssa, i64 %i.bc
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !20
  %i.be = icmp eq ptr %i.bb, null
  br i1 %i.be, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.bf = add nsw i32 %.067.lcssa, 1
  br label %.sink.split

.loopexit:                                        ; preds = %bb.k, %bb.i, %bb.f, %bb.c, %._crit_edge
  %.06776 = phi i32 [ %.067.lcssa, %._crit_edge ], [ %.06777.us, %bb.f ], [ %.06777.us, %bb.c ], [ %.06777, %bb.i ], [ %.06777, %bb.k ] ; 2 uses
  %.3 = phi ptr [ %.060.lcssa, %._crit_edge ], [ %.2.us, %bb.f ], [ %.06081.us, %bb.c ], [ %.2, %bb.k ], [ %.06081, %bb.i ] ; 2 uses
  %i.bg = icmp sgt i32 %.06776, 0
  br i1 %i.bg, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %.loopexit
  %wide.trip.count = zext nneg i32 %.06776 to i64
  br label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %sdsfree.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph90.preheader ], [ %indvars.iv.next, %sdsfree.exit ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.3, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !20 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %sdsfree.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph90
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !17
  %i.bm = and i8 %i.bl, 7                         ; 2 uses
  %i.bn = icmp samesign ult i8 %i.bm, 5
  br i1 %i.bn, label %switch.lookup, label %sdsHdrSize.exit.i

switch.lookup:                                    ; preds = %bb.o
  %i.bo = zext nneg i8 %i.bm to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.bo
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit.i

sdsHdrSize.exit.i:                                ; preds = %bb.o, %switch.lookup
  %.0.i.neg.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.o ]
  %i.bp = getelementptr inbounds i8, ptr %i.bi, i64 %.0.i.neg.i
  tail call void @zfree(ptr noundef nonnull %i.bp) #21
  br label %sdsfree.exit

sdsfree.exit:                                     ; preds = %.lr.ph90, %sdsHdrSize.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge91, label %.lr.ph90, !llvm.loop !39

._crit_edge91:                                    ; preds = %sdsfree.exit, %.loopexit
  tail call void @zfree(ptr noundef %.3) #21
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.n, %._crit_edge91
  %.sink = phi i32 [ 0, %._crit_edge91 ], [ %i.bf, %bb.n ], [ 0, %bb.a ]
  %.058.ph = phi ptr [ null, %._crit_edge91 ], [ %.060.lcssa, %bb.n ], [ null, %bb.a ]
  store i32 %.sink, ptr %4, align 4, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.b
  %.058 = phi ptr [ null, %bb.b ], [ %.058.ph, %.sink.split ]
  ret ptr %.058
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local void @sdsfreesplitres(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not45 = icmp eq i32 %1, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.a = sext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sdsfree.exit
  %indvars.iv = phi i64 [ %i.a, %.lr.ph.preheader ], [ %indvars.iv.next, %sdsfree.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %sdsfree.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = and i8 %i.f, 7                           ; 2 uses
  %i.h = icmp samesign ult i8 %i.g, 5
  br i1 %i.h, label %switch.lookup, label %sdsHdrSize.exit.i

switch.lookup:                                    ; preds = %bb.b
  %i.i = zext nneg i8 %i.g to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.i
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit.i

sdsHdrSize.exit.i:                                ; preds = %bb.b, %switch.lookup
  %.0.i.neg.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 %.0.i.neg.i
  tail call void @zfree(ptr noundef nonnull %i.j) #21
  br label %sdsfree.exit

sdsfree.exit:                                     ; preds = %.lr.ph, %sdsHdrSize.exit.i
  %.not4 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %sdsfree.exit, %.preheader
  tail call void @zfree(ptr noundef nonnull %0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdscatrepr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %2, 2
  %i.b = tail call ptr @_sdsMakeRoomFor(ptr noundef %0, i64 noundef %i.a, i32 noundef 1) ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %.val.i.i = load i8, ptr %i.c, align 1, !tbaa !17 ; 2 uses
  %i.d = and i8 %.val.i.i, 7
  switch i8 %i.d, label %sdslen.exit.i [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i8 %.val.i.i, 3
  %i.f = zext nneg i8 %i.e to i64
  br label %sdslen.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17
  %i.i = zext i8 %i.h to i64
  br label %sdslen.exit.i

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -5
  %i.k = load i16, ptr %i.j, align 1, !tbaa !18
  %i.l = zext i16 %i.k to i64
  br label %sdslen.exit.i

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -9
  %i.n = load i32, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i32 %i.n to i64
  br label %sdslen.exit.i

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -17
  %i.q = load i64, ptr %i.p, align 1, !tbaa !14
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.r = tail call ptr @_sdsMakeRoomFor(ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 1) ; 10 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %sdscatlen.exit, label %bb.g

bb.g:                                             ; preds = %sdslen.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0.i.i
  store i8 34, ptr %i.t, align 1
  %i.u = add i64 %.0.i.i, 1                       ; 6 uses
  %i.v = getelementptr i8, ptr %i.r, i64 -1       ; 2 uses
  %.val.i16.i = load i8, ptr %i.v, align 1, !tbaa !17
  %i.w = and i8 %.val.i16.i, 7
  switch i8 %i.w, label %sdssetlen.exit.i [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %.tr.i.i = trunc i64 %i.u to i8
  %i.x = shl i8 %.tr.i.i, 3
  store i8 %i.x, ptr %i.v, align 1, !tbaa !17
  br label %sdssetlen.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = trunc i64 %i.u to i8
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -3
end_hunk_0
