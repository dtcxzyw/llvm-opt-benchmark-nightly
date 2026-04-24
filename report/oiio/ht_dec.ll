inline.NumInlined: 55
inline.NumDeleted: 13
begin_hunk_0_@rev_init
define internal fastcc void @rev_init(ptr noundef nonnull writeonly captures(none) initializes((0, 28)) %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef range(i32 2, 4080) %3) unnamed_addr #4 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -2
  %i.d = add nsw i32 %3, -2                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !122
  %i.f = getelementptr i8, ptr %i.b, i64 -3       ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !123
  %i.g = load i8, ptr %i.c, align 1, !tbaa !46    ; 2 uses
  %i.h = lshr i8 %i.g, 4
  %i.i = zext nneg i8 %i.h to i64                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !49
  %i.k = and i64 %i.i, 7
  %i.l = icmp eq i64 %i.k, 7
  %i.m = select i1 %i.l, i32 3, i32 4             ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !52
  %i.o = icmp ugt i8 %i.g, -113                   ; 3 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i32 %i.p, ptr %i.q, align 8, !tbaa !124
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 3
  %i.u = add nuw nsw i32 %i.t, 1
  %. = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.d) ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread41, label %.lr.ph

.thread41:                                        ; preds = %bb.a
  %i.v = sub nuw nsw i32 %i.d, %.
  br label %.loopexit.i.sink.split

