Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tidstore?download=true
inline.NumInlined: 228
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@TidStoreSetBlockOffsets:bb.a
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
  %.tr31.i.i = phi i32 [ %i.by, %bb.q ], [ %i.gw, %bb.ah ] ; 5 uses
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
  %i.cs = load <32 x i8>, ptr %i.cr, align 1      ; 2 uses
  %i.ct = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.cu = icmp eq <32 x i8> %i.ct, %i.cs
  %i.cv = bitcast <32 x i1> %i.cu to i32
  %i.cw = zext nneg i8 %i.cp to i64               ; 3 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.cw
  %i.cx = trunc i64 %notmask.i.i.i.i to i32
  %i.cy = xor i32 %i.cx, -1
  %i.cz = and i32 %i.cv, %i.cy                    ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.cz, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 4 uses
  %i.db = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.cz, i1 true)
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  br i1 %.not.i.i.i.i, label %select.unfold.i.thread69.i, label %shared_ts_node_search.exit.i.i

bb.v:                                             ; preds = %tailrecurse.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.df = and i64 %i.cb, 255                      ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1             ; 2 uses
  %i.di = icmp eq i8 %i.dh, -1
  br i1 %i.di, label %select.unfold.i.thread70.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ce, i64 272
  %i.dk = zext i8 %i.dh to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dk
  br label %shared_ts_node_search.exit.i.i

bb.x:                                             ; preds = %tailrecurse.i.i
  %i.dm = lshr i64 %i.cb, 6
  %i.dn = and i64 %i.dm, 3                        ; 2 uses
  %i.do = and i64 %i.cb, 63
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  %i.dr = load i64, ptr %i.dq, align 8            ; 2 uses
  %i.ds = shl nuw i64 1, %i.do                    ; 2 uses
  %i.dt = and i64 %i.dr, %i.ds
  %.not26.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not26.i.i.i, label %select.unfold.i.thread71.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.dv = and i64 %i.cb, 255
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv
  br label %shared_ts_node_search.exit.i.i

bb.z:                                             ; preds = %tailrecurse.i.i
  unreachable

select.unfold.i.thread.i:                         ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = icmp eq i8 %i.ch, %i.dz
  br i1 %i.ea, label %bb.aa, label %.lr.ph.i.i.i.i.i, !prof !16

select.unfold.i.thread.thread.i:                  ; preds = %.preheader.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.aa, label %shared_ts_add_child_4.exit.i.i.i, !prof !16

bb.aa:                                            ; preds = %select.unfold.i.thread.thread.i, %select.unfold.i.thread.i
  %i.ef = tail call fastcc ptr @shared_ts_grow_node_4(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.tr29.i.i, i64 %i.cd, ptr nonnull %i.ce, i8 noundef zeroext %i.cc), !inline_history !10
  br label %shared_ts_node_insert.exit.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %select.unfold.i.thread.i, %bb.ab
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.ab ], [ 0, %select.unfold.i.thread.i ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv.i.i.i.i.i
  %i.eh = load i8, ptr %i.eg, align 1
  %.not.i.i.i.i.i = icmp ult i8 %i.eh, %i.cc
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %shared_ts_node_4_get_insertpos.exit.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %shared_ts_add_child_4.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

shared_ts_node_4_get_insertpos.exit.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  br label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %.lr.ph.i15.i.i.i.i, %shared_ts_node_4_get_insertpos.exit.i.i.i.i
  %indvars.iv6.i.i.i.i = phi i64 [ %indvars.iv.next7.i.i.i.i, %.lr.ph.i15.i.i.i.i ], [ %wide.trip.count.i.i.i, %shared_ts_node_4_get_insertpos.exit.i.i.i.i ] ; 4 uses
  %indvars.iv.next7.i.i.i.i = add nsw i64 %indvars.iv6.i.i.i.i, -1 ; 3 uses
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !inline_history !10, !srcloc !17
  %i.ej = getelementptr inbounds i8, ptr %i.ci, i64 %indvars.iv.next7.i.i.i.i
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv6.i.i.i.i
  store i8 %i.ek, ptr %i.el, align 1
  %i.em = getelementptr [8 x i8], ptr %i.ce, i64 %indvars.iv6.i.i.i.i
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv6.i.i.i.i
  store i64 %i.en, ptr %i.eo, align 8
  %.not.i16.not.i.i.i.i = icmp sgt i64 %indvars.iv.next7.i.i.i.i, %indvars.iv.i.i.i.i.i
  br i1 %.not.i16.not.i.i.i.i, label %.lr.ph.i15.i.i.i.i, label %shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i, !llvm.loop !12

shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i15.i.i.i.i
  %.pre.i.i.i.i = load i8, ptr %i.dx, align 2
  br label %shared_ts_add_child_4.exit.i.i.i

shared_ts_add_child_4.exit.i.i.i:                 ; preds = %bb.ab, %select.unfold.i.thread.thread.i, %shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i
  %i.ep = phi ptr [ %i.dx, %shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ %i.eb, %select.unfold.i.thread.thread.i ], [ %i.dx, %bb.ab ]
  %i.eq = phi i8 [ %.pre.i.i.i.i, %shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ 0, %select.unfold.i.thread.thread.i ], [ %i.ch, %bb.ab ]
  %.0.lcssa.i3.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i, %shared_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ 0, %select.unfold.i.thread.thread.i ], [ %wide.trip.count.i.i.i, %bb.ab ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.es = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %.0.lcssa.i3.i.i.i.i
  store i8 %i.cc, ptr %i.et, align 1
  %i.eu = add i8 %i.eq, 1
  store i8 %i.eu, ptr %i.ep, align 2
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0.lcssa.i3.i.i.i.i
  br label %shared_ts_node_insert.exit.i.i

select.unfold.i.thread69.i:                       ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ce, i64 3 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = icmp eq i8 %i.cp, %i.ez
  br i1 %i.fa, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %select.unfold.i.thread69.i
  %i.fb = tail call fastcc ptr @shared_ts_grow_node_16(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.tr29.i.i, i64 %i.cd, ptr nonnull %i.ce, i8 noundef zeroext %i.cc), !inline_history !10
  br label %shared_ts_node_insert.exit.i.i

bb.ad:                                            ; preds = %select.unfold.i.thread69.i
  %i.fc = getelementptr i8, ptr %i.ex, i64 %i.cw
  %i.fd = getelementptr i8, ptr %i.fc, i64 -1
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = icmp ult i8 %i.fe, %i.cc
  br i1 %i.ff, label %shared_ts_node_16_get_insertpos.exit.thread.i.i.i.i, label %shared_ts_node_16_get_insertpos.exit.i.i.i.i

shared_ts_node_16_get_insertpos.exit.thread.i.i.i.i: ; preds = %bb.ad
  %i.fg = zext i8 %i.cp to i32
  br label %shared_ts_add_child_16.exit.i.i.i

shared_ts_node_16_get_insertpos.exit.i.i.i.i:     ; preds = %bb.ad
  %i.fh = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.fi = icmp ule <32 x i8> %i.fh, %i.cs
  %i.fj = bitcast <32 x i1> %i.fi to i32
  %i.fk = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.fj, i1 true) ; 4 uses
  %i.fl = zext i8 %i.cp to i32
  %.not12.not.i.i37.i.i.i = icmp samesign ult i32 %i.fk, %i.fl
  br i1 %.not12.not.i.i37.i.i.i, label %.lr.ph.i.preheader.i.i.i.i, label %shared_ts_add_child_16.exit.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %shared_ts_node_16_get_insertpos.exit.i.i.i.i
  %i.fm = zext nneg i32 %i.fk to i64
  br label %.lr.ph.i.i38.i.i.i

