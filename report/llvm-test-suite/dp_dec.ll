Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/dp_dec?download=true
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
  %i.d = load i32, ptr %0, align 4, !tbaa !7      ; 3 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !7
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
  %.pre = add i32 %4, 1                           ; 6 uses
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
  %.0424522 = phi i32 [ %i.d, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = add nsw i32 %i.q, %.0424522
  %i.s = shl i32 %i.r, %i.a
  %i.t = ashr exact i32 %i.s, %i.a                ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.t, ptr %i.u, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = add nsw i32 %i.w, %i.t
  %i.y = shl i32 %i.x, %i.a
  %i.z = ashr exact i32 %i.y, %i.a                ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit517.loopexit656.unr-lcssa, label %.lr.ph, !llvm.loop !8

.lr.ph525:                                        ; preds = %.lr.ph525, %.lr.ph525.preheader.new
  %store_forwarded649 = phi i32 [ %load_initial648, %.lr.ph525.preheader.new ], [ %i.am, %.lr.ph525 ]
  %indvars.iv570 = phi i64 [ 1, %.lr.ph525.preheader.new ], [ %indvars.iv.next571.1, %.lr.ph525 ] ; 4 uses
  %niter662 = phi i64 [ 0, %.lr.ph525.preheader.new ], [ %niter662.next.1, %.lr.ph525 ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv570
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = getelementptr [4 x i8], ptr %1, i64 %indvars.iv570
  %i.ae = add nsw i32 %store_forwarded649, %i.ac
  %i.af = shl i32 %i.ae, %i.a
  %i.ag = ashr exact i32 %i.af, %i.a              ; 2 uses
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !7
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next571
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next571
  %i.ak = add nsw i32 %i.ag, %i.ai
  %i.al = shl i32 %i.ak, %i.a
  %i.am = ashr exact i32 %i.al, %i.a              ; 3 uses
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !7
  %indvars.iv.next571.1 = add nuw nsw i64 %indvars.iv570, 2 ; 2 uses
  %niter662.next.1 = add nuw i64 %niter662, 2     ; 2 uses
  %niter662.ncmp.1 = icmp eq i64 %niter662.next.1, %unroll_iter661
  br i1 %niter662.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph525, !llvm.loop !9

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph525
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  br i1 %lcmp.mod659.not, label %._crit_edge, label %.lr.ph525.epil.preheader

.lr.ph525.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph525.preheader
  %store_forwarded649.epil.init = phi i32 [ %load_initial648, %.lr.ph525.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv570.epil.init = phi i64 [ 1, %.lr.ph525.preheader ], [ %indvars.iv.next571.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod660 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod660)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv570.epil.init
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %indvars.iv570.epil.init
  %i.aq = add nsw i32 %store_forwarded649.epil.init, %i.ao
  %i.ar = shl i32 %i.aq, %i.a
  %i.as = ashr exact i32 %i.ar, %i.a
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !7
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
  %i.az = load i16, ptr %3, align 2, !tbaa !19    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !19 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !19 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !19 ; 2 uses
  %i.bg = icmp sgt i32 %2, 5
  br i1 %i.bg, label %.lr.ph551.preheader, label %._crit_edge552

.lr.ph551.preheader:                              ; preds = %bb.d
  %i.bh = zext i32 %.pre to i64
  %wide.trip.count581 = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %1, i64 16
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph551

.lr.ph551:                                        ; preds = %.lr.ph551.preheader, %bb.n
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph551.preheader ], [ %i.ci, %bb.n ] ; 3 uses
  %indvars.iv579 = phi i64 [ 5, %.lr.ph551.preheader ], [ %indvars.iv.next580, %bb.n ] ; 4 uses
  %.0416549 = phi i16 [ %i.bf, %.lr.ph551.preheader ], [ %.1417, %bb.n ] ; 4 uses
  %.0418548 = phi i16 [ %i.bd, %.lr.ph551.preheader ], [ %.1419, %bb.n ] ; 6 uses
  %.0420547 = phi i16 [ %i.bb, %.lr.ph551.preheader ], [ %.1421, %bb.n ] ; 8 uses
  %.0422546 = phi i16 [ %i.az, %.lr.ph551.preheader ], [ %.1423, %bb.n ] ; 10 uses
  %i.bi = sub nuw nsw i64 %indvars.iv579, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7  ; 13 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv579 ; 4 uses
  %.neg566 = sub i32 %store_forwarded, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7  ; 3 uses
  %i.bo = sub nsw i32 %i.bk, %i.bn                ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 -12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7  ; 3 uses
  %i.br = sub nsw i32 %i.bk, %i.bq                ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7  ; 3 uses
  %i.bu = sub nsw i32 %i.bk, %i.bt                ; 3 uses
  %i.bv = sext i16 %.0422546 to i32
  %i.bw = sext i16 %.0420547 to i32
  %i.bx = sext i16 %.0418548 to i32
  %i.by = sext i16 %.0416549 to i32
  %.neg503.neg = mul i32 %.neg566, %i.bv
  %.neg504 = mul i32 %i.bo, %i.bw
  %.neg506 = mul i32 %i.br, %i.bx
  %.neg508 = mul i32 %i.bu, %i.by
  %i.bz = add i32 %.neg504, %.neg506
  %i.ca = add i32 %i.bz, %.neg508
  %reass.add512.neg = sub i32 %.neg503.neg, %i.ca
  %i.cb = add i32 %reass.add512.neg, %i.c
  %i.cc = ashr i32 %i.cb, %6
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv579
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7  ; 5 uses
  %i.cf = add i32 %i.ce, %i.bk
  %i.cg = add i32 %i.cf, %i.cc
  %i.ch = shl i32 %i.cg, %i.a
  %i.ci = ashr exact i32 %i.ch, %i.a              ; 2 uses
  store i32 %i.ci, ptr %i.bl, align 4, !tbaa !7
  %i.cj = icmp sgt i32 %i.ce, 0
  br i1 %i.cj, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph551
  %i.ck = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bt) ; 2 uses
  %i.cl = trunc nsw i32 %i.ck to i16
  %i.cm = sub i16 %.0416549, %i.cl                ; 4 uses
  %i.cn = mul nsw i32 %i.ck, %i.bu
  %i.co = ashr i32 %i.cn, %6
  %i.cp = sub nsw i32 %i.ce, %i.co                ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cr = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bq) ; 2 uses
  %i.cs = trunc nsw i32 %i.cr to i16
  %i.ct = sub i16 %.0418548, %i.cs                ; 3 uses
  %i.cu = mul nsw i32 %i.cr, %i.br
  %i.cv = ashr i32 %i.cu, %6
  %i.cw = shl nsw i32 %i.cv, 1
  %i.cx = sub nsw i32 %i.cp, %i.cw                ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 1
  br i1 %i.cy, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cz = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bn) ; 2 uses
  %i.da = trunc nsw i32 %i.cz to i16
  %i.db = sub i16 %.0420547, %i.da                ; 2 uses
  %i.dc = mul nsw i32 %i.cz, %i.bo
  %i.dd = ashr i32 %i.dc, %6
  %.neg478 = mul i32 %i.dd, -3
  %i.de = add i32 %i.cx, %.neg478
  %i.df = icmp slt i32 %i.de, 1
  br i1 %i.df, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = tail call i16 @llvm.scmp.i16.i32(i32 %store_forwarded, i32 %i.bk)
  %i.dh = add i16 %i.dg, %.0422546
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph551
  %i.di = icmp slt i32 %i.ce, 0
  br i1 %i.di, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.dj = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bt) ; 2 uses
  %i.dk = trunc nsw i32 %i.dj to i16
  %i.dl = add i16 %.0416549, %i.dk                ; 4 uses
  %i.dm = mul i32 %i.bu, %i.dj
  %i.dn = sub i32 0, %i.dm
  %i.do = ashr i32 %i.dn, %6
  %i.dp = sub nsw i32 %i.ce, %i.do                ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dr = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bq) ; 2 uses
  %i.ds = trunc nsw i32 %i.dr to i16
  %i.dt = add i16 %.0418548, %i.ds                ; 3 uses
  %i.du = mul i32 %i.br, %i.dr
  %i.dv = sub i32 0, %i.du
  %i.dw = ashr i32 %i.dv, %6
  %i.dx = shl nsw i32 %i.dw, 1
  %i.dy = sub nsw i32 %i.dp, %i.dx                ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, -1
  br i1 %i.dz, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ea = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bn) ; 2 uses
  %i.eb = trunc nsw i32 %i.ea to i16
  %i.ec = add i16 %.0420547, %i.eb                ; 2 uses
  %i.ed = mul i32 %i.bo, %i.ea
  %i.ee = sub i32 0, %i.ed
  %i.ef = ashr i32 %i.ee, %6
  %.neg477 = mul i32 %i.ef, -3
  %i.eg = add i32 %i.dy, %.neg477
  %i.eh = icmp sgt i32 %i.eg, -1
  br i1 %i.eh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = tail call i16 @llvm.scmp.i16.i32(i32 %i.bk, i32 %store_forwarded)
  %i.ej = add i16 %i.ei, %.0422546
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m, %bb.i, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e
  %.1423 = phi i16 [ %.0422546, %bb.e ], [ %.0422546, %bb.f ], [ %.0422546, %bb.g ], [ %i.dh, %bb.h ], [ %.0422546, %bb.j ], [ %.0422546, %bb.k ], [ %.0422546, %bb.l ], [ %i.ej, %bb.m ], [ %.0422546, %bb.i ] ; 2 uses
  %.1421 = phi i16 [ %.0420547, %bb.e ], [ %.0420547, %bb.f ], [ %i.db, %bb.g ], [ %i.db, %bb.h ], [ %.0420547, %bb.j ], [ %.0420547, %bb.k ], [ %i.ec, %bb.l ], [ %i.ec, %bb.m ], [ %.0420547, %bb.i ] ; 2 uses
  %.1419 = phi i16 [ %.0418548, %bb.e ], [ %i.ct, %bb.f ], [ %i.ct, %bb.g ], [ %i.ct, %bb.h ], [ %.0418548, %bb.j ], [ %i.dt, %bb.k ], [ %i.dt, %bb.l ], [ %i.dt, %bb.m ], [ %.0418548, %bb.i ] ; 2 uses
  %.1417 = phi i16 [ %i.cm, %bb.e ], [ %i.cm, %bb.f ], [ %i.cm, %bb.g ], [ %i.cm, %bb.h ], [ %i.dl, %bb.j ], [ %i.dl, %bb.k ], [ %i.dl, %bb.l ], [ %i.dl, %bb.m ], [ %.0416549, %bb.i ] ; 2 uses
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %exitcond582.not = icmp eq i64 %indvars.iv.next580, %wide.trip.count581
  br i1 %exitcond582.not, label %._crit_edge552, label %.lr.ph551, !llvm.loop !10

