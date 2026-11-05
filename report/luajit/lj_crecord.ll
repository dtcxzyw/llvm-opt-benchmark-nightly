Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_crecord?download=true
inline.NumInlined: 64
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@crec_copy:bb.a
  br i1 %.not50, label %bb.q, label %crec_ct2irt.exit.thread68

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr i8, ptr %4, i64 8
  %.val = load i16, ptr %i.av, align 8, !tbaa !71 ; 2 uses
  %.not12.i = icmp eq i16 %.val, 0
  br i1 %.not12.i, label %crec_copy_unroll.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !56  ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %.thread.i, %.lr.ph.i
  %.03414.i = phi i32 [ 0, %.lr.ph.i ], [ %.4.i, %.thread.i ] ; 7 uses
  %.036.in13.i = phi i16 [ %.val, %.lr.ph.i ], [ %i.ba, %.thread.i ]
  %i.ax = zext i16 %.036.in13.i to i64
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !71 ; 2 uses
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !58 ; 2 uses
  %i.bc = lshr i32 %i.bb, 28
  switch i32 %i.bc, label %crec_copy_unroll.exit.thread [
    i32 9, label %bb.s
    i32 11, label %.thread.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !73
  %.not46.i = icmp eq i64 %i.be, 0
  br i1 %.not46.i, label %.thread.i, label %.preheader.i, !llvm.loop !120

.preheader.i:                                     ; preds = %bb.s, %.preheader.i
  %i.bf = phi i32 [ %i.bj, %.preheader.i ], [ %i.bb, %bb.s ]
  %i.bg = and i32 %i.bf, 65535
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.bh ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !58 ; 6 uses
  %i.bk = icmp slt i32 %i.bj, -1879048192
  br i1 %i.bk, label %.preheader.i, label %ctype_rawchild.exit.i, !llvm.loop !1

ctype_rawchild.exit.i:                            ; preds = %.preheader.i
  %.mask.i.i = and i32 %i.bj, -268435456
  %i.bl = icmp eq i32 %.mask.i.i, 1342177280
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %ctype_rawchild.exit.i
  %i.bm = and i32 %i.bj, 65535
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.bn ; 2 uses
  %.pre.i.i = load i32, ptr %i.bo, align 8, !tbaa !58
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %ctype_rawchild.exit.i
  %i.bp = phi i32 [ %.pre.i.i, %bb.t ], [ %i.bj, %ctype_rawchild.exit.i ] ; 4 uses
  %.017.i.i = phi ptr [ %i.bo, %bb.t ], [ %i.bi, %ctype_rawchild.exit.i ] ; 3 uses
  %i.bq = lshr i32 %i.bp, 28
  switch i32 %i.bq, label %bb.aa [
    i32 0, label %bb.v
    i32 2, label %bb.z
  ], !prof !68

bb.v:                                             ; preds = %bb.u
  %i.br = and i32 %i.bp, 67108864
  %.not.i.i = icmp eq i32 %i.br, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !60 ; 3 uses
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %switch.selectcmp.i.i = icmp eq i32 %i.bt, 4
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 13, i32 10
  %switch.selectcmp24.i.i = icmp eq i32 %i.bt, 8
  %switch.select25.i.i = select i1 %switch.selectcmp24.i.i, i32 14, i32 %switch.select.i.i
  br label %crec_ct2irt.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true)
  %i.bv = xor i32 %i.bu, 31                       ; 2 uses
  %i.bw = icmp samesign ult i32 %i.bv, 4
  br i1 %i.bw, label %bb.y, label %crec_copy_unroll.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bx = shl nuw nsw i32 %i.bv, 1
  %i.by = lshr i32 %i.bp, 23
  %.lobit.i.i = and i32 %i.by, 1
  %i.bz = add nuw nsw i32 %.lobit.i.i, 15
  %i.ca = add nuw nsw i32 %i.bz, %i.bx
  br label %crec_ct2irt.exit.i

bb.z:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !60
  %i.cd = icmp eq i32 %i.cc, 8
  %i.ce = select i1 %i.cd, i32 9, i32 5
  br label %crec_ct2irt.exit.i