.lr.ph.i.i38.i.i.i:                               ; preds = %.lr.ph.i.i38.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %indvars.iv.i39.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i38.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i39.i.i.i, -1 ; 4 uses
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !inline_history !10, !srcloc !17
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv.next.i.i.i.i
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv.i39.i.i.i
  store i8 %i.fo, ptr %i.fp, align 1
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next.i.i.i.i
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.i39.i.i.i
  store i64 %i.fr, ptr %i.fs, align 8
  %.not.i.not.i.i.i.i = icmp sgt i64 %indvars.iv.next.i.i.i.i, %i.fm
  br i1 %.not.i.not.i.i.i.i, label %.lr.ph.i.i38.i.i.i, label %shared_ts_shift_arrays_for_insert.exit.loopexit.i40.i.i.i, !llvm.loop !12

shared_ts_shift_arrays_for_insert.exit.loopexit.i40.i.i.i: ; preds = %.lr.ph.i.i38.i.i.i
  %.pre.i41.i.i.i = load i8, ptr %i.ew, align 2
  br label %shared_ts_add_child_16.exit.i.i.i

shared_ts_add_child_16.exit.i.i.i:                ; preds = %shared_ts_shift_arrays_for_insert.exit.loopexit.i40.i.i.i, %shared_ts_node_16_get_insertpos.exit.i.i.i.i, %shared_ts_node_16_get_insertpos.exit.thread.i.i.i.i
  %i.ft = phi i8 [ %i.cp, %shared_ts_node_16_get_insertpos.exit.thread.i.i.i.i ], [ %i.cp, %shared_ts_node_16_get_insertpos.exit.i.i.i.i ], [ %.pre.i41.i.i.i, %shared_ts_shift_arrays_for_insert.exit.loopexit.i40.i.i.i ]
  %.0.i3.i.i.i.i = phi i32 [ %i.fg, %shared_ts_node_16_get_insertpos.exit.thread.i.i.i.i ], [ %i.fk, %shared_ts_node_16_get_insertpos.exit.i.i.i.i ], [ %i.fk, %shared_ts_shift_arrays_for_insert.exit.loopexit.i40.i.i.i ]
  %i.fu = zext nneg i32 %.0.i3.i.i.i.i to i64     ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fu
  store i8 %i.cc, ptr %i.fv, align 1
  %i.fw = add i8 %i.ft, 1
  store i8 %i.fw, ptr %i.ew, align 2
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.fu
  br label %shared_ts_node_insert.exit.i.i

select.unfold.i.thread70.i:                       ; preds = %bb.v
  %.phi.trans.insert185.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 2 uses
  %.pre186.i = load i8, ptr %.phi.trans.insert185.i, align 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = icmp eq i8 %.pre186.i, %i.fz
  br i1 %i.ga, label %bb.ae, label %bb.af, !prof !16