._crit_edge552:                                   ; preds = %bb.n, %bb.d
  %.0422.lcssa = phi i16 [ %i.az, %bb.d ], [ %.1423, %bb.n ]
  %.0420.lcssa = phi i16 [ %i.bb, %bb.d ], [ %.1421, %bb.n ]
  %.0418.lcssa = phi i16 [ %i.bd, %bb.d ], [ %.1419, %bb.n ]
  %.0416.lcssa = phi i16 [ %i.bf, %bb.d ], [ %.1417, %bb.n ]
  store i16 %.0422.lcssa, ptr %3, align 2, !tbaa !19
  store i16 %.0420.lcssa, ptr %i.ba, align 2, !tbaa !19
  store i16 %.0418.lcssa, ptr %i.bc, align 2, !tbaa !19
  store i16 %.0416.lcssa, ptr %i.be, align 2, !tbaa !19
  br label %.loopexit517

bb.o:                                             ; preds = %._crit_edge
  %i.ek = load i16, ptr %3, align 2, !tbaa !19    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.em = load i16, ptr %i.el, align 2, !tbaa !19 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !19 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !19 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !19 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !19 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !19 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 14 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !19 ; 2 uses
  %i.ez = icmp sgt i32 %2, 9
  br i1 %i.ez, label %.lr.ph536.preheader, label %._crit_edge537