bb.aa:                                            ; preds = %bb.u
  %i.cf = and i32 %i.bp, -201326592
  %i.cg = icmp eq i32 %i.cf, 872415232
  br i1 %i.cg, label %bb.ab, label %crec_copy_unroll.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !60 ; 2 uses
  %switch.selectcmp26.i.i = icmp eq i32 %i.ci, 8
  %switch.select27.i.i = select i1 %switch.selectcmp26.i.i, i32 13, i32 10
  %switch.selectcmp28.i.i = icmp eq i32 %i.ci, 16
  %switch.select29.i.i = select i1 %switch.selectcmp28.i.i, i32 14, i32 %switch.select27.i.i
  br label %crec_ct2irt.exit.i

crec_ct2irt.exit.i:                               ; preds = %bb.ab, %bb.z, %bb.y, %bb.w
  %.1.i.i = phi i32 [ %switch.select29.i.i, %bb.ab ], [ %switch.select25.i.i, %bb.w ], [ %i.ce, %bb.z ], [ %i.ca, %bb.y ] ; 3 uses
  %i.cj = icmp eq i32 %.1.i.i, 10
  %i.ck = icmp ugt i32 %.03414.i, 15
  %or.cond.i = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond.i, label %crec_copy_unroll.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %crec_ct2irt.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !60 ; 2 uses
  %i.cn = zext nneg i32 %.03414.i to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.cn ; 2 uses
  store i32 %i.cm, ptr %i.co, align 16, !tbaa !78
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 %.1.i.i, ptr %i.cp, align 4, !tbaa !79
  %i.cq = add nuw nsw i32 %.03414.i, 1            ; 2 uses
  %i.cr = and i32 %i.bj, -201326592
  %i.cs = icmp eq i32 %i.cr, 872415232
  br i1 %i.cs, label %bb.ad, label %.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.ct = icmp eq i32 %.03414.i, 15
  br i1 %i.ct, label %crec_copy_unroll.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !60
  %i.cw = lshr i32 %i.cv, 1
  %i.cx = add i32 %i.cw, %i.cm
  %i.cy = zext nneg i32 %i.cq to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.cy ; 2 uses
  store i32 %i.cx, ptr %i.cz, align 16, !tbaa !78
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %.1.i.i, ptr %i.da, align 4, !tbaa !79
  %i.db = add nuw nsw i32 %.03414.i, 2
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ae, %bb.ac, %bb.s, %bb.r
  %.4.i = phi i32 [ %.03414.i, %bb.r ], [ %i.db, %bb.ae ], [ %i.cq, %bb.ac ], [ %.03414.i, %bb.s ] ; 2 uses
  %.not.i53 = icmp eq i16 %i.ba, 0
  br i1 %.not.i53, label %crec_copy_unroll.exit, label %bb.r

crec_ct2irt.exit.thread68.sink.split:             ; preds = %bb.l, %bb.m, %bb.o, %bb.j, %crec_ct2irt.exit
  %.1.i.ph.sink = phi i32 [ %.1.i, %crec_ct2irt.exit ], [ 14, %bb.o ], [ %i.ao, %bb.m ], [ %i.ak, %bb.l ], [ 14, %bb.j ] ; 2 uses
  %i.dc = zext nneg i32 %.1.i.ph.sink to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @lj_ir_type_size, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !35
  %i.df = zext i8 %i.de to i32
  br label %crec_ct2irt.exit.thread68