bb.ae:                                            ; preds = %select.unfold.i.thread70.i
  %i.gb = tail call fastcc ptr @shared_ts_grow_node_48(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.tr29.i.i, i64 %i.cd, ptr nonnull %i.ce, i8 noundef zeroext %i.cc), !inline_history !10
  br label %shared_ts_node_insert.exit.i.i

bb.af:                                            ; preds = %select.unfold.i.thread70.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8            ; 3 uses
  %i.gf = xor i64 %i.ge, -1
  %i.gg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gf, i1 true) ; 2 uses
  %i.gh = add i64 %i.ge, 1
  %i.gi = or i64 %i.gh, %i.ge
  store i64 %i.gi, ptr %i.gd, align 8
  %i.gj = trunc nuw nsw i64 %i.gg to i8
  store i8 %i.gj, ptr %i.gc, align 1
  %i.gk = add i8 %.pre186.i, 1
  store i8 %i.gk, ptr %.phi.trans.insert185.i, align 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ce, i64 272
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gg
  br label %shared_ts_node_insert.exit.i.i

select.unfold.i.thread71.i:                       ; preds = %bb.x
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 2 uses
  %.pre184.i = load i8, ptr %.phi.trans.insert.i, align 2
  %i.go = or i64 %i.dr, %i.ds
  store i64 %i.go, ptr %i.gn, align 8
  %i.gp = add i8 %.pre184.i, 1
  store i8 %i.gp, ptr %.phi.trans.insert.i, align 2
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.gr = and i64 %i.cb, 255
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gr
  br label %shared_ts_node_insert.exit.i.i

shared_ts_node_insert.exit.i.i:                   ; preds = %select.unfold.i.thread71.i, %bb.af, %bb.ae, %shared_ts_add_child_16.exit.i.i.i, %bb.ac, %shared_ts_add_child_4.exit.i.i.i, %bb.aa
  %.0.i.i.i = phi ptr [ %i.ef, %bb.aa ], [ %i.ev, %shared_ts_add_child_4.exit.i.i.i ], [ %i.fb, %bb.ac ], [ %i.fx, %shared_ts_add_child_16.exit.i.i.i ], [ %i.gb, %bb.ae ], [ %i.gm, %bb.af ], [ %i.gs, %select.unfold.i.thread71.i ] ; 2 uses
  %i.gt = icmp eq i32 %.tr31.i.i, 0
  br i1 %i.gt, label %shared_ts_get_slot_recursive.exit.i, label %bb.ag

bb.ag:                                            ; preds = %shared_ts_node_insert.exit.i.i
  %i.gu = tail call fastcc ptr @shared_ts_extend_down(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.0.i.i.i, i64 noundef range(i64 0, 4294967296) %i.aq, i32 noundef %.tr31.i.i), !inline_history !10
  br label %shared_ts_get_slot_recursive.exit.i

shared_ts_node_search.exit.i.i:                   ; preds = %bb.y, %bb.w, %bb.u, %bb.t
  %.4.i.i.i = phi ptr [ %i.dw, %bb.y ], [ %i.dd, %bb.u ], [ %i.cn, %bb.t ], [ %i.dl, %bb.w ] ; 8 uses
  %i.gv = icmp eq i32 %.tr31.i.i, 0
  br i1 %i.gv, label %shared_ts_get_slot_recursive.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %shared_ts_node_search.exit.i.i
  %i.gw = add i32 %.tr31.i.i, -8
  br label %tailrecurse.i.i

shared_ts_get_slot_recursive.exit.i:              ; preds = %bb.ag, %shared_ts_node_insert.exit.i.i, %bb.o
  %.051.i = phi ptr [ %i.bn, %bb.o ], [ %.0.i.i.i, %shared_ts_node_insert.exit.i.i ], [ %i.gu, %bb.ag ] ; 4 uses
  %i.gx = icmp ult i64 %i.at, 9
  br i1 %i.gx, label %bb.an, label %.split.i

shared_ts_get_slot_recursive.exit.thread.i:       ; preds = %shared_ts_node_search.exit.i.i
  %i.gy = icmp ult i64 %i.at, 9
  %i.gz = load i64, ptr %.4.i.i.i, align 8        ; 3 uses
  %i.ha = trunc i64 %i.gz to i1                   ; 2 uses
  br i1 %i.gy, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %shared_ts_get_slot_recursive.exit.thread.i
  br i1 %i.ha, label %.thread226.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val57.i = load ptr, ptr %i.bz, align 8
  tail call void @dsa_free(ptr noundef %.val57.i, i64 noundef %i.gz) #14
  br label %.thread226.i

bb.ak:                                            ; preds = %shared_ts_get_slot_recursive.exit.thread.i
  %i.hb = load ptr, ptr %i.bz, align 8            ; 2 uses
  br i1 %i.ha, label %.critedge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hc = tail call ptr @dsa_get_address(ptr noundef %i.hb, i64 noundef %i.gz) #14 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.he = load i8, ptr %i.hd, align 1
  %.not.i = icmp eq i8 %i.he, %.sink
  br i1 %.not.i, label %.split.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hf = load i64, ptr %.4.i.i.i, align 8
  %.val56.i = load ptr, ptr %i.bz, align 8
  tail call void @dsa_free(ptr noundef %.val56.i, i64 noundef %i.hf) #14
  %i.hg = load ptr, ptr %i.bz, align 8
  %i.hh = tail call i64 @dsa_allocate_extended(ptr noundef %i.hg, i64 noundef range(i64 -1016, 1025) %i.at, i32 noundef 0) #14 ; 2 uses
  %.val.i60.i = load ptr, ptr %i.bz, align 8
  %i.hi = tail call ptr @dsa_get_address(ptr noundef %.val.i60.i, i64 noundef %i.hh) #14
  store i64 %i.hh, ptr %.4.i.i.i, align 8
  br label %.split.thread.i

