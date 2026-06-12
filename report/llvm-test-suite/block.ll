inline.NumInlined: 4
begin_hunk_0_@split_blocks:bb.a
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv550
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i32 0, ptr %i.fo, align 8, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 %i.aa, ptr %i.fp, align 4, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i32 %.0304.lcssa, ptr %i.fq, align 8, !tbaa !26
  %i.fr = load i32, ptr @my_pe, align 4, !tbaa !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !31
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fu = trunc i64 %indvars.iv550 to i32         ; 4 uses
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
  store i32 %.3301.lcssa, ptr %i.ib, align 4, !tbaa !36
  %i.ic = load i32, ptr @num_refine, align 4, !tbaa !4 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %.not31.i.not = icmp slt i64 %indvars.iv585, %i.id
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
  br i1 %i.jx, label %.preheader342.lr.ph, label %._crit_edge432

.preheader342.lr.ph:                              ; preds = %add_sorted_list.exit
  %.not324423 = icmp slt i32 %i.jq, 1
  %.not326414.a = icmp slt i32 %i.js, 1
  %.not325419 = icmp slt i32 %i.ju, 1
  %or.cond = select i1 %.not324423, i1 true, i1 %.not326414.a
  %brmerge = select i1 %or.cond, i1 true, i1 %.not325419
  br i1 %brmerge, label %._crit_edge432, label %.preheader342.lr.ph.split.split.split

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
  %wide.trip.count548 = zext nneg i32 %i.jw to i64
  %wide.trip.count543 = zext i32 %i.kg to i64
  %wide.trip.count534 = zext i32 %i.ke to i64
  %wide.trip.count525 = zext i32 %i.kc to i64     ; 3 uses
  %i.kh = shl nuw nsw i64 %wide.trip.count525, 4  ; 4 uses
  %i.ki = shl nuw nsw i64 %i.kb, 3
  %i.kj = add nuw nsw i64 %i.kb, %wide.trip.count525
  %i.kk = shl nuw nsw i64 %i.kj, 3
  %i.kl = zext nneg i32 %i.ju to i64              ; 3 uses
  %min.iters.check = icmp ult i32 %i.ju, 14
  %n.vec = and i64 %i.kl, 2147483646              ; 3 uses
  %i.km = shl nuw nsw i64 %n.vec, 1
  %i.kn = or disjoint i64 %i.km, 1
  %i.ko = or i64 %i.kl, 1
  %cmp.n = icmp eq i64 %n.vec, %i.kl
  br label %.preheader342

.preheader342:                                    ; preds = %.preheader342.lr.ph.split.split.split, %._crit_edge426.split.split
  %indvars.iv545 = phi i64 [ 0, %.preheader342.lr.ph.split.split.split ], [ %indvars.iv.next546, %._crit_edge426.split.split ] ; 3 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv545
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !39
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv545
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !39
  %invariant.gep687 = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kf
  br label %.preheader337

.preheader337:                                    ; preds = %.preheader342, %._crit_edge422.split
  %indvars.iv538 = phi i64 [ 1, %.preheader342 ], [ %indvars.iv.next539.a, %._crit_edge422.split ] ; 2 uses
  %indvars.iv536 = phi i64 [ 1, %.preheader342 ], [ %indvars.iv.next537, %._crit_edge422.split ] ; 2 uses
  %gep688 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep687, i64 %indvars.iv536
  %i.kt = load ptr, ptr %gep688, align 8, !tbaa !41
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv538 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !41 ; 2 uses
  %i.kx = load ptr, ptr %i.ku, align 8, !tbaa !41 ; 2 uses
  %invariant.gep685 = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.kd
  br label %.preheader

