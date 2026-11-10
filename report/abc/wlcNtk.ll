Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcNtk?download=true
inline.NumInlined: 740
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Wlc_NtkPrintDistribSortOne:bb.a
  %indvars.iv38.i.prol = phi i64 [ %indvars.iv.next39.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i, %.lr.ph.preheader.i ] ; 3 uses
  %.03132.i.prol = phi i32 [ %spec.select.i.prol, %.lr.ph.i.prol ], [ %i.q, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %indvars.iv38.i.prol
  %i.t = load i64, ptr %i.s, align 8, !tbaa !64   ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  %i.v = trunc nuw nsw i64 %indvars.iv38.i.prol to i32
  %spec.select.i.prol = select i1 %i.u, i32 %i.v, i32 %.03132.i.prol ; 3 uses
  %indvars.iv.next39.i.prol = add nuw nsw i64 %indvars.iv38.i.prol, 1 ; 2 uses
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.r) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !110

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i.prol ]
  %indvars.iv38.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next39.i.prol, %.lr.ph.i.prol ]
  %.03132.i.unr = phi i32 [ %i.q, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %i.x = icmp ult i64 %i.p, 3
  br i1 %i.x, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.y = phi i64 [ %i.as, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i.3, %.lr.ph.i ], [ %indvars.iv38.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.03132.i = phi i32 [ %spec.select.i.3, %.lr.ph.i ], [ %.03132.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %indvars.iv38.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.y
  %i.ac = trunc nuw nsw i64 %indvars.iv38.i to i32
  %spec.select.i = select i1 %i.ab, i32 %i.ac, i32 %.03132.i
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.y) ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %indvars.iv.next39.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = trunc nuw nsw i64 %indvars.iv.next39.i to i32
  %spec.select.i.1 = select i1 %i.ag, i32 %i.ah, i32 %spec.select.i
  %indvars.iv.next39.i.1 = add nuw nsw i64 %indvars.iv38.i, 2 ; 2 uses
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ad) ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %indvars.iv.next39.i.1
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.ai
  %i.am = trunc nuw nsw i64 %indvars.iv.next39.i.1 to i32
  %spec.select.i.2 = select i1 %i.al, i32 %i.am, i32 %spec.select.i.1
  %indvars.iv.next39.i.2 = add nuw nsw i64 %indvars.iv38.i, 3 ; 2 uses
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.ai) ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %indvars.iv.next39.i.2
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !64 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.an
  %i.ar = trunc nuw nsw i64 %indvars.iv.next39.i.2 to i32
  %spec.select.i.3 = select i1 %i.aq, i32 %i.ar, i32 %spec.select.i.2 ; 2 uses
  %indvars.iv.next39.i.3 = add nuw nsw i64 %indvars.iv38.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next39.i.3, %wide.trip.count.i
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.an)
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select.i.3, %.lr.ph.i ]
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %indvars.iv41.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !64
  %i.av = sext i32 %spec.select.i.lcssa to i64    ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.val10, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !64
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !64
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !64
  %i.ay = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  %i.az = getelementptr inbounds [8 x i8], ptr %.val9, i64 %i.av ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !64
  store i64 %i.ba, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !64
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %.lr.ph.i13, label %.lr.ph.preheader.i, !llvm.loop !3

.lr.ph.i13:                                       ; preds = %._crit_edge.i
  %i.bb = lshr i32 %.val11, 1                     ; 3 uses
  %wide.trip.count.i14 = zext nneg i32 %i.bb to i64 ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %.val10, i64 %wide.trip.count.i ; 3 uses
  %xtraiter25 = and i64 %wide.trip.count.i14, 1
  %i.bd = icmp eq i32 %i.bb, 1
  br i1 %i.bd, label %.epil.preheader, label %.lr.ph.i13.new

.lr.ph.i13.new:                                   ; preds = %.lr.ph.i13
  %unroll_iter = and i64 %wide.trip.count.i14, 1073741822
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i13.new
  %indvars.iv.i15 = phi i64 [ 0, %.lr.ph.i13.new ], [ %indvars.iv.next.i16.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i13.new ], [ %niter.next.1, %bb.b ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %indvars.iv.i15 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !64
  %i.bg = xor i64 %indvars.iv.i15, -1
  %i.bh = getelementptr [8 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !64
  store i64 %i.bi, ptr %i.be, align 8, !tbaa !64
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %indvars.iv.i15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !64
  %i.bm = xor i64 %indvars.iv.i15, -2
  %i.bn = getelementptr [8 x i8], ptr %i.bc, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !64
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !64
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !64
  %indvars.iv.next.i16.1 = add nuw nsw i64 %indvars.iv.i15, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Vec_WrdReverseOrder.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !4

Vec_WrdReverseOrder.exit.loopexit.unr-lcssa:      ; preds = %bb.b
  %lcmp.mod26.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod26.not, label %Vec_WrdReverseOrder.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Vec_WrdReverseOrder.exit.loopexit.unr-lcssa, %.lr.ph.i13
  %indvars.iv.i15.epil.init = phi i64 [ 0, %.lr.ph.i13 ], [ %indvars.iv.next.i16.1, %Vec_WrdReverseOrder.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i32 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !64
  %i.br = xor i64 %indvars.iv.i15.epil.init, -1
  %i.bs = getelementptr [8 x i8], ptr %i.bc, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !64
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !64
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !64
  br label %Vec_WrdReverseOrder.exit

Vec_WrdReverseOrder.exit:                         ; preds = %.epil.preheader, %Vec_WrdReverseOrder.exit.loopexit.unr-lcssa, %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !62 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %.lr.ph.i19, label %Vec_WrdReverseOrder.exit24

.lr.ph.i19:                                       ; preds = %Vec_WrdReverseOrder.exit
  %i.bx = lshr i32 %i.bv, 1                       ; 3 uses
  %i.by = zext nneg i32 %i.bv to i64
  %wide.trip.count.i20 = zext nneg i32 %i.bx to i64 ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %.val9, i64 %i.by ; 3 uses
  %xtraiter29 = and i64 %wide.trip.count.i20, 1
  %i.ca = icmp eq i32 %i.bx, 1
  br i1 %i.ca, label %.epil.preheader28, label %.lr.ph.i19.new

.lr.ph.i19.new:                                   ; preds = %.lr.ph.i19
  %unroll_iter32 = and i64 %wide.trip.count.i20, 1073741822
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i19.new
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.i19.new ], [ %indvars.iv.next.i22.1, %bb.c ] ; 5 uses
  %niter33 = phi i64 [ 0, %.lr.ph.i19.new ], [ %niter33.next.1, %bb.c ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %indvars.iv.i21 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !64
  %i.cd = xor i64 %indvars.iv.i21, -1
  %i.ce = getelementptr [8 x i8], ptr %i.bz, i64 %i.cd ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !64
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !64
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %indvars.iv.i21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !64
  %i.cj = xor i64 %indvars.iv.i21, -2
  %i.ck = getelementptr [8 x i8], ptr %i.bz, i64 %i.cj ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !64
  store i64 %i.cl, ptr %i.ch, align 8, !tbaa !64
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !64
  %indvars.iv.next.i22.1 = add nuw nsw i64 %indvars.iv.i21, 2 ; 2 uses
  %niter33.next.1 = add i64 %niter33, 2           ; 2 uses
  %niter33.ncmp.1 = icmp eq i64 %niter33.next.1, %unroll_iter32
  br i1 %niter33.ncmp.1, label %Vec_WrdReverseOrder.exit24.loopexit.unr-lcssa, label %bb.c, !llvm.loop !4

Vec_WrdReverseOrder.exit24.loopexit.unr-lcssa:    ; preds = %bb.c
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %Vec_WrdReverseOrder.exit24, label %.epil.preheader28

.epil.preheader28:                                ; preds = %Vec_WrdReverseOrder.exit24.loopexit.unr-lcssa, %.lr.ph.i19
  %indvars.iv.i21.epil.init = phi i64 [ 0, %.lr.ph.i19 ], [ %indvars.iv.next.i22.1, %Vec_WrdReverseOrder.exit24.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod31 = trunc i32 %i.bx to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.val9, i64 %indvars.iv.i21.epil.init ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !64
  %i.co = xor i64 %indvars.iv.i21.epil.init, -1
  %i.cp = getelementptr [8 x i8], ptr %i.bz, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !64
  store i64 %i.cq, ptr %i.cm, align 8, !tbaa !64
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !64
  br label %Vec_WrdReverseOrder.exit24

Vec_WrdReverseOrder.exit24:                       ; preds = %.epil.preheader28, %Vec_WrdReverseOrder.exit24.loopexit.unr-lcssa, %Vec_WrdReverseOrder.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_NtkPrintDistrib(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2) local_unnamed_addr #3 {
Vec_IntStart.exit:
  %i.a = alloca [2 x [60 x i32]], align 16        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(480) %i.a, i8 0, i64 480, i1 false)
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 60, ptr %i.b, align 8, !tbaa !30
  %calloc = tail call dereferenceable_or_null(240) ptr @calloc(i64 1, i64 240) ; 27 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 17 uses
  store ptr %calloc, ptr %i.d, align 8, !tbaa !29
  store i32 60, ptr %i.c, align 4, !tbaa !35
  %i.e = getelementptr i8, ptr %0, i64 36
  %.val411 = load i32, ptr %i.e, align 4, !tbaa !35
  %.not = icmp ne i32 %.val411, 2
  %.not341815 = icmp eq i32 %1, 0
  %.not341 = or i1 %.not341815, %.not             ; 4 uses
  br i1 %.not341, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Vec_IntStart.exit
  call void @Wlc_NtkCollectStats(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Vec_IntStart.exit
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store i32 60, ptr %i.f, align 8, !tbaa !119
  %calloc.i = tail call dereferenceable_or_null(480) ptr @calloc(i64 1, i64 480) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %calloc.i, ptr %i.h, align 8, !tbaa !46
  store i32 60, ptr %i.g, align 4, !tbaa !120
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store i32 60, ptr %i.i, align 8, !tbaa !119
  %calloc.i558 = tail call dereferenceable_or_null(480) ptr @calloc(i64 1, i64 480) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %calloc.i558, ptr %i.k, align 8, !tbaa !46
  store i32 60, ptr %i.j, align 4, !tbaa !120
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !62
  store i32 16, ptr %i.l, align 8, !tbaa !121
  %i.n = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %calloc.i, i64 %indvars.iv
  store ptr %i.l, ptr %i.p, align 8, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 60
  br i1 %exitcond.not, label %.preheader817, label %bb.c, !llvm.loop !111

.preheader:                                       ; preds = %.preheader817
  %i.q = getelementptr i8, ptr %0, i64 648        ; 4 uses
  %.val362822 = load i32, ptr %i.q, align 8, !tbaa !34
  %i.r = icmp sgt i32 %.val362822, 1
  br i1 %i.r, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr i8, ptr %0, i64 640        ; 44 uses
  %i.t = getelementptr i8, ptr %0, i64 700
  %i.u = getelementptr i8, ptr %0, i64 704
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 688
  %3 = getelementptr inbounds nuw i8, ptr %calloc, i64 188 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %calloc, i64 184 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %calloc, i64 180 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %calloc, i64 176 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %calloc, i64 172 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %calloc, i64 168 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %calloc, i64 164 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %calloc, i64 160 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %calloc, i64 156 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %calloc, i64 152 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %calloc, i64 148 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %calloc, i64 144 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %calloc, i64 140 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %calloc, i64 136 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %calloc, i64 132 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %calloc, i64 128 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %calloc, i64 124 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %calloc, i64 120 ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %calloc, i64 116 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %calloc, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %calloc, i64 108 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %calloc, i64 104 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %calloc, i64 192 ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %calloc, i64 200 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %calloc, i64 204 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %calloc, i64 208 ; 2 uses
  br label %bb.d

.preheader817:                                    ; preds = %bb.c, %.preheader817
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %.preheader817 ], [ 0, %bb.c ] ; 2 uses
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 0, ptr %i.aa, align 4, !tbaa !62
  store i32 16, ptr %i.z, align 8, !tbaa !121
  %i.ab = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %calloc.i558, i64 %indvars.iv835
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !61
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 1 ; 2 uses
  %exitcond838.not = icmp eq i64 %indvars.iv.next836, 60
  br i1 %exitcond838.not, label %.preheader, label %.preheader817, !llvm.loop !112

bb.d:                                             ; preds = %.lr.ph, %bb.cf
  %indvars.iv839 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next840, %bb.cf ] ; 6 uses
  %.0328825 = phi i64 [ 0, %.lr.ph ], [ %.1329, %bb.cf ]
  %.0330824 = phi i32 [ 0, %.lr.ph ], [ %.1331, %bb.cf ]
  %.0332823 = phi ptr [ null, %.lr.ph ], [ %.2334, %bb.cf ] ; 2 uses
  %.val359 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.val359, i64 %indvars.iv839 ; 111 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8      ; 12 uses
  %.val.i = load i32, ptr %i.af, align 8, !tbaa !39
  %i.ag = getelementptr i8, ptr %i.ae, i64 12     ; 9 uses
  %.val2.i = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.ah = sub nsw i32 %.val.i, %.val2.i
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 2 uses
  %.val3.i = load i16, ptr %i.ae, align 8         ; 2 uses
  %i.aj = lshr i16 %.val3.i, 6
  %i.ak = and i16 %i.aj, 1
  %i.al = zext nneg i16 %i.ak to i32
  %i.am = shl nuw i32 %i.ai, 1
  %i.an = add i32 %i.am, 2
  %i.ao = or disjoint i32 %i.an, %i.al
  %i.ap = icmp sgt i32 %i.ao, 2097151
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = add nuw nsw i32 %i.ai, 1                ; 2 uses
  %i.ar = and i32 %i.aq, 1048575
  %i.as = trunc nuw nsw i64 %indvars.iv839 to i32
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.as, i32 noundef %i.aq, i32 noundef %i.ar) ; 0 uses
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !40
  %.val360.pre = load i16, ptr %i.ae, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.val360 = phi i16 [ %.val360.pre, %bb.e ], [ %.val3.i, %bb.d ] ; 10 uses
  %i.au = phi i32 [ %.pre, %bb.e ], [ %.val2.i, %bb.d ] ; 5 uses
  %.not349 = icmp eq i32 %i.au, 0                 ; 2 uses
  %i.av = icmp ne ptr %.0332823, null
  %i.aw = select i1 %.not349, i1 true, i1 %i.av
  %.2334 = select i1 %i.aw, ptr %.0332823, ptr %i.ae ; 4 uses
  %not..not349 = xor i1 %.not349, true
  %i.ax = zext i1 %not..not349 to i32
  %.1331 = add nuw nsw i32 %.0330824, %i.ax       ; 3 uses
  %i.ay = and i16 %.val360, 61
  %narrow.i.not = icmp eq i16 %i.ay, 1
  br i1 %narrow.i.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = and i16 %.val360, 63                    ; 7 uses
  switch i16 %i.az, label %bb.j [
    i16 6, label %bb.h
    i16 23, label %bb.h
    i16 7, label %bb.i
    i16 22, label %bb.i
    i16 53, label %bb.i
    i16 24, label %bb.i
    i16 25, label %bb.i
    i16 15, label %bb.i
    i16 26, label %bb.i
    i16 50, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.f
  %.val.i559 = load i32, ptr %i.af, align 8, !tbaa !39
  %i.ba = sub nsw i32 %.val.i559, %i.au
  %i.bb = tail call i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.bc = lshr i16 %.val360, 6
  %i.bd = and i16 %i.bc, 1
  %i.be = zext nneg i16 %i.bd to i32
  %i.bf = shl nuw i32 %i.bb, 1
  %i.bg = add i32 %i.bf, 2
  %i.bh = or disjoint i32 %i.bg, %i.be
  %i.bi = sext i32 %i.bh to i64
  br label %bb.v

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %.val.i562 = load i32, ptr %i.af, align 8, !tbaa !39
  %i.bj = sub nsw i32 %.val.i562, %i.au
  %i.bk = tail call i32 @llvm.abs.i32(i32 %i.bj, i1 true)
  %i.bl = lshr i16 %.val360, 6
  %i.bm = and i16 %i.bl, 1
  %i.bn = zext nneg i16 %i.bm to i32
  %i.bo = shl nuw i32 %i.bk, 1
  %i.bp = add i32 %i.bo, 2
  %i.bq = or disjoint i32 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !41
  %i.bt = icmp ugt i32 %i.bs, 2
  %cond = icmp eq i16 %i.az, 22
  %or.cond814 = or i1 %cond, %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %or.cond814, label %Wlc_ObjHasArray.exit.thread.i.i.i, label %Wlc_ObjFanin0.exit

Wlc_ObjHasArray.exit.thread.i.i.i:                ; preds = %bb.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit

Wlc_ObjFanin0.exit:                               ; preds = %bb.i, %Wlc_ObjHasArray.exit.thread.i.i.i
  %i.bw = phi ptr [ %i.bv, %Wlc_ObjHasArray.exit.thread.i.i.i ], [ %i.bu, %bb.i ]
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18
  %.val.i565 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [24 x i8], ptr %.val.i565, i64 %i.by ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %.val.i566 = load i32, ptr %i.ca, align 8, !tbaa !39
  %i.cb = getelementptr i8, ptr %i.bz, i64 12
  %.val2.i567 = load i32, ptr %i.cb, align 4, !tbaa !40
  %i.cc = sub nsw i32 %.val.i566, %.val2.i567
  %i.cd = tail call i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %.val3.i568 = load i16, ptr %i.bz, align 8
  %i.ce = lshr i16 %.val3.i568, 6
  %i.cf = and i16 %i.ce, 1
  %i.cg = zext nneg i16 %i.cf to i32
  %i.ch = shl nuw i32 %i.cd, 1
  %i.ci = add i32 %i.ch, 2
  %i.cj = or disjoint i32 %i.ci, %i.cg
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 21
  %i.cm = sext i32 %i.bq to i64
  %i.cn = or i64 %i.cl, %i.cm
  br label %bb.v

bb.j:                                             ; preds = %bb.g
  %i.co = getelementptr i8, ptr %i.ae, i64 4
  %.val365 = load i32, ptr %i.co, align 4, !tbaa !41 ; 2 uses
  switch i32 %.val365, label %bb.p [
    i32 0, label %bb.k
    i32 1, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %.val.i569 = load i32, ptr %i.t, align 4, !tbaa !35
  %i.cp = icmp slt i32 %.val.i569, 1
  br i1 %i.cp, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val9.i = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val9.i, i64 %indvars.iv839
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !18 ; 2 uses
  %.not7.i = icmp eq i32 %i.cr, 0
  br i1 %.not7.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.ct = tail call ptr @Abc_NamStr(ptr noundef %i.cs, i32 noundef %i.cr) #27
  %.pre887 = trunc nuw nsw i64 %indvars.iv839 to i32
  br label %Wlc_ObjName.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.cu = trunc nuw nsw i64 %indvars.iv839 to i32 ; 2 uses
  %i.cv = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Wlc_ObjName.Buffer, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cu) #27 ; 0 uses
  br label %Wlc_ObjName.exit

Wlc_ObjName.exit:                                 ; preds = %bb.m, %bb.n
  %.pre-phi = phi i32 [ %.pre887, %bb.m ], [ %i.cu, %bb.n ]
  %.0.i = phi ptr [ %i.ct, %bb.m ], [ @Wlc_ObjName.Buffer, %bb.n ]
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.pre-phi, ptr noundef %.0.i) ; 0 uses
  %.pre853 = load i16, ptr %i.ae, align 8
  br label %bb.v

bb.o:                                             ; preds = %bb.j
  %.val.i570 = load i32, ptr %i.af, align 8, !tbaa !39
  %i.cx = sub nsw i32 %.val.i570, %i.au
  %i.cy = tail call i32 @llvm.abs.i32(i32 %i.cx, i1 true)
  %i.cz = lshr i16 %.val360, 6
  %i.da = and i16 %i.cz, 1
  %i.db = zext nneg i16 %i.da to i32
  %i.dc = shl nuw i32 %i.cy, 1
  %i.dd = add i32 %i.dc, 2
  %i.de = or disjoint i32 %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  switch i16 %i.az, label %Wlc_ObjFanin0.exit575 [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i573
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i573
  ]

Wlc_ObjHasArray.exit.thread.i.i.i573:             ; preds = %bb.o, %bb.o
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit575

Wlc_ObjFanin0.exit575:                            ; preds = %bb.o, %Wlc_ObjHasArray.exit.thread.i.i.i573
  %i.dh = phi ptr [ %i.dg, %Wlc_ObjHasArray.exit.thread.i.i.i573 ], [ %i.df, %bb.o ]
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !18
  %.val.i574 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [24 x i8], ptr %.val.i574, i64 %i.dj ; 3 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %.val.i576 = load i32, ptr %i.dl, align 8, !tbaa !39
  %i.dm = getelementptr i8, ptr %i.dk, i64 12
  %.val2.i577 = load i32, ptr %i.dm, align 4, !tbaa !40
  %i.dn = sub nsw i32 %.val.i576, %.val2.i577
  %i.do = tail call i32 @llvm.abs.i32(i32 %i.dn, i1 true)
  %.val3.i578 = load i16, ptr %i.dk, align 8
  %i.dp = lshr i16 %.val3.i578, 6
  %i.dq = and i16 %i.dp, 1
  %i.dr = zext nneg i16 %i.dq to i32
  %i.ds = shl nuw i32 %i.do, 1
  %i.dt = add i32 %i.ds, 2
  %i.du = or disjoint i32 %i.dt, %i.dr
  %i.dv = sext i32 %i.du to i64
  %i.dw = shl nsw i64 %i.dv, 21
  %i.dx = sext i32 %i.de to i64
end_hunk_0
begin_hunk_1_@Wlc_NtkPrintDistrib:Vec_IntStart.exit
  %i.hk = icmp eq i32 %.val16.i, %i.hj
  br i1 %i.hk, label %bb.z, label %Vec_WrdPush.exit.i

bb.z:                                             ; preds = %.critedge.i
  %i.hl = icmp slt i32 %.val16.i, 16
  br i1 %i.hl, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !49 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not9.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ho = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.hn, i64 noundef 128) #29
  br label %Vec_WrdGrow.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.hp = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  br label %Vec_WrdGrow.exit.i.i

