Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/luckyFast16?download=true
inline.NumInlined: 66
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@minimalSwapAndFlipIVar_superFast_lessThen5_noEBFC:bb.a
  %i.ao = sub nuw nsw i32 64, %.2.i.i
  %i.ap = lshr exact i32 %i.ao, 3
  br label %firstShiftWithOneBit.exit.i

bb.k:                                             ; preds = %bb.i
  %i.aq = lshr i64 %.123.i.i, 8
  %.224.i.i = select i1 %i.al, i64 %i.aq, i64 %.123.i.i
  %i.ar = icmp samesign ugt i64 %.224.i.i, 15
  %i.as = or disjoint i32 %.2.i.i, 4
  %spec.select29.i.i = select i1 %i.ar, i32 %i.as, i32 %.2.i.i
  %i.at = sub nuw nsw i32 64, %spec.select29.i.i
  %i.au = lshr i32 %i.at, 2
  br label %firstShiftWithOneBit.exit.i

firstShiftWithOneBit.exit.i:                      ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d
  %.021.i.i = phi i32 [ %i.au, %bb.k ], [ %i.ad, %bb.f ], [ %i.aj, %bb.h ], [ %i.ap, %bb.j ], [ 0, %bb.d ]
  %i.av = icmp ult i64 %i.r, %i.t
  br i1 %i.av, label %minTemp1_fast.exit.thread, label %minTemp1_fast.exit

minTemp1_fast.exit:                               ; preds = %firstShiftWithOneBit.exit.i
  %i.aw = sub nuw i32 %i.y, %.021.i.i             ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, -100
  br i1 %i.ax, label %.lr.ph.i, label %arrangeQuoters_superFast_lessThen5.exit

