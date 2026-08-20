inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@split_blocks:bb.a

bb.g:                                             ; preds = %bb.e
  %i.bk = load i32, ptr @local_max_b, align 4, !tbaa !4
  %i.bl = icmp sgt i32 %i.bf, %i.bk
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.bf, ptr @local_max_b, align 4, !tbaa !4
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bm = phi i32 [ %.pre, %bb.h ], [ %i.af, %bb.g ] ; 3 uses
  %i.bn = load i32, ptr %i.o, align 4, !tbaa !4   ; 3 uses
  %i.bo = load i32, ptr %i.q, align 4, !tbaa !4   ; 3 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.bq = sext i32 %i.bn to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bq, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !17
  %i.bt = icmp eq i32 %i.bm, %i.bs
  br i1 %i.bt, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bo, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !19

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.j
  %i.bu = trunc nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k, %._crit_edge.loopexit.split.loop.exit.i, %bb.i
  %.020.lcssa.i = phi i32 [ %i.bn, %bb.i ], [ %i.bu, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.bo, %bb.k ] ; 2 uses
  %i.bv = sext i32 %.020.lcssa.i to i64           ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !17
  %.not.i = icmp eq i32 %i.bm, %i.bx
  br i1 %.not.i, label %.preheader23.i, label %bb.l

.preheader23.i:                                   ; preds = %._crit_edge.i
  %i.by = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %.not2229.i = icmp sgt i64 %indvars.iv578, %i.bz
  br i1 %.not2229.i, label %.preheader.i, label %.lr.ph31.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.ca = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ca, i32 noundef %i.bm) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

.preheader.i:                                     ; preds = %.lr.ph31.i, %.preheader23.i
  %.pre-phi.i = phi i64 [ %i.bz, %.preheader23.i ], [ %i.ck, %.lr.ph31.i ]
  %i.cc = getelementptr [4 x i8], ptr %i.n, i64 %.pre-phi.i
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cf = icmp slt i32 %.020.lcssa.i, %i.ce
  br i1 %i.cf, label %.lr.ph33.i, label %del_sorted_list.exit

.lr.ph31.i:                                       ; preds = %.preheader23.i, %.lr.ph31.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph31.i ], [ %i.p, %.preheader23.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv36.i ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = add nsw i32 %i.ch, -1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !4
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %i.cj = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %.not22.i = icmp sgt i64 %indvars.iv36.i, %i.ck
  br i1 %.not22.i, label %.preheader.i, label %.lr.ph31.i, !llvm.loop !21

.lr.ph33.i:                                       ; preds = %.preheader.i, %.lr.ph33.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %.lr.ph33.i ], [ %i.bv, %.preheader.i ] ; 2 uses
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, 1 ; 3 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv.next40.i
  %i.cm = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv39.i
  %i.cn = load <2 x i32>, ptr %i.cl, align 4, !tbaa !4
  store <2 x i32> %i.cn, ptr %i.cm, align 4, !tbaa !4
  %i.co = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr [4 x i8], ptr %i.n, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next40.i, %i.ct
  br i1 %i.cu, label %.lr.ph33.i, label %del_sorted_list.exit, !llvm.loop !22

del_sorted_list.exit:                             ; preds = %.lr.ph33.i, %.preheader.i
  %i.cv = load i32, ptr @num_active, align 4, !tbaa !4
  %i.cw = add nsw i32 %i.cv, 7
  store i32 %i.cw, ptr @num_active, align 4, !tbaa !4
  %i.cx = load <2 x i32>, ptr %i.s, align 4, !tbaa !4
  %i.cy = add nsw <2 x i32> %i.cx, <i32 -1, i32 8>
  store <2 x i32> %i.cy, ptr %i.s, align 4, !tbaa !4
  %i.cz = load i32, ptr @max_active_parent, align 4, !tbaa !4 ; 5 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %del_sorted_list.exit
  %wide.trip.count = zext nneg i32 %i.cz to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.db = getelementptr inbounds nuw [100 x i8], ptr %i.t, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !23
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %._crit_edge.loopexit.split.loop.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.de = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %._crit_edge.loopexit.split.loop.exit, %del_sorted_list.exit
  %.0290.lcssa = phi i32 [ 0, %del_sorted_list.exit ], [ %i.de, %._crit_edge.loopexit.split.loop.exit ], [ %i.cz, %bb.m ] ; 5 uses
  %i.df = load i32, ptr @max_num_parents, align 4, !tbaa !4
  %i.dg = icmp eq i32 %.0290.lcssa, %i.df
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.dh = icmp eq i32 %.0290.lcssa, %i.cz
  br i1 %i.dh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.di = add nsw i32 %i.cz, 1
  store i32 %i.di, ptr @max_active_parent, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dj = load i32, ptr @num_parents, align 4, !tbaa !4
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr @num_parents, align 4, !tbaa !4
  %i.dl = load i32, ptr @num_refined, align 4, !tbaa !4
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr @num_refined, align 4, !tbaa !4
  %i.dn = zext nneg i32 %.0290.lcssa to i64
  %i.do = getelementptr inbounds nuw [100 x i8], ptr %i.t, i64 %i.dn ; 8 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.dq = load <2 x i32>, ptr %i.ae, align 8, !tbaa !4
  %i.dr = load <2 x i32>, ptr %i.dp, align 8, !tbaa !4
  %i.ds = load i32, ptr %i.dp, align 8, !tbaa !26
  %i.dt = shufflevector <2 x i32> %i.dr, <2 x i32> %i.dq, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.dt, ptr %i.do, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !27 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !28
  %i.dx = xor i32 %.0290.lcssa, -1
  %i.dy = sext i32 %i.ds to i64
  %i.dz = getelementptr inbounds [100 x i8], ptr %i.t, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = sext i32 %i.dv to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.eb
  store i32 %i.dx, ptr %i.ec, align 4, !tbaa !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  store i32 0, ptr %i.ed, align 4, !tbaa !29
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ae, i64 172 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.do, i64 88
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ae, i64 176 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.do, i64 92
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ae, i64 180 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4
  %i.em = getelementptr inbounds nuw i8, ptr %i.do, i64 96
  store i32 %i.el, ptr %i.em, align 4, !tbaa !4
  %i.en = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.ep = shl nsw i32 %i.ba, 1
  %i.eq = shl nsw i32 %i.bc, 1
  %i.er = shl nsw i32 %i.bd, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  br label %.preheader347

.preheader348:                                    ; preds = %._crit_edge429.split
  %i.et = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ae, i64 76 ; 3 uses
  br label %.preheader346

.preheader347:                                    ; preds = %bb.q, %._crit_edge429.split
  %indvars.iv543 = phi i64 [ 0, %bb.q ], [ %indvars.iv.next544, %._crit_edge429.split ] ; 5 uses
  %.2432 = phi i32 [ %.1445, %bb.q ], [ %.3.lcssa, %._crit_edge429.split ] ; 3 uses
  %i.ev = load i32, ptr @max_num_blocks, align 4, !tbaa !4 ; 5 uses
  %i.ew = icmp slt i32 %.2432, %i.ev
  br i1 %i.ew, label %.lr.ph407.preheader, label %._crit_edge408

.lr.ph407.preheader:                              ; preds = %.preheader347
  %i.ex = sext i32 %.2432 to i64
  %i.ey = sext i32 %i.ev to i64
  br label %.lr.ph407

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %bb.r
  %indvars.iv507 = phi i64 [ %i.ex, %.lr.ph407.preheader ], [ %indvars.iv.next508, %bb.r ] ; 3 uses
  %i.ez = getelementptr inbounds [192 x i8], ptr %i.c, i64 %indvars.iv507
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !8
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %._crit_edge408.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph407
  %indvars.iv.next508 = add nsw i64 %indvars.iv507, 1 ; 2 uses
  %exitcond510.not = icmp eq i64 %indvars.iv.next508, %i.ey
  br i1 %exitcond510.not, label %._crit_edge408.thread, label %.lr.ph407, !llvm.loop !30