Vec_WrdGrow.exit.i.i:                             ; preds = %bb.ac, %bb.ab
  %i.hq = phi ptr [ %i.ho, %bb.ab ], [ %i.hp, %bb.ac ]
  store ptr %i.hq, ptr %i.hm, align 8, !tbaa !49
  br label %Vec_WrdGrow.exit11.sink.split.i.i

bb.ad:                                            ; preds = %bb.z
  %i.hr = icmp samesign ult i32 %.val16.i, 1073741823
  %i.hs = shl nuw nsw i32 %.val16.i, 1
  %spec.select.i.i = select i1 %i.hr, i32 %i.hs, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %.val16.i, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.ae, label %Vec_WrdPush.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !49 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.hu, null
  %i.hv = zext nneg i32 %spec.select.i.i to i64
  %i.hw = shl nuw nsw i64 %i.hv, 3                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = tail call ptr @realloc(ptr noundef nonnull %i.hu, i64 noundef %i.hw) #29
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hy = tail call noalias ptr @malloc(i64 noundef %i.hw) #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hz = phi ptr [ %i.hx, %bb.af ], [ %i.hy, %bb.ag ]
  store ptr %i.hz, ptr %i.ht, align 8, !tbaa !49
  br label %Vec_WrdGrow.exit11.sink.split.i.i

Vec_WrdGrow.exit11.sink.split.i.i:                ; preds = %bb.ah, %Vec_WrdGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.ah ], [ 16, %Vec_WrdGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.gw, align 8, !tbaa !121
  %.pre.i = load i32, ptr %i.gz, align 4, !tbaa !62
  br label %Vec_WrdPush.exit.i

Vec_WrdPush.exit.i:                               ; preds = %Vec_WrdGrow.exit11.sink.split.i.i, %bb.ad, %.critedge.i
  %i.ia = phi i32 [ %.val16.i, %.critedge.i ], [ %.val16.i, %bb.ad ], [ %.pre.i, %Vec_WrdGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !49
  %i.id = add nsw i32 %i.ia, 1
  store i32 %i.id, ptr %i.gz, align 4, !tbaa !62
  %i.ie = sext i32 %i.ia to i64
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.ie
  store i64 %.1329, ptr %i.if, align 8, !tbaa !64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 3 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !62 ; 7 uses
  %i.ii = load i32, ptr %i.gy, align 8, !tbaa !121
  %i.ij = icmp eq i32 %i.ih, %i.ii
  br i1 %i.ij, label %bb.ai, label %Vec_WrdPush.exit26.i

bb.ai:                                            ; preds = %Vec_WrdPush.exit.i
  %i.ik = icmp slt i32 %i.ih, 16
  br i1 %i.ik, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.il = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !49 ; 2 uses
  %.not9.i.i24.i = icmp eq ptr %i.im, null
  br i1 %.not9.i.i24.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.in = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.im, i64 noundef 128) #29
  br label %Vec_WrdGrow.exit.i25.i

bb.al:                                            ; preds = %bb.aj
  %i.io = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  br label %Vec_WrdGrow.exit.i25.i

Vec_WrdGrow.exit.i25.i:                           ; preds = %bb.al, %bb.ak
  %i.ip = phi ptr [ %i.in, %bb.ak ], [ %i.io, %bb.al ]
  store ptr %i.ip, ptr %i.il, align 8, !tbaa !49
  br label %Vec_WrdGrow.exit11.sink.split.i22.i

bb.am:                                            ; preds = %bb.ai
  %i.iq = icmp samesign ult i32 %i.ih, 1073741823
  %i.ir = shl nuw nsw i32 %i.ih, 1
  %spec.select.i19.i = select i1 %i.iq, i32 %i.ir, i32 2147483647 ; 3 uses
  %.not.i9.i20.i = icmp samesign ult i32 %i.ih, %spec.select.i19.i
  br i1 %.not.i9.i20.i, label %bb.an, label %Vec_WrdPush.exit26.i

bb.an:                                            ; preds = %bb.am
  %i.is = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !49 ; 2 uses
  %.not9.i10.i21.i = icmp eq ptr %i.it, null
  %i.iu = zext nneg i32 %spec.select.i19.i to i64
  %i.iv = shl nuw nsw i64 %i.iu, 3                ; 2 uses
  br i1 %.not9.i10.i21.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iw = tail call ptr @realloc(ptr noundef nonnull %i.it, i64 noundef %i.iv) #29
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ix = tail call noalias ptr @malloc(i64 noundef %i.iv) #28
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.iy = phi ptr [ %i.iw, %bb.ao ], [ %i.ix, %bb.ap ]
  store ptr %i.iy, ptr %i.is, align 8, !tbaa !49
  br label %Vec_WrdGrow.exit11.sink.split.i22.i

Vec_WrdGrow.exit11.sink.split.i22.i:              ; preds = %bb.aq, %Vec_WrdGrow.exit.i25.i
  %spec.select.sink.i23.i = phi i32 [ %spec.select.i19.i, %bb.aq ], [ 16, %Vec_WrdGrow.exit.i25.i ]
  store i32 %spec.select.sink.i23.i, ptr %i.gy, align 8, !tbaa !121
  %.pre9.i = load i32, ptr %i.ig, align 4, !tbaa !62
  br label %Vec_WrdPush.exit26.i

Vec_WrdPush.exit26.i:                             ; preds = %Vec_WrdGrow.exit11.sink.split.i22.i, %bb.am, %Vec_WrdPush.exit.i
  %i.iz = phi i32 [ %i.ih, %Vec_WrdPush.exit.i ], [ %i.ih, %bb.am ], [ %.pre9.i, %Vec_WrdGrow.exit11.sink.split.i22.i ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !49
  %i.jc = add nsw i32 %i.iz, 1
  store i32 %i.jc, ptr %i.ig, align 4, !tbaa !62
  %i.jd = sext i32 %i.iz to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jd
  store i64 1, ptr %i.je, align 8, !tbaa !64
  br label %Wlc_NtkPrintDistribAddOne.exit

Wlc_NtkPrintDistribAddOne.exit:                   ; preds = %bb.y, %Vec_WrdPush.exit26.i
  %i.jf = load i16, ptr %i.ae, align 8
  %i.jg = and i16 %i.jf, 63
  switch i16 %i.jg, label %bb.cf [
    i16 8, label %bb.ar
    i16 9, label %bb.as
    i16 10, label %bb.at
    i16 11, label %bb.au
    i16 12, label %bb.av
    i16 13, label %bb.aw
    i16 14, label %bb.ax
    i16 52, label %bb.ce
    i16 16, label %bb.ay
    i16 17, label %bb.az
    i16 18, label %bb.ba
    i16 19, label %bb.bb
    i16 20, label %bb.bc
    i16 21, label %bb.bd
    i16 51, label %bb.cd
    i16 50, label %bb.cc
    i16 49, label %bb.cb
    i16 48, label %bb.ca
    i16 26, label %bb.be
    i16 27, label %bb.bf
    i16 28, label %bb.bg
    i16 29, label %bb.bh
    i16 30, label %bb.bi
    i16 31, label %bb.bj
    i16 32, label %bb.bk
    i16 33, label %bb.bl
    i16 34, label %bb.bm
    i16 35, label %bb.bn
    i16 36, label %bb.bo
    i16 37, label %bb.bp
    i16 38, label %bb.bq
    i16 39, label %bb.br
    i16 40, label %bb.bs
    i16 41, label %bb.bt
    i16 42, label %bb.bu
    i16 43, label %bb.bv
    i16 44, label %bb.bw
    i16 45, label %bb.bx
    i16 46, label %bb.by
    i16 47, label %bb.bz
  ]

bb.ar:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %.val548 = load i32, ptr %i.af, align 8, !tbaa !39
  %.val549 = load i32, ptr %i.ag, align 4, !tbaa !40
  %i.jh = sub nsw i32 %.val548, %.val549
  %i.ji = tail call i32 @llvm.abs.i32(i32 %i.jh, i1 true)
  %i.jj = mul i32 %i.ji, 3
  %i.jk = add i32 %i.jj, 3
  %i.jl = getelementptr i8, ptr %i.ae, i64 4
  %.val363 = load i32, ptr %i.jl, align 4, !tbaa !41
  %i.jm = add nsw i32 %.val363, -2
  %i.jn = mul nsw i32 %i.jk, %i.jm
  %.val410 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.jo = getelementptr inbounds nuw i8, ptr %.val410, i64 32 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !18
  %i.jq = add nsw i32 %i.jn, %i.jp
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !18
  br label %bb.cf

bb.as:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !41
  %i.jt = icmp ugt i32 %i.js, 2
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.jt, label %Wlc_ObjHasArray.exit.thread.i.i.i595, label %Wlc_ObjFanin0.exit597

Wlc_ObjHasArray.exit.thread.i.i.i595:             ; preds = %bb.as
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit597

Wlc_ObjFanin0.exit597:                            ; preds = %bb.as, %Wlc_ObjHasArray.exit.thread.i.i.i595
  %i.jw = phi ptr [ %i.jv, %Wlc_ObjHasArray.exit.thread.i.i.i595 ], [ %i.ju, %bb.as ]
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !18
  %.val.i596 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [24 x i8], ptr %.val.i596, i64 %i.jy ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 8
  %.val546 = load i32, ptr %i.ka, align 8, !tbaa !39
  %i.kb = getelementptr i8, ptr %i.jz, i64 12
  %.val547 = load i32, ptr %i.kb, align 4, !tbaa !40
  %i.kc = sub nsw i32 %.val546, %.val547
  %i.kd = tail call i32 @llvm.abs.i32(i32 %i.kc, i1 true)
  %i.ke = add nuw nsw i32 %i.kd, 1
  %.val544 = load i32, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %.val545 = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.kf = sub nsw i32 %.val544, %.val545
  %i.kg = tail call i32 @llvm.abs.i32(i32 %i.kf, i1 true)
  %i.kh = icmp eq i32 %.val544, %.val545
  %i.ki = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kg, i1 true)
  %i.kj = sub nuw nsw i32 32, %i.ki
  %i.kk = tail call i32 @llvm.umin.i32(i32 %i.ke, i32 %i.kj)
  %i.kl = mul nuw nsw i32 %i.kk, 3
  %i.km = select i1 %i.kh, i32 3, i32 %i.kl
  %.val409 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.kn = getelementptr inbounds nuw i8, ptr %.val409, i64 36 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !18
  %i.kp = add nsw i32 %i.km, %i.ko
  store i32 %i.kp, ptr %i.kn, align 4, !tbaa !18
  br label %bb.cf

bb.at:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %.val542 = load i32, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %.val543 = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.kq = sub nsw i32 %.val542, %.val543
  %i.kr = tail call i32 @llvm.abs.i32(i32 %i.kq, i1 true) ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !41
  %i.ku = icmp ugt i32 %i.kt, 2
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.ku, label %Wlc_ObjHasArray.exit.thread.i.i.i598, label %Wlc_ObjFanin0.exit600

Wlc_ObjHasArray.exit.thread.i.i.i598:             ; preds = %bb.at
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit600

Wlc_ObjFanin0.exit600:                            ; preds = %bb.at, %Wlc_ObjHasArray.exit.thread.i.i.i598
  %i.kx = phi ptr [ %i.kw, %Wlc_ObjHasArray.exit.thread.i.i.i598 ], [ %i.kv, %bb.at ]
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !18
  %.val.i599 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [24 x i8], ptr %.val.i599, i64 %i.kz ; 2 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 8
  %.val540 = load i32, ptr %i.lb, align 8, !tbaa !39
  %i.lc = getelementptr i8, ptr %i.la, i64 12
  %.val541 = load i32, ptr %i.lc, align 4, !tbaa !40
  %i.ld = sub nsw i32 %.val540, %.val541
  %i.le = tail call i32 @llvm.abs.i32(i32 %i.ld, i1 true)
  %i.lf = add nuw nsw i32 %i.le, 1
  %i.lg = icmp eq i32 %.val542, %.val543
  %i.lh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kr, i1 true)
  %i.li = sub nuw nsw i32 32, %i.lh
  %i.lj = tail call i32 @llvm.umin.i32(i32 %i.lf, i32 %i.li)
  %i.lk = select i1 %i.lg, i32 1, i32 %i.lj
  %i.ll = mul nuw i32 %i.kr, 3
  %i.lm = add nuw i32 %i.ll, 3
  %i.ln = mul nuw nsw i32 %i.lm, %i.lk
  %.val408 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.lo = getelementptr inbounds nuw i8, ptr %.val408, i64 40 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !18
  %i.lq = add nsw i32 %i.ln, %i.lp
  store i32 %i.lq, ptr %i.lo, align 4, !tbaa !18
  br label %bb.cf