.lr.ph.i:                                         ; preds = %minTemp1_fast.exit
  %i.ay = sdiv i32 %i.aw, 100
  %i.az = load i64, ptr %i.c, align 16, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.bc = shl i32 3, %1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = zext i32 %i.ay to i64                   ; 4 uses
  %i.bf = lshr i64 -1, %i.bd
  %i.bg = and i64 %i.bb, %i.bf
  %i.bh = or i64 %i.bg, %i.az                     ; 2 uses
  %i.bi = add nuw nsw i64 %i.be, 1                ; 2 uses
  %.off = add i32 %i.aw, 99
  %min.iters.check = icmp ult i32 %.off, 199
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bi, 8589934590              ; 3 uses
  %i.bj = sub nsw i64 %i.be, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %broadcast.splatinsert26 = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %broadcast.splatinsert28 = insertelement <2 x i64> poison, i64 %i.h, i64 0 ; 2 uses
  %broadcast.splatinsert30 = insertelement <2 x i64> poison, i64 %i.e, i64 0 ; 2 uses
  %broadcast.splatinsert32 = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.bk = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bl = shufflevector <2 x i64> %broadcast.splatinsert26, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bm = shufflevector <2 x i64> %broadcast.splatinsert28, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bn = shufflevector <2 x i64> %broadcast.splatinsert30, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bo = shufflevector <2 x i64> %broadcast.splatinsert32, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bp = shufflevector <2 x i64> %broadcast.splatinsert30, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bq = shufflevector <2 x i64> %broadcast.splatinsert28, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = sub i64 %i.be, %index
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bt, align 8, !tbaa !13 ; 3 uses
  %i.bu = and <2 x i64> %i.bk, %wide.load
  %i.bv = and <2 x i64> %wide.load, %i.bl
  %i.bw = shl <2 x i64> %i.bv, %i.bm
  %i.bx = lshr <2 x i64> %i.bw, %i.bn
  %i.by = or <2 x i64> %i.bu, %i.bx
  %i.bz = and <2 x i64> %wide.load, %i.bo
  %i.ca = shl <2 x i64> %i.bz, %i.bp
  %i.cb = lshr <2 x i64> %i.ca, %i.bq
  %reverse34 = or <2 x i64> %i.by, %i.cb
  store <2 x i64> %reverse34, ptr %i.bt, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %arrangeQuoters_superFast_lessThen5.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i7.ph = phi i64 [ %i.be, %.lr.ph.i ], [ %i.bj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i7 = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i7.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i7 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !13 ; 3 uses
  %i.cf = and i64 %i.ce, %i.l
  %i.cg = shl i64 %i.cf, %i.h
  %i.ch = lshr i64 %i.cg, %i.e
  %i.ci = and i64 %i.ce, %i.k
  %i.cj = shl i64 %i.ci, %i.e
  %i.ck = lshr i64 %i.cj, %i.h
  %i.cl = and i64 %i.bh, %i.ce
  %i.cm = or i64 %i.cl, %i.ch
  %i.cn = or i64 %i.cm, %i.ck
  store i64 %i.cn, ptr %i.cd, align 8, !tbaa !13
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i7, -1
  %.not.i = icmp eq i64 %indvars.iv.i7, 0
  br i1 %.not.i, label %arrangeQuoters_superFast_lessThen5.exit, label %scalar.ph, !llvm.loop !36

arrangeQuoters_superFast_lessThen5.exit:          ; preds = %scalar.ph, %middle.block, %minTemp1_fast.exit
  %i.co = load i32, ptr %4, align 4, !tbaa !9
  %i.cp = tail call i32 @adjustInfoAfterSwap(ptr noundef %3, i32 noundef %i.co, i32 noundef %1, i32 noundef 4) #8
  store i32 %i.cp, ptr %4, align 4, !tbaa !9
  br label %minTemp1_fast.exit.thread

minTemp1_fast.exit.thread:                        ; preds = %bb.b, %bb.a, %firstShiftWithOneBit.exit.i, %arrangeQuoters_superFast_lessThen5.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @arrangeQuoters_superFast_iVar5(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr nofree noundef captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = icmp eq i32 %3, 0
  %i.c = icmp eq i32 %4, 1
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.e = add nsw i32 %2, -1
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  %i.g = sext i32 %3 to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = sext i32 %4 to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = sext i32 %5 to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = sext i32 %6 to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.041 = phi ptr [ %i.f, %.lr.ph ], [ %i.z, %bb.c ] ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.041, i64 -4
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.h
  %i.s = load i32, ptr %i.r, align 4
  store i32 %i.s, ptr %i.p, align 4
  %i.t = getelementptr inbounds i8, ptr %.041, i64 -8
  %i.u = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.j
  %i.v = load i32, ptr %i.u, align 4
  store i32 %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds i8, ptr %.041, i64 -12
  %i.x = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.l
  %i.y = load i32, ptr %i.x, align 4
  store i32 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds i8, ptr %.041, i64 -16 ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.n
  %i.ab = load i32, ptr %i.aa, align 4
  store i32 %i.ab, ptr %i.z, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %i.ac = icmp samesign ugt i64 %indvars.iv, 4
  br i1 %i.ac, label %bb.c, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.ad = shl nsw i64 %i.a, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %i.ad, i1 false)
  %i.ae = load i32, ptr %8, align 4, !tbaa !9
  %i.af = sub nsw i32 %3, %4
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %i.ah = shl i32 %i.ag, 2
  %i.ai = add i32 %3, -4
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = tail call i32 @adjustInfoAfterSwap(ptr noundef %7, i32 noundef %i.ae, i32 noundef 5, i32 noundef %i.aj) #8
  store i32 %i.ak, ptr %8, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 4) i32 @minTemp0_fast_iVar5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = shl nuw i32 %1, 1
  %i.c = add i32 %i.b, -1
  %i.d = zext i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %3 = zext i32 %i.f to i64
  %i.g = getelementptr i8, ptr %i.e, i64 -12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %4 = zext i32 %i.h to i64
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %3, i64 %4)
  switch i32 %.0.i, label %bb.c [
    i32 0, label %bb.d
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = trunc nuw i64 %indvars.iv to i32
  %i.j = add nuw nsw i32 %i.i, 1
  br label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.k = trunc nuw i64 %indvars.iv to i32
  %i.l = add nuw nsw i32 %i.k, 1
  br label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %i.m = trunc nuw i64 %indvars.iv to i32
  %i.n = icmp sgt i32 %i.m, 3
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.d, %bb.a, %bb.c, %bb.b
  %.sink = phi i32 [ %i.j, %bb.b ], [ %i.l, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  %.0 = phi i32 [ 0, %bb.b ], [ 3, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  store i32 %.sink, ptr %2, align 4, !tbaa !9
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 1, 3) i32 @minTemp1_fast_iVar5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = shl nuw i32 %1, 1
  %i.c = add i32 %i.b, -2
  %i.d = zext i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %3 = zext i32 %i.f to i64
  %i.g = getelementptr i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %4 = zext i32 %i.h to i64
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %3, i64 %4)
  switch i32 %.0.i, label %bb.c [
    i32 0, label %bb.d
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = trunc nuw i64 %indvars.iv to i32
  %i.j = add nuw nsw i32 %i.i, 2
  br label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.k = trunc nuw i64 %indvars.iv to i32
  %i.l = add nuw nsw i32 %i.k, 2
  br label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %i.m = trunc nuw i64 %indvars.iv to i32
  %i.n = icmp sgt i32 %i.m, 3
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.d, %bb.a, %bb.c, %bb.b
  %.sink = phi i32 [ %i.j, %bb.b ], [ %i.l, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  %.0 = phi i32 [ 1, %bb.b ], [ 2, %bb.c ], [ 1, %bb.a ], [ 1, %bb.d ]
  store i32 %.sink, ptr %2, align 4, !tbaa !9
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @minTemp2_fast_iVar5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = shl nuw i32 %3, 1
  %i.c = add i32 %i.b, -1
  %i.d = sext i32 %i.c to i64
  %i.e = sext i32 %1 to i64
  %i.f = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %i.g = sub nsw i64 %indvars.iv, %i.e
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %5 = zext i32 %i.i to i64
  %i.j = sub nsw i64 %indvars.iv, %i.f
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9
  %6 = zext i32 %i.l to i64
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %5, i64 %6)
  switch i32 %.0.i, label %bb.c [
    i32 0, label %bb.d
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.m = trunc nsw i64 %indvars.iv to i32
  %i.n = add nuw nsw i32 %i.m, 1
  br label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.o = trunc nsw i64 %indvars.iv to i32
  %i.p = add nuw nsw i32 %i.o, 1
  br label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %i.q = icmp sgt i64 %indvars.iv, 3
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.d, %bb.a, %bb.c, %bb.b
  %.sink = phi i32 [ %i.n, %bb.b ], [ %i.p, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  store i32 %.sink, ptr %4, align 4, !tbaa !9
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @minTemp3_fast_iVar5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %.not21.not = icmp sgt i32 %1, %2
  br i1 %.not21.not, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add nsw i32 %1, -1
  %i.b = sext i32 %i.a to i64
  %i.c = sext i32 %2 to i64
  %i.d = sext i32 %3 to i64
  %i.e = sext i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.f = sub nsw i64 %indvars.iv, %i.d
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %6 = zext i32 %i.h to i64
  %i.i = sub nsw i64 %indvars.iv, %i.e
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %7 = zext i32 %i.k to i64
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %6, i64 %7)
  switch i32 %.0.i, label %bb.c [
    i32 0, label %bb.d
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.l = trunc nsw i64 %indvars.iv to i32
  %i.m = add nsw i32 %i.l, 1
  br label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.n = trunc nsw i64 %indvars.iv to i32
  %i.o = add nsw i32 %i.n, 1
  br label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -4  ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.d, %bb.a, %bb.c, %bb.b
  %.sink = phi i32 [ %i.m, %bb.b ], [ %i.o, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  store i32 %.sink, ptr %5, align 4, !tbaa !9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @minimalSwapAndFlipIVar_superFast_iVar5(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 14 uses
  %i.b = alloca [2048 x i32], align 16            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %.thread

.thread:                                          ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.d, align 4, !tbaa !9
  br label %bb.v

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = shl nuw i32 %1, 1                        ; 2 uses
  %i.f = add i32 %i.e, -1                         ; 2 uses
  %i.g = zext i32 %i.f to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.g, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 5 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %4 = zext i32 %i.i to i64
  %i.j = getelementptr i8, ptr %i.h, i64 -12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %5 = zext i32 %i.k to i64
  %.0.i.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %4, i64 %5)
  switch i32 %.0.i.i, label %bb.c [
    i32 0, label %bb.d
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = trunc nuw i64 %indvars.iv.i to i32
  %i.m = add nuw nsw i32 %i.l, 1
  br label %minTemp0_fast_iVar5.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = trunc nuw i64 %indvars.iv.i to i32
  %i.o = add nuw nsw i32 %i.n, 1
  br label %minTemp0_fast_iVar5.exit

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -4
  %i.p = trunc nuw i64 %indvars.iv.i to i32
  %i.q = icmp sgt i32 %i.p, 3
  br i1 %i.q, label %.lr.ph.i, label %minTemp0_fast_iVar5.exit, !llvm.loop !38

minTemp0_fast_iVar5.exit:                         ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i = phi i32 [ %i.m, %bb.b ], [ %i.o, %bb.c ], [ 0, %bb.d ] ; 4 uses
  %i.r = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.d ] ; 2 uses
  %.0.i = phi i32 [ 0, %bb.b ], [ 3, %bb.c ], [ 0, %bb.d ] ; 10 uses
  store i32 %.0.i, ptr %i.a, align 4, !tbaa !9
  %i.s = add i32 %i.e, -2
  %i.t = zext i32 %i.s to i64
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.g, %minTemp0_fast_iVar5.exit
  %indvars.iv.i53 = phi i64 [ %i.t, %minTemp0_fast_iVar5.exit ], [ %indvars.iv.next.i55, %bb.g ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i53 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  %6 = zext i32 %i.v to i64
  %i.w = getelementptr i8, ptr %i.u, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  %7 = zext i32 %i.x to i64
  %.0.i.i54 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %6, i64 %7)
  switch i32 %.0.i.i54, label %bb.f [
    i32 0, label %bb.g
    i32 -1, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i52
  %i.y = trunc nuw i64 %indvars.iv.i53 to i32
  %i.z = add nuw nsw i32 %i.y, 2
  br label %minTemp1_fast_iVar5.exit

bb.f:                                             ; preds = %.lr.ph.i52
  %i.aa = trunc nuw i64 %indvars.iv.i53 to i32
  %i.ab = add nuw nsw i32 %i.aa, 2
  br label %minTemp1_fast_iVar5.exit

bb.g:                                             ; preds = %.lr.ph.i52
  %indvars.iv.next.i55 = add nsw i64 %indvars.iv.i53, -4
  %i.ac = trunc nuw i64 %indvars.iv.i53 to i32
  %i.ad = icmp sgt i32 %i.ac, 3
  br i1 %i.ad, label %.lr.ph.i52, label %minTemp1_fast_iVar5.exit, !llvm.loop !39

minTemp1_fast_iVar5.exit:                         ; preds = %bb.g, %bb.e, %bb.f
  %.sink.i49 = phi i32 [ %i.z, %bb.e ], [ %i.ab, %bb.f ], [ 0, %bb.g ] ; 8 uses
  %or.cond.i66 = phi i1 [ %i.r, %bb.e ], [ false, %bb.f ], [ %i.r, %bb.g ]
  %.0.i50 = phi i32 [ 1, %bb.e ], [ 2, %bb.f ], [ 1, %bb.g ] ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.0.i50, ptr %i.ae, align 4, !tbaa !9
  %i.af = sext i32 %i.f to i64
  %i.ag = zext nneg i32 %.0.i to i64
  %i.ah = zext nneg i32 %.0.i50 to i64
  br label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.j, %minTemp1_fast_iVar5.exit
  %indvars.iv.i60 = phi i64 [ %i.af, %minTemp1_fast_iVar5.exit ], [ %indvars.iv.next.i62, %bb.j ] ; 6 uses
  %i.ai = sub nsw i64 %indvars.iv.i60, %i.ag
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9
  %8 = zext i32 %i.ak to i64
  %i.al = sub nsw i64 %indvars.iv.i60, %i.ah
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !9
  %9 = zext i32 %i.an to i64
  %.0.i.i61 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %8, i64 %9)
  switch i32 %.0.i.i61, label %bb.i [
    i32 0, label %bb.j
    i32 -1, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.i59
  %i.ao = trunc nsw i64 %indvars.iv.i60 to i32
  %i.ap = add nuw nsw i32 %i.ao, 1
  br label %minTemp2_fast_iVar5.exit

bb.i:                                             ; preds = %.lr.ph.i59
  %i.aq = trunc nsw i64 %indvars.iv.i60 to i32
  %i.ar = add nuw nsw i32 %i.aq, 1
  br label %minTemp2_fast_iVar5.exit

bb.j:                                             ; preds = %.lr.ph.i59
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i60, -4
  %i.as = icmp sgt i64 %indvars.iv.i60, 3
  br i1 %i.as, label %.lr.ph.i59, label %minTemp2_fast_iVar5.exit, !llvm.loop !40

minTemp2_fast_iVar5.exit:                         ; preds = %bb.j, %bb.h, %bb.i
  %.sink.i56 = phi i32 [ %i.ap, %bb.h ], [ %i.ar, %bb.i ], [ 0, %bb.j ] ; 10 uses
  %.0.i57 = phi i32 [ 0, %bb.h ], [ 1, %bb.i ], [ 0, %bb.j ] ; 5 uses
  %.not = icmp eq i32 %.sink.i, %.sink.i49
  %.not46 = icmp slt i32 %.sink.i56, %.sink.i49   ; 2 uses
  br i1 %.not, label %bb.u, label %bb.k

bb.k:                                             ; preds = %minTemp2_fast_iVar5.exit
  %.not48 = icmp slt i32 %.sink.i56, %.sink.i
  %or.cond = or i1 %.not46, %.not48
  br i1 %or.cond, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = zext nneg i32 %.0.i57 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !9  ; 4 uses
  %i.aw = xor i32 %.0.i57, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !9  ; 3 uses
  %i.ba = sext i32 %.sink.i56 to i64              ; 2 uses
  %i.bb = icmp eq i32 %i.av, 0
  %i.bc = icmp eq i32 %i.az, 1
  %or.cond.i = and i1 %i.bb, %i.bc
  br i1 %or.cond.i, label %arrangeQuoters_superFast_iVar5.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp sgt i32 %.sink.i56, 1
  br i1 %i.bd, label %.lr.ph.i63, label %._crit_edge.i

.lr.ph.i63:                                       ; preds = %bb.m
  %i.be = add nsw i32 %.sink.i56, -1
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ba
  %i.bg = sext i32 %i.av to i64                   ; 2 uses
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = sext i32 %i.az to i64                   ; 2 uses
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = zext nneg i32 %i.be to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i63
  %indvars.iv.i64 = phi i64 [ %i.bk, %.lr.ph.i63 ], [ %indvars.iv.next.i65, %bb.n ] ; 3 uses
  %.041.i = phi ptr [ %i.bf, %.lr.ph.i63 ], [ %i.bw, %bb.n ] ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %.041.i, i64 -4
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i64 ; 4 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bh
  %i.bo = load i32, ptr %i.bn, align 4
  store i32 %i.bo, ptr %i.bl, align 4
  %i.bp = getelementptr inbounds i8, ptr %.041.i, i64 -8
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bj
  %i.br = load i32, ptr %i.bq, align 4
  store i32 %i.br, ptr %i.bp, align 4
  %i.bs = getelementptr inbounds i8, ptr %.041.i, i64 -12
  %i.bt = getelementptr [4 x i8], ptr %i.bm, i64 %i.bi
  %i.bu = getelementptr i8, ptr %i.bt, i64 -12
  %i.bv = load i32, ptr %i.bu, align 4
  store i32 %i.bv, ptr %i.bs, align 4
  %i.bw = getelementptr inbounds i8, ptr %.041.i, i64 -16 ; 2 uses
  %i.bx = getelementptr [4 x i8], ptr %i.bm, i64 %i.bg
  %i.by = getelementptr i8, ptr %i.bx, i64 -12
  %i.bz = load i32, ptr %i.by, align 4
  store i32 %i.bz, ptr %i.bw, align 4
  %indvars.iv.next.i65 = add nsw i64 %indvars.iv.i64, -4
  %i.ca = icmp samesign ugt i64 %indvars.iv.i64, 4
  br i1 %i.ca, label %bb.n, label %._crit_edge.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %bb.n, %bb.m
  %i.cb = shl nsw i64 %i.ba, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %i.b, i64 %i.cb, i1 false)
  %i.cc = sub nsw i32 %i.av, %i.az
  br label %arrangeQuoters_superFast_iVar5.exit.sink.split

bb.o:                                             ; preds = %bb.k
  %i.cd = icmp sgt i32 %.sink.i, %.sink.i49
  br i1 %i.cd, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ce = tail call noundef i32 @llvm.smax.i32(i32 %.sink.i56, i32 %.sink.i) ; 3 uses
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  br i1 %or.cond.i66, label %arrangeQuoters_superFast_iVar5.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp sgt i32 %i.ce, 1
  br i1 %i.cg, label %.lr.ph.i68, label %._crit_edge.i67

.lr.ph.i68:                                       ; preds = %bb.q
  %i.ch = add nsw i32 %i.ce, -1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cf
  %narrow148 = sub nsw i32 0, %.0.i
  %i.cj = sext i32 %narrow148 to i64
  %narrow149 = sub nsw i32 0, %.0.i50
  %i.ck = sext i32 %narrow149 to i64
  %i.cl = zext nneg i32 %i.ch to i64
  %i.cm = zext nneg i32 %.0.i50 to i64
  %i.cn = zext nneg i32 %.0.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i68
  %indvars.iv.i69 = phi i64 [ %i.cl, %.lr.ph.i68 ], [ %indvars.iv.next.i71, %bb.r ] ; 3 uses
  %.041.i70 = phi ptr [ %i.ci, %.lr.ph.i68 ], [ %i.cz, %bb.r ] ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %.041.i70, i64 -4
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i69 ; 4 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cj
  %i.cr = load i32, ptr %i.cq, align 4
  store i32 %i.cr, ptr %i.co, align 4
  %i.cs = getelementptr inbounds i8, ptr %.041.i70, i64 -8
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.ck
  %i.cu = load i32, ptr %i.ct, align 4
  store i32 %i.cu, ptr %i.cs, align 4
  %i.cv = getelementptr inbounds i8, ptr %.041.i70, i64 -12
  %i.cw = getelementptr [4 x i8], ptr %i.cp, i64 %i.cm
  %i.cx = getelementptr i8, ptr %i.cw, i64 -12
  %i.cy = load i32, ptr %i.cx, align 4
  store i32 %i.cy, ptr %i.cv, align 4
  %i.cz = getelementptr inbounds i8, ptr %.041.i70, i64 -16 ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %i.cp, i64 %i.cn
  %i.db = getelementptr i8, ptr %i.da, i64 -12
  %i.dc = load i32, ptr %i.db, align 4
  store i32 %i.dc, ptr %i.cz, align 4
  %indvars.iv.next.i71 = add nsw i64 %indvars.iv.i69, -4
  %i.dd = icmp samesign ugt i64 %indvars.iv.i69, 4
  br i1 %i.dd, label %bb.r, label %._crit_edge.i67, !llvm.loop !37

._crit_edge.i67:                                  ; preds = %bb.r, %bb.q
  %i.de = shl nsw i64 %i.cf, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %i.b, i64 %i.de, i1 false)
  %i.df = sub nsw i32 %.0.i, %.0.i50
  br label %arrangeQuoters_superFast_iVar5.exit.sink.split

bb.s:                                             ; preds = %bb.o
  %i.dg = tail call noundef i32 @llvm.smax.i32(i32 %.sink.i56, i32 %.sink.i49) ; 3 uses
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = icmp sgt i32 %i.dg, 1
  br i1 %i.di, label %.lr.ph.i75, label %arrangeQuoters_superFast_iVar5.exit79

.lr.ph.i75:                                       ; preds = %bb.s
  %i.dj = add nsw i32 %i.dg, -1
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dh
  %narrow = sub nsw i32 0, %.0.i50
  %i.dl = sext i32 %narrow to i64
  %narrow144 = sub nsw i32 0, %.0.i
  %i.dm = sext i32 %narrow144 to i64
  %i.dn = zext nneg i32 %i.dj to i64
  %i.do = zext nneg i32 %.0.i to i64
  %i.dp = zext nneg i32 %.0.i50 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i75
  %indvars.iv.i76 = phi i64 [ %i.dn, %.lr.ph.i75 ], [ %indvars.iv.next.i78, %bb.t ] ; 3 uses
  %.041.i77 = phi ptr [ %i.dk, %.lr.ph.i75 ], [ %i.eb, %bb.t ] ; 4 uses
  %i.dq = getelementptr inbounds i8, ptr %.041.i77, i64 -4
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i76 ; 4 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dl
  %i.dt = load i32, ptr %i.ds, align 4
  store i32 %i.dt, ptr %i.dq, align 4
  %i.du = getelementptr inbounds i8, ptr %.041.i77, i64 -8
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dm
  %i.dw = load i32, ptr %i.dv, align 4
  store i32 %i.dw, ptr %i.du, align 4
  %i.dx = getelementptr inbounds i8, ptr %.041.i77, i64 -12
  %i.dy = getelementptr [4 x i8], ptr %i.dr, i64 %i.do
  %i.dz = getelementptr i8, ptr %i.dy, i64 -12
  %i.ea = load i32, ptr %i.dz, align 4
  store i32 %i.ea, ptr %i.dx, align 4
  %i.eb = getelementptr inbounds i8, ptr %.041.i77, i64 -16 ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %i.dr, i64 %i.dp
  %i.ed = getelementptr i8, ptr %i.ec, i64 -12
  %i.ee = load i32, ptr %i.ed, align 4
  store i32 %i.ee, ptr %i.eb, align 4
  %indvars.iv.next.i78 = add nsw i64 %indvars.iv.i76, -4
  %i.ef = icmp samesign ugt i64 %indvars.iv.i76, 4
  br i1 %i.ef, label %bb.t, label %arrangeQuoters_superFast_iVar5.exit79, !llvm.loop !37

arrangeQuoters_superFast_iVar5.exit79:            ; preds = %bb.t, %bb.s
  %i.eg = shl nsw i64 %i.dh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %i.b, i64 %i.eg, i1 false)
  %i.eh = sub nsw i32 %.0.i50, %.0.i
  br label %arrangeQuoters_superFast_iVar5.exit.sink.split

bb.u:                                             ; preds = %minTemp2_fast_iVar5.exit
  br i1 %.not46, label %.lr.ph.preheader.i90, label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u
  %.sink.i56173182 = phi i32 [ 0, %.thread ], [ %.sink.i56, %bb.u ] ; 3 uses
  %.0.i57174181 = phi i32 [ 0, %.thread ], [ %.0.i57, %bb.u ] ; 2 uses
  %i.ei = zext nneg i32 %.0.i57174181 to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !9  ; 4 uses
  %i.el = xor i32 %.0.i57174181, 1
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !9  ; 3 uses
  %i.ep = sext i32 %.sink.i56173182 to i64        ; 2 uses
  %i.eq = icmp eq i32 %i.ek, 0
  %i.er = icmp eq i32 %i.eo, 1
  %or.cond.i80 = and i1 %i.eq, %i.er
  br i1 %or.cond.i80, label %arrangeQuoters_superFast_iVar5.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = icmp sgt i32 %.sink.i56173182, 1
  br i1 %i.es, label %.lr.ph.i82, label %._crit_edge.i81

.lr.ph.i82:                                       ; preds = %bb.w
  %i.et = add nsw i32 %.sink.i56173182, -1
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ep
  %i.ev = sext i32 %i.ek to i64                   ; 2 uses
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = sext i32 %i.eo to i64                   ; 2 uses
  %i.ey = sub nsw i64 0, %i.ex
  %i.ez = zext nneg i32 %i.et to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i82
  %indvars.iv.i83 = phi i64 [ %i.ez, %.lr.ph.i82 ], [ %indvars.iv.next.i85, %bb.x ] ; 3 uses
  %.041.i84 = phi ptr [ %i.eu, %.lr.ph.i82 ], [ %i.fl, %bb.x ] ; 4 uses
  %i.fa = getelementptr inbounds i8, ptr %.041.i84, i64 -4
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i83 ; 4 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.ew
  %i.fd = load i32, ptr %i.fc, align 4
  store i32 %i.fd, ptr %i.fa, align 4
  %i.fe = getelementptr inbounds i8, ptr %.041.i84, i64 -8
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.ey
  %i.fg = load i32, ptr %i.ff, align 4
  store i32 %i.fg, ptr %i.fe, align 4
  %i.fh = getelementptr inbounds i8, ptr %.041.i84, i64 -12
  %i.fi = getelementptr [4 x i8], ptr %i.fb, i64 %i.ex
  %i.fj = getelementptr i8, ptr %i.fi, i64 -12
  %i.fk = load i32, ptr %i.fj, align 4
  store i32 %i.fk, ptr %i.fh, align 4
  %i.fl = getelementptr inbounds i8, ptr %.041.i84, i64 -16 ; 2 uses
  %i.fm = getelementptr [4 x i8], ptr %i.fb, i64 %i.ev
  %i.fn = getelementptr i8, ptr %i.fm, i64 -12
  %i.fo = load i32, ptr %i.fn, align 4
  store i32 %i.fo, ptr %i.fl, align 4
  %indvars.iv.next.i85 = add nsw i64 %indvars.iv.i83, -4
  %i.fp = icmp samesign ugt i64 %indvars.iv.i83, 4
  br i1 %i.fp, label %bb.x, label %._crit_edge.i81, !llvm.loop !37

._crit_edge.i81:                                  ; preds = %bb.x, %bb.w
  %i.fq = shl nsw i64 %i.ep, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 16 %i.b, i64 %i.fq, i1 false)
  %i.fr = sub nsw i32 %i.ek, %i.eo
  br label %arrangeQuoters_superFast_iVar5.exit.sink.split

.lr.ph.preheader.i90:                             ; preds = %bb.u
  %i.fs = xor i32 %.0.i, 3
  %i.ft = xor i32 %.0.i50, 3
  %i.fu = add nsw i32 %.sink.i49, -1              ; 3 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = sext i32 %.sink.i56 to i64
  %i.fx = zext nneg i32 %i.fs to i64
  %i.fy = zext nneg i32 %i.ft to i64
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.aa, %.lr.ph.preheader.i90
  %indvars.iv.i92 = phi i64 [ %i.fv, %.lr.ph.preheader.i90 ], [ %indvars.iv.next.i94, %bb.aa ] ; 5 uses
  %i.fz = sub nsw i64 %indvars.iv.i92, %i.fx
  %i.ga = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !9
  %10 = zext i32 %i.gb to i64
  %i.gc = sub nsw i64 %indvars.iv.i92, %i.fy
  %i.gd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !9
  %11 = zext i32 %i.ge to i64
  %.0.i.i93 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %10, i64 %11)
  switch i32 %.0.i.i93, label %bb.z [
    i32 0, label %bb.aa
    i32 -1, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph.i91
  %i.gf = trunc nsw i64 %indvars.iv.i92 to i32
  %i.gg = add nsw i32 %i.gf, 1
  br label %minTemp3_fast_iVar5.exit

bb.z:                                             ; preds = %.lr.ph.i91
  %i.gh = trunc nsw i64 %indvars.iv.i92 to i32
  %i.gi = add nsw i32 %i.gh, 1
  br label %minTemp3_fast_iVar5.exit

bb.aa:                                            ; preds = %.lr.ph.i91
  %indvars.iv.next.i94 = add nsw i64 %indvars.iv.i92, -4 ; 2 uses
  %.not.i = icmp slt i64 %indvars.iv.next.i94, %i.fw
  br i1 %.not.i, label %minTemp3_fast_iVar5.exit, label %.lr.ph.i91, !llvm.loop !41

minTemp3_fast_iVar5.exit:                         ; preds = %bb.aa, %bb.y, %bb.z
  %.sink.i88 = phi i32 [ %i.gg, %bb.y ], [ %i.gi, %bb.z ], [ 0, %bb.aa ]
  %.0.i89 = phi i32 [ 0, %bb.y ], [ 1, %bb.z ], [ 0, %bb.aa ] ; 2 uses
  %i.gj = icmp sgt i32 %.sink.i88, %.sink.i56
  %i.gk = sext i32 %.sink.i49 to i64              ; 4 uses
  br i1 %i.gj, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %minTemp3_fast_iVar5.exit
  %i.gl = xor i32 %.0.i89, 1
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !9  ; 4 uses
  %i.gp = zext nneg i32 %.0.i89 to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !9  ; 3 uses
  %i.gs = icmp eq i32 %i.go, 0
  %i.gt = icmp eq i32 %i.gr, 1
  %or.cond.i95 = and i1 %i.gs, %i.gt
  br i1 %or.cond.i95, label %arrangeQuoters_superFast_iVar5.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gu = icmp sgt i32 %.sink.i49, 1
  br i1 %i.gu, label %.lr.ph.i97, label %._crit_edge.i96

.lr.ph.i97:                                       ; preds = %bb.ac
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gk
  %i.gw = sext i32 %i.go to i64                   ; 2 uses
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = sext i32 %i.gr to i64                   ; 2 uses
  %i.gz = sub nsw i64 0, %i.gy
  %i.ha = zext nneg i32 %i.fu to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i97
  %indvars.iv.i98 = phi i64 [ %i.ha, %.lr.ph.i97 ], [ %indvars.iv.next.i100, %bb.ad ] ; 3 uses
  %.041.i99 = phi ptr [ %i.gv, %.lr.ph.i97 ], [ %i.hm, %bb.ad ] ; 4 uses
  %i.hb = getelementptr inbounds i8, ptr %.041.i99, i64 -4
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i98 ; 4 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.gx
  %i.he = load i32, ptr %i.hd, align 4
  store i32 %i.he, ptr %i.hb, align 4
  %i.hf = getelementptr inbounds i8, ptr %.041.i99, i64 -8
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.gz
  %i.hh = load i32, ptr %i.hg, align 4
  store i32 %i.hh, ptr %i.hf, align 4
  %i.hi = getelementptr inbounds i8, ptr %.041.i99, i64 -12
  %i.hj = getelementptr [4 x i8], ptr %i.hc, i64 %i.gy
  %i.hk = getelementptr i8, ptr %i.hj, i64 -12
  %i.hl = load i32, ptr %i.hk, align 4
  store i32 %i.hl, ptr %i.hi, align 4
  %i.hm = getelementptr inbounds i8, ptr %.041.i99, i64 -16 ; 2 uses
  %i.hn = getelementptr [4 x i8], ptr %i.hc, i64 %i.gw
  %i.ho = getelementptr i8, ptr %i.hn, i64 -12
  %i.hp = load i32, ptr %i.ho, align 4
  store i32 %i.hp, ptr %i.hm, align 4
  %indvars.iv.next.i100 = add nsw i64 %indvars.iv.i98, -4
  %i.hq = icmp samesign ugt i64 %indvars.iv.i98, 4
  br i1 %i.hq, label %bb.ad, label %._crit_edge.i96, !llvm.loop !37

._crit_edge.i96:                                  ; preds = %bb.ad, %bb.ac
  %i.hr = shl nsw i64 %i.gk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %i.b, i64 %i.hr, i1 false)
  %i.hs = sub nsw i32 %i.go, %i.gr
  br label %arrangeQuoters_superFast_iVar5.exit.sink.split

bb.ae:                                            ; preds = %minTemp3_fast_iVar5.exit
  %i.ht = zext nneg i32 %.0.i57 to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !9  ; 4 uses
  %i.hw = xor i32 %.0.i57, 1
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !9  ; 3 uses
  %i.ia = icmp eq i32 %i.hv, 0
  %i.ib = icmp eq i32 %i.hz, 1
  %or.cond.i102 = and i1 %i.ia, %i.ib
  br i1 %or.cond.i102, label %arrangeQuoters_superFast_iVar5.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ic = icmp sgt i32 %.sink.i49, 1
  br i1 %i.ic, label %.lr.ph.i104, label %._crit_edge.i103

.lr.ph.i104:                                      ; preds = %bb.af
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gk
  %i.ie = sext i32 %i.hv to i64                   ; 2 uses
  %i.if = sub nsw i64 0, %i.ie
  %i.ig = sext i32 %i.hz to i64                   ; 2 uses
  %i.ih = sub nsw i64 0, %i.ig
  %i.ii = zext nneg i32 %i.fu to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i104
  %indvars.iv.i105 = phi i64 [ %i.ii, %.lr.ph.i104 ], [ %indvars.iv.next.i107, %bb.ag ] ; 3 uses
  %.041.i106 = phi ptr [ %i.id, %.lr.ph.i104 ], [ %i.iu, %bb.ag ] ; 4 uses
  %i.ij = getelementptr inbounds i8, ptr %.041.i106, i64 -4
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i105 ; 4 uses
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.if
  %i.im = load i32, ptr %i.il, align 4
  store i32 %i.im, ptr %i.ij, align 4
  %i.in = getelementptr inbounds i8, ptr %.041.i106, i64 -8
  %i.io = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.ih
  %i.ip = load i32, ptr %i.io, align 4
  store i32 %i.ip, ptr %i.in, align 4
  %i.iq = getelementptr inbounds i8, ptr %.041.i106, i64 -12
  %i.ir = getelementptr [4 x i8], ptr %i.ik, i64 %i.ig
  %i.is = getelementptr i8, ptr %i.ir, i64 -12
  %i.it = load i32, ptr %i.is, align 4
  store i32 %i.it, ptr %i.iq, align 4
  %i.iu = getelementptr inbounds i8, ptr %.041.i106, i64 -16 ; 2 uses
  %i.iv = getelementptr [4 x i8], ptr %i.ik, i64 %i.ie
  %i.iw = getelementptr i8, ptr %i.iv, i64 -12
  %i.ix = load i32, ptr %i.iw, align 4
  store i32 %i.ix, ptr %i.iu, align 4
  %indvars.iv.next.i107 = add nsw i64 %indvars.iv.i105, -4
  %i.iy = icmp samesign ugt i64 %indvars.iv.i105, 4
  br i1 %i.iy, label %bb.ag, label %._crit_edge.i103, !llvm.loop !37

._crit_edge.i103:                                 ; preds = %bb.ag, %bb.af
  %i.iz = shl nsw i64 %i.gk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %i.b, i64 %i.iz, i1 false)
  %i.ja = sub nsw i32 %i.hv, %i.hz
  br label %arrangeQuoters_superFast_iVar5.exit.sink.split

