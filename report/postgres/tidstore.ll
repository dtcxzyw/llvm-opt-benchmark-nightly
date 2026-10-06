Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tidstore?download=true
inline.NumInlined: 228
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 24
begin_hunk_0_@TidStoreSetBlockOffsets:bb.a

.preheader108:                                    ; preds = %bb.a
  %i.b = add i32 %3, -1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %2, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2
  %i.f = lshr i16 %i.e, 6
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %narrow = add nuw nsw i16 %i.f, 1               ; 2 uses
  %wide.trip.count = zext nneg i16 %narrow to i64
  br label %.preheader107

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.i = load i16, ptr %2, align 2                ; 3 uses
  %i.j = add i16 %i.i, -2049
  %or.cond = icmp ult i16 %i.j, -2048
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.f, %bb.d, %.lr.ph
  %.lcssa768 = phi i16 [ %i.i, %.lr.ph ], [ %i.o, %bb.d ], [ %i.s, %bb.f ]
  %i.k = zext i16 %.lcssa768 to i32
  %i.l = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.1, i32 noundef %i.k) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 375, ptr noundef nonnull @__func__.TidStoreSetBlockOffsets) #14
  unreachable

bb.c:                                             ; preds = %.lr.ph
  store i16 %i.i, ptr %i.h, align 2
  %exitcond374.not = icmp eq i32 %3, 1
  br i1 %exitcond374.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.o = load i16, ptr %i.n, align 2              ; 3 uses
  %i.p = add i16 %i.o, -2049
  %or.cond.1 = icmp ult i16 %i.p, -2048
  br i1 %or.cond.1, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.o, ptr %i.q, align 4
  %exitcond374.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond374.not.1, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load i16, ptr %i.r, align 2              ; 3 uses
  %i.t = add i16 %i.s, -2049
  %or.cond.2 = icmp ult i16 %i.t, -2048
  br i1 %or.cond.2, label %bb.b, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.s, ptr %i.u, align 2
  br label %._crit_edge

.preheader107:                                    ; preds = %.preheader108, %.split.loop.exit513
  %indvars.iv366 = phi i64 [ 0, %.preheader108 ], [ %indvars.iv.next367, %.split.loop.exit513 ] ; 2 uses
  %.053230 = phi i32 [ 0, %.preheader108 ], [ %.1.lcssa, %.split.loop.exit513 ] ; 4 uses
  %.054229 = phi i32 [ 64, %.preheader108 ], [ %i.aj, %.split.loop.exit513 ] ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.053230, i32 %3) ; 2 uses
  %i.v = tail call i32 @llvm.smax.i32(i32 %.053230, i32 %3)
  %smax365 = sext i32 %i.v to i64
  %exitcond.not652.not = icmp slt i32 %.053230, %3
  br i1 %exitcond.not652.not, label %.lr.ph655, label %.split.loop.exit513

.lr.ph655:                                        ; preds = %.preheader107
  %i.w = sext i32 %.053230 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.k
  %i.x = and i32 %i.ad, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw i64 1, %i.y
  %i.aa = or i64 %i.z, %.056654                   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv653, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %smax365
  br i1 %exitcond.not, label %.split.loop.exit513, label %bb.i

bb.i:                                             ; preds = %.lr.ph655, %bb.h
  %.056654 = phi i64 [ 0, %.lr.ph655 ], [ %i.aa, %bb.h ] ; 2 uses
  %indvars.iv653 = phi i64 [ %i.w, %.lr.ph655 ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds [2 x i8], ptr %2, i64 %indvars.iv653
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = add i16 %i.ac, -2049
  %or.cond5 = icmp ult i16 %i.ae, -2048
  br i1 %or.cond5, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.ag = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.1, i32 noundef %i.ad) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 396, ptr noundef nonnull @__func__.TidStoreSetBlockOffsets) #14
  unreachable

bb.k:                                             ; preds = %bb.i
  %.not61 = icmp samesign ugt i32 %.054229, %i.ad
  br i1 %.not61, label %bb.h, label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.k
  %i.ah = trunc nsw i64 %indvars.iv653 to i32
  br label %.split.loop.exit513