bb.au:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %.val536 = load i32, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %.val537 = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.lr = sub nsw i32 %.val536, %.val537
  %i.ls = tail call i32 @llvm.abs.i32(i32 %i.lr, i1 true) ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !41
  %i.lv = icmp ugt i32 %i.lu, 2
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.lv, label %Wlc_ObjHasArray.exit.thread.i.i.i602, label %Wlc_ObjFanin0.exit604

Wlc_ObjHasArray.exit.thread.i.i.i602:             ; preds = %bb.au
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit604

Wlc_ObjFanin0.exit604:                            ; preds = %bb.au, %Wlc_ObjHasArray.exit.thread.i.i.i602
  %i.ly = phi ptr [ %i.lx, %Wlc_ObjHasArray.exit.thread.i.i.i602 ], [ %i.lw, %bb.au ]
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !18
  %.val.i603 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [24 x i8], ptr %.val.i603, i64 %i.ma ; 2 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 8
  %.val534 = load i32, ptr %i.mc, align 8, !tbaa !39
  %i.md = getelementptr i8, ptr %i.mb, i64 12
  %.val535 = load i32, ptr %i.md, align 4, !tbaa !40
  %i.me = sub nsw i32 %.val534, %.val535
  %i.mf = tail call i32 @llvm.abs.i32(i32 %i.me, i1 true)
  %i.mg = add nuw nsw i32 %i.mf, 1
  %i.mh = icmp eq i32 %.val536, %.val537
  %i.mi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ls, i1 true)
  %i.mj = sub nuw nsw i32 32, %i.mi
  %i.mk = tail call i32 @llvm.umin.i32(i32 %i.mg, i32 %i.mj)
  %i.ml = select i1 %i.mh, i32 1, i32 %i.mk
  %i.mm = mul nuw i32 %i.ls, 3
  %i.mn = add nuw i32 %i.mm, 3
  %i.mo = mul nuw nsw i32 %i.mn, %i.ml
  %.val407 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.mp = getelementptr inbounds nuw i8, ptr %.val407, i64 44 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !18
  %i.mr = add nsw i32 %i.mo, %i.mq
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !18
  br label %bb.cf

bb.av:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %.val530 = load i32, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %.val531 = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.ms = sub nsw i32 %.val530, %.val531
  %i.mt = tail call i32 @llvm.abs.i32(i32 %i.ms, i1 true) ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !41
  %i.mw = icmp ugt i32 %i.mv, 2
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.mw, label %Wlc_ObjHasArray.exit.thread.i.i.i606, label %Wlc_ObjFanin0.exit608

Wlc_ObjHasArray.exit.thread.i.i.i606:             ; preds = %bb.av
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit608

Wlc_ObjFanin0.exit608:                            ; preds = %bb.av, %Wlc_ObjHasArray.exit.thread.i.i.i606
  %i.mz = phi ptr [ %i.my, %Wlc_ObjHasArray.exit.thread.i.i.i606 ], [ %i.mx, %bb.av ]
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !18
  %.val.i607 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [24 x i8], ptr %.val.i607, i64 %i.nb ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nc, i64 8
  %.val528 = load i32, ptr %i.nd, align 8, !tbaa !39
  %i.ne = getelementptr i8, ptr %i.nc, i64 12
  %.val529 = load i32, ptr %i.ne, align 4, !tbaa !40
  %i.nf = sub nsw i32 %.val528, %.val529
  %i.ng = tail call i32 @llvm.abs.i32(i32 %i.nf, i1 true)
  %i.nh = add nuw nsw i32 %i.ng, 1
  %i.ni = icmp eq i32 %.val530, %.val531
  %i.nj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.mt, i1 true)
  %i.nk = sub nuw nsw i32 32, %i.nj
  %i.nl = tail call i32 @llvm.umin.i32(i32 %i.nh, i32 %i.nk)
  %i.nm = select i1 %i.ni, i32 1, i32 %i.nl
  %i.nn = mul nuw i32 %i.mt, 3
  %i.no = add nuw i32 %i.nn, 3
  %i.np = mul nuw nsw i32 %i.no, %i.nm
  %.val406 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.nq = getelementptr inbounds nuw i8, ptr %.val406, i64 48 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !18
  %i.ns = add nsw i32 %i.np, %i.nr
  store i32 %i.ns, ptr %i.nq, align 4, !tbaa !18
  br label %bb.cf

bb.aw:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %.val524 = load i32, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %.val525 = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.nt = sub nsw i32 %.val524, %.val525
  %i.nu = tail call i32 @llvm.abs.i32(i32 %i.nt, i1 true) ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !41
  %i.nx = icmp ugt i32 %i.nw, 2
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.nx, label %Wlc_ObjHasArray.exit.thread.i.i.i610, label %Wlc_ObjFanin0.exit612

Wlc_ObjHasArray.exit.thread.i.i.i610:             ; preds = %bb.aw
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit612

Wlc_ObjFanin0.exit612:                            ; preds = %bb.aw, %Wlc_ObjHasArray.exit.thread.i.i.i610
  %i.oa = phi ptr [ %i.nz, %Wlc_ObjHasArray.exit.thread.i.i.i610 ], [ %i.ny, %bb.aw ]
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !18
  %.val.i611 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [24 x i8], ptr %.val.i611, i64 %i.oc ; 2 uses
  %i.oe = getelementptr i8, ptr %i.od, i64 8
  %.val522 = load i32, ptr %i.oe, align 8, !tbaa !39
  %i.of = getelementptr i8, ptr %i.od, i64 12
  %.val523 = load i32, ptr %i.of, align 4, !tbaa !40
  %i.og = sub nsw i32 %.val522, %.val523
  %i.oh = tail call i32 @llvm.abs.i32(i32 %i.og, i1 true)
  %i.oi = add nuw nsw i32 %i.oh, 1
  %i.oj = icmp eq i32 %.val524, %.val525
  %i.ok = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.nu, i1 true)
  %i.ol = sub nuw nsw i32 32, %i.ok
  %i.om = tail call i32 @llvm.umin.i32(i32 %i.oi, i32 %i.ol)
  %i.on = select i1 %i.oj, i32 1, i32 %i.om
  %i.oo = mul nuw i32 %i.nu, 3
  %i.op = add nuw i32 %i.oo, 3
  %i.oq = mul nuw nsw i32 %i.op, %i.on
  %.val405 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.or = getelementptr inbounds nuw i8, ptr %.val405, i64 52 ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !18
  %i.ot = add nsw i32 %i.oq, %i.os
  store i32 %i.ot, ptr %i.or, align 4, !tbaa !18
  br label %bb.cf

bb.ax:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %.val518 = load i32, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %.val519 = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.ou = sub nsw i32 %.val518, %.val519
  %i.ov = tail call i32 @llvm.abs.i32(i32 %i.ou, i1 true) ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !41
  %i.oy = icmp ugt i32 %i.ox, 2
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.oy, label %Wlc_ObjHasArray.exit.thread.i.i.i614, label %Wlc_ObjFanin0.exit616

Wlc_ObjHasArray.exit.thread.i.i.i614:             ; preds = %bb.ax
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit616

Wlc_ObjFanin0.exit616:                            ; preds = %bb.ax, %Wlc_ObjHasArray.exit.thread.i.i.i614
  %i.pb = phi ptr [ %i.pa, %Wlc_ObjHasArray.exit.thread.i.i.i614 ], [ %i.oz, %bb.ax ]
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !18
  %.val.i615 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [24 x i8], ptr %.val.i615, i64 %i.pd ; 2 uses
  %i.pf = getelementptr i8, ptr %i.pe, i64 8
  %.val516 = load i32, ptr %i.pf, align 8, !tbaa !39
  %i.pg = getelementptr i8, ptr %i.pe, i64 12
  %.val517 = load i32, ptr %i.pg, align 4, !tbaa !40
  %i.ph = sub nsw i32 %.val516, %.val517
  %i.pi = tail call i32 @llvm.abs.i32(i32 %i.ph, i1 true)
  %i.pj = add nuw nsw i32 %i.pi, 1
  %i.pk = icmp eq i32 %.val518, %.val519
  %i.pl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ov, i1 true)
  %i.pm = sub nuw nsw i32 32, %i.pl
  %i.pn = tail call i32 @llvm.umin.i32(i32 %i.pj, i32 %i.pm)
  %i.po = select i1 %i.pk, i32 1, i32 %i.pn
  %i.pp = mul nuw i32 %i.ov, 3
  %i.pq = add nuw i32 %i.pp, 3
  %i.pr = mul nuw nsw i32 %i.pq, %i.po
  %.val404 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.ps = getelementptr inbounds nuw i8, ptr %.val404, i64 56 ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !18
  %i.pu = add nsw i32 %i.pr, %i.pt
  store i32 %i.pu, ptr %i.ps, align 4, !tbaa !18
  br label %bb.cf

bb.ay:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !41
  %i.px = icmp ugt i32 %i.pw, 2
  %i.py = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.px, label %Wlc_ObjHasArray.exit.thread.i.i.i618, label %Wlc_ObjFanin0.exit620

Wlc_ObjHasArray.exit.thread.i.i.i618:             ; preds = %bb.ay
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit620

Wlc_ObjFanin0.exit620:                            ; preds = %bb.ay, %Wlc_ObjHasArray.exit.thread.i.i.i618
  %i.qa = phi ptr [ %i.pz, %Wlc_ObjHasArray.exit.thread.i.i.i618 ], [ %i.py, %bb.ay ]
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !18
  %.val.i619 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [24 x i8], ptr %.val.i619, i64 %i.qc ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 8
  %.val512 = load i32, ptr %i.qe, align 8, !tbaa !39
  %i.qf = getelementptr i8, ptr %i.qd, i64 12
  %.val513 = load i32, ptr %i.qf, align 4, !tbaa !40
  %i.qg = sub nsw i32 %.val512, %.val513
  %i.qh = tail call i32 @llvm.abs.i32(i32 %i.qg, i1 true)
  %i.qi = add nuw nsw i32 %i.qh, 1
  %.val402 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.qj = getelementptr inbounds nuw i8, ptr %.val402, i64 64 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !18
  %i.ql = add nsw i32 %i.qi, %i.qk
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !18
  br label %bb.cf

bb.az:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !41
  %i.qo = icmp ugt i32 %i.qn, 2
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.qo, label %Wlc_ObjHasArray.exit.thread.i.i.i621, label %Wlc_ObjFanin0.exit623

Wlc_ObjHasArray.exit.thread.i.i.i621:             ; preds = %bb.az
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit623

Wlc_ObjFanin0.exit623:                            ; preds = %bb.az, %Wlc_ObjHasArray.exit.thread.i.i.i621
  %i.qr = phi ptr [ %i.qq, %Wlc_ObjHasArray.exit.thread.i.i.i621 ], [ %i.qp, %bb.az ]
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !18
  %.val.i622 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [24 x i8], ptr %.val.i622, i64 %i.qt ; 2 uses
  %i.qv = getelementptr i8, ptr %i.qu, i64 8
  %.val510 = load i32, ptr %i.qv, align 8, !tbaa !39
  %i.qw = getelementptr i8, ptr %i.qu, i64 12
  %.val511 = load i32, ptr %i.qw, align 4, !tbaa !40
  %i.qx = sub nsw i32 %.val510, %.val511
  %i.qy = tail call i32 @llvm.abs.i32(i32 %i.qx, i1 true)
  %i.qz = add nuw nsw i32 %i.qy, 1
  %.val401 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.ra = getelementptr inbounds nuw i8, ptr %.val401, i64 68 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !18
  %i.rc = add nsw i32 %i.qz, %i.rb
  store i32 %i.rc, ptr %i.ra, align 4, !tbaa !18
  br label %bb.cf

bb.ba:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !41
  %i.rf = icmp ugt i32 %i.re, 2
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.rf, label %Wlc_ObjHasArray.exit.thread.i.i.i624, label %Wlc_ObjFanin0.exit626

Wlc_ObjHasArray.exit.thread.i.i.i624:             ; preds = %bb.ba
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit626

Wlc_ObjFanin0.exit626:                            ; preds = %bb.ba, %Wlc_ObjHasArray.exit.thread.i.i.i624
  %i.ri = phi ptr [ %i.rh, %Wlc_ObjHasArray.exit.thread.i.i.i624 ], [ %i.rg, %bb.ba ]
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !18
  %.val.i625 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [24 x i8], ptr %.val.i625, i64 %i.rk ; 2 uses
  %i.rm = getelementptr i8, ptr %i.rl, i64 8
  %.val508 = load i32, ptr %i.rm, align 8, !tbaa !39
  %i.rn = getelementptr i8, ptr %i.rl, i64 12
  %.val509 = load i32, ptr %i.rn, align 4, !tbaa !40
  %i.ro = sub nsw i32 %.val508, %.val509
  %i.rp = tail call i32 @llvm.abs.i32(i32 %i.ro, i1 true)
  %i.rq = mul i32 %i.rp, 3
  %.val400 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.rr = getelementptr inbounds nuw i8, ptr %.val400, i64 72 ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !18
  %i.rt = add i32 %i.rs, 3
  %i.ru = add i32 %i.rt, %i.rq
  store i32 %i.ru, ptr %i.rr, align 4, !tbaa !18
  br label %bb.cf

bb.bb:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !41
  %i.rx = icmp ugt i32 %i.rw, 2
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.rx, label %Wlc_ObjHasArray.exit.thread.i.i.i627, label %Wlc_ObjFanin0.exit629

Wlc_ObjHasArray.exit.thread.i.i.i627:             ; preds = %bb.bb
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit629