.lr.ph536.preheader:                              ; preds = %bb.o
  %i.fa = zext i32 %.pre to i64
  %wide.trip.count577 = zext nneg i32 %2 to i64
  %scevgep645 = getelementptr i8, ptr %1, i64 32
  %load_initial646 = load i32, ptr %scevgep645, align 4
  br label %.lr.ph536

.lr.ph536:                                        ; preds = %.lr.ph536.preheader, %bb.ag
  %store_forwarded647 = phi i32 [ %load_initial646, %.lr.ph536.preheader ], [ %i.gv, %bb.ag ] ; 3 uses
  %indvars.iv575 = phi i64 [ 9, %.lr.ph536.preheader ], [ %indvars.iv.next576, %bb.ag ] ; 4 uses
  %.0534 = phi i16 [ %i.ey, %.lr.ph536.preheader ], [ %.1, %bb.ag ] ; 4 uses
  %.0410533 = phi i16 [ %i.ew, %.lr.ph536.preheader ], [ %.1411, %bb.ag ] ; 6 uses
  %.0412532 = phi i16 [ %i.eu, %.lr.ph536.preheader ], [ %.1413, %bb.ag ] ; 8 uses
  %.0414531 = phi i16 [ %i.es, %.lr.ph536.preheader ], [ %.1415, %bb.ag ] ; 10 uses
  %.0433529 = phi i16 [ %i.eq, %.lr.ph536.preheader ], [ %.1434, %bb.ag ] ; 12 uses
  %.0435528 = phi i16 [ %i.eo, %.lr.ph536.preheader ], [ %.1436, %bb.ag ] ; 14 uses
  %.0437527 = phi i16 [ %i.em, %.lr.ph536.preheader ], [ %.1438, %bb.ag ] ; 16 uses
  %.0439526 = phi i16 [ %i.ek, %.lr.ph536.preheader ], [ %.1440, %bb.ag ] ; 18 uses
  %i.fb = sub nuw nsw i64 %indvars.iv575, %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !7  ; 25 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv575 ; 8 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -8
  %.neg565 = sub i32 %store_forwarded647, %i.fd
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 -12
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !7  ; 3 uses
  %i.fi = sub nsw i32 %i.fd, %i.fh                ; 3 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fe, i64 -16
  %i.fk = load i32, ptr %i.fg, align 4, !tbaa !7  ; 3 uses
  %i.fl = sub nsw i32 %i.fd, %i.fk                ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fe, i64 -20
  %i.fn = load i32, ptr %i.fj, align 4, !tbaa !7  ; 3 uses
  %i.fo = sub nsw i32 %i.fd, %i.fn                ; 3 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fe, i64 -24
  %i.fq = load i32, ptr %i.fm, align 4, !tbaa !7  ; 3 uses
  %i.fr = sub nsw i32 %i.fd, %i.fq                ; 3 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fe, i64 -28
  %i.ft = load i32, ptr %i.fp, align 4, !tbaa !7  ; 3 uses
  %i.fu = sub nsw i32 %i.fd, %i.ft                ; 3 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fe, i64 -32
  %i.fw = load i32, ptr %i.fs, align 4, !tbaa !7  ; 3 uses
  %i.fx = sub nsw i32 %i.fd, %i.fw                ; 3 uses
  %i.fy = load i32, ptr %i.fv, align 4, !tbaa !7  ; 3 uses
  %i.fz = sub nsw i32 %i.fd, %i.fy                ; 3 uses
  %i.ga = sext i16 %.0439526 to i32
  %i.gb = sext i16 %.0437527 to i32
  %i.gc = sext i16 %.0435528 to i32
  %i.gd = sext i16 %.0433529 to i32
  %i.ge = sext i16 %.0414531 to i32
  %i.gf = sext i16 %.0412532 to i32
  %i.gg = sext i16 %.0410533 to i32
  %i.gh = sext i16 %.0534 to i32
  %.neg482.neg = mul i32 %.neg565, %i.ga
  %.neg483 = mul i32 %i.fi, %i.gb
  %.neg485 = mul i32 %i.fl, %i.gc
  %.neg487 = mul i32 %i.fo, %i.gd
  %.neg489 = mul i32 %i.fr, %i.ge
  %.neg491 = mul i32 %i.fu, %i.gf
  %.neg493 = mul i32 %i.fx, %i.gg
  %.neg495 = mul i32 %i.fz, %i.gh
  %i.gi = add i32 %.neg483, %.neg485
  %i.gj = add i32 %i.gi, %.neg487
  %i.gk = add i32 %i.gj, %.neg489
  %i.gl = add i32 %i.gk, %.neg491
  %i.gm = add i32 %i.gl, %.neg493
  %i.gn = add i32 %i.gm, %.neg495
  %reass.add502.neg = sub i32 %.neg482.neg, %i.gn
  %i.go = add i32 %reass.add502.neg, %i.c
  %i.gp = ashr i32 %i.go, %6
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv575
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !7  ; 5 uses
  %i.gs = add i32 %i.gr, %i.fd
  %i.gt = add i32 %i.gs, %i.gp
  %i.gu = shl i32 %i.gt, %i.a
  %i.gv = ashr exact i32 %i.gu, %i.a              ; 2 uses
  store i32 %i.gv, ptr %i.fe, align 4, !tbaa !7
  %i.gw = icmp sgt i32 %i.gr, 0
  br i1 %i.gw, label %bb.p, label %bb.x