.split.loop.exit513:                              ; preds = %bb.h, %.preheader107, %.split.loop.exit
  %.056647 = phi i64 [ %.056654, %.split.loop.exit ], [ 0, %.preheader107 ], [ %i.aa, %bb.h ]
  %.1.lcssa = phi i32 [ %i.ah, %.split.loop.exit ], [ %smax, %.preheader107 ], [ %smax, %bb.h ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv366
  store i64 %.056647, ptr %i.ai, align 8
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.aj = add nuw nsw i32 %.054229, 64
  %exitcond369.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count
  br i1 %exitcond369.not, label %bb.l, label %.preheader107, !llvm.loop !9

bb.l:                                             ; preds = %.split.loop.exit513
  %i.ak = trunc i16 %narrow to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.g, %.preheader, %bb.l
  %.sink = phi i8 [ %i.ak, %bb.l ], [ 0, %.preheader ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.c ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %.sink, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %.not62 = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 27 uses
  %i.aq = zext i32 %1 to i64                      ; 10 uses
  %i.ar = sext i8 %.sink to i64
  %i.as = shl nsw i64 %i.ar, 3
  %i.at = add nsw i64 %i.as, 8                    ; 20 uses
  %i.au = load ptr, ptr %i.ap, align 8            ; 8 uses
  br i1 %.not62, label %bb.ap, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp ult i64 %i.aw, %i.aq
  br i1 %i.ax, label %bb.n, label %bb.q, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.bc = and i32 %i.bb, 24                       ; 2 uses
  %i.bd = xor i32 %i.bc, 24                       ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr i8, ptr %i.ap, i64 8
  %.val54.i = load ptr, ptr %i.bg, align 8
  %i.bh = tail call ptr @dsa_get_address(ptr noundef %.val54.i, i64 noundef %i.bf) #14 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 1, ptr %i.bi, align 2
  %i.bj = lshr i32 %1, %i.bd
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = tail call fastcc ptr @shared_ts_extend_down(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.bm, i64 noundef range(i64 0, 4294967296) %i.aq, i32 noundef %i.bd)
  %i.bo = load ptr, ptr %i.ap, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 %i.bd, ptr %i.bp, align 8
  %i.bq = sub nuw nsw i32 32, %i.bc
  %i.br = zext nneg i32 %i.bq to i64
  %notmask.i.i = shl nsw i64 -1, %i.br
  %i.bs = xor i64 %notmask.i.i, -1
  %i.bt = load ptr, ptr %i.ap, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i64 %i.bs, ptr %i.bu, align 8
  br label %shared_ts_get_slot_recursive.exit.i

bb.p:                                             ; preds = %bb.n
  tail call fastcc void @shared_ts_extend_up(ptr noundef nonnull readonly %i.ap, i64 noundef range(i64 0, 4294967296) %i.aq)
  %.pre.i = load ptr, ptr %i.ap, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.bv = phi ptr [ %.pre.i, %bb.p ], [ %i.au, %bb.m ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = getelementptr i8, ptr %i.ap, i64 8      ; 7 uses
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %bb.ah, %bb.q
  %.tr29.i.i = phi ptr [ %i.bw, %bb.q ], [ %.4.i.i.i, %bb.ah ] ; 4 uses
  %.tr31.i.i = phi i32 [ %i.by, %bb.q ], [ %i.gv, %bb.ah ] ; 5 uses
  %i.ca = zext nneg i32 %.tr31.i.i to i64
  %i.cb = lshr i64 %i.aq, %i.ca                   ; 6 uses
  %i.cc = trunc i64 %i.cb to i8                   ; 9 uses
  %i.cd = load i64, ptr %.tr29.i.i, align 8       ; 4 uses
  %.val.i.i = load ptr, ptr %i.bz, align 8
  %i.ce = tail call ptr @dsa_get_address(ptr noundef %.val.i.i, i64 noundef %i.cd) #14, !inline_history !10 ; 31 uses
  %i.cf = load i8, ptr %i.ce, align 1
  switch i8 %i.cf, label %bb.z [
    i8 0, label %.preheader.i.i.i
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.x
  ]

.preheader.i.i.i:                                 ; preds = %tailrecurse.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.ch = load i8, ptr %i.cg, align 2             ; 4 uses
  %.not27.not.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not27.not.i.i.i, label %select.unfold.i.thread.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 3 ; 4 uses
  %wide.trip.count.i.i.i = zext i8 %i.ch to i64   ; 4 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %select.unfold.i.thread.i, label %bb.s, !llvm.loop !0

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.r ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv.i.i.i
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = icmp eq i8 %i.ck, %i.cc
  br i1 %i.cl, label %bb.t, label %bb.r

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i.i.i
  br label %shared_ts_node_search.exit.i.i

bb.u:                                             ; preds = %tailrecurse.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cp = load i8, ptr %i.co, align 2             ; 6 uses
  %i.cq = insertelement <16 x i8> poison, i8 %i.cc, i64 0 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %5 = load <32 x i8>, ptr %i.cr, align 1         ; 2 uses
  %i.cs = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ct = icmp eq <32 x i8> %i.cs, %5
  %i.cu = bitcast <32 x i1> %i.ct to i32
  %i.cv = zext nneg i8 %i.cp to i64               ; 3 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.cv
  %i.cw = trunc i64 %notmask.i.i.i.i to i32
  %i.cx = xor i32 %i.cw, -1
  %i.cy = and i32 %i.cu, %i.cx                    ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.cy, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 4 uses
  %i.da = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.cy, i1 true)
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.db
  br i1 %.not.i.i.i.i, label %select.unfold.i.thread69.i, label %shared_ts_node_search.exit.i.i

bb.v:                                             ; preds = %tailrecurse.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.de = and i64 %i.cb, 255                      ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1             ; 2 uses
  %i.dh = icmp eq i8 %i.dg, -1
  br i1 %i.dh, label %select.unfold.i.thread70.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.ce, i64 272
  %i.dj = zext i8 %i.dg to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dj
  br label %shared_ts_node_search.exit.i.i

bb.x:                                             ; preds = %tailrecurse.i.i
  %i.dl = lshr i64 %i.cb, 6
  %i.dm = and i64 %i.dl, 3                        ; 2 uses
  %i.dn = and i64 %i.cb, 63
  %i.do = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  %i.dq = load i64, ptr %i.dp, align 8            ; 2 uses
  %i.dr = shl nuw i64 1, %i.dn                    ; 2 uses
  %i.ds = and i64 %i.dq, %i.dr
  %.not26.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not26.i.i.i, label %select.unfold.i.thread71.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.du = and i64 %i.cb, 255
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.du
  br label %shared_ts_node_search.exit.i.i

bb.z:                                             ; preds = %tailrecurse.i.i
  unreachable

select.unfold.i.thread.i:                         ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = icmp eq i8 %i.ch, %i.dy
  br i1 %i.dz, label %bb.aa, label %.lr.ph.i.i.i.i.i, !prof !16

select.unfold.i.thread.thread.i:                  ; preds = %.preheader.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = icmp eq i8 %i.ec, 0
  br i1 %i.ed, label %bb.aa, label %shared_ts_add_child_4.exit.i.i.i, !prof !16

bb.aa:                                            ; preds = %select.unfold.i.thread.thread.i, %select.unfold.i.thread.i
  %i.ee = tail call fastcc ptr @shared_ts_grow_node_4(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.tr29.i.i, i64 %i.cd, ptr nonnull %i.ce, i8 noundef zeroext %i.cc), !inline_history !10
  br label %shared_ts_node_insert.exit.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %select.unfold.i.thread.i, %bb.ab
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.ab ], [ 0, %select.unfold.i.thread.i ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv.i.i.i.i.i
  %i.eg = load i8, ptr %i.ef, align 1
  %.not.i.i.i.i.i = icmp ult i8 %i.eg, %i.cc
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %shared_ts_node_4_get_insertpos.exit.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %shared_ts_add_child_4.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

shared_ts_node_4_get_insertpos.exit.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  br label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %.lr.ph.i15.i.i.i.i, %shared_ts_node_4_get_insertpos.exit.i.i.i.i
  %indvars.iv6.i.i.i.i = phi i64 [ %indvars.iv.next7.i.i.i.i, %.lr.ph.i15.i.i.i.i ], [ %wide.trip.count.i.i.i, %shared_ts_node_4_get_insertpos.exit.i.i.i.i ] ; 4 uses
  %indvars.iv.next7.i.i.i.i = add nsw i64 %indvars.iv6.i.i.i.i, -1 ; 3 uses
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !inline_history !10, !srcloc !17
  %i.ei = getelementptr inbounds i8, ptr %i.ci, i64 %indvars.iv.next7.i.i.i.i
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = getelementptr inbounds i8, ptr %i.ci, i64 %indvars.iv6.i.i.i.i
  store i8 %i.ej, ptr %i.ek, align 1
  %i.el = getelementptr [8 x i8], ptr %i.ce, i64 %indvars.iv6.i.i.i.i
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %indvars.iv6.i.i.i.i
  store i64 %i.em, ptr %i.en, align 8
  %.not.i16.not.i.i.i.i = icmp sgt i64 %indvars.iv.next7.i.i.i.i, %indvars.iv.i.i.i.i.i
  br i1 %.not.i16.not.i.i.i.i, label %.lr.ph.i15.i.i.i.i, label %shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i, !llvm.loop !12

shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i15.i.i.i.i
  %.pre.i.i.i.i = load i8, ptr %i.dw, align 2
  br label %shared_ts_add_child_4.exit.i.i.i

shared_ts_add_child_4.exit.i.i.i:                 ; preds = %bb.ab, %select.unfold.i.thread.thread.i, %shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i
  %i.eo = phi ptr [ %i.dw, %shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ %i.ea, %select.unfold.i.thread.thread.i ], [ %i.dw, %bb.ab ]
  %i.ep = phi i8 [ %.pre.i.i.i.i, %shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ 0, %select.unfold.i.thread.thread.i ], [ %i.ch, %bb.ab ]
  %.0.lcssa.i3.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i, %shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ 0, %select.unfold.i.thread.thread.i ], [ %wide.trip.count.i.i.i, %bb.ab ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.er = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.0.lcssa.i3.i.i.i.i
  store i8 %i.cc, ptr %i.es, align 1
  %i.et = add i8 %i.ep, 1
  store i8 %i.et, ptr %i.eo, align 2
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.0.lcssa.i3.i.i.i.i
  br label %shared_ts_node_insert.exit.i.i

select.unfold.i.thread69.i:                       ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ce, i64 3 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = icmp eq i8 %i.cp, %i.ey
  br i1 %i.ez, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %select.unfold.i.thread69.i
  %i.fa = tail call fastcc ptr @shared_ts_grow_node_16(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.tr29.i.i, i64 %i.cd, ptr nonnull %i.ce, i8 noundef zeroext %i.cc), !inline_history !10
  br label %shared_ts_node_insert.exit.i.i

bb.ad:                                            ; preds = %select.unfold.i.thread69.i
  %i.fb = getelementptr i8, ptr %i.ew, i64 %i.cv
  %i.fc = getelementptr i8, ptr %i.fb, i64 -1
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = icmp ult i8 %i.fd, %i.cc
  br i1 %i.fe, label %shared_ts_node_16_get_insertpos.exit.thread.i.i.i.i, label %shared_ts_node_16_get_insertpos.exit.i.i.i.i

shared_ts_node_16_get_insertpos.exit.thread.i.i.i.i: ; preds = %bb.ad
  %i.ff = zext i8 %i.cp to i32
  br label %shared_ts_add_child_16.exit.i.i.i

shared_ts_node_16_get_insertpos.exit.i.i.i.i:     ; preds = %bb.ad
  %i.fg = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.fh = icmp ule <32 x i8> %i.fg, %5
  %i.fi = bitcast <32 x i1> %i.fh to i32
  %i.fj = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.fi, i1 true) ; 4 uses
  %i.fk = zext i8 %i.cp to i32
  %.not12.not.i.i37.i.i.i = icmp samesign ult i32 %i.fj, %i.fk
  br i1 %.not12.not.i.i37.i.i.i, label %.lr.ph.i.preheader.i.i.i.i, label %shared_ts_add_child_16.exit.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %shared_ts_node_16_get_insertpos.exit.i.i.i.i
  %i.fl = zext nneg i32 %i.fj to i64
  br label %.lr.ph.i.i38.i.i.i

.lr.ph.i.i38.i.i.i:                               ; preds = %.lr.ph.i.i38.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %indvars.iv.i39.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i38.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i39.i.i.i, -1 ; 4 uses
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !inline_history !10, !srcloc !17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv.next.i.i.i.i
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv.i39.i.i.i
  store i8 %i.fn, ptr %i.fo, align 1
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next.i.i.i.i
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.i39.i.i.i
  store i64 %i.fq, ptr %i.fr, align 8
  %.not.i.not.i.i.i.i = icmp sgt i64 %indvars.iv.next.i.i.i.i, %i.fl
  br i1 %.not.i.not.i.i.i.i, label %.lr.ph.i.i38.i.i.i, label %shared_ts_shift_arrays_for_insert.exit.loopexit.i40.i.i.i, !llvm.loop !12

shared_ts_shift_arrays_for_insert.exit.loopexit.i40.i.i.i: ; preds = %.lr.ph.i.i38.i.i.i
  %.pre.i41.i.i.i = load i8, ptr %i.ev, align 2
  br label %shared_ts_add_child_16.exit.i.i.i

shared_ts_add_child_16.exit.i.i.i:                ; preds = %shared_ts_shift_arrays_for_insert.exit.loopexit.i40.i.i.i, %shared_ts_node_16_get_insertpos.exit.i.i.i.i, %shared_ts_node_16_get_insertpos.exit.thread.i.i.i.i
  %i.fs = phi i8 [ %i.cp, %shared_ts_node_16_get_insertpos.exit.thread.i.i.i.i ], [ %i.cp, %shared_ts_node_16_get_insertpos.exit.i.i.i.i ], [ %.pre.i41.i.i.i, %shared_ts_shift_arrays_for_insert.exit.loopexit.i40.i.i.i ]
  %.0.i3.i.i.i.i = phi i32 [ %i.ff, %shared_ts_node_16_get_insertpos.exit.thread.i.i.i.i ], [ %i.fj, %shared_ts_node_16_get_insertpos.exit.i.i.i.i ], [ %i.fj, %shared_ts_shift_arrays_for_insert.exit.loopexit.i40.i.i.i ]
  %i.ft = zext nneg i32 %.0.i3.i.i.i.i to i64     ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ft
  store i8 %i.cc, ptr %i.fu, align 1
  %i.fv = add i8 %i.fs, 1
  store i8 %i.fv, ptr %i.ev, align 2
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ft
  br label %shared_ts_node_insert.exit.i.i

select.unfold.i.thread70.i:                       ; preds = %bb.v
  %.phi.trans.insert185.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 2 uses
  %.pre186.i = load i8, ptr %.phi.trans.insert185.i, align 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = icmp eq i8 %.pre186.i, %i.fy
  br i1 %i.fz, label %bb.ae, label %bb.af, !prof !16

bb.ae:                                            ; preds = %select.unfold.i.thread70.i
  %i.ga = tail call fastcc ptr @shared_ts_grow_node_48(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.tr29.i.i, i64 %i.cd, ptr nonnull %i.ce, i8 noundef zeroext %i.cc), !inline_history !10
  br label %shared_ts_node_insert.exit.i.i

bb.af:                                            ; preds = %select.unfold.i.thread70.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8            ; 3 uses
  %i.ge = xor i64 %i.gd, -1
  %i.gf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ge, i1 true) ; 2 uses
  %i.gg = add i64 %i.gd, 1
  %i.gh = or i64 %i.gg, %i.gd
  store i64 %i.gh, ptr %i.gc, align 8
  %i.gi = trunc nuw nsw i64 %i.gf to i8
  store i8 %i.gi, ptr %i.gb, align 1
  %i.gj = add i8 %.pre186.i, 1
  store i8 %i.gj, ptr %.phi.trans.insert185.i, align 2
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ce, i64 272
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gf
  br label %shared_ts_node_insert.exit.i.i