._crit_edge408.loopexit:                          ; preds = %.lr.ph407
  %i.fc = trunc nsw i64 %indvars.iv507 to i32
  br label %._crit_edge408

._crit_edge408:                                   ; preds = %._crit_edge408.loopexit, %.preheader347
  %.3.lcssa = phi i32 [ %.2432, %.preheader347 ], [ %i.fc, %._crit_edge408.loopexit ] ; 9 uses
  %i.fd = icmp eq i32 %.3.lcssa, %i.ev
  br i1 %i.fd, label %._crit_edge408.thread, label %bb.s

._crit_edge408.thread:                            ; preds = %._crit_edge408, %bb.r
  %i.fe = load i32, ptr @num_active, align 4, !tbaa !4
  %i.ff = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ev, i32 noundef %i.fe, i32 noundef %i.ev) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

bb.s:                                             ; preds = %._crit_edge408
  %i.fg = load i32, ptr @max_active_block, align 4, !tbaa !4
  %.not323 = icmp slt i32 %.3.lcssa, %i.fg
  br i1 %.not323, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fh = add nsw i32 %.3.lcssa, 1
  store i32 %i.fh, ptr @max_active_block, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fi = sext i32 %.3.lcssa to i64
  %i.fj = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.fi ; 10 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv543
  store i32 %.3.lcssa, ptr %i.fk, align 4, !tbaa !4
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv543
  store i32 %.3.lcssa, ptr %i.fl, align 4, !tbaa !4
  %i.fm = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv543
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i32 0, ptr %i.fo, align 8, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 %i.aa, ptr %i.fp, align 4, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i32 %.0290.lcssa, ptr %i.fq, align 8, !tbaa !26
  %i.fr = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !31
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fu = trunc i64 %indvars.iv543 to i32         ; 4 uses
  store i32 %i.fu, ptr %i.ft, align 8, !tbaa !27
  %i.fv = and i32 %i.fu, 1                        ; 3 uses
  %i.fw = lshr i32 %i.fu, 1
  %i.fx = and i32 %i.fw, 1                        ; 3 uses
  %i.fy = lshr i32 %i.fu, 2                       ; 3 uses
  %i.fz = add nuw nsw i32 %i.fy, %i.ep
  %i.ga = load i32, ptr %i.u, align 4, !tbaa !4   ; 2 uses
  %i.gb = load i32, ptr @npy, align 4, !tbaa !4
  %i.gc = load i32, ptr @init_block_y, align 4, !tbaa !4
  %i.gd = mul i32 %i.ga, %i.fz
  %i.ge = mul i32 %i.gd, %i.gb
  %i.gf = mul i32 %i.ge, %i.gc
  %i.gg = or disjoint i32 %i.fx, %i.eq
  %i.gh = add nsw i32 %i.gg, %i.gf
  %i.gi = load i32, ptr @npx, align 4, !tbaa !4
  %i.gj = mul nsw i32 %i.gi, %i.ga
  %i.gk = load i32, ptr @init_block_x, align 4, !tbaa !4
  %i.gl = mul nsw i32 %i.gj, %i.gk
  %i.gm = mul nsw i32 %i.gl, %i.gh
  %i.gn = load i32, ptr %i.v, align 4, !tbaa !4
  %i.go = or disjoint i32 %i.fv, %i.er
  %i.gp = add i32 %i.go, %i.gn
  %i.gq = add i32 %i.gp, %i.gm                    ; 3 uses
  store i32 %i.gq, ptr %i.fj, align 8, !tbaa !8
  %i.gr = load i32, ptr %i.q, align 4, !tbaa !4   ; 3 uses
  %i.gs = load i32, ptr %i.x, align 4, !tbaa !4   ; 3 uses
  %i.gt = icmp slt i32 %i.gr, %i.gs
  br i1 %i.gt, label %.lr.ph.i331, label %._crit_edge.i327

.lr.ph.i331:                                      ; preds = %bb.u
  %i.gu = sext i32 %i.gr to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i331
  %indvars.iv.i332 = phi i64 [ %i.gu, %.lr.ph.i331 ], [ %indvars.iv.next.i333, %bb.w ] ; 3 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv.i332
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !17
  %i.gx = icmp sgt i32 %i.gq, %i.gw
  br i1 %i.gx, label %._crit_edge.loopexit.split.loop.exit.i336, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i333 = add nsw i64 %indvars.iv.i332, 1 ; 2 uses
  %lftr.wideiv.i334 = trunc i64 %indvars.iv.next.i333 to i32
  %exitcond.not.i335 = icmp eq i32 %i.gs, %lftr.wideiv.i334
  br i1 %exitcond.not.i335, label %._crit_edge.i327, label %bb.v, !llvm.loop !32

._crit_edge.loopexit.split.loop.exit.i336:        ; preds = %bb.v
  %i.gy = trunc nsw i64 %indvars.iv.i332 to i32
  br label %._crit_edge.i327

._crit_edge.i327:                                 ; preds = %bb.w, %._crit_edge.loopexit.split.loop.exit.i336, %bb.u
  %.021.lcssa.i = phi i32 [ %i.gr, %bb.u ], [ %i.gy, %._crit_edge.loopexit.split.loop.exit.i336 ], [ %i.gs, %bb.w ] ; 3 uses
  %i.gz = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr [4 x i8], ptr %i.n, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4  ; 2 uses
  %i.he = icmp sgt i32 %i.hd, %.021.lcssa.i
  br i1 %i.he, label %.lr.ph29.i, label %._crit_edge.._crit_edge30_crit_edge.i

._crit_edge.._crit_edge30_crit_edge.i:            ; preds = %._crit_edge.i327
  %.pre.i328 = sext i32 %.021.lcssa.i to i64
  br label %._crit_edge30.i

.lr.ph29.i:                                       ; preds = %._crit_edge.i327
  %i.hf = sext i32 %i.hd to i64                   ; 4 uses
  %i.hg = sext i32 %.021.lcssa.i to i64           ; 5 uses
  %i.hh = sub nsw i64 %i.hf, %i.hg
  %xtraiter = and i64 %i.hh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph29.i, %.prol.preheader
  %indvars.iv37.i.prol = phi i64 [ %indvars.iv.next38.i.prol, %.prol.preheader ], [ %i.hf, %.lr.ph29.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph29.i ]
  %indvars.iv.next38.i.prol = add nsw i64 %indvars.iv37.i.prol, -1 ; 3 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv.next38.i.prol
  %i.hj = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv37.i.prol
  %i.hk = load <2 x i32>, ptr %i.hi, align 4, !tbaa !4
  store <2 x i32> %i.hk, ptr %i.hj, align 4, !tbaa !4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !33

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph29.i
  %indvars.iv37.i.unr = phi i64 [ %i.hf, %.lr.ph29.i ], [ %indvars.iv.next38.i.prol, %.prol.preheader ]
  %i.hl = sub nsw i64 %i.hg, %i.hf
  %i.hm = icmp ugt i64 %i.hl, -4
  br i1 %i.hm, label %._crit_edge30.i, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph29.i.new
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i.3, %.lr.ph29.i.new ], [ %indvars.iv37.i.unr, %.prol.loopexit ] ; 5 uses
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, -1 ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv.next38.i
  %i.ho = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv37.i
  %i.hp = load <2 x i32>, ptr %i.hn, align 4, !tbaa !4
  store <2 x i32> %i.hp, ptr %i.ho, align 4, !tbaa !4
  %indvars.iv.next38.i.1 = add nsw i64 %indvars.iv37.i, -2 ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv.next38.i.1
  %i.hr = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv.next38.i
  %i.hs = load <2 x i32>, ptr %i.hq, align 4, !tbaa !4
  store <2 x i32> %i.hs, ptr %i.hr, align 4, !tbaa !4
  %indvars.iv.next38.i.2 = add nsw i64 %indvars.iv37.i, -3 ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv.next38.i.2
  %i.hu = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv.next38.i.1
  %i.hv = load <2 x i32>, ptr %i.ht, align 4, !tbaa !4
  store <2 x i32> %i.hv, ptr %i.hu, align 4, !tbaa !4
  %indvars.iv.next38.i.3 = add nsw i64 %indvars.iv37.i, -4 ; 3 uses
  %i.hw = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv.next38.i.3
  %i.hx = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %indvars.iv.next38.i.2
  %i.hy = load <2 x i32>, ptr %i.hw, align 4, !tbaa !4
  store <2 x i32> %i.hy, ptr %i.hx, align 4, !tbaa !4
  %i.hz = icmp sgt i64 %indvars.iv.next38.i.3, %i.hg
  br i1 %i.hz, label %.lr.ph29.i.new, label %._crit_edge30.i, !llvm.loop !35