Wlc_ObjFanin0.exit629:                            ; preds = %bb.bb, %Wlc_ObjHasArray.exit.thread.i.i.i627
  %i.sa = phi ptr [ %i.rz, %Wlc_ObjHasArray.exit.thread.i.i.i627 ], [ %i.ry, %bb.bb ]
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !18
  %.val.i628 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds [24 x i8], ptr %.val.i628, i64 %i.sc ; 2 uses
  %i.se = getelementptr i8, ptr %i.sd, i64 8
  %.val506 = load i32, ptr %i.se, align 8, !tbaa !39
  %i.sf = getelementptr i8, ptr %i.sd, i64 12
  %.val507 = load i32, ptr %i.sf, align 4, !tbaa !40
  %i.sg = sub nsw i32 %.val506, %.val507
  %i.sh = tail call i32 @llvm.abs.i32(i32 %i.sg, i1 true)
  %i.si = add nuw nsw i32 %i.sh, 1
  %.val399 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.sj = getelementptr inbounds nuw i8, ptr %.val399, i64 76 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !18
  %i.sl = add nsw i32 %i.si, %i.sk
  store i32 %i.sl, ptr %i.sj, align 4, !tbaa !18
  br label %bb.cf

bb.bc:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !41
  %i.so = icmp ugt i32 %i.sn, 2
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.so, label %Wlc_ObjHasArray.exit.thread.i.i.i630, label %Wlc_ObjFanin0.exit632

Wlc_ObjHasArray.exit.thread.i.i.i630:             ; preds = %bb.bc
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit632

Wlc_ObjFanin0.exit632:                            ; preds = %bb.bc, %Wlc_ObjHasArray.exit.thread.i.i.i630
  %i.sr = phi ptr [ %i.sq, %Wlc_ObjHasArray.exit.thread.i.i.i630 ], [ %i.sp, %bb.bc ]
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !18
  %.val.i631 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [24 x i8], ptr %.val.i631, i64 %i.st ; 2 uses
  %i.sv = getelementptr i8, ptr %i.su, i64 8
  %.val504 = load i32, ptr %i.sv, align 8, !tbaa !39
  %i.sw = getelementptr i8, ptr %i.su, i64 12
  %.val505 = load i32, ptr %i.sw, align 4, !tbaa !40
  %i.sx = sub nsw i32 %.val504, %.val505
  %i.sy = tail call i32 @llvm.abs.i32(i32 %i.sx, i1 true)
  %i.sz = add nuw nsw i32 %i.sy, 1
  %.val398 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.ta = getelementptr inbounds nuw i8, ptr %.val398, i64 80 ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !18
  %i.tc = add nsw i32 %i.sz, %i.tb
  store i32 %i.tc, ptr %i.ta, align 4, !tbaa !18
  br label %bb.cf

bb.bd:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.td = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.te = load i32, ptr %i.td, align 4, !tbaa !41
  %i.tf = icmp ugt i32 %i.te, 2
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.tf, label %Wlc_ObjHasArray.exit.thread.i.i.i633, label %Wlc_ObjFanin0.exit635

Wlc_ObjHasArray.exit.thread.i.i.i633:             ; preds = %bb.bd
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit635

Wlc_ObjFanin0.exit635:                            ; preds = %bb.bd, %Wlc_ObjHasArray.exit.thread.i.i.i633
  %i.ti = phi ptr [ %i.th, %Wlc_ObjHasArray.exit.thread.i.i.i633 ], [ %i.tg, %bb.bd ]
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !18
  %.val.i634 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds [24 x i8], ptr %.val.i634, i64 %i.tk ; 2 uses
  %i.tm = getelementptr i8, ptr %i.tl, i64 8
  %.val502 = load i32, ptr %i.tm, align 8, !tbaa !39
  %i.tn = getelementptr i8, ptr %i.tl, i64 12
  %.val503 = load i32, ptr %i.tn, align 4, !tbaa !40
  %i.to = sub nsw i32 %.val502, %.val503
  %i.tp = tail call i32 @llvm.abs.i32(i32 %i.to, i1 true)
  %i.tq = mul i32 %i.tp, 3
  %.val397 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.tr = getelementptr inbounds nuw i8, ptr %.val397, i64 84 ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !18
  %i.tt = add i32 %i.ts, 3
  %i.tu = add i32 %i.tt, %i.tq
  store i32 %i.tu, ptr %i.tr, align 4, !tbaa !18
  br label %bb.cf

bb.be:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !41
  %i.tx = icmp ugt i32 %i.tw, 2
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.tx, label %Wlc_ObjHasArray.exit.thread.i.i.i636, label %Wlc_ObjFanin0.exit638

Wlc_ObjHasArray.exit.thread.i.i.i636:             ; preds = %bb.be
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit638

Wlc_ObjFanin0.exit638:                            ; preds = %bb.be, %Wlc_ObjHasArray.exit.thread.i.i.i636
  %i.ua = phi ptr [ %i.tz, %Wlc_ObjHasArray.exit.thread.i.i.i636 ], [ %i.ty, %bb.be ]
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !18
  %.val.i637 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds [24 x i8], ptr %.val.i637, i64 %i.uc ; 2 uses
  %i.ue = getelementptr i8, ptr %i.ud, i64 8
  %.val500 = load i32, ptr %i.ue, align 8, !tbaa !39
  %i.uf = getelementptr i8, ptr %i.ud, i64 12
  %.val501 = load i32, ptr %i.uf, align 4, !tbaa !40
  %i.ug = sub nsw i32 %.val500, %.val501
  %i.uh = tail call i32 @llvm.abs.i32(i32 %i.ug, i1 true)
  %i.ui = load i32, ptr %i.y, align 4, !tbaa !18
  %i.uj = add nsw i32 %i.uh, %i.ui
  store i32 %i.uj, ptr %i.y, align 4, !tbaa !18
  br label %bb.cf

bb.bf:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !41
  %i.um = icmp ugt i32 %i.ul, 2                   ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.um, label %Wlc_ObjHasArray.exit.thread.i.i.i639, label %Wlc_ObjFanin0.exit641

Wlc_ObjHasArray.exit.thread.i.i.i639:             ; preds = %bb.bf
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit641

Wlc_ObjFanin0.exit641:                            ; preds = %bb.bf, %Wlc_ObjHasArray.exit.thread.i.i.i639
  %i.up = phi ptr [ %i.uo, %Wlc_ObjHasArray.exit.thread.i.i.i639 ], [ %i.un, %bb.bf ]
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !18
  %.val.i640 = load ptr, ptr %i.s, align 8, !tbaa !33 ; 2 uses
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [24 x i8], ptr %.val.i640, i64 %i.ur ; 2 uses
  %i.ut = getelementptr i8, ptr %i.us, i64 8
  %.val498 = load i32, ptr %i.ut, align 8, !tbaa !39
  %i.uu = getelementptr i8, ptr %i.us, i64 12
  %.val499 = load i32, ptr %i.uu, align 4, !tbaa !40
  %i.uv = sub nsw i32 %.val498, %.val499
  %i.uw = tail call i32 @llvm.abs.i32(i32 %i.uv, i1 true)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.um, label %Wlc_ObjHasArray.exit.thread.i.i.i642, label %Wlc_ObjFanin1.exit644

Wlc_ObjHasArray.exit.thread.i.i.i642:             ; preds = %Wlc_ObjFanin0.exit641
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !36
  br label %Wlc_ObjFanin1.exit644

Wlc_ObjFanin1.exit644:                            ; preds = %Wlc_ObjFanin0.exit641, %Wlc_ObjHasArray.exit.thread.i.i.i642
  %i.uz = phi ptr [ %i.uy, %Wlc_ObjHasArray.exit.thread.i.i.i642 ], [ %i.ux, %Wlc_ObjFanin0.exit641 ]
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !18
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds [24 x i8], ptr %.val.i640, i64 %i.vc ; 2 uses
  %i.ve = getelementptr i8, ptr %i.vd, i64 8
  %.val496 = load i32, ptr %i.ve, align 8, !tbaa !39
  %i.vf = getelementptr i8, ptr %i.vd, i64 12
  %.val497 = load i32, ptr %i.vf, align 4, !tbaa !40
  %i.vg = sub nsw i32 %.val496, %.val497
  %i.vh = tail call i32 @llvm.abs.i32(i32 %i.vg, i1 true)
  %i.vi = load i32, ptr %i.x, align 4, !tbaa !18
  %i.vj = add nuw i32 %i.uw, 1
  %i.vk = add i32 %i.vj, %i.vi
  %i.vl = add i32 %i.vk, %i.vh
  store i32 %i.vl, ptr %i.x, align 4, !tbaa !18
  br label %bb.cf

bb.bg:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !41
  %i.vo = icmp ugt i32 %i.vn, 2                   ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.vo, label %Wlc_ObjHasArray.exit.thread.i.i.i645, label %Wlc_ObjFanin0.exit647

Wlc_ObjHasArray.exit.thread.i.i.i645:             ; preds = %bb.bg
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit647

Wlc_ObjFanin0.exit647:                            ; preds = %bb.bg, %Wlc_ObjHasArray.exit.thread.i.i.i645
  %i.vr = phi ptr [ %i.vq, %Wlc_ObjHasArray.exit.thread.i.i.i645 ], [ %i.vp, %bb.bg ]
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !18
  %.val.i646 = load ptr, ptr %i.s, align 8, !tbaa !33 ; 2 uses
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds [24 x i8], ptr %.val.i646, i64 %i.vt ; 2 uses
  %i.vv = getelementptr i8, ptr %i.vu, i64 8
  %.val494 = load i32, ptr %i.vv, align 8, !tbaa !39
  %i.vw = getelementptr i8, ptr %i.vu, i64 12
  %.val495 = load i32, ptr %i.vw, align 4, !tbaa !40
  %i.vx = sub nsw i32 %.val494, %.val495
  %i.vy = tail call i32 @llvm.abs.i32(i32 %i.vx, i1 true)
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.vo, label %Wlc_ObjHasArray.exit.thread.i.i.i648, label %Wlc_ObjFanin1.exit650

Wlc_ObjHasArray.exit.thread.i.i.i648:             ; preds = %Wlc_ObjFanin0.exit647
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !36
  br label %Wlc_ObjFanin1.exit650

Wlc_ObjFanin1.exit650:                            ; preds = %Wlc_ObjFanin0.exit647, %Wlc_ObjHasArray.exit.thread.i.i.i648
  %i.wb = phi ptr [ %i.wa, %Wlc_ObjHasArray.exit.thread.i.i.i648 ], [ %i.vz, %Wlc_ObjFanin0.exit647 ]
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !18
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds [24 x i8], ptr %.val.i646, i64 %i.we ; 2 uses
  %i.wg = getelementptr i8, ptr %i.wf, i64 8
  %.val492 = load i32, ptr %i.wg, align 8, !tbaa !39
  %i.wh = getelementptr i8, ptr %i.wf, i64 12
  %.val493 = load i32, ptr %i.wh, align 4, !tbaa !40
  %i.wi = sub nsw i32 %.val492, %.val493
  %i.wj = tail call i32 @llvm.abs.i32(i32 %i.wi, i1 true)
  %i.wk = load i32, ptr %i.w, align 4, !tbaa !18
  %i.wl = add nuw i32 %i.vy, 1
  %i.wm = add i32 %i.wl, %i.wk
  %i.wn = add i32 %i.wm, %i.wj
  store i32 %i.wn, ptr %i.w, align 4, !tbaa !18
  br label %bb.cf

bb.bh:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !41
  %i.wq = icmp ugt i32 %i.wp, 2                   ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.wq, label %Wlc_ObjHasArray.exit.thread.i.i.i651, label %Wlc_ObjFanin0.exit653

Wlc_ObjHasArray.exit.thread.i.i.i651:             ; preds = %bb.bh
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit653

Wlc_ObjFanin0.exit653:                            ; preds = %bb.bh, %Wlc_ObjHasArray.exit.thread.i.i.i651
  %i.wt = phi ptr [ %i.ws, %Wlc_ObjHasArray.exit.thread.i.i.i651 ], [ %i.wr, %bb.bh ]
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !18
  %.val.i652 = load ptr, ptr %i.s, align 8, !tbaa !33 ; 2 uses
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds [24 x i8], ptr %.val.i652, i64 %i.wv ; 2 uses
  %i.wx = getelementptr i8, ptr %i.ww, i64 8
  %.val490 = load i32, ptr %i.wx, align 8, !tbaa !39
  %i.wy = getelementptr i8, ptr %i.ww, i64 12
  %.val491 = load i32, ptr %i.wy, align 4, !tbaa !40
  %i.wz = sub nsw i32 %.val490, %.val491
  %i.xa = tail call i32 @llvm.abs.i32(i32 %i.wz, i1 true)
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.wq, label %Wlc_ObjHasArray.exit.thread.i.i.i654, label %Wlc_ObjFanin1.exit656

Wlc_ObjHasArray.exit.thread.i.i.i654:             ; preds = %Wlc_ObjFanin0.exit653
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !36
  br label %Wlc_ObjFanin1.exit656

Wlc_ObjFanin1.exit656:                            ; preds = %Wlc_ObjFanin0.exit653, %Wlc_ObjHasArray.exit.thread.i.i.i654
  %i.xd = phi ptr [ %i.xc, %Wlc_ObjHasArray.exit.thread.i.i.i654 ], [ %i.xb, %Wlc_ObjFanin0.exit653 ]
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !18
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [24 x i8], ptr %.val.i652, i64 %i.xg ; 2 uses
  %i.xi = getelementptr i8, ptr %i.xh, i64 8
  %.val488 = load i32, ptr %i.xi, align 8, !tbaa !39
  %i.xj = getelementptr i8, ptr %i.xh, i64 12
  %.val489 = load i32, ptr %i.xj, align 4, !tbaa !40
  %i.xk = sub nsw i32 %.val488, %.val489
  %i.xl = tail call i32 @llvm.abs.i32(i32 %i.xk, i1 true)
  %i.xm = load i32, ptr %21, align 4, !tbaa !18
  %i.xn = add nuw i32 %i.xa, 1
  %i.xo = add i32 %i.xn, %i.xm
  %i.xp = add i32 %i.xo, %i.xl
  store i32 %i.xp, ptr %21, align 4, !tbaa !18
  br label %bb.cf

bb.bi:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.xq = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !41
  %i.xs = icmp ugt i32 %i.xr, 2                   ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.xs, label %Wlc_ObjHasArray.exit.thread.i.i.i657, label %Wlc_ObjFanin0.exit659

Wlc_ObjHasArray.exit.thread.i.i.i657:             ; preds = %bb.bi
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit659

Wlc_ObjFanin0.exit659:                            ; preds = %bb.bi, %Wlc_ObjHasArray.exit.thread.i.i.i657
  %i.xv = phi ptr [ %i.xu, %Wlc_ObjHasArray.exit.thread.i.i.i657 ], [ %i.xt, %bb.bi ]
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !18
  %.val.i658 = load ptr, ptr %i.s, align 8, !tbaa !33 ; 2 uses
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [24 x i8], ptr %.val.i658, i64 %i.xx ; 2 uses
  %i.xz = getelementptr i8, ptr %i.xy, i64 8
  %.val486 = load i32, ptr %i.xz, align 8, !tbaa !39
  %i.ya = getelementptr i8, ptr %i.xy, i64 12
  %.val487 = load i32, ptr %i.ya, align 4, !tbaa !40
  %i.yb = sub nsw i32 %.val486, %.val487
  %i.yc = tail call i32 @llvm.abs.i32(i32 %i.yb, i1 true)
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.xs, label %Wlc_ObjHasArray.exit.thread.i.i.i660, label %Wlc_ObjFanin1.exit662

Wlc_ObjHasArray.exit.thread.i.i.i660:             ; preds = %Wlc_ObjFanin0.exit659
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !36
  br label %Wlc_ObjFanin1.exit662