.lr.ph:                                           ; preds = %bb.a
  %4 = getelementptr i8, ptr %i.b, i64 -4         ; 4 uses
  store ptr %4, ptr %0, align 8, !tbaa !123
  %5 = load i8, ptr %i.f, align 1, !tbaa !46      ; 2 uses
  %6 = zext i8 %5 to i64                          ; 2 uses
  %7 = and i64 %6, 127
  %8 = icmp eq i64 %7, 127
  %9 = select i1 %i.o, i1 %8, i1 false
  %10 = select i1 %9, i32 7, i32 8
  %11 = zext nneg i32 %i.m to i64
  %12 = shl nuw nsw i64 %6, %11
  %13 = or i64 %12, %i.i                          ; 3 uses
  store i64 %13, ptr %i.j, align 8, !tbaa !49
  %14 = add nuw nsw i32 %10, %i.m                 ; 4 uses
  store i32 %14, ptr %i.n, align 8, !tbaa !52
  %15 = icmp ugt i8 %5, -113                      ; 3 uses
  %16 = zext i1 %15 to i32
  store i32 %16, ptr %i.q, align 8, !tbaa !124
  %exitcond.not = icmp eq i32 %., 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %17 = getelementptr i8, ptr %i.b, i64 -5        ; 4 uses
  store ptr %17, ptr %0, align 8, !tbaa !123
  %18 = load i8, ptr %4, align 1, !tbaa !46       ; 2 uses
  %19 = zext i8 %18 to i64                        ; 2 uses
  %20 = and i64 %19, 127
  %21 = icmp eq i64 %20, 127
  %22 = select i1 %15, i1 %21, i1 false
  %23 = select i1 %22, i32 7, i32 8
  %24 = zext nneg i32 %14 to i64
  %25 = shl nuw nsw i64 %19, %24
  %26 = or i64 %25, %13                           ; 3 uses
  store i64 %26, ptr %i.j, align 8, !tbaa !49
  %27 = add nuw nsw i32 %23, %14                  ; 4 uses
  store i32 %27, ptr %i.n, align 8, !tbaa !52
  %28 = icmp ugt i8 %18, -113                     ; 3 uses
  %29 = zext i1 %28 to i32
  store i32 %29, ptr %i.q, align 8, !tbaa !124
  %exitcond.not.1 = icmp eq i32 %., 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph.1
  %i.w = getelementptr i8, ptr %i.b, i64 -6       ; 4 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !123
  %i.x = load i8, ptr %17, align 1, !tbaa !46     ; 2 uses
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = and i64 %i.y, 127
  %i.aa = icmp eq i64 %i.z, 127
  %i.ab = select i1 %28, i1 %i.aa, i1 false
  %i.ac = select i1 %i.ab, i32 7, i32 8
  %i.ad = zext nneg i32 %27 to i64
  %i.ae = shl i64 %i.y, %i.ad
  %i.af = or i64 %i.ae, %26                       ; 3 uses
  store i64 %i.af, ptr %i.j, align 8, !tbaa !49
  %i.ag = add nuw nsw i32 %i.ac, %27              ; 4 uses
  store i32 %i.ag, ptr %i.n, align 8, !tbaa !52
  %i.ah = icmp ugt i8 %i.x, -113                  ; 3 uses
  %i.ai = zext i1 %i.ah to i32
  store i32 %i.ai, ptr %i.q, align 8, !tbaa !124
  %exitcond.not.a = icmp eq i32 %., 3
  br i1 %exitcond.not.a, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.a
  %30 = getelementptr i8, ptr %i.b, i64 -7        ; 2 uses
  store ptr %30, ptr %0, align 8, !tbaa !123
  %31 = load i8, ptr %i.w, align 1, !tbaa !46     ; 2 uses
  %32 = zext i8 %31 to i64                        ; 2 uses
  %33 = and i64 %32, 127
  %34 = icmp eq i64 %33, 127
  %35 = select i1 %i.ah, i1 %34, i1 false
  %36 = select i1 %35, i32 7, i32 8
  %37 = zext nneg i32 %i.ag to i64
  %38 = shl i64 %32, %37
  %39 = or i64 %38, %i.af                         ; 2 uses
  store i64 %39, ptr %i.j, align 8, !tbaa !49
  %40 = add nuw nsw i32 %36, %i.ag                ; 2 uses
  store i32 %40, ptr %i.n, align 8, !tbaa !52
  %41 = icmp ugt i8 %31, -113                     ; 2 uses
  %42 = zext i1 %41 to i32
  store i32 %42, ptr %i.q, align 8, !tbaa !124
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph.a, %.lr.ph.1, %.lr.ph
  %.lcssa57 = phi ptr [ %i.f, %.lr.ph ], [ %4, %.lr.ph.1 ], [ %17, %.lr.ph.a ], [ %i.w, %.lr.ph.3 ] ; 2 uses
  %.lcssa56 = phi ptr [ %4, %.lr.ph ], [ %17, %.lr.ph.1 ], [ %i.w, %.lr.ph.a ], [ %30, %.lr.ph.3 ] ; 2 uses
  %.lcssa55 = phi i64 [ %13, %.lr.ph ], [ %26, %.lr.ph.1 ], [ %i.af, %.lr.ph.a ], [ %39, %.lr.ph.3 ] ; 4 uses
  %.lcssa54 = phi i32 [ %14, %.lr.ph ], [ %27, %.lr.ph.1 ], [ %i.ag, %.lr.ph.a ], [ %40, %.lr.ph.3 ] ; 5 uses
  %.lcssa53 = phi i1 [ %15, %.lr.ph ], [ %28, %.lr.ph.1 ], [ %i.ah, %.lr.ph.a ], [ %41, %.lr.ph.3 ] ; 4 uses
  %i.aj = sub nsw i32 %i.d, %.                    ; 9 uses
  store i32 %i.aj, ptr %i.e, align 4, !tbaa !122
  %i.ak = icmp ugt i32 %.lcssa54, 32
  br i1 %i.ak, label %rev_read.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
end_hunk_0
begin_hunk_1_@rev_init:bb.a
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds i8, ptr %.lcssa57, i64 -4
  %.val.i = load i32, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds i8, ptr %.lcssa57, i64 -5
  store ptr %i.an, ptr %0, align 8, !tbaa !123
  %i.ao = add nsw i32 %i.aj, -4
  br label %.loopexit.i.sink.split