arrangeQuoters_superFast_iVar5.exit.sink.split:   ; preds = %arrangeQuoters_superFast_iVar5.exit79, %._crit_edge.i, %._crit_edge.i67, %._crit_edge.i81, %._crit_edge.i96, %._crit_edge.i103
  %.sink195 = phi i32 [ %i.ja, %._crit_edge.i103 ], [ %i.hs, %._crit_edge.i96 ], [ %i.fr, %._crit_edge.i81 ], [ %i.df, %._crit_edge.i67 ], [ %i.cc, %._crit_edge.i ], [ %i.eh, %arrangeQuoters_superFast_iVar5.exit79 ]
  %.sink194 = phi i32 [ %i.hv, %._crit_edge.i103 ], [ %i.go, %._crit_edge.i96 ], [ %i.ek, %._crit_edge.i81 ], [ %.0.i, %._crit_edge.i67 ], [ %i.av, %._crit_edge.i ], [ %.0.i50, %arrangeQuoters_superFast_iVar5.exit79 ]
  %.sink191 = load i32, ptr %3, align 4, !tbaa !9
  %i.jb = tail call i32 @llvm.abs.i32(i32 %.sink195, i1 true)
  %i.jc = shl i32 %i.jb, 2
  %i.jd = add i32 %.sink194, -4
  %i.je = add i32 %i.jd, %i.jc
  %i.jf = tail call i32 @adjustInfoAfterSwap(ptr noundef %2, i32 noundef %.sink191, i32 noundef 5, i32 noundef %i.je) #8
  store i32 %i.jf, ptr %3, align 4, !tbaa !9
  br label %arrangeQuoters_superFast_iVar5.exit