._crit_edge30.i:                                  ; preds = %.prol.loopexit, %.lr.ph29.i.new, %._crit_edge.._crit_edge30_crit_edge.i
  %.pre-phi.i329 = phi i64 [ %.pre.i328, %._crit_edge.._crit_edge30_crit_edge.i ], [ %i.hg, %.lr.ph29.i.new ], [ %i.hg, %.prol.loopexit ]
  %i.ia = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %.pre-phi.i329 ; 2 uses
  store i32 %i.gq, ptr %i.ia, align 4, !tbaa !17
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store i32 %.3.lcssa, ptr %i.ib, align 4, !tbaa !36
  %i.ic = load i32, ptr @num_refine, align 4, !tbaa !4 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %.not31.i.not = icmp slt i64 %indvars.iv578, %i.id
  br i1 %.not31.i.not, label %.lr.ph34.i, label %add_sorted_list.exit

.lr.ph34.i:                                       ; preds = %._crit_edge30.i, %.lr.ph34.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %.lr.ph34.i ], [ %i.w, %._crit_edge30.i ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv40.i ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !4
  %i.ig = add nsw i32 %i.if, 1
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !4
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  %i.ih = load i32, ptr @num_refine, align 4, !tbaa !4 ; 2 uses
  %i.ii = sext i32 %i.ih to i64
  %.not.i330 = icmp sgt i64 %indvars.iv40.i, %i.ii
  br i1 %.not.i330, label %add_sorted_list.exit, label %.lr.ph34.i, !llvm.loop !37

add_sorted_list.exit:                             ; preds = %.lr.ph34.i, %._crit_edge30.i
  %i.ij = phi i32 [ %i.ic, %._crit_edge30.i ], [ %i.ih, %.lr.ph34.i ]
  %i.ik = load i32, ptr %i.ee, align 4, !tbaa !4
  %i.il = shl nuw nsw i32 %i.fv, 1
  %i.im = add nsw i32 %i.il, -1
  %i.in = add i32 %i.ij, %i.z
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !4
  %i.ir = mul nsw i32 %i.iq, %i.im
  %i.is = add nsw i32 %i.ir, %i.ik
  %i.it = getelementptr inbounds nuw i8, ptr %i.fj, i64 172
  store i32 %i.is, ptr %i.it, align 4, !tbaa !4
  %i.iu = load i32, ptr %i.eh, align 8, !tbaa !4
  %i.iv = shl nuw nsw i32 %i.fx, 1
  %i.iw = add nsw i32 %i.iv, -1
  %i.ix = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.iy = add i32 %i.ix, %i.z
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !4
  %i.jc = mul nsw i32 %i.jb, %i.iw
  %i.jd = add nsw i32 %i.jc, %i.iu
  %i.je = getelementptr inbounds nuw i8, ptr %i.fj, i64 176
  store i32 %i.jd, ptr %i.je, align 8, !tbaa !4
  %i.jf = load i32, ptr %i.ek, align 4, !tbaa !4
  %i.jg = shl nuw nsw i32 %i.fy, 1
  %i.jh = add nsw i32 %i.jg, -1
  %i.ji = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.jj = add i32 %i.ji, %i.z
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !4
  %i.jn = mul nsw i32 %i.jm, %i.jh
  %i.jo = add nsw i32 %i.jn, %i.jf
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fj, i64 180
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !4
  %i.jq = load i32, ptr @x_block_half, align 4, !tbaa !4 ; 3 uses
  %i.jr = mul nuw nsw i32 %i.jq, %i.fv
  %i.js = load i32, ptr @y_block_half, align 4, !tbaa !4 ; 3 uses
  %i.jt = mul nuw nsw i32 %i.js, %i.fx
  %i.ju = load i32, ptr @z_block_half, align 4, !tbaa !4 ; 5 uses
  %i.jv = mul i32 %i.ju, %i.fy
  %i.jw = load i32, ptr @num_vars, align 4, !tbaa !4 ; 2 uses
  %i.jx = icmp sgt i32 %i.jw, 0
  br i1 %i.jx, label %.preheader342.lr.ph, label %._crit_edge429.split

.preheader342.lr.ph:                              ; preds = %add_sorted_list.exit
  %.not324423 = icmp slt i32 %i.jq, 1
  %.not325419 = icmp slt i32 %i.js, 1
  %.not326414 = icmp slt i32 %i.ju, 1
  %brmerge = select i1 %.not324423, i1 true, i1 %.not325419
  %brmerge454 = select i1 %brmerge, i1 true, i1 %.not326414
  br i1 %brmerge454, label %._crit_edge429.split, label %.preheader342.lr.ph.split.split.split

.preheader342.lr.ph.split.split.split:            ; preds = %.preheader342.lr.ph
  %i.jy = getelementptr inbounds nuw i8, ptr %i.fj, i64 184
  %i.jz = load ptr, ptr %i.es, align 8, !tbaa !38
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !38
  %i.kb = zext i32 %i.jv to i64                   ; 3 uses
  %i.kc = add nuw i32 %i.ju, 1
  %i.kd = zext nneg i32 %i.jt to i64
  %i.ke = add nuw i32 %i.js, 1
  %i.kf = zext nneg i32 %i.jr to i64
  %i.kg = add nuw i32 %i.jq, 1
  %wide.trip.count541 = zext nneg i32 %i.jw to i64
  %wide.trip.count536 = zext i32 %i.kg to i64
  %wide.trip.count527 = zext i32 %i.ke to i64
  %wide.trip.count518 = zext i32 %i.kc to i64     ; 3 uses
  %i.kh = shl nuw nsw i64 %wide.trip.count518, 4  ; 4 uses
  %i.ki = shl nuw nsw i64 %i.kb, 3
  %0 = add nuw nsw i64 %i.kb, %wide.trip.count518
  %i.kj = shl nuw nsw i64 %0, 3
  %i.kk = zext nneg i32 %i.ju to i64              ; 3 uses
  %min.iters.check = icmp ult i32 %i.ju, 14
  %n.vec = and i64 %i.kk, 2147483646              ; 3 uses
  %i.kl = or i64 %i.kk, 1
  %i.km = shl nuw nsw i64 %n.vec, 1
  %i.kn = or disjoint i64 %i.km, 1
  %cmp.n = icmp eq i64 %n.vec, %i.kk
  br label %.preheader342

.preheader342:                                    ; preds = %.preheader342.lr.ph.split.split.split, %._crit_edge426
  %indvars.iv538 = phi i64 [ 0, %.preheader342.lr.ph.split.split.split ], [ %indvars.iv.next539, %._crit_edge426 ] ; 3 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv538
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !39
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv538
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !39
  %invariant.gep680 = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.kf
  br label %.preheader337

.preheader337:                                    ; preds = %.preheader342, %._crit_edge422
  %indvars.iv531 = phi i64 [ 1, %.preheader342 ], [ %indvars.iv.next532, %._crit_edge422 ] ; 2 uses
  %indvars.iv529 = phi i64 [ 1, %.preheader342 ], [ %indvars.iv.next530, %._crit_edge422 ] ; 2 uses
  %gep681 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep680, i64 %indvars.iv531
  %i.ks = load ptr, ptr %gep681, align 8, !tbaa !41
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv529 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !41 ; 2 uses
  %i.kw = load ptr, ptr %i.kt, align 8, !tbaa !41 ; 2 uses
  %invariant.gep678 = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kd
  br label %.preheader

.preheader:                                       ; preds = %.preheader337, %._crit_edge418
  %indvars.iv522 = phi i64 [ 1, %.preheader337 ], [ %indvars.iv.next523, %._crit_edge418 ] ; 2 uses
  %indvars.iv520 = phi i64 [ 1, %.preheader337 ], [ %indvars.iv.next521, %._crit_edge418 ] ; 4 uses
  %gep679 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep678, i64 %indvars.iv522
  %i.kx = load ptr, ptr %gep679, align 8, !tbaa !43 ; 3 uses
  %i.ky = add nuw nsw i64 %indvars.iv520, 1       ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.ky
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !43 ; 6 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.ky
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !43 ; 6 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %indvars.iv520
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !43 ; 6 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv520
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !43 ; 6 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kb ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep = getelementptr nuw i8, ptr %i.la, i64 8 ; 4 uses
  %scevgep741 = getelementptr i8, ptr %i.la, i64 -8
  %scevgep742 = getelementptr i8, ptr %scevgep741, i64 %i.kh ; 4 uses
  %scevgep743 = getelementptr nuw i8, ptr %i.lc, i64 8 ; 4 uses
  %scevgep744 = getelementptr i8, ptr %i.lc, i64 -8
  %scevgep745 = getelementptr i8, ptr %scevgep744, i64 %i.kh ; 4 uses
  %scevgep746 = getelementptr nuw i8, ptr %i.le, i64 8 ; 4 uses
  %scevgep747 = getelementptr i8, ptr %i.le, i64 -8
  %scevgep748 = getelementptr i8, ptr %scevgep747, i64 %i.kh ; 4 uses
  %scevgep749 = getelementptr nuw i8, ptr %i.lg, i64 8 ; 4 uses
  %scevgep750 = getelementptr i8, ptr %i.lg, i64 -8
  %scevgep751 = getelementptr i8, ptr %scevgep750, i64 %i.kh ; 4 uses
  %scevgep752 = getelementptr nuw i8, ptr %i.kx, i64 8
  %scevgep753.a = getelementptr nuw i8, ptr %scevgep752, i64 %i.ki ; 4 uses
  %scevgep754 = getelementptr i8, ptr %i.kx, i64 %i.kj ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep745
  %bound1 = icmp ult ptr %scevgep743, %scevgep742
  %found.conflict = and i1 %bound0, %bound1
  %bound0755 = icmp ult ptr %scevgep, %scevgep748
  %bound1756 = icmp ult ptr %scevgep746, %scevgep742
  %found.conflict757 = and i1 %bound0755, %bound1756
  %conflict.rdx = or i1 %found.conflict, %found.conflict757
  %bound0758 = icmp ult ptr %scevgep, %scevgep751
  %bound1759 = icmp ult ptr %scevgep749, %scevgep742
  %found.conflict760 = and i1 %bound0758, %bound1759
  %conflict.rdx761 = or i1 %conflict.rdx, %found.conflict760
  %bound0762 = icmp ult ptr %scevgep, %scevgep754
  %bound1763 = icmp ult ptr %scevgep753.a, %scevgep742
  %found.conflict764 = and i1 %bound0762, %bound1763
  %conflict.rdx765 = or i1 %conflict.rdx761, %found.conflict764
  %bound0766 = icmp ult ptr %scevgep743, %scevgep748
  %bound1767 = icmp ult ptr %scevgep746, %scevgep745
  %found.conflict768 = and i1 %bound0766, %bound1767
  %conflict.rdx769 = or i1 %conflict.rdx765, %found.conflict768
  %bound0770 = icmp ult ptr %scevgep743, %scevgep751
  %bound1771 = icmp ult ptr %scevgep749, %scevgep745
  %found.conflict772 = and i1 %bound0770, %bound1771
  %conflict.rdx773 = or i1 %conflict.rdx769, %found.conflict772
  %bound0774 = icmp ult ptr %scevgep743, %scevgep754
  %bound1775 = icmp ult ptr %scevgep753.a, %scevgep745
  %found.conflict776 = and i1 %bound0774, %bound1775
  %conflict.rdx777 = or i1 %conflict.rdx773, %found.conflict776
  %bound0778 = icmp ult ptr %scevgep746, %scevgep751
  %bound1779 = icmp ult ptr %scevgep749, %scevgep748
  %found.conflict780 = and i1 %bound0778, %bound1779
  %conflict.rdx781 = or i1 %conflict.rdx777, %found.conflict780
  %bound0782 = icmp ult ptr %scevgep746, %scevgep754
  %bound1783 = icmp ult ptr %scevgep753.a, %scevgep748
  %found.conflict784 = and i1 %bound0782, %bound1783
  %conflict.rdx785 = or i1 %conflict.rdx781, %found.conflict784
  %bound0786 = icmp ult ptr %scevgep749, %scevgep754
  %bound1787 = icmp ult ptr %scevgep753.a, %scevgep751
  %found.conflict788 = and i1 %bound0786, %bound1787
  %conflict.rdx789 = or i1 %conflict.rdx785, %found.conflict788
  br i1 %conflict.rdx789, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.lh = shl nuw i64 %index, 1                   ; 2 uses
  %i.li = or disjoint i64 %i.lh, 1                ; 4 uses
  %i.lj = or disjoint i64 %i.lh, 3                ; 4 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.ln = getelementptr i8, ptr %i.lm, i64 16
  %i.lo = load double, ptr %i.ll, align 8, !tbaa !45, !alias.scope !47
  %i.lp = load double, ptr %i.ln, align 8, !tbaa !45, !alias.scope !47
  %.scalar = fmul double %i.lo, 1.250000e-01
  %i.lq = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.lr = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %.scalar793 = fmul double %i.lp, 1.250000e-01
  %i.ls = insertelement <2 x double> poison, double %.scalar793, i64 0
  %i.lt = shufflevector <2 x double> %i.ls, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.li
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lj
  store <2 x double> %i.lr, ptr %i.lu, align 8, !tbaa !45, !alias.scope !50, !noalias !52
  store <2 x double> %i.lt, ptr %i.lv, align 8, !tbaa !45, !alias.scope !50, !noalias !52
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.li
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lj
  store <2 x double> %i.lr, ptr %i.lw, align 8, !tbaa !45, !alias.scope !56, !noalias !57
  store <2 x double> %i.lt, ptr %i.lx, align 8, !tbaa !45, !alias.scope !56, !noalias !57
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.li
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lj
  store <2 x double> %i.lr, ptr %i.ly, align 8, !tbaa !45, !alias.scope !58, !noalias !59
  store <2 x double> %i.lt, ptr %i.lz, align 8, !tbaa !45, !alias.scope !58, !noalias !59
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.li
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.lj
  store <2 x double> %i.lr, ptr %i.ma, align 8, !tbaa !45, !alias.scope !60, !noalias !47
  store <2 x double> %i.lt, ptr %i.mb, align 8, !tbaa !45, !alias.scope !60, !noalias !47
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.mc = icmp eq i64 %index.next, %n.vec
  br i1 %i.mc, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge418, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv513.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.kl, %middle.block ]
  %indvars.iv511.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.kn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %scalar.ph ], [ %indvars.iv513.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %scalar.ph ], [ %indvars.iv511.ph, %scalar.ph.preheader ] ; 6 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv513
  %i.md = load double, ptr %gep, align 8, !tbaa !45
  %i.me = fmul double %i.md, 1.250000e-01         ; 8 uses
  %i.mf = add nuw nsw i64 %indvars.iv511, 1       ; 4 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.mf
  store double %i.me, ptr %i.mg, align 8, !tbaa !45
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.mf
  store double %i.me, ptr %i.mh, align 8, !tbaa !45
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.mf
  store double %i.me, ptr %i.mi, align 8, !tbaa !45
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.mf
  store double %i.me, ptr %i.mj, align 8, !tbaa !45
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv511
  store double %i.me, ptr %i.mk, align 8, !tbaa !45
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv511
  store double %i.me, ptr %i.ml, align 8, !tbaa !45
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv511
  store double %i.me, ptr %i.mm, align 8, !tbaa !45
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv511
  store double %i.me, ptr %i.mn, align 8, !tbaa !45
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 2
  %exitcond519.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count518
  br i1 %exitcond519.not, label %._crit_edge418, label %scalar.ph, !llvm.loop !64