end_hunk_1
begin_hunk_2_@rev_init:bb.a
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %i.as = phi ptr [ %.lcssa56, %.preheader.i.preheader.new ], [ %i.bb, %.preheader.i ] ; 3 uses
  %.047.i = phi i32 [ 0, %.preheader.i.preheader.new ], [ %i.bf, %.preheader.i ]
  %.04446.i = phi i32 [ 24, %.preheader.i.preheader.new ], [ %i.bh, %.preheader.i ] ; 3 uses
  %i.at = phi i32 [ %i.aj, %.preheader.i.preheader.new ], [ %i.bg, %.preheader.i ] ; 2 uses
end_hunk_2
begin_hunk_3_@rev_init:bb.a
  %i.bh = add nsw i32 %.04446.i, -16              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.i.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !125

.loopexit.i.sink.split:                           ; preds = %bb.c, %.thread41
  %.sink = phi i32 [ %i.v, %.thread41 ], [ %i.ao, %bb.c ]
  %.ph = phi i64 [ %i.i, %.thread41 ], [ %.lcssa55, %bb.c ]
  %.ph46 = phi i1 [ %i.o, %.thread41 ], [ %.lcssa53, %bb.c ]
  %.ph47 = phi i32 [ %i.m, %.thread41 ], [ %.lcssa54, %bb.c ]
  %.1.i.ph = phi i32 [ 0, %.thread41 ], [ %.val.i, %bb.c ]
  store i32 %.sink, ptr %i.e, align 4, !tbaa !122
  br label %.loopexit.i