Wlc_ObjFanin1.exit662:                            ; preds = %Wlc_ObjFanin0.exit659, %Wlc_ObjHasArray.exit.thread.i.i.i660
  %i.yf = phi ptr [ %i.ye, %Wlc_ObjHasArray.exit.thread.i.i.i660 ], [ %i.yd, %Wlc_ObjFanin0.exit659 ]
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !18
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds [24 x i8], ptr %.val.i658, i64 %i.yi ; 2 uses
  %i.yk = getelementptr i8, ptr %i.yj, i64 8
  %.val484 = load i32, ptr %i.yk, align 8, !tbaa !39
  %i.yl = getelementptr i8, ptr %i.yj, i64 12
  %.val485 = load i32, ptr %i.yl, align 4, !tbaa !40
  %i.ym = sub nsw i32 %.val484, %.val485
  %i.yn = tail call i32 @llvm.abs.i32(i32 %i.ym, i1 true)
  %i.yo = load i32, ptr %20, align 4, !tbaa !18
  %i.yp = add nuw i32 %i.yc, 3
  %i.yq = add i32 %i.yp, %i.yo
  %i.yr = add i32 %i.yq, %i.yn
  store i32 %i.yr, ptr %20, align 4, !tbaa !18
  br label %bb.cf

bb.bj:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !41
  %i.yu = icmp ugt i32 %i.yt, 2
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.yu, label %Wlc_ObjHasArray.exit.thread.i.i.i663, label %Wlc_ObjFanin0.exit665

Wlc_ObjHasArray.exit.thread.i.i.i663:             ; preds = %bb.bj
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit665

Wlc_ObjFanin0.exit665:                            ; preds = %bb.bj, %Wlc_ObjHasArray.exit.thread.i.i.i663
  %i.yx = phi ptr [ %i.yw, %Wlc_ObjHasArray.exit.thread.i.i.i663 ], [ %i.yv, %bb.bj ]
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !18
  %.val.i664 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.yz = sext i32 %i.yy to i64
  %i.za = getelementptr inbounds [24 x i8], ptr %.val.i664, i64 %i.yz ; 2 uses
  %i.zb = getelementptr i8, ptr %i.za, i64 8
  %.val482 = load i32, ptr %i.zb, align 8, !tbaa !39
  %i.zc = getelementptr i8, ptr %i.za, i64 12
  %.val483 = load i32, ptr %i.zc, align 4, !tbaa !40
  %i.zd = sub nsw i32 %.val482, %.val483
  %i.ze = tail call i32 @llvm.abs.i32(i32 %i.zd, i1 true)
  %i.zf = shl i32 %i.ze, 2
  %i.zg = load i32, ptr %19, align 4, !tbaa !18
  %i.zh = add i32 %i.zg, 3
  %i.zi = add i32 %i.zh, %i.zf
  store i32 %i.zi, ptr %19, align 4, !tbaa !18
  br label %bb.cf

bb.bk:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !41
  %i.zl = icmp ugt i32 %i.zk, 2
  %i.zm = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.zl, label %Wlc_ObjHasArray.exit.thread.i.i.i666, label %Wlc_ObjFanin0.exit668

Wlc_ObjHasArray.exit.thread.i.i.i666:             ; preds = %bb.bk
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit668

Wlc_ObjFanin0.exit668:                            ; preds = %bb.bk, %Wlc_ObjHasArray.exit.thread.i.i.i666
  %i.zo = phi ptr [ %i.zn, %Wlc_ObjHasArray.exit.thread.i.i.i666 ], [ %i.zm, %bb.bk ]
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !18
  %.val.i667 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.zq = sext i32 %i.zp to i64
  %i.zr = getelementptr inbounds [24 x i8], ptr %.val.i667, i64 %i.zq ; 2 uses
  %i.zs = getelementptr i8, ptr %i.zr, i64 8
  %.val480 = load i32, ptr %i.zs, align 8, !tbaa !39
  %i.zt = getelementptr i8, ptr %i.zr, i64 12
  %.val481 = load i32, ptr %i.zt, align 4, !tbaa !40
  %i.zu = sub nsw i32 %.val480, %.val481
  %i.zv = tail call i32 @llvm.abs.i32(i32 %i.zu, i1 true)
  %i.zw = shl i32 %i.zv, 2
  %i.zx = load i32, ptr %18, align 4, !tbaa !18
  %i.zy = add i32 %i.zx, 3
  %i.zz = add i32 %i.zy, %i.zw
  store i32 %i.zz, ptr %18, align 4, !tbaa !18
  br label %bb.cf

bb.bl:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !41
  %i.aac = icmp ugt i32 %i.aab, 2
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aac, label %Wlc_ObjHasArray.exit.thread.i.i.i669, label %Wlc_ObjFanin0.exit671

Wlc_ObjHasArray.exit.thread.i.i.i669:             ; preds = %bb.bl
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit671

Wlc_ObjFanin0.exit671:                            ; preds = %bb.bl, %Wlc_ObjHasArray.exit.thread.i.i.i669
  %i.aaf = phi ptr [ %i.aae, %Wlc_ObjHasArray.exit.thread.i.i.i669 ], [ %i.aad, %bb.bl ]
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !18
  %.val.i670 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds [24 x i8], ptr %.val.i670, i64 %i.aah ; 2 uses
  %i.aaj = getelementptr i8, ptr %i.aai, i64 8
  %.val478 = load i32, ptr %i.aaj, align 8, !tbaa !39
  %i.aak = getelementptr i8, ptr %i.aai, i64 12
  %.val479 = load i32, ptr %i.aak, align 4, !tbaa !40
  %i.aal = sub nsw i32 %.val478, %.val479
  %i.aam = tail call i32 @llvm.abs.i32(i32 %i.aal, i1 true)
  %i.aan = mul i32 %i.aam, 6
  %i.aao = load i32, ptr %17, align 4, !tbaa !18
  %i.aap = add nsw i32 %i.aan, %i.aao
  store i32 %i.aap, ptr %17, align 4, !tbaa !18
  br label %bb.cf

bb.bm:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !41
  %i.aas = icmp ugt i32 %i.aar, 2
  %i.aat = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aas, label %Wlc_ObjHasArray.exit.thread.i.i.i672, label %Wlc_ObjFanin0.exit674

Wlc_ObjHasArray.exit.thread.i.i.i672:             ; preds = %bb.bm
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit674

Wlc_ObjFanin0.exit674:                            ; preds = %bb.bm, %Wlc_ObjHasArray.exit.thread.i.i.i672
  %i.aav = phi ptr [ %i.aau, %Wlc_ObjHasArray.exit.thread.i.i.i672 ], [ %i.aat, %bb.bm ]
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !18
  %.val.i673 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.aax = sext i32 %i.aaw to i64
  %i.aay = getelementptr inbounds [24 x i8], ptr %.val.i673, i64 %i.aax ; 2 uses
  %i.aaz = getelementptr i8, ptr %i.aay, i64 8
  %.val476 = load i32, ptr %i.aaz, align 8, !tbaa !39
  %i.aba = getelementptr i8, ptr %i.aay, i64 12
  %.val477 = load i32, ptr %i.aba, align 4, !tbaa !40
  %i.abb = sub nsw i32 %.val476, %.val477
  %i.abc = tail call i32 @llvm.abs.i32(i32 %i.abb, i1 true)
  %i.abd = mul i32 %i.abc, 6
  %i.abe = load i32, ptr %16, align 4, !tbaa !18
  %i.abf = add nsw i32 %i.abd, %i.abe
  store i32 %i.abf, ptr %16, align 4, !tbaa !18
  br label %bb.cf

bb.bn:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.abg = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !41
  %i.abi = icmp ugt i32 %i.abh, 2
  %i.abj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.abi, label %Wlc_ObjHasArray.exit.thread.i.i.i675, label %Wlc_ObjFanin0.exit677

Wlc_ObjHasArray.exit.thread.i.i.i675:             ; preds = %bb.bn
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit677

Wlc_ObjFanin0.exit677:                            ; preds = %bb.bn, %Wlc_ObjHasArray.exit.thread.i.i.i675
  %i.abl = phi ptr [ %i.abk, %Wlc_ObjHasArray.exit.thread.i.i.i675 ], [ %i.abj, %bb.bn ]
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !18
  %.val.i676 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.abn = sext i32 %i.abm to i64
  %i.abo = getelementptr inbounds [24 x i8], ptr %.val.i676, i64 %i.abn ; 2 uses
  %i.abp = getelementptr i8, ptr %i.abo, i64 8
  %.val474 = load i32, ptr %i.abp, align 8, !tbaa !39
  %i.abq = getelementptr i8, ptr %i.abo, i64 12
  %.val475 = load i32, ptr %i.abq, align 4, !tbaa !40
  %i.abr = sub nsw i32 %.val474, %.val475
  %i.abs = tail call i32 @llvm.abs.i32(i32 %i.abr, i1 true)
  %i.abt = mul i32 %i.abs, 6
  %i.abu = load i32, ptr %15, align 4, !tbaa !18
  %i.abv = add nsw i32 %i.abt, %i.abu
  store i32 %i.abv, ptr %15, align 4, !tbaa !18
  br label %bb.cf

bb.bo:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.abw = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !41
  %i.aby = icmp ugt i32 %i.abx, 2
  %i.abz = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aby, label %Wlc_ObjHasArray.exit.thread.i.i.i678, label %Wlc_ObjFanin0.exit680

Wlc_ObjHasArray.exit.thread.i.i.i678:             ; preds = %bb.bo
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit680

Wlc_ObjFanin0.exit680:                            ; preds = %bb.bo, %Wlc_ObjHasArray.exit.thread.i.i.i678
  %i.acb = phi ptr [ %i.aca, %Wlc_ObjHasArray.exit.thread.i.i.i678 ], [ %i.abz, %bb.bo ]
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !18
  %.val.i679 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.acd = sext i32 %i.acc to i64
  %i.ace = getelementptr inbounds [24 x i8], ptr %.val.i679, i64 %i.acd ; 2 uses
  %i.acf = getelementptr i8, ptr %i.ace, i64 8
  %.val472 = load i32, ptr %i.acf, align 8, !tbaa !39
  %i.acg = getelementptr i8, ptr %i.ace, i64 12
  %.val473 = load i32, ptr %i.acg, align 4, !tbaa !40
  %i.ach = sub nsw i32 %.val472, %.val473
  %i.aci = tail call i32 @llvm.abs.i32(i32 %i.ach, i1 true)
  %i.acj = mul i32 %i.aci, 6
  %i.ack = load i32, ptr %14, align 4, !tbaa !18
  %i.acl = add nsw i32 %i.acj, %i.ack
  store i32 %i.acl, ptr %14, align 4, !tbaa !18
  br label %bb.cf

bb.bp:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !41
  %i.aco = icmp ugt i32 %i.acn, 2
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aco, label %Wlc_ObjHasArray.exit.thread.i.i.i681, label %Wlc_ObjFanin0.exit683

Wlc_ObjHasArray.exit.thread.i.i.i681:             ; preds = %bb.bp
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit683

Wlc_ObjFanin0.exit683:                            ; preds = %bb.bp, %Wlc_ObjHasArray.exit.thread.i.i.i681
  %i.acr = phi ptr [ %i.acq, %Wlc_ObjHasArray.exit.thread.i.i.i681 ], [ %i.acp, %bb.bp ]
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !18
  %.val.i682 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds [24 x i8], ptr %.val.i682, i64 %i.act ; 2 uses
  %i.acv = getelementptr i8, ptr %i.acu, i64 8
  %.val470 = load i32, ptr %i.acv, align 8, !tbaa !39
  %i.acw = getelementptr i8, ptr %i.acu, i64 12
  %.val471 = load i32, ptr %i.acw, align 4, !tbaa !40
  %i.acx = sub nsw i32 %.val470, %.val471
  %i.acy = tail call i32 @llvm.abs.i32(i32 %i.acx, i1 true)
  %i.acz = load i32, ptr %13, align 4, !tbaa !18
  %i.ada = add nsw i32 %i.acy, %i.acz
  store i32 %i.ada, ptr %13, align 4, !tbaa !18
  br label %bb.cf

bb.bq:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !41
  %i.add = icmp ugt i32 %i.adc, 2
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.add, label %Wlc_ObjHasArray.exit.thread.i.i.i684, label %Wlc_ObjFanin0.exit686

Wlc_ObjHasArray.exit.thread.i.i.i684:             ; preds = %bb.bq
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit686

Wlc_ObjFanin0.exit686:                            ; preds = %bb.bq, %Wlc_ObjHasArray.exit.thread.i.i.i684
  %i.adg = phi ptr [ %i.adf, %Wlc_ObjHasArray.exit.thread.i.i.i684 ], [ %i.ade, %bb.bq ]
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !18
  %.val.i685 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.adi = sext i32 %i.adh to i64
  %i.adj = getelementptr inbounds [24 x i8], ptr %.val.i685, i64 %i.adi ; 2 uses
  %i.adk = getelementptr i8, ptr %i.adj, i64 8
  %.val468 = load i32, ptr %i.adk, align 8, !tbaa !39
  %i.adl = getelementptr i8, ptr %i.adj, i64 12
  %.val469 = load i32, ptr %i.adl, align 4, !tbaa !40
  %i.adm = sub nsw i32 %.val468, %.val469
  %i.adn = tail call i32 @llvm.abs.i32(i32 %i.adm, i1 true)
  %i.ado = load i32, ptr %12, align 4, !tbaa !18
  %i.adp = add nsw i32 %i.adn, %i.ado
  store i32 %i.adp, ptr %12, align 4, !tbaa !18
  br label %bb.cf

bb.br:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !41
  %i.ads = icmp ugt i32 %i.adr, 2
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.ads, label %Wlc_ObjHasArray.exit.thread.i.i.i687, label %Wlc_ObjFanin0.exit689

Wlc_ObjHasArray.exit.thread.i.i.i687:             ; preds = %bb.br
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit689

Wlc_ObjFanin0.exit689:                            ; preds = %bb.br, %Wlc_ObjHasArray.exit.thread.i.i.i687
  %i.adv = phi ptr [ %i.adu, %Wlc_ObjHasArray.exit.thread.i.i.i687 ], [ %i.adt, %bb.br ]
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !18
  %.val.i688 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.adx = sext i32 %i.adw to i64
  %i.ady = getelementptr inbounds [24 x i8], ptr %.val.i688, i64 %i.adx ; 2 uses
  %i.adz = getelementptr i8, ptr %i.ady, i64 8
  %.val466 = load i32, ptr %i.adz, align 8, !tbaa !39
  %i.aea = getelementptr i8, ptr %i.ady, i64 12
  %.val467 = load i32, ptr %i.aea, align 4, !tbaa !40
  %i.aeb = sub nsw i32 %.val466, %.val467
  %i.aec = tail call i32 @llvm.abs.i32(i32 %i.aeb, i1 true)
  %i.aed = mul i32 %i.aec, 3
  %i.aee = load i32, ptr %11, align 4, !tbaa !18
  %i.aef = add nsw i32 %i.aed, %i.aee
  store i32 %i.aef, ptr %11, align 4, !tbaa !18
  br label %bb.cf

bb.bs:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !41
  %i.aei = icmp ugt i32 %i.aeh, 2
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aei, label %Wlc_ObjHasArray.exit.thread.i.i.i690, label %Wlc_ObjFanin0.exit692

Wlc_ObjHasArray.exit.thread.i.i.i690:             ; preds = %bb.bs
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit692

Wlc_ObjFanin0.exit692:                            ; preds = %bb.bs, %Wlc_ObjHasArray.exit.thread.i.i.i690
  %i.ael = phi ptr [ %i.aek, %Wlc_ObjHasArray.exit.thread.i.i.i690 ], [ %i.aej, %bb.bs ]
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !18
  %.val.i691 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds [24 x i8], ptr %.val.i691, i64 %i.aen ; 2 uses
  %i.aep = getelementptr i8, ptr %i.aeo, i64 8
  %.val464 = load i32, ptr %i.aep, align 8, !tbaa !39
  %i.aeq = getelementptr i8, ptr %i.aeo, i64 12
  %.val465 = load i32, ptr %i.aeq, align 4, !tbaa !40
  %i.aer = sub nsw i32 %.val464, %.val465
  %i.aes = tail call i32 @llvm.abs.i32(i32 %i.aer, i1 true)
  %i.aet = load i32, ptr %10, align 4, !tbaa !18
  %i.aeu = add nsw i32 %i.aes, %i.aet
  store i32 %i.aeu, ptr %10, align 4, !tbaa !18
  br label %bb.cf

bb.bt:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.aev = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !41
  %i.aex = icmp ugt i32 %i.aew, 2
  %i.aey = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aex, label %Wlc_ObjHasArray.exit.thread.i.i.i693, label %Wlc_ObjFanin0.exit695