._crit_edge418:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 2
  %exitcond528.not = icmp eq i64 %indvars.iv.next523, %wide.trip.count527
  br i1 %exitcond528.not, label %._crit_edge422, label %.preheader, !llvm.loop !65

._crit_edge422:                                   ; preds = %._crit_edge418
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 2
  %exitcond537.not = icmp eq i64 %indvars.iv.next532, %wide.trip.count536
  br i1 %exitcond537.not, label %._crit_edge426, label %.preheader337, !llvm.loop !66

._crit_edge426:                                   ; preds = %._crit_edge422
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1 ; 2 uses
  %exitcond542.not = icmp eq i64 %indvars.iv.next539, %wide.trip.count541
  br i1 %exitcond542.not, label %._crit_edge429.split, label %.preheader342, !llvm.loop !67

._crit_edge429.split:                             ; preds = %._crit_edge426, %.preheader342.lr.ph, %add_sorted_list.exit
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, 1 ; 2 uses
  %exitcond546.not = icmp eq i64 %indvars.iv.next544, 8
  br i1 %exitcond546.not, label %.preheader348, label %.preheader347, !llvm.loop !68

.preheader346:                                    ; preds = %.preheader348, %.loopexit
  %indvars.iv571 = phi i64 [ 0, %.preheader348 ], [ %indvars.iv.next572, %.loopexit ] ; 43 uses
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr @consolidate_blocks.side, i64 %indvars.iv571 ; 4 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr @split_blocks.off, i64 %indvars.iv571
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !4  ; 4 uses
  %i.mr = load i32, ptr %i.mo, align 16, !tbaa !4 ; 2 uses
  %i.ms = add nsw i32 %i.mq, %i.mr
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !4
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.mw ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 52
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv571
  store i32 %i.aa, ptr %i.mz, align 4, !tbaa !4
  %i.na = sext i32 %i.mr to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !4  ; 6 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 76
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %indvars.iv571
  store i32 %i.nc, ptr %i.ne, align 4, !tbaa !4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !4  ; 2 uses
  %i.nh = add nsw i32 %i.mq, %i.ng
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !4
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.nl ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 52
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv571
  store i32 %i.aa, ptr %i.no, align 4, !tbaa !4
  %i.np = sext i32 %i.ng to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !4  ; 6 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nm, i64 76
  %i.nt = getelementptr inbounds nuw [16 x i8], ptr %i.ns, i64 %indvars.iv571
  store i32 %i.nr, ptr %i.nt, align 4, !tbaa !4
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !4  ; 2 uses
  %i.nw = add nsw i32 %i.mq, %i.nv
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !4
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.oa ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 52
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv571
  store i32 %i.aa, ptr %i.od, align 4, !tbaa !4
  %i.oe = sext i32 %i.nv to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.oe
  %i.og = load i32, ptr %i.of, align 4, !tbaa !4  ; 6 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ob, i64 76
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %indvars.iv571
  store i32 %i.og, ptr %i.oi, align 4, !tbaa !4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !4  ; 2 uses
  %i.ol = add nsw i32 %i.mq, %i.ok
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !4
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.op ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 52
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv571
  store i32 %i.aa, ptr %i.os, align 4, !tbaa !4
  %i.ot = sext i32 %i.ok to i64
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !4  ; 6 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oq, i64 76
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.ow, i64 %indvars.iv571
  store i32 %i.ov, ptr %i.ox, align 4, !tbaa !4
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv571
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !4  ; 4 uses
  %i.pa = icmp eq i32 %i.oz, -2
  br i1 %i.pa, label %.preheader343, label %bb.x