end_hunk_3
begin_hunk_4_@rev_init:bb.a
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init = phi ptr [ %.lcssa56, %.preheader.i.preheader ], [ %i.bb, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.047.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %i.bf, %.loopexit.i.loopexit.unr-lcssa ]
  %.04446.i.epil.init = phi i32 [ 24, %.preheader.i.preheader ], [ %i.bh, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init59 = phi i32 [ %i.aj, %.preheader.i.preheader ], [ %i.bg, %.loopexit.i.loopexit.unr-lcssa ]
end_hunk_4
begin_hunk_5_@rev_init:bb.a
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.loopexit.i.sink.split, %bb.d
  %i.bo = phi i64 [ %.ph, %.loopexit.i.sink.split ], [ %.lcssa55, %bb.d ], [ %.lcssa55, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa55, %.preheader.i.epil.preheader ]
  %i.bp = phi i1 [ %.ph46, %.loopexit.i.sink.split ], [ %.lcssa53, %bb.d ], [ %.lcssa53, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa53, %.preheader.i.epil.preheader ]
  %i.bq = phi i32 [ %.ph47, %.loopexit.i.sink.split ], [ %.lcssa54, %bb.d ], [ %.lcssa54, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa54, %.preheader.i.epil.preheader ] ; 2 uses
  %.1.i = phi i32 [ %.1.i.ph, %.loopexit.i.sink.split ], [ 0, %bb.d ], [ %i.bf, %.loopexit.i.loopexit.unr-lcssa ], [ %i.bm, %.preheader.i.epil.preheader ] ; 9 uses
  %i.br = lshr i32 %.1.i, 24
  %i.bs = and i32 %.1.i, 2130706432
end_hunk_5
begin_hunk_6_@rev_init:bb.a
; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @frwd_init(ptr noundef nonnull writeonly captures(none) initializes((0, 32)) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #4 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !126
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %3, ptr %i.e, align 4, !tbaa !127
  %i.f = ptrtoint ptr %1 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 3                          ; 3 uses
  %i.i = add nsw i32 %2, -1                       ; 3 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !128
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !126
  %i.l = load i8, ptr %1, align 1, !tbaa !46
  %i.m = zext i8 %i.l to i32
  br label %bb.c
end_hunk_6
begin_hunk_7_@frwd_init:bb.a
  store i32 8, ptr %i.b, align 8, !tbaa !55
  %i.q = icmp eq i32 %i.o, 255                    ; 3 uses
  %i.r = zext i1 %i.q to i32
  store i32 %i.r, ptr %i.c, align 4, !tbaa !129
  %exitcond.not = icmp eq i32 %i.h, 3
  br i1 %exitcond.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %2, -2                       ; 3 uses
  store i32 %i.s, ptr %i.d, align 8, !tbaa !128
  %i.t = icmp sgt i32 %2, 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !126
  %i.v = load i8, ptr %i.n, align 1, !tbaa !46
  %i.w = zext i8 %i.v to i32
  br label %bb.f
end_hunk_7
begin_hunk_8_@frwd_init:bb.a
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !55
  %i.ad = icmp eq i32 %i.y, 255                   ; 3 uses
  %i.ae = zext i1 %i.ad to i32
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !129
  %exitcond.not.1 = icmp eq i32 %i.h, 2
  br i1 %exitcond.not.1, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %2, -3                      ; 3 uses
  store i32 %i.af, ptr %i.d, align 8, !tbaa !128
  %i.ag = icmp sgt i32 %2, 2
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !126
  %i.ai = load i8, ptr %i.x, align 1, !tbaa !46
  %i.aj = zext i8 %i.ai to i32
  br label %bb.i
end_hunk_8
begin_hunk_9_@frwd_init:bb.a
  store i32 %i.ar, ptr %i.b, align 8, !tbaa !55
  %i.as = icmp eq i32 %i.al, 255                  ; 3 uses
  %i.at = zext i1 %i.as to i32
  store i32 %i.at, ptr %i.c, align 4, !tbaa !129
  %exitcond.not.2 = icmp eq i32 %i.h, 1
  br i1 %exitcond.not.2, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = add nsw i32 %2, -4                      ; 2 uses
  store i32 %i.au, ptr %i.d, align 8, !tbaa !128
  %i.av = icmp sgt i32 %2, 3
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !126
  %i.ax = load i8, ptr %i.ak, align 1, !tbaa !46
  %i.ay = zext i8 %i.ax to i32
  br label %bb.l
end_hunk_9
begin_hunk_10_@frwd_init:bb.a
  store i32 %i.bg, ptr %i.b, align 8, !tbaa !55
  %i.bh = icmp eq i32 %i.ba, 255                  ; 2 uses
  %i.bi = zext i1 %i.bh to i32
  store i32 %i.bi, ptr %i.c, align 4, !tbaa !129
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.f, %bb.c
end_hunk_10
begin_hunk_11_@frwd_init:bb.a
bb.n:                                             ; preds = %bb.m
  %.val.i = load i32, ptr %.lcssa45, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa45, i64 4
  store ptr %i.bk, ptr %0, align 8, !tbaa !126
  %i.bl = add nsw i32 %.lcssa41, -5
  store i32 %i.bl, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit

bb.o:                                             ; preds = %bb.m
end_hunk_11
begin_hunk_12_@frwd_init:bb.a
  %.04246.i = phi i32 [ %i.bz, %.lr.ph.i ], [ 0, %bb.o ] ; 3 uses
  %i.bp = phi i32 [ %i.by, %.lr.ph.i ], [ %.lcssa40, %bb.o ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  store ptr %i.bq, ptr %0, align 8, !tbaa !126
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !46
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl i32 255, %.04246.i
end_hunk_12
begin_hunk_13_@frwd_init:bb.a
  %i.bw = shl i32 %i.bs, %.04246.i
  %i.bx = or i32 %i.bw, %i.bv                     ; 2 uses
  %i.by = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.by, ptr %i.d, align 8, !tbaa !128
  %i.bz = add nuw nsw i32 %.04246.i, 8
  %i.ca = icmp samesign ugt i32 %i.bp, 1
  br i1 %i.ca, label %.lr.ph.i, label %frwd_read.exit, !llvm.loop !130

frwd_read.exit:                                   ; preds = %.lr.ph.i, %bb.n, %bb.o
  %.1.i = phi i32 [ %.val.i, %bb.n ], [ %i.bn, %bb.o ], [ %i.bx, %.lr.ph.i ] ; 4 uses
end_hunk_13
begin_hunk_14_@frwd_init:bb.a
  %i.cv = select i1 %i.cp, i32 7, i32 8
  %i.cw = icmp eq i32 %i.cq, 255
  %i.cx = zext i1 %i.cw to i32
  store i32 %i.cx, ptr %i.c, align 4, !tbaa !129
  %i.cy = zext i32 %i.cu to i64
  %i.cz = zext nneg i32 %.lcssa43 to i64
  %i.da = shl i64 %i.cy, %i.cz
end_hunk_14
begin_hunk_15_@rev_init_mrp:bb.a
  store i32 %i.ck, ptr %i.f, align 4, !tbaa !122
  %i.cl = add nsw i32 %.04446.i, -8
  %i.cm = icmp samesign ugt i32 %i.ce, 1
  br i1 %i.cm, label %.preheader.i, label %.loopexit.i, !llvm.loop !131

.loopexit.i:                                      ; preds = %.preheader.i, %bb.p, %bb.o
  %.1.i = phi i32 [ %.val.i, %bb.o ], [ 0, %bb.p ], [ %i.cj, %.preheader.i ] ; 9 uses
end_hunk_15
begin_hunk_16_@mel_get_run:bb.a
  %i.ak = add nuw nsw i32 %.05356.i.i, 16         ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !132

._crit_edge.i.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_16
begin_hunk_17_@rev_fetch:bb.a
  %i.ab = add nsw i32 %.04446.i, -16              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %rev_read.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !125

rev_read.exit.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_17
begin_hunk_18_@rev_fetch:bb.a
  %i.da = add nsw i32 %.04446.i10, -16            ; 2 uses
  %niter36.next.1 = add i32 %niter36, 2           ; 2 uses
  %niter36.ncmp.1.not = icmp eq i32 %niter36.next.1, %unroll_iter35
  br i1 %niter36.ncmp.1.not, label %rev_read.exit12.loopexit.unr-lcssa, label %bb.i, !llvm.loop !125

rev_read.exit12.loopexit.unr-lcssa:               ; preds = %bb.i
  %lcmp.mod32.not = icmp eq i32 %xtraiter27, 0
end_hunk_18
begin_hunk_19_@frwd_fetch:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !128  ; 10 uses
  %i.f = icmp sgt i32 %i.e, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %.val.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.h, ptr %0, align 8, !tbaa !126
  %i.i = add nsw i32 %i.e, -4                     ; 2 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %i.e, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !127
  %.not44.i = icmp ne i32 %i.l, 0
  %i.m = sext i1 %.not44.i to i32                 ; 3 uses
  br i1 %i.j, label %.lr.ph.i, label %frwd_read.exit

.lr.ph.i:                                         ; preds = %bb.d
  %.promoted.i = load ptr, ptr %0, align 8, !tbaa !126 ; 2 uses
  %xtraiter = and i32 %i.e, 1
  %i.n = icmp eq i32 %i.e, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new
end_hunk_19
begin_hunk_20_@frwd_fetch:bb.a
  %i.p = phi i32 [ %i.e, %.lr.ph.i.new ], [ %i.ai, %bb.e ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !126
  %i.r = load i8, ptr %i.o, align 1, !tbaa !46
  %i.s = zext i8 %i.r to i32
  %i.t = shl i32 255, %.04246.i
end_hunk_20
begin_hunk_21_@frwd_fetch:bb.a
  %i.w = shl i32 %i.s, %.04246.i
  %i.x = or i32 %i.w, %i.v
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.d, align 8, !tbaa !128
  %i.z = or disjoint i32 %.04246.i, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !126
  %i.ab = load i8, ptr %i.q, align 1, !tbaa !46
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl i32 65280, %.04246.i
end_hunk_21
begin_hunk_22_@frwd_fetch:bb.a
  %i.ag = shl i32 %i.ac, %i.z
  %i.ah = or i32 %i.ag, %i.af                     ; 3 uses
  %i.ai = add nsw i32 %i.p, -2                    ; 3 uses
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !128
  %i.aj = add nuw nsw i32 %.04246.i, 16           ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %frwd_read.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !130

frwd_read.exit.loopexit.unr-lcssa:                ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_22
begin_hunk_23_@frwd_fetch:bb.a
  %lcmp.mod26 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.ak = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  store ptr %i.ak, ptr %0, align 8, !tbaa !126
  %i.al = load i8, ptr %.epil.init, align 1, !tbaa !46
  %i.am = zext i8 %i.al to i32
  %i.an = shl i32 255, %.04246.i.epil.init
end_hunk_23
begin_hunk_24_@frwd_fetch:bb.a
  %i.aq = shl i32 %i.am, %.04246.i.epil.init
  %i.ar = or i32 %i.aq, %i.ap
  %i.as = add nsw i32 %.epil.init24, -1
  store i32 %i.as, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit

frwd_read.exit:                                   ; preds = %.epil.preheader, %frwd_read.exit.loopexit.unr-lcssa, %bb.c, %bb.d
  %i.at = phi i32 [ %i.i, %bb.c ], [ %i.e, %bb.d ], [ 0, %frwd_read.exit.loopexit.unr-lcssa ], [ 0, %.epil.preheader ] ; 9 uses
  %.1.i = phi i32 [ %.val.i, %bb.c ], [ %i.m, %bb.d ], [ %i.ah, %frwd_read.exit.loopexit.unr-lcssa ], [ %i.ar, %.epil.preheader ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !129
  %.not45.not.i = icmp eq i32 %i.av, 0
  %i.aw = select i1 %.not45.not.i, i32 8, i32 7   ; 2 uses
  %i.ax = and i32 %.1.i, 255                      ; 2 uses
end_hunk_24
begin_hunk_25_@frwd_fetch:bb.a
  %i.bq = select i1 %i.bk, i32 7, i32 8
  %i.br = icmp eq i32 %i.bl, 255                  ; 2 uses
  %i.bs = zext i1 %i.br to i32
  store i32 %i.bs, ptr %i.au, align 4, !tbaa !129
  %i.bt = zext i32 %i.bp to i64
  %i.bu = zext nneg i32 %i.b to i64
  %i.bv = shl nuw nsw i64 %i.bt, %i.bu
end_hunk_25
begin_hunk_26_@frwd_fetch:bb.a
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = load ptr, ptr %0, align 8, !tbaa !126   ; 2 uses
  %.val.i12 = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store ptr %i.ce, ptr %0, align 8, !tbaa !126
  %i.cf = add nsw i32 %i.at, -4
  store i32 %i.cf, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit13

bb.h:                                             ; preds = %bb.f
  %i.cg = icmp sgt i32 %i.at, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !127
  %.not44.i5 = icmp ne i32 %i.ci, 0
  %i.cj = sext i1 %.not44.i5 to i32               ; 3 uses
  br i1 %i.cg, label %.lr.ph.i8, label %frwd_read.exit13

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %0, align 8, !tbaa !126 ; 2 uses
  %xtraiter28 = and i32 %i.at, 1
  %i.ck = icmp eq i32 %i.at, 1
  br i1 %i.ck, label %.epil.preheader27, label %.lr.ph.i8.new
end_hunk_26
begin_hunk_27_@frwd_fetch:bb.a
  %i.cm = phi i32 [ %i.at, %.lr.ph.i8.new ], [ %i.df, %bb.i ] ; 2 uses
  %niter37 = phi i32 [ 0, %.lr.ph.i8.new ], [ %niter37.next.1, %bb.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !126
  %i.co = load i8, ptr %i.cl, align 1, !tbaa !46
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl i32 255, %.04246.i11
end_hunk_27
begin_hunk_28_@frwd_fetch:bb.a
  %i.ct = shl i32 %i.cp, %.04246.i11
  %i.cu = or i32 %i.ct, %i.cs
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.d, align 8, !tbaa !128
  %i.cw = or disjoint i32 %.04246.i11, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 2 ; 3 uses
  store ptr %i.cx, ptr %0, align 8, !tbaa !126
  %i.cy = load i8, ptr %i.cn, align 1, !tbaa !46
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl i32 65280, %.04246.i11
end_hunk_28
begin_hunk_29_@frwd_fetch:bb.a
  %i.dd = shl i32 %i.cz, %i.cw
  %i.de = or i32 %i.dd, %i.dc                     ; 3 uses
  %i.df = add nsw i32 %i.cm, -2                   ; 3 uses
  store i32 %i.df, ptr %i.d, align 8, !tbaa !128
  %i.dg = add nuw nsw i32 %.04246.i11, 16         ; 2 uses
  %niter37.next.1 = add i32 %niter37, 2           ; 2 uses
  %niter37.ncmp.1.not = icmp eq i32 %niter37.next.1, %unroll_iter36
  br i1 %niter37.ncmp.1.not, label %frwd_read.exit13.loopexit.unr-lcssa, label %bb.i, !llvm.loop !130

frwd_read.exit13.loopexit.unr-lcssa:              ; preds = %bb.i
  %lcmp.mod33.not = icmp eq i32 %xtraiter28, 0
end_hunk_29
begin_hunk_30_@frwd_fetch:bb.a
  %lcmp.mod35 = trunc i32 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.dh = getelementptr inbounds nuw i8, ptr %.epil.init30, i64 1
  store ptr %i.dh, ptr %0, align 8, !tbaa !126
  %i.di = load i8, ptr %.epil.init30, align 1, !tbaa !46
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl i32 255, %.04246.i11.epil.init
end_hunk_30
begin_hunk_31_@frwd_fetch:bb.a
  %i.dn = shl i32 %i.dj, %.04246.i11.epil.init
  %i.do = or i32 %i.dn, %i.dm
  %i.dp = add nsw i32 %.epil.init32, -1
  store i32 %i.dp, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit13

frwd_read.exit13:                                 ; preds = %.epil.preheader27, %frwd_read.exit13.loopexit.unr-lcssa, %bb.g, %bb.h
end_hunk_31
begin_hunk_32_@frwd_fetch:bb.a
  %i.ek = select i1 %i.ee, i32 7, i32 8
  %i.el = icmp eq i32 %i.ef, 255
  %i.em = zext i1 %i.el to i32
  store i32 %i.em, ptr %i.au, align 4, !tbaa !129
  %i.en = zext i32 %i.ej to i64
  %i.eo = zext nneg i32 %i.ca to i64
  %i.ep = shl nuw nsw i64 %i.en, %i.eo
end_hunk_32
begin_hunk_33_@rev_fetch_mrp:bb.a
  %i.ab = add nsw i32 %.04446.i, -16              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %rev_read_mrp.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !131

rev_read_mrp.exit.loopexit.unr-lcssa:             ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_33
begin_hunk_34_@rev_fetch_mrp:bb.a
  %i.da = add nsw i32 %.04446.i10, -16            ; 2 uses
  %niter36.next.1 = add i32 %niter36, 2           ; 2 uses
  %niter36.ncmp.1.not = icmp eq i32 %niter36.next.1, %unroll_iter35
  br i1 %niter36.ncmp.1.not, label %rev_read_mrp.exit12.loopexit.unr-lcssa, label %bb.i, !llvm.loop !131

rev_read_mrp.exit12.loopexit.unr-lcssa:           ; preds = %bb.i
  %lcmp.mod32.not = icmp eq i32 %xtraiter27, 0
end_hunk_34
begin_hunk_35_@llvm.assume
!123 = !{!50, !10, i64 0}
!124 = !{!50, !4, i64 24}
!125 = distinct !{!125, !28}
!126 = !{!54, !10, i64 0}
!127 = !{!54, !4, i64 28}
!128 = !{!54, !4, i64 24}
!129 = !{!54, !4, i64 20}
!130 = distinct !{!130, !28}
!131 = distinct !{!131, !28}
!132 = distinct !{!132, !28}
end_hunk_35