crec_ct2irt.exit.thread68:                        ; preds = %crec_ct2irt.exit.thread68.sink.split, %bb.p, %bb.k, %bb.n, %crec_ct2irt.exit, %bb.d
  %i.dg = phi i1 [ false, %bb.n ], [ false, %bb.p ], [ false, %bb.d ], [ false, %crec_ct2irt.exit ], [ false, %bb.k ], [ true, %crec_ct2irt.exit.thread68.sink.split ]
  %.24484.shrunk = phi i32 [ 8, %bb.n ], [ 8, %bb.p ], [ 8, %bb.d ], [ 8, %crec_ct2irt.exit ], [ 8, %bb.k ], [ %i.df, %crec_ct2irt.exit.thread68.sink.split ]
  %i.dh = phi i32 [ 22, %bb.n ], [ 22, %bb.p ], [ 22, %bb.d ], [ 22, %crec_ct2irt.exit ], [ 22, %bb.k ], [ %.1.i.ph.sink, %crec_ct2irt.exit.thread68.sink.split ]
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i, %crec_ct2irt.exit.thread68
  %.024.i = phi i32 [ %.24484.shrunk, %crec_ct2irt.exit.thread68 ], [ %i.dp, %._crit_edge.i ] ; 3 uses
  %.123.i = phi i32 [ %i.dh, %crec_ct2irt.exit.thread68 ], [ %i.dq, %._crit_edge.i ] ; 2 uses
  %.020.i = phi i32 [ 0, %crec_ct2irt.exit.thread68 ], [ %.121.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0.i54 = phi i32 [ 0, %crec_ct2irt.exit.thread68 ], [ %.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.di = add nuw nsw i32 %.020.i, %.024.i        ; 2 uses
  %.not32.i = icmp ugt i32 %i.di, %i.g
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.af
  %umax.i = tail call i32 @llvm.umax.i32(i32 %.0.i54, i32 16)
  %wide.trip.count.i = zext i32 %umax.i to i64
  %exitcond.i135 = icmp ugt i32 %.0.i54, 15
  br i1 %exitcond.i135, label %crec_copy_unroll.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.i
  %i.dj = zext nneg i32 %.0.i54 to i64
  br label %bb.ag

.lr.ph.i55:                                       ; preds = %bb.ag
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %crec_copy_unroll.exit.thread, label %bb.ag, !llvm.loop !121

bb.ag:                                            ; preds = %.lr.ph, %.lr.ph.i55
  %.12133.i137 = phi i32 [ %.020.i, %.lr.ph ], [ %i.dk, %.lr.ph.i55 ]
  %i.dk = phi i32 [ %i.di, %.lr.ph ], [ %i.dn, %.lr.ph.i55 ] ; 3 uses
  %indvars.iv.i136 = phi i64 [ %i.dj, %.lr.ph ], [ %indvars.iv.next.i, %.lr.ph.i55 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.i136 ; 2 uses
  store i32 %.12133.i137, ptr %i.dl, align 16, !tbaa !78
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %.123.i, ptr %i.dm, align 4, !tbaa !79
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i136, 1 ; 3 uses
  %i.dn = add nuw nsw i32 %i.dk, %.024.i          ; 2 uses
  %.not.i56 = icmp samesign ugt i32 %i.dn, %i.g
  br i1 %.not.i56, label %._crit_edge.loopexit.i, label %.lr.ph.i55, !llvm.loop !121

._crit_edge.loopexit.i:                           ; preds = %bb.ag
  %i.do = trunc nuw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.af
  %.121.lcssa.i = phi i32 [ %.020.i, %bb.af ], [ %i.dk, %._crit_edge.loopexit.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0.i54, %bb.af ], [ %i.do, %._crit_edge.loopexit.i ] ; 2 uses
  %i.dp = lshr i32 %.024.i, 1
  %i.dq = add i32 %.123.i, -2
  %i.dr = icmp ult i32 %.121.lcssa.i, %i.g
  br i1 %i.dr, label %bb.af, label %crec_copy_unroll.exit, !llvm.loop !122

crec_copy_unroll.exit:                            ; preds = %.thread.i, %._crit_edge.i
  %.146 = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %.4.i, %.thread.i ] ; 2 uses
  %.138 = phi i1 [ %i.dg, %._crit_edge.i ], [ true, %.thread.i ]
  %.not51 = icmp eq i32 %.146, 0
  br i1 %.not51, label %crec_copy_unroll.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %crec_copy_unroll.exit
  %i.ds = trunc i32 %2 to i16
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 5 uses
  %i.dw = trunc i32 %1 to i16
  %i.dx = zext i32 %.146 to i64                   ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.i, %bb.ah
  %indvars.iv52.i = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next53.i, %.loopexit.i ] ; 3 uses
  %indvars.iv50.i = phi i32 [ 1, %bb.ah ], [ %indvars.iv.next51.i, %.loopexit.i ] ; 3 uses
  %.03847.i = phi i32 [ 0, %bb.ah ], [ %.1.i63, %.loopexit.i ]
  %.03946.i = phi i32 [ 0, %bb.ah ], [ %.2.i, %.loopexit.i ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv52.i ; 4 uses
  %i.dz = load i32, ptr %i.dy, align 16, !tbaa !78
  %i.ea = zext i32 %i.dz to i64
  %i.eb = tail call i32 @lj_ir_kint64(ptr noundef %0, i64 noundef %i.ea) #8 ; 2 uses
  %i.ec = trunc i32 %i.eb to i16
  store i16 10505, ptr %i.du, align 4, !tbaa !35
  store i16 %i.ds, ptr %i.dt, align 8, !tbaa !35
  store i16 %i.ec, ptr %i.dv, align 2, !tbaa !35
  %i.ed = tail call i32 @lj_opt_fold(ptr noundef %0) #8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !79
  %i.eg = trunc i32 %i.ef to i16
  %i.eh = or i16 %i.eg, 17920
  %i.ei = trunc i32 %i.ed to i16
  store i16 %i.eh, ptr %i.du, align 4, !tbaa !35
  store i16 %i.ei, ptr %i.dt, align 8, !tbaa !35
  store i16 0, ptr %i.dv, align 2, !tbaa !35
  %i.ej = tail call i32 @lj_opt_fold(ptr noundef %0) #8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !125
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i32 %i.eb, ptr %i.el, align 8, !tbaa !126
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 3 uses
  %i.em = add i32 %.03847.i, 1                    ; 2 uses
  %i.en = icmp ult i32 %i.em, 4
  %.not.i57 = icmp samesign ult i64 %indvars.iv.next53.i, %i.dx
  %or.cond.i58 = select i1 %i.en, i1 %.not.i57, i1 false
  br i1 %or.cond.i58, label %.loopexit.i, label %.preheader.i59

.preheader.i59:                                   ; preds = %bb.ai
  %i.eo = zext i32 %.03946.i to i64               ; 2 uses
  %.not4344.i = icmp samesign ult i64 %indvars.iv52.i, %i.eo
  br i1 %.not4344.i, label %.loopexit.i, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.preheader.i59, %.lr.ph.i60
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i62, %.lr.ph.i60 ], [ %i.eo, %.preheader.i59 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.i61 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !126
  %i.es = trunc i32 %i.er to i16
  store i16 10505, ptr %i.du, align 4, !tbaa !35
  store i16 %i.dw, ptr %i.dt, align 8, !tbaa !35
  store i16 %i.es, ptr %i.dv, align 2, !tbaa !35
  %i.et = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !79
  %i.ew = trunc i32 %i.ev to i16
  %i.ex = or i16 %i.ew, 19968
  %i.ey = trunc i32 %i.et to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !125
  %i.fb = trunc i32 %i.fa to i16
  store i16 %i.ex, ptr %i.du, align 4, !tbaa !35
  store i16 %i.ey, ptr %i.dt, align 8, !tbaa !35
  store i16 %i.fb, ptr %i.dv, align 2, !tbaa !35
  %i.fc = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i62 to i32
  %exitcond = icmp eq i32 %indvars.iv50.i, %lftr.wideiv
  br i1 %exitcond, label %.loopexit.i, label %.lr.ph.i60, !llvm.loop !123

.loopexit.i:                                      ; preds = %.lr.ph.i60, %.preheader.i59, %bb.ai
  %.2.i = phi i32 [ %.03946.i, %bb.ai ], [ %.03946.i, %.preheader.i59 ], [ %indvars.iv50.i, %.lr.ph.i60 ]
  %.1.i63 = phi i32 [ %i.em, %bb.ai ], [ 0, %.preheader.i59 ], [ 0, %.lr.ph.i60 ]
  %indvars.iv.next51.i = add i32 %indvars.iv50.i, 1
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next53.i, %i.dx
  br i1 %exitcond55.not.i, label %crec_copy_emit.exit, label %bb.ai, !llvm.loop !124

crec_copy_emit.exit:                              ; preds = %.loopexit.i
  br i1 %.138, label %.thread93, label %bb.aj

bb.aj:                                            ; preds = %crec_copy_emit.exit
  store i16 23040, ptr %i.du, align 4, !tbaa !35
  store i16 0, ptr %i.dt, align 8, !tbaa !35
  store i16 0, ptr %i.dv, align 2, !tbaa !35
  %i.fd = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %.thread93

.thread93:                                        ; preds = %crec_copy_emit.exit, %bb.b, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.al

crec_copy_unroll.exit.thread:                     ; preds = %bb.x, %bb.r, %bb.ad, %crec_ct2irt.exit.i, %bb.aa, %.lr.ph.preheader.i, %.lr.ph.i55, %bb.q, %crec_copy_unroll.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.ak

bb.ak:                                            ; preds = %crec_copy_unroll.exit.thread, %bb.a
  %i.fe = tail call i32 (ptr, i32, ...) @lj_ir_call(ptr noundef %0, i32 noundef 99, i32 noundef %1, i32 noundef %2, i32 noundef %3) #8 ; 0 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 23040, ptr %i.fg, align 4, !tbaa !35
  store i16 0, ptr %i.ff, align 8, !tbaa !35
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 0, ptr %i.fh, align 2, !tbaa !35
  %i.fi = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %.thread93, %bb.ak
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @recff_ffi_fill(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -352
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48
  %i.d = inttoptr i64 %i.c to ptr                 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31   ; 2 uses
  %i.l = icmp ne i32 %i.g, 0
  %i.m = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %.mask = and i64 %i.o, -140737488355328
  %i.p = icmp eq i64 %.mask, -1548112371908608
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.q = and i64 %i.o, 140737488355327
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.t = load i16, ptr %i.s, align 2, !tbaa !35
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !56   ; 3 uses
  %i.v = zext i16 %i.t to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.pn = phi i64 [ %i.v, %bb.c ], [ %i.z, %bb.d ]
  %.0.i = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.pn ; 2 uses
  %i.w = load i32, ptr %.0.i, align 8, !tbaa !58  ; 4 uses
  %i.x = icmp slt i32 %i.w, -1879048192
  %i.y = and i32 %i.w, 65535
  %i.z = zext nneg i32 %i.y to i64
  br i1 %i.x, label %bb.d, label %ctype_raw.exit, !llvm.loop !0

ctype_raw.exit:                                   ; preds = %bb.d
  %.mask40 = and i32 %i.w, -268435456
  %i.aa = icmp eq i32 %.mask40, 536870912
  br i1 %i.aa, label %.preheader, label %ctype_rawchild.exit

.preheader:                                       ; preds = %ctype_raw.exit, %.preheader
  %i.ab = phi i32 [ %i.af, %.preheader ], [ %i.w, %ctype_raw.exit ]
  %i.ac = and i32 %i.ab, 65535
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ag = icmp slt i32 %i.af, -1879048192
  br i1 %i.ag, label %.preheader, label %ctype_rawchild.exit, !llvm.loop !1

ctype_rawchild.exit:                              ; preds = %.preheader, %ctype_raw.exit
  %.0 = phi ptr [ %.0.i, %ctype_raw.exit ], [ %i.ae, %.preheader ]
  %i.ah = ptrtoint ptr %.0 to i64
  %i.ai = ptrtoint ptr %i.u to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 24
  %i.al = trunc i64 %i.ak to i32
  %i.am = call i32 @lj_ctype_info(ptr noundef nonnull %i.d, i32 noundef %i.al, ptr noundef nonnull %i.a) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.pre = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %ctype_rawchild.exit, %bb.b
  %i.an = phi ptr [ %.pre, %ctype_rawchild.exit ], [ %i.n, %bb.b ]
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 456
  %i.aq = call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, i32 noundef 0, i32 noundef %i.g, ptr noundef %i.an)
  %i.ar = load ptr, ptr %1, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val42 = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %.val42, i64 216
  %i.au = call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %i.at, i32 noundef 0, i32 noundef %i.i, ptr noundef nonnull readonly %i.as)
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %1, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.val = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ay = call fastcc i32 @crec_ct_tv(ptr noundef nonnull %0, ptr noundef nonnull %i.ax, i32 noundef 0, i32 noundef %i.k, ptr noundef nonnull readonly %i.aw)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.az = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.036 = phi i32 [ %i.ay, %bb.f ], [ %i.az, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !65
  call fastcc void @crec_fill(ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef %i.au, i32 noundef %.036)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  ret void
}

declare hidden i32 @lj_ctype_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @crec_fill(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [16 x %struct.CRecMemList], align 16 ; 7 uses
  %i.a = and i32 %2, 32768
  %.not.not = icmp eq i32 %i.a, 0
  br i1 %.not.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = and i32 %2, 32767
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35   ; 5 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %crec_fill_emit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i32 %i.g, 128
  br i1 %i.i, label %crec_fill_emit.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge.i
  %.022.i = phi i32 [ %i.q, %._crit_edge.i ], [ 8, %bb.c ] ; 3 uses
  %.020.i = phi i32 [ %.121.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ] ; 3 uses
  %.019.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ] ; 4 uses
  %.0.i = phi i32 [ %i.r, %._crit_edge.i ], [ 22, %bb.c ] ; 2 uses
  %i.j = add i32 %.020.i, %.022.i                 ; 2 uses
  %.not29.i = icmp ugt i32 %i.j, %i.g
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader
  %umax.i = tail call i32 @llvm.umax.i32(i32 %.019.i, i32 16)
  %wide.trip.count.i = zext i32 %umax.i to i64
  %exitcond.i2 = icmp ugt i32 %.019.i, 15
  br i1 %exitcond.i2, label %crec_fill_emit.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.i
  %i.k = zext nneg i32 %.019.i to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %bb.d
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %crec_fill_emit.exit.thread, label %bb.d, !llvm.loop !127

bb.d:                                             ; preds = %.lr.ph, %.lr.ph.i
  %.12130.i4 = phi i32 [ %.020.i, %.lr.ph ], [ %i.l, %.lr.ph.i ]
  %i.l = phi i32 [ %i.j, %.lr.ph ], [ %i.o, %.lr.ph.i ] ; 3 uses
  %indvars.iv.i3 = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i3 ; 2 uses
  store i32 %.12130.i4, ptr %i.m, align 16, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %.0.i, ptr %i.n, align 4, !tbaa !79
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i3, 1 ; 3 uses
  %i.o = add nuw nsw i32 %i.l, %.022.i            ; 2 uses
  %.not.i = icmp samesign ugt i32 %i.o, %i.g
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !127

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %i.p = trunc nuw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader
  %.121.lcssa.i = phi i32 [ %.020.i, %.preheader ], [ %i.l, %._crit_edge.loopexit.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.019.i, %.preheader ], [ %i.p, %._crit_edge.loopexit.i ] ; 3 uses
  %i.q = lshr i32 %.022.i, 1
  %i.r = add i32 %.0.i, -2
  %i.s = icmp ult i32 %.121.lcssa.i, %i.g
  br i1 %i.s, label %.preheader, label %crec_fill_unroll.exit, !llvm.loop !128

crec_fill_unroll.exit:                            ; preds = %._crit_edge.i
  %.not = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not, label %crec_fill_emit.exit.thread, label %bb.e

bb.e:                                             ; preds = %crec_fill_unroll.exit
  %i.t = and i32 %3, 32768
  %i.u = icmp eq i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = icmp ne i32 %i.w, 16
  %or.cond = select i1 %i.u, i1 true, i1 %i.x
  br i1 %or.cond, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = trunc i32 %3 to i16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  store i16 23315, ptr %i.aa, align 4, !tbaa !35
  store i16 %i.y, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 3 uses
  store i16 624, ptr %i.ab, align 2, !tbaa !35
  %i.ac = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 5 uses
  switch i32 %i.w, label %bb.j [
    i32 16, label %.thread
    i32 22, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ad = and i32 %i.ac, 32768
  %.not43.not = icmp eq i32 %i.ad, 0
  br i1 %.not43.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = trunc i32 %i.ac to i16
  store i16 23318, ptr %i.aa, align 4, !tbaa !35
  store i16 %i.ae, ptr %i.z, align 8, !tbaa !35
  store i16 724, ptr %i.ab, align 2, !tbaa !35
  %i.af = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.af, %bb.h ], [ %i.ac, %bb.g ]
  %i.ag = tail call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef 72340172838076673) #8
  br label %.thread.sink.split