.preheader343:                                    ; preds = %.preheader346
  %i.pb = sext i32 %i.nc to i64
  %i.pc = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.pb ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 52
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %indvars.iv571
  store i32 -2, ptr %i.pe, align 4, !tbaa !4
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 76
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.pf, i64 %indvars.iv571
  store i32 0, ptr %i.pg, align 4, !tbaa !4
  %i.ph = sext i32 %i.nr to i64
  %i.pi = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.ph ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 52
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv571
  store i32 -2, ptr %i.pk, align 4, !tbaa !4
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 76
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %indvars.iv571
  store i32 0, ptr %i.pm, align 4, !tbaa !4
  %i.pn = sext i32 %i.og to i64
  %i.po = getelementptr inbounds [192 x i8], ptr %i.c, i64 %i.pn ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 52
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv571
  store i32 -2, ptr %i.pq, align 4, !tbaa !4
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 76
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %indvars.iv571
end_hunk_0
begin_hunk_1_@consolidate_blocks:bb.a
  %i.ao = icmp eq i32 %.0205.lcssa, %i.ai
  br i1 %i.ao, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.e
  %i.ap = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.ap) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.ar = zext nneg i32 %.0205.lcssa to i64
  %i.as = getelementptr inbounds nuw [192 x i8], ptr %i.j, i64 %i.ar ; 12 uses
  %i.at = load i32, ptr @max_active_block, align 4, !tbaa !4
  %.not = icmp slt i32 %.0205.lcssa, %i.at
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = add nuw nsw i32 %.0205.lcssa, 1
  store i32 %i.au, ptr @max_active_block, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.av = load i32, ptr @num_active, align 4, !tbaa !4 ; 3 uses
  %i.aw = load i32, ptr @local_max_b, align 4, !tbaa !4
  %.not211 = icmp slt i32 %i.av, %i.aw
  br i1 %.not211, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = add nsw i32 %i.av, 1
  store i32 %i.ax, ptr @local_max_b, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = add nsw i32 %i.av, -7
  store i32 %i.ay, ptr @num_active, align 4, !tbaa !4
  %i.az = load i32, ptr @num_reformed, align 4, !tbaa !4
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr @num_reformed, align 4, !tbaa !4
  %i.bb = load <2 x i32>, ptr %i.l, align 4, !tbaa !4
  %i.bc = add nsw <2 x i32> %i.bb, <i32 1, i32 -8>
  store <2 x i32> %i.bc, ptr %i.l, align 4, !tbaa !4
  %i.bd = load <2 x i32>, ptr %i.y, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !23
  store <2 x i32> %i.bd, ptr %i.as, align 8, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bg = load <2 x i32>, ptr %i.be, align 4, !tbaa !4
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !79
  store <2 x i32> %i.bg, ptr %i.bf, align 8, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !27
  %i.bl = sext i32 %i.bh to i64
  %i.bm = getelementptr inbounds [100 x i8], ptr %i.c, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  store i32 %.0205.lcssa, ptr %i.bp, align 4, !tbaa !4
  %i.bq = load i32, ptr %i.as, align 8, !tbaa !8  ; 2 uses
  %i.br = load i32, ptr %i.o, align 4, !tbaa !4   ; 3 uses
  %i.bs = load i32, ptr %i.p, align 4, !tbaa !4   ; 3 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.bu = sext i32 %i.br to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.bx = icmp sgt i32 %i.bq, %i.bw
  br i1 %i.bx, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bs, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.k, !llvm.loop !32

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.k
  %i.by = trunc nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l, %._crit_edge.loopexit.split.loop.exit.i, %bb.j
  %.021.lcssa.i = phi i32 [ %i.br, %bb.j ], [ %i.by, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.bs, %bb.l ] ; 3 uses
  %i.bz = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [4 x i8], ptr %i.n, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4  ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, %.021.lcssa.i
  br i1 %i.ce, label %.lr.ph29.i, label %._crit_edge.._crit_edge30_crit_edge.i

._crit_edge.._crit_edge30_crit_edge.i:            ; preds = %._crit_edge.i
  %.pre.i = sext i32 %.021.lcssa.i to i64
  br label %._crit_edge30.i