arrangeQuoters_superFast_iVar5.exit:              ; preds = %arrangeQuoters_superFast_iVar5.exit.sink.split, %bb.ae, %bb.ab, %bb.v, %bb.p, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @minimalSwapAndFlipIVar_superFast_iVar5_noEBFC(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %minTemp1_fast_iVar5.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = shl nuw i32 %1, 1
  %i.d = add i32 %i.c, -2
  %i.e = zext i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.e, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 6 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %4 = zext i32 %i.g to i64
  %i.h = getelementptr i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %5 = zext i32 %i.i to i64
  %.0.i.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %4, i64 %5)
  switch i32 %.0.i.i, label %bb.c [
    i32 0, label %bb.b
    i32 -1, label %minTemp1_fast_iVar5.exit.thread
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -4
  %i.j = trunc nuw i64 %indvars.iv.i to i32
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %.lr.ph.i, label %minTemp1_fast_iVar5.exit.thread, !llvm.loop !39

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = shl i64 %indvars.iv.i, 32
  %sext = add i64 %i.l, 8589934592                ; 2 uses
  %i.m = and i64 %indvars.iv.i, 2147483648
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i4, label %.arrangeQuoters_superFast_iVar5.exit_crit_edge

.arrangeQuoters_superFast_iVar5.exit_crit_edge:   ; preds = %bb.c
  %.pre = ashr exact i64 %sext, 30
  br label %arrangeQuoters_superFast_iVar5.exit

.lr.ph.i4:                                        ; preds = %bb.c
  %i.o = or disjoint i64 %indvars.iv.i, 1
  %i.p = ashr exact i64 %sext, 30                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i4
  %indvars.iv.i5 = phi i64 [ %i.o, %.lr.ph.i4 ], [ %indvars.iv.next.i6, %bb.d ] ; 3 uses
  %.041.i = phi ptr [ %i.q, %.lr.ph.i4 ], [ %i.s, %bb.d ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i5
  %i.s = getelementptr inbounds i8, ptr %.041.i, i64 -16 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.u = load <4 x i32>, ptr %i.t, align 4
  %i.v = shufflevector <4 x i32> %i.u, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.v, ptr %i.s, align 4
  %indvars.iv.next.i6 = add nsw i64 %indvars.iv.i5, -4
  %i.w = icmp samesign ugt i64 %indvars.iv.i5, 4
  br i1 %i.w, label %bb.d, label %arrangeQuoters_superFast_iVar5.exit, !llvm.loop !37

arrangeQuoters_superFast_iVar5.exit:              ; preds = %bb.d, %.arrangeQuoters_superFast_iVar5.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.arrangeQuoters_superFast_iVar5.exit_crit_edge ], [ %i.p, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %i.a, i64 %.pre-phi, i1 false)
  %i.x = load i32, ptr %3, align 4, !tbaa !9
  %i.y = tail call i32 @adjustInfoAfterSwap(ptr noundef %2, i32 noundef %i.x, i32 noundef 5, i32 noundef 4) #8
  store i32 %i.y, ptr %3, align 4, !tbaa !9
  br label %minTemp1_fast_iVar5.exit.thread

minTemp1_fast_iVar5.exit.thread:                  ; preds = %.lr.ph.i, %bb.b, %bb.a, %arrangeQuoters_superFast_iVar5.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @arrangeQuoters_superFast_moreThen5(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr nofree noundef captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = icmp eq i32 %3, 0
  %i.c = icmp eq i32 %4, 1
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %7, -6                       ; 7 uses
  %i.e = shl nuw i32 1, %i.d                      ; 2 uses
  %.neg = shl i32 -4, %i.d
  %i.f = sub nsw i32 %2, %i.e                     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.h = shl i32 8, %i.d
  %i.i = sext i32 %i.e to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.k = sub nsw i64 0, %i.i                      ; 4 uses
  %i.l = shl i32 %3, %i.d
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = sext i32 %i.h to i64                     ; 4 uses
  %i.p = shl i32 %4, %i.d
  %i.q = sext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = shl i32 %5, %i.d
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = shl i32 %6, %i.d
  %i.w = sext i32 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.054 = phi ptr [ %i.j, %.lr.ph ], [ %i.ag, %bb.c ]
  %.05253 = phi i32 [ %i.f, %.lr.ph ], [ %i.ai, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.054, i64 %i.k ; 2 uses
  %i.z = zext nneg i32 %.05253 to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.ab, i64 %i.o, i1 false)
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.k ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ad, i64 %i.o, i1 false)
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.k ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.af, i64 %i.o, i1 false)
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.k ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.ah, i64 %i.o, i1 false)
  %i.ai = add i32 %.05253, %.neg                  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.ak = shl nsw i64 %i.a, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.ak, i1 false)
  %i.al = load i32, ptr %9, align 4, !tbaa !9
  %i.am = sub nsw i32 %3, %4
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = shl i32 %i.an, 2
  %i.ap = add i32 %3, -4
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = tail call i32 @adjustInfoAfterSwap(ptr noundef %8, i32 noundef %i.al, i32 noundef %7, i32 noundef %i.aq) #8
  store i32 %i.ar, ptr %9, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 4) i32 @minTemp0_fast_moreThen5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %1, -6                       ; 4 uses
  %.neg27 = shl i32 -3, %i.a
  %.neg = shl i32 -4, %i.a
  %i.b = icmp slt i32 %2, 1
  %.not = icmp eq i32 %i.a, 31
  %or.cond = select i1 %i.b, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge32, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.a
  %i.c = shl nuw i32 1, %i.a
  %i.d = add nsw i32 %2, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.02431.us = phi i32 [ %i.n, %._crit_edge.us ], [ %i.d, %.preheader.us.preheader ] ; 4 uses
  %i.e = zext nneg i32 %.02431.us to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.f = sub nsw i64 %i.e, %indvars.iv            ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = trunc nsw i64 %i.f to i32
  %i.j = add i32 %.neg27, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %.0.i.us = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.h, i64 %i.m)
  switch i32 %.0.i.us, label %.split.us [
    i32 0, label %bb.c
    i32 -1, label %.split34.us
  ]

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !43