Wlc_ObjHasArray.exit.thread.i.i.i693:             ; preds = %bb.bt
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit695

Wlc_ObjFanin0.exit695:                            ; preds = %bb.bt, %Wlc_ObjHasArray.exit.thread.i.i.i693
  %i.afa = phi ptr [ %i.aez, %Wlc_ObjHasArray.exit.thread.i.i.i693 ], [ %i.aey, %bb.bt ]
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !18
  %.val.i694 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds [24 x i8], ptr %.val.i694, i64 %i.afc ; 2 uses
  %i.afe = getelementptr i8, ptr %i.afd, i64 8
  %.val462 = load i32, ptr %i.afe, align 8, !tbaa !39
  %i.aff = getelementptr i8, ptr %i.afd, i64 12
  %.val463 = load i32, ptr %i.aff, align 4, !tbaa !40
  %i.afg = sub nsw i32 %.val462, %.val463
  %i.afh = tail call i32 @llvm.abs.i32(i32 %i.afg, i1 true)
  %i.afi = load i32, ptr %9, align 4, !tbaa !18
  %i.afj = add nsw i32 %i.afh, %i.afi
  store i32 %i.afj, ptr %9, align 4, !tbaa !18
  br label %bb.cf

bb.bu:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.afk = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !41
  %i.afm = icmp ugt i32 %i.afl, 2
  %i.afn = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.afm, label %Wlc_ObjHasArray.exit.thread.i.i.i696, label %Wlc_ObjFanin0.exit698

Wlc_ObjHasArray.exit.thread.i.i.i696:             ; preds = %bb.bu
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit698

Wlc_ObjFanin0.exit698:                            ; preds = %bb.bu, %Wlc_ObjHasArray.exit.thread.i.i.i696
  %i.afp = phi ptr [ %i.afo, %Wlc_ObjHasArray.exit.thread.i.i.i696 ], [ %i.afn, %bb.bu ]
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !18
  %.val.i697 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.afr = sext i32 %i.afq to i64
  %i.afs = getelementptr inbounds [24 x i8], ptr %.val.i697, i64 %i.afr ; 2 uses
  %i.aft = getelementptr i8, ptr %i.afs, i64 8
  %.val460 = load i32, ptr %i.aft, align 8, !tbaa !39
  %i.afu = getelementptr i8, ptr %i.afs, i64 12
  %.val461 = load i32, ptr %i.afu, align 4, !tbaa !40
  %i.afv = sub nsw i32 %.val460, %.val461
  %i.afw = tail call i32 @llvm.abs.i32(i32 %i.afv, i1 true)
  %i.afx = mul i32 %i.afw, 3
  %i.afy = load i32, ptr %8, align 4, !tbaa !18
  %i.afz = add nsw i32 %i.afx, %i.afy
  store i32 %i.afz, ptr %8, align 4, !tbaa !18
  br label %bb.cf

bb.bv:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.aga = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !41
  %i.agc = icmp ugt i32 %i.agb, 2
  %i.agd = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.agc, label %Wlc_ObjHasArray.exit.thread.i.i.i699, label %Wlc_ObjFanin0.exit701

Wlc_ObjHasArray.exit.thread.i.i.i699:             ; preds = %bb.bv
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit701

Wlc_ObjFanin0.exit701:                            ; preds = %bb.bv, %Wlc_ObjHasArray.exit.thread.i.i.i699
  %i.agf = phi ptr [ %i.age, %Wlc_ObjHasArray.exit.thread.i.i.i699 ], [ %i.agd, %bb.bv ]
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !18
  %.val.i700 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.agh = sext i32 %i.agg to i64
  %i.agi = getelementptr inbounds [24 x i8], ptr %.val.i700, i64 %i.agh ; 2 uses
  %i.agj = getelementptr i8, ptr %i.agi, i64 8
  %.val458 = load i32, ptr %i.agj, align 8, !tbaa !39
  %i.agk = getelementptr i8, ptr %i.agi, i64 12
  %.val459 = load i32, ptr %i.agk, align 4, !tbaa !40
  %i.agl = sub nsw i32 %.val458, %.val459
  %i.agm = tail call i32 @llvm.abs.i32(i32 %i.agl, i1 true)
  %i.agn = mul i32 %i.agm, 9
  %i.ago = load i32, ptr %7, align 4, !tbaa !18
  %i.agp = add i32 %i.ago, 9
  %i.agq = add i32 %i.agp, %i.agn
  store i32 %i.agq, ptr %7, align 4, !tbaa !18
  br label %bb.cf

bb.bw:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.agr = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !41
  %i.agt = icmp ugt i32 %i.ags, 2
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.agt, label %Wlc_ObjHasArray.exit.thread.i.i.i702, label %Wlc_ObjFanin0.exit704

Wlc_ObjHasArray.exit.thread.i.i.i702:             ; preds = %bb.bw
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit704

Wlc_ObjFanin0.exit704:                            ; preds = %bb.bw, %Wlc_ObjHasArray.exit.thread.i.i.i702
  %i.agw = phi ptr [ %i.agv, %Wlc_ObjHasArray.exit.thread.i.i.i702 ], [ %i.agu, %bb.bw ]
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !18
  %.val.i703 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.agy = sext i32 %i.agx to i64
  %i.agz = getelementptr inbounds [24 x i8], ptr %.val.i703, i64 %i.agy ; 2 uses
  %i.aha = getelementptr i8, ptr %i.agz, i64 8
  %.val456 = load i32, ptr %i.aha, align 8, !tbaa !39
  %i.ahb = getelementptr i8, ptr %i.agz, i64 12
  %.val457 = load i32, ptr %i.ahb, align 4, !tbaa !40
  %i.ahc = sub nsw i32 %.val456, %.val457
  %i.ahd = tail call i32 @llvm.abs.i32(i32 %i.ahc, i1 true)
  %i.ahe = mul i32 %i.ahd, 9
  %i.ahf = load i32, ptr %6, align 4, !tbaa !18
  %i.ahg = add i32 %i.ahf, 9
  %i.ahh = add i32 %i.ahg, %i.ahe
  store i32 %i.ahh, ptr %6, align 4, !tbaa !18
  br label %bb.cf

bb.bx:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !41
  %i.ahk = icmp ugt i32 %i.ahj, 2                 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.ahk, label %Wlc_ObjHasArray.exit.thread.i.i.i705, label %Wlc_ObjFanin0.exit707

Wlc_ObjHasArray.exit.thread.i.i.i705:             ; preds = %bb.bx
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit707

Wlc_ObjFanin0.exit707:                            ; preds = %bb.bx, %Wlc_ObjHasArray.exit.thread.i.i.i705
  %i.ahn = phi ptr [ %i.ahm, %Wlc_ObjHasArray.exit.thread.i.i.i705 ], [ %i.ahl, %bb.bx ]
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !18
  %.val.i706 = load ptr, ptr %i.s, align 8, !tbaa !33 ; 2 uses
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = getelementptr inbounds [24 x i8], ptr %.val.i706, i64 %i.ahp ; 2 uses
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 8
  %.val454 = load i32, ptr %i.ahr, align 8, !tbaa !39
  %i.ahs = getelementptr i8, ptr %i.ahq, i64 12
  %.val455 = load i32, ptr %i.ahs, align 4, !tbaa !40
  %i.aht = sub nsw i32 %.val454, %.val455
  %i.ahu = tail call i32 @llvm.abs.i32(i32 %i.aht, i1 true)
  %i.ahv = mul i32 %i.ahu, 9
  %i.ahw = add i32 %i.ahv, 9
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.ahk, label %Wlc_ObjHasArray.exit.thread.i.i.i708, label %Wlc_ObjFanin1.exit710

Wlc_ObjHasArray.exit.thread.i.i.i708:             ; preds = %Wlc_ObjFanin0.exit707
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !36
  br label %Wlc_ObjFanin1.exit710

Wlc_ObjFanin1.exit710:                            ; preds = %Wlc_ObjFanin0.exit707, %Wlc_ObjHasArray.exit.thread.i.i.i708
  %i.ahz = phi ptr [ %i.ahy, %Wlc_ObjHasArray.exit.thread.i.i.i708 ], [ %i.ahx, %Wlc_ObjFanin0.exit707 ]
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 4
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !18
  %i.aic = sext i32 %i.aib to i64
  %i.aid = getelementptr inbounds [24 x i8], ptr %.val.i706, i64 %i.aic ; 2 uses
  %i.aie = getelementptr i8, ptr %i.aid, i64 8
  %.val452 = load i32, ptr %i.aie, align 8, !tbaa !39
  %i.aif = getelementptr i8, ptr %i.aid, i64 12
  %.val453 = load i32, ptr %i.aif, align 4, !tbaa !40
  %i.aig = sub nsw i32 %.val452, %.val453
  %i.aih = tail call i32 @llvm.abs.i32(i32 %i.aig, i1 true)
  %i.aii = add nuw nsw i32 %i.aih, 1
  %i.aij = mul nsw i32 %i.aii, %i.ahw
  %i.aik = load i32, ptr %5, align 4, !tbaa !18
  %i.ail = add nsw i32 %i.aij, %i.aik
  store i32 %i.ail, ptr %5, align 4, !tbaa !18
  br label %bb.cf

bb.by:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !41
  %i.aio = icmp ugt i32 %i.ain, 2                 ; 3 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aio, label %Wlc_ObjHasArray.exit.thread.i.i.i711, label %Wlc_ObjFanin0.exit713

Wlc_ObjHasArray.exit.thread.i.i.i711:             ; preds = %bb.by
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit713

Wlc_ObjFanin0.exit713:                            ; preds = %bb.by, %Wlc_ObjHasArray.exit.thread.i.i.i711
  %i.air = phi ptr [ %i.aiq, %Wlc_ObjHasArray.exit.thread.i.i.i711 ], [ %i.aip, %bb.by ]
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !18
  %.val.i712 = load ptr, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds [24 x i8], ptr %.val.i712, i64 %i.ait ; 2 uses
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 8
  %.val450 = load i32, ptr %i.aiv, align 8, !tbaa !39
  %i.aiw = getelementptr i8, ptr %i.aiu, i64 12
  %.val451 = load i32, ptr %i.aiw, align 4, !tbaa !40
  %i.aix = sub nsw i32 %.val450, %.val451
  %i.aiy = tail call i32 @llvm.abs.i32(i32 %i.aix, i1 true)
  %i.aiz = mul i32 %i.aiy, 13
  %i.aja = add i32 %i.aiz, 13
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aio, label %Wlc_ObjHasArray.exit.thread.i.i.i714, label %Wlc_ObjFanin0.exit716

Wlc_ObjHasArray.exit.thread.i.i.i714:             ; preds = %Wlc_ObjFanin0.exit713
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit716

Wlc_ObjFanin0.exit716:                            ; preds = %Wlc_ObjFanin0.exit713, %Wlc_ObjHasArray.exit.thread.i.i.i714
  %i.ajd = phi ptr [ %i.ajc, %Wlc_ObjHasArray.exit.thread.i.i.i714 ], [ %i.ajb, %Wlc_ObjFanin0.exit713 ]
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !18
  %i.ajf = sext i32 %i.aje to i64
  %i.ajg = getelementptr inbounds [24 x i8], ptr %.val.i712, i64 %i.ajf ; 2 uses
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 8
  %.val448 = load i32, ptr %i.ajh, align 8, !tbaa !39
  %i.aji = getelementptr i8, ptr %i.ajg, i64 12
  %.val449 = load i32, ptr %i.aji, align 4, !tbaa !40
  %i.ajj = sub nsw i32 %.val448, %.val449
  %i.ajk = tail call i32 @llvm.abs.i32(i32 %i.ajj, i1 true)
  %i.ajl = add nuw nsw i32 %i.ajk, 1
  %i.ajm = mul nsw i32 %i.ajl, %i.aja
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aio, label %Wlc_ObjHasArray.exit.thread.i.i.i717, label %Wlc_ObjFanin0.exit719

Wlc_ObjHasArray.exit.thread.i.i.i717:             ; preds = %Wlc_ObjFanin0.exit716
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit719

Wlc_ObjFanin0.exit719:                            ; preds = %Wlc_ObjFanin0.exit716, %Wlc_ObjHasArray.exit.thread.i.i.i717
  %i.ajp = phi ptr [ %i.ajo, %Wlc_ObjHasArray.exit.thread.i.i.i717 ], [ %i.ajn, %Wlc_ObjFanin0.exit716 ]
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !18
  %i.ajr = sext i32 %i.ajq to i64
  %i.ajs = getelementptr inbounds [24 x i8], ptr %.val.i712, i64 %i.ajr ; 2 uses
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 8
  %.val446 = load i32, ptr %i.ajt, align 8, !tbaa !39
  %i.aju = getelementptr i8, ptr %i.ajs, i64 12
  %.val447 = load i32, ptr %i.aju, align 4, !tbaa !40
  %i.ajv = sub nsw i32 %.val446, %.val447
  %i.ajw = tail call i32 @llvm.abs.i32(i32 %i.ajv, i1 true)
  %i.ajx = mul i32 %i.ajw, -19
  %i.ajy = load i32, ptr %4, align 4, !tbaa !18
  %i.ajz = add i32 %i.ajm, -9
  %i.aka = add i32 %i.ajz, %i.ajy
  %i.akb = add i32 %i.aka, %i.ajx
  store i32 %i.akb, ptr %4, align 4, !tbaa !18
  br label %bb.cf

bb.bz:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !41
  %i.ake = icmp ugt i32 %i.akd, 2                 ; 3 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.ake, label %Wlc_ObjHasArray.exit.thread.i.i.i720, label %Wlc_ObjFanin0.exit722

Wlc_ObjHasArray.exit.thread.i.i.i720:             ; preds = %bb.bz
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit722

Wlc_ObjFanin0.exit722:                            ; preds = %bb.bz, %Wlc_ObjHasArray.exit.thread.i.i.i720
  %i.akh = phi ptr [ %i.akg, %Wlc_ObjHasArray.exit.thread.i.i.i720 ], [ %i.akf, %bb.bz ]
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !18
  %.val.i721 = load ptr, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %i.akj = sext i32 %i.aki to i64
  %i.akk = getelementptr inbounds [24 x i8], ptr %.val.i721, i64 %i.akj ; 2 uses
  %i.akl = getelementptr i8, ptr %i.akk, i64 8
  %.val444 = load i32, ptr %i.akl, align 8, !tbaa !39
  %i.akm = getelementptr i8, ptr %i.akk, i64 12
  %.val445 = load i32, ptr %i.akm, align 4, !tbaa !40
  %i.akn = sub nsw i32 %.val444, %.val445
  %i.ako = tail call i32 @llvm.abs.i32(i32 %i.akn, i1 true)
  %i.akp = mul i32 %i.ako, 13
  %i.akq = add i32 %i.akp, 13
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.ake, label %Wlc_ObjHasArray.exit.thread.i.i.i723, label %Wlc_ObjFanin0.exit725

Wlc_ObjHasArray.exit.thread.i.i.i723:             ; preds = %Wlc_ObjFanin0.exit722
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit725

Wlc_ObjFanin0.exit725:                            ; preds = %Wlc_ObjFanin0.exit722, %Wlc_ObjHasArray.exit.thread.i.i.i723
  %i.akt = phi ptr [ %i.aks, %Wlc_ObjHasArray.exit.thread.i.i.i723 ], [ %i.akr, %Wlc_ObjFanin0.exit722 ]
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !18
  %i.akv = sext i32 %i.aku to i64
  %i.akw = getelementptr inbounds [24 x i8], ptr %.val.i721, i64 %i.akv ; 2 uses
  %i.akx = getelementptr i8, ptr %i.akw, i64 8
  %.val442 = load i32, ptr %i.akx, align 8, !tbaa !39
  %i.aky = getelementptr i8, ptr %i.akw, i64 12
  %.val443 = load i32, ptr %i.aky, align 4, !tbaa !40
  %i.akz = sub nsw i32 %.val442, %.val443
  %i.ala = tail call i32 @llvm.abs.i32(i32 %i.akz, i1 true)
  %i.alb = add nuw nsw i32 %i.ala, 1
  %i.alc = mul nsw i32 %i.alb, %i.akq
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.ake, label %Wlc_ObjHasArray.exit.thread.i.i.i726, label %Wlc_ObjFanin0.exit728