select.unfold.i.thread71.i:                       ; preds = %bb.x
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 2 uses
  %.pre184.i = load i8, ptr %.phi.trans.insert.i, align 2
  %i.gn = or i64 %i.dq, %i.dr
  store i64 %i.gn, ptr %i.gm, align 8
  %i.go = add i8 %.pre184.i, 1
  store i8 %i.go, ptr %.phi.trans.insert.i, align 2
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.gq = and i64 %i.cb, 255
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gq
  br label %shared_ts_node_insert.exit.i.i

shared_ts_node_insert.exit.i.i:                   ; preds = %select.unfold.i.thread71.i, %bb.af, %bb.ae, %shared_ts_add_child_16.exit.i.i.i, %bb.ac, %shared_ts_add_child_4.exit.i.i.i, %bb.aa
  %.0.i.i.i = phi ptr [ %i.ee, %bb.aa ], [ %i.eu, %shared_ts_add_child_4.exit.i.i.i ], [ %i.fa, %bb.ac ], [ %i.fw, %shared_ts_add_child_16.exit.i.i.i ], [ %i.ga, %bb.ae ], [ %i.gl, %bb.af ], [ %i.gr, %select.unfold.i.thread71.i ] ; 2 uses
  %i.gs = icmp eq i32 %.tr31.i.i, 0
  br i1 %i.gs, label %shared_ts_get_slot_recursive.exit.i, label %bb.ag

bb.ag:                                            ; preds = %shared_ts_node_insert.exit.i.i
  %i.gt = tail call fastcc ptr @shared_ts_extend_down(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.0.i.i.i, i64 noundef range(i64 0, 4294967296) %i.aq, i32 noundef %.tr31.i.i), !inline_history !10
  br label %shared_ts_get_slot_recursive.exit.i

shared_ts_node_search.exit.i.i:                   ; preds = %bb.y, %bb.w, %bb.u, %bb.t
  %.4.i.i.i = phi ptr [ %i.dv, %bb.y ], [ %i.dc, %bb.u ], [ %i.cn, %bb.t ], [ %i.dk, %bb.w ] ; 8 uses
  %i.gu = icmp eq i32 %.tr31.i.i, 0
  br i1 %i.gu, label %shared_ts_get_slot_recursive.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %shared_ts_node_search.exit.i.i
  %i.gv = add i32 %.tr31.i.i, -8
  br label %tailrecurse.i.i

shared_ts_get_slot_recursive.exit.i:              ; preds = %bb.ag, %shared_ts_node_insert.exit.i.i, %bb.o
  %.051.i = phi ptr [ %i.bn, %bb.o ], [ %.0.i.i.i, %shared_ts_node_insert.exit.i.i ], [ %i.gt, %bb.ag ] ; 4 uses
  %i.gw = icmp ult i64 %i.at, 9
  br i1 %i.gw, label %bb.an, label %.split.i

shared_ts_get_slot_recursive.exit.thread.i:       ; preds = %shared_ts_node_search.exit.i.i
  %i.gx = icmp ult i64 %i.at, 9
  %i.gy = load i64, ptr %.4.i.i.i, align 8        ; 3 uses
  %i.gz = trunc i64 %i.gy to i1                   ; 2 uses
  br i1 %i.gx, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %shared_ts_get_slot_recursive.exit.thread.i
  br i1 %i.gz, label %.thread226.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val57.i = load ptr, ptr %i.bz, align 8
  tail call void @dsa_free(ptr noundef %.val57.i, i64 noundef %i.gy) #14
  br label %.thread226.i

bb.ak:                                            ; preds = %shared_ts_get_slot_recursive.exit.thread.i
  %i.ha = load ptr, ptr %i.bz, align 8            ; 2 uses
  br i1 %i.gz, label %.critedge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hb = tail call ptr @dsa_get_address(ptr noundef %i.ha, i64 noundef %i.gy) #14 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.hd = load i8, ptr %i.hc, align 1
  %.not.i = icmp eq i8 %i.hd, %.sink
  br i1 %.not.i, label %.split.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.he = load i64, ptr %.4.i.i.i, align 8
  %.val56.i = load ptr, ptr %i.bz, align 8
  tail call void @dsa_free(ptr noundef %.val56.i, i64 noundef %i.he) #14
  %i.hf = load ptr, ptr %i.bz, align 8
  %i.hg = tail call i64 @dsa_allocate_extended(ptr noundef %i.hf, i64 noundef range(i64 -1016, 1025) %i.at, i32 noundef 0) #14 ; 2 uses
  %.val.i60.i = load ptr, ptr %i.bz, align 8
  %i.hh = tail call ptr @dsa_get_address(ptr noundef %.val.i60.i, i64 noundef %i.hg) #14
  store i64 %i.hg, ptr %.4.i.i.i, align 8
  br label %.split.thread.i