.lr.ph29.i:                                       ; preds = %._crit_edge.i
  %i.cf = sext i32 %i.cd to i64                   ; 4 uses
  %i.cg = sext i32 %.021.lcssa.i to i64           ; 5 uses
  %i.ch = sub nsw i64 %i.cf, %i.cg
  %xtraiter = and i64 %i.ch, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph29.i, %.prol.preheader
  %indvars.iv37.i.prol = phi i64 [ %indvars.iv.next38.i.prol, %.prol.preheader ], [ %i.cf, %.lr.ph29.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph29.i ]
  %indvars.iv.next38.i.prol = add nsw i64 %indvars.iv37.i.prol, -1 ; 3 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next38.i.prol
  %i.cj = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv37.i.prol
  %i.ck = load <2 x i32>, ptr %i.ci, align 4, !tbaa !4
  store <2 x i32> %i.ck, ptr %i.cj, align 4, !tbaa !4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !80

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph29.i
  %indvars.iv37.i.unr = phi i64 [ %i.cf, %.lr.ph29.i ], [ %indvars.iv.next38.i.prol, %.prol.preheader ]
  %i.cl = sub nsw i64 %i.cg, %i.cf
  %i.cm = icmp ugt i64 %i.cl, -4
  br i1 %i.cm, label %._crit_edge30.i, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph29.i.new
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i.3, %.lr.ph29.i.new ], [ %indvars.iv37.i.unr, %.prol.loopexit ] ; 5 uses
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, -1 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next38.i
  %i.co = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv37.i
  %i.cp = load <2 x i32>, ptr %i.cn, align 4, !tbaa !4
  store <2 x i32> %i.cp, ptr %i.co, align 4, !tbaa !4
  %indvars.iv.next38.i.1 = add nsw i64 %indvars.iv37.i, -2 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next38.i.1
  %i.cr = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next38.i
  %i.cs = load <2 x i32>, ptr %i.cq, align 4, !tbaa !4
  store <2 x i32> %i.cs, ptr %i.cr, align 4, !tbaa !4
  %indvars.iv.next38.i.2 = add nsw i64 %indvars.iv37.i, -3 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next38.i.2
  %i.cu = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next38.i.1
  %i.cv = load <2 x i32>, ptr %i.ct, align 4, !tbaa !4
  store <2 x i32> %i.cv, ptr %i.cu, align 4, !tbaa !4
  %indvars.iv.next38.i.3 = add nsw i64 %indvars.iv37.i, -4 ; 3 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next38.i.3
  %i.cx = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next38.i.2
  %i.cy = load <2 x i32>, ptr %i.cw, align 4, !tbaa !4
  store <2 x i32> %i.cy, ptr %i.cx, align 4, !tbaa !4
  %i.cz = icmp sgt i64 %indvars.iv.next38.i.3, %i.cg
  br i1 %i.cz, label %.lr.ph29.i.new, label %._crit_edge30.i, !llvm.loop !35

._crit_edge30.i:                                  ; preds = %.prol.loopexit, %.lr.ph29.i.new, %._crit_edge.._crit_edge30_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.._crit_edge30_crit_edge.i ], [ %i.cg, %.lr.ph29.i.new ], [ %i.cg, %.prol.loopexit ]
  %i.da = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %.pre-phi.i ; 2 uses
  store i32 %i.bq, ptr %i.da, align 4, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 %.0205.lcssa, ptr %i.db, align 4, !tbaa !36
  %i.dc = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.dd = sext i32 %i.dc to i64
  %.not31.i = icmp sgt i64 %indvars.iv350, %i.dd
  br i1 %.not31.i, label %add_sorted_list.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %._crit_edge30.i, %.lr.ph34.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %.lr.ph34.i ], [ %i.m, %._crit_edge30.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv40.i ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !4
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  %i.dh = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.di = sext i32 %i.dh to i64
  %.not.i = icmp sgt i64 %indvars.iv40.i, %i.di
  br i1 %.not.i, label %add_sorted_list.exit, label %.lr.ph34.i, !llvm.loop !37

add_sorted_list.exit:                             ; preds = %.lr.ph34.i, %._crit_edge30.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 0, ptr %i.dj, align 8, !tbaa !16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.as, i64 172
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.y, i64 92
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  store i32 %i.do, ptr %i.dp, align 8, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.as, i64 180
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  br label %bb.m

.preheader229:                                    ; preds = %._crit_edge268.split
  %i.dv = getelementptr inbounds nuw i8, ptr %i.as, i64 76 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.as, i64 52 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.as, i64 28 ; 3 uses
  br label %bb.q

bb.m:                                             ; preds = %add_sorted_list.exit, %._crit_edge268.split
  %indvars.iv333 = phi i64 [ 0, %add_sorted_list.exit ], [ %indvars.iv.next334, %._crit_edge268.split ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv333
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.ea ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !8  ; 3 uses
  %i.ed = load i32, ptr %i.p, align 4, !tbaa !4   ; 3 uses
  %i.ee = load i32, ptr %i.r, align 4, !tbaa !4   ; 3 uses
  %i.ef = icmp slt i32 %i.ed, %i.ee
  br i1 %i.ef, label %.lr.ph.i220, label %._crit_edge.i217

.lr.ph.i220:                                      ; preds = %bb.m
  %i.eg = sext i32 %i.ed to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i220
  %indvars.iv.i221 = phi i64 [ %i.eg, %.lr.ph.i220 ], [ %indvars.iv.next.i222, %bb.o ] ; 3 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.i221
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !17
  %i.ej = icmp eq i32 %i.ec, %i.ei
  br i1 %i.ej, label %._crit_edge.loopexit.split.loop.exit.i225, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i222 = add nsw i64 %indvars.iv.i221, 1 ; 2 uses
  %lftr.wideiv.i223 = trunc i64 %indvars.iv.next.i222 to i32
  %exitcond.not.i224 = icmp eq i32 %i.ee, %lftr.wideiv.i223
  br i1 %exitcond.not.i224, label %._crit_edge.i217, label %bb.n, !llvm.loop !19

._crit_edge.loopexit.split.loop.exit.i225:        ; preds = %bb.n
  %i.ek = trunc nsw i64 %indvars.iv.i221 to i32
  br label %._crit_edge.i217

._crit_edge.i217:                                 ; preds = %bb.o, %._crit_edge.loopexit.split.loop.exit.i225, %bb.m
  %.020.lcssa.i = phi i32 [ %i.ed, %bb.m ], [ %i.ek, %._crit_edge.loopexit.split.loop.exit.i225 ], [ %i.ee, %bb.o ] ; 2 uses
  %i.el = sext i32 %.020.lcssa.i to i64           ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !17
  %.not.i218 = icmp eq i32 %i.ec, %i.en
  br i1 %.not.i218, label %.preheader23.i, label %bb.p

.preheader23.i:                                   ; preds = %._crit_edge.i217
  %i.eo = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ep = sext i32 %i.eo to i64                   ; 2 uses
  %.not2229.i.not = icmp slt i64 %indvars.iv350, %i.ep
  br i1 %.not2229.i.not, label %.lr.ph31.i, label %.preheader.i

bb.p:                                             ; preds = %._crit_edge.i217
  %i.eq = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.er = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.eq, i32 noundef %i.ec) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

.preheader.i:                                     ; preds = %.lr.ph31.i, %.preheader23.i
  %.pre-phi.i219 = phi i64 [ %i.ep, %.preheader23.i ], [ %i.fa, %.lr.ph31.i ]
  %i.es = getelementptr [4 x i8], ptr %i.n, i64 %.pre-phi.i219
  %i.et = getelementptr i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  %i.ev = icmp slt i32 %.020.lcssa.i, %i.eu
  br i1 %i.ev, label %.lr.ph33.i, label %del_sorted_list.exit

.lr.ph31.i:                                       ; preds = %.preheader23.i, %.lr.ph31.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph31.i ], [ %i.q, %.preheader23.i ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv36.i ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = add nsw i32 %i.ex, -1
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !4
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %i.ez = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.fa = sext i32 %i.ez to i64                   ; 2 uses
  %.not22.i = icmp sgt i64 %indvars.iv36.i, %i.fa
  br i1 %.not22.i, label %.preheader.i, label %.lr.ph31.i, !llvm.loop !21

.lr.ph33.i:                                       ; preds = %.preheader.i, %.lr.ph33.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %.lr.ph33.i ], [ %i.el, %.preheader.i ] ; 2 uses
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, 1 ; 3 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv.next40.i
  %i.fc = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %indvars.iv39.i
  %i.fd = load <2 x i32>, ptr %i.fb, align 4, !tbaa !4
  store <2 x i32> %i.fd, ptr %i.fc, align 4, !tbaa !4
  %i.fe = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr [4 x i8], ptr %i.n, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next40.i, %i.fj
  br i1 %i.fk, label %.lr.ph33.i, label %del_sorted_list.exit, !llvm.loop !22