bb.j:                                             ; preds = %bb.f
  %i.ah = icmp eq i32 %i.w, 18
  %i.ai = select i1 %i.ah, i32 257, i32 16843009
  %i.aj = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.ai) #8
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.j, %bb.i
  %.sink62 = phi i32 [ %i.ag, %bb.i ], [ %i.aj, %bb.j ]
  %.sink61 = phi i16 [ 11030, %bb.i ], [ 11027, %bb.j ]
  %.sink60.in = phi i32 [ %.1, %bb.i ], [ %i.ac, %bb.j ]
  %.sink60 = trunc i32 %.sink60.in to i16
  %i.ak = trunc i32 %.sink62 to i16
  store i16 %.sink61, ptr %i.aa, align 4, !tbaa !35
  store i16 %.sink60, ptr %i.z, align 8, !tbaa !35
  store i16 %i.ak, ptr %i.ab, align 2, !tbaa !35
  %i.al = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e, %bb.f
  %.2 = phi i32 [ %i.ac, %bb.f ], [ %3, %bb.e ], [ %i.al, %.thread.sink.split ]
  %i.am = trunc i32 %1 to i16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.aq = trunc i32 %.2 to i16
  %wide.trip.count.i44 = zext i32 %.1.lcssa.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.thread
  %indvars.iv.i45 = phi i64 [ 0, %.thread ], [ %indvars.iv.next.i46, %bb.k ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i45 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 16, !tbaa !78
  %i.at = zext i32 %i.as to i64
  %i.au = tail call i32 @lj_ir_kint64(ptr noundef %0, i64 noundef %i.at) #8
  %i.av = trunc i32 %i.au to i16
  store i16 10505, ptr %i.ao, align 4, !tbaa !35
  store i16 %i.am, ptr %i.an, align 8, !tbaa !35
  store i16 %i.av, ptr %i.ap, align 2, !tbaa !35
  %i.aw = tail call i32 @lj_opt_fold(ptr noundef %0) #8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !79
  %i.az = trunc i32 %i.ay to i16
  %i.ba = or i16 %i.az, 19968
  %i.bb = trunc i32 %i.aw to i16
  store i16 %i.ba, ptr %i.ao, align 4, !tbaa !35
  store i16 %i.bb, ptr %i.an, align 8, !tbaa !35
  store i16 %i.aq, ptr %i.ap, align 2, !tbaa !35
  %i.bc = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i46, %wide.trip.count.i44
  br i1 %exitcond.not.i, label %crec_fill_emit.exit.thread52, label %bb.k, !llvm.loop !129

crec_fill_emit.exit.thread52:                     ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.m

crec_fill_emit.exit.thread:                       ; preds = %.lr.ph.preheader.i, %.lr.ph.i, %bb.c, %crec_fill_unroll.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.l

crec_fill_emit.exit:                              ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.n

bb.l:                                             ; preds = %crec_fill_emit.exit.thread, %bb.a
  %i.bd = tail call i32 (ptr, i32, ...) @lj_ir_call(ptr noundef %0, i32 noundef 100, i32 noundef %1, i32 noundef %3, i32 noundef %2) #8 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %crec_fill_emit.exit.thread52, %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 23040, ptr %i.bf, align 4, !tbaa !35
  store i16 0, ptr %i.be, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 0, ptr %i.bg, align 2, !tbaa !35
  %i.bh = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %crec_fill_emit.exit, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @recff_ffi_typeof(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31   ; 2 uses
  %i.d = and i32 %i.c, 520093696
  %i.e = icmp eq i32 %i.d, 167772160
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !34
  %i.g = tail call fastcc i32 @argv2ctype(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %i.f)
  %i.h = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.g) #8
  %i.i = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 24) #8
  %i.j = trunc i32 %i.i to i16
  %i.k = trunc i32 %i.h to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 21642, ptr %i.m, align 4, !tbaa !35
  store i16 %i.j, ptr %i.l, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.k, ptr %i.n, align 2, !tbaa !35
  %i.o = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !30
  store i32 %i.o, ptr %i.p, align 4, !tbaa !31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !130
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = or i64 %i.t, -1266637395197952
  store i64 %i.u, ptr %i.q, align 8, !tbaa !35
  tail call void @lj_trace_err_info(ptr noundef nonnull %0, i32 noundef 15) #7
  unreachable
}

; Function Attrs: noreturn
declare hidden void @lj_trace_err_info(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @recff_ffi_istype(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31
  %i.d = load ptr, ptr %1, align 8, !tbaa !34
  %i.e = tail call fastcc i32 @argv2ctype(ptr noundef %0, i32 noundef %i.c, ptr noundef %i.d) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 2 uses
  %i.i = and i32 %i.h, 520093696
  %i.j = icmp eq i32 %i.i, 167772160
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !34
end_hunk_0