.split.thread.i:                                  ; preds = %bb.am, %bb.al
  %.sroa.6.0.ph.i = phi ptr [ %i.hh, %bb.am ], [ %i.hb, %bb.al ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6.0.ph.i, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  br label %shared_ts_set.exit

.split.i:                                         ; preds = %shared_ts_get_slot_recursive.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = tail call i64 @dsa_allocate_extended(ptr noundef %i.hj, i64 noundef range(i64 -1016, 1025) %i.at, i32 noundef 0) #14 ; 2 uses
  %.val.i61.i = load ptr, ptr %i.hi, align 8
  %i.hl = tail call ptr @dsa_get_address(ptr noundef %.val.i61.i, i64 noundef %i.hk) #14
  store i64 %i.hk, ptr %.051.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hl, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  br label %bb.ao

.thread226.i:                                     ; preds = %bb.aj, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.4.i.i.i, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  %i.hm = load i64, ptr %.4.i.i.i, align 8
  %i.hn = or i64 %i.hm, 1
  store i64 %i.hn, ptr %.4.i.i.i, align 8
  br label %shared_ts_set.exit

bb.an:                                            ; preds = %shared_ts_get_slot_recursive.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.051.i, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  %i.ho = load i64, ptr %.051.i, align 8
  %i.hp = or i64 %i.ho, 1
  store i64 %i.hp, ptr %.051.i, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.split.i
  %i.hq = load ptr, ptr %i.ap, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 48 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.hr, align 8
  br label %shared_ts_set.exit

.critedge.i:                                      ; preds = %bb.ak
  %i.hu = tail call i64 @dsa_allocate_extended(ptr noundef %i.ha, i64 noundef range(i64 -1016, 1025) %i.at, i32 noundef 0) #14 ; 2 uses
  %.val.i61.c.i = load ptr, ptr %i.bz, align 8
  %i.hv = tail call ptr @dsa_get_address(ptr noundef %.val.i61.c.i, i64 noundef %i.hu) #14
  store i64 %i.hu, ptr %.4.i.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hv, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  br label %shared_ts_set.exit

bb.ap:                                            ; preds = %._crit_edge
  %i.hw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = icmp ult i64 %i.hx, %i.aq
  br i1 %i.hy, label %bb.aq, label %bb.at, !prof !16

bb.aq:                                            ; preds = %bb.ap
  %i.hz = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ic = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.id = and i32 %i.ic, 24                       ; 2 uses
  %i.ie = xor i32 %i.id, 24                       ; 3 uses
  %i.if = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  store i8 1, ptr %i.ig, align 2
  %i.ih = lshr i32 %1, %i.ie
  %i.ii = trunc i32 %i.ih to i8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 3
  store i8 %i.ii, ptr %i.ij, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.il = tail call fastcc ptr @local_ts_extend_down(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.ik, i64 noundef range(i64 0, 4294967296) %i.aq, i32 noundef %i.ie)
  %i.im = load ptr, ptr %i.ap, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store i32 %i.ie, ptr %i.in, align 8
  %i.io = sub nuw nsw i32 32, %i.id
  %i.ip = zext nneg i32 %i.io to i64
  %notmask.i.i106 = shl nsw i64 -1, %i.ip
  %i.iq = xor i64 %notmask.i.i106, -1
  %i.ir = load ptr, ptr %i.ap, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i64 %i.iq, ptr %i.is, align 8
  br label %local_ts_get_slot_recursive.exit.i

bb.as:                                            ; preds = %bb.aq
  tail call fastcc void @local_ts_extend_up(ptr noundef nonnull readonly %i.ap, i64 noundef range(i64 0, 4294967296) %i.aq)
  %.pre.i105 = load ptr, ptr %i.ap, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %i.it = phi ptr [ %.pre.i105, %bb.as ], [ %i.au, %bb.ap ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load i32, ptr %i.iu, align 8
  br label %tailrecurse.i.i63

tailrecurse.i.i63:                                ; preds = %bb.bk, %bb.at
  %.tr28.i.i = phi ptr [ %i.it, %bb.at ], [ %.4.i.i.i65, %bb.bk ] ; 4 uses
  %.tr30.i.i = phi i32 [ %i.iv, %bb.at ], [ %i.ns, %bb.bk ] ; 5 uses
  %i.iw = zext nneg i32 %.tr30.i.i to i64
  %i.ix = lshr i64 %i.aq, %i.iw                   ; 6 uses
  %i.iy = trunc i64 %i.ix to i8                   ; 9 uses
  %i.iz = load ptr, ptr %.tr28.i.i, align 8       ; 31 uses
  %i.ja = load i8, ptr %i.iz, align 1
  switch i8 %i.ja, label %bb.bc [
    i8 0, label %.preheader.i.i.i83
    i8 1, label %bb.ax
    i8 2, label %bb.ay
    i8 3, label %bb.ba
  ]

.preheader.i.i.i83:                               ; preds = %tailrecurse.i.i63
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %i.jc = load i8, ptr %i.jb, align 2             ; 4 uses
  %.not27.not.i.i.i84 = icmp eq i8 %i.jc, 0
  br i1 %.not27.not.i.i.i84, label %select.unfold.i.thread.thread.i103, label %.lr.ph.i.i.i85

.lr.ph.i.i.i85:                                   ; preds = %.preheader.i.i.i83
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 3 ; 4 uses
  %wide.trip.count.i.i.i86 = zext i8 %i.jc to i64 ; 4 uses
  br label %bb.av

bb.au:                                            ; preds = %bb.av
  %indvars.iv.next.i.i.i88 = add nuw nsw i64 %indvars.iv.i.i.i87, 1 ; 2 uses
  %exitcond.not.i.i.i89 = icmp eq i64 %indvars.iv.next.i.i.i88, %wide.trip.count.i.i.i86
  br i1 %exitcond.not.i.i.i89, label %select.unfold.i.thread.i90, label %bb.av, !llvm.loop !1

bb.av:                                            ; preds = %bb.au, %.lr.ph.i.i.i85
  %indvars.iv.i.i.i87 = phi i64 [ 0, %.lr.ph.i.i.i85 ], [ %indvars.iv.next.i.i.i88, %bb.au ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %indvars.iv.i.i.i87
  %i.jf = load i8, ptr %i.je, align 1
  %i.jg = icmp eq i8 %i.jf, %i.iy
  br i1 %i.jg, label %bb.aw, label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv.i.i.i87
  br label %local_ts_node_search.exit.i.i

bb.ax:                                            ; preds = %tailrecurse.i.i63
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %i.jk = load i8, ptr %i.jj, align 2             ; 6 uses
  %i.jl = insertelement <16 x i8> poison, i8 %i.iy, i64 0 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iz, i64 3
  %6 = load <32 x i8>, ptr %i.jm, align 1         ; 2 uses
  %i.jn = shufflevector <16 x i8> %i.jl, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.jo = icmp eq <32 x i8> %i.jn, %6
  %i.jp = bitcast <32 x i1> %i.jo to i32
  %i.jq = zext nneg i8 %i.jk to i64               ; 3 uses
  %notmask.i.i.i.i75 = shl nsw i64 -1, %i.jq
  %i.jr = trunc i64 %notmask.i.i.i.i75 to i32
  %i.js = xor i32 %i.jr, -1
  %i.jt = and i32 %i.jp, %i.js                    ; 2 uses
  %.not.i.i.i.i76 = icmp eq i32 %i.jt, 0
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iz, i64 40 ; 4 uses
  %i.jv = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.jt, i1 true)
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jw
  br i1 %.not.i.i.i.i76, label %select.unfold.i.thread62.i, label %local_ts_node_search.exit.i.i

bb.ay:                                            ; preds = %tailrecurse.i.i63
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %i.jz = and i64 %i.ix, 255                      ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1             ; 2 uses
  %i.kc = icmp eq i8 %i.kb, -1
  br i1 %i.kc, label %select.unfold.i.thread63.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kd = getelementptr inbounds nuw i8, ptr %i.iz, i64 272
  %i.ke = zext i8 %i.kb to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ke
  br label %local_ts_node_search.exit.i.i

bb.ba:                                            ; preds = %tailrecurse.i.i63
  %i.kg = lshr i64 %i.ix, 6
  %i.kh = and i64 %i.kg, 3                        ; 2 uses
  %i.ki = and i64 %i.ix, 63
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.kh
  %i.kl = load i64, ptr %i.kk, align 8            ; 2 uses
  %i.km = shl nuw i64 1, %i.ki                    ; 2 uses
  %i.kn = and i64 %i.kl, %i.km
  %.not26.i.i.i64 = icmp eq i64 %i.kn, 0
  br i1 %.not26.i.i.i64, label %select.unfold.i.thread64.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ko = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.kp = and i64 %i.ix, 255
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.kp
  br label %local_ts_node_search.exit.i.i

bb.bc:                                            ; preds = %tailrecurse.i.i63
  unreachable

select.unfold.i.thread.i90:                       ; preds = %bb.au
  %i.kr = getelementptr inbounds nuw i8, ptr %i.iz, i64 2 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.kt = load i8, ptr %i.ks, align 1
  %i.ku = icmp eq i8 %i.jc, %i.kt
  br i1 %i.ku, label %bb.bd, label %.lr.ph.i.i.i.i.i92, !prof !16

select.unfold.i.thread.thread.i103:               ; preds = %.preheader.i.i.i83
  %i.kv = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %i.kw = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = icmp eq i8 %i.kx, 0
  br i1 %i.ky, label %bb.bd, label %local_ts_add_child_4.exit.i.i.i, !prof !16

bb.bd:                                            ; preds = %select.unfold.i.thread.thread.i103, %select.unfold.i.thread.i90
  %i.kz = getelementptr i8, ptr %i.ap, i64 16
  %.val.i.i.i = load ptr, ptr %i.kz, align 8
  %i.la = tail call fastcc ptr @local_ts_grow_node_4(ptr %.val.i.i.i, ptr noundef nonnull %.tr28.i.i, ptr nonnull %i.iz, i8 noundef zeroext %i.iy), !inline_history !13
  br label %local_ts_node_insert.exit.i.i

.lr.ph.i.i.i.i.i92:                               ; preds = %select.unfold.i.thread.i90, %bb.be
  %indvars.iv.i.i.i.i.i93 = phi i64 [ %indvars.iv.next.i.i.i.i.i101, %bb.be ], [ 0, %select.unfold.i.thread.i90 ] ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jd, i64 %indvars.iv.i.i.i.i.i93
  %i.lc = load i8, ptr %i.lb, align 1
  %.not.i.i.i.i.i94 = icmp ult i8 %i.lc, %i.iy
  br i1 %.not.i.i.i.i.i94, label %bb.be, label %local_ts_node_4_get_insertpos.exit.i.i.i.i

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i92
  %indvars.iv.next.i.i.i.i.i101 = add nuw nsw i64 %indvars.iv.i.i.i.i.i93, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i102 = icmp eq i64 %indvars.iv.next.i.i.i.i.i101, %wide.trip.count.i.i.i86
  br i1 %exitcond.not.i.i.i.i.i102, label %local_ts_add_child_4.exit.i.i.i, label %.lr.ph.i.i.i.i.i92, !llvm.loop !14

local_ts_node_4_get_insertpos.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i92
  %i.ld = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  br label %.lr.ph.i15.i.i.i.i95

.lr.ph.i15.i.i.i.i95:                             ; preds = %.lr.ph.i15.i.i.i.i95, %local_ts_node_4_get_insertpos.exit.i.i.i.i
  %indvars.iv6.i.i.i.i96 = phi i64 [ %indvars.iv.next7.i.i.i.i97, %.lr.ph.i15.i.i.i.i95 ], [ %wide.trip.count.i.i.i86, %local_ts_node_4_get_insertpos.exit.i.i.i.i ] ; 4 uses
  %indvars.iv.next7.i.i.i.i97 = add nsw i64 %indvars.iv6.i.i.i.i96, -1 ; 3 uses
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !inline_history !13, !srcloc !18
  %i.le = getelementptr inbounds i8, ptr %i.jd, i64 %indvars.iv.next7.i.i.i.i97
  %i.lf = load i8, ptr %i.le, align 1
  %i.lg = getelementptr inbounds i8, ptr %i.jd, i64 %indvars.iv6.i.i.i.i96
  store i8 %i.lf, ptr %i.lg, align 1
  %i.lh = getelementptr [8 x i8], ptr %i.iz, i64 %indvars.iv6.i.i.i.i96
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %indvars.iv6.i.i.i.i96
  store ptr %i.li, ptr %i.lj, align 8
  %.not.i16.not.i.i.i.i98 = icmp sgt i64 %indvars.iv.next7.i.i.i.i97, %indvars.iv.i.i.i.i.i93
  br i1 %.not.i16.not.i.i.i.i98, label %.lr.ph.i15.i.i.i.i95, label %local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i, !llvm.loop !15

local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i15.i.i.i.i95
  %.pre.i.i.i.i99 = load i8, ptr %i.kr, align 2
  br label %local_ts_add_child_4.exit.i.i.i

local_ts_add_child_4.exit.i.i.i:                  ; preds = %bb.be, %select.unfold.i.thread.thread.i103, %local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i
  %i.lk = phi ptr [ %i.kr, %local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ %i.kv, %select.unfold.i.thread.thread.i103 ], [ %i.kr, %bb.be ]
  %i.ll = phi i8 [ %.pre.i.i.i.i99, %local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ 0, %select.unfold.i.thread.thread.i103 ], [ %i.jc, %bb.be ]
  %.0.lcssa.i3.i.i.i.i100 = phi i64 [ %indvars.iv.i.i.i.i.i93, %local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ 0, %select.unfold.i.thread.thread.i103 ], [ %wide.trip.count.i.i.i86, %bb.be ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.iz, i64 3
  %i.ln = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.0.lcssa.i3.i.i.i.i100
  store i8 %i.iy, ptr %i.lo, align 1
  %i.lp = add i8 %i.ll, 1
  store i8 %i.lp, ptr %i.lk, align 2
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.0.lcssa.i3.i.i.i.i100
  br label %local_ts_node_insert.exit.i.i

select.unfold.i.thread62.i:                       ; preds = %bb.ax
  %i.lr = getelementptr inbounds nuw i8, ptr %i.iz, i64 2 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.iz, i64 3 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.lu = load i8, ptr %i.lt, align 1
  %i.lv = icmp eq i8 %i.jk, %i.lu
  br i1 %i.lv, label %bb.bf, label %bb.bg, !prof !16

bb.bf:                                            ; preds = %select.unfold.i.thread62.i
  %i.lw = tail call fastcc ptr @local_ts_grow_node_16(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.tr28.i.i, ptr nonnull %i.iz, i8 noundef zeroext %i.iy), !inline_history !13
  br label %local_ts_node_insert.exit.i.i

bb.bg:                                            ; preds = %select.unfold.i.thread62.i
  %i.lx = getelementptr i8, ptr %i.ls, i64 %i.jq
  %i.ly = getelementptr i8, ptr %i.lx, i64 -1
  %i.lz = load i8, ptr %i.ly, align 1
  %i.ma = icmp ult i8 %i.lz, %i.iy
  br i1 %i.ma, label %local_ts_node_16_get_insertpos.exit.thread.i.i.i.i, label %local_ts_node_16_get_insertpos.exit.i.i.i.i

local_ts_node_16_get_insertpos.exit.thread.i.i.i.i: ; preds = %bb.bg
  %i.mb = zext i8 %i.jk to i32
  br label %local_ts_add_child_16.exit.i.i.i

local_ts_node_16_get_insertpos.exit.i.i.i.i:      ; preds = %bb.bg
  %i.mc = shufflevector <16 x i8> %i.jl, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.md = icmp ule <32 x i8> %i.mc, %6
  %i.me = bitcast <32 x i1> %i.md to i32
  %i.mf = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.me, i1 true) ; 4 uses
  %i.mg = zext i8 %i.jk to i32
  %.not12.not.i.i32.i.i.i = icmp samesign ult i32 %i.mf, %i.mg
  br i1 %.not12.not.i.i32.i.i.i, label %.lr.ph.i.preheader.i.i.i.i80, label %local_ts_add_child_16.exit.i.i.i

.lr.ph.i.preheader.i.i.i.i80:                     ; preds = %local_ts_node_16_get_insertpos.exit.i.i.i.i
  %i.mh = zext nneg i32 %i.mf to i64
  br label %.lr.ph.i.i33.i.i.i

.lr.ph.i.i33.i.i.i:                               ; preds = %.lr.ph.i.i33.i.i.i, %.lr.ph.i.preheader.i.i.i.i80
  %indvars.iv.i34.i.i.i = phi i64 [ %i.jq, %.lr.ph.i.preheader.i.i.i.i80 ], [ %indvars.iv.next.i.i.i.i81, %.lr.ph.i.i33.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i.i81 = add nsw i64 %indvars.iv.i34.i.i.i, -1 ; 4 uses
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !inline_history !13, !srcloc !18
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ls, i64 %indvars.iv.next.i.i.i.i81
  %i.mj = load i8, ptr %i.mi, align 1
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ls, i64 %indvars.iv.i34.i.i.i
  store i8 %i.mj, ptr %i.mk, align 1
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.next.i.i.i.i81
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.i34.i.i.i
  store ptr %i.mm, ptr %i.mn, align 8
  %.not.i.not.i.i.i.i82 = icmp sgt i64 %indvars.iv.next.i.i.i.i81, %i.mh
  br i1 %.not.i.not.i.i.i.i82, label %.lr.ph.i.i33.i.i.i, label %local_ts_shift_arrays_for_insert.exit.loopexit.i35.i.i.i, !llvm.loop !15

local_ts_shift_arrays_for_insert.exit.loopexit.i35.i.i.i: ; preds = %.lr.ph.i.i33.i.i.i
  %.pre.i36.i.i.i = load i8, ptr %i.lr, align 2
  br label %local_ts_add_child_16.exit.i.i.i

local_ts_add_child_16.exit.i.i.i:                 ; preds = %local_ts_shift_arrays_for_insert.exit.loopexit.i35.i.i.i, %local_ts_node_16_get_insertpos.exit.i.i.i.i, %local_ts_node_16_get_insertpos.exit.thread.i.i.i.i
  %i.mo = phi i8 [ %i.jk, %local_ts_node_16_get_insertpos.exit.thread.i.i.i.i ], [ %i.jk, %local_ts_node_16_get_insertpos.exit.i.i.i.i ], [ %.pre.i36.i.i.i, %local_ts_shift_arrays_for_insert.exit.loopexit.i35.i.i.i ]
  %.0.i3.i.i.i.i79 = phi i32 [ %i.mb, %local_ts_node_16_get_insertpos.exit.thread.i.i.i.i ], [ %i.mf, %local_ts_node_16_get_insertpos.exit.i.i.i.i ], [ %i.mf, %local_ts_shift_arrays_for_insert.exit.loopexit.i35.i.i.i ]
  %i.mp = zext nneg i32 %.0.i3.i.i.i.i79 to i64   ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.mp
  store i8 %i.iy, ptr %i.mq, align 1
  %i.mr = add i8 %i.mo, 1
  store i8 %i.mr, ptr %i.lr, align 2
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.mp
  br label %local_ts_node_insert.exit.i.i

select.unfold.i.thread63.i:                       ; preds = %bb.ay
  %.phi.trans.insert164.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 2 ; 2 uses
  %.pre165.i = load i8, ptr %.phi.trans.insert164.i, align 1 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.mu = load i8, ptr %i.mt, align 1
  %i.mv = icmp eq i8 %.pre165.i, %i.mu
  br i1 %i.mv, label %bb.bh, label %bb.bi, !prof !16

bb.bh:                                            ; preds = %select.unfold.i.thread63.i
  %i.mw = getelementptr i8, ptr %i.ap, i64 40
  %.val31.i.i.i = load ptr, ptr %i.mw, align 8
  %i.mx = tail call fastcc ptr @local_ts_grow_node_48(ptr %.val31.i.i.i, ptr noundef nonnull %.tr28.i.i, ptr nonnull %i.iz, i8 noundef zeroext %i.iy), !inline_history !13
  br label %local_ts_node_insert.exit.i.i

bb.bi:                                            ; preds = %select.unfold.i.thread63.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jz
  %i.mz = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8            ; 3 uses
  %i.nb = xor i64 %i.na, -1
  %i.nc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nb, i1 true) ; 2 uses
  %i.nd = add i64 %i.na, 1
  %i.ne = or i64 %i.nd, %i.na
  store i64 %i.ne, ptr %i.mz, align 8
  %i.nf = trunc nuw nsw i64 %i.nc to i8
  store i8 %i.nf, ptr %i.my, align 1
  %i.ng = add i8 %.pre165.i, 1
  store i8 %i.ng, ptr %.phi.trans.insert164.i, align 2
  %i.nh = getelementptr inbounds nuw i8, ptr %i.iz, i64 272
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.nc
  br label %local_ts_node_insert.exit.i.i

select.unfold.i.thread64.i:                       ; preds = %bb.ba
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.kh
  %.phi.trans.insert.i70 = getelementptr inbounds nuw i8, ptr %i.iz, i64 2 ; 2 uses
  %.pre163.i = load i8, ptr %.phi.trans.insert.i70, align 2
  %i.nk = or i64 %i.kl, %i.km
  store i64 %i.nk, ptr %i.nj, align 8
  %i.nl = add i8 %.pre163.i, 1
  store i8 %i.nl, ptr %.phi.trans.insert.i70, align 2
  %i.nm = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.nn = and i64 %i.ix, 255
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.nn
  br label %local_ts_node_insert.exit.i.i

local_ts_node_insert.exit.i.i:                    ; preds = %select.unfold.i.thread64.i, %bb.bi, %bb.bh, %local_ts_add_child_16.exit.i.i.i, %bb.bf, %local_ts_add_child_4.exit.i.i.i, %bb.bd
  %.0.i.i.i71 = phi ptr [ %i.la, %bb.bd ], [ %i.lq, %local_ts_add_child_4.exit.i.i.i ], [ %i.lw, %bb.bf ], [ %i.ms, %local_ts_add_child_16.exit.i.i.i ], [ %i.mx, %bb.bh ], [ %i.ni, %bb.bi ], [ %i.no, %select.unfold.i.thread64.i ] ; 2 uses
  %i.np = icmp eq i32 %.tr30.i.i, 0
  br i1 %i.np, label %local_ts_get_slot_recursive.exit.i, label %bb.bj

bb.bj:                                            ; preds = %local_ts_node_insert.exit.i.i
  %i.nq = tail call fastcc ptr @local_ts_extend_down(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.0.i.i.i71, i64 noundef range(i64 0, 4294967296) %i.aq, i32 noundef %.tr30.i.i), !inline_history !13
  br label %local_ts_get_slot_recursive.exit.i

local_ts_node_search.exit.i.i:                    ; preds = %bb.bb, %bb.az, %bb.ax, %bb.aw
  %.4.i.i.i65 = phi ptr [ %i.kq, %bb.bb ], [ %i.jx, %bb.ax ], [ %i.ji, %bb.aw ], [ %i.kf, %bb.az ] ; 7 uses
  %i.nr = icmp eq i32 %.tr30.i.i, 0
  br i1 %i.nr, label %local_ts_get_slot_recursive.exit.thread.i, label %bb.bk

bb.bk:                                            ; preds = %local_ts_node_search.exit.i.i
  %i.ns = add i32 %.tr30.i.i, -8
  br label %tailrecurse.i.i63

local_ts_get_slot_recursive.exit.i:               ; preds = %bb.bj, %local_ts_node_insert.exit.i.i, %bb.ar
  %.050.i = phi ptr [ %i.il, %bb.ar ], [ %.0.i.i.i71, %local_ts_node_insert.exit.i.i ], [ %i.nq, %bb.bj ] ; 4 uses
  %i.nt = icmp ult i64 %i.at, 9
  br i1 %i.nt, label %bb.bq, label %.split.i72

local_ts_get_slot_recursive.exit.thread.i:        ; preds = %local_ts_node_search.exit.i.i
  %i.nu = icmp ult i64 %i.at, 9
  %i.nv = load ptr, ptr %.4.i.i.i65, align 8      ; 5 uses
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = trunc i64 %i.nw to i1                   ; 2 uses
  br i1 %i.nu, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %local_ts_get_slot_recursive.exit.thread.i
  br i1 %i.nx, label %.thread205.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @pfree(ptr noundef %i.nv) #14
  br label %.thread205.i

bb.bn:                                            ; preds = %local_ts_get_slot_recursive.exit.thread.i
  br i1 %i.nx, label %.critedge.i69, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 1
  %i.nz = load i8, ptr %i.ny, align 1
  %.not.i66 = icmp eq i8 %i.nz, %.sink
  br i1 %.not.i66, label %.split.thread.i68, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @pfree(ptr noundef nonnull %i.nv) #14
  %i.oa = getelementptr i8, ptr %i.ap, i64 48
  %.val54.i67 = load ptr, ptr %i.oa, align 8
  %i.ob = tail call ptr @MemoryContextAlloc(ptr noundef %.val54.i67, i64 noundef range(i64 -1016, 1025) %i.at) #14 ; 2 uses
  store ptr %i.ob, ptr %.4.i.i.i65, align 8
  br label %.split.thread.i68

.split.thread.i68:                                ; preds = %bb.bp, %bb.bo
  %.sroa.0.0.ph.i = phi ptr [ %i.ob, %bb.bp ], [ %i.nv, %bb.bo ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.ph.i, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  br label %shared_ts_set.exit

.split.i72:                                       ; preds = %local_ts_get_slot_recursive.exit.i
  %i.oc = getelementptr i8, ptr %i.ap, i64 48
  %.val53.i = load ptr, ptr %i.oc, align 8
  %i.od = tail call ptr @MemoryContextAlloc(ptr noundef %.val53.i, i64 noundef range(i64 -1016, 1025) %i.at) #14 ; 2 uses
  store ptr %i.od, ptr %.050.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.od, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  br label %bb.br

.thread205.i:                                     ; preds = %bb.bm, %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.4.i.i.i65, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  %i.oe = load i64, ptr %.4.i.i.i65, align 8
  %i.of = or i64 %i.oe, 1
  store i64 %i.of, ptr %.4.i.i.i65, align 8
  br label %shared_ts_set.exit

bb.bq:                                            ; preds = %local_ts_get_slot_recursive.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.050.i, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  %i.og = load i64, ptr %.050.i, align 8
  %i.oh = or i64 %i.og, 1
  store i64 %i.oh, ptr %.050.i, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.split.i72
  %i.oi = load ptr, ptr %i.ap, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16 ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 8
  %i.ol = add i64 %i.ok, 1
  store i64 %i.ol, ptr %i.oj, align 8
  br label %shared_ts_set.exit

.critedge.i69:                                    ; preds = %bb.bn
  %i.om = getelementptr i8, ptr %i.ap, i64 48
  %.val53.c.i = load ptr, ptr %i.om, align 8
  %i.on = tail call ptr @MemoryContextAlloc(ptr noundef %.val53.c.i, i64 noundef range(i64 -1016, 1025) %i.at) #14 ; 2 uses
  store ptr %i.on, ptr %.4.i.i.i65, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.on, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  br label %shared_ts_set.exit

shared_ts_set.exit:                               ; preds = %.critedge.i69, %bb.br, %.thread205.i, %.split.thread.i68, %.critedge.i, %bb.ao, %.thread226.i, %.split.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @TidStoreIsMember(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %.val = load i16, ptr %1, align 2
  %i.a = getelementptr i8, ptr %1, i64 2
  %.val29 = load i16, ptr %i.a, align 2
  %i.b = zext i16 %.val to i64
  %i.c = shl nuw nsw i64 %i.b, 16
  %i.d = zext i16 %.val29 to i64
  %i.e = or disjoint i64 %i.c, %i.d               ; 4 uses
  %i.f = getelementptr i8, ptr %1, i64 4
  %.val30 = load i16, ptr %i.f, align 2           ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.val31 = load ptr, ptr %i.j, align 8           ; 6 uses
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val31, i64 40
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %shared_ts_find.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.val31, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.val31, i64 56
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %.sroa.0.030.i = load i64, ptr %i.n, align 8
  %i.q = icmp sgt i32 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  %i.s = zext nneg i32 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %shared_ts_node_search.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.s, %.lr.ph.i ], [ %indvars.iv.next.i, %shared_ts_node_search.exit.i ] ; 3 uses
  %.sroa.0.032.i = phi i64 [ %.sroa.0.030.i, %.lr.ph.i ], [ %.sroa.0.0.i, %shared_ts_node_search.exit.i ]
  %.val18.i = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @dsa_get_address(ptr noundef %.val18.i, i64 noundef %.sroa.0.032.i) #14 ; 11 uses
  %i.u = lshr i64 %i.e, %indvars.iv.i             ; 5 uses
  %i.v = trunc i64 %i.u to i8                     ; 2 uses
  %i.w = load i8, ptr %i.t, align 1
  switch i8 %i.w, label %bb.l [
    i8 0, label %.preheader.i.i
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.j
  ]

.preheader.i.i:                                   ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.y = load i8, ptr %i.x, align 2               ; 2 uses
  %.not27.not.i.i = icmp eq i8 %i.y, 0
  br i1 %.not27.not.i.i, label %shared_ts_find.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %wide.trip.count.i.i = zext i8 %i.y to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %shared_ts_find.exit.thread, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.i.i
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, %i.v
  br i1 %i.ac, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  br label %shared_ts_node_search.exit.i

bb.g:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ag = load i8, ptr %i.af, align 2
  %i.ah = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %2 = load <32 x i8>, ptr %i.ai, align 1
  %i.aj = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ak = icmp eq <32 x i8> %i.aj, %2
  %i.al = bitcast <32 x i1> %i.ak to i32
  %i.am = zext nneg i8 %i.ag to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.am
  %i.an = trunc i64 %notmask.i.i.i to i32
  %i.ao = xor i32 %i.an, -1
  %i.ap = and i32 %i.al, %i.ao                    ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ar = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.ap, i1 true)
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  br i1 %.not.i.i.i, label %shared_ts_find.exit.thread, label %shared_ts_node_search.exit.i

bb.h:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.av = and i64 %i.u, 255
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  %i.ay = icmp eq i8 %i.ax, -1
  br i1 %i.ay, label %shared_ts_find.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.ba = zext i8 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  br label %shared_ts_node_search.exit.i

bb.j:                                             ; preds = %bb.c
  %i.bc = lshr i64 %i.u, 6
  %i.bd = and i64 %i.bc, 3
  %i.be = and i64 %i.u, 63
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = shl nuw i64 1, %i.be
  %i.bj = and i64 %i.bh, %i.bi
  %.not26.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not26.i.i, label %shared_ts_find.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.bl = and i64 %i.u, 255
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  br label %shared_ts_node_search.exit.i

bb.l:                                             ; preds = %bb.c
  unreachable

shared_ts_node_search.exit.i:                     ; preds = %bb.k, %bb.i, %bb.g, %bb.f
  %.4.i.i = phi ptr [ %i.bm, %bb.k ], [ %i.at, %bb.g ], [ %i.ae, %bb.f ], [ %i.bb, %bb.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -8
  %.sroa.0.0.i = load i64, ptr %.4.i.i, align 8   ; 3 uses
  %i.bn = icmp sgt i64 %indvars.iv.i, 7
  br i1 %i.bn, label %bb.c, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %shared_ts_node_search.exit.i
  %i.bo = trunc i64 %.sroa.0.0.i to i1
  br i1 %i.bo, label %shared_ts_find.exit.thread53, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %.val.i = load ptr, ptr %i.r, align 8
  %i.bp = tail call ptr @dsa_get_address(ptr noundef %.val.i, i64 noundef %.sroa.0.0.i) #14
  br label %shared_ts_find.exit

bb.n:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %.val31, i64 8
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = icmp ult i64 %i.br, %i.e
  br i1 %i.bs, label %shared_ts_find.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val31, i64 24
  %i.bu = load i32, ptr %i.bt, align 8            ; 2 uses
  %.sroa.0.011.i = load ptr, ptr %.val31, align 8
  %i.bv = icmp sgt i32 %i.bu, -1
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = zext nneg i32 %i.bu to i64
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %local_ts_node_search.exit.i, %bb.o
  %indvars.iv.i33 = phi i64 [ %i.bw, %bb.o ], [ %indvars.iv.next.i36, %local_ts_node_search.exit.i ] ; 3 uses
  %.sroa.0.013.i = phi ptr [ %.sroa.0.011.i, %bb.o ], [ %.sroa.0.0.i37, %local_ts_node_search.exit.i ] ; 11 uses
  %i.bx = lshr i64 %i.e, %indvars.iv.i33          ; 5 uses
  %i.by = trunc i64 %i.bx to i8                   ; 2 uses
  %i.bz = load i8, ptr %.sroa.0.013.i, align 1
  switch i8 %i.bz, label %bb.x [
    i8 0, label %.preheader.i.i44
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.v
  ]

.preheader.i.i44:                                 ; preds = %.lr.ph.i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 2
  %i.cb = load i8, ptr %i.ca, align 2             ; 2 uses
  %.not27.not.i.i45 = icmp eq i8 %i.cb, 0
  br i1 %.not27.not.i.i45, label %shared_ts_find.exit.thread, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %.preheader.i.i44
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 3
  %wide.trip.count.i.i47 = zext i8 %i.cb to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next.i.i49 = add nuw nsw i64 %indvars.iv.i.i48, 1 ; 2 uses
  %exitcond.not.i.i50 = icmp eq i64 %indvars.iv.next.i.i49, %wide.trip.count.i.i47
  br i1 %exitcond.not.i.i50, label %shared_ts_find.exit.thread, label %bb.q, !llvm.loop !1

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i46
  %indvars.iv.i.i48 = phi i64 [ 0, %.lr.ph.i.i46 ], [ %indvars.iv.next.i.i49, %bb.p ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.i.i48
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = icmp eq i8 %i.ce, %i.by
  br i1 %i.cf, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i.i48
  br label %local_ts_node_search.exit.i

bb.s:                                             ; preds = %.lr.ph.i32
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 2
  %i.cj = load i8, ptr %i.ci, align 2
  %i.ck = insertelement <16 x i8> poison, i8 %i.by, i64 0
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 3
  %3 = load <32 x i8>, ptr %i.cl, align 1
  %i.cm = shufflevector <16 x i8> %i.ck, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.cn = icmp eq <32 x i8> %i.cm, %3
  %i.co = bitcast <32 x i1> %i.cn to i32
  %i.cp = zext nneg i8 %i.cj to i64
  %notmask.i.i.i42 = shl nsw i64 -1, %i.cp
  %i.cq = trunc i64 %notmask.i.i.i42 to i32
  %i.cr = xor i32 %i.cq, -1
  %i.cs = and i32 %i.co, %i.cr                    ; 2 uses
  %.not.i.i.i43 = icmp eq i32 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 40
  %i.cu = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.cs, i1 true)
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cv
  br i1 %.not.i.i.i43, label %shared_ts_find.exit.thread, label %local_ts_node_search.exit.i

bb.t:                                             ; preds = %.lr.ph.i32
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 16
  %i.cy = and i64 %i.bx, 255
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1             ; 2 uses
  %i.db = icmp eq i8 %i.da, -1
  br i1 %i.db, label %shared_ts_find.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 272
  %i.dd = zext i8 %i.da to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd
  br label %local_ts_node_search.exit.i

bb.v:                                             ; preds = %.lr.ph.i32
  %i.df = lshr i64 %i.bx, 6
  %i.dg = and i64 %i.df, 3
  %i.dh = and i64 %i.bx, 63
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = shl nuw i64 1, %i.dh
  %i.dm = and i64 %i.dk, %i.dl
  %.not26.i.i34 = icmp eq i64 %i.dm, 0
  br i1 %.not26.i.i34, label %shared_ts_find.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 40
  %i.do = and i64 %i.bx, 255
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do
  br label %local_ts_node_search.exit.i

bb.x:                                             ; preds = %.lr.ph.i32
  unreachable

local_ts_node_search.exit.i:                      ; preds = %bb.w, %bb.u, %bb.s, %bb.r
  %.4.i.i35 = phi ptr [ %i.dp, %bb.w ], [ %i.cw, %bb.s ], [ %i.ch, %bb.r ], [ %i.de, %bb.u ] ; 2 uses
  %indvars.iv.next.i36 = add nsw i64 %indvars.iv.i33, -8
  %.sroa.0.0.i37 = load ptr, ptr %.4.i.i35, align 8 ; 3 uses
  %i.dq = icmp sgt i64 %indvars.iv.i33, 7
  br i1 %i.dq, label %.lr.ph.i32, label %._crit_edge.i38, !llvm.loop !20

._crit_edge.i38:                                  ; preds = %local_ts_node_search.exit.i
  %i.dr = ptrtoint ptr %.sroa.0.0.i37 to i64
  %i.ds = trunc i64 %i.dr to i1
  br i1 %i.ds, label %shared_ts_find.exit.thread53, label %shared_ts_find.exit

shared_ts_find.exit:                              ; preds = %._crit_edge.i38, %bb.m
  %.023 = phi ptr [ %.sroa.0.0.i37, %._crit_edge.i38 ], [ %i.bp, %bb.m ] ; 2 uses
  %i.dt = icmp eq ptr %.023, null
  br i1 %i.dt, label %shared_ts_find.exit.thread, label %shared_ts_find.exit.thread53

shared_ts_find.exit.thread53:                     ; preds = %._crit_edge.i38, %._crit_edge.i, %shared_ts_find.exit
  %.02355 = phi ptr [ %.023, %shared_ts_find.exit ], [ %.4.i.i, %._crit_edge.i ], [ %.4.i.i35, %._crit_edge.i38 ] ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.02355, i64 1
  %i.dv = load i8, ptr %i.du, align 1             ; 2 uses
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %shared_ts_find.exit.thread53
  %i.dx = getelementptr inbounds nuw i8, ptr %.02355, i64 2
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = icmp eq i16 %i.dy, %.val30
  br i1 %i.dz, label %shared_ts_find.exit.thread, label %bb.y

bb.y:                                             ; preds = %.preheader
  %i.ea = getelementptr inbounds nuw i8, ptr %.02355, i64 4
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = icmp eq i16 %i.eb, %.val30
  br i1 %i.ec, label %shared_ts_find.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %.02355, i64 6
  %i.ee = load i16, ptr %i.ed, align 2
  %i.ef = icmp eq i16 %i.ee, %.val30
  br label %shared_ts_find.exit.thread

bb.aa:                                            ; preds = %shared_ts_find.exit.thread53
  %i.eg = sext i8 %i.dv to i32
  %i.eh = zext i16 %.val30 to i32                 ; 2 uses
  %i.ei = lshr i32 %i.eh, 6                       ; 2 uses
  %.not28 = icmp slt i32 %i.ei, %i.eg
  br i1 %.not28, label %bb.ab, label %shared_ts_find.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ej = and i32 %i.eh, 63
  %i.ek = getelementptr inbounds nuw i8, ptr %.02355, i64 8
  %i.el = zext nneg i32 %i.ei to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = zext nneg i32 %i.ej to i64
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = and i64 %i.en, %i.ep
  %i.er = icmp ne i64 %i.eq, 0
  br label %shared_ts_find.exit.thread

shared_ts_find.exit.thread:                       ; preds = %.preheader.i.i, %bb.h, %bb.j, %bb.g, %bb.d, %bb.s, %.preheader.i.i44, %bb.t, %bb.v, %bb.p, %bb.z, %.preheader, %bb.y, %bb.n, %bb.b, %bb.aa, %shared_ts_find.exit, %bb.ab
  %.1 = phi i1 [ %i.er, %bb.ab ], [ false, %shared_ts_find.exit ], [ false, %bb.aa ], [ true, %bb.y ], [ %i.ef, %bb.z ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.s ], [ true, %.preheader ], [ false, %bb.v ], [ false, %bb.t ], [ false, %.preheader.i.i44 ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.h ], [ false, %.preheader.i.i ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @TidStoreBeginIterate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc0(i64 noundef 32) #14 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @palloc0(i64 noundef 216) #14 ; 6 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.e, i64 8
  %.val.i = load ptr, ptr %i.j, align 8
  %i.k = tail call ptr @dsa_get_address(ptr noundef %.val.i, i64 noundef %i.i) #14
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sdiv i32 %i.o, 8                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  store i32 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 204 ; 2 uses
  store i32 %i.p, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.t = sext i32 %i.p to i64
  %i.u = getelementptr inbounds [24 x i8], ptr %i.s, i64 %i.t ; 2 uses
  store i64 %i.i, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.v = load i32, ptr %i.r, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [24 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 0, ptr %i.y, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = tail call ptr @palloc0(i64 noundef 152) #14 ; 5 uses
  store ptr %i.e, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = sdiv i32 %i.ad, 8                       ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  store i32 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 140 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = ptrtoint ptr %i.ab to i64
  store i64 %i.ak, ptr %i.aj, align 8
  %i.al = load i32, ptr %i.ag, align 4
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.ao, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.z, %bb.c ], [ %i.f, %bb.b ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sink, ptr %i.ap, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @TidStoreIterateNext(ptr nofree noundef captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 10 uses
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