del_sorted_list.exit:                             ; preds = %.lr.ph33.i, %.preheader.i
  store i32 -1, ptr %i.eb, align 8, !tbaa !8
  %i.fl = load i32, ptr @x_block_half, align 4, !tbaa !4 ; 3 uses
  %i.fm = trunc i64 %indvars.iv333 to i32         ; 2 uses
  %i.fn = trunc i64 %indvars.iv333 to i1
  %i.fo = load i32, ptr @y_block_half, align 4, !tbaa !4 ; 3 uses
  %i.fp = and i32 %i.fm, 2
  %.not212 = icmp eq i32 %i.fp, 0
  %i.fq = select i1 %.not212, i32 0, i32 %i.fo
  %i.fr = lshr i32 %i.fm, 2
  %i.fs = load i32, ptr @z_block_half, align 4, !tbaa !4 ; 5 uses
  %i.ft = mul i32 %i.fs, %i.fr
  %i.fu = load i32, ptr @num_vars, align 4, !tbaa !4 ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.preheader228.lr.ph, label %._crit_edge268.split

.preheader228.lr.ph:                              ; preds = %del_sorted_list.exit
  %.not213262 = icmp slt i32 %i.fl, 1
  %.not214258 = icmp slt i32 %i.fo, 1
  %.not215253 = icmp slt i32 %i.fs, 1
  %brmerge = select i1 %.not213262, i1 true, i1 %.not214258
  %brmerge282 = select i1 %brmerge, i1 true, i1 %.not215253
  br i1 %brmerge282, label %._crit_edge268.split, label %.preheader228.lr.ph.split.split.split

.preheader228.lr.ph.split.split.split:            ; preds = %.preheader228.lr.ph
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eb, i64 184
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !38
  %i.fy = load ptr, ptr %i.du, align 8, !tbaa !38
  %i.fz = zext i32 %i.ft to i64                   ; 3 uses
  %i.ga = add nuw i32 %i.fs, 1
  %i.gb = zext nneg i32 %i.fq to i64
  %i.gc = add nuw i32 %i.fo, 1
  %i.gd = zext nneg i32 %i.fl to i64
  %i.ge = select i1 %i.fn, i64 %i.gd, i64 0
  %i.gf = add nuw i32 %i.fl, 1
  %wide.trip.count331 = zext nneg i32 %i.fu to i64
  %wide.trip.count326 = zext i32 %i.gf to i64
  %wide.trip.count317 = zext i32 %i.gc to i64
  %wide.trip.count308 = zext i32 %i.ga to i64     ; 3 uses
  %i.gg = shl nuw nsw i64 %i.fz, 3
  %0 = add nuw nsw i64 %i.fz, %wide.trip.count308
  %i.gh = shl nuw nsw i64 %0, 3
  %i.gi = shl nuw nsw i64 %wide.trip.count308, 4  ; 4 uses
  %i.gj = zext nneg i32 %i.fs to i64              ; 3 uses
  %min.iters.check = icmp ult i32 %i.fs, 4
  %n.vec = and i64 %i.gj, 2147483646              ; 3 uses
  %i.gk = or i64 %i.gj, 1
  %i.gl = shl nuw nsw i64 %n.vec, 1
  %i.gm = or disjoint i64 %i.gl, 1
  %cmp.n = icmp eq i64 %n.vec, %i.gj
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.lr.ph.split.split.split, %._crit_edge265
  %indvars.iv328 = phi i64 [ 0, %.preheader228.lr.ph.split.split.split ], [ %indvars.iv.next329, %._crit_edge265 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv328
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !39
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv328
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !39
  %invariant.gep400 = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.ge
  br label %.preheader226

.preheader226:                                    ; preds = %.preheader228, %._crit_edge261
  %indvars.iv321 = phi i64 [ 1, %.preheader228 ], [ %indvars.iv.next322, %._crit_edge261 ] ; 2 uses
  %indvars.iv319 = phi i64 [ 1, %.preheader228 ], [ %indvars.iv.next320, %._crit_edge261 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv319 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !41 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !41 ; 2 uses
  %gep401 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep400, i64 %indvars.iv321
  %i.gv = load ptr, ptr %gep401, align 8, !tbaa !41
  %invariant.gep398 = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gb
  br label %.preheader

.preheader:                                       ; preds = %.preheader226, %._crit_edge257
  %indvars.iv312 = phi i64 [ 1, %.preheader226 ], [ %indvars.iv.next313, %._crit_edge257 ] ; 2 uses
  %indvars.iv310 = phi i64 [ 1, %.preheader226 ], [ %indvars.iv.next311, %._crit_edge257 ] ; 4 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv310
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !43 ; 5 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv310
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !43 ; 5 uses
  %i.ha = add nuw nsw i64 %indvars.iv310, 1       ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.ha
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !43 ; 5 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.ha
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 5 uses
  %gep399 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep398, i64 %indvars.iv312
  %i.hf = load ptr, ptr %gep399, align 8, !tbaa !43 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.fz ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep = getelementptr nuw i8, ptr %i.hf, i64 8
  %scevgep420.a = getelementptr nuw i8, ptr %scevgep, i64 %i.gg ; 4 uses
  %scevgep421 = getelementptr i8, ptr %i.hf, i64 %i.gh ; 4 uses
  %scevgep422 = getelementptr nuw i8, ptr %i.gx, i64 8
  %scevgep423 = getelementptr i8, ptr %i.gx, i64 -8
  %scevgep424 = getelementptr i8, ptr %scevgep423, i64 %i.gi
  %scevgep425 = getelementptr nuw i8, ptr %i.gz, i64 8
  %scevgep426 = getelementptr i8, ptr %i.gz, i64 -8
  %scevgep427 = getelementptr i8, ptr %scevgep426, i64 %i.gi
  %scevgep428 = getelementptr nuw i8, ptr %i.hc, i64 8
  %scevgep429 = getelementptr i8, ptr %i.hc, i64 -8
  %scevgep430 = getelementptr i8, ptr %scevgep429, i64 %i.gi
  %scevgep431 = getelementptr nuw i8, ptr %i.he, i64 8
  %scevgep432 = getelementptr i8, ptr %i.he, i64 -8
  %scevgep433 = getelementptr i8, ptr %scevgep432, i64 %i.gi
  %bound0 = icmp ult ptr %scevgep420.a, %scevgep424
  %bound1 = icmp ult ptr %scevgep422, %scevgep421
  %found.conflict = and i1 %bound0, %bound1
  %bound0434 = icmp ult ptr %scevgep420.a, %scevgep427
  %bound1435 = icmp ult ptr %scevgep425, %scevgep421
  %found.conflict436 = and i1 %bound0434, %bound1435
  %conflict.rdx = or i1 %found.conflict, %found.conflict436
  %bound0437 = icmp ult ptr %scevgep420.a, %scevgep430
  %bound1438 = icmp ult ptr %scevgep428, %scevgep421
  %found.conflict439 = and i1 %bound0437, %bound1438
  %conflict.rdx440 = or i1 %conflict.rdx, %found.conflict439
  %bound0441 = icmp ult ptr %scevgep420.a, %scevgep433
  %bound1442 = icmp ult ptr %scevgep431, %scevgep421
  %found.conflict443 = and i1 %bound0441, %bound1442
  %conflict.rdx444 = or i1 %conflict.rdx440, %found.conflict443
  br i1 %conflict.rdx444, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.hg = shl nuw i64 %index, 1
  %i.hh = or disjoint i64 %i.hg, 1                ; 4 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hh
  %wide.vec = load <4 x double>, ptr %i.hi, align 8, !tbaa !45, !alias.scope !81 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec445 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hh
  %wide.vec446 = load <4 x double>, ptr %i.hj, align 8, !tbaa !45, !alias.scope !84 ; 2 uses
  %strided.vec447 = shufflevector <4 x double> %wide.vec446, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec448 = shufflevector <4 x double> %wide.vec446, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hk = fadd <2 x double> %strided.vec, %strided.vec447
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hh
  %wide.vec449 = load <4 x double>, ptr %i.hl, align 8, !tbaa !45, !alias.scope !86 ; 2 uses
  %strided.vec450 = shufflevector <4 x double> %wide.vec449, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec451 = shufflevector <4 x double> %wide.vec449, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hm = fadd <2 x double> %i.hk, %strided.vec450
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hh
  %wide.vec452 = load <4 x double>, ptr %i.hn, align 8, !tbaa !45, !alias.scope !88 ; 2 uses
  %strided.vec453 = shufflevector <4 x double> %wide.vec452, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec454 = shufflevector <4 x double> %wide.vec452, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ho = fadd <2 x double> %i.hm, %strided.vec453
  %i.hp = fadd <2 x double> %i.ho, %strided.vec445
  %i.hq = fadd <2 x double> %i.hp, %strided.vec448
  %i.hr = fadd <2 x double> %i.hq, %strided.vec451
  %i.hs = fadd <2 x double> %i.hr, %strided.vec454
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store <2 x double> %i.hs, ptr %i.hu, align 8, !tbaa !45, !alias.scope !90, !noalias !92
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge257, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv303.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.gk, %middle.block ]
  %indvars.iv301.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.gm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %scalar.ph ], [ %indvars.iv303.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %scalar.ph ], [ %indvars.iv301.ph, %scalar.ph.preheader ] ; 6 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv301
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !45
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv301
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !45
  %i.ia = fadd double %i.hx, %i.hz
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv301
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !45
  %i.id = fadd double %i.ia, %i.ic
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv301
  %i.if = load double, ptr %i.ie, align 8, !tbaa !45
  %i.ig = fadd double %i.id, %i.if
  %i.ih = add nuw nsw i64 %indvars.iv301, 1       ; 4 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.ih
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !45
  %i.ik = fadd double %i.ig, %i.ij
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.ih
  %i.im = load double, ptr %i.il, align 8, !tbaa !45
  %i.in = fadd double %i.ik, %i.im
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.ih
  %i.ip = load double, ptr %i.io, align 8, !tbaa !45
  %i.iq = fadd double %i.in, %i.ip
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.ih
  %i.is = load double, ptr %i.ir, align 8, !tbaa !45
  %i.it = fadd double %i.iq, %i.is
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv303
  store double %i.it, ptr %gep, align 8, !tbaa !45
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 2
  %exitcond309.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count308
  br i1 %exitcond309.not, label %._crit_edge257, label %scalar.ph, !llvm.loop !94