.preheader:                                       ; preds = %.preheader337, %._crit_edge418
  %indvars.iv529 = phi i64 [ 1, %.preheader337 ], [ %indvars.iv.next530.a, %._crit_edge418 ] ; 4 uses
  %indvars.iv527 = phi i64 [ 1, %.preheader337 ], [ %indvars.iv.next528, %._crit_edge418 ] ; 2 uses
  %gep686 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep685, i64 %indvars.iv527
  %i.ky = load ptr, ptr %gep686, align 8, !tbaa !43 ; 3 uses
  %i.kz = add nuw nsw i64 %indvars.iv529, 1       ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.kz
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !43 ; 6 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kz
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !43 ; 6 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv529
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !43 ; 6 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %indvars.iv529
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !43 ; 6 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kb ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep = getelementptr nuw i8, ptr %i.lb, i64 8 ; 4 uses
  %scevgep748.a = getelementptr i8, ptr %i.lb, i64 -8
  %scevgep749.a = getelementptr i8, ptr %scevgep748.a, i64 %i.kh ; 4 uses
  %scevgep750.a = getelementptr nuw i8, ptr %i.ld, i64 8 ; 4 uses
  %scevgep751.a = getelementptr i8, ptr %i.ld, i64 -8
  %scevgep752.a = getelementptr i8, ptr %scevgep751.a, i64 %i.kh ; 4 uses
  %scevgep753.a = getelementptr nuw i8, ptr %i.lf, i64 8 ; 4 uses
  %scevgep754.a = getelementptr i8, ptr %i.lf, i64 -8
  %scevgep755 = getelementptr i8, ptr %scevgep754.a, i64 %i.kh ; 4 uses
  %scevgep756 = getelementptr nuw i8, ptr %i.lh, i64 8 ; 4 uses
  %scevgep757 = getelementptr i8, ptr %i.lh, i64 -8
  %scevgep758 = getelementptr i8, ptr %scevgep757, i64 %i.kh ; 4 uses
  %scevgep759 = getelementptr nuw i8, ptr %i.ky, i64 8
  %scevgep760 = getelementptr nuw i8, ptr %scevgep759, i64 %i.ki ; 4 uses
  %scevgep761 = getelementptr i8, ptr %i.ky, i64 %i.kk ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep752.a
  %bound1 = icmp ult ptr %scevgep750.a, %scevgep749.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0762.a = icmp ult ptr %scevgep, %scevgep755
  %bound1763.a = icmp ult ptr %scevgep753.a, %scevgep749.a
  %found.conflict764.a = and i1 %bound0762.a, %bound1763.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict764.a
  %bound0765 = icmp ult ptr %scevgep, %scevgep758
  %bound1766 = icmp ult ptr %scevgep756, %scevgep749.a
  %found.conflict767 = and i1 %bound0765, %bound1766
  %conflict.rdx768 = or i1 %conflict.rdx, %found.conflict767
  %bound0769 = icmp ult ptr %scevgep, %scevgep761
  %bound1770 = icmp ult ptr %scevgep760, %scevgep749.a
  %found.conflict771 = and i1 %bound0769, %bound1770
  %conflict.rdx772 = or i1 %conflict.rdx768, %found.conflict771
  %bound0773 = icmp ult ptr %scevgep750.a, %scevgep755
  %bound1774 = icmp ult ptr %scevgep753.a, %scevgep752.a
  %found.conflict775 = and i1 %bound0773, %bound1774
  %conflict.rdx776 = or i1 %conflict.rdx772, %found.conflict775
  %bound0777 = icmp ult ptr %scevgep750.a, %scevgep758
  %bound1778 = icmp ult ptr %scevgep756, %scevgep752.a
  %found.conflict779 = and i1 %bound0777, %bound1778
  %conflict.rdx780 = or i1 %conflict.rdx776, %found.conflict779
  %bound0781 = icmp ult ptr %scevgep750.a, %scevgep761
  %bound1782 = icmp ult ptr %scevgep760, %scevgep752.a
  %found.conflict783 = and i1 %bound0781, %bound1782
  %conflict.rdx784 = or i1 %conflict.rdx780, %found.conflict783
  %bound0785 = icmp ult ptr %scevgep753.a, %scevgep758
  %bound1786 = icmp ult ptr %scevgep756, %scevgep755
  %found.conflict787 = and i1 %bound0785, %bound1786
  %conflict.rdx788 = or i1 %conflict.rdx784, %found.conflict787
  %bound0789 = icmp ult ptr %scevgep753.a, %scevgep761
  %bound1790 = icmp ult ptr %scevgep760, %scevgep755
  %found.conflict791 = and i1 %bound0789, %bound1790
  %conflict.rdx792 = or i1 %conflict.rdx788, %found.conflict791
  %bound0793 = icmp ult ptr %scevgep756, %scevgep761
  %bound1794 = icmp ult ptr %scevgep760, %scevgep758
  %found.conflict795 = and i1 %bound0793, %bound1794
  %conflict.rdx796 = or i1 %conflict.rdx792, %found.conflict795
  br i1 %conflict.rdx796, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.li = shl i64 %index, 1                       ; 2 uses
  %i.lj = or disjoint i64 %i.li, 1                ; 4 uses
  %i.lk = or disjoint i64 %i.li, 3                ; 4 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.lo = getelementptr i8, ptr %i.ln, i64 16
  %i.lp = load double, ptr %i.lm, align 8, !tbaa !45, !alias.scope !47
  %i.lq = load double, ptr %i.lo, align 8, !tbaa !45, !alias.scope !47
  %.scalar = fmul double %i.lp, 1.250000e-01
  %i.lr = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %.scalar800 = fmul double %i.lq, 1.250000e-01
  %i.lt = insertelement <2 x double> poison, double %.scalar800, i64 0
  %i.lu = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lj
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lk
  store <2 x double> %i.ls, ptr %i.lv, align 8, !tbaa !45, !alias.scope !50, !noalias !52
  store <2 x double> %i.lu, ptr %i.lw, align 8, !tbaa !45, !alias.scope !50, !noalias !52
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lj
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lk
  store <2 x double> %i.ls, ptr %i.lx, align 8, !tbaa !45, !alias.scope !56, !noalias !57
  store <2 x double> %i.lu, ptr %i.ly, align 8, !tbaa !45, !alias.scope !56, !noalias !57
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lj
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lk
  store <2 x double> %i.ls, ptr %i.lz, align 8, !tbaa !45, !alias.scope !58, !noalias !59
  store <2 x double> %i.lu, ptr %i.ma, align 8, !tbaa !45, !alias.scope !58, !noalias !59
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.lj
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.lk
  store <2 x double> %i.ls, ptr %i.mb, align 8, !tbaa !45, !alias.scope !60, !noalias !47
  store <2 x double> %i.lu, ptr %i.mc, align 8, !tbaa !45, !alias.scope !60, !noalias !47
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge418, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv520.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.kn, %middle.block ]
  %indvars.iv518.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.ko, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv520 = phi i64 [ %indvars.iv.next521.a, %scalar.ph ], [ %indvars.iv520.ph, %scalar.ph.preheader ] ; 6 uses
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %scalar.ph ], [ %indvars.iv518.ph, %scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv518
  %i.me = load double, ptr %gep, align 8, !tbaa !45
  %i.mf = fmul double %i.me, 1.250000e-01         ; 8 uses
  %i.mg = add nuw nsw i64 %indvars.iv520, 1       ; 4 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.mg
  store double %i.mf, ptr %i.mh, align 8, !tbaa !45
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.mg
  store double %i.mf, ptr %i.mi, align 8, !tbaa !45
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.mg
  store double %i.mf, ptr %i.mj, align 8, !tbaa !45
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.mg
  store double %i.mf, ptr %i.mk, align 8, !tbaa !45
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv520
  store double %i.mf, ptr %i.ml, align 8, !tbaa !45
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv520
  store double %i.mf, ptr %i.mm, align 8, !tbaa !45
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv520
  store double %i.mf, ptr %i.mn, align 8, !tbaa !45
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv520
  store double %i.mf, ptr %i.mo, align 8, !tbaa !45
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %indvars.iv.next521.a = add nuw nsw i64 %indvars.iv520, 2
  %exitcond526.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count525
  br i1 %exitcond526.not, label %._crit_edge418, label %scalar.ph, !llvm.loop !64

._crit_edge418:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, 1 ; 2 uses
  %indvars.iv.next530.a = add nuw nsw i64 %indvars.iv529, 2
end_hunk_0
begin_hunk_1_@consolidate_blocks:bb.a
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
  store i32 %.0.lcssa, ptr %i.db, align 4, !tbaa !36
  %i.dc = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.dd = sext i32 %i.dc to i64
  %.not31.i = icmp sgt i64 %indvars.iv357, %i.dd
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

.preheader229:                                    ; preds = %._crit_edge271
  %i.dv = getelementptr inbounds nuw i8, ptr %i.as, i64 76 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.as, i64 52 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.as, i64 28 ; 3 uses
  br label %bb.q

bb.m:                                             ; preds = %add_sorted_list.exit, %._crit_edge271
  %indvars.iv340 = phi i64 [ 0, %add_sorted_list.exit ], [ %indvars.iv.next341, %._crit_edge271 ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv340
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
  %.not2229.i.not = icmp slt i64 %indvars.iv357, %i.ep
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
  %i.fm = trunc i64 %indvars.iv340 to i32         ; 2 uses
  %i.fn = trunc i64 %indvars.iv340 to i1
  %i.fo = load i32, ptr @y_block_half, align 4, !tbaa !4 ; 3 uses
  %i.fp = and i32 %i.fm, 2
  %.not212 = icmp eq i32 %i.fp, 0
  %i.fq = select i1 %.not212, i32 0, i32 %i.fo
  %i.fr = lshr i32 %i.fm, 2
  %i.fs = load i32, ptr @z_block_half, align 4, !tbaa !4 ; 5 uses
  %i.ft = mul i32 %i.fs, %i.fr
  %i.fu = load i32, ptr @num_vars, align 4, !tbaa !4 ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.preheader228.lr.ph, label %._crit_edge271

.preheader228.lr.ph:                              ; preds = %del_sorted_list.exit
  %.not213262 = icmp slt i32 %i.fl, 1
  %.not215253.a = icmp slt i32 %i.fo, 1
  %.not214258 = icmp slt i32 %i.fs, 1
  %or.cond = select i1 %.not213262, i1 true, i1 %.not215253.a
  %brmerge = select i1 %or.cond, i1 true, i1 %.not214258
  br i1 %brmerge, label %._crit_edge271, label %.preheader228.lr.ph.split.split.split

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
  %wide.trip.count338 = zext nneg i32 %i.fu to i64
  %wide.trip.count333 = zext i32 %i.gf to i64
  %wide.trip.count324 = zext i32 %i.gc to i64
  %wide.trip.count315 = zext i32 %i.ga to i64     ; 3 uses
  %i.gg = shl nuw nsw i64 %i.fz, 3
  %i.gh = add nuw nsw i64 %i.fz, %wide.trip.count315
  %i.gi = shl nuw nsw i64 %i.gh, 3
  %i.gj = shl nuw nsw i64 %wide.trip.count315, 4  ; 4 uses
  %i.gk = zext nneg i32 %i.fs to i64              ; 3 uses
  %min.iters.check = icmp ult i32 %i.fs, 4
  %n.vec = and i64 %i.gk, 2147483646              ; 3 uses
  %i.gl = shl nuw nsw i64 %n.vec, 1
  %i.gm = or disjoint i64 %i.gl, 1
  %i.gn = or i64 %i.gk, 1
  %cmp.n = icmp eq i64 %n.vec, %i.gk
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.lr.ph.split.split.split, %._crit_edge265.split.split
  %indvars.iv335 = phi i64 [ 0, %.preheader228.lr.ph.split.split.split ], [ %indvars.iv.next336, %._crit_edge265.split.split ] ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv335
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !39
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv335
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !39
  %invariant.gep407 = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ge
  br label %.preheader226

.preheader226:                                    ; preds = %.preheader228, %._crit_edge261.split
  %indvars.iv328 = phi i64 [ 1, %.preheader228 ], [ %indvars.iv.next329.a, %._crit_edge261.split ] ; 2 uses
  %indvars.iv326 = phi i64 [ 1, %.preheader228 ], [ %indvars.iv.next327, %._crit_edge261.split ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv328 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !41 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !41 ; 2 uses
  %gep408 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep407, i64 %indvars.iv326
  %i.gw = load ptr, ptr %gep408, align 8, !tbaa !41
  %invariant.gep405 = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gb
  br label %.preheader

.preheader:                                       ; preds = %.preheader226, %._crit_edge257
  %indvars.iv319 = phi i64 [ 1, %.preheader226 ], [ %indvars.iv.next320.a, %._crit_edge257 ] ; 4 uses
  %indvars.iv317 = phi i64 [ 1, %.preheader226 ], [ %indvars.iv.next318, %._crit_edge257 ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv319
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !43 ; 5 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv319
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !43 ; 5 uses
  %i.hb = add nuw nsw i64 %indvars.iv319, 1       ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !43 ; 5 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.hb
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !43 ; 5 uses
  %gep406 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep405, i64 %indvars.iv317
  %i.hg = load ptr, ptr %gep406, align 8, !tbaa !43 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.fz ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep = getelementptr nuw i8, ptr %i.hg, i64 8
  %scevgep427.a = getelementptr nuw i8, ptr %scevgep, i64 %i.gg ; 4 uses
  %scevgep428.a = getelementptr i8, ptr %i.hg, i64 %i.gi ; 4 uses
  %scevgep429.a = getelementptr nuw i8, ptr %i.gy, i64 8
  %scevgep430.a = getelementptr i8, ptr %i.gy, i64 -8
  %scevgep431.a = getelementptr i8, ptr %scevgep430.a, i64 %i.gj
  %scevgep432.a = getelementptr nuw i8, ptr %i.ha, i64 8
  %scevgep433.a = getelementptr i8, ptr %i.ha, i64 -8
  %scevgep434 = getelementptr i8, ptr %scevgep433.a, i64 %i.gj
  %scevgep435 = getelementptr nuw i8, ptr %i.hd, i64 8
  %scevgep436 = getelementptr i8, ptr %i.hd, i64 -8
  %scevgep437 = getelementptr i8, ptr %scevgep436, i64 %i.gj
  %scevgep438 = getelementptr nuw i8, ptr %i.hf, i64 8
  %scevgep439 = getelementptr i8, ptr %i.hf, i64 -8
  %scevgep440 = getelementptr i8, ptr %scevgep439, i64 %i.gj
  %bound0 = icmp ult ptr %scevgep427.a, %scevgep431.a
  %bound1 = icmp ult ptr %scevgep429.a, %scevgep428.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0441.a = icmp ult ptr %scevgep427.a, %scevgep434
  %bound1442.a = icmp ult ptr %scevgep432.a, %scevgep428.a
  %found.conflict443.a = and i1 %bound0441.a, %bound1442.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict443.a
  %bound0444 = icmp ult ptr %scevgep427.a, %scevgep437
  %bound1445 = icmp ult ptr %scevgep435, %scevgep428.a
  %found.conflict446 = and i1 %bound0444, %bound1445
  %conflict.rdx447 = or i1 %conflict.rdx, %found.conflict446
  %bound0448 = icmp ult ptr %scevgep427.a, %scevgep440
  %bound1449 = icmp ult ptr %scevgep438, %scevgep428.a
  %found.conflict450 = and i1 %bound0448, %bound1449
  %conflict.rdx451 = or i1 %conflict.rdx447, %found.conflict450
  br i1 %conflict.rdx451, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.hh = shl i64 %index, 1
  %i.hi = or disjoint i64 %i.hh, 1                ; 4 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.hi
  %wide.vec = load <4 x double>, ptr %i.hj, align 8, !tbaa !45, !alias.scope !81 ; 2 uses
  %strided.vec452 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hi
  %wide.vec453 = load <4 x double>, ptr %i.hk, align 8, !tbaa !45, !alias.scope !84 ; 2 uses
  %strided.vec455 = shufflevector <4 x double> %wide.vec453, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hl = fadd <4 x double> %wide.vec, %wide.vec453
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hi
  %wide.vec456 = load <4 x double>, ptr %i.hm, align 8, !tbaa !45, !alias.scope !86 ; 2 uses
  %strided.vec458 = shufflevector <4 x double> %wide.vec456, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hn = fadd <4 x double> %i.hl, %wide.vec456
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hi
  %wide.vec459 = load <4 x double>, ptr %i.ho, align 8, !tbaa !45, !alias.scope !88 ; 2 uses
  %strided.vec461 = shufflevector <4 x double> %wide.vec459, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hp = fadd <4 x double> %i.hn, %wide.vec459
  %i.hq = shufflevector <4 x double> %i.hp, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.hr = fadd <2 x double> %i.hq, %strided.vec452
  %i.hs = fadd <2 x double> %i.hr, %strided.vec455
  %i.ht = fadd <2 x double> %i.hs, %strided.vec458
  %i.hu = fadd <2 x double> %i.ht, %strided.vec461
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store <2 x double> %i.hu, ptr %i.hw, align 8, !tbaa !45, !alias.scope !90, !noalias !92
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge257, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv310.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.gm, %middle.block ]
  %indvars.iv308.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader ], [ %i.gn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv310 = phi i64 [ %indvars.iv.next311.a, %scalar.ph ], [ %indvars.iv310.ph, %scalar.ph.preheader ] ; 6 uses
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %scalar.ph ], [ %indvars.iv308.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv310
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !45
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv310
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !45
  %i.ic = fadd double %i.hz, %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv310
  %i.ie = load double, ptr %i.id, align 8, !tbaa !45
  %i.if = fadd double %i.ic, %i.ie
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv310
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !45
  %i.ii = fadd double %i.if, %i.ih
  %i.ij = add nuw nsw i64 %indvars.iv310, 1       ; 4 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !45
  %i.im = fadd double %i.ii, %i.il
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.ij
  %i.io = load double, ptr %i.in, align 8, !tbaa !45
  %i.ip = fadd double %i.im, %i.io
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.ij
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !45
  %i.is = fadd double %i.ip, %i.ir
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.ij
  %i.iu = load double, ptr %i.it, align 8, !tbaa !45
  %i.iv = fadd double %i.is, %i.iu
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv308
  store double %i.iv, ptr %gep, align 8, !tbaa !45
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %indvars.iv.next311.a = add nuw nsw i64 %indvars.iv310, 2
  %exitcond316.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count315
  br i1 %exitcond316.not, label %._crit_edge257, label %scalar.ph, !llvm.loop !94

._crit_edge257:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %indvars.iv.next320.a = add nuw nsw i64 %indvars.iv319, 2
  %exitcond325.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count324
  br i1 %exitcond325.not, label %._crit_edge261.split, label %.preheader, !llvm.loop !95

._crit_edge261.split:                             ; preds = %._crit_edge257
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %indvars.iv.next329.a = add nuw nsw i64 %indvars.iv328, 2
  %exitcond334.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count333
  br i1 %exitcond334.not, label %._crit_edge265.split.split, label %.preheader226, !llvm.loop !96

._crit_edge265.split.split:                       ; preds = %._crit_edge261.split
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %exitcond339.not = icmp eq i64 %indvars.iv.next336, %wide.trip.count338
  br i1 %exitcond339.not, label %._crit_edge271, label %.preheader228, !llvm.loop !97

._crit_edge271:                                   ; preds = %._crit_edge265.split.split, %.preheader228.lr.ph, %del_sorted_list.exit
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1 ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next341, 8
  br i1 %exitcond343.not, label %.preheader229, label %bb.m, !llvm.loop !98

bb.q:                                             ; preds = %.preheader229, %.loopexit
  %indvars.iv350 = phi i64 [ 0, %.preheader229 ], [ %indvars.iv.next351.a, %.loopexit ] ; 22 uses
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr @consolidate_blocks.side, i64 %indvars.iv350 ; 4 uses
  %i.ix = load i32, ptr %i.iw, align 16, !tbaa !4
end_hunk_1