Wlc_ObjHasArray.exit.thread.i.i.i726:             ; preds = %Wlc_ObjFanin0.exit725
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit728

Wlc_ObjFanin0.exit728:                            ; preds = %Wlc_ObjFanin0.exit725, %Wlc_ObjHasArray.exit.thread.i.i.i726
  %i.alf = phi ptr [ %i.ale, %Wlc_ObjHasArray.exit.thread.i.i.i726 ], [ %i.ald, %Wlc_ObjFanin0.exit725 ]
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !18
  %i.alh = sext i32 %i.alg to i64
  %i.ali = getelementptr inbounds [24 x i8], ptr %.val.i721, i64 %i.alh ; 2 uses
  %i.alj = getelementptr i8, ptr %i.ali, i64 8
  %.val440 = load i32, ptr %i.alj, align 8, !tbaa !39
  %i.alk = getelementptr i8, ptr %i.ali, i64 12
  %.val441 = load i32, ptr %i.alk, align 4, !tbaa !40
  %i.all = sub nsw i32 %.val440, %.val441
  %i.alm = tail call i32 @llvm.abs.i32(i32 %i.all, i1 true)
  %i.aln = mul i32 %i.alm, -7
  %i.alo = load i32, ptr %3, align 4, !tbaa !18
  %i.alp = add i32 %i.alc, -9
  %i.alq = add i32 %i.alp, %i.alo
  %i.alr = add i32 %i.alq, %i.aln
  store i32 %i.alr, ptr %3, align 4, !tbaa !18
  br label %bb.cf

bb.ca:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.als = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !41
  %i.alu = icmp ugt i32 %i.alt, 2                 ; 3 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.alu, label %Wlc_ObjHasArray.exit.thread.i.i.i729, label %Wlc_ObjFanin0.exit731

Wlc_ObjHasArray.exit.thread.i.i.i729:             ; preds = %bb.ca
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit731

Wlc_ObjFanin0.exit731:                            ; preds = %bb.ca, %Wlc_ObjHasArray.exit.thread.i.i.i729
  %i.alx = phi ptr [ %i.alw, %Wlc_ObjHasArray.exit.thread.i.i.i729 ], [ %i.alv, %bb.ca ]
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !18
  %.val.i730 = load ptr, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %i.alz = sext i32 %i.aly to i64
  %i.ama = getelementptr inbounds [24 x i8], ptr %.val.i730, i64 %i.alz ; 2 uses
  %i.amb = getelementptr i8, ptr %i.ama, i64 8
  %.val438 = load i32, ptr %i.amb, align 8, !tbaa !39
  %i.amc = getelementptr i8, ptr %i.ama, i64 12
  %.val439 = load i32, ptr %i.amc, align 4, !tbaa !40
  %i.amd = sub nsw i32 %.val438, %.val439
  %i.ame = tail call i32 @llvm.abs.i32(i32 %i.amd, i1 true)
  %i.amf = mul i32 %i.ame, 13
  %i.amg = add i32 %i.amf, 13
  %i.amh = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.alu, label %Wlc_ObjHasArray.exit.thread.i.i.i732, label %Wlc_ObjFanin0.exit734

Wlc_ObjHasArray.exit.thread.i.i.i732:             ; preds = %Wlc_ObjFanin0.exit731
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit734

Wlc_ObjFanin0.exit734:                            ; preds = %Wlc_ObjFanin0.exit731, %Wlc_ObjHasArray.exit.thread.i.i.i732
  %i.amj = phi ptr [ %i.ami, %Wlc_ObjHasArray.exit.thread.i.i.i732 ], [ %i.amh, %Wlc_ObjFanin0.exit731 ]
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !18
  %i.aml = sext i32 %i.amk to i64
  %i.amm = getelementptr inbounds [24 x i8], ptr %.val.i730, i64 %i.aml ; 2 uses
  %i.amn = getelementptr i8, ptr %i.amm, i64 8
  %.val436 = load i32, ptr %i.amn, align 8, !tbaa !39
  %i.amo = getelementptr i8, ptr %i.amm, i64 12
  %.val437 = load i32, ptr %i.amo, align 4, !tbaa !40
  %i.amp = sub nsw i32 %.val436, %.val437
  %i.amq = tail call i32 @llvm.abs.i32(i32 %i.amp, i1 true)
  %i.amr = add nuw nsw i32 %i.amq, 1
  %i.ams = mul nsw i32 %i.amr, %i.amg
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.alu, label %Wlc_ObjHasArray.exit.thread.i.i.i735, label %Wlc_ObjFanin0.exit737

Wlc_ObjHasArray.exit.thread.i.i.i735:             ; preds = %Wlc_ObjFanin0.exit734
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit737

Wlc_ObjFanin0.exit737:                            ; preds = %Wlc_ObjFanin0.exit734, %Wlc_ObjHasArray.exit.thread.i.i.i735
  %i.amv = phi ptr [ %i.amu, %Wlc_ObjHasArray.exit.thread.i.i.i735 ], [ %i.amt, %Wlc_ObjFanin0.exit734 ]
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !18
  %i.amx = sext i32 %i.amw to i64
  %i.amy = getelementptr inbounds [24 x i8], ptr %.val.i730, i64 %i.amx ; 2 uses
  %i.amz = getelementptr i8, ptr %i.amy, i64 8
  %.val434 = load i32, ptr %i.amz, align 8, !tbaa !39
  %i.ana = getelementptr i8, ptr %i.amy, i64 12
  %.val435 = load i32, ptr %i.ana, align 4, !tbaa !40
  %i.anb = sub nsw i32 %.val434, %.val435
  %i.anc = tail call i32 @llvm.abs.i32(i32 %i.anb, i1 true)
  %i.and = mul i32 %i.anc, -7
  %i.ane = load i32, ptr %22, align 4, !tbaa !18
  %i.anf = add i32 %i.ams, -9
  %i.ang = add i32 %i.anf, %i.ane
  %i.anh = add i32 %i.ang, %i.and
  store i32 %i.anh, ptr %22, align 4, !tbaa !18
  br label %bb.cf

bb.cb:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !41
  %i.ank = icmp ugt i32 %i.anj, 2                 ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.ank, label %Wlc_ObjHasArray.exit.thread.i.i.i738, label %Wlc_ObjFanin0.exit740

Wlc_ObjHasArray.exit.thread.i.i.i738:             ; preds = %bb.cb
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit740

Wlc_ObjFanin0.exit740:                            ; preds = %bb.cb, %Wlc_ObjHasArray.exit.thread.i.i.i738
  %i.ann = phi ptr [ %i.anm, %Wlc_ObjHasArray.exit.thread.i.i.i738 ], [ %i.anl, %bb.cb ]
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !18
  %.val.i739 = load ptr, ptr %i.s, align 8, !tbaa !33 ; 2 uses
  %i.anp = sext i32 %i.ano to i64
  %i.anq = getelementptr inbounds [24 x i8], ptr %.val.i739, i64 %i.anp ; 2 uses
  %i.anr = getelementptr i8, ptr %i.anq, i64 8
  %.val432 = load i32, ptr %i.anr, align 8, !tbaa !39
  %i.ans = getelementptr i8, ptr %i.anq, i64 12
  %.val433 = load i32, ptr %i.ans, align 4, !tbaa !40
  %i.ant = sub nsw i32 %.val432, %.val433
  %i.anu = tail call i32 @llvm.abs.i32(i32 %i.ant, i1 true)
  %i.anv = add nuw nsw i32 %i.anu, 1
  %i.anw = uitofp nneg i32 %i.anv to double
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.ank, label %Wlc_ObjHasArray.exit.thread.i.i.i741, label %Wlc_ObjFanin0.exit743

Wlc_ObjHasArray.exit.thread.i.i.i741:             ; preds = %Wlc_ObjFanin0.exit740
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit743

Wlc_ObjFanin0.exit743:                            ; preds = %Wlc_ObjFanin0.exit740, %Wlc_ObjHasArray.exit.thread.i.i.i741
  %i.anz = phi ptr [ %i.any, %Wlc_ObjHasArray.exit.thread.i.i.i741 ], [ %i.anx, %Wlc_ObjFanin0.exit740 ]
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !18
  %i.aob = sext i32 %i.aoa to i64
  %i.aoc = getelementptr inbounds [24 x i8], ptr %.val.i739, i64 %i.aob ; 2 uses
  %i.aod = getelementptr i8, ptr %i.aoc, i64 8
  %.val430 = load i32, ptr %i.aod, align 8, !tbaa !39
  %i.aoe = getelementptr i8, ptr %i.aoc, i64 12
  %.val431 = load i32, ptr %i.aoe, align 4, !tbaa !40
  %i.aof = sub nsw i32 %.val430, %.val431
  %i.aog = tail call i32 @llvm.abs.i32(i32 %i.aof, i1 true)
  %i.aoh = add nuw nsw i32 %i.aog, 1
  %i.aoi = uitofp nneg i32 %i.aoh to double
  %i.aoj = tail call double @pow(double noundef %i.anw, double noundef %i.aoi) #27
  %i.aok = fptosi double %i.aoj to i32
  %i.aol = mul nsw i32 %i.aok, 10
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.aom = getelementptr inbounds nuw i8, ptr %.val369, i64 196 ; 2 uses
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !18
  %i.aoo = add nsw i32 %i.aon, %i.aol
  store i32 %i.aoo, ptr %i.aom, align 4, !tbaa !18
  br label %bb.cf

bb.cc:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.aop = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !41
  %i.aor = icmp ugt i32 %i.aoq, 2
  %i.aos = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.aor, label %Wlc_ObjHasArray.exit.thread.i.i.i744, label %Wlc_ObjFanin0.exit746

Wlc_ObjHasArray.exit.thread.i.i.i744:             ; preds = %bb.cc
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit746

Wlc_ObjFanin0.exit746:                            ; preds = %bb.cc, %Wlc_ObjHasArray.exit.thread.i.i.i744
  %i.aou = phi ptr [ %i.aot, %Wlc_ObjHasArray.exit.thread.i.i.i744 ], [ %i.aos, %bb.cc ]
  %i.aov = load i32, ptr %i.aou, align 4, !tbaa !18
  %.val.i745 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.aow = sext i32 %i.aov to i64
  %i.aox = getelementptr inbounds [24 x i8], ptr %.val.i745, i64 %i.aow ; 2 uses
  %i.aoy = getelementptr i8, ptr %i.aox, i64 8
  %.val428 = load i32, ptr %i.aoy, align 8, !tbaa !39
  %i.aoz = getelementptr i8, ptr %i.aox, i64 12
  %.val429 = load i32, ptr %i.aoz, align 4, !tbaa !40
  %i.apa = sub nsw i32 %.val428, %.val429
  %i.apb = tail call i32 @llvm.abs.i32(i32 %i.apa, i1 true)
  %i.apc = shl i32 %i.apb, 2
  %i.apd = load i32, ptr %23, align 4, !tbaa !18
  %i.ape = add i32 %i.apd, 4
  %i.apf = add i32 %i.ape, %i.apc
  store i32 %i.apf, ptr %23, align 4, !tbaa !18
  br label %bb.cf

bb.cd:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.apg = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !41
  %i.api = icmp ugt i32 %i.aph, 2                 ; 3 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.api, label %Wlc_ObjHasArray.exit.thread.i.i.i747, label %Wlc_ObjFanin0.exit749

Wlc_ObjHasArray.exit.thread.i.i.i747:             ; preds = %bb.cd
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit749

Wlc_ObjFanin0.exit749:                            ; preds = %bb.cd, %Wlc_ObjHasArray.exit.thread.i.i.i747
  %i.apl = phi ptr [ %i.apk, %Wlc_ObjHasArray.exit.thread.i.i.i747 ], [ %i.apj, %bb.cd ]
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !18
  %.val.i748 = load ptr, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %i.apn = sext i32 %i.apm to i64
  %i.apo = getelementptr inbounds [24 x i8], ptr %.val.i748, i64 %i.apn ; 2 uses
  %i.app = getelementptr i8, ptr %i.apo, i64 8
  %.val426 = load i32, ptr %i.app, align 8, !tbaa !39
  %i.apq = getelementptr i8, ptr %i.apo, i64 12
  %.val427 = load i32, ptr %i.apq, align 4, !tbaa !40
  %i.apr = sub nsw i32 %.val426, %.val427
  %i.aps = tail call i32 @llvm.abs.i32(i32 %i.apr, i1 true)
  %i.apt = mul i32 %i.aps, 11
  %i.apu = add i32 %i.apt, 11
  %i.apv = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.api, label %Wlc_ObjHasArray.exit.thread.i.i.i750, label %Wlc_ObjFanin0.exit752

Wlc_ObjHasArray.exit.thread.i.i.i750:             ; preds = %Wlc_ObjFanin0.exit749
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit752

Wlc_ObjFanin0.exit752:                            ; preds = %Wlc_ObjFanin0.exit749, %Wlc_ObjHasArray.exit.thread.i.i.i750
  %i.apx = phi ptr [ %i.apw, %Wlc_ObjHasArray.exit.thread.i.i.i750 ], [ %i.apv, %Wlc_ObjFanin0.exit749 ]
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !18
  %i.apz = sext i32 %i.apy to i64
  %i.aqa = getelementptr inbounds [24 x i8], ptr %.val.i748, i64 %i.apz ; 2 uses
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 8
  %.val424 = load i32, ptr %i.aqb, align 8, !tbaa !39
  %i.aqc = getelementptr i8, ptr %i.aqa, i64 12
  %.val425 = load i32, ptr %i.aqc, align 4, !tbaa !40
  %i.aqd = sub nsw i32 %.val424, %.val425
  %i.aqe = tail call i32 @llvm.abs.i32(i32 %i.aqd, i1 true)
  %i.aqf = add nuw nsw i32 %i.aqe, 1
  %i.aqg = mul nsw i32 %i.aqf, %i.apu
  %i.aqh = lshr i32 %i.aqg, 3
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.api, label %Wlc_ObjHasArray.exit.thread.i.i.i753, label %Wlc_ObjFanin0.exit755

Wlc_ObjHasArray.exit.thread.i.i.i753:             ; preds = %Wlc_ObjFanin0.exit752
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit755

Wlc_ObjFanin0.exit755:                            ; preds = %Wlc_ObjFanin0.exit752, %Wlc_ObjHasArray.exit.thread.i.i.i753
  %i.aqk = phi ptr [ %i.aqj, %Wlc_ObjHasArray.exit.thread.i.i.i753 ], [ %i.aqi, %Wlc_ObjFanin0.exit752 ]
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !18
  %i.aqm = sext i32 %i.aql to i64
  %i.aqn = getelementptr inbounds [24 x i8], ptr %.val.i748, i64 %i.aqm ; 2 uses
  %i.aqo = getelementptr i8, ptr %i.aqn, i64 8
  %.val422 = load i32, ptr %i.aqo, align 8, !tbaa !39
  %i.aqp = getelementptr i8, ptr %i.aqn, i64 12
  %.val423 = load i32, ptr %i.aqp, align 4, !tbaa !40
  %i.aqq = sub nsw i32 %.val422, %.val423
  %i.aqr = tail call i32 @llvm.abs.i32(i32 %i.aqq, i1 true)
  %i.aqs = mul i32 %i.aqr, 5
  %i.aqt = add i32 %i.aqs, 5
  %i.aqu = lshr i32 %i.aqt, 1
  %i.aqv = load i32, ptr %24, align 4, !tbaa !18
  %i.aqw = add nsw i32 %i.aqh, -5
  %i.aqx = add i32 %i.aqw, %i.aqv
  %i.aqy = add i32 %i.aqx, %i.aqu
  store i32 %i.aqy, ptr %24, align 4, !tbaa !18
  br label %bb.cf

bb.ce:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !41
  %i.arb = icmp ugt i32 %i.ara, 2                 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.arb, label %Wlc_ObjHasArray.exit.thread.i.i.i756, label %Wlc_ObjFanin0.exit758

Wlc_ObjHasArray.exit.thread.i.i.i756:             ; preds = %bb.ce
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !36
  br label %Wlc_ObjFanin0.exit758