._crit_edge257:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 2
  %exitcond318.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count317
  br i1 %exitcond318.not, label %._crit_edge261, label %.preheader, !llvm.loop !95

._crit_edge261:                                   ; preds = %._crit_edge257
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 2
  %exitcond327.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count326
  br i1 %exitcond327.not, label %._crit_edge265, label %.preheader226, !llvm.loop !96

._crit_edge265:                                   ; preds = %._crit_edge261
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count331
  br i1 %exitcond332.not, label %._crit_edge268.split, label %.preheader228, !llvm.loop !97

._crit_edge268.split:                             ; preds = %._crit_edge265, %.preheader228.lr.ph, %del_sorted_list.exit
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  %exitcond336.not = icmp eq i64 %indvars.iv.next334, 8
  br i1 %exitcond336.not, label %.preheader229, label %bb.m, !llvm.loop !98

bb.q:                                             ; preds = %.preheader229, %.loopexit
  %indvars.iv343 = phi i64 [ 0, %.preheader229 ], [ %indvars.iv.next344, %.loopexit ] ; 22 uses
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr @consolidate_blocks.side, i64 %indvars.iv343 ; 4 uses
  %i.iv = load i32, ptr %i.iu, align 16, !tbaa !4
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !4  ; 2 uses
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.iz ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 52
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv343
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !4  ; 2 uses
  %i.je = icmp eq i32 %i.jd, -2
  br i1 %i.je, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv343
  store i32 -2, ptr %i.jf, align 4, !tbaa !4
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv343
  store i32 0, ptr %i.jg, align 4, !tbaa !4
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.jh = zext i32 %i.jd to i64                   ; 2 uses
  %i.ji = icmp eq i64 %indvars.iv350, %i.jh
  br i1 %i.ji, label %bb.t, label %.preheader227

bb.t:                                             ; preds = %bb.s
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 76
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %indvars.iv343 ; 4 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !4  ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, -1
  br i1 %i.jm, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %indvars.iv343
  store i32 %i.jl, ptr %i.jn, align 4, !tbaa !4
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv343
  store i32 %i.s, ptr %i.jo, align 4, !tbaa !4
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv343
  store i32 0, ptr %i.jp, align 4, !tbaa !4
  %i.jq = load i32, ptr %i.jk, align 4, !tbaa !4
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 76
  %i.ju = and i64 %indvars.iv343, 4294967295
  %i.jv = xor i64 %i.ju, 1                        ; 3 uses
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.jt, i64 %i.jv
  store i32 %.0205.lcssa, ptr %i.jw, align 4, !tbaa !4
  %i.jx = load i32, ptr %i.jk, align 4, !tbaa !4
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 52
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.jv
  store i32 %i.s, ptr %i.kb, align 4, !tbaa !4
  %i.kc = load i32, ptr %i.jk, align 4, !tbaa !4
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 28
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.jv
  store i32 0, ptr %i.kg, align 4, !tbaa !4
  br label %.loopexit

.preheader227:                                    ; preds = %bb.s
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %indvars.iv343 ; 4 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv343 ; 4 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv343 ; 4 uses
  %i.kk = and i64 %indvars.iv343, 4294967295
  %i.kl = xor i64 %i.kk, 1                        ; 12 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ja, i64 76
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.km, i64 %indvars.iv343 ; 4 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !4  ; 2 uses
  %i.kp = icmp sgt i32 %i.ko, -1
  br i1 %i.kp, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.preheader227
  %i.kq = icmp eq i64 %i.q, %i.jh
  br i1 %i.kq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.ae, %bb.ab, %bb.z, %bb.v
  %.lcssa288 = phi i32 [ %i.iy, %bb.v ], [ %i.lo, %bb.z ], [ %i.mv, %bb.ab ], [ %i.oa, %bb.ae ]
  %i.kr = trunc nuw nsw i64 %indvars.iv343 to i32
  %i.ks = trunc nuw nsw i64 %indvars.iv347 to i32
  %i.kt = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.ku = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.kt, i32 noundef %i.ks, i32 noundef %.0205.lcssa, i32 noundef %.lcssa288, i32 noundef %i.kr, i32 noundef %i.s) ; 0 uses
  tail call void @exit(i32 noundef -1) #8
  unreachable

bb.x:                                             ; preds = %bb.v
  store i32 %i.ko, ptr %i.kh, align 4, !tbaa !4
  store i32 %i.t, ptr %i.ki, align 4, !tbaa !4
  store i32 0, ptr %i.kj, align 4, !tbaa !4
  %i.kv = load i32, ptr %i.kn, align 4, !tbaa !4
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 76
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %i.kl
end_hunk_1