._crit_edge.us:                                   ; preds = %bb.c
  %i.n = add i32 %.02431.us, %.neg                ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %.preheader.us, label %._crit_edge32, !llvm.loop !44

.split34.us:                                      ; preds = %bb.b
  %i.p = add nuw nsw i32 %.02431.us, 1
  br label %._crit_edge32

.split.us:                                        ; preds = %bb.b
  %i.q = add nuw nsw i32 %.02431.us, 1
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge.us, %bb.a, %.split.us, %.split34.us
  %.sink = phi i32 [ %i.p, %.split34.us ], [ %i.q, %.split.us ], [ 0, %bb.a ], [ 0, %._crit_edge.us ]
  %.0 = phi i32 [ 0, %.split34.us ], [ 3, %.split.us ], [ 0, %bb.a ], [ 0, %._crit_edge.us ]
  store i32 %.sink, ptr %3, align 4, !tbaa !9
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 1, 3) i32 @minTemp1_fast_moreThen5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %1, -6                       ; 3 uses
  %i.b = shl nuw i32 1, %i.a                      ; 5 uses
  %.neg = shl i32 -4, %i.a
  %i.c = xor i32 %i.b, -1
end_hunk_0
begin_hunk_1_@minimalInitialFlip_fast_16Vars:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @minimalSwapAndFlipIVar_superFast_all(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load i32, ptr %3, align 4, !tbaa !9      ; 2 uses
  %i.c = sext i32 %2 to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %0, i64 %i.d, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 2 uses
  %i.g = icmp eq i32 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5(ptr noundef %0, i32 noundef 0, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %i.b, %bb.b ], [ %i.f, %bb.a ]  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 2 uses
  %i.j = icmp eq i32 %.1, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5(ptr noundef %0, i32 noundef 1, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi i32 [ %.1, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9    ; 2 uses
  %i.m = icmp eq i32 %.1.1, %i.l
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5(ptr noundef %0, i32 noundef 2, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2 = phi i32 [ %.1.1, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9    ; 2 uses
  %i.p = icmp eq i32 %.1.2, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5(ptr noundef %0, i32 noundef 3, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3 = phi i32 [ %.1.2, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9    ; 2 uses
  %i.s = icmp eq i32 %.1.3, %i.r
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5(ptr noundef %0, i32 noundef 4, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.4 = phi i32 [ %.1.3, %bb.j ], [ %i.r, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9    ; 2 uses
  %i.v = icmp eq i32 %.1.4, %i.u
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @minimalSwapAndFlipIVar_superFast_iVar5(ptr noundef %0, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.2 = phi i32 [ %.1.4, %bb.l ], [ %i.u, %bb.k ]
  %i.w = icmp sgt i32 %1, 7
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.x = add nsw i32 %1, -1
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 6, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.348 = phi i32 [ %.2, %.lr.ph.preheader ], [ %.4, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.z = load i32, ptr %i.y, align 4, !tbaa !9    ; 2 uses
  %i.aa = icmp eq i32 %.348, %i.z
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @minimalSwapAndFlipIVar_superFast_moreThen5(ptr noundef %0, i32 noundef %i.ab, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %.4 = phi i32 [ %.348, %bb.n ], [ %i.z, %.lr.ph ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.o, %bb.m
  %bcmp = call i32 @bcmp(ptr %0, ptr nonnull %i.a, i64 %i.d)
  %i.ac = icmp ne i32 %bcmp, 0
  %. = zext i1 %i.ac to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @minimalSwapAndFlipIVar_superFast_all_noEBFC(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 4 uses
  %i.b = alloca [1024 x i64], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = load i32, ptr %3, align 4, !tbaa !9      ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = shl nsw i64 %i.d, 3                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 8 %0, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9    ; 2 uses
  %i.h = icmp eq i32 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5_noEBFC(ptr noundef %0, i32 noundef 0, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %i.g, %bb.a ]  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9    ; 2 uses
  %i.k = icmp eq i32 %.1, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5_noEBFC(ptr noundef %0, i32 noundef 1, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi i32 [ %.1, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9    ; 2 uses
  %i.n = icmp eq i32 %.1.1, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5_noEBFC(ptr noundef %0, i32 noundef 2, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2 = phi i32 [ %.1.1, %bb.f ], [ %i.m, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9    ; 2 uses
  %i.q = icmp eq i32 %.1.2, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5_noEBFC(ptr noundef %0, i32 noundef 3, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3 = phi i32 [ %.1.2, %bb.h ], [ %i.p, %bb.g ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9    ; 2 uses
  %i.t = icmp eq i32 %.1.3, %i.s
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5_noEBFC(ptr noundef %0, i32 noundef 4, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.4 = phi i32 [ %.1.3, %bb.j ], [ %i.s, %bb.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9    ; 2 uses
  %i.w = icmp eq i32 %.1.4, %i.v
  br i1 %i.w, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.x = icmp sgt i32 %2, 0
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %minimalSwapAndFlipIVar_superFast_iVar5_noEBFC.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.y = shl nuw i32 %2, 1
  %i.z = add i32 %i.y, -2
  %i.aa = zext i32 %i.z to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.aa, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !9
  %6 = zext i32 %i.ac to i64
  %i.ad = getelementptr i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9
  %7 = zext i32 %i.ae to i64
  %.0.i.i.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %6, i64 %7)
  switch i32 %.0.i.i.i, label %bb.n [
    i32 0, label %bb.m
    i32 -1, label %minimalSwapAndFlipIVar_superFast_iVar5_noEBFC.exit
  ]

bb.m:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -4
  %i.af = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ag = icmp sgt i32 %i.af, 3
  br i1 %i.ag, label %.lr.ph.i.i, label %minimalSwapAndFlipIVar_superFast_iVar5_noEBFC.exit, !llvm.loop !39

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.ah = shl i64 %indvars.iv.i.i, 32
  %sext.i = add i64 %i.ah, 8589934592             ; 2 uses
  %i.ai = and i64 %indvars.iv.i.i, 2147483648
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i4.i, label %.arrangeQuoters_superFast_iVar5.exit_crit_edge.i

.arrangeQuoters_superFast_iVar5.exit_crit_edge.i: ; preds = %bb.n
  %.pre.i = ashr exact i64 %sext.i, 30
  br label %arrangeQuoters_superFast_iVar5.exit.i

.lr.ph.i4.i:                                      ; preds = %bb.n
  %i.ak = or disjoint i64 %indvars.iv.i.i, 1
  %i.al = ashr exact i64 %sext.i, 30              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i4.i
  %indvars.iv.i5.i = phi i64 [ %i.ak, %.lr.ph.i4.i ], [ %indvars.iv.next.i6.i, %bb.o ] ; 3 uses
  %.041.i.i = phi ptr [ %i.am, %.lr.ph.i4.i ], [ %i.ao, %bb.o ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i5.i
  %i.ao = getelementptr inbounds i8, ptr %.041.i.i, i64 -16 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -12
  %i.aq = load <4 x i32>, ptr %i.ap, align 4
  %i.ar = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.ar, ptr %i.ao, align 4
  %indvars.iv.next.i6.i = add nsw i64 %indvars.iv.i5.i, -4
  %i.as = icmp samesign ugt i64 %indvars.iv.i5.i, 4
  br i1 %i.as, label %bb.o, label %arrangeQuoters_superFast_iVar5.exit.i, !llvm.loop !37

arrangeQuoters_superFast_iVar5.exit.i:            ; preds = %bb.o, %.arrangeQuoters_superFast_iVar5.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.arrangeQuoters_superFast_iVar5.exit_crit_edge.i ], [ %i.al, %bb.o ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 16 %i.a, i64 %.pre-phi.i, i1 false)
  %i.at = load i32, ptr %5, align 4, !tbaa !9
  %i.au = tail call i32 @adjustInfoAfterSwap(ptr noundef %4, i32 noundef %i.at, i32 noundef 5, i32 noundef 4) #8
  store i32 %i.au, ptr %5, align 4, !tbaa !9
  br label %minimalSwapAndFlipIVar_superFast_iVar5_noEBFC.exit

minimalSwapAndFlipIVar_superFast_iVar5_noEBFC.exit: ; preds = %.lr.ph.i.i, %bb.m, %bb.l, %arrangeQuoters_superFast_iVar5.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %minimalSwapAndFlipIVar_superFast_iVar5_noEBFC.exit
  %.2 = phi i32 [ %.1.4, %minimalSwapAndFlipIVar_superFast_iVar5_noEBFC.exit ], [ %i.v, %bb.k ]
  %i.av = icmp sgt i32 %1, 7
  br i1 %i.av, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.aw = add nsw i32 %1, -1
  %wide.trip.count = zext nneg i32 %i.aw to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %indvars.iv = phi i64 [ 6, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %.349 = phi i32 [ %.2, %.lr.ph.preheader ], [ %.4, %bb.r ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !9  ; 2 uses
  %i.az = icmp eq i32 %.349, %i.ay
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @minimalSwapAndFlipIVar_superFast_moreThen5_noEBFC(ptr noundef %0, i32 noundef %i.ba, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %.4 = phi i32 [ %.349, %bb.q ], [ %i.ay, %.lr.ph ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.r, %bb.p
  %bcmp = call i32 @bcmp(ptr %0, ptr nonnull %i.b, i64 %i.e)
  %i.bb = icmp ne i32 %bcmp, 0
  %. = zext i1 %i.bb to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define void @luckyCanonicizerS_F_first_16Vars1(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !9
  %i.b = add nsw i32 %1, 1
  %i.c = shl nuw i32 1, %i.b
  %i.d = and i32 %i.a, %i.c
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %.preheader15

.preheader15:                                     ; preds = %bb.a, %.preheader15
  %i.e = tail call i32 @minimalSwapAndFlipIVar_superFast_all(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5)
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %.loopexit, label %.preheader15, !llvm.loop !53

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.f = tail call i32 @minimalSwapAndFlipIVar_superFast_all_noEBFC(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5)
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %.loopexit, label %.preheader, !llvm.loop !54

.loopexit:                                        ; preds = %.preheader15, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define void @luckyCanonicizerS_F_first_16Vars11(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 8 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = load i32, ptr %5, align 4, !tbaa !9      ; 2 uses
  %i.e = add nsw i32 %1, 2
  %i.f = lshr i32 %i.d, %i.e
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %2 to i64
  %i.h = shl nsw i64 %i.g, 3                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %0, i64 %i.h, i1 false)
  call void @Kit_TruthNot_64bit(ptr noundef nonnull %i.a, i32 noundef %1) #8
  %i.i = load i32, ptr %5, align 4, !tbaa !9      ; 2 uses
  %i.j = shl nuw i32 1, %1
  %i.k = xor i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  %i.l = add nsw i32 %1, 1
  %i.m = shl nuw i32 1, %i.l                      ; 2 uses
  %i.n = and i32 %i.i, %i.m
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader15.i

.preheader15.i:                                   ; preds = %bb.b, %.preheader15.i
  %i.o = call i32 @minimalSwapAndFlipIVar_superFast_all(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not14.i = icmp eq i32 %i.o, 0
  br i1 %.not14.i, label %luckyCanonicizerS_F_first_16Vars1.exit, label %.preheader15.i, !llvm.loop !53

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %i.p = call i32 @minimalSwapAndFlipIVar_superFast_all_noEBFC(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %luckyCanonicizerS_F_first_16Vars1.exit, label %.preheader.i, !llvm.loop !54

luckyCanonicizerS_F_first_16Vars1.exit:           ; preds = %.preheader15.i, %.preheader.i
  %i.q = and i32 %i.k, %i.m
  %.not.i28 = icmp eq i32 %i.q, 0
  br i1 %.not.i28, label %.preheader.i31, label %.preheader15.i29

.preheader15.i29:                                 ; preds = %luckyCanonicizerS_F_first_16Vars1.exit, %.preheader15.i29
  %i.r = call i32 @minimalSwapAndFlipIVar_superFast_all(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not14.i30 = icmp eq i32 %i.r, 0
  br i1 %.not14.i30, label %luckyCanonicizerS_F_first_16Vars1.exit33, label %.preheader15.i29, !llvm.loop !53

.preheader.i31:                                   ; preds = %luckyCanonicizerS_F_first_16Vars1.exit, %.preheader.i31
  %i.s = call i32 @minimalSwapAndFlipIVar_superFast_all_noEBFC(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not13.i32 = icmp eq i32 %i.s, 0
  br i1 %.not13.i32, label %luckyCanonicizerS_F_first_16Vars1.exit33, label %.preheader.i31, !llvm.loop !54

luckyCanonicizerS_F_first_16Vars1.exit33:         ; preds = %.preheader15.i29, %.preheader.i31
  %i.t = call i32 @memCompare(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %1) #8
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.c, label %luckyCanonicizerS_F_first_16Vars1.exit39

bb.c:                                             ; preds = %luckyCanonicizerS_F_first_16Vars1.exit33
  %i.v = load i32, ptr %i.c, align 4, !tbaa !9
  store i32 %i.v, ptr %5, align 4, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.a, i64 %i.h, i1 false)
  br label %luckyCanonicizerS_F_first_16Vars1.exit39

bb.d:                                             ; preds = %bb.a
  %i.w = add nsw i32 %1, 1
  %i.x = shl nuw i32 1, %i.w
  %i.y = and i32 %i.d, %i.x
  %.not.i34 = icmp eq i32 %i.y, 0
  br i1 %.not.i34, label %.preheader.i37, label %.preheader15.i35

.preheader15.i35:                                 ; preds = %bb.d, %.preheader15.i35
  %i.z = tail call i32 @minimalSwapAndFlipIVar_superFast_all(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef nonnull %5)
  %.not14.i36 = icmp eq i32 %i.z, 0
  br i1 %.not14.i36, label %luckyCanonicizerS_F_first_16Vars1.exit39, label %.preheader15.i35, !llvm.loop !53

.preheader.i37:                                   ; preds = %bb.d, %.preheader.i37
  %i.aa = tail call i32 @minimalSwapAndFlipIVar_superFast_all_noEBFC(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef nonnull %5)
  %.not13.i38 = icmp eq i32 %i.aa, 0
  br i1 %.not13.i38, label %luckyCanonicizerS_F_first_16Vars1.exit39, label %.preheader.i37, !llvm.loop !54

luckyCanonicizerS_F_first_16Vars1.exit39:         ; preds = %.preheader15.i35, %.preheader.i37, %luckyCanonicizerS_F_first_16Vars1.exit33, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @memCompare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @luckyCanonicizer_final_fast_16Vars(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Kit_TruthSemiCanonicize_Yasha1(ptr noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %3) #8 ; 2 uses
  store i32 %i.a, ptr %5, align 4, !tbaa !9
  %i.b = add nsw i32 %1, 1
  %i.c = shl nuw i32 1, %i.b
  %i.d = and i32 %i.a, %i.c
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader15.i

.preheader15.i:                                   ; preds = %bb.a, %.preheader15.i
  %i.e = tail call i32 @minimalSwapAndFlipIVar_superFast_all(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef nonnull %5)
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %luckyCanonicizerS_F_first_16Vars1.exit, label %.preheader15.i, !llvm.loop !53

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %i.f = tail call i32 @minimalSwapAndFlipIVar_superFast_all_noEBFC(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef nonnull %5)
  %.not13.i = icmp eq i32 %i.f, 0
  br i1 %.not13.i, label %luckyCanonicizerS_F_first_16Vars1.exit, label %.preheader.i, !llvm.loop !54

luckyCanonicizerS_F_first_16Vars1.exit:           ; preds = %.preheader15.i, %.preheader.i
  ret void
}

declare i32 @Kit_TruthSemiCanonicize_Yasha1(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @bitReverceOrder(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.in5 = phi i32 [ %.0, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.0 = add nsw i32 %.0.in5, -1                   ; 2 uses
  tail call void @Kit_TruthChangePhase_64bit(ptr noundef %0, i32 noundef %1, i32 noundef %.0) #8
  %i.b = icmp samesign ugt i32 %.0.in5, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @luckyCanonicizer_final_fast_16Vars1(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Kit_TruthSemiCanonicize_Yasha1(ptr noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %3) #8
  store i32 %i.a, ptr %5, align 4, !tbaa !9
  tail call void @luckyCanonicizerS_F_first_16Vars11(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5)
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.i, label %bitReverceOrder.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.in5.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.0.i = add nsw i32 %.0.in5.i, -1               ; 2 uses
  tail call void @Kit_TruthChangePhase_64bit(ptr noundef %0, i32 noundef %1, i32 noundef %.0.i) #8
  %i.c = icmp samesign ugt i32 %.0.in5.i, 1
  br i1 %i.c, label %.lr.ph.i, label %bitReverceOrder.exit, !llvm.loop !55

bitReverceOrder.exit:                             ; preds = %.lr.ph.i, %bb.a
  %notmask = shl nsw i32 -1, %1
  %i.d = load i32, ptr %5, align 4, !tbaa !9
  %i.e = xor i32 %notmask, %i.d
  %i.f = xor i32 %i.e, -1
  store i32 %i.f, ptr %5, align 4, !tbaa !9
  tail call void @luckyCanonicizerS_F_first_16Vars11(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @luckyCanonicizer_final_fast(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !9
  %i.c = icmp slt i32 %1, 7
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !13
  %i.e = call i64 @luckyCanonicizer_final_fast_6Vars(i64 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.b) #8
  store i64 %i.e, ptr %0, align 8, !tbaa !13
  br label %luckyCanonicizer_final_fast_16Vars.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i32 %1, 17
  br i1 %i.f, label %bb.d, label %luckyCanonicizer_final_fast_16Vars.exit

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %1, -6
  %i.h = shl nuw nsw i32 1, %i.g                  ; 2 uses
  %i.i = call i32 @Kit_TruthSemiCanonicize_Yasha1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) #8 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !9
  %i.j = shl nuw nsw i32 2, %1
  %i.k = and i32 %i.i, %i.j
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader15.i.i

.preheader15.i.i:                                 ; preds = %bb.d, %.preheader15.i.i
  %i.l = call i32 @minimalSwapAndFlipIVar_superFast_all(ptr noundef %0, i32 noundef %1, i32 noundef %i.h, ptr noundef nonnull readonly %i.a, ptr noundef %2, ptr noundef nonnull %i.b)
  %.not14.i.i = icmp eq i32 %i.l, 0
  br i1 %.not14.i.i, label %luckyCanonicizer_final_fast_16Vars.exit, label %.preheader15.i.i, !llvm.loop !53

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %i.m = call i32 @minimalSwapAndFlipIVar_superFast_all_noEBFC(ptr noundef %0, i32 noundef %1, i32 noundef %i.h, ptr noundef nonnull readonly %i.a, ptr noundef %2, ptr noundef nonnull %i.b)
  %.not13.i.i = icmp eq i32 %i.m, 0
  br i1 %.not13.i.i, label %luckyCanonicizer_final_fast_16Vars.exit, label %.preheader.i.i, !llvm.loop !54

luckyCanonicizer_final_fast_16Vars.exit:          ; preds = %.preheader15.i.i, %.preheader.i.i, %bb.c, %bb.b
  %i.n = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.n
}

declare i64 @luckyCanonicizer_final_fast_6Vars(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @luckyCanonicizer_final_fast1(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 6 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !9
  %i.c = icmp slt i32 %1, 7
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !13
  %i.e = call i64 @luckyCanonicizer_final_fast_6Vars1(i64 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.b) #8
  store i64 %i.e, ptr %0, align 8, !tbaa !13
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i32 %1, 17
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %1, -6
  %i.h = shl nuw nsw i32 1, %i.g                  ; 2 uses
  %i.i = call i32 @Kit_TruthSemiCanonicize_Yasha1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) #8
  store i32 %i.i, ptr %i.b, align 4, !tbaa !9
  call void @luckyCanonicizerS_F_first_16Vars11(ptr noundef %0, i32 noundef %1, i32 noundef %i.h, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.b)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.0.in5.i.i = phi i32 [ %.0.i.i, %.lr.ph.i.i ], [ %1, %bb.d ] ; 2 uses
  %.0.i.i = add nsw i32 %.0.in5.i.i, -1           ; 2 uses
  call void @Kit_TruthChangePhase_64bit(ptr noundef %0, i32 noundef %1, i32 noundef %.0.i.i) #8
  %i.j = icmp samesign ugt i32 %.0.in5.i.i, 1
  br i1 %i.j, label %.lr.ph.i.i, label %luckyCanonicizer_final_fast_16Vars1.exit, !llvm.loop !55

luckyCanonicizer_final_fast_16Vars1.exit:         ; preds = %.lr.ph.i.i
  %notmask.i = shl nsw i32 -1, %1
  %i.k = load i32, ptr %i.b, align 4, !tbaa !9
  %i.l = xor i32 %notmask.i, %i.k
  %i.m = xor i32 %i.l, -1
  store i32 %i.m, ptr %i.b, align 4, !tbaa !9
  call void @luckyCanonicizerS_F_first_16Vars11(ptr noundef %0, i32 noundef %1, i32 noundef %i.h, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %luckyCanonicizer_final_fast_16Vars1.exit, %bb.c, %bb.b
  %i.n = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.n
}

declare i64 @luckyCanonicizer_final_fast_6Vars1(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = distinct !{!15, !11, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !11, !17, !16}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11, !16, !17}
!24 = distinct !{!24, !11, !17, !16}
!25 = distinct !{!25, !11, !16, !17}
!26 = distinct !{!26, !11, !17, !16}
!27 = distinct !{!27, !11, !16, !17}
!28 = distinct !{!28, !11, !17, !16}
!29 = distinct !{!29, !11, !16, !17}
!30 = distinct !{!30, !11, !17, !16}
!31 = distinct !{!31, !11, !16, !17}
!32 = distinct !{!32, !11, !17, !16}
!33 = distinct !{!33, !11, !16, !17}
!34 = distinct !{!34, !11, !17, !16}
!35 = distinct !{!35, !11, !16, !17}
!36 = distinct !{!36, !11, !17, !16}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
end_hunk_1