Wlc_ObjFanin0.exit758:                            ; preds = %bb.ce, %Wlc_ObjHasArray.exit.thread.i.i.i756
  %i.are = phi ptr [ %i.ard, %Wlc_ObjHasArray.exit.thread.i.i.i756 ], [ %i.arc, %bb.ce ]
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !18
  %.val.i757 = load ptr, ptr %i.s, align 8, !tbaa !33 ; 2 uses
  %i.arg = sext i32 %i.arf to i64
  %i.arh = getelementptr inbounds [24 x i8], ptr %.val.i757, i64 %i.arg ; 2 uses
  %i.ari = getelementptr i8, ptr %i.arh, i64 8
  %.val420 = load i32, ptr %i.ari, align 8, !tbaa !39
  %i.arj = getelementptr i8, ptr %i.arh, i64 12
  %.val421 = load i32, ptr %i.arj, align 4, !tbaa !40
  %i.ark = sub nsw i32 %.val420, %.val421
  %i.arl = tail call i32 @llvm.abs.i32(i32 %i.ark, i1 true)
  %i.arm = mul i32 %i.arl, 5
  %i.arn = add i32 %i.arm, 5
  %i.aro = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.arb, label %Wlc_ObjHasArray.exit.thread.i.i.i759, label %Wlc_ObjFanin1.exit761

Wlc_ObjHasArray.exit.thread.i.i.i759:             ; preds = %Wlc_ObjFanin0.exit758
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !36
  br label %Wlc_ObjFanin1.exit761

Wlc_ObjFanin1.exit761:                            ; preds = %Wlc_ObjFanin0.exit758, %Wlc_ObjHasArray.exit.thread.i.i.i759
  %i.arq = phi ptr [ %i.arp, %Wlc_ObjHasArray.exit.thread.i.i.i759 ], [ %i.aro, %Wlc_ObjFanin0.exit758 ]
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 4
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !18
  %i.art = sext i32 %i.ars to i64
  %i.aru = getelementptr inbounds [24 x i8], ptr %.val.i757, i64 %i.art ; 2 uses
  %i.arv = getelementptr i8, ptr %i.aru, i64 8
  %.val418 = load i32, ptr %i.arv, align 8, !tbaa !39
  %i.arw = getelementptr i8, ptr %i.aru, i64 12
  %.val419 = load i32, ptr %i.arw, align 4, !tbaa !40
  %i.arx = sub nsw i32 %.val418, %.val419
  %i.ary = tail call i32 @llvm.abs.i32(i32 %i.arx, i1 true)
  %i.arz = add nuw nsw i32 %i.ary, 1
  %i.asa = mul nsw i32 %i.arz, %i.arn
  %i.asb = load i32, ptr %25, align 4, !tbaa !18
  %i.asc = add nsw i32 %i.asa, %i.asb
  store i32 %i.asc, ptr %25, align 4, !tbaa !18
  br label %bb.cf

bb.cf:                                            ; preds = %Wlc_NtkPrintDistribAddOne.exit, %bb.ar, %Wlc_ObjFanin0.exit600, %Wlc_ObjFanin0.exit608, %Wlc_ObjFanin0.exit616, %Wlc_ObjFanin0.exit620, %Wlc_ObjFanin0.exit626, %Wlc_ObjFanin0.exit632, %Wlc_ObjFanin0.exit638, %Wlc_ObjFanin1.exit650, %Wlc_ObjFanin1.exit662, %Wlc_ObjFanin0.exit668, %Wlc_ObjFanin0.exit674, %Wlc_ObjFanin0.exit680, %Wlc_ObjFanin0.exit686, %Wlc_ObjFanin0.exit692, %Wlc_ObjFanin0.exit698, %Wlc_ObjFanin0.exit704, %Wlc_ObjFanin0.exit719, %Wlc_ObjFanin0.exit737, %Wlc_ObjFanin0.exit746, %Wlc_ObjFanin1.exit761, %Wlc_ObjFanin0.exit755, %Wlc_ObjFanin0.exit743, %Wlc_ObjFanin0.exit728, %Wlc_ObjFanin1.exit710, %Wlc_ObjFanin0.exit701, %Wlc_ObjFanin0.exit695, %Wlc_ObjFanin0.exit689, %Wlc_ObjFanin0.exit683, %Wlc_ObjFanin0.exit677, %Wlc_ObjFanin0.exit671, %Wlc_ObjFanin0.exit665, %Wlc_ObjFanin1.exit656, %Wlc_ObjFanin1.exit644, %Wlc_ObjFanin0.exit635, %Wlc_ObjFanin0.exit629, %Wlc_ObjFanin0.exit623, %Wlc_ObjFanin0.exit612, %Wlc_ObjFanin0.exit604, %Wlc_ObjFanin0.exit597
  %indvars.iv.next840 = add nuw nsw i64 %indvars.iv839, 1 ; 2 uses
  %.val362 = load i32, ptr %i.q, align 8, !tbaa !34
  %i.asd = sext i32 %.val362 to i64
  %i.ase = icmp slt i64 %indvars.iv.next840, %i.asd
  br i1 %i.ase, label %bb.d, label %.critedge, !llvm.loop !114

.critedge:                                        ; preds = %bb.cf
  %.not342 = icmp eq i32 %.1331, 0
  br i1 %.not342, label %.critedge.thread, label %bb.cg

bb.cg:                                            ; preds = %.critedge
  %i.asf = getelementptr i8, ptr %0, i64 700
  %.val = load i32, ptr %i.asf, align 4, !tbaa !35
  %i.asg = icmp sgt i32 %.val, 0
  br i1 %i.asg, label %bb.ch, label %.critedge.thread

bb.ch:                                            ; preds = %bb.cg
  %i.ash = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.1331) ; 0 uses
  %i.asi = getelementptr i8, ptr %0, i64 640
  %.val357 = load ptr, ptr %i.asi, align 8, !tbaa !33
  %i.asj = ptrtoint ptr %.2334 to i64
  %i.ask = ptrtoint ptr %.val357 to i64
  %i.asl = sub i64 %i.asj, %i.ask
  %i.asm = sdiv exact i64 %i.asl, 24              ; 2 uses
  %i.asn = trunc i64 %i.asm to i32
  %i.aso = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !42
  %i.asq = getelementptr i8, ptr %0, i64 704
  %.val361 = load ptr, ptr %i.asq, align 8, !tbaa !29
  %sext = shl i64 %i.asm, 32
  %i.asr = ashr exact i64 %sext, 30
  %i.ass = getelementptr inbounds i8, ptr %.val361, i64 %i.asr
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !18
  %i.asu = tail call ptr @Abc_NamStr(ptr noundef %i.asp, i32 noundef %i.ast) #27
  %i.asv = getelementptr i8, ptr %.2334, i64 8
  %.0332.val = load i32, ptr %i.asv, align 8, !tbaa !39 ; 2 uses
  %i.asw = getelementptr i8, ptr %.2334, i64 12
  %.0332.val417 = load i32, ptr %i.asw, align 4, !tbaa !40 ; 2 uses
  %i.asx = sub nsw i32 %.0332.val, %.0332.val417
  %i.asy = tail call i32 @llvm.abs.i32(i32 %i.asx, i1 true)
  %i.asz = add nuw nsw i32 %i.asy, 1
  %i.ata = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.asn, ptr noundef %i.asu, i32 noundef %i.asz, i32 noundef %.0332.val, i32 noundef %.0332.val417) ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader, %bb.ch, %bb.cg, %.critedge
  %i.atb = select i1 %.not341, ptr @.str.9, ptr @.str.8
  %i.atc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %i.atb) ; 0 uses
  %.val413 = load ptr, ptr %i.h, align 8, !tbaa !46 ; 4 uses
  %.val412 = load ptr, ptr %i.k, align 8, !tbaa !46 ; 4 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ate = getelementptr i8, ptr %0, i64 20
  %i.atf = getelementptr i8, ptr %0, i64 24
  %i.atg = getelementptr i8, ptr %0, i64 640      ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge.thread, %bb.da
  %indvars.iv845 = phi i64 [ 0, %.critedge.thread ], [ %indvars.iv.next846, %bb.da ] ; 10 uses
  %i.ati = getelementptr inbounds nuw [8 x i8], ptr %.val413, i64 %indvars.iv845 ; 2 uses
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !61 ; 2 uses
  %i.atk = getelementptr inbounds nuw [8 x i8], ptr %.val412, i64 %indvars.iv845 ; 2 uses
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !61
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %indvars.iv845 ; 2 uses
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !18 ; 2 uses
  %i.ato = icmp eq i32 %i.atn, 0
  br i1 %i.ato, label %bb.da, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.atp = getelementptr inbounds nuw [8 x i8], ptr @Wlc_Names, i64 %indvars.iv845
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !17
  %i.atr = trunc nuw nsw i64 %indvars.iv845 to i32
  %i.ats = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.atr, ptr noundef %i.atq, i32 noundef %i.atn) ; 0 uses
  br i1 %.not341, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.att = icmp eq i64 %indvars.iv845, 1
  br i1 %i.att, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  tail call void @Wlc_NtkMarkCone(ptr noundef nonnull readonly %0, i32 noundef -1, i32 noundef -1, i32 noundef 1, i32 noundef 0)
  %.val.i762 = load i32, ptr %i.ate, align 4, !tbaa !35 ; 4 uses
  %i.atu = icmp sgt i32 %.val.i762, 0
  br i1 %i.atu, label %.lr.ph.i764, label %.critedge.i763

.lr.ph.i764:                                      ; preds = %bb.cl
  %.val10.i = load ptr, ptr %i.atf, align 8, !tbaa !29 ; 3 uses
  %.val11.i = load ptr, ptr %i.atg, align 8, !tbaa !33 ; 3 uses
  %wide.trip.count.i765 = zext nneg i32 %.val.i762 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i765, 1
  %i.atv = icmp eq i32 %.val.i762, 1
  br i1 %i.atv, label %.epil.preheader, label %.lr.ph.i764.new

.lr.ph.i764.new:                                  ; preds = %.lr.ph.i764
  %unroll_iter = and i64 %wide.trip.count.i765, 2147483646
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.lr.ph.i764.new
  %indvars.iv.i766 = phi i64 [ 0, %.lr.ph.i764.new ], [ %indvars.iv.next.i767.1, %bb.cm ] ; 3 uses
  %.013.i = phi i32 [ 0, %.lr.ph.i764.new ], [ %i.auo, %bb.cm ]
  %niter = phi i64 [ 0, %.lr.ph.i764.new ], [ %niter.next.1, %bb.cm ]
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %indvars.iv.i766
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !18
  %i.aty = sext i32 %i.atx to i64
  %i.atz = getelementptr inbounds [24 x i8], ptr %.val11.i, i64 %i.aty
  %i.aua = load i16, ptr %i.atz, align 8
  %i.aub = lshr i16 %i.aua, 7
  %i.auc = and i16 %i.aub, 1
  %i.aud = zext nneg i16 %i.auc to i32
  %i.aue = add nuw nsw i32 %.013.i, %i.aud
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %indvars.iv.i766
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 4
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !18
  %i.aui = sext i32 %i.auh to i64
  %i.auj = getelementptr inbounds [24 x i8], ptr %.val11.i, i64 %i.aui
  %i.auk = load i16, ptr %i.auj, align 8
  %i.aul = lshr i16 %i.auk, 7
  %i.aum = and i16 %i.aul, 1
  %i.aun = zext nneg i16 %i.aum to i32
  %i.auo = add nuw nsw i32 %i.aue, %i.aun         ; 3 uses
  %indvars.iv.next.i767.1 = add nuw nsw i64 %indvars.iv.i766, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.i763.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !1

.critedge.i763.loopexit.unr-lcssa:                ; preds = %bb.cm
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i763, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.i763.loopexit.unr-lcssa, %.lr.ph.i764
  %indvars.iv.i766.epil.init = phi i64 [ 0, %.lr.ph.i764 ], [ %indvars.iv.next.i767.1, %.critedge.i763.loopexit.unr-lcssa ]
  %.013.i.epil.init = phi i32 [ 0, %.lr.ph.i764 ], [ %i.auo, %.critedge.i763.loopexit.unr-lcssa ]
  %lcmp.mod913 = trunc i32 %.val.i762 to i1
  tail call void @llvm.assume(i1 %lcmp.mod913)
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %indvars.iv.i766.epil.init
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !18
  %i.aur = sext i32 %i.auq to i64
  %i.aus = getelementptr inbounds [24 x i8], ptr %.val11.i, i64 %i.aur
  %i.aut = load i16, ptr %i.aus, align 8
  %i.auu = lshr i16 %i.aut, 7
  %i.auv = and i16 %i.auu, 1
  %i.auw = zext nneg i16 %i.auv to i32
  %i.aux = add nuw nsw i32 %.013.i.epil.init, %i.auw
  br label %.critedge.i763

.critedge.i763:                                   ; preds = %.epil.preheader, %.critedge.i763.loopexit.unr-lcssa, %bb.cl
  %.0.lcssa.i = phi i32 [ 0, %bb.cl ], [ %i.auo, %.critedge.i763.loopexit.unr-lcssa ], [ %i.aux, %.epil.preheader ] ; 2 uses
  %.val56.i.i = load i32, ptr %i.q, align 8, !tbaa !34
  %i.auy = icmp sgt i32 %.val56.i.i, 1
  br i1 %i.auy, label %.lr.ph.i.i, label %Wlc_NtkCountRealPis.exit

.lr.ph.i.i:                                       ; preds = %.critedge.i763, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 1, %.critedge.i763 ] ; 2 uses
  %.val.i.i = load ptr, ptr %i.atg, align 8, !tbaa !33
  %i.auz = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.ava = load i16, ptr %i.auz, align 8
  %i.avb = and i16 %i.ava, -129
  store i16 %i.avb, ptr %i.auz, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val5.i.i = load i32, ptr %i.q, align 8, !tbaa !34
  %i.avc = sext i32 %.val5.i.i to i64
  %i.avd = icmp slt i64 %indvars.iv.next.i.i, %i.avc
  br i1 %i.avd, label %.lr.ph.i.i, label %Wlc_NtkCountRealPis.exit, !llvm.loop !0

bb.cn:                                            ; preds = %bb.ck
  %i.ave = load i32, ptr %i.atm, align 4, !tbaa !18
  br label %Wlc_NtkCountRealPis.exit

Wlc_NtkCountRealPis.exit:                         ; preds = %.lr.ph.i.i, %.critedge.i763, %bb.cn
  %i.avf = phi i32 [ %i.ave, %bb.cn ], [ %.0.lcssa.i, %.critedge.i763 ], [ %.0.lcssa.i, %.lr.ph.i.i ]
  %i.avg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv845
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !18 ; 2 uses
  %i.avj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.avi) ; 0 uses
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.ath, i64 %indvars.iv845
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !18 ; 2 uses
  %i.avm = sub i32 %i.avi, %i.avf
  %i.avn = add i32 %i.avm, %i.avl
  %i.avo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.avn) ; 0 uses
  %i.avp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.avl) ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %Wlc_NtkCountRealPis.exit, %bb.cj
  %.val358 = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %.val358, i64 %indvars.iv845
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !18
  %i.avs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.avr) ; 0 uses
  %i.avt = load ptr, ptr %i.ati, align 8, !tbaa !61 ; 2 uses
  %i.avu = load ptr, ptr %i.atk, align 8, !tbaa !61 ; 2 uses
  %i.avv = getelementptr i8, ptr %i.avt, i64 8
  %.val10.i770 = load ptr, ptr %i.avv, align 8, !tbaa !49 ; 6 uses
  %i.avw = getelementptr i8, ptr %i.avt, i64 4
  %.val11.i771 = load i32, ptr %i.avw, align 4, !tbaa !62 ; 4 uses
  %i.avx = getelementptr i8, ptr %i.avu, i64 8
  %.val9.i772 = load ptr, ptr %i.avx, align 8, !tbaa !49 ; 11 uses
  %i.avy = icmp sgt i32 %.val11.i771, 1
  br i1 %i.avy, label %.lr.ph36.preheader.i.i, label %Vec_WrdReverseOrder.exit.i

.lr.ph36.preheader.i.i:                           ; preds = %bb.co
  %i.avz = add nsw i32 %.val11.i771, -1
  %wide.trip.count44.i.i = zext nneg i32 %i.avz to i64
end_hunk_1
