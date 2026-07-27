loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @unpc_block(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(address) initializes((0, 4)) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i32 32, %5                           ; 18 uses
  %i.b = add i32 %6, -1
  %i.c = shl nuw i32 1, %i.b                      ; 3 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !4      ; 3 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !4
  switch i32 %4, label %.preheader518 [
    i32 0, label %bb.b
    i32 31, label %.preheader519
  ]

.preheader519:                                    ; preds = %bb.a
  %i.e = icmp sgt i32 %2, 1
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit517

.lr.ph.preheader:                                 ; preds = %.preheader519
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.f = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.f, 1
  %i.g = icmp eq i32 %2, 2
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, -2
  br label %.lr.ph

.preheader518:                                    ; preds = %bb.a
  %.not523 = icmp slt i32 %4, 1
  %.pre = add i32 %4, 1                           ; 4 uses
  br i1 %.not523, label %._crit_edge, label %.lr.ph525.preheader

.lr.ph525.preheader:                              ; preds = %.preheader518
  %wide.trip.count573 = zext i32 %.pre to i64
  %load_initial648 = load i32, ptr %1, align 4    ; 2 uses
  %i.h = add nsw i64 %wide.trip.count573, -1      ; 3 uses
  %xtraiter658 = and i64 %i.h, 1
  %i.i = icmp eq i32 %.pre, 2
  br i1 %i.i, label %.lr.ph525.epil.preheader, label %.lr.ph525.preheader.new

.lr.ph525.preheader.new:                          ; preds = %.lr.ph525.preheader
  %unroll_iter661 = and i64 %i.h, -2
  br label %.lr.ph525

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %2, 2
  %.not479 = icmp eq ptr %0, %1
  %or.cond = or i1 %.not479, %i.j
  br i1 %or.cond, label %.loopexit517, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = add nsw i32 %2, -1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull align 4 %i.l, i64 %i.o, i1 false)
  br label %.loopexit517

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.0438521 = phi i32 [ %i.d, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = add nsw i32 %i.q, %.0438521
  %i.s = shl i32 %i.r, %i.a
  %i.t = ashr exact i32 %i.s, %i.a                ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = add nsw i32 %i.w, %i.t
  %i.y = shl i32 %i.x, %i.a
  %i.z = ashr exact i32 %i.y, %i.a                ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit517.loopexit656.unr-lcssa, label %.lr.ph, !llvm.loop !8

.lr.ph525:                                        ; preds = %.lr.ph525, %.lr.ph525.preheader.new
  %store_forwarded649 = phi i32 [ %load_initial648, %.lr.ph525.preheader.new ], [ %i.am, %.lr.ph525 ]
  %indvars.iv570 = phi i64 [ 1, %.lr.ph525.preheader.new ], [ %indvars.iv.next571.1, %.lr.ph525 ] ; 4 uses
  %niter662 = phi i64 [ 0, %.lr.ph525.preheader.new ], [ %niter662.next.1, %.lr.ph525 ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv570
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr [4 x i8], ptr %1, i64 %indvars.iv570
  %i.ae = add nsw i32 %store_forwarded649, %i.ac
  %i.af = shl i32 %i.ae, %i.a
  %i.ag = ashr exact i32 %i.af, %i.a              ; 2 uses
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !4
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next571
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next571
  %i.ak = add nsw i32 %i.ag, %i.ai
  %i.al = shl i32 %i.ak, %i.a
  %i.am = ashr exact i32 %i.al, %i.a              ; 3 uses
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next571.1 = add nuw nsw i64 %indvars.iv570, 2 ; 2 uses
  %niter662.next.1 = add nuw i64 %niter662, 2     ; 2 uses
  %niter662.ncmp.1 = icmp eq i64 %niter662.next.1, %unroll_iter661
  br i1 %niter662.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph525, !llvm.loop !10

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph525
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  br i1 %lcmp.mod659.not, label %._crit_edge, label %.lr.ph525.epil.preheader

.lr.ph525.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph525.preheader
  %store_forwarded649.epil.init = phi i32 [ %load_initial648, %.lr.ph525.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv570.epil.init = phi i64 [ 1, %.lr.ph525.preheader ], [ %indvars.iv.next571.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod660 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod660)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv570.epil.init
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %indvars.iv570.epil.init
  %i.aq = add nsw i32 %store_forwarded649.epil.init, %i.ao
  %i.ar = shl i32 %i.aq, %i.a
  %i.as = ashr exact i32 %i.ar, %i.a
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph525.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader518
  switch i32 %4, label %.preheader516 [
    i32 4, label %bb.d
    i32 8, label %bb.o
  ]

.preheader516:                                    ; preds = %._crit_edge
  %i.at = icmp slt i32 %.pre, %2
  br i1 %i.at, label %.lr.ph564, label %.loopexit517

.lr.ph564:                                        ; preds = %.preheader516
  %i.au = icmp sgt i32 %4, 0
  %i.av = sext i32 %4 to i64                      ; 2 uses
  %i.aw = sext i32 %.pre to i64                   ; 2 uses
  %wide.trip.count586 = zext i32 %4 to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count586, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count586
  %i.ax = icmp sgt i32 %4, 0
  %i.ay = icmp sgt i32 %4, 0
  br label %bb.ah

bb.d:                                             ; preds = %._crit_edge
  %i.az = load i16, ptr %3, align 2, !tbaa !11    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !11 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !11 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !11 ; 2 uses
  %i.bg = icmp sgt i32 %2, 5
  br i1 %i.bg, label %.lr.ph551.preheader, label %._crit_edge552

.lr.ph551.preheader:                              ; preds = %bb.d
  %wide.trip.count581 = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %1, i64 16
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph551

.lr.ph551:                                        ; preds = %.lr.ph551.preheader, %bb.n
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph551.preheader ], [ %i.cf, %bb.n ] ; 3 uses
  %indvars.iv579 = phi i64 [ 5, %.lr.ph551.preheader ], [ %indvars.iv.next580, %bb.n ] ; 4 uses
  %.0430548 = phi i16 [ %i.bf, %.lr.ph551.preheader ], [ %.1431, %bb.n ] ; 4 uses
  %.0432547 = phi i16 [ %i.bd, %.lr.ph551.preheader ], [ %.1433, %bb.n ] ; 6 uses
  %.0434546 = phi i16 [ %i.bb, %.lr.ph551.preheader ], [ %.1435, %bb.n ] ; 8 uses
  %.0436545 = phi i16 [ %i.az, %.lr.ph551.preheader ], [ %.1437, %bb.n ] ; 10 uses
  %7 = getelementptr [4 x i8], ptr %1, i64 %indvars.iv579
  %8 = getelementptr i8, ptr %7, i64 -20
  %i.bh = load i32, ptr %8, align 4, !tbaa !4     ; 13 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv579 ; 4 uses
  %.neg566 = sub i32 %store_forwarded, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4  ; 3 uses
  %i.bl = sub nsw i32 %i.bh, %i.bk                ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4  ; 3 uses
  %i.bo = sub nsw i32 %i.bh, %i.bn                ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 3 uses
  %i.br = sub nsw i32 %i.bh, %i.bq                ; 3 uses
  %i.bs = sext i16 %.0436545 to i32
  %i.bt = sext i16 %.0434546 to i32
  %i.bu = sext i16 %.0432547 to i32
  %i.bv = sext i16 %.0430548 to i32
  %.neg503.neg = mul i32 %.neg566, %i.bs
  %.neg504 = mul i32 %i.bl, %i.bt
  %.neg506 = mul i32 %i.bo, %i.bu
  %.neg508 = mul i32 %i.br, %i.bv
  %i.bw = add i32 %.neg504, %.neg506
  %i.bx = add i32 %i.bw, %.neg508
  %reass.add512.neg = sub i32 %.neg503.neg, %i.bx
  %i.by = add i32 %reass.add512.neg, %i.c
  %i.bz = ashr i32 %i.by, %6
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv579
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4  ; 5 uses
  %i.cc = add i32 %i.cb, %i.bh
  %i.cd = add i32 %i.cc, %i.bz
  %i.ce = shl i32 %i.cd, %i.a
  %i.cf = ashr exact i32 %i.ce, %i.a              ; 2 uses
  store i32 %i.cf, ptr %i.bi, align 4, !tbaa !4
  %i.cg = icmp sgt i32 %i.cb, 0
  br i1 %i.cg, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph551
  %i.ch = tail call i32 @llvm.scmp.i32.i32(i32 %i.bh, i32 %i.bq) ; 2 uses
  %i.ci = trunc nsw i32 %i.ch to i16
  %i.cj = sub i16 %.0430548, %i.ci                ; 4 uses
  %i.ck = mul nsw i32 %i.ch, %i.br
  %i.cl = ashr i32 %i.ck, %6
  %i.cm = sub nsw i32 %i.cb, %i.cl                ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = tail call i32 @llvm.scmp.i32.i32(i32 %i.bh, i32 %i.bn) ; 2 uses
  %i.cp = trunc nsw i32 %i.co to i16
  %i.cq = sub i16 %.0432547, %i.cp                ; 3 uses
  %i.cr = mul nsw i32 %i.co, %i.bo
  %i.cs = ashr i32 %i.cr, %6
  %i.ct = shl nsw i32 %i.cs, 1
  %i.cu = sub nsw i32 %i.cm, %i.ct                ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cw = tail call i32 @llvm.scmp.i32.i32(i32 %i.bh, i32 %i.bk) ; 2 uses
  %i.cx = trunc nsw i32 %i.cw to i16
  %i.cy = sub i16 %.0434546, %i.cx                ; 2 uses
  %i.cz = mul nsw i32 %i.cw, %i.bl
  %i.da = ashr i32 %i.cz, %6
  %.neg478 = mul i32 %i.da, -3
  %i.db = add i32 %i.cu, %.neg478
  %i.dc = icmp slt i32 %i.db, 1
  br i1 %i.dc, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dd = tail call i16 @llvm.scmp.i16.i32(i32 %store_forwarded, i32 %i.bh)
  %i.de = add i16 %i.dd, %.0436545
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph551
  %i.df = icmp slt i32 %i.cb, 0
  br i1 %i.df, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.dg = tail call i32 @llvm.scmp.i32.i32(i32 %i.bh, i32 %i.bq) ; 2 uses
  %i.dh = trunc nsw i32 %i.dg to i16
  %i.di = add i16 %.0430548, %i.dh                ; 4 uses
  %i.dj = mul i32 %i.br, %i.dg
  %i.dk = sub i32 0, %i.dj
  %i.dl = ashr i32 %i.dk, %6
  %i.dm = sub nsw i32 %i.cb, %i.dl                ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, -1
  br i1 %i.dn, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.do = tail call i32 @llvm.scmp.i32.i32(i32 %i.bh, i32 %i.bn) ; 2 uses
  %i.dp = trunc nsw i32 %i.do to i16
  %i.dq = add i16 %.0432547, %i.dp                ; 3 uses
  %i.dr = mul i32 %i.bo, %i.do
  %i.ds = sub i32 0, %i.dr
  %i.dt = ashr i32 %i.ds, %6
  %i.du = shl nsw i32 %i.dt, 1
  %i.dv = sub nsw i32 %i.dm, %i.du                ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, -1
  br i1 %i.dw, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = tail call i32 @llvm.scmp.i32.i32(i32 %i.bh, i32 %i.bk) ; 2 uses
  %i.dy = trunc nsw i32 %i.dx to i16
  %i.dz = add i16 %.0434546, %i.dy                ; 2 uses
  %i.ea = mul i32 %i.bl, %i.dx
  %i.eb = sub i32 0, %i.ea
  %i.ec = ashr i32 %i.eb, %6
  %.neg477 = mul i32 %i.ec, -3
  %i.ed = add i32 %i.dv, %.neg477
  %i.ee = icmp sgt i32 %i.ed, -1
  br i1 %i.ee, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ef = tail call i16 @llvm.scmp.i16.i32(i32 %i.bh, i32 %store_forwarded)
  %i.eg = add i16 %i.ef, %.0436545
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m, %bb.i, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e
  %.1437 = phi i16 [ %.0436545, %bb.e ], [ %.0436545, %bb.f ], [ %.0436545, %bb.g ], [ %i.de, %bb.h ], [ %.0436545, %bb.j ], [ %.0436545, %bb.k ], [ %.0436545, %bb.l ], [ %i.eg, %bb.m ], [ %.0436545, %bb.i ] ; 2 uses
  %.1435 = phi i16 [ %.0434546, %bb.e ], [ %.0434546, %bb.f ], [ %i.cy, %bb.g ], [ %i.cy, %bb.h ], [ %.0434546, %bb.j ], [ %.0434546, %bb.k ], [ %i.dz, %bb.l ], [ %i.dz, %bb.m ], [ %.0434546, %bb.i ] ; 2 uses
  %.1433 = phi i16 [ %.0432547, %bb.e ], [ %i.cq, %bb.f ], [ %i.cq, %bb.g ], [ %i.cq, %bb.h ], [ %.0432547, %bb.j ], [ %i.dq, %bb.k ], [ %i.dq, %bb.l ], [ %i.dq, %bb.m ], [ %.0432547, %bb.i ] ; 2 uses
  %.1431 = phi i16 [ %i.cj, %bb.e ], [ %i.cj, %bb.f ], [ %i.cj, %bb.g ], [ %i.cj, %bb.h ], [ %i.di, %bb.j ], [ %i.di, %bb.k ], [ %i.di, %bb.l ], [ %i.di, %bb.m ], [ %.0430548, %bb.i ] ; 2 uses
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %exitcond582.not = icmp eq i64 %indvars.iv.next580, %wide.trip.count581
  br i1 %exitcond582.not, label %._crit_edge552, label %.lr.ph551, !llvm.loop !13

._crit_edge552:                                   ; preds = %bb.n, %bb.d
  %.0436.lcssa = phi i16 [ %i.az, %bb.d ], [ %.1437, %bb.n ]
  %.0434.lcssa = phi i16 [ %i.bb, %bb.d ], [ %.1435, %bb.n ]
  %.0432.lcssa = phi i16 [ %i.bd, %bb.d ], [ %.1433, %bb.n ]
  %.0430.lcssa = phi i16 [ %i.bf, %bb.d ], [ %.1431, %bb.n ]
  store i16 %.0436.lcssa, ptr %3, align 2, !tbaa !11
  store i16 %.0434.lcssa, ptr %i.ba, align 2, !tbaa !11
  store i16 %.0432.lcssa, ptr %i.bc, align 2, !tbaa !11
  store i16 %.0430.lcssa, ptr %i.be, align 2, !tbaa !11
  br label %.loopexit517

bb.o:                                             ; preds = %._crit_edge
  %i.eh = load i16, ptr %3, align 2, !tbaa !11    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !11 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !11 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.en = load i16, ptr %i.em, align 2, !tbaa !11 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !11 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !11 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !11 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 14 ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !11 ; 2 uses
  %i.ew = icmp sgt i32 %2, 9
  br i1 %i.ew, label %.lr.ph536.preheader, label %._crit_edge537

.lr.ph536.preheader:                              ; preds = %bb.o
  %wide.trip.count577 = zext nneg i32 %2 to i64
  %scevgep645 = getelementptr i8, ptr %1, i64 32
  %load_initial646 = load i32, ptr %scevgep645, align 4
  br label %.lr.ph536

.lr.ph536:                                        ; preds = %.lr.ph536.preheader, %bb.ag
  %store_forwarded647 = phi i32 [ %load_initial646, %.lr.ph536.preheader ], [ %i.gp, %bb.ag ] ; 3 uses
  %indvars.iv575 = phi i64 [ 9, %.lr.ph536.preheader ], [ %indvars.iv.next576, %bb.ag ] ; 4 uses
  %.0534 = phi i16 [ %i.eh, %.lr.ph536.preheader ], [ %.1, %bb.ag ] ; 18 uses
  %.0410533 = phi i16 [ %i.ej, %.lr.ph536.preheader ], [ %.1411, %bb.ag ] ; 16 uses
  %.0412532 = phi i16 [ %i.el, %.lr.ph536.preheader ], [ %.1413, %bb.ag ] ; 14 uses
  %.0414531 = phi i16 [ %i.en, %.lr.ph536.preheader ], [ %.1415, %bb.ag ] ; 12 uses
  %.0416530 = phi i16 [ %i.ev, %.lr.ph536.preheader ], [ %.1417, %bb.ag ] ; 4 uses
  %.0418529 = phi i16 [ %i.et, %.lr.ph536.preheader ], [ %.1419, %bb.ag ] ; 6 uses
  %.0420528 = phi i16 [ %i.er, %.lr.ph536.preheader ], [ %.1421, %bb.ag ] ; 8 uses
  %.0422527 = phi i16 [ %i.ep, %.lr.ph536.preheader ], [ %.1423, %bb.ag ] ; 10 uses
  %9 = getelementptr [4 x i8], ptr %1, i64 %indvars.iv575
  %10 = getelementptr i8, ptr %9, i64 -36
  %i.ex = load i32, ptr %10, align 4, !tbaa !4    ; 25 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv575 ; 8 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -8
  %.neg565 = sub i32 %store_forwarded647, %i.ex
  %i.fa = getelementptr inbounds i8, ptr %i.ey, i64 -12
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !4  ; 3 uses
  %i.fc = sub nsw i32 %i.ex, %i.fb                ; 3 uses
  %i.fd = getelementptr inbounds i8, ptr %i.ey, i64 -16
  %i.fe = load i32, ptr %i.fa, align 4, !tbaa !4  ; 3 uses
  %i.ff = sub nsw i32 %i.ex, %i.fe                ; 3 uses
  %i.fg = getelementptr inbounds i8, ptr %i.ey, i64 -20
  %i.fh = load i32, ptr %i.fd, align 4, !tbaa !4  ; 3 uses
  %i.fi = sub nsw i32 %i.ex, %i.fh                ; 3 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ey, i64 -24
  %i.fk = load i32, ptr %i.fg, align 4, !tbaa !4  ; 3 uses
  %i.fl = sub nsw i32 %i.ex, %i.fk                ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %i.ey, i64 -28
  %i.fn = load i32, ptr %i.fj, align 4, !tbaa !4  ; 3 uses
  %i.fo = sub nsw i32 %i.ex, %i.fn                ; 3 uses
  %i.fp = getelementptr inbounds i8, ptr %i.ey, i64 -32
  %i.fq = load i32, ptr %i.fm, align 4, !tbaa !4  ; 3 uses
  %i.fr = sub nsw i32 %i.ex, %i.fq                ; 3 uses
  %i.fs = load i32, ptr %i.fp, align 4, !tbaa !4  ; 3 uses
  %i.ft = sub nsw i32 %i.ex, %i.fs                ; 3 uses
  %i.fu = sext i16 %.0534 to i32
  %i.fv = sext i16 %.0410533 to i32
  %i.fw = sext i16 %.0412532 to i32
  %i.fx = sext i16 %.0414531 to i32
  %i.fy = sext i16 %.0422527 to i32
  %i.fz = sext i16 %.0420528 to i32
  %i.ga = sext i16 %.0418529 to i32
  %i.gb = sext i16 %.0416530 to i32
  %.neg482.neg = mul i32 %.neg565, %i.fu
  %.neg483 = mul i32 %i.fc, %i.fv
  %.neg485 = mul i32 %i.ff, %i.fw
  %.neg487 = mul i32 %i.fi, %i.fx
  %.neg489 = mul i32 %i.fl, %i.fy
  %.neg491 = mul i32 %i.fo, %i.fz
  %.neg493 = mul i32 %i.fr, %i.ga
  %.neg495 = mul i32 %i.ft, %i.gb
  %i.gc = add i32 %.neg483, %.neg485
  %i.gd = add i32 %i.gc, %.neg487
  %i.ge = add i32 %i.gd, %.neg489
  %i.gf = add i32 %i.ge, %.neg491
  %i.gg = add i32 %i.gf, %.neg493
  %i.gh = add i32 %i.gg, %.neg495
  %reass.add502.neg = sub i32 %.neg482.neg, %i.gh
  %i.gi = add i32 %reass.add502.neg, %i.c
  %i.gj = ashr i32 %i.gi, %6
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv575
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4  ; 5 uses
  %i.gm = add i32 %i.gl, %i.ex
  %i.gn = add i32 %i.gm, %i.gj
  %i.go = shl i32 %i.gn, %i.a
  %i.gp = ashr exact i32 %i.go, %i.a              ; 2 uses
  store i32 %i.gp, ptr %i.ey, align 4, !tbaa !4
  %i.gq = icmp sgt i32 %i.gl, 0
  br i1 %i.gq, label %bb.p, label %bb.x

bb.p:                                             ; preds = %.lr.ph536
  %i.gr = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fs) ; 2 uses
  %i.gs = trunc nsw i32 %i.gr to i16
  %i.gt = sub i16 %.0416530, %i.gs                ; 8 uses
  %i.gu = mul nsw i32 %i.gr, %i.ft
  %i.gv = ashr i32 %i.gu, %6
  %i.gw = sub nsw i32 %i.gl, %i.gv                ; 2 uses
  %i.gx = icmp slt i32 %i.gw, 1
  br i1 %i.gx, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gy = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fq) ; 2 uses
  %i.gz = trunc nsw i32 %i.gy to i16
  %i.ha = sub i16 %.0418529, %i.gz                ; 7 uses
  %i.hb = mul nsw i32 %i.gy, %i.fr
  %i.hc = ashr i32 %i.hb, %6
  %i.hd = shl nsw i32 %i.hc, 1
  %i.he = sub nsw i32 %i.gw, %i.hd                ; 2 uses
  %i.hf = icmp slt i32 %i.he, 1
  br i1 %i.hf, label %bb.ag, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hg = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fn) ; 2 uses
  %i.hh = trunc nsw i32 %i.hg to i16
  %i.hi = sub i16 %.0420528, %i.hh                ; 6 uses
  %i.hj = mul nsw i32 %i.hg, %i.fo
  %i.hk = ashr i32 %i.hj, %6
  %.neg473 = mul i32 %i.hk, -3
  %i.hl = add i32 %i.he, %.neg473                 ; 2 uses
  %i.hm = icmp slt i32 %i.hl, 1
  br i1 %i.hm, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hn = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fk) ; 2 uses
  %i.ho = trunc nsw i32 %i.hn to i16
  %i.hp = sub i16 %.0422527, %i.ho                ; 5 uses
  %i.hq = mul nsw i32 %i.hn, %i.fl
  %i.hr = ashr i32 %i.hq, %6
  %i.hs = shl nsw i32 %i.hr, 2
  %i.ht = sub nsw i32 %i.hl, %i.hs                ; 2 uses
  %i.hu = icmp slt i32 %i.ht, 1
  br i1 %i.hu, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hv = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fh) ; 2 uses
  %i.hw = trunc nsw i32 %i.hv to i16
  %i.hx = sub i16 %.0414531, %i.hw                ; 4 uses
  %i.hy = mul nsw i32 %i.hv, %i.fi
  %i.hz = ashr i32 %i.hy, %6
  %.neg474 = mul i32 %i.hz, -5
  %i.ia = add i32 %i.ht, %.neg474                 ; 2 uses
  %i.ib = icmp slt i32 %i.ia, 1
  br i1 %i.ib, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ic = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fe) ; 2 uses
  %i.id = trunc nsw i32 %i.ic to i16
  %i.ie = sub i16 %.0412532, %i.id                ; 3 uses
  %i.if = mul nsw i32 %i.ic, %i.ff
  %i.ig = ashr i32 %i.if, %6
  %.neg475 = mul i32 %i.ig, -6
  %i.ih = add i32 %i.ia, %.neg475                 ; 2 uses
  %i.ii = icmp slt i32 %i.ih, 1
  br i1 %i.ii, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ij = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fb) ; 2 uses
  %i.ik = trunc nsw i32 %i.ij to i16
  %i.il = sub i16 %.0410533, %i.ik                ; 2 uses
  %i.im = mul nsw i32 %i.ij, %i.fc
  %i.in = ashr i32 %i.im, %6
  %.neg476 = mul i32 %i.in, -7
  %i.io = add i32 %i.ih, %.neg476
  %i.ip = icmp slt i32 %i.io, 1
  br i1 %i.ip, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iq = tail call i16 @llvm.scmp.i16.i32(i32 %store_forwarded647, i32 %i.ex)
  %i.ir = add i16 %i.iq, %.0534
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph536
  %i.is = icmp slt i32 %i.gl, 0
  br i1 %i.is, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.it = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fs) ; 2 uses
  %i.iu = trunc nsw i32 %i.it to i16
  %i.iv = add i16 %.0416530, %i.iu                ; 8 uses
  %i.iw = mul i32 %i.ft, %i.it
  %i.ix = sub i32 0, %i.iw
  %i.iy = ashr i32 %i.ix, %6
  %i.iz = sub nsw i32 %i.gl, %i.iy                ; 2 uses
  %i.ja = icmp sgt i32 %i.iz, -1
  br i1 %i.ja, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jb = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fq) ; 2 uses
  %i.jc = trunc nsw i32 %i.jb to i16
  %i.jd = add i16 %.0418529, %i.jc                ; 7 uses
  %i.je = mul i32 %i.fr, %i.jb
  %i.jf = sub i32 0, %i.je
  %i.jg = ashr i32 %i.jf, %6
  %i.jh = shl nsw i32 %i.jg, 1
  %i.ji = sub nsw i32 %i.iz, %i.jh                ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, -1
  br i1 %i.jj, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jk = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fn) ; 2 uses
  %i.jl = trunc nsw i32 %i.jk to i16
  %i.jm = add i16 %.0420528, %i.jl                ; 6 uses
  %i.jn = mul i32 %i.fo, %i.jk
  %i.jo = sub i32 0, %i.jn
  %i.jp = ashr i32 %i.jo, %6
  %.neg469 = mul i32 %i.jp, -3
  %i.jq = add i32 %i.ji, %.neg469                 ; 2 uses
  %i.jr = icmp sgt i32 %i.jq, -1
  br i1 %i.jr, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.js = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fk) ; 2 uses
  %i.jt = trunc nsw i32 %i.js to i16
  %i.ju = add i16 %.0422527, %i.jt                ; 5 uses
  %i.jv = mul i32 %i.fl, %i.js
  %i.jw = sub i32 0, %i.jv
  %i.jx = ashr i32 %i.jw, %6
  %i.jy = shl nsw i32 %i.jx, 2
  %i.jz = sub nsw i32 %i.jq, %i.jy                ; 2 uses
  %i.ka = icmp sgt i32 %i.jz, -1
  br i1 %i.ka, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kb = tail call i32 @llvm.scmp.i32.i32(i32 %i.ex, i32 %i.fh) ; 2 uses
  %i.kc = trunc nsw i32 %i.kb to i16
  %i.kd = add i16 %.0414531, %i.kc                ; 4 uses
  %i.ke = mul i32 %i.fi, %i.kb
  %i.kf = sub i32 0, %i.ke
  %i.kg = ashr i32 %i.kf, %6
  %.neg470 = mul i32 %i.kg, -5
  %i.kh = add i32 %i.jz, %.neg470                 ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, -1
end_hunk_0