.split.thread.i:                                  ; preds = %bb.am, %bb.al
  %.sroa.6.0.ph.i = phi ptr [ %i.hi, %bb.am ], [ %i.hc, %bb.al ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6.0.ph.i, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  br label %shared_ts_set.exit

.split.i:                                         ; preds = %shared_ts_get_slot_recursive.exit.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = tail call i64 @dsa_allocate_extended(ptr noundef %i.hk, i64 noundef range(i64 -1016, 1025) %i.at, i32 noundef 0) #14 ; 2 uses
  %.val.i61.i = load ptr, ptr %i.hj, align 8
  %i.hm = tail call ptr @dsa_get_address(ptr noundef %.val.i61.i, i64 noundef %i.hl) #14
  store i64 %i.hl, ptr %.051.i, align 8
end_hunk_0
begin_hunk_1_@TidStoreSetBlockOffsets:bb.a
  store i64 %i.hu, ptr %i.hs, align 8
  br label %shared_ts_set.exit

.critedge.i:                                      ; preds = %bb.ak
  %i.hv = tail call i64 @dsa_allocate_extended(ptr noundef %i.hb, i64 noundef range(i64 -1016, 1025) %i.at, i32 noundef 0) #14 ; 2 uses
  %.val.i61.c.i = load ptr, ptr %i.bz, align 8
  %i.hw = tail call ptr @dsa_get_address(ptr noundef %.val.i61.c.i, i64 noundef %i.hv) #14
  store i64 %i.hv, ptr %.4.i.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  br label %shared_ts_set.exit

bb.ap:                                            ; preds = %._crit_edge
  %i.hx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = icmp ult i64 %i.hy, %i.aq
  br i1 %i.hz, label %bb.aq, label %bb.at, !prof !16

bb.aq:                                            ; preds = %bb.ap
  %i.ia = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ib = load i64, ptr %i.ia, align 8
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.id = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.ie = and i32 %i.id, 24                       ; 2 uses
  %i.if = xor i32 %i.ie, 24                       ; 3 uses
  %i.ig = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  store i8 1, ptr %i.ih, align 2
  %i.ii = lshr i32 %1, %i.if
  %i.ij = trunc i32 %i.ii to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 3
  store i8 %i.ij, ptr %i.ik, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.im = tail call fastcc ptr @local_ts_extend_down(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.il, i64 noundef range(i64 0, 4294967296) %i.aq, i32 noundef %i.if)
  %i.in = load ptr, ptr %i.ap, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  store i32 %i.if, ptr %i.io, align 8
  %i.ip = sub nuw nsw i32 32, %i.ie
  %i.iq = zext nneg i32 %i.ip to i64
  %notmask.i.i106 = shl nsw i64 -1, %i.iq
  %i.ir = xor i64 %notmask.i.i106, -1
  %i.is = load ptr, ptr %i.ap, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i64 %i.ir, ptr %i.it, align 8
  br label %local_ts_get_slot_recursive.exit.i

bb.as:                                            ; preds = %bb.aq
  tail call fastcc void @local_ts_extend_up(ptr noundef nonnull readonly %i.ap, i64 noundef range(i64 0, 4294967296) %i.aq)
  %.pre.i105 = load ptr, ptr %i.ap, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %i.iu = phi ptr [ %.pre.i105, %bb.as ], [ %i.au, %bb.ap ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load i32, ptr %i.iv, align 8
  br label %tailrecurse.i.i63

tailrecurse.i.i63:                                ; preds = %bb.bk, %bb.at
  %.tr28.i.i = phi ptr [ %i.iu, %bb.at ], [ %.4.i.i.i65, %bb.bk ] ; 4 uses
  %.tr30.i.i = phi i32 [ %i.iw, %bb.at ], [ %i.nu, %bb.bk ] ; 5 uses
  %i.ix = zext nneg i32 %.tr30.i.i to i64
  %i.iy = lshr i64 %i.aq, %i.ix                   ; 6 uses
  %i.iz = trunc i64 %i.iy to i8                   ; 9 uses
  %i.ja = load ptr, ptr %.tr28.i.i, align 8       ; 31 uses
  %i.jb = load i8, ptr %i.ja, align 1
  switch i8 %i.jb, label %bb.bc [
    i8 0, label %.preheader.i.i.i83
    i8 1, label %bb.ax
    i8 2, label %bb.ay
    i8 3, label %bb.ba
  ]

.preheader.i.i.i83:                               ; preds = %tailrecurse.i.i63
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jd = load i8, ptr %i.jc, align 2             ; 4 uses
  %.not27.not.i.i.i84 = icmp eq i8 %i.jd, 0
  br i1 %.not27.not.i.i.i84, label %select.unfold.i.thread.thread.i103, label %.lr.ph.i.i.i85

.lr.ph.i.i.i85:                                   ; preds = %.preheader.i.i.i83
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 3 ; 4 uses
  %wide.trip.count.i.i.i86 = zext i8 %i.jd to i64 ; 4 uses
  br label %bb.av

bb.au:                                            ; preds = %bb.av
  %indvars.iv.next.i.i.i88 = add nuw nsw i64 %indvars.iv.i.i.i87, 1 ; 2 uses
  %exitcond.not.i.i.i89 = icmp eq i64 %indvars.iv.next.i.i.i88, %wide.trip.count.i.i.i86
  br i1 %exitcond.not.i.i.i89, label %select.unfold.i.thread.i90, label %bb.av, !llvm.loop !1

bb.av:                                            ; preds = %bb.au, %.lr.ph.i.i.i85
  %indvars.iv.i.i.i87 = phi i64 [ 0, %.lr.ph.i.i.i85 ], [ %indvars.iv.next.i.i.i88, %bb.au ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %indvars.iv.i.i.i87
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = icmp eq i8 %i.jg, %i.iz
  br i1 %i.jh, label %bb.aw, label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv.i.i.i87
  br label %local_ts_node_search.exit.i.i

bb.ax:                                            ; preds = %tailrecurse.i.i63
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jl = load i8, ptr %i.jk, align 2             ; 6 uses
  %i.jm = insertelement <16 x i8> poison, i8 %i.iz, i64 0 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ja, i64 3
  %i.jo = load <32 x i8>, ptr %i.jn, align 1      ; 2 uses
  %i.jp = shufflevector <16 x i8> %i.jm, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.jq = icmp eq <32 x i8> %i.jp, %i.jo
  %i.jr = bitcast <32 x i1> %i.jq to i32
  %i.js = zext nneg i8 %i.jl to i64               ; 3 uses
  %notmask.i.i.i.i75 = shl nsw i64 -1, %i.js
  %i.jt = trunc i64 %notmask.i.i.i.i75 to i32
  %i.ju = xor i32 %i.jt, -1
  %i.jv = and i32 %i.jr, %i.ju                    ; 2 uses
  %.not.i.i.i.i76 = icmp eq i32 %i.jv, 0
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ja, i64 40 ; 4 uses
  %i.jx = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.jv, i1 true)
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jy
  br i1 %.not.i.i.i.i76, label %select.unfold.i.thread62.i, label %local_ts_node_search.exit.i.i

bb.ay:                                            ; preds = %tailrecurse.i.i63
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %i.kb = and i64 %i.iy, 255                      ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1             ; 2 uses
  %i.ke = icmp eq i8 %i.kd, -1
  br i1 %i.ke, label %select.unfold.i.thread63.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ja, i64 272
  %i.kg = zext i8 %i.kd to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.kg
  br label %local_ts_node_search.exit.i.i

bb.ba:                                            ; preds = %tailrecurse.i.i63
  %i.ki = lshr i64 %i.iy, 6
  %i.kj = and i64 %i.ki, 3                        ; 2 uses
  %i.kk = and i64 %i.iy, 63
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kj
  %i.kn = load i64, ptr %i.km, align 8            ; 2 uses
  %i.ko = shl nuw i64 1, %i.kk                    ; 2 uses
  %i.kp = and i64 %i.kn, %i.ko
  %.not26.i.i.i64 = icmp eq i64 %i.kp, 0
  br i1 %.not26.i.i.i64, label %select.unfold.i.thread64.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.kr = and i64 %i.iy, 255
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kr
  br label %local_ts_node_search.exit.i.i

bb.bc:                                            ; preds = %tailrecurse.i.i63
  unreachable

select.unfold.i.thread.i90:                       ; preds = %bb.au
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ja, i64 2 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.kv = load i8, ptr %i.ku, align 1
  %i.kw = icmp eq i8 %i.jd, %i.kv
  br i1 %i.kw, label %bb.bd, label %.lr.ph.i.i.i.i.i92, !prof !16

select.unfold.i.thread.thread.i103:               ; preds = %.preheader.i.i.i83
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.kz = load i8, ptr %i.ky, align 1
  %i.la = icmp eq i8 %i.kz, 0
  br i1 %i.la, label %bb.bd, label %local_ts_add_child_4.exit.i.i.i, !prof !16

bb.bd:                                            ; preds = %select.unfold.i.thread.thread.i103, %select.unfold.i.thread.i90
  %i.lb = getelementptr i8, ptr %i.ap, i64 16
  %.val.i.i.i = load ptr, ptr %i.lb, align 8
  %i.lc = tail call fastcc ptr @local_ts_grow_node_4(ptr %.val.i.i.i, ptr noundef nonnull %.tr28.i.i, ptr nonnull %i.ja, i8 noundef zeroext %i.iz), !inline_history !13
  br label %local_ts_node_insert.exit.i.i

.lr.ph.i.i.i.i.i92:                               ; preds = %select.unfold.i.thread.i90, %bb.be
  %indvars.iv.i.i.i.i.i93 = phi i64 [ %indvars.iv.next.i.i.i.i.i101, %bb.be ], [ 0, %select.unfold.i.thread.i90 ] ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.je, i64 %indvars.iv.i.i.i.i.i93
  %i.le = load i8, ptr %i.ld, align 1
  %.not.i.i.i.i.i94 = icmp ult i8 %i.le, %i.iz
  br i1 %.not.i.i.i.i.i94, label %bb.be, label %local_ts_node_4_get_insertpos.exit.i.i.i.i

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i92
  %indvars.iv.next.i.i.i.i.i101 = add nuw nsw i64 %indvars.iv.i.i.i.i.i93, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i102 = icmp eq i64 %indvars.iv.next.i.i.i.i.i101, %wide.trip.count.i.i.i86
  br i1 %exitcond.not.i.i.i.i.i102, label %local_ts_add_child_4.exit.i.i.i, label %.lr.ph.i.i.i.i.i92, !llvm.loop !14

local_ts_node_4_get_insertpos.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i92
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  br label %.lr.ph.i15.i.i.i.i95

.lr.ph.i15.i.i.i.i95:                             ; preds = %.lr.ph.i15.i.i.i.i95, %local_ts_node_4_get_insertpos.exit.i.i.i.i
  %indvars.iv6.i.i.i.i96 = phi i64 [ %indvars.iv.next7.i.i.i.i97, %.lr.ph.i15.i.i.i.i95 ], [ %wide.trip.count.i.i.i86, %local_ts_node_4_get_insertpos.exit.i.i.i.i ] ; 4 uses
  %indvars.iv.next7.i.i.i.i97 = add nsw i64 %indvars.iv6.i.i.i.i96, -1 ; 3 uses
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !inline_history !13, !srcloc !18
  %i.lg = getelementptr inbounds i8, ptr %i.je, i64 %indvars.iv.next7.i.i.i.i97
  %i.lh = load i8, ptr %i.lg, align 1
  %i.li = getelementptr inbounds nuw i8, ptr %i.je, i64 %indvars.iv6.i.i.i.i96
  store i8 %i.lh, ptr %i.li, align 1
  %i.lj = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv6.i.i.i.i96
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv6.i.i.i.i96
  store ptr %i.lk, ptr %i.ll, align 8
  %.not.i16.not.i.i.i.i98 = icmp sgt i64 %indvars.iv.next7.i.i.i.i97, %indvars.iv.i.i.i.i.i93
  br i1 %.not.i16.not.i.i.i.i98, label %.lr.ph.i15.i.i.i.i95, label %local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i, !llvm.loop !15

local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i15.i.i.i.i95
  %.pre.i.i.i.i99 = load i8, ptr %i.kt, align 2
  br label %local_ts_add_child_4.exit.i.i.i

local_ts_add_child_4.exit.i.i.i:                  ; preds = %bb.be, %select.unfold.i.thread.thread.i103, %local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i
  %i.lm = phi ptr [ %i.kt, %local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ %i.kx, %select.unfold.i.thread.thread.i103 ], [ %i.kt, %bb.be ]
  %i.ln = phi i8 [ %.pre.i.i.i.i99, %local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ 0, %select.unfold.i.thread.thread.i103 ], [ %i.jd, %bb.be ]
  %.0.lcssa.i3.i.i.i.i100 = phi i64 [ %indvars.iv.i.i.i.i.i93, %local_ts_shift_arrays_for_insert.exit.loopexit.i.i.i.i ], [ 0, %select.unfold.i.thread.thread.i103 ], [ %wide.trip.count.i.i.i86, %bb.be ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ja, i64 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.0.lcssa.i3.i.i.i.i100
  store i8 %i.iz, ptr %i.lq, align 1
  %i.lr = add i8 %i.ln, 1
  store i8 %i.lr, ptr %i.lm, align 2
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %.0.lcssa.i3.i.i.i.i100
  br label %local_ts_node_insert.exit.i.i

select.unfold.i.thread62.i:                       ; preds = %bb.ax
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ja, i64 2 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ja, i64 3 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.lw = load i8, ptr %i.lv, align 1
  %i.lx = icmp eq i8 %i.jl, %i.lw
  br i1 %i.lx, label %bb.bf, label %bb.bg, !prof !16

bb.bf:                                            ; preds = %select.unfold.i.thread62.i
  %i.ly = tail call fastcc ptr @local_ts_grow_node_16(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.tr28.i.i, ptr nonnull %i.ja, i8 noundef zeroext %i.iz), !inline_history !13
  br label %local_ts_node_insert.exit.i.i

bb.bg:                                            ; preds = %select.unfold.i.thread62.i
  %i.lz = getelementptr i8, ptr %i.lu, i64 %i.js
  %i.ma = getelementptr i8, ptr %i.lz, i64 -1
  %i.mb = load i8, ptr %i.ma, align 1
  %i.mc = icmp ult i8 %i.mb, %i.iz
  br i1 %i.mc, label %local_ts_node_16_get_insertpos.exit.thread.i.i.i.i, label %local_ts_node_16_get_insertpos.exit.i.i.i.i

local_ts_node_16_get_insertpos.exit.thread.i.i.i.i: ; preds = %bb.bg
  %i.md = zext i8 %i.jl to i32
  br label %local_ts_add_child_16.exit.i.i.i

local_ts_node_16_get_insertpos.exit.i.i.i.i:      ; preds = %bb.bg
  %i.me = shufflevector <16 x i8> %i.jm, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.mf = icmp ule <32 x i8> %i.me, %i.jo
  %i.mg = bitcast <32 x i1> %i.mf to i32
  %i.mh = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.mg, i1 true) ; 4 uses
  %i.mi = zext i8 %i.jl to i32
  %.not12.not.i.i32.i.i.i = icmp samesign ult i32 %i.mh, %i.mi
  br i1 %.not12.not.i.i32.i.i.i, label %.lr.ph.i.preheader.i.i.i.i80, label %local_ts_add_child_16.exit.i.i.i

.lr.ph.i.preheader.i.i.i.i80:                     ; preds = %local_ts_node_16_get_insertpos.exit.i.i.i.i
  %i.mj = zext nneg i32 %i.mh to i64
  br label %.lr.ph.i.i33.i.i.i

.lr.ph.i.i33.i.i.i:                               ; preds = %.lr.ph.i.i33.i.i.i, %.lr.ph.i.preheader.i.i.i.i80
  %indvars.iv.i34.i.i.i = phi i64 [ %i.js, %.lr.ph.i.preheader.i.i.i.i80 ], [ %indvars.iv.next.i.i.i.i81, %.lr.ph.i.i33.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i.i81 = add nsw i64 %indvars.iv.i34.i.i.i, -1 ; 4 uses
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !inline_history !13, !srcloc !18
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lu, i64 %indvars.iv.next.i.i.i.i81
  %i.ml = load i8, ptr %i.mk, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lu, i64 %indvars.iv.i34.i.i.i
  store i8 %i.ml, ptr %i.mm, align 1
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i.i.i.i81
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.i34.i.i.i
  store ptr %i.mo, ptr %i.mp, align 8
  %.not.i.not.i.i.i.i82 = icmp sgt i64 %indvars.iv.next.i.i.i.i81, %i.mj
  br i1 %.not.i.not.i.i.i.i82, label %.lr.ph.i.i33.i.i.i, label %local_ts_shift_arrays_for_insert.exit.loopexit.i35.i.i.i, !llvm.loop !15

local_ts_shift_arrays_for_insert.exit.loopexit.i35.i.i.i: ; preds = %.lr.ph.i.i33.i.i.i
  %.pre.i36.i.i.i = load i8, ptr %i.lt, align 2
  br label %local_ts_add_child_16.exit.i.i.i

local_ts_add_child_16.exit.i.i.i:                 ; preds = %local_ts_shift_arrays_for_insert.exit.loopexit.i35.i.i.i, %local_ts_node_16_get_insertpos.exit.i.i.i.i, %local_ts_node_16_get_insertpos.exit.thread.i.i.i.i
  %i.mq = phi i8 [ %i.jl, %local_ts_node_16_get_insertpos.exit.thread.i.i.i.i ], [ %i.jl, %local_ts_node_16_get_insertpos.exit.i.i.i.i ], [ %.pre.i36.i.i.i, %local_ts_shift_arrays_for_insert.exit.loopexit.i35.i.i.i ]
  %.0.i3.i.i.i.i79 = phi i32 [ %i.md, %local_ts_node_16_get_insertpos.exit.thread.i.i.i.i ], [ %i.mh, %local_ts_node_16_get_insertpos.exit.i.i.i.i ], [ %i.mh, %local_ts_shift_arrays_for_insert.exit.loopexit.i35.i.i.i ]
  %i.mr = zext nneg i32 %.0.i3.i.i.i.i79 to i64   ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.mr
  store i8 %i.iz, ptr %i.ms, align 1
  %i.mt = add i8 %i.mq, 1
  store i8 %i.mt, ptr %i.lt, align 2
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.mr
  br label %local_ts_node_insert.exit.i.i

select.unfold.i.thread63.i:                       ; preds = %bb.ay
  %.phi.trans.insert164.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 2 ; 2 uses
  %.pre165.i = load i8, ptr %.phi.trans.insert164.i, align 1 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.mw = load i8, ptr %i.mv, align 1
  %i.mx = icmp eq i8 %.pre165.i, %i.mw
  br i1 %i.mx, label %bb.bh, label %bb.bi, !prof !16

bb.bh:                                            ; preds = %select.unfold.i.thread63.i
  %i.my = getelementptr i8, ptr %i.ap, i64 40
  %.val31.i.i.i = load ptr, ptr %i.my, align 8
  %i.mz = tail call fastcc ptr @local_ts_grow_node_48(ptr %.val31.i.i.i, ptr noundef nonnull %.tr28.i.i, ptr nonnull %i.ja, i8 noundef zeroext %i.iz), !inline_history !13
  br label %local_ts_node_insert.exit.i.i

bb.bi:                                            ; preds = %select.unfold.i.thread63.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kb
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8            ; 3 uses
  %i.nd = xor i64 %i.nc, -1
  %i.ne = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nd, i1 true) ; 2 uses
  %i.nf = add i64 %i.nc, 1
  %i.ng = or i64 %i.nf, %i.nc
  store i64 %i.ng, ptr %i.nb, align 8
  %i.nh = trunc nuw nsw i64 %i.ne to i8
  store i8 %i.nh, ptr %i.na, align 1
  %i.ni = add i8 %.pre165.i, 1
  store i8 %i.ni, ptr %.phi.trans.insert164.i, align 2
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ja, i64 272
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.ne
  br label %local_ts_node_insert.exit.i.i

select.unfold.i.thread64.i:                       ; preds = %bb.ba
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kj
  %.phi.trans.insert.i70 = getelementptr inbounds nuw i8, ptr %i.ja, i64 2 ; 2 uses
  %.pre163.i = load i8, ptr %.phi.trans.insert.i70, align 2
  %i.nm = or i64 %i.kn, %i.ko
  store i64 %i.nm, ptr %i.nl, align 8
  %i.nn = add i8 %.pre163.i, 1
  store i8 %i.nn, ptr %.phi.trans.insert.i70, align 2
  %i.no = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.np = and i64 %i.iy, 255
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.np
  br label %local_ts_node_insert.exit.i.i

local_ts_node_insert.exit.i.i:                    ; preds = %select.unfold.i.thread64.i, %bb.bi, %bb.bh, %local_ts_add_child_16.exit.i.i.i, %bb.bf, %local_ts_add_child_4.exit.i.i.i, %bb.bd
  %.0.i.i.i71 = phi ptr [ %i.lc, %bb.bd ], [ %i.ls, %local_ts_add_child_4.exit.i.i.i ], [ %i.ly, %bb.bf ], [ %i.mu, %local_ts_add_child_16.exit.i.i.i ], [ %i.mz, %bb.bh ], [ %i.nk, %bb.bi ], [ %i.nq, %select.unfold.i.thread64.i ] ; 2 uses
  %i.nr = icmp eq i32 %.tr30.i.i, 0
  br i1 %i.nr, label %local_ts_get_slot_recursive.exit.i, label %bb.bj

bb.bj:                                            ; preds = %local_ts_node_insert.exit.i.i
  %i.ns = tail call fastcc ptr @local_ts_extend_down(ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %.0.i.i.i71, i64 noundef range(i64 0, 4294967296) %i.aq, i32 noundef %.tr30.i.i), !inline_history !13
  br label %local_ts_get_slot_recursive.exit.i

local_ts_node_search.exit.i.i:                    ; preds = %bb.bb, %bb.az, %bb.ax, %bb.aw
  %.4.i.i.i65 = phi ptr [ %i.ks, %bb.bb ], [ %i.jz, %bb.ax ], [ %i.jj, %bb.aw ], [ %i.kh, %bb.az ] ; 7 uses
  %i.nt = icmp eq i32 %.tr30.i.i, 0
  br i1 %i.nt, label %local_ts_get_slot_recursive.exit.thread.i, label %bb.bk

bb.bk:                                            ; preds = %local_ts_node_search.exit.i.i
  %i.nu = add i32 %.tr30.i.i, -8
  br label %tailrecurse.i.i63

local_ts_get_slot_recursive.exit.i:               ; preds = %bb.bj, %local_ts_node_insert.exit.i.i, %bb.ar
  %.050.i = phi ptr [ %i.im, %bb.ar ], [ %.0.i.i.i71, %local_ts_node_insert.exit.i.i ], [ %i.ns, %bb.bj ] ; 4 uses
  %i.nv = icmp ult i64 %i.at, 9
  br i1 %i.nv, label %bb.bq, label %.split.i72

local_ts_get_slot_recursive.exit.thread.i:        ; preds = %local_ts_node_search.exit.i.i
  %i.nw = icmp ult i64 %i.at, 9
  %i.nx = load ptr, ptr %.4.i.i.i65, align 8      ; 5 uses
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = trunc i64 %i.ny to i1                   ; 2 uses
  br i1 %i.nw, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %local_ts_get_slot_recursive.exit.thread.i
  br i1 %i.nz, label %.thread205.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @pfree(ptr noundef %i.nx) #14
  br label %.thread205.i

bb.bn:                                            ; preds = %local_ts_get_slot_recursive.exit.thread.i
  br i1 %i.nz, label %.critedge.i69, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 1
  %i.ob = load i8, ptr %i.oa, align 1
  %.not.i66 = icmp eq i8 %i.ob, %.sink
  br i1 %.not.i66, label %.split.thread.i68, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @pfree(ptr noundef nonnull %i.nx) #14
  %i.oc = getelementptr i8, ptr %i.ap, i64 48
  %.val54.i67 = load ptr, ptr %i.oc, align 8
  %i.od = tail call ptr @MemoryContextAlloc(ptr noundef %.val54.i67, i64 noundef range(i64 -1016, 1025) %i.at) #14 ; 2 uses
  store ptr %i.od, ptr %.4.i.i.i65, align 8
  br label %.split.thread.i68

.split.thread.i68:                                ; preds = %bb.bp, %bb.bo
  %.sroa.0.0.ph.i = phi ptr [ %i.od, %bb.bp ], [ %i.nx, %bb.bo ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.ph.i, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  br label %shared_ts_set.exit

.split.i72:                                       ; preds = %local_ts_get_slot_recursive.exit.i
  %i.oe = getelementptr i8, ptr %i.ap, i64 48
  %.val53.i = load ptr, ptr %i.oe, align 8
  %i.of = tail call ptr @MemoryContextAlloc(ptr noundef %.val53.i, i64 noundef range(i64 -1016, 1025) %i.at) #14 ; 2 uses
  store ptr %i.of, ptr %.050.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.of, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
  br label %bb.br

.thread205.i:                                     ; preds = %bb.bm, %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.4.i.i.i65, ptr nonnull readonly align 8 %4, i64 %i.at, i1 false)
end_hunk_1