bb.p:                                             ; preds = %.lr.ph536
  %i.gx = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fy) ; 2 uses
  %i.gy = trunc nsw i32 %i.gx to i16
  %i.gz = sub i16 %.0534, %i.gy                   ; 8 uses
  %i.ha = mul nsw i32 %i.gx, %i.fz
  %i.hb = ashr i32 %i.ha, %6
  %i.hc = sub nsw i32 %i.gr, %i.hb                ; 2 uses
  %i.hd = icmp slt i32 %i.hc, 1
  br i1 %i.hd, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.he = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fw) ; 2 uses
  %i.hf = trunc nsw i32 %i.he to i16
  %i.hg = sub i16 %.0410533, %i.hf                ; 7 uses
  %i.hh = mul nsw i32 %i.he, %i.fx
  %i.hi = ashr i32 %i.hh, %6
  %i.hj = shl nsw i32 %i.hi, 1
  %i.hk = sub nsw i32 %i.hc, %i.hj                ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 1
  br i1 %i.hl, label %bb.ag, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hm = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.ft) ; 2 uses
  %i.hn = trunc nsw i32 %i.hm to i16
  %i.ho = sub i16 %.0412532, %i.hn                ; 6 uses
  %i.hp = mul nsw i32 %i.hm, %i.fu
  %i.hq = ashr i32 %i.hp, %6
  %.neg473 = mul i32 %i.hq, -3
  %i.hr = add i32 %i.hk, %.neg473                 ; 2 uses
  %i.hs = icmp slt i32 %i.hr, 1
  br i1 %i.hs, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ht = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fq) ; 2 uses
  %i.hu = trunc nsw i32 %i.ht to i16
  %i.hv = sub i16 %.0414531, %i.hu                ; 5 uses
  %i.hw = mul nsw i32 %i.ht, %i.fr
  %i.hx = ashr i32 %i.hw, %6
  %i.hy = shl nsw i32 %i.hx, 2
  %i.hz = sub nsw i32 %i.hr, %i.hy                ; 2 uses
  %i.ia = icmp slt i32 %i.hz, 1
  br i1 %i.ia, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ib = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fn) ; 2 uses
  %i.ic = trunc nsw i32 %i.ib to i16
  %i.id = sub i16 %.0433529, %i.ic                ; 4 uses
  %i.ie = mul nsw i32 %i.ib, %i.fo
  %i.if = ashr i32 %i.ie, %6
  %.neg474 = mul i32 %i.if, -5
  %i.ig = add i32 %i.hz, %.neg474                 ; 2 uses
  %i.ih = icmp slt i32 %i.ig, 1
  br i1 %i.ih, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ii = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fk) ; 2 uses
  %i.ij = trunc nsw i32 %i.ii to i16
  %i.ik = sub i16 %.0435528, %i.ij                ; 3 uses
  %i.il = mul nsw i32 %i.ii, %i.fl
  %i.im = ashr i32 %i.il, %6
  %.neg475 = mul i32 %i.im, -6
  %i.in = add i32 %i.ig, %.neg475                 ; 2 uses
  %i.io = icmp slt i32 %i.in, 1
  br i1 %i.io, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ip = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fh) ; 2 uses
  %i.iq = trunc nsw i32 %i.ip to i16
  %i.ir = sub i16 %.0437527, %i.iq                ; 2 uses
  %i.is = mul nsw i32 %i.ip, %i.fi
  %i.it = ashr i32 %i.is, %6
  %.neg476 = mul i32 %i.it, -7
  %i.iu = add i32 %i.in, %.neg476
  %i.iv = icmp slt i32 %i.iu, 1
  br i1 %i.iv, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iw = tail call i16 @llvm.scmp.i16.i32(i32 %store_forwarded647, i32 %i.fd)
  %i.ix = add i16 %i.iw, %.0439526
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph536
  %i.iy = icmp slt i32 %i.gr, 0
  br i1 %i.iy, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.iz = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fy) ; 2 uses
  %i.ja = trunc nsw i32 %i.iz to i16
  %i.jb = add i16 %.0534, %i.ja                   ; 8 uses
  %i.jc = mul i32 %i.fz, %i.iz
  %i.jd = sub i32 0, %i.jc
  %i.je = ashr i32 %i.jd, %6
  %i.jf = sub nsw i32 %i.gr, %i.je                ; 2 uses
  %i.jg = icmp sgt i32 %i.jf, -1
  br i1 %i.jg, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jh = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fw) ; 2 uses
  %i.ji = trunc nsw i32 %i.jh to i16
  %i.jj = add i16 %.0410533, %i.ji                ; 7 uses
  %i.jk = mul i32 %i.fx, %i.jh
  %i.jl = sub i32 0, %i.jk
  %i.jm = ashr i32 %i.jl, %6
  %i.jn = shl nsw i32 %i.jm, 1
  %i.jo = sub nsw i32 %i.jf, %i.jn                ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, -1
  br i1 %i.jp, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.ft) ; 2 uses
  %i.jr = trunc nsw i32 %i.jq to i16
  %i.js = add i16 %.0412532, %i.jr                ; 6 uses
  %i.jt = mul i32 %i.fu, %i.jq
  %i.ju = sub i32 0, %i.jt
  %i.jv = ashr i32 %i.ju, %6
  %.neg469 = mul i32 %i.jv, -3
  %i.jw = add i32 %i.jo, %.neg469                 ; 2 uses
  %i.jx = icmp sgt i32 %i.jw, -1
  br i1 %i.jx, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jy = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fq) ; 2 uses
  %i.jz = trunc nsw i32 %i.jy to i16
  %i.ka = add i16 %.0414531, %i.jz                ; 5 uses
  %i.kb = mul i32 %i.fr, %i.jy
  %i.kc = sub i32 0, %i.kb
  %i.kd = ashr i32 %i.kc, %6
  %i.ke = shl nsw i32 %i.kd, 2
  %i.kf = sub nsw i32 %i.jw, %i.ke                ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, -1
  br i1 %i.kg, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kh = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fn) ; 2 uses
  %i.ki = trunc nsw i32 %i.kh to i16
  %i.kj = add i16 %.0433529, %i.ki                ; 4 uses
  %i.kk = mul i32 %i.fo, %i.kh
  %i.kl = sub i32 0, %i.kk
  %i.km = ashr i32 %i.kl, %6
  %.neg470 = mul i32 %i.km, -5
  %i.kn = add i32 %i.kf, %.neg470                 ; 2 uses
  %i.ko = icmp sgt i32 %i.kn, -1
  br i1 %i.ko, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kp = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fk) ; 2 uses
  %i.kq = trunc nsw i32 %i.kp to i16
  %i.kr = add i16 %.0435528, %i.kq                ; 3 uses
  %i.ks = mul i32 %i.fl, %i.kp
  %i.kt = sub i32 0, %i.ks
  %i.ku = ashr i32 %i.kt, %6
  %.neg471 = mul i32 %i.ku, -6
  %i.kv = add i32 %i.kn, %.neg471                 ; 2 uses
  %i.kw = icmp sgt i32 %i.kv, -1
  br i1 %i.kw, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kx = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fh) ; 2 uses
  %i.ky = trunc nsw i32 %i.kx to i16
  %i.kz = add i16 %.0437527, %i.ky                ; 2 uses
  %i.la = mul i32 %i.fi, %i.kx
  %i.lb = sub i32 0, %i.la
  %i.lc = ashr i32 %i.lb, %6
  %.neg472 = mul i32 %i.lc, -7
  %i.ld = add i32 %i.kv, %.neg472
  %i.le = icmp sgt i32 %i.ld, -1
  br i1 %i.le, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lf = tail call i16 @llvm.scmp.i16.i32(i32 %i.fd, i32 %store_forwarded647)
  %i.lg = add i16 %i.lf, %.0439526
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %bb.af, %bb.x, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.1440 = phi i16 [ %.0439526, %bb.p ], [ %.0439526, %bb.q ], [ %.0439526, %bb.r ], [ %.0439526, %bb.s ], [ %.0439526, %bb.t ], [ %.0439526, %bb.u ], [ %.0439526, %bb.v ], [ %i.ix, %bb.w ], [ %.0439526, %bb.y ], [ %.0439526, %bb.z ], [ %.0439526, %bb.aa ], [ %.0439526, %bb.ab ], [ %.0439526, %bb.ac ], [ %.0439526, %bb.ad ], [ %.0439526, %bb.ae ], [ %i.lg, %bb.af ], [ %.0439526, %bb.x ] ; 2 uses
  %.1438 = phi i16 [ %.0437527, %bb.p ], [ %.0437527, %bb.q ], [ %.0437527, %bb.r ], [ %.0437527, %bb.s ], [ %.0437527, %bb.t ], [ %.0437527, %bb.u ], [ %i.ir, %bb.v ], [ %i.ir, %bb.w ], [ %.0437527, %bb.y ], [ %.0437527, %bb.z ], [ %.0437527, %bb.aa ], [ %.0437527, %bb.ab ], [ %.0437527, %bb.ac ], [ %.0437527, %bb.ad ], [ %i.kz, %bb.ae ], [ %i.kz, %bb.af ], [ %.0437527, %bb.x ] ; 2 uses
  %.1436 = phi i16 [ %.0435528, %bb.p ], [ %.0435528, %bb.q ], [ %.0435528, %bb.r ], [ %.0435528, %bb.s ], [ %.0435528, %bb.t ], [ %i.ik, %bb.u ], [ %i.ik, %bb.v ], [ %i.ik, %bb.w ], [ %.0435528, %bb.y ], [ %.0435528, %bb.z ], [ %.0435528, %bb.aa ], [ %.0435528, %bb.ab ], [ %.0435528, %bb.ac ], [ %i.kr, %bb.ad ], [ %i.kr, %bb.ae ], [ %i.kr, %bb.af ], [ %.0435528, %bb.x ] ; 2 uses
  %.1434 = phi i16 [ %.0433529, %bb.p ], [ %.0433529, %bb.q ], [ %.0433529, %bb.r ], [ %.0433529, %bb.s ], [ %i.id, %bb.t ], [ %i.id, %bb.u ], [ %i.id, %bb.v ], [ %i.id, %bb.w ], [ %.0433529, %bb.y ], [ %.0433529, %bb.z ], [ %.0433529, %bb.aa ], [ %.0433529, %bb.ab ], [ %i.kj, %bb.ac ], [ %i.kj, %bb.ad ], [ %i.kj, %bb.ae ], [ %i.kj, %bb.af ], [ %.0433529, %bb.x ] ; 2 uses
  %.1415 = phi i16 [ %.0414531, %bb.p ], [ %.0414531, %bb.q ], [ %.0414531, %bb.r ], [ %i.hv, %bb.s ], [ %i.hv, %bb.t ], [ %i.hv, %bb.u ], [ %i.hv, %bb.v ], [ %i.hv, %bb.w ], [ %.0414531, %bb.y ], [ %.0414531, %bb.z ], [ %.0414531, %bb.aa ], [ %i.ka, %bb.ab ], [ %i.ka, %bb.ac ], [ %i.ka, %bb.ad ], [ %i.ka, %bb.ae ], [ %i.ka, %bb.af ], [ %.0414531, %bb.x ] ; 2 uses
  %.1413 = phi i16 [ %.0412532, %bb.p ], [ %.0412532, %bb.q ], [ %i.ho, %bb.r ], [ %i.ho, %bb.s ], [ %i.ho, %bb.t ], [ %i.ho, %bb.u ], [ %i.ho, %bb.v ], [ %i.ho, %bb.w ], [ %.0412532, %bb.y ], [ %.0412532, %bb.z ], [ %i.js, %bb.aa ], [ %i.js, %bb.ab ], [ %i.js, %bb.ac ], [ %i.js, %bb.ad ], [ %i.js, %bb.ae ], [ %i.js, %bb.af ], [ %.0412532, %bb.x ] ; 2 uses
  %.1411 = phi i16 [ %.0410533, %bb.p ], [ %i.hg, %bb.q ], [ %i.hg, %bb.r ], [ %i.hg, %bb.s ], [ %i.hg, %bb.t ], [ %i.hg, %bb.u ], [ %i.hg, %bb.v ], [ %i.hg, %bb.w ], [ %.0410533, %bb.y ], [ %i.jj, %bb.z ], [ %i.jj, %bb.aa ], [ %i.jj, %bb.ab ], [ %i.jj, %bb.ac ], [ %i.jj, %bb.ad ], [ %i.jj, %bb.ae ], [ %i.jj, %bb.af ], [ %.0410533, %bb.x ] ; 2 uses
  %.1 = phi i16 [ %i.gz, %bb.p ], [ %i.gz, %bb.q ], [ %i.gz, %bb.r ], [ %i.gz, %bb.s ], [ %i.gz, %bb.t ], [ %i.gz, %bb.u ], [ %i.gz, %bb.v ], [ %i.gz, %bb.w ], [ %i.jb, %bb.y ], [ %i.jb, %bb.z ], [ %i.jb, %bb.aa ], [ %i.jb, %bb.ab ], [ %i.jb, %bb.ac ], [ %i.jb, %bb.ad ], [ %i.jb, %bb.ae ], [ %i.jb, %bb.af ], [ %.0534, %bb.x ] ; 2 uses
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next576, %wide.trip.count577
  br i1 %exitcond578.not, label %._crit_edge537, label %.lr.ph536, !llvm.loop !11

._crit_edge537:                                   ; preds = %bb.ag, %bb.o
end_hunk_0
