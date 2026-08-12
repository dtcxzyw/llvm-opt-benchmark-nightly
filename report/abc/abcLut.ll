inline.NumInlined: 207
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@Abc_NtkSuperChoiceLut:bb.a
  %i.dm = getelementptr i8, ptr %i.dg, i64 28
  %.val124 = load i32, ptr %i.dm, align 4, !tbaa !63
  %.not110 = icmp eq i32 %.val124, 2
  br i1 %.not110, label %bb.s, label %Abc_NodeSuperChoiceLut.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.dn = add nsw i32 %.097206, 1                 ; 8 uses
  %i.do = tail call ptr @Abc_NodeGetCutsRecursive(ptr noundef %i.bw, ptr noundef nonnull %i.dg, i32 noundef 0, i32 noundef 0) #18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 20 ; 10 uses
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = and i32 %i.dq, 4095
  %i.ds = or disjoint i32 %i.dr, -198967296       ; 3 uses
  store i32 %i.ds, ptr %i.dp, align 4
  %.020.in24.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.02025.i = load ptr, ptr %.020.in24.i, align 8, !tbaa !64 ; 2 uses
  %.not26.i = icmp eq ptr %.02025.i, null
  br i1 %.not26.i, label %Abc_NodeLutMap.exit, label %.preheader.i135

.preheader.i135:                                  ; preds = %bb.s, %bb.v
  %i.dt = phi i32 [ %i.ff, %bb.v ], [ %i.ds, %bb.s ] ; 3 uses
  %.02027.i = phi ptr [ %.020.i, %bb.v ], [ %.02025.i, %bb.s ] ; 3 uses
  %i.du = load i32, ptr %.02027.i, align 8
  %i.dv = lshr i32 %i.du, 28                      ; 4 uses
  %.not29.i = icmp eq i32 %i.dv, 0
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %.preheader.i135
  %i.dw = load ptr, ptr %i.dg, align 8, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %.02027.i, i64 24 ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dw, i64 32
  %.val.i137 = load ptr, ptr %i.dy, align 8, !tbaa !51
  %i.dz = getelementptr i8, ptr %.val.i137, i64 8
  %.val.val.i138 = load ptr, ptr %i.dz, align 8, !tbaa !29 ; 3 uses
  %wide.trip.count.i139 = zext nneg i32 %i.dv to i64 ; 2 uses
  %xtraiter625.a = and i64 %wide.trip.count.i139, 1
  %i.ea = icmp eq i32 %i.dv, 1
  br i1 %i.ea, label %.epil.preheader624.a, label %.lr.ph.i136.new

.lr.ph.i136.new:                                  ; preds = %.lr.ph.i136
  %unroll_iter629.a = and i64 %wide.trip.count.i139, 14
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i136.new
  %indvars.iv.i140 = phi i64 [ 0, %.lr.ph.i136.new ], [ %indvars.iv.next.i141.1, %bb.t ] ; 3 uses
  %.023.i = phi i32 [ 0, %.lr.ph.i136.new ], [ %spec.select.i.1, %bb.t ]
  %niter630.a = phi i64 [ 0, %.lr.ph.i136.new ], [ %niter630.next.1.a, %bb.t ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i140
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !43
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %.val.val.i138, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = lshr i32 %i.eh, 12
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.023.i, i32 %i.ei)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i140
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !43
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %.val.val.i138, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !30
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = lshr i32 %i.eq, 12
  %spec.select.i.1 = tail call i32 @llvm.umax.i32(i32 %spec.select.i, i32 %i.er) ; 3 uses
  %indvars.iv.next.i141.1 = add nuw nsw i64 %indvars.iv.i140, 2 ; 2 uses
  %niter630.next.1.a = add i64 %niter630.a, 2     ; 2 uses
  %niter630.ncmp.1.a = icmp eq i64 %niter630.next.1.a, %unroll_iter629.a
  br i1 %niter630.ncmp.1.a, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.t, !llvm.loop !68

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.t
  %lcmp.mod626.not.a = icmp eq i64 %xtraiter625.a, 0
  br i1 %lcmp.mod626.not.a, label %._crit_edge.i, label %.epil.preheader624.a

.epil.preheader624.a:                             ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i136
  %indvars.iv.i140.epil.init = phi i64 [ 0, %.lr.ph.i136 ], [ %indvars.iv.next.i141.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.023.i.epil.init = phi i32 [ 0, %.lr.ph.i136 ], [ %spec.select.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod628.a = trunc i32 %i.dv to i1
  tail call void @llvm.assume(i1 %lcmp.mod628.a)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i140.epil.init
  %i.et = load i32, ptr %i.es, align 4, !tbaa !43
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %.val.val.i138, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !30
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = lshr i32 %i.ey, 12
  %spec.select.i.epil = tail call i32 @llvm.umax.i32(i32 %.023.i.epil.init, i32 %i.ez)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader624.a, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i135
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i135 ], [ %spec.select.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader624.a ] ; 2 uses
  %i.fa = lshr i32 %i.dt, 12
  %i.fb = icmp samesign ugt i32 %i.fa, %.0.lcssa.i
  br i1 %i.fb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i
  %i.fc = shl nuw i32 %.0.lcssa.i, 12
  %i.fd = and i32 %i.dt, 4095
  %i.fe = or disjoint i32 %i.fc, %i.fd            ; 2 uses
  store i32 %i.fe, ptr %i.dp, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %i.ff = phi i32 [ %i.dt, %._crit_edge.i ], [ %i.fe, %bb.u ] ; 2 uses
  %.020.in.i = getelementptr inbounds nuw i8, ptr %.02027.i, i64 16
  %.020.i = load ptr, ptr %.020.in.i, align 8, !tbaa !64 ; 2 uses
  %.not.i143 = icmp eq ptr %.020.i, null
  br i1 %.not.i143, label %Abc_NodeLutMap.exit, label %.preheader.i135, !llvm.loop !69

Abc_NodeLutMap.exit:                              ; preds = %bb.v, %bb.s
  %i.fg = phi i32 [ %i.ds, %bb.s ], [ %i.ff, %bb.v ] ; 2 uses
  %i.fh = and i32 %i.fg, -4096
  %i.fi = add nuw i32 %i.fh, 4096
  %i.fj = and i32 %i.fg, 4095
  %i.fk = or disjoint i32 %i.fi, %i.fj
  store i32 %i.fk, ptr %i.dp, align 4
  %i.fl = tail call ptr @Abc_NodeFindCut(ptr noundef %i.cl, ptr noundef nonnull %i.dg, i32 noundef 0) #18 ; 8 uses
  store ptr %i.fl, ptr %i.cv, align 8, !tbaa !70
  %i.fm = getelementptr i8, ptr %i.fl, i64 4      ; 15 uses
  %.val116 = load i32, ptr %i.fm, align 4, !tbaa !26 ; 2 uses
  %.not111 = icmp sgt i32 %.val116, %1
  br i1 %.not111, label %bb.w, label %Abc_NodeSuperChoiceLut.exit.thread

bb.w:                                             ; preds = %Abc_NodeLutMap.exit
  %.val115 = load i32, ptr %i.cw, align 4, !tbaa !26
  %i.fn = icmp sgt i32 %.val115, 1000
  br i1 %i.fn, label %Abc_NodeSuperChoiceLut.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = add nsw i32 %.095207, 1                 ; 6 uses
  %i.fp = icmp sgt i32 %.val116, 0
  br i1 %i.fp, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.fq = getelementptr i8, ptr %i.fl, i64 8
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.y ] ; 2 uses
  %.val28.i.i = load ptr, ptr %i.fq, align 8, !tbaa !29
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.val28.i.i, i64 %indvars.iv.i.i
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !30
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 20 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = or i32 %i.fu, 64
  store i32 %i.fv, ptr %i.ft, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val25.i.i = load i32, ptr %i.fm, align 4, !tbaa !26
  %i.fw = sext i32 %.val25.i.i to i64
  %i.fx = icmp slt i64 %indvars.iv.next.i.i, %i.fw
  br i1 %i.fx, label %bb.y, label %.critedge.i.i, !llvm.loop !71

.critedge.i.i:                                    ; preds = %bb.y, %bb.x
  store i32 0, ptr %i.cw, align 4, !tbaa !26
  tail call void @Abc_NodeSuperChoiceCollect2_rec(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cn)
  %.val2431.i.i = load i32, ptr %i.fm, align 4, !tbaa !26
  %i.fy = icmp sgt i32 %.val2431.i.i, 0
  br i1 %i.fy, label %.lr.ph33.i.i, label %.critedge2.preheader.i.i

.lr.ph33.i.i:                                     ; preds = %.critedge.i.i
  %i.fz = getelementptr i8, ptr %i.fl, i64 8
  br label %bb.z

.critedge2.preheader.i.i:                         ; preds = %bb.z, %.critedge.i.i
  %.val34.i.i = load i32, ptr %i.cw, align 4, !tbaa !26
  %i.ga = icmp sgt i32 %.val34.i.i, 0
  br i1 %i.ga, label %.critedge2.i.i, label %Abc_NodeSuperChoiceCollect2.exit.i

bb.z:                                             ; preds = %bb.z, %.lr.ph33.i.i
  %indvars.iv38.i.i = phi i64 [ 0, %.lr.ph33.i.i ], [ %indvars.iv.next39.i.i, %bb.z ] ; 2 uses
  %.val27.i.i = load ptr, ptr %i.fz, align 8, !tbaa !29
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.val27.i.i, i64 %indvars.iv38.i.i
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !30
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 20 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = and i32 %i.ge, -65
  store i32 %i.gf, ptr %i.gd, align 4
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 1 ; 2 uses
  %.val24.i.i = load i32, ptr %i.fm, align 4, !tbaa !26
  %i.gg = sext i32 %.val24.i.i to i64
  %i.gh = icmp slt i64 %indvars.iv.next39.i.i, %i.gg
  br i1 %i.gh, label %bb.z, label %.critedge2.preheader.i.i, !llvm.loop !72

.critedge2.i.i:                                   ; preds = %.critedge2.preheader.i.i, %.critedge2.i.i
  %indvars.iv41.i.i = phi i64 [ %indvars.iv.next42.i.i, %.critedge2.i.i ], [ 0, %.critedge2.preheader.i.i ] ; 2 uses
  %.val26.i.i = load ptr, ptr %i.cx, align 8, !tbaa !29
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.val26.i.i, i64 %indvars.iv41.i.i
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !30
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 20 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = and i32 %i.gl, -65
  store i32 %i.gm, ptr %i.gk, align 4
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %.val.i.i = load i32, ptr %i.cw, align 4, !tbaa !26
  %i.gn = sext i32 %.val.i.i to i64
  %i.go = icmp slt i64 %indvars.iv.next42.i.i, %i.gn
  br i1 %i.go, label %.critedge2.i.i, label %Abc_NodeSuperChoiceCollect2.exit.i, !llvm.loop !73

Abc_NodeSuperChoiceCollect2.exit.i:               ; preds = %.critedge2.i.i, %.critedge2.preheader.i.i
  %i.gp = tail call ptr @Abc_NodeSuperChoiceTruth(ptr noundef nonnull %calloc.i) ; 21 uses
  %i.gq = ptrtoaddr ptr %i.gp to i64              ; 3 uses
  store ptr %i.gp, ptr %i.cy, align 8, !tbaa !74
  %.val72.i = load i32, ptr %i.fm, align 4, !tbaa !26 ; 11 uses
  %i.gr = tail call i32 @Extra_TruthSupport(ptr noundef %i.gp, i32 noundef %.val72.i) #18 ; 4 uses
  %i.gs = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gr) ; 3 uses
  switch i32 %i.gs, label %bb.ac [
    i32 0, label %bb.aa
    i32 1, label %.preheader.i144
  ]

.preheader.i144:                                  ; preds = %Abc_NodeSuperChoiceCollect2.exit.i
  %i.gt = icmp sgt i32 %.val72.i, 0
  br i1 %i.gt, label %.lr.ph.i146, label %._crit_edge.i145

bb.aa:                                            ; preds = %Abc_NodeSuperChoiceCollect2.exit.i
  %i.gu = load i32, ptr %i.dp, align 4
  %i.gv = and i32 %i.gu, 4095
  store i32 %i.gv, ptr %i.dp, align 4
  br label %Abc_NodeSuperChoiceLut.exit.thread

.lr.ph.i146:                                      ; preds = %.preheader.i144, %bb.ab
  %.063113.i = phi i32 [ %i.gy, %bb.ab ], [ 0, %.preheader.i144 ] ; 3 uses
  %i.gw = shl nuw i32 1, %.063113.i
  %i.gx = and i32 %i.gw, %i.gr
  %.not68.i = icmp eq i32 %i.gx, 0
  br i1 %.not68.i, label %bb.ab, label %._crit_edge.loopexit.i

bb.ab:                                            ; preds = %.lr.ph.i146
  %i.gy = add nuw nsw i32 %.063113.i, 1           ; 2 uses
  %exitcond.not.i147 = icmp eq i32 %i.gy, %.val72.i
  br i1 %exitcond.not.i147, label %._crit_edge.loopexit.i, label %.lr.ph.i146, !llvm.loop !75

._crit_edge.loopexit.i:                           ; preds = %bb.ab, %.lr.ph.i146
  %.063.lcssa.ph.i = phi i32 [ %.val72.i, %bb.ab ], [ %.063113.i, %.lr.ph.i146 ]
  %i.gz = zext nneg i32 %.063.lcssa.ph.i to i64
  br label %._crit_edge.i145

._crit_edge.i145:                                 ; preds = %._crit_edge.loopexit.i, %.preheader.i144
  %.063.lcssa.i = phi i64 [ 0, %.preheader.i144 ], [ %i.gz, %._crit_edge.loopexit.i ]
  %i.ha = getelementptr i8, ptr %i.fl, i64 8
  %.val75.i = load ptr, ptr %i.ha, align 8, !tbaa !29
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.val75.i, i64 %.063.lcssa.i
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !30
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = and i32 %i.he, -4096
  %i.hg = load i32, ptr %i.dp, align 4
  %i.hh = and i32 %i.hg, 4095
  %i.hi = or disjoint i32 %i.hh, %i.hf
  store i32 %i.hi, ptr %i.dp, align 4
  br label %Abc_NodeSuperChoiceLut.exit.thread

bb.ac:                                            ; preds = %Abc_NodeSuperChoiceCollect2.exit.i
  %.not.i148 = icmp eq i32 %i.gs, %.val72.i
  br i1 %.not.i148, label %Abc_NodeLeavesRemove.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hj = load ptr, ptr %i.ag, align 8, !tbaa !41 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !42
  tail call void @Extra_TruthShrink(ptr noundef %i.hk, ptr noundef %i.gp, i32 noundef %i.gs, i32 noundef %.val72.i, i32 noundef %i.gr) #18
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !42 ; 7 uses
  %i.hm = icmp slt i32 %.val72.i, 6
  %i.hn = add nsw i32 %.val72.i, -5
  %i.ho = shl nuw i32 1, %i.hn
  %spec.select.i.i = select i1 %i.hm, i32 1, i32 %i.ho ; 4 uses
  %i.hp = icmp sgt i32 %spec.select.i.i, 0
  br i1 %i.hp, label %select.unfold.preheader.i.i, label %Extra_TruthCopy.exit.i

select.unfold.preheader.i.i:                      ; preds = %bb.ad
  %i.hq = ptrtoaddr ptr %i.hl to i64
  %i.hr = zext nneg i32 %spec.select.i.i to i64   ; 5 uses
  %min.iters.check561 = icmp ult i32 %spec.select.i.i, 8
  %i.hs = sub i64 %i.gq, %i.hq
  %diff.check559 = icmp ugt i64 %i.hs, -32
  %or.cond578 = select i1 %min.iters.check561, i1 true, i1 %diff.check559
  br i1 %or.cond578, label %select.unfold.i.i.preheader, label %vector.ph562

select.unfold.i.i.preheader:                      ; preds = %select.unfold.preheader.i.i
  %xtraiter631.a = and i64 %i.hr, 3               ; 2 uses
  %lcmp.mod632.not.a = icmp eq i64 %xtraiter631.a, 0
  br i1 %lcmp.mod632.not.a, label %select.unfold.i.i.prol.loopexit, label %select.unfold.i.i.prol

select.unfold.i.i.prol:                           ; preds = %select.unfold.i.i.preheader, %select.unfold.i.i.prol
  %indvars.iv.i78.i.prol = phi i64 [ %indvars.iv.next.i79.i.prol, %select.unfold.i.i.prol ], [ %i.hr, %select.unfold.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold.i.i.prol ], [ 0, %select.unfold.i.i.preheader ]
  %indvars.iv.next.i79.i.prol = add nsw i64 %indvars.iv.i78.i.prol, -1 ; 4 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next.i79.i.prol
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !43
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i79.i.prol
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !43
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter631.a
  br i1 %prol.iter.cmp.not, label %select.unfold.i.i.prol.loopexit, label %select.unfold.i.i.prol, !llvm.loop !76

select.unfold.i.i.prol.loopexit:                  ; preds = %select.unfold.i.i.prol, %select.unfold.i.i.preheader
  %indvars.iv.i78.i.unr = phi i64 [ %i.hr, %select.unfold.i.i.preheader ], [ %indvars.iv.next.i79.i.prol, %select.unfold.i.i.prol ]
  %i.hw = icmp ult i32 %spec.select.i.i, 4
  br i1 %i.hw, label %Extra_TruthCopy.exit.i, label %select.unfold.i.i

vector.ph562:                                     ; preds = %select.unfold.preheader.i.i
  %n.vec563 = and i64 %i.hr, 2147483640
  br label %vector.body564

vector.body564:                                   ; preds = %vector.body564, %vector.ph562
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next568, %vector.body564 ] ; 2 uses
  %i.hx = xor i64 %index565, -1
  %i.hy = add i64 %i.hx, %i.hr                    ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 -12
  %i.ib = getelementptr inbounds i8, ptr %i.hz, i64 -28
  %wide.load566 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !43
  %wide.load567 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !43
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.hy ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 -12
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 -28
  store <4 x i32> %wide.load566, ptr %i.id, align 4, !tbaa !43
  store <4 x i32> %wide.load567, ptr %i.ie, align 4, !tbaa !43
  %index.next568 = add nuw i64 %index565, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next568, %n.vec563
  br i1 %i.if, label %Extra_TruthCopy.exit.i, label %vector.body564, !llvm.loop !78

select.unfold.i.i:                                ; preds = %select.unfold.i.i.prol.loopexit, %select.unfold.i.i
  %indvars.iv.i78.i = phi i64 [ %indvars.iv.next.i79.i.3, %select.unfold.i.i ], [ %indvars.iv.i78.i.unr, %select.unfold.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv.next.i79.i = add nsw i64 %indvars.iv.i78.i, -1 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next.i79.i
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !43
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i79.i
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !43
  %indvars.iv.next.i79.i.1 = add nsw i64 %indvars.iv.i78.i, -2 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next.i79.i.1
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !43
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i79.i.1
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !43
  %indvars.iv.next.i79.i.2 = add nsw i64 %indvars.iv.i78.i, -3 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next.i79.i.2
  %i.in = load i32, ptr %i.im, align 4, !tbaa !43
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i79.i.2
  store i32 %i.in, ptr %i.io, align 4, !tbaa !43
  %indvars.iv.next.i79.i.3 = add nsw i64 %indvars.iv.i78.i, -4 ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next.i79.i.3
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !43
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i79.i.3
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !43
  %i.is = icmp sgt i64 %indvars.iv.i78.i, 4
  br i1 %i.is, label %select.unfold.i.i, label %Extra_TruthCopy.exit.i, !llvm.loop !81

Extra_TruthCopy.exit.i:                           ; preds = %vector.body564, %select.unfold.i.i.prol.loopexit, %select.unfold.i.i, %bb.ad
  %notmask.i = shl nsw i32 -1, %.val72.i
  %.demorgan.i = or i32 %notmask.i, %i.gr
  %i.it = icmp sgt i32 %.val72.i, 0
  br i1 %i.it, label %.lr.ph.i80.i, label %Abc_NodeLeavesRemove.exit.i

.lr.ph.i80.i:                                     ; preds = %Extra_TruthCopy.exit.i
  %i.iu = getelementptr i8, ptr %i.fl, i64 8      ; 6 uses
  %i.iv = zext nneg i32 %.val72.i to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ai, %.lr.ph.i80.i
  %indvars.iv.i81.i = phi i64 [ %i.iv, %.lr.ph.i80.i ], [ %indvars.iv.next.i82.i, %bb.ai ] ; 2 uses
  %indvars.iv.next.i82.i = add nsw i64 %indvars.iv.i81.i, -1 ; 3 uses
  %i.iw = trunc nuw nsw i64 %indvars.iv.next.i82.i to i32
  %i.ix = shl nuw i32 1, %i.iw
  %i.iy = and i32 %i.ix, %.demorgan.i
  %.not.i.not.i = icmp eq i32 %i.iy, 0
  br i1 %.not.i.not.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.val.i83.i = load ptr, ptr %i.iu, align 8, !tbaa !29 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.val.i83.i, i64 %indvars.iv.next.i82.i
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !30
  %i.jb = load i32, ptr %i.fm, align 4, !tbaa !26 ; 7 uses
  %smin.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.jb, i32 0) ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph356, label %._crit_edge357

.lr.ph356:                                        ; preds = %bb.af
  %i.jd = zext nneg i32 %i.jb to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ah
  %i.je = trunc nuw i64 %i.jh to i32              ; 2 uses
  %i.jf = icmp sgt i32 %i.je, 0
  br i1 %i.jf, label %bb.ah, label %._crit_edge357, !llvm.loop !82

bb.ah:                                            ; preds = %.lr.ph356, %bb.ag
  %i.jg = phi i32 [ %i.jb, %.lr.ph356 ], [ %i.je, %bb.ag ]
  %indvars.iv.i.i.i355 = phi i64 [ %i.jd, %.lr.ph356 ], [ %i.jh, %bb.ag ]
  %i.jh = add nsw i64 %indvars.iv.i.i.i355, -1    ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.val.i83.i, i64 %i.jh
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !30
  %i.jk = icmp eq ptr %i.jj, %i.ja
  br i1 %i.jk, label %._crit_edge, label %bb.ag, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.ah
  br label %._crit_edge357, !llvm.loop !82

._crit_edge357:                                   ; preds = %bb.ag, %._crit_edge, %bb.af
  %.0.in.lcssa.i.i.i = phi i32 [ %i.jg, %._crit_edge ], [ %smin.i.i.i, %bb.af ], [ %smin.i.i.i, %bb.ag ] ; 2 uses
  %i.jl = icmp slt i32 %.0.in.lcssa.i.i.i, %i.jb
  br i1 %i.jl, label %.lr.ph.i.i.i, label %Vec_PtrRemove.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge357
  %i.jm = sext i32 %.0.in.lcssa.i.i.i to i64      ; 4 uses
  %wide.trip.count.i.i.i = sext i32 %i.jb to i64  ; 3 uses
  %i.jn = sub nsw i64 %wide.trip.count.i.i.i, %i.jm
  %xtraiter633 = and i64 %i.jn, 3                 ; 2 uses
  %lcmp.mod634.not = icmp eq i64 %xtraiter633, 0
  br i1 %lcmp.mod634.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i, %.prol.preheader
  %indvars.iv18.i.i.i.prol = phi i64 [ %indvars.iv.next19.i.i.i.prol, %.prol.preheader ], [ %i.jm, %.lr.ph.i.i.i ] ; 2 uses
  %prol.iter635 = phi i64 [ %prol.iter635.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i ]
  %i.jo = load ptr, ptr %i.iu, align 8, !tbaa !29
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %indvars.iv18.i.i.i.prol ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !30
  %i.jr = getelementptr i8, ptr %i.jp, i64 -8
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !30
  %indvars.iv.next19.i.i.i.prol = add nsw i64 %indvars.iv18.i.i.i.prol, 1 ; 2 uses
  %prol.iter635.next = add i64 %prol.iter635, 1   ; 2 uses
  %prol.iter635.cmp.not = icmp eq i64 %prol.iter635.next, %xtraiter633
  br i1 %prol.iter635.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !83

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i
  %indvars.iv18.i.i.i.unr = phi i64 [ %i.jm, %.lr.ph.i.i.i ], [ %indvars.iv.next19.i.i.i.prol, %.prol.preheader ]
  %i.js = sub nsw i64 %i.jm, %wide.trip.count.i.i.i
  %i.jt = icmp ugt i64 %i.js, -4
  br i1 %i.jt, label %Vec_PtrRemove.exit.i.i, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new
  %indvars.iv18.i.i.i = phi i64 [ %indvars.iv.next19.i.i.i.3, %.lr.ph.i.i.i.new ], [ %indvars.iv18.i.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.ju = load ptr, ptr %i.iu, align 8, !tbaa !29
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %indvars.iv18.i.i.i ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !30
  %i.jx = getelementptr i8, ptr %i.jv, i64 -8
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !30
  %i.jy = load ptr, ptr %i.iu, align 8, !tbaa !29
  %i.jz = getelementptr [8 x i8], ptr %i.jy, i64 %indvars.iv18.i.i.i ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !30
  store ptr %i.kb, ptr %i.jz, align 8, !tbaa !30
  %i.kc = load ptr, ptr %i.iu, align 8, !tbaa !29
  %i.kd = getelementptr [8 x i8], ptr %i.kc, i64 %indvars.iv18.i.i.i ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !30
  %i.kg = getelementptr i8, ptr %i.kd, i64 8
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !30
  %i.kh = load ptr, ptr %i.iu, align 8, !tbaa !29
  %i.ki = getelementptr [8 x i8], ptr %i.kh, i64 %indvars.iv18.i.i.i ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !30
  %i.kl = getelementptr i8, ptr %i.ki, i64 16
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !30
  %indvars.iv.next19.i.i.i.3 = add nsw i64 %indvars.iv18.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next19.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %Vec_PtrRemove.exit.i.i, label %.lr.ph.i.i.i.new, !llvm.loop !84

Vec_PtrRemove.exit.i.i:                           ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new, %._crit_edge357
  %i.km = add nsw i32 %i.jb, -1
  store i32 %i.km, ptr %i.fm, align 4, !tbaa !26
  br label %bb.ai

bb.ai:                                            ; preds = %Vec_PtrRemove.exit.i.i, %bb.ae
  %i.kn = icmp sgt i64 %indvars.iv.i81.i, 1
  br i1 %i.kn, label %bb.ae, label %Abc_NodeLeavesRemove.exit.i, !llvm.loop !85

Abc_NodeLeavesRemove.exit.i:                      ; preds = %bb.ai, %Extra_TruthCopy.exit.i, %bb.ac
  %.val71116.i = load i32, ptr %i.fm, align 4, !tbaa !26 ; 2 uses
  %i.ko = icmp sgt i32 %.val71116.i, %i.dc
  br i1 %i.ko, label %.lr.ph118.i, label %._crit_edge119.i

.lr.ph118.i:                                      ; preds = %Abc_NodeLeavesRemove.exit.i
  %i.kp = getelementptr i8, ptr %i.fl, i64 8      ; 14 uses
  %i.kq = load ptr, ptr %i.ag, align 8, !tbaa !41 ; 10 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 4 uses
  %scevgep445 = getelementptr i8, ptr %i.gp, i64 -4
  br label %bb.aj

.critedge100.i:                                   ; preds = %select.unfold.i276.i.i, %middle.block, %Abc_NodeLeavesRemove.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.val71.i = load i32, ptr %i.fm, align 4, !tbaa !26 ; 2 uses
  %i.kr = icmp sgt i32 %.val71.i, %27
  br i1 %i.kr, label %bb.aj, label %._crit_edge119.i

bb.aj:                                            ; preds = %.critedge100.i, %.lr.ph118.i
  %i.ks = phi i32 [ %i.db, %.lr.ph118.i ], [ %27, %.critedge100.i ] ; 4 uses
  %i.kt = phi i32 [ %.pre.i.i260, %.lr.ph118.i ], [ %27, %.critedge100.i ]
  %.pre429.i.i = phi i32 [ %.pre429.i.i254, %.lr.ph118.i ], [ %27, %.critedge100.i ] ; 4 uses
  %i.ku = phi i32 [ %i.dc, %.lr.ph118.i ], [ %27, %.critedge100.i ] ; 7 uses
  %.val71117.i = phi i32 [ %.val71116.i, %.lr.ph118.i ], [ %.val71.i, %.critedge100.i ] ; 14 uses
  %.fr = freeze i32 %i.kt                         ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %.val205.i.i = load ptr, ptr %i.kp, align 8, !tbaa !29 ; 2 uses
  %i.kv = load ptr, ptr %.val205.i.i, align 8, !tbaa !30
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.kx = icmp sgt i32 %.val71117.i, 0            ; 2 uses
  br i1 %i.kx, label %.preheader29.i.i.i, label %Abc_NodeDecomposeSort.exit.i.i.thread

Abc_NodeDecomposeSort.exit.i.i.thread:            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %select.unfold.preheader.i.i.i

.preheader29.i.i.i:                               ; preds = %bb.aj
  %i.ky = zext nneg i32 %.val71117.i to i64       ; 3 uses
  %i.kz = shl nuw nsw i64 %i.ky, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 8 %.val205.i.i, i64 %i.kz, i1 false), !tbaa !86
  %i.la = icmp sgt i32 %i.ku, 0
  br i1 %i.la, label %.preheader.us.preheader.i.i.i, label %Abc_NodeDecomposeSort.exit.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader29.i.i.i
  %wide.trip.count44.i.i.i = zext nneg i32 %i.ku to i64
  %xtraiter637 = and i64 %i.ky, 1
  %i.lb = icmp eq i32 %.val71117.i, 1
  %unroll_iter641 = and i64 %i.ky, 2147483646
  %lcmp.mod638.not = icmp eq i64 %xtraiter637, 0
  %lcmp.mod640 = trunc i32 %.val71117.i to i1
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvars.iv41.i.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i.i ], [ %indvars.iv.next42.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  br i1 %i.lb, label %.epil.preheader636, label %.preheader.us.i.i.i.new

.preheader.us.i.i.i.new:                          ; preds = %.preheader.us.i.i.i, %bb.an
  %indvars.iv.i.i90.i = phi i64 [ %indvars.iv.next.i.i.i.1, %bb.an ], [ 0, %.preheader.us.i.i.i ] ; 4 uses
  %.033.us.i.i.i = phi i32 [ %.1.us.i.i.i.1, %bb.an ], [ 1000000, %.preheader.us.i.i.i ] ; 3 uses
  %.02032.us.i.i.i = phi i32 [ %.121.us.i.i.i.1, %bb.an ], [ -1, %.preheader.us.i.i.i ] ; 2 uses
  %niter642 = phi i64 [ %niter642.next.1, %bb.an ], [ 0, %.preheader.us.i.i.i ]
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i90.i
  %i.ld = load ptr, ptr %i.lc, align 16, !tbaa !86 ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %i.ld, null
  br i1 %.not.us.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader.us.i.i.i.new
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 20
  %i.lf = load i32, ptr %i.le, align 4
  %i.lg = lshr i32 %i.lf, 12                      ; 2 uses
  %i.lh = icmp sgt i32 %.033.us.i.i.i, %i.lg
  %i.li = trunc nuw nsw i64 %indvars.iv.i.i90.i to i32
  %spec.select.us.i.i.i = select i1 %i.lh, i32 %i.li, i32 %.02032.us.i.i.i
  %spec.select28.us.i.i.i = tail call i32 @llvm.smin.i32(i32 %.033.us.i.i.i, i32 %i.lg)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.preheader.us.i.i.i.new
  %.121.us.i.i.i = phi i32 [ %.02032.us.i.i.i, %.preheader.us.i.i.i.new ], [ %spec.select.us.i.i.i, %bb.ak ] ; 2 uses
  %.1.us.i.i.i = phi i32 [ %.033.us.i.i.i, %.preheader.us.i.i.i.new ], [ %spec.select28.us.i.i.i, %bb.ak ] ; 3 uses
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i90.i, 1 ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !86 ; 2 uses
  %.not.us.i.i.i.1 = icmp eq ptr %i.lk, null
  br i1 %.not.us.i.i.i.1, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 20
  %i.lm = load i32, ptr %i.ll, align 4
  %i.ln = lshr i32 %i.lm, 12                      ; 2 uses
  %i.lo = icmp sgt i32 %.1.us.i.i.i, %i.ln
  %i.lp = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  %spec.select.us.i.i.i.1 = select i1 %i.lo, i32 %i.lp, i32 %.121.us.i.i.i
  %spec.select28.us.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %.1.us.i.i.i, i32 %i.ln)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.121.us.i.i.i.1 = phi i32 [ %.121.us.i.i.i, %bb.al ], [ %spec.select.us.i.i.i.1, %bb.am ] ; 3 uses
  %.1.us.i.i.i.1 = phi i32 [ %.1.us.i.i.i, %bb.al ], [ %spec.select28.us.i.i.i.1, %bb.am ] ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i90.i, 2 ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %._crit_edge.us.i.i.i.unr-lcssa, label %.preheader.us.i.i.i.new, !llvm.loop !87

._crit_edge.us.i.i.i.unr-lcssa:                   ; preds = %bb.an
  br i1 %lcmp.mod638.not, label %._crit_edge.us.i.i.i, label %.epil.preheader636

.epil.preheader636:                               ; preds = %._crit_edge.us.i.i.i.unr-lcssa, %.preheader.us.i.i.i
  %indvars.iv.i.i90.i.epil.init = phi i64 [ 0, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.us.i.i.i.unr-lcssa ] ; 2 uses
  %.033.us.i.i.i.epil.init = phi i32 [ 1000000, %.preheader.us.i.i.i ], [ %.1.us.i.i.i.1, %._crit_edge.us.i.i.i.unr-lcssa ]
  %.02032.us.i.i.i.epil.init = phi i32 [ -1, %.preheader.us.i.i.i ], [ %.121.us.i.i.i.1, %._crit_edge.us.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i90.i.epil.init
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !86 ; 2 uses
  %.not.us.i.i.i.epil = icmp eq ptr %i.lr, null
  br i1 %.not.us.i.i.i.epil, label %._crit_edge.us.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.epil.preheader636
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 20
  %i.lt = load i32, ptr %i.ls, align 4
  %i.lu = lshr i32 %i.lt, 12
  %i.lv = icmp sgt i32 %.033.us.i.i.i.epil.init, %i.lu
  %i.lw = trunc nuw nsw i64 %indvars.iv.i.i90.i.epil.init to i32
  %spec.select.us.i.i.i.epil = select i1 %i.lv, i32 %i.lw, i32 %.02032.us.i.i.i.epil.init
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %.epil.preheader636, %bb.ao, %._crit_edge.us.i.i.i.unr-lcssa
  %.121.us.i.i.i.lcssa = phi i32 [ %.121.us.i.i.i.1, %._crit_edge.us.i.i.i.unr-lcssa ], [ %.02032.us.i.i.i.epil.init, %.epil.preheader636 ], [ %spec.select.us.i.i.i.epil, %bb.ao ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv41.i.i.i
  store i32 %.121.us.i.i.i.lcssa, ptr %i.lx, align 4, !tbaa !43
  %i.ly = sext i32 %.121.us.i.i.i.lcssa to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ly
  store ptr null, ptr %i.lz, align 8, !tbaa !86
  %indvars.iv.next42.i.i.i = add nuw nsw i64 %indvars.iv41.i.i.i, 1 ; 2 uses
  %exitcond45.not.i.i.i = icmp eq i64 %indvars.iv.next42.i.i.i, %wide.trip.count44.i.i.i
  br i1 %exitcond45.not.i.i.i, label %Abc_NodeDecomposeSort.exit.i.i, label %.preheader.us.i.i.i, !llvm.loop !88

Abc_NodeDecomposeSort.exit.i.i:                   ; preds = %._crit_edge.us.i.i.i, %.preheader29.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ma = icmp slt i32 %.val71117.i, 6
  %i.mb = add nsw i32 %.val71117.i, -5
  %i.mc = shl nuw i32 1, %i.mb
  %spec.select.i.i.i = select i1 %i.ma, i32 1, i32 %i.mc ; 3 uses
  %i.md = icmp sgt i32 %spec.select.i.i.i, 0
  br i1 %i.md, label %select.unfold.preheader.i.i.i, label %Extra_TruthCopy.exit.thread.i.i

select.unfold.preheader.i.i.i:                    ; preds = %Abc_NodeDecomposeSort.exit.i.i.thread, %Abc_NodeDecomposeSort.exit.i.i
  %spec.select.i.i.i302 = phi i32 [ 1, %Abc_NodeDecomposeSort.exit.i.i.thread ], [ %spec.select.i.i.i, %Abc_NodeDecomposeSort.exit.i.i ] ; 6 uses
  %i.me = load ptr, ptr %4, align 8, !tbaa !42    ; 3 uses
  %i.mf = zext nneg i32 %spec.select.i.i.i302 to i64 ; 9 uses
  %min.iters.check547 = icmp samesign ult i32 %spec.select.i.i.i302, 8
  %i.mg = ptrtoaddr ptr %i.me to i64
  %i.mh = sub i64 %i.mg, %i.gq
  %diff.check545 = icmp ugt i64 %i.mh, -32
  %or.cond580 = select i1 %min.iters.check547, i1 true, i1 %diff.check545
  br i1 %or.cond580, label %select.unfold.i.i.i, label %vector.ph548

vector.ph548:                                     ; preds = %select.unfold.preheader.i.i.i
  %n.vec549 = and i64 %i.mf, 2147483640
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph548
  %index551 = phi i64 [ 0, %vector.ph548 ], [ %index.next554, %vector.body550 ] ; 2 uses
  %i.mi = xor i64 %index551, -1
  %i.mj = add i64 %i.mi, %i.mf                    ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.mj ; 2 uses
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 -12
  %i.mm = getelementptr inbounds i8, ptr %i.mk, i64 -28
  %wide.load552 = load <4 x i32>, ptr %i.ml, align 4, !tbaa !43
  %wide.load553 = load <4 x i32>, ptr %i.mm, align 4, !tbaa !43
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.mj ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -12
  %i.mp = getelementptr inbounds i8, ptr %i.mn, i64 -28
  store <4 x i32> %wide.load552, ptr %i.mo, align 4, !tbaa !43
  store <4 x i32> %wide.load553, ptr %i.mp, align 4, !tbaa !43
  %index.next554 = add nuw i64 %index551, 8       ; 2 uses
  %i.mq = icmp eq i64 %index.next554, %n.vec549
  br i1 %i.mq, label %Extra_TruthCopy.exit.i.i, label %vector.body550, !llvm.loop !89

select.unfold.i.i.i:                              ; preds = %select.unfold.preheader.i.i.i, %select.unfold.i.i.i
  %indvars.iv.i208.i.i = phi i64 [ %indvars.iv.next.i209.i.i, %select.unfold.i.i.i ], [ %i.mf, %select.unfold.preheader.i.i.i ] ; 2 uses
  %indvars.iv.next.i209.i.i = add nsw i64 %indvars.iv.i208.i.i, -1 ; 3 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i209.i.i
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !43
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.next.i209.i.i
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !43
  %i.mu = icmp samesign ugt i64 %indvars.iv.i208.i.i, 1
  br i1 %i.mu, label %select.unfold.i.i.i, label %Extra_TruthCopy.exit.i.i, !llvm.loop !90

Extra_TruthCopy.exit.i.i:                         ; preds = %vector.body550, %select.unfold.i.i.i
  %i.mv = icmp sgt i32 %.fr, 0
  br i1 %i.mv, label %.preheader288.us.i.i.preheader, label %.lr.ph311.i.i

.preheader288.us.i.i.preheader:                   ; preds = %Extra_TruthCopy.exit.i.i
  %i.mw = zext nneg i32 %.fr to i64
  %min.iters.check533 = icmp samesign ult i32 %spec.select.i.i.i302, 8
  %n.vec535 = and i64 %i.mf, 2147483640
  %min.iters.check519 = icmp samesign ult i32 %spec.select.i.i.i302, 8
  %n.vec521 = and i64 %i.mf, 2147483640
  br label %.preheader288.us.i.i

Extra_TruthCopy.exit.thread.i.i:                  ; preds = %Abc_NodeDecomposeSort.exit.i.i
  %i.mx = icmp sgt i32 %i.ku, 0
  br i1 %i.mx, label %.preheader288.i.i, label %.lr.ph311.i.i

.preheader288.us.i.i:                             ; preds = %.preheader288.us.i.i.preheader, %._crit_edge.split.us.us.i.i
  %indvars.iv374.i.i = phi i64 [ %indvars.iv.next375.i.i, %._crit_edge.split.us.us.i.i ], [ 0, %.preheader288.us.i.i.preheader ] ; 4 uses
  %.0180300.us.i.i = phi i32 [ %.1181.lcssa.us.i.i, %._crit_edge.split.us.us.i.i ], [ 2, %.preheader288.us.i.i.preheader ] ; 2 uses
  %.not346.i.i = icmp eq i64 %indvars.iv374.i.i, 31
  br i1 %.not346.i.i, label %._crit_edge.split.us.us.i.i, label %.lr.ph.us.i.i

._crit_edge.split.us.us.loopexit.i.i:             ; preds = %Extra_TruthCopy.exit221.loopexit.us.us.i.i
  %i.my = trunc nsw i64 %indvars.iv.next370.i.i to i32
  br label %._crit_edge.split.us.us.i.i

._crit_edge.split.us.us.i.i:                      ; preds = %._crit_edge.split.us.us.loopexit.i.i, %.preheader288.us.i.i
  %.1181.lcssa.us.i.i = phi i32 [ %.0180300.us.i.i, %.preheader288.us.i.i ], [ %i.my, %._crit_edge.split.us.us.loopexit.i.i ]
  %indvars.iv.next375.i.i = add nuw nsw i64 %indvars.iv374.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next375.i.i, %i.mw
  br i1 %exitcond.not, label %._crit_edge302.i.i, label %.preheader288.us.i.i, !llvm.loop !91

.lr.ph.us.i.i:                                    ; preds = %.preheader288.us.i.i
  %i.mz = trunc nuw nsw i64 %indvars.iv374.i.i to i32
  %i.na = shl nuw nsw i32 1, %i.mz
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv374.i.i
  %i.nc = sext i32 %.0180300.us.i.i to i64
  %i.nd = load i32, ptr %i.nb, align 4, !tbaa !43 ; 2 uses
  br label %select.unfold.preheader.i211.us.us.i.i

select.unfold.preheader.i211.us.us.i.i:           ; preds = %Extra_TruthCopy.exit221.loopexit.us.us.i.i, %.lr.ph.us.i.i
  %indvars.iv369.i.i = phi i64 [ %indvars.iv.next370.i.i, %Extra_TruthCopy.exit221.loopexit.us.us.i.i ], [ %i.nc, %.lr.ph.us.i.i ] ; 3 uses
  %.0182298.us.us.i.i = phi i32 [ %i.ot, %Extra_TruthCopy.exit221.loopexit.us.us.i.i ], [ 0, %.lr.ph.us.i.i ]
  %i.ne = getelementptr [8 x i8], ptr %i.kq, i64 %indvars.iv369.i.i ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !42 ; 4 uses
  %i.ng = trunc nsw i64 %indvars.iv369.i.i to i32
  %i.nh = sdiv i32 %i.ng, 2
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.ni
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !42 ; 5 uses
  %i.nl = ptrtoaddr ptr %i.nk to i64              ; 2 uses
  %i.nm = ptrtoaddr ptr %i.nf to i64
  %i.nn = sub i64 %i.nm, %i.nl
  %diff.check531 = icmp ugt i64 %i.nn, -32
  %or.cond582 = select i1 %min.iters.check533, i1 true, i1 %diff.check531
  br i1 %or.cond582, label %select.unfold.i212.us.us.i.i, label %vector.body536

vector.body536:                                   ; preds = %select.unfold.preheader.i211.us.us.i.i, %vector.body536
  %index537 = phi i64 [ %index.next540, %vector.body536 ], [ 0, %select.unfold.preheader.i211.us.us.i.i ] ; 2 uses
  %i.no = xor i64 %index537, -1
  %i.np = add i64 %i.no, %i.mf                    ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.np ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 -12
  %i.ns = getelementptr inbounds i8, ptr %i.nq, i64 -28
  %wide.load538 = load <4 x i32>, ptr %i.nr, align 4, !tbaa !43
  %wide.load539 = load <4 x i32>, ptr %i.ns, align 4, !tbaa !43
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.np ; 2 uses
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 -12
  %i.nv = getelementptr inbounds i8, ptr %i.nt, i64 -28
  store <4 x i32> %wide.load538, ptr %i.nu, align 4, !tbaa !43
  store <4 x i32> %wide.load539, ptr %i.nv, align 4, !tbaa !43
  %index.next540 = add nuw i64 %index537, 8       ; 2 uses
  %i.nw = icmp eq i64 %index.next540, %n.vec535
  br i1 %i.nw, label %select.unfold.preheader.i217.us.us.i.i, label %vector.body536, !llvm.loop !92

select.unfold.i212.us.us.i.i:                     ; preds = %select.unfold.preheader.i211.us.us.i.i, %select.unfold.i212.us.us.i.i
  %indvars.iv.i213.us.us.i.i = phi i64 [ %indvars.iv.next.i214.us.us.i.i, %select.unfold.i212.us.us.i.i ], [ %i.mf, %select.unfold.preheader.i211.us.us.i.i ] ; 2 uses
  %indvars.iv.next.i214.us.us.i.i = add nsw i64 %indvars.iv.i213.us.us.i.i, -1 ; 3 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i214.us.us.i.i
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !43
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv.next.i214.us.us.i.i
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !43
  %i.oa = icmp samesign ugt i64 %indvars.iv.i213.us.us.i.i, 1
  br i1 %i.oa, label %select.unfold.i212.us.us.i.i, label %select.unfold.preheader.i217.us.us.i.i, !llvm.loop !93

select.unfold.preheader.i217.us.us.i.i:           ; preds = %vector.body536, %select.unfold.i212.us.us.i.i
  %i.ob = getelementptr i8, ptr %i.ne, i64 8      ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !42 ; 3 uses
  %i.od = ptrtoaddr ptr %i.oc to i64
  %i.oe = sub i64 %i.od, %i.nl
  %diff.check517 = icmp ugt i64 %i.oe, -32
  %or.cond584 = select i1 %min.iters.check519, i1 true, i1 %diff.check517
  br i1 %or.cond584, label %select.unfold.i218.us.us.i.i, label %vector.body522

vector.body522:                                   ; preds = %select.unfold.preheader.i217.us.us.i.i, %vector.body522
  %index523 = phi i64 [ %index.next526, %vector.body522 ], [ 0, %select.unfold.preheader.i217.us.us.i.i ] ; 2 uses
  %i.of = xor i64 %index523, -1
  %i.og = add i64 %i.of, %i.mf                    ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.og ; 2 uses
  %i.oi = getelementptr inbounds i8, ptr %i.oh, i64 -12
  %i.oj = getelementptr inbounds i8, ptr %i.oh, i64 -28
  %wide.load524 = load <4 x i32>, ptr %i.oi, align 4, !tbaa !43
  %wide.load525 = load <4 x i32>, ptr %i.oj, align 4, !tbaa !43
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.og ; 2 uses
  %i.ol = getelementptr inbounds i8, ptr %i.ok, i64 -12
  %i.om = getelementptr inbounds i8, ptr %i.ok, i64 -28
  store <4 x i32> %wide.load524, ptr %i.ol, align 4, !tbaa !43
  store <4 x i32> %wide.load525, ptr %i.om, align 4, !tbaa !43
  %index.next526 = add nuw i64 %index523, 8       ; 2 uses
  %i.on = icmp eq i64 %index.next526, %n.vec521
  br i1 %i.on, label %Extra_TruthCopy.exit221.loopexit.us.us.i.i, label %vector.body522, !llvm.loop !94

select.unfold.i218.us.us.i.i:                     ; preds = %select.unfold.preheader.i217.us.us.i.i, %select.unfold.i218.us.us.i.i
  %indvars.iv.i219.us.us.i.i = phi i64 [ %indvars.iv.next.i220.us.us.i.i, %select.unfold.i218.us.us.i.i ], [ %i.mf, %select.unfold.preheader.i217.us.us.i.i ] ; 2 uses
  %indvars.iv.next.i220.us.us.i.i = add nsw i64 %indvars.iv.i219.us.us.i.i, -1 ; 3 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i220.us.us.i.i
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !43
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv.next.i220.us.us.i.i
  store i32 %i.op, ptr %i.oq, align 4, !tbaa !43
  %i.or = icmp samesign ugt i64 %indvars.iv.i219.us.us.i.i, 1
  br i1 %i.or, label %select.unfold.i218.us.us.i.i, label %Extra_TruthCopy.exit221.loopexit.us.us.i.i, !llvm.loop !95

Extra_TruthCopy.exit221.loopexit.us.us.i.i:       ; preds = %vector.body522, %select.unfold.i218.us.us.i.i
  tail call void @Extra_TruthCofactor0(ptr noundef nonnull %i.nf, i32 noundef %.val71117.i, i32 noundef %i.nd) #18
  %i.os = load ptr, ptr %i.ob, align 8, !tbaa !42
  tail call void @Extra_TruthCofactor1(ptr noundef %i.os, i32 noundef %.val71117.i, i32 noundef %i.nd) #18
  %indvars.iv.next370.i.i = add nsw i64 %indvars.iv369.i.i, 2 ; 2 uses
  %i.ot = add nuw nsw i32 %.0182298.us.us.i.i, 1  ; 2 uses
  %exitcond373.not.i.i = icmp eq i32 %i.ot, %i.na
  br i1 %exitcond373.not.i.i, label %._crit_edge.split.us.us.loopexit.i.i, label %select.unfold.preheader.i211.us.us.i.i, !llvm.loop !96

.preheader288.i.i:                                ; preds = %Extra_TruthCopy.exit.thread.i.i, %._crit_edge.split.i.i
  %i.ou = phi i32 [ %i.ph, %._crit_edge.split.i.i ], [ %i.ku, %Extra_TruthCopy.exit.thread.i.i ]
  %i.ov = phi i32 [ %i.pi, %._crit_edge.split.i.i ], [ %i.ku, %Extra_TruthCopy.exit.thread.i.i ]
  %indvars.iv366.i.i = phi i64 [ %indvars.iv.next367.i.i, %._crit_edge.split.i.i ], [ 0, %Extra_TruthCopy.exit.thread.i.i ] ; 4 uses
  %.0180300.i.i = phi i32 [ %.1181.lcssa.i.i, %._crit_edge.split.i.i ], [ 2, %Extra_TruthCopy.exit.thread.i.i ] ; 2 uses
  %.not345.i.i = icmp eq i64 %indvars.iv366.i.i, 31
  br i1 %.not345.i.i, label %._crit_edge.split.i.i, label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %.preheader288.i.i
  %i.ow = trunc nuw nsw i64 %indvars.iv366.i.i to i32
  %i.ox = shl nuw nsw i32 1, %i.ow
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv366.i.i
  %i.oz = sext i32 %.0180300.i.i to i64
  %i.pa = load i32, ptr %i.oy, align 4, !tbaa !43 ; 2 uses
  br label %Extra_TruthCopy.exit215.i.i

Extra_TruthCopy.exit215.i.i:                      ; preds = %Extra_TruthCopy.exit215.i.i, %.lr.ph.i87.i
  %indvars.iv.i88.i = phi i64 [ %i.oz, %.lr.ph.i87.i ], [ %indvars.iv.next.i89.i, %Extra_TruthCopy.exit215.i.i ] ; 2 uses
  %.0182298.i.i = phi i32 [ 0, %.lr.ph.i87.i ], [ %i.pf, %Extra_TruthCopy.exit215.i.i ]
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %indvars.iv.i88.i ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !42
  tail call void @Extra_TruthCofactor0(ptr noundef %i.pc, i32 noundef %.val71117.i, i32 noundef %i.pa) #18
  %i.pd = getelementptr i8, ptr %i.pb, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !42
  tail call void @Extra_TruthCofactor1(ptr noundef %i.pe, i32 noundef %.val71117.i, i32 noundef %i.pa) #18
  %indvars.iv.next.i89.i = add nsw i64 %indvars.iv.i88.i, 2 ; 2 uses
  %i.pf = add nuw nsw i32 %.0182298.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.pf, %i.ox
  br i1 %exitcond.not.i.i, label %._crit_edge.split.loopexit.i.i, label %Extra_TruthCopy.exit215.i.i, !llvm.loop !96

._crit_edge.split.loopexit.i.i:                   ; preds = %Extra_TruthCopy.exit215.i.i
  %i.pg = trunc nsw i64 %indvars.iv.next.i89.i to i32
  br label %._crit_edge.split.i.i

._crit_edge.split.i.i:                            ; preds = %._crit_edge.split.loopexit.i.i, %.preheader288.i.i
  %i.ph = phi i32 [ %i.ou, %.preheader288.i.i ], [ %.pre429.i.i, %._crit_edge.split.loopexit.i.i ] ; 2 uses
  %i.pi = phi i32 [ %i.ov, %.preheader288.i.i ], [ %.pre429.i.i, %._crit_edge.split.loopexit.i.i ] ; 3 uses
  %.1181.lcssa.i.i = phi i32 [ %.0180300.i.i, %.preheader288.i.i ], [ %i.pg, %._crit_edge.split.loopexit.i.i ]
  %indvars.iv.next367.i.i = add nuw nsw i64 %indvars.iv366.i.i, 1 ; 2 uses
  %i.pj = sext i32 %i.pi to i64
  %i.pk = icmp slt i64 %indvars.iv.next367.i.i, %i.pj
  br i1 %i.pk, label %.preheader288.i.i, label %._crit_edge302.i.i, !llvm.loop !91

._crit_edge302.i.i:                               ; preds = %._crit_edge.split.i.i, %._crit_edge.split.us.us.i.i
  %i.pl = phi i1 [ true, %._crit_edge.split.us.us.i.i ], [ false, %._crit_edge.split.i.i ] ; 2 uses
  %spec.select.i.i.i301 = phi i32 [ %spec.select.i.i.i302, %._crit_edge.split.us.us.i.i ], [ %spec.select.i.i.i, %._crit_edge.split.i.i ] ; 3 uses
  %.pre429.i.i258 = phi i32 [ %.fr, %._crit_edge.split.us.us.i.i ], [ %.pre429.i.i, %._crit_edge.split.i.i ]
  %i.pm = phi i32 [ %.fr, %._crit_edge.split.us.us.i.i ], [ %i.ph, %._crit_edge.split.i.i ]
  %.lcssa297.i.i = phi i32 [ %.fr, %._crit_edge.split.us.us.i.i ], [ %i.pi, %._crit_edge.split.i.i ] ; 2 uses
  %.not347.i.i = icmp eq i32 %.lcssa297.i.i, 31
  br i1 %.not347.i.i, label %._crit_edge.thread.i.i, label %.lr.ph311.i.i

.lr.ph311.i.i:                                    ; preds = %._crit_edge302.i.i, %Extra_TruthCopy.exit.thread.i.i, %Extra_TruthCopy.exit.i.i
  %i.pn = phi i1 [ true, %Extra_TruthCopy.exit.i.i ], [ false, %Extra_TruthCopy.exit.thread.i.i ], [ %i.pl, %._crit_edge302.i.i ]
  %spec.select.i.i.i300 = phi i32 [ %spec.select.i.i.i302, %Extra_TruthCopy.exit.i.i ], [ -2147483648, %Extra_TruthCopy.exit.thread.i.i ], [ %spec.select.i.i.i301, %._crit_edge302.i.i ] ; 4 uses
  %.pre429.i.i257 = phi i32 [ %.fr, %Extra_TruthCopy.exit.i.i ], [ %.pre429.i.i, %Extra_TruthCopy.exit.thread.i.i ], [ %.pre429.i.i258, %._crit_edge302.i.i ] ; 2 uses
  %i.po = phi i32 [ %.fr, %Extra_TruthCopy.exit.i.i ], [ %i.ku, %Extra_TruthCopy.exit.thread.i.i ], [ %i.pm, %._crit_edge302.i.i ] ; 2 uses
  %.lcssa297.ph.pn.i.i = phi i32 [ %.fr, %Extra_TruthCopy.exit.i.i ], [ %i.ku, %Extra_TruthCopy.exit.thread.i.i ], [ %.lcssa297.i.i, %._crit_edge302.i.i ]
  %i.pp = shl nuw nsw i32 1, %.lcssa297.ph.pn.i.i ; 5 uses
  %i.pq = zext i32 %spec.select.i.i.i300 to i64
  %i.pr = lshr i32 %i.pp, 1
  %i.ps = zext nneg i32 %i.pp to i64              ; 2 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.kq, i64 %i.ps
  %i.pt = icmp sgt i32 %spec.select.i.i.i300, 0
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.lr.ph311.i.i
  %indvars.iv381.i.i = phi i64 [ 0, %.lr.ph311.i.i ], [ %indvars.iv.next382.i.i, %bb.ar ] ; 4 uses
  %.0176310.i.i = phi i32 [ 0, %.lr.ph311.i.i ], [ %.1.fr.i.i, %bb.ar ] ; 7 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv381.i.i
  %i.pu = load ptr, ptr %gep.i.i, align 8, !tbaa !42
  %i.pv = icmp sgt i32 %.0176310.i.i, 0
  br i1 %i.pv, label %.lr.ph306.preheader.i.i, label %.loopexit286.i.i

.lr.ph306.preheader.i.i:                          ; preds = %bb.ap
  %wide.trip.count.i.i = zext nneg i32 %.0176310.i.i to i64
  br label %.lr.ph306.i.i

.lr.ph306.i.i:                                    ; preds = %bb.aq, %.lr.ph306.preheader.i.i
  %indvars.iv377.i.i = phi i64 [ 0, %.lr.ph306.preheader.i.i ], [ %indvars.iv.next378.i.i, %bb.aq ] ; 4 uses
  %i.pw = getelementptr inbounds nuw [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %indvars.iv377.i.i ; 2 uses
  %i.px = load i8, ptr %i.pw, align 16, !tbaa !97
  %i.py = sext i8 %i.px to i32
  %i.pz = add nsw i32 %i.pp, %i.py
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.qa
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !42
  br i1 %i.pt, label %.lr.ph360, label %Extra_TruthIsEqual.exit.i.i

select.unfold.i223.i.i:                           ; preds = %.lr.ph360
  %i.qd = trunc nuw i64 %i.qf to i32
  %i.qe = icmp sgt i32 %i.qd, 0
  br i1 %i.qe, label %.lr.ph360, label %Extra_TruthIsEqual.exit.i.i, !llvm.loop !98

.lr.ph360:                                        ; preds = %.lr.ph306.i.i, %select.unfold.i223.i.i
  %indvars.iv.i224.i.i359 = phi i64 [ %i.qf, %select.unfold.i223.i.i ], [ %i.pq, %.lr.ph306.i.i ]
  %i.qf = add nsw i64 %indvars.iv.i224.i.i359, -1 ; 4 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !43
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.qf
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !43
  %.not.i.i.i = icmp eq i32 %i.qh, %i.qj
  br i1 %.not.i.i.i, label %select.unfold.i223.i.i, label %bb.aq, !llvm.loop !98

Extra_TruthIsEqual.exit.i.i:                      ; preds = %.lr.ph306.i.i, %select.unfold.i223.i.i
  %i.qk = trunc nuw nsw i64 %indvars.iv377.i.i to i32
  %i.ql = trunc i64 %indvars.iv381.i.i to i8
  %i.qm = getelementptr inbounds nuw i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %indvars.iv377.i.i ; 2 uses
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !97  ; 2 uses
  %i.qo = add i8 %i.qn, 1
  store i8 %i.qo, ptr %i.qm, align 1, !tbaa !97
  %i.qp = sext i8 %i.qn to i64
  %i.qq = getelementptr inbounds i8, ptr %i.pw, i64 %i.qp
  store i8 %i.ql, ptr %i.qq, align 1, !tbaa !97
  br label %.loopexit286.i.i

bb.aq:                                            ; preds = %.lr.ph360
  %indvars.iv.next378.i.i = add nuw nsw i64 %indvars.iv377.i.i, 1 ; 2 uses
  %exitcond380.not.i.i = icmp eq i64 %indvars.iv.next378.i.i, %wide.trip.count.i.i
  br i1 %exitcond380.not.i.i, label %.loopexit286.thread.i.i, label %.lr.ph306.i.i, !llvm.loop !99

.loopexit286.i.i:                                 ; preds = %Extra_TruthIsEqual.exit.i.i, %bb.ap
  %.1183293.i.i = phi i32 [ %i.qk, %Extra_TruthIsEqual.exit.i.i ], [ 0, %bb.ap ]
  %.not201.i.i = icmp eq i32 %.1183293.i.i, %.0176310.i.i
  br i1 %.not201.i.i, label %.loopexit286.thread.i.i, label %bb.ar

.loopexit286.thread.i.i:                          ; preds = %bb.aq, %.loopexit286.i.i
  %i.qr = trunc i64 %indvars.iv381.i.i to i8
  %i.qs = sext i32 %.0176310.i.i to i64           ; 2 uses
  %i.qt = getelementptr inbounds [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %i.qs
  store i8 %i.qr, ptr %i.qt, align 16, !tbaa !97
  %i.qu = getelementptr inbounds i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %i.qs
  store i8 1, ptr %i.qu, align 1, !tbaa !97
  %i.qv = add nsw i32 %.0176310.i.i, 1
  %.not202.i.i = icmp slt i32 %.0176310.i.i, %i.pr
  br i1 %.not202.i.i, label %bb.ar, label %Abc_NodeDecomposeStep.exit.i

bb.ar:                                            ; preds = %.loopexit286.thread.i.i, %.loopexit286.i.i
  %.1.i.i = phi i32 [ %.0176310.i.i, %.loopexit286.i.i ], [ %i.qv, %.loopexit286.thread.i.i ]
  %.1.fr.i.i = freeze i32 %.1.i.i                 ; 6 uses
  %indvars.iv.next382.i.i = add nuw nsw i64 %indvars.iv381.i.i, 1 ; 2 uses
  %exitcond386.not.i.i = icmp eq i64 %indvars.iv.next382.i.i, %i.ps
  br i1 %exitcond386.not.i.i, label %._crit_edge.i.i, label %bb.ap, !llvm.loop !100

._crit_edge.i.i:                                  ; preds = %bb.ar
  %i.qw = icmp ult i32 %.1.fr.i.i, 2
  %i.qx = add i32 %.1.fr.i.i, -1
  %i.qy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qx, i1 true)
  %i.qz = sub nuw nsw i32 32, %i.qy
  %spec.select.i84.i = select i1 %i.qw, i32 %.1.fr.i.i, i32 %i.qz ; 2 uses
  br i1 %i.pn, label %select.unfold.preheader.i226.i.i, label %Extra_TruthClear.exit.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge302.i.i
  br i1 %i.pl, label %select.unfold.preheader.i226.i.i, label %.preheader.i.i

select.unfold.preheader.i226.i.i:                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %5 = phi i32 [ %spec.select.i84.i, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i.i ]
  %6 = phi i32 [ %i.pp, %._crit_edge.i.i ], [ -2147483648, %._crit_edge.thread.i.i ]
  %.0176.lcssa451.i.i309 = phi i32 [ %.1.fr.i.i, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i.i ]
  %spec.select.i.i.i303307 = phi i32 [ %spec.select.i.i.i300, %._crit_edge.i.i ], [ %spec.select.i.i.i301, %._crit_edge.thread.i.i ] ; 2 uses
  %i.ra = zext nneg i32 %spec.select.i.i.i303307 to i64
  %i.rb = shl nuw nsw i64 %i.ra, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gp, i8 0, i64 %i.rb, i1 false), !tbaa !43
  br label %Extra_TruthClear.exit.i.i

Extra_TruthClear.exit.i.i:                        ; preds = %._crit_edge.i.i, %select.unfold.preheader.i226.i.i
  %7 = phi i32 [ %spec.select.i84.i, %._crit_edge.i.i ], [ %5, %select.unfold.preheader.i226.i.i ] ; 6 uses
  %8 = phi i32 [ %i.pp, %._crit_edge.i.i ], [ %6, %select.unfold.preheader.i226.i.i ]
  %.0176.lcssa451.i.i308 = phi i32 [ %.1.fr.i.i, %._crit_edge.i.i ], [ %.0176.lcssa451.i.i309, %select.unfold.preheader.i226.i.i ] ; 3 uses
  %spec.select.i.i.i303306 = phi i32 [ %spec.select.i.i.i300, %._crit_edge.i.i ], [ %spec.select.i.i.i303307, %select.unfold.preheader.i226.i.i ] ; 8 uses
  %9 = phi i1 [ false, %._crit_edge.i.i ], [ true, %select.unfold.preheader.i226.i.i ] ; 2 uses
  %i.rc = icmp sgt i32 %.0176.lcssa451.i.i308, 0  ; 2 uses
  br i1 %i.rc, label %.lr.ph318.i.i.a, label %._crit_edge319.i.i

.lr.ph318.i.i.a:                                  ; preds = %Extra_TruthClear.exit.i.i
  %10 = zext i32 %spec.select.i.i.i303306 to i64  ; 15 uses
  %wide.trip.count396.i.i = zext nneg i32 %.0176.lcssa451.i.i308 to i64
  %wide.trip.count391.i.i = zext nneg i32 %7 to i64
  %11 = load ptr, ptr %i.ab, align 8, !tbaa !39
  br i1 %9, label %.lr.ph315.preheader.i.i.preheader, label %._crit_edge319.i.i

.lr.ph315.preheader.i.i.preheader:                ; preds = %.lr.ph318.i.i.a
  %.not572 = icmp eq i32 %spec.select.i.i.i303306, 0
  %12 = select i1 %.not572, i64 0, i64 4          ; 2 uses
  %scevgep446 = getelementptr i8, ptr %scevgep445, i64 %12
  %i.rd = shl nuw nsw i64 %10, 2                  ; 5 uses
  %scevgep447.a = getelementptr i8, ptr %i.gp, i64 %i.rd
  %.not573 = icmp eq i32 %spec.select.i.i.i303306, 0
  %13 = select i1 %.not573, i64 0, i64 4          ; 2 uses
  %.not574 = icmp eq i32 %spec.select.i.i.i303306, 0
  %14 = select i1 %.not574, i64 0, i64 4          ; 2 uses
  %15 = icmp ne i32 %spec.select.i.i.i303306, 0
  %.neg575 = sext i1 %15 to i64
  %16 = add nuw nsw i64 %10, 1
  %17 = add nsw i64 %16, %.neg575                 ; 5 uses
  %min.iters.check480 = icmp ult i64 %17, 8       ; 2 uses
  %n.vec505 = and i64 %17, -8                     ; 3 uses
  %18 = sub nsw i64 %10, %n.vec505
  %cmp.n514 = icmp eq i64 %17, %n.vec505
  %n.vec482 = and i64 %17, -8                     ; 3 uses
  %19 = sub nsw i64 %10, %n.vec482
  %cmp.n491 = icmp eq i64 %17, %n.vec482
  %20 = icmp ne i32 %spec.select.i.i.i303306, 0
  %.neg576 = sext i1 %20 to i64
  %21 = add nuw nsw i64 %10, 1
  %22 = add nsw i64 %21, %.neg576                 ; 3 uses
  %min.iters.check455 = icmp ult i64 %22, 8
  %n.vec457 = and i64 %22, -8                     ; 3 uses
  %23 = sub nsw i64 %10, %n.vec457
  %cmp.n466 = icmp eq i64 %22, %n.vec457
  br label %.lr.ph315.preheader.i.i

.lr.ph315.preheader.i.i:                          ; preds = %.lr.ph315.preheader.i.i.preheader, %Extra_TruthOr.exit.i.i.loopexit
  %indvars.iv393.i.i = phi i64 [ %indvars.iv.next394.i.i, %Extra_TruthOr.exit.i.i.loopexit ], [ 0, %.lr.ph315.preheader.i.i.preheader ] ; 3 uses
  %i.re = getelementptr inbounds nuw [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %indvars.iv393.i.i
  %i.rf = load i8, ptr %i.re, align 16, !tbaa !97
  %i.rg = sext i8 %i.rf to i32
  %i.rh = add nsw i32 %8, %i.rg
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.ri
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !42 ; 10 uses
  %i.rl = trunc nuw nsw i64 %indvars.iv393.i.i to i32
  %scevgep469 = getelementptr i8, ptr %i.rk, i64 -4 ; 2 uses
  %scevgep471 = getelementptr i8, ptr %scevgep469, i64 %13
  %scevgep472 = getelementptr i8, ptr %i.rk, i64 %i.rd ; 2 uses
  %scevgep495 = getelementptr i8, ptr %scevgep469, i64 %14
  br label %.lr.ph315.i.us.i

.lr.ph315.i.us.i:                                 ; preds = %.lr.ph315.preheader.i.i, %Extra_TruthAnd.exit.i.us.i
  %indvars.iv387.i.us.i = phi i64 [ %indvars.iv.next388.i.us.i, %Extra_TruthAnd.exit.i.us.i ], [ 0, %.lr.ph315.preheader.i.i ] ; 3 uses
  %i.rm = trunc nuw nsw i64 %indvars.iv387.i.us.i to i32
  %i.rn = shl nuw i32 1, %i.rm
  %i.ro = and i32 %i.rn, %i.rl
  %.not199.i.us.i = icmp eq i32 %i.ro, 0
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv387.i.us.i
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !43
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [8 x i8], ptr %11, i64 %i.rr
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !42 ; 8 uses
  br i1 %.not199.i.us.i, label %select.unfold.i234.i.us.i.preheader, label %select.unfold.i229.i.us.i.preheader

select.unfold.i229.i.us.i.preheader:              ; preds = %.lr.ph315.i.us.i
  br i1 %min.iters.check480, label %select.unfold.i229.i.us.i.preheader591, label %vector.memcheck493

vector.memcheck493:                               ; preds = %select.unfold.i229.i.us.i.preheader
  %scevgep496 = getelementptr i8, ptr %i.rt, i64 -4
  %scevgep497 = getelementptr i8, ptr %scevgep496, i64 %14
  %scevgep498 = getelementptr i8, ptr %i.rt, i64 %i.rd
  %bound0499 = icmp ult ptr %scevgep495, %scevgep498
  %bound1500 = icmp ult ptr %scevgep497, %scevgep472
  %found.conflict501 = and i1 %bound0499, %bound1500
  br i1 %found.conflict501, label %select.unfold.i229.i.us.i.preheader591, label %vector.body506

vector.body506:                                   ; preds = %vector.memcheck493, %vector.body506
  %index507 = phi i64 [ %index.next512, %vector.body506 ], [ 0, %vector.memcheck493 ] ; 2 uses
  %i.ru = xor i64 %index507, -1
  %i.rv = add i64 %i.ru, %10                      ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.rv ; 2 uses
  %i.rx = getelementptr inbounds i8, ptr %i.rw, i64 -12 ; 2 uses
  %i.ry = getelementptr inbounds i8, ptr %i.rw, i64 -28 ; 2 uses
  %wide.load508 = load <4 x i32>, ptr %i.rx, align 4, !tbaa !43, !alias.scope !101, !noalias !104
  %wide.load509 = load <4 x i32>, ptr %i.ry, align 4, !tbaa !43, !alias.scope !101, !noalias !104
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.rv ; 2 uses
  %i.sa = getelementptr inbounds i8, ptr %i.rz, i64 -12
  %i.sb = getelementptr inbounds i8, ptr %i.rz, i64 -28
  %wide.load510 = load <4 x i32>, ptr %i.sa, align 4, !tbaa !43, !alias.scope !104
  %wide.load511 = load <4 x i32>, ptr %i.sb, align 4, !tbaa !43, !alias.scope !104
  %i.sc = and <4 x i32> %wide.load510, %wide.load508
  %i.sd = and <4 x i32> %wide.load511, %wide.load509
  store <4 x i32> %i.sc, ptr %i.rx, align 4, !tbaa !43, !alias.scope !101, !noalias !104
  store <4 x i32> %i.sd, ptr %i.ry, align 4, !tbaa !43, !alias.scope !101, !noalias !104
  %index.next512 = add nuw i64 %index507, 8       ; 2 uses
  %i.se = icmp eq i64 %index.next512, %n.vec505
  br i1 %i.se, label %middle.block513, label %vector.body506, !llvm.loop !106

middle.block513:                                  ; preds = %vector.body506
  br i1 %cmp.n514, label %Extra_TruthAnd.exit.i.us.i, label %select.unfold.i229.i.us.i.preheader591

select.unfold.i229.i.us.i.preheader591:           ; preds = %vector.memcheck493, %select.unfold.i229.i.us.i.preheader, %middle.block513
  %indvars.iv.i230.i.us.i.ph = phi i64 [ %10, %vector.memcheck493 ], [ %10, %select.unfold.i229.i.us.i.preheader ], [ %18, %middle.block513 ]
  br label %select.unfold.i229.i.us.i

select.unfold.i234.i.us.i.preheader:              ; preds = %.lr.ph315.i.us.i
  br i1 %min.iters.check480, label %select.unfold.i234.i.us.i.preheader590, label %vector.memcheck468

vector.memcheck468:                               ; preds = %select.unfold.i234.i.us.i.preheader
  %scevgep473 = getelementptr i8, ptr %i.rt, i64 -4
  %scevgep474 = getelementptr i8, ptr %scevgep473, i64 %13
  %scevgep475 = getelementptr i8, ptr %i.rt, i64 %i.rd
  %bound0476 = icmp ult ptr %scevgep471, %scevgep475
  %bound1477 = icmp ult ptr %scevgep474, %scevgep472
  %found.conflict478 = and i1 %bound0476, %bound1477
  br i1 %found.conflict478, label %select.unfold.i234.i.us.i.preheader590, label %vector.body483

vector.body483:                                   ; preds = %vector.memcheck468, %vector.body483
  %index484 = phi i64 [ %index.next489, %vector.body483 ], [ 0, %vector.memcheck468 ] ; 2 uses
  %i.sf = xor i64 %index484, -1
  %i.sg = add i64 %i.sf, %10                      ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.sg ; 2 uses
  %i.si = getelementptr inbounds i8, ptr %i.sh, i64 -12 ; 2 uses
  %i.sj = getelementptr inbounds i8, ptr %i.sh, i64 -28 ; 2 uses
  %wide.load485 = load <4 x i32>, ptr %i.si, align 4, !tbaa !43, !alias.scope !107, !noalias !110
  %wide.load486 = load <4 x i32>, ptr %i.sj, align 4, !tbaa !43, !alias.scope !107, !noalias !110
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.sg ; 2 uses
  %i.sl = getelementptr inbounds i8, ptr %i.sk, i64 -12
  %i.sm = getelementptr inbounds i8, ptr %i.sk, i64 -28
  %wide.load487 = load <4 x i32>, ptr %i.sl, align 4, !tbaa !43, !alias.scope !110
  %wide.load488 = load <4 x i32>, ptr %i.sm, align 4, !tbaa !43, !alias.scope !110
  %i.sn = xor <4 x i32> %wide.load487, splat (i32 -1)
  %i.so = xor <4 x i32> %wide.load488, splat (i32 -1)
  %i.sp = and <4 x i32> %wide.load485, %i.sn
  %i.sq = and <4 x i32> %wide.load486, %i.so
  store <4 x i32> %i.sp, ptr %i.si, align 4, !tbaa !43, !alias.scope !107, !noalias !110
  store <4 x i32> %i.sq, ptr %i.sj, align 4, !tbaa !43, !alias.scope !107, !noalias !110
  %index.next489 = add nuw i64 %index484, 8       ; 2 uses
  %i.sr = icmp eq i64 %index.next489, %n.vec482
  br i1 %i.sr, label %middle.block490, label %vector.body483, !llvm.loop !112

middle.block490:                                  ; preds = %vector.body483
  br i1 %cmp.n491, label %Extra_TruthAnd.exit.i.us.i, label %select.unfold.i234.i.us.i.preheader590

select.unfold.i234.i.us.i.preheader590:           ; preds = %vector.memcheck468, %select.unfold.i234.i.us.i.preheader, %middle.block490
  %indvars.iv.i235.i.us.i.ph = phi i64 [ %10, %vector.memcheck468 ], [ %10, %select.unfold.i234.i.us.i.preheader ], [ %19, %middle.block490 ]
  br label %select.unfold.i234.i.us.i

select.unfold.i229.i.us.i:                        ; preds = %select.unfold.i229.i.us.i.preheader591, %select.unfold.i229.i.us.i
  %indvars.iv.i230.i.us.i = phi i64 [ %indvars.iv.next.i231.i.us.i, %select.unfold.i229.i.us.i ], [ %indvars.iv.i230.i.us.i.ph, %select.unfold.i229.i.us.i.preheader591 ] ; 2 uses
  %indvars.iv.next.i231.i.us.i = add nsw i64 %indvars.iv.i230.i.us.i, -1 ; 3 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv.next.i231.i.us.i ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !43
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv.next.i231.i.us.i
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !43
  %i.sw = and i32 %i.sv, %i.st
  store i32 %i.sw, ptr %i.ss, align 4, !tbaa !43
  %i.sx = icmp samesign ugt i64 %indvars.iv.i230.i.us.i, 1
  br i1 %i.sx, label %select.unfold.i229.i.us.i, label %Extra_TruthAnd.exit.i.us.i, !llvm.loop !113

select.unfold.i234.i.us.i:                        ; preds = %select.unfold.i234.i.us.i.preheader590, %select.unfold.i234.i.us.i
  %indvars.iv.i235.i.us.i = phi i64 [ %indvars.iv.next.i236.i.us.i, %select.unfold.i234.i.us.i ], [ %indvars.iv.i235.i.us.i.ph, %select.unfold.i234.i.us.i.preheader590 ] ; 2 uses
  %indvars.iv.next.i236.i.us.i = add nsw i64 %indvars.iv.i235.i.us.i, -1 ; 3 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv.next.i236.i.us.i ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !43
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv.next.i236.i.us.i
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !43
  %i.tc = xor i32 %i.tb, -1
  %i.td = and i32 %i.sz, %i.tc
  store i32 %i.td, ptr %i.sy, align 4, !tbaa !43
  %i.te = icmp samesign ugt i64 %indvars.iv.i235.i.us.i, 1
  br i1 %i.te, label %select.unfold.i234.i.us.i, label %Extra_TruthAnd.exit.i.us.i, !llvm.loop !114

Extra_TruthAnd.exit.i.us.i:                       ; preds = %select.unfold.i229.i.us.i, %select.unfold.i234.i.us.i, %middle.block513, %middle.block490
  %indvars.iv.next388.i.us.i = add nuw nsw i64 %indvars.iv387.i.us.i, 1 ; 2 uses
  %exitcond392.not.i.us.i = icmp eq i64 %indvars.iv.next388.i.us.i, %wide.trip.count391.i.i
  br i1 %exitcond392.not.i.us.i, label %select.unfold.i239.i.i.preheader, label %.lr.ph315.i.us.i, !llvm.loop !115

select.unfold.i239.i.i.preheader:                 ; preds = %Extra_TruthAnd.exit.i.us.i
  br i1 %min.iters.check455, label %select.unfold.i239.i.i.preheader597, label %vector.memcheck444

vector.memcheck444:                               ; preds = %select.unfold.i239.i.i.preheader
  %scevgep448 = getelementptr i8, ptr %i.rk, i64 -4
  %scevgep449 = getelementptr i8, ptr %scevgep448, i64 %12
  %scevgep450 = getelementptr i8, ptr %i.rk, i64 %i.rd
  %bound0451 = icmp ult ptr %scevgep446, %scevgep450
  %bound1452 = icmp ult ptr %scevgep449, %scevgep447.a
  %found.conflict453 = and i1 %bound0451, %bound1452
  br i1 %found.conflict453, label %select.unfold.i239.i.i.preheader597, label %vector.body458

vector.body458:                                   ; preds = %vector.memcheck444, %vector.body458
  %index459 = phi i64 [ %index.next464, %vector.body458 ], [ 0, %vector.memcheck444 ] ; 2 uses
  %i.tf = xor i64 %index459, -1
  %i.tg = add i64 %i.tf, %10                      ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds i8, ptr %i.th, i64 -12 ; 2 uses
  %i.tj = getelementptr inbounds i8, ptr %i.th, i64 -28 ; 2 uses
  %wide.load460.a = load <4 x i32>, ptr %i.ti, align 4, !tbaa !43, !alias.scope !116, !noalias !119
  %wide.load461 = load <4 x i32>, ptr %i.tj, align 4, !tbaa !43, !alias.scope !116, !noalias !119
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.tg ; 2 uses
  %i.tl = getelementptr inbounds i8, ptr %i.tk, i64 -12
  %i.tm = getelementptr inbounds i8, ptr %i.tk, i64 -28
  %wide.load462 = load <4 x i32>, ptr %i.tl, align 4, !tbaa !43, !alias.scope !119
  %wide.load463 = load <4 x i32>, ptr %i.tm, align 4, !tbaa !43, !alias.scope !119
  %i.tn = or <4 x i32> %wide.load462, %wide.load460.a
  %i.to = or <4 x i32> %wide.load463, %wide.load461
  store <4 x i32> %i.tn, ptr %i.ti, align 4, !tbaa !43, !alias.scope !116, !noalias !119
  store <4 x i32> %i.to, ptr %i.tj, align 4, !tbaa !43, !alias.scope !116, !noalias !119
  %index.next464 = add nuw i64 %index459, 8       ; 2 uses
  %i.tp = icmp eq i64 %index.next464, %n.vec457
  br i1 %i.tp, label %middle.block465, label %vector.body458, !llvm.loop !121

middle.block465:                                  ; preds = %vector.body458
  br i1 %cmp.n466, label %Extra_TruthOr.exit.i.i.loopexit, label %select.unfold.i239.i.i.preheader597

select.unfold.i239.i.i.preheader597:              ; preds = %vector.memcheck444, %select.unfold.i239.i.i.preheader, %middle.block465
  %indvars.iv.i240.i.i.ph = phi i64 [ %10, %vector.memcheck444 ], [ %10, %select.unfold.i239.i.i.preheader ], [ %23, %middle.block465 ]
  br label %select.unfold.i239.i.i

select.unfold.i239.i.i:                           ; preds = %select.unfold.i239.i.i.preheader597, %select.unfold.i239.i.i
  %indvars.iv.i240.i.i = phi i64 [ %indvars.iv.next.i241.i.i, %select.unfold.i239.i.i ], [ %indvars.iv.i240.i.i.ph, %select.unfold.i239.i.i.preheader597 ] ; 2 uses
  %indvars.iv.next.i241.i.i = add nsw i64 %indvars.iv.i240.i.i, -1 ; 3 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i241.i.i ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !43
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv.next.i241.i.i
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !43
  %i.tu = or i32 %i.tt, %i.tr
  store i32 %i.tu, ptr %i.tq, align 4, !tbaa !43
  %i.tv = icmp samesign ugt i64 %indvars.iv.i240.i.i, 1
  br i1 %i.tv, label %select.unfold.i239.i.i, label %Extra_TruthOr.exit.i.i.loopexit, !llvm.loop !122

Extra_TruthOr.exit.i.i.loopexit:                  ; preds = %select.unfold.i239.i.i, %middle.block465
  %indvars.iv.next394.i.i = add nuw nsw i64 %indvars.iv393.i.i, 1 ; 2 uses
  %exitcond397.not.i.i = icmp eq i64 %indvars.iv.next394.i.i, %wide.trip.count396.i.i
  br i1 %exitcond397.not.i.i, label %._crit_edge319.i.i, label %.lr.ph315.preheader.i.i, !llvm.loop !123

._crit_edge319.i.i:                               ; preds = %Extra_TruthOr.exit.i.i.loopexit, %.lr.ph318.i.i.a, %Extra_TruthClear.exit.i.i
  %i.tw = phi i1 [ false, %.lr.ph318.i.i.a ], [ %9, %Extra_TruthClear.exit.i.i ], [ true, %Extra_TruthOr.exit.i.i.loopexit ] ; 2 uses
  %i.tx = load ptr, ptr %i.kq, align 8, !tbaa !42 ; 25 uses
  %24 = icmp sgt i32 %7, 0
  br i1 %24, label %.lr.ph336.i.i, label %.preheader.i.i

.lr.ph336.i.i:                                    ; preds = %._crit_edge319.i.i
  %i.ty = getelementptr inbounds nuw i8, ptr %i.kw, i64 256
  %wide.trip.count417.i.i = zext nneg i32 %7 to i64 ; 3 uses
  %wide.trip.count409.i.i = zext nneg i32 %.0176.lcssa451.i.i308 to i64 ; 3 uses
  %i.tz = icmp slt i32 %.fr, 6
  %i.ua = add nsw i32 %.fr, -5
  %i.ub = shl nuw i32 1, %i.ua
  %.fr298 = freeze i32 %i.ub
  %spec.select.i242.i.i = select i1 %i.tz, i32 1, i32 %.fr298 ; 6 uses
  %i.uc = icmp sgt i32 %spec.select.i242.i.i, 0   ; 4 uses
  %i.ud = zext i32 %spec.select.i242.i.i to i64   ; 10 uses
  %i.ue = shl nuw nsw i64 %i.ud, 2                ; 11 uses
  %i.uf = icmp sgt i32 %.fr, 0                    ; 2 uses
  %i.ug = icmp sgt i32 %spec.select.i242.i.i, 0
  %i.uh = zext i32 %.fr to i64                    ; 2 uses
  %i.ui = zext nneg i32 %spec.select.i242.i.i to i64 ; 8 uses
  %scevgep = getelementptr i8, ptr %i.tx, i64 %i.ue
  %scevgep428 = getelementptr i8, ptr %i.tx, i64 4
  %min.iters.check395 = icmp ult i32 %spec.select.i242.i.i, 8 ; 2 uses
  %n.vec416 = and i64 %i.ud, 2147483640           ; 3 uses
  %i.uj = sub nsw i64 %i.ui, %n.vec416
  %cmp.n425 = icmp eq i64 %n.vec416, %i.ud
  %n.vec397 = and i64 %i.ud, 2147483640           ; 3 uses
  %i.uk = sub nsw i64 %i.ui, %n.vec397
  %cmp.n406 = icmp eq i64 %n.vec397, %i.ud
  %min.iters.check376 = icmp ult i32 %spec.select.i242.i.i, 8
  %n.vec378 = and i64 %i.ud, 2147483640           ; 2 uses
  %i.ul = and i64 %i.ud, 7
  %cmp.n387 = icmp eq i64 %n.vec378, %i.ud
  br label %bb.as

bb.as:                                            ; preds = %Abc_NodeGetLevel.exit.i.i, %.lr.ph336.i.i
  %indvars.iv414.i.i = phi i64 [ 0, %.lr.ph336.i.i ], [ %indvars.iv.next415.i.i, %Abc_NodeGetLevel.exit.i.i ] ; 3 uses
  br i1 %i.uc, label %select.unfold.preheader.i243.i.i, label %Extra_TruthClear.exit244.i.i

select.unfold.preheader.i243.i.i:                 ; preds = %bb.as
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.tx, i8 0, i64 %i.ue, i1 false), !tbaa !43
  br label %Extra_TruthClear.exit244.i.i

Extra_TruthClear.exit244.i.i:                     ; preds = %select.unfold.preheader.i243.i.i, %bb.as
  br i1 %i.rc, label %.lr.ph327.i.i, label %._crit_edge328.i.i

.lr.ph327.i.i:                                    ; preds = %Extra_TruthClear.exit244.i.i
  %i.um = trunc nuw nsw i64 %indvars.iv414.i.i to i32
  %i.un = shl nuw i32 1, %i.um                    ; 3 uses
  br i1 %i.uf, label %.lr.ph327.i.i.split.us, label %.lr.ph327.i.i.split

.lr.ph327.i.i.split.us:                           ; preds = %.lr.ph327.i.i, %.loopexit.i.i.us
  %indvars.iv406.i.i.us = phi i64 [ %indvars.iv.next407.i.i.us, %.loopexit.i.i.us ], [ 0, %.lr.ph327.i.i ] ; 4 uses
  %i.uo = trunc nuw nsw i64 %indvars.iv406.i.i.us to i32
  %i.up = and i32 %i.un, %i.uo
  %.not.i86.i.us = icmp eq i32 %i.up, 0
  br i1 %.not.i86.i.us, label %.loopexit.i.i.us, label %.preheader284.i.i.us

.preheader284.i.i.us:                             ; preds = %.lr.ph327.i.i.split.us
  %i.uq = getelementptr inbounds nuw i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %indvars.iv406.i.i.us
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !97  ; 2 uses
  %i.us = icmp sgt i8 %i.ur, 0
  br i1 %i.us, label %.lr.ph325.i.i.us, label %.loopexit.i.i.us

.lr.ph325.i.i.us:                                 ; preds = %.preheader284.i.i.us
  %wide.trip.count404.i.i.us = zext nneg i8 %i.ur to i64
  %i.ut = load ptr, ptr %4, align 8, !tbaa !42    ; 11 uses
  %i.uu = getelementptr inbounds nuw [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %indvars.iv406.i.i.us
  %i.uv = load ptr, ptr %i.ab, align 8, !tbaa !39
  br i1 %i.ug, label %.lr.ph325.i.i.split.us.us.split.us.preheader, label %.loopexit.i.i.us

.lr.ph325.i.i.split.us.us.split.us.preheader:     ; preds = %.lr.ph325.i.i.us
  %scevgep374 = getelementptr i8, ptr %i.ut, i64 %i.ue ; 3 uses
  %bound0 = icmp ult ptr %i.tx, %scevgep374
  %bound1 = icmp ult ptr %i.ut, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph325.i.i.split.us.us.split.us

.loopexit.i.i.us:                                 ; preds = %Extra_TruthOr.exit264.i.i.us.us.us, %.lr.ph325.i.i.us, %.preheader284.i.i.us, %.lr.ph327.i.i.split.us
  %indvars.iv.next407.i.i.us = add nuw nsw i64 %indvars.iv406.i.i.us, 1 ; 2 uses
  %exitcond410.not.i.i.us = icmp eq i64 %indvars.iv.next407.i.i.us, %wide.trip.count409.i.i
  br i1 %exitcond410.not.i.i.us, label %._crit_edge328.i.i, label %.lr.ph327.i.i.split.us, !llvm.loop !124

.lr.ph325.i.i.split.us.us.split.us:               ; preds = %.lr.ph325.i.i.split.us.us.split.us.preheader, %Extra_TruthOr.exit264.i.i.us.us.us
  %indvars.iv401.i.i.us.us.us = phi i64 [ %indvars.iv.next402.i.i.us.us.us, %Extra_TruthOr.exit264.i.i.us.us.us ], [ 0, %.lr.ph325.i.i.split.us.us.split.us.preheader ] ; 2 uses
  br i1 %i.uc, label %select.unfold.preheader.i246.i.i.us.us.us, label %Extra_TruthFill.exit.i.i.us.us.us

select.unfold.preheader.i246.i.i.us.us.us:        ; preds = %.lr.ph325.i.i.split.us.us.split.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ut, i8 -1, i64 %i.ue, i1 false), !tbaa !43
  br label %Extra_TruthFill.exit.i.i.us.us.us

Extra_TruthFill.exit.i.i.us.us.us:                ; preds = %select.unfold.preheader.i246.i.i.us.us.us, %.lr.ph325.i.i.split.us.us.split.us
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 %indvars.iv401.i.i.us.us.us
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !97
  %i.uy = sext i8 %i.ux to i32
  br label %bb.at

select.unfold.i261.i.i.us.us.us:                  ; preds = %select.unfold.i261.i.i.us.us.us.preheader589, %select.unfold.i261.i.i.us.us.us
  %indvars.iv.i262.i.i.us.us.us = phi i64 [ %indvars.iv.next.i263.i.i.us.us.us, %select.unfold.i261.i.i.us.us.us ], [ %indvars.iv.i262.i.i.us.us.us.ph, %select.unfold.i261.i.i.us.us.us.preheader589 ] ; 2 uses
  %indvars.iv.next.i263.i.i.us.us.us = add nsw i64 %indvars.iv.i262.i.i.us.us.us, -1 ; 3 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv.next.i263.i.i.us.us.us ; 2 uses
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !43
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %indvars.iv.next.i263.i.i.us.us.us
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !43
  %i.vd = or i32 %i.vc, %i.va
  store i32 %i.vd, ptr %i.uz, align 4, !tbaa !43
  %i.ve = icmp samesign ugt i64 %indvars.iv.i262.i.i.us.us.us, 1
  br i1 %i.ve, label %select.unfold.i261.i.i.us.us.us, label %Extra_TruthOr.exit264.i.i.us.us.us, !llvm.loop !125

Extra_TruthOr.exit264.i.i.us.us.us:               ; preds = %select.unfold.i261.i.i.us.us.us, %middle.block386, %._crit_edge322.i.i.split.us.us.us.us
  %indvars.iv.next402.i.i.us.us.us = add nuw nsw i64 %indvars.iv401.i.i.us.us.us, 1 ; 2 uses
  %exitcond405.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next402.i.i.us.us.us, %wide.trip.count404.i.i.us
  br i1 %exitcond405.not.i.i.us.us.us, label %.loopexit.i.i.us, label %.lr.ph325.i.i.split.us.us.split.us, !llvm.loop !126

bb.at:                                            ; preds = %Extra_TruthAnd.exit252.i.i.us.us.us.us, %Extra_TruthFill.exit.i.i.us.us.us
  %indvars.iv398.i.i.us.us.us.us = phi i64 [ 0, %Extra_TruthFill.exit.i.i.us.us.us ], [ %indvars.iv.next399.i.i.us.us.us.us, %Extra_TruthAnd.exit252.i.i.us.us.us.us ] ; 3 uses
  %i.vf = trunc nuw nsw i64 %indvars.iv398.i.i.us.us.us.us to i32
  %i.vg = xor i32 %i.vf, -1
  %i.vh = add i32 %.fr, %i.vg
  %i.vi = shl nuw i32 1, %i.vh
  %i.vj = and i32 %i.vi, %i.uy
  %.not198.i.i.us.us.us.us = icmp eq i32 %i.vj, 0
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %indvars.iv398.i.i.us.us.us.us
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !42 ; 8 uses
  br i1 %.not198.i.i.us.us.us.us, label %select.unfold.i255.i.i.us.us.us.us.preheader, label %select.unfold.i249.i.i.us.us.us.us.preheader

select.unfold.i249.i.i.us.us.us.us.preheader:     ; preds = %bb.at
  br i1 %min.iters.check395, label %select.unfold.i249.i.i.us.us.us.us.preheader587, label %vector.memcheck408

vector.memcheck408:                               ; preds = %select.unfold.i249.i.i.us.us.us.us.preheader
  %scevgep409 = getelementptr i8, ptr %i.vl, i64 %i.ue
  %bound0410 = icmp ult ptr %i.ut, %scevgep409
  %bound1411 = icmp ult ptr %i.vl, %scevgep374
  %found.conflict412 = and i1 %bound0410, %bound1411
  br i1 %found.conflict412, label %select.unfold.i249.i.i.us.us.us.us.preheader587, label %vector.body417

vector.body417:                                   ; preds = %vector.memcheck408, %vector.body417
  %index418 = phi i64 [ %index.next423, %vector.body417 ], [ 0, %vector.memcheck408 ] ; 2 uses
  %i.vm = xor i64 %index418, -1
  %i.vn = add i64 %i.vm, %i.ui                    ; 2 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.vn ; 2 uses
  %i.vp = getelementptr inbounds i8, ptr %i.vo, i64 -12 ; 2 uses
  %i.vq = getelementptr inbounds i8, ptr %i.vo, i64 -28 ; 2 uses
  %wide.load419.a = load <4 x i32>, ptr %i.vp, align 4, !tbaa !43, !alias.scope !127, !noalias !130
  %wide.load420 = load <4 x i32>, ptr %i.vq, align 4, !tbaa !43, !alias.scope !127, !noalias !130
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.vn ; 2 uses
  %i.vs = getelementptr inbounds i8, ptr %i.vr, i64 -12
  %i.vt = getelementptr inbounds i8, ptr %i.vr, i64 -28
  %wide.load421 = load <4 x i32>, ptr %i.vs, align 4, !tbaa !43, !alias.scope !130
  %wide.load422 = load <4 x i32>, ptr %i.vt, align 4, !tbaa !43, !alias.scope !130
  %i.vu = and <4 x i32> %wide.load421, %wide.load419.a
  %i.vv = and <4 x i32> %wide.load422, %wide.load420
  store <4 x i32> %i.vu, ptr %i.vp, align 4, !tbaa !43, !alias.scope !127, !noalias !130
  store <4 x i32> %i.vv, ptr %i.vq, align 4, !tbaa !43, !alias.scope !127, !noalias !130
  %index.next423 = add nuw i64 %index418, 8       ; 2 uses
  %i.vw = icmp eq i64 %index.next423, %n.vec416
  br i1 %i.vw, label %middle.block424, label %vector.body417, !llvm.loop !132

middle.block424:                                  ; preds = %vector.body417
  br i1 %cmp.n425, label %Extra_TruthAnd.exit252.i.i.us.us.us.us, label %select.unfold.i249.i.i.us.us.us.us.preheader587

select.unfold.i249.i.i.us.us.us.us.preheader587:  ; preds = %vector.memcheck408, %select.unfold.i249.i.i.us.us.us.us.preheader, %middle.block424
  %indvars.iv.i250.i.i.us.us.us.us.ph = phi i64 [ %i.ui, %vector.memcheck408 ], [ %i.ui, %select.unfold.i249.i.i.us.us.us.us.preheader ], [ %i.uj, %middle.block424 ]
  br label %select.unfold.i249.i.i.us.us.us.us

select.unfold.i255.i.i.us.us.us.us.preheader:     ; preds = %bb.at
  br i1 %min.iters.check395, label %select.unfold.i255.i.i.us.us.us.us.preheader586, label %vector.memcheck389

vector.memcheck389:                               ; preds = %select.unfold.i255.i.i.us.us.us.us.preheader
  %scevgep390 = getelementptr i8, ptr %i.vl, i64 %i.ue
  %bound0391 = icmp ult ptr %i.ut, %scevgep390
  %bound1392 = icmp ult ptr %i.vl, %scevgep374
  %found.conflict393 = and i1 %bound0391, %bound1392
  br i1 %found.conflict393, label %select.unfold.i255.i.i.us.us.us.us.preheader586, label %vector.body398

vector.body398:                                   ; preds = %vector.memcheck389, %vector.body398
  %index399 = phi i64 [ %index.next404, %vector.body398 ], [ 0, %vector.memcheck389 ] ; 2 uses
  %i.vx = xor i64 %index399, -1
  %i.vy = add i64 %i.vx, %i.ui                    ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.vy ; 2 uses
  %i.wa = getelementptr inbounds i8, ptr %i.vz, i64 -12 ; 2 uses
  %i.wb = getelementptr inbounds i8, ptr %i.vz, i64 -28 ; 2 uses
  %wide.load400.a = load <4 x i32>, ptr %i.wa, align 4, !tbaa !43, !alias.scope !133, !noalias !136
  %wide.load401 = load <4 x i32>, ptr %i.wb, align 4, !tbaa !43, !alias.scope !133, !noalias !136
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.vy ; 2 uses
  %i.wd = getelementptr inbounds i8, ptr %i.wc, i64 -12
  %i.we = getelementptr inbounds i8, ptr %i.wc, i64 -28
  %wide.load402 = load <4 x i32>, ptr %i.wd, align 4, !tbaa !43, !alias.scope !136
  %wide.load403 = load <4 x i32>, ptr %i.we, align 4, !tbaa !43, !alias.scope !136
  %i.wf = xor <4 x i32> %wide.load402, splat (i32 -1)
  %i.wg = xor <4 x i32> %wide.load403, splat (i32 -1)
  %i.wh = and <4 x i32> %wide.load400.a, %i.wf
  %i.wi = and <4 x i32> %wide.load401, %i.wg
  store <4 x i32> %i.wh, ptr %i.wa, align 4, !tbaa !43, !alias.scope !133, !noalias !136
  store <4 x i32> %i.wi, ptr %i.wb, align 4, !tbaa !43, !alias.scope !133, !noalias !136
  %index.next404 = add nuw i64 %index399, 8       ; 2 uses
  %i.wj = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.wj, label %middle.block405, label %vector.body398, !llvm.loop !138

middle.block405:                                  ; preds = %vector.body398
  br i1 %cmp.n406, label %Extra_TruthAnd.exit252.i.i.us.us.us.us, label %select.unfold.i255.i.i.us.us.us.us.preheader586

select.unfold.i255.i.i.us.us.us.us.preheader586:  ; preds = %vector.memcheck389, %select.unfold.i255.i.i.us.us.us.us.preheader, %middle.block405
  %indvars.iv.i256.i.i.us.us.us.us.ph = phi i64 [ %i.ui, %vector.memcheck389 ], [ %i.ui, %select.unfold.i255.i.i.us.us.us.us.preheader ], [ %i.uk, %middle.block405 ]
  br label %select.unfold.i255.i.i.us.us.us.us

select.unfold.i249.i.i.us.us.us.us:               ; preds = %select.unfold.i249.i.i.us.us.us.us.preheader587, %select.unfold.i249.i.i.us.us.us.us
  %indvars.iv.i250.i.i.us.us.us.us = phi i64 [ %indvars.iv.next.i251.i.i.us.us.us.us, %select.unfold.i249.i.i.us.us.us.us ], [ %indvars.iv.i250.i.i.us.us.us.us.ph, %select.unfold.i249.i.i.us.us.us.us.preheader587 ] ; 2 uses
  %indvars.iv.next.i251.i.i.us.us.us.us = add nsw i64 %indvars.iv.i250.i.i.us.us.us.us, -1 ; 3 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %indvars.iv.next.i251.i.i.us.us.us.us ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !43
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv.next.i251.i.i.us.us.us.us
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !43
  %i.wo = and i32 %i.wn, %i.wl
  store i32 %i.wo, ptr %i.wk, align 4, !tbaa !43
  %i.wp = icmp samesign ugt i64 %indvars.iv.i250.i.i.us.us.us.us, 1
  br i1 %i.wp, label %select.unfold.i249.i.i.us.us.us.us, label %Extra_TruthAnd.exit252.i.i.us.us.us.us, !llvm.loop !139

select.unfold.i255.i.i.us.us.us.us:               ; preds = %select.unfold.i255.i.i.us.us.us.us.preheader586, %select.unfold.i255.i.i.us.us.us.us
  %indvars.iv.i256.i.i.us.us.us.us = phi i64 [ %indvars.iv.next.i257.i.i.us.us.us.us, %select.unfold.i255.i.i.us.us.us.us ], [ %indvars.iv.i256.i.i.us.us.us.us.ph, %select.unfold.i255.i.i.us.us.us.us.preheader586 ] ; 2 uses
  %indvars.iv.next.i257.i.i.us.us.us.us = add nsw i64 %indvars.iv.i256.i.i.us.us.us.us, -1 ; 3 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %indvars.iv.next.i257.i.i.us.us.us.us ; 2 uses
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !43
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv.next.i257.i.i.us.us.us.us
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !43
  %i.wu = xor i32 %i.wt, -1
  %i.wv = and i32 %i.wr, %i.wu
  store i32 %i.wv, ptr %i.wq, align 4, !tbaa !43
  %i.ww = icmp samesign ugt i64 %indvars.iv.i256.i.i.us.us.us.us, 1
  br i1 %i.ww, label %select.unfold.i255.i.i.us.us.us.us, label %Extra_TruthAnd.exit252.i.i.us.us.us.us, !llvm.loop !140

Extra_TruthAnd.exit252.i.i.us.us.us.us:           ; preds = %select.unfold.i249.i.i.us.us.us.us, %select.unfold.i255.i.i.us.us.us.us, %middle.block424, %middle.block405
  %indvars.iv.next399.i.i.us.us.us.us = add nuw nsw i64 %indvars.iv398.i.i.us.us.us.us, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next399.i.i.us.us.us.us, %i.uh
  br i1 %exitcond240.not, label %._crit_edge322.i.i.split.us.us.us.us, label %bb.at, !llvm.loop !141

._crit_edge322.i.i.split.us.us.us.us:             ; preds = %Extra_TruthAnd.exit252.i.i.us.us.us.us
  br i1 %i.uc, label %select.unfold.i261.i.i.us.us.us.preheader, label %Extra_TruthOr.exit264.i.i.us.us.us

select.unfold.i261.i.i.us.us.us.preheader:        ; preds = %._crit_edge322.i.i.split.us.us.us.us
  %brmerge = select i1 %min.iters.check376, i1 true, i1 %found.conflict
  br i1 %brmerge, label %select.unfold.i261.i.i.us.us.us.preheader589, label %vector.body379

vector.body379:                                   ; preds = %select.unfold.i261.i.i.us.us.us.preheader, %vector.body379
  %index380 = phi i64 [ %index.next385, %vector.body379 ], [ 0, %select.unfold.i261.i.i.us.us.us.preheader ] ; 2 uses
  %i.wx = xor i64 %index380, -1
  %i.wy = add i64 %i.wx, %i.ud                    ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.wy ; 2 uses
  %i.xa = getelementptr inbounds i8, ptr %i.wz, i64 -12 ; 2 uses
  %i.xb = getelementptr inbounds i8, ptr %i.wz, i64 -28 ; 2 uses
  %wide.load381.a = load <4 x i32>, ptr %i.xa, align 4, !tbaa !43, !alias.scope !142, !noalias !145
  %wide.load382 = load <4 x i32>, ptr %i.xb, align 4, !tbaa !43, !alias.scope !142, !noalias !145
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.wy ; 2 uses
  %i.xd = getelementptr inbounds i8, ptr %i.xc, i64 -12
  %i.xe = getelementptr inbounds i8, ptr %i.xc, i64 -28
  %wide.load383 = load <4 x i32>, ptr %i.xd, align 4, !tbaa !43, !alias.scope !145
  %wide.load384 = load <4 x i32>, ptr %i.xe, align 4, !tbaa !43, !alias.scope !145
  %i.xf = or <4 x i32> %wide.load383, %wide.load381.a
  %i.xg = or <4 x i32> %wide.load384, %wide.load382
  store <4 x i32> %i.xf, ptr %i.xa, align 4, !tbaa !43, !alias.scope !142, !noalias !145
  store <4 x i32> %i.xg, ptr %i.xb, align 4, !tbaa !43, !alias.scope !142, !noalias !145
  %index.next385 = add nuw i64 %index380, 8       ; 2 uses
  %i.xh = icmp eq i64 %index.next385, %n.vec378
  br i1 %i.xh, label %middle.block386, label %vector.body379, !llvm.loop !147

middle.block386:                                  ; preds = %vector.body379
  br i1 %cmp.n387, label %Extra_TruthOr.exit264.i.i.us.us.us, label %select.unfold.i261.i.i.us.us.us.preheader589

select.unfold.i261.i.i.us.us.us.preheader589:     ; preds = %select.unfold.i261.i.i.us.us.us.preheader, %middle.block386
  %indvars.iv.i262.i.i.us.us.us.ph = phi i64 [ %i.ul, %middle.block386 ], [ %i.ud, %select.unfold.i261.i.i.us.us.us.preheader ]
  br label %select.unfold.i261.i.i.us.us.us

.lr.ph327.i.i.split:                              ; preds = %.lr.ph327.i.i
  br i1 %i.uc, label %.lr.ph327.i.i.split.split.us, label %.lr.ph327.i.i.split.split

.lr.ph327.i.i.split.split.us:                     ; preds = %.lr.ph327.i.i.split, %.loopexit.i.i.us189
  %indvars.iv406.i.i.us184 = phi i64 [ %indvars.iv.next407.i.i.us190, %.loopexit.i.i.us189 ], [ 0, %.lr.ph327.i.i.split ] ; 3 uses
  %i.xi = trunc nuw nsw i64 %indvars.iv406.i.i.us184 to i32
  %i.xj = and i32 %i.un, %i.xi
  %.not.i86.i.us185 = icmp eq i32 %i.xj, 0
  br i1 %.not.i86.i.us185, label %.loopexit.i.i.us189, label %.preheader284.i.i.us186

.preheader284.i.i.us186:                          ; preds = %.lr.ph327.i.i.split.split.us
  %i.xk = getelementptr inbounds nuw i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %indvars.iv406.i.i.us184
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !97  ; 3 uses
  %i.xm = icmp sgt i8 %i.xl, 0
  br i1 %i.xm, label %.lr.ph325.i.i.us187, label %.loopexit.i.i.us189

.lr.ph325.i.i.us187:                              ; preds = %.preheader284.i.i.us186
  %wide.trip.count404.i.i.us188 = zext nneg i8 %i.xl to i64 ; 2 uses
  %i.xn = load ptr, ptr %4, align 8, !tbaa !42    ; 10 uses
  %xtraiter646 = and i64 %wide.trip.count404.i.i.us188, 3 ; 3 uses
  %i.xo = icmp ult i8 %i.xl, 4
  br i1 %i.xo, label %select.unfold.preheader.i246.i.i.us175.us.epil.preheader, label %.lr.ph325.i.i.us187.new

.lr.ph325.i.i.us187.new:                          ; preds = %.lr.ph325.i.i.us187
  %unroll_iter649 = and i64 %wide.trip.count404.i.i.us188, 124
  br label %select.unfold.preheader.i246.i.i.us175.us

.loopexit.i.i.us189.loopexit.unr-lcssa:           ; preds = %select.unfold.preheader.i246.i.i.us175.us
  %lcmp.mod647.not = icmp eq i64 %xtraiter646, 0
  br i1 %lcmp.mod647.not, label %.loopexit.i.i.us189, label %select.unfold.preheader.i246.i.i.us175.us.epil.preheader

select.unfold.preheader.i246.i.i.us175.us.epil.preheader: ; preds = %.loopexit.i.i.us189.loopexit.unr-lcssa, %.lr.ph325.i.i.us187
  %lcmp.mod648 = icmp ne i64 %xtraiter646, 0
  tail call void @llvm.assume(i1 %lcmp.mod648)
  br label %select.unfold.preheader.i246.i.i.us175.us.epil

select.unfold.preheader.i246.i.i.us175.us.epil:   ; preds = %select.unfold.preheader.i246.i.i.us175.us.epil, %select.unfold.preheader.i246.i.i.us175.us.epil.preheader
  %epil.iter = phi i64 [ 0, %select.unfold.preheader.i246.i.i.us175.us.epil.preheader ], [ %epil.iter.next, %select.unfold.preheader.i246.i.i.us175.us.epil ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.xn, i8 -1, i64 %i.ue, i1 false), !tbaa !43
  %i.xp = load i32, ptr %i.tx, align 4, !tbaa !43
  %i.xq = load i32, ptr %i.xn, align 4, !tbaa !43
  %i.xr = or i32 %i.xq, %i.xp
  store i32 %i.xr, ptr %i.tx, align 4, !tbaa !43
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter646
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.us189, label %select.unfold.preheader.i246.i.i.us175.us.epil, !llvm.loop !148

.loopexit.i.i.us189:                              ; preds = %.loopexit.i.i.us189.loopexit.unr-lcssa, %select.unfold.preheader.i246.i.i.us175.us.epil, %.preheader284.i.i.us186, %.lr.ph327.i.i.split.split.us
  %indvars.iv.next407.i.i.us190 = add nuw nsw i64 %indvars.iv406.i.i.us184, 1 ; 2 uses
  %exitcond410.not.i.i.us191 = icmp eq i64 %indvars.iv.next407.i.i.us190, %wide.trip.count409.i.i
  br i1 %exitcond410.not.i.i.us191, label %._crit_edge328.i.i, label %.lr.ph327.i.i.split.split.us, !llvm.loop !124

select.unfold.preheader.i246.i.i.us175.us:        ; preds = %select.unfold.preheader.i246.i.i.us175.us, %.lr.ph325.i.i.us187.new
  %niter650 = phi i64 [ 0, %.lr.ph325.i.i.us187.new ], [ %niter650.next.3, %select.unfold.preheader.i246.i.i.us175.us ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.xn, i8 -1, i64 %i.ue, i1 false), !tbaa !43
  %i.xs = load i32, ptr %i.tx, align 4, !tbaa !43
  %i.xt = load i32, ptr %i.xn, align 4, !tbaa !43
  %i.xu = or i32 %i.xt, %i.xs
  store i32 %i.xu, ptr %i.tx, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.xn, i8 -1, i64 %i.ue, i1 false), !tbaa !43
  %i.xv = load i32, ptr %i.tx, align 4, !tbaa !43
  %i.xw = load i32, ptr %i.xn, align 4, !tbaa !43
  %i.xx = or i32 %i.xw, %i.xv
  store i32 %i.xx, ptr %i.tx, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.xn, i8 -1, i64 %i.ue, i1 false), !tbaa !43
  %i.xy = load i32, ptr %i.tx, align 4, !tbaa !43
  %i.xz = load i32, ptr %i.xn, align 4, !tbaa !43
  %i.ya = or i32 %i.xz, %i.xy
  store i32 %i.ya, ptr %i.tx, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.xn, i8 -1, i64 %i.ue, i1 false), !tbaa !43
  %i.yb = load i32, ptr %i.tx, align 4, !tbaa !43
  %i.yc = load i32, ptr %i.xn, align 4, !tbaa !43
  %i.yd = or i32 %i.yc, %i.yb
  store i32 %i.yd, ptr %i.tx, align 4, !tbaa !43
  %niter650.next.3 = add i64 %niter650, 4         ; 2 uses
  %niter650.ncmp.3 = icmp eq i64 %niter650.next.3, %unroll_iter649
  br i1 %niter650.ncmp.3, label %.loopexit.i.i.us189.loopexit.unr-lcssa, label %select.unfold.preheader.i246.i.i.us175.us, !llvm.loop !126

.lr.ph327.i.i.split.split:                        ; preds = %.lr.ph327.i.i.split, %.loopexit.i.i
  %indvars.iv406.i.i = phi i64 [ %indvars.iv.next407.i.i, %.loopexit.i.i ], [ 0, %.lr.ph327.i.i.split ] ; 3 uses
  %i.ye = trunc nuw nsw i64 %indvars.iv406.i.i to i32
  %i.yf = and i32 %i.un, %i.ye
  %.not.i86.i = icmp eq i32 %i.yf, 0
  br i1 %.not.i86.i, label %.loopexit.i.i, label %.preheader284.i.i

.preheader284.i.i:                                ; preds = %.lr.ph327.i.i.split.split
  %i.yg = getelementptr inbounds nuw i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %indvars.iv406.i.i
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !97  ; 3 uses
  %i.yi = icmp sgt i8 %i.yh, 0
  br i1 %i.yi, label %.lr.ph325.i.i, label %.loopexit.i.i

.lr.ph325.i.i:                                    ; preds = %.preheader284.i.i
  %wide.trip.count404.i.i = zext nneg i8 %i.yh to i64 ; 5 uses
  %i.yj = load ptr, ptr %4, align 8, !tbaa !42    ; 8 uses
  %.pre = load i32, ptr %i.tx, align 4, !tbaa !43 ; 3 uses
  %min.iters.check434 = icmp ult i8 %i.yh, 8
  br i1 %min.iters.check434, label %Extra_TruthFill.exit.i.i.preheader, label %vector.memcheck427

vector.memcheck427:                               ; preds = %.lr.ph325.i.i
  %scevgep429 = getelementptr i8, ptr %i.yj, i64 4
  %bound0430 = icmp ult ptr %i.tx, %scevgep429
  %bound1431 = icmp ult ptr %i.yj, %scevgep428
  %found.conflict432 = and i1 %bound0430, %bound1431
  br i1 %found.conflict432, label %Extra_TruthFill.exit.i.i.preheader, label %vector.ph435

vector.ph435:                                     ; preds = %vector.memcheck427
  %n.vec436 = and i64 %wide.trip.count404.i.i, 120 ; 3 uses
  %i.yk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.yl = load i32, ptr %i.yj, align 4, !tbaa !43, !alias.scope !149
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.yl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ym = or <4 x i32> %broadcast.splat, %i.yk
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph435
  %index438 = phi i64 [ 0, %vector.ph435 ], [ %index.next440, %vector.body437 ]
  %index.next440 = add nuw i64 %index438, 8       ; 2 uses
  %i.yn = icmp eq i64 %index.next440, %n.vec436
  br i1 %i.yn, label %middle.block441, label %vector.body437, !llvm.loop !152

middle.block441:                                  ; preds = %vector.body437
  %i.yo = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ym) ; 2 uses
  store i32 %i.yo, ptr %i.tx, align 4, !tbaa !43, !alias.scope !153, !noalias !149
  %cmp.n442 = icmp eq i64 %n.vec436, %wide.trip.count404.i.i
  br i1 %cmp.n442, label %.loopexit.i.i, label %Extra_TruthFill.exit.i.i.preheader

Extra_TruthFill.exit.i.i.preheader:               ; preds = %vector.memcheck427, %.lr.ph325.i.i, %middle.block441
  %.ph = phi i32 [ %.pre, %vector.memcheck427 ], [ %.pre, %.lr.ph325.i.i ], [ %i.yo, %middle.block441 ] ; 2 uses
  %indvars.iv401.i.i.ph = phi i64 [ 0, %vector.memcheck427 ], [ 0, %.lr.ph325.i.i ], [ %n.vec436, %middle.block441 ] ; 3 uses
  %xtraiter643 = and i64 %wide.trip.count404.i.i, 3 ; 2 uses
  %lcmp.mod644.not = icmp eq i64 %xtraiter643, 0
  br i1 %lcmp.mod644.not, label %Extra_TruthFill.exit.i.i.prol.loopexit, label %Extra_TruthFill.exit.i.i.prol

Extra_TruthFill.exit.i.i.prol:                    ; preds = %Extra_TruthFill.exit.i.i.preheader, %Extra_TruthFill.exit.i.i.prol
  %i.yp = phi i32 [ %i.yr, %Extra_TruthFill.exit.i.i.prol ], [ %.ph, %Extra_TruthFill.exit.i.i.preheader ]
  %indvars.iv401.i.i.prol = phi i64 [ %indvars.iv.next402.i.i.prol, %Extra_TruthFill.exit.i.i.prol ], [ %indvars.iv401.i.i.ph, %Extra_TruthFill.exit.i.i.preheader ]
  %prol.iter645 = phi i64 [ %prol.iter645.next, %Extra_TruthFill.exit.i.i.prol ], [ 0, %Extra_TruthFill.exit.i.i.preheader ]
  %i.yq = load i32, ptr %i.yj, align 4, !tbaa !43
  %i.yr = or i32 %i.yq, %i.yp                     ; 3 uses
  store i32 %i.yr, ptr %i.tx, align 4, !tbaa !43
  %indvars.iv.next402.i.i.prol = add nuw nsw i64 %indvars.iv401.i.i.prol, 1 ; 2 uses
  %prol.iter645.next = add i64 %prol.iter645, 1   ; 2 uses
  %prol.iter645.cmp.not = icmp eq i64 %prol.iter645.next, %xtraiter643
  br i1 %prol.iter645.cmp.not, label %Extra_TruthFill.exit.i.i.prol.loopexit, label %Extra_TruthFill.exit.i.i.prol, !llvm.loop !155

Extra_TruthFill.exit.i.i.prol.loopexit:           ; preds = %Extra_TruthFill.exit.i.i.prol, %Extra_TruthFill.exit.i.i.preheader
  %.unr = phi i32 [ %.ph, %Extra_TruthFill.exit.i.i.preheader ], [ %i.yr, %Extra_TruthFill.exit.i.i.prol ]
  %indvars.iv401.i.i.unr = phi i64 [ %indvars.iv401.i.i.ph, %Extra_TruthFill.exit.i.i.preheader ], [ %indvars.iv.next402.i.i.prol, %Extra_TruthFill.exit.i.i.prol ]
  %i.ys = sub nsw i64 %indvars.iv401.i.i.ph, %wide.trip.count404.i.i
  %i.yt = icmp ugt i64 %i.ys, -4
  br i1 %i.yt, label %.loopexit.i.i, label %Extra_TruthFill.exit.i.i

Extra_TruthFill.exit.i.i:                         ; preds = %Extra_TruthFill.exit.i.i.prol.loopexit, %Extra_TruthFill.exit.i.i
  %i.yu = phi i32 [ %i.zc, %Extra_TruthFill.exit.i.i ], [ %.unr, %Extra_TruthFill.exit.i.i.prol.loopexit ]
  %indvars.iv401.i.i = phi i64 [ %indvars.iv.next402.i.i.3, %Extra_TruthFill.exit.i.i ], [ %indvars.iv401.i.i.unr, %Extra_TruthFill.exit.i.i.prol.loopexit ]
  %i.yv = load i32, ptr %i.yj, align 4, !tbaa !43
  %i.yw = or i32 %i.yv, %i.yu                     ; 2 uses
  store i32 %i.yw, ptr %i.tx, align 4, !tbaa !43
  %i.yx = load i32, ptr %i.yj, align 4, !tbaa !43
  %i.yy = or i32 %i.yx, %i.yw                     ; 2 uses
  store i32 %i.yy, ptr %i.tx, align 4, !tbaa !43
  %i.yz = load i32, ptr %i.yj, align 4, !tbaa !43
  %i.za = or i32 %i.yz, %i.yy                     ; 2 uses
  store i32 %i.za, ptr %i.tx, align 4, !tbaa !43
  %i.zb = load i32, ptr %i.yj, align 4, !tbaa !43
  %i.zc = or i32 %i.zb, %i.za                     ; 2 uses
  store i32 %i.zc, ptr %i.tx, align 4, !tbaa !43
  %indvars.iv.next402.i.i.3 = add nuw nsw i64 %indvars.iv401.i.i, 4 ; 2 uses
  %exitcond405.not.i.i.3 = icmp eq i64 %indvars.iv.next402.i.i.3, %wide.trip.count404.i.i
  br i1 %exitcond405.not.i.i.3, label %.loopexit.i.i, label %Extra_TruthFill.exit.i.i, !llvm.loop !156

.loopexit.i.i:                                    ; preds = %Extra_TruthFill.exit.i.i.prol.loopexit, %Extra_TruthFill.exit.i.i, %middle.block441, %.preheader284.i.i, %.lr.ph327.i.i.split.split
  %indvars.iv.next407.i.i = add nuw nsw i64 %indvars.iv406.i.i, 1 ; 2 uses
  %exitcond410.not.i.i = icmp eq i64 %indvars.iv.next407.i.i, %wide.trip.count409.i.i
  br i1 %exitcond410.not.i.i, label %._crit_edge328.i.i, label %.lr.ph327.i.i.split.split, !llvm.loop !124

._crit_edge328.i.i:                               ; preds = %.loopexit.i.i, %.loopexit.i.i.us189, %.loopexit.i.i.us, %Extra_TruthClear.exit244.i.i
  %i.zd = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.kw, i32 noundef 7) #18 ; 7 uses
  br i1 %i.uf, label %.lr.ph331.i.i, label %._crit_edge332.i.i

.lr.ph331.i.i:                                    ; preds = %._crit_edge328.i.i, %.lr.ph331.i.i
  %indvars.iv411.i.i = phi i64 [ %indvars.iv.next412.i.i, %.lr.ph331.i.i ], [ 0, %._crit_edge328.i.i ] ; 2 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv411.i.i
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !43
  %.val204.i.i = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.zg = sext i32 %i.zf to i64
  %i.zh = getelementptr inbounds [8 x i8], ptr %.val204.i.i, i64 %i.zg
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !30
  tail call void @Abc_ObjAddFanin(ptr noundef %i.zd, ptr noundef %i.zi) #18
  %indvars.iv.next412.i.i = add nuw nsw i64 %indvars.iv411.i.i, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next412.i.i, %i.uh
  br i1 %exitcond241.not, label %._crit_edge332.i.i, label %.lr.ph331.i.i, !llvm.loop !157

._crit_edge332.i.i:                               ; preds = %.lr.ph331.i.i, %._crit_edge328.i.i
  %i.zj = load ptr, ptr %i.ty, align 8, !tbaa !158
  %i.zk = tail call ptr @Abc_SopCreateFromTruth(ptr noundef %i.zj, i32 noundef %.fr, ptr noundef %i.tx) #18
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zd, i64 64
  store ptr %i.zk, ptr %i.zl, align 8, !tbaa !97
  %i.zm = getelementptr i8, ptr %i.zd, i64 28
  %.val.i.i.i = load i32, ptr %i.zm, align 4, !tbaa !63 ; 4 uses
  %i.zn = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.zn, label %.lr.ph.i.i85.i, label %Abc_NodeGetLevel.exit.i.i

.lr.ph.i.i85.i:                                   ; preds = %._crit_edge332.i.i
  %.val8.i.i.i = load ptr, ptr %i.zd, align 8, !tbaa !67
  %i.zo = getelementptr i8, ptr %i.zd, i64 32
  %.val9.i.i.i = load ptr, ptr %i.zo, align 8, !tbaa !159 ; 3 uses
  %i.zp = getelementptr i8, ptr %.val8.i.i.i, i64 32
  %.val8.val.i.i.i = load ptr, ptr %i.zp, align 8, !tbaa !51
  %i.zq = getelementptr i8, ptr %.val8.val.i.i.i, i64 8
  %.val8.val.val.i.i.i = load ptr, ptr %i.zq, align 8, !tbaa !29 ; 3 uses
  %wide.trip.count.i265.i.i = zext nneg i32 %.val.i.i.i to i64 ; 2 uses
  %xtraiter652 = and i64 %wide.trip.count.i265.i.i, 1
  %i.zr = icmp eq i32 %.val.i.i.i, 1
  br i1 %i.zr, label %.epil.preheader651, label %.lr.ph.i.i85.i.new

.lr.ph.i.i85.i.new:                               ; preds = %.lr.ph.i.i85.i
  %unroll_iter657 = and i64 %wide.trip.count.i265.i.i, 2147483646
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.i.i85.i.new
  %indvars.iv.i266.i.i = phi i64 [ 0, %.lr.ph.i.i85.i.new ], [ %indvars.iv.next.i267.i.i.1, %bb.au ] ; 3 uses
  %.011.i.i.i = phi i32 [ 0, %.lr.ph.i.i85.i.new ], [ %i.aak, %bb.au ]
  %niter658 = phi i64 [ 0, %.lr.ph.i.i85.i.new ], [ %niter658.next.1, %bb.au ]
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.val9.i.i.i, i64 %indvars.iv.i266.i.i
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !43
  %i.zu = sext i32 %i.zt to i64
  %i.zv = getelementptr inbounds [8 x i8], ptr %.val8.val.val.i.i.i, i64 %i.zu
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !30
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 20
  %i.zy = load i32, ptr %i.zx, align 4
  %i.zz = lshr i32 %i.zy, 12
  %i.aaa = tail call range(i32 0, 1048576) i32 @llvm.umax.i32(i32 range(i32 0, 1048576) %.011.i.i.i, i32 range(i32 0, 1048576) %i.zz)
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %.val9.i.i.i, i64 %indvars.iv.i266.i.i
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !43
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds [8 x i8], ptr %.val8.val.val.i.i.i, i64 %i.aae
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !30
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 20
  %i.aai = load i32, ptr %i.aah, align 4
  %i.aaj = lshr i32 %i.aai, 12
  %i.aak = tail call range(i32 0, 1048576) i32 @llvm.umax.i32(i32 range(i32 0, 1048576) %i.aaa, i32 range(i32 0, 1048576) %i.aaj) ; 3 uses
  %indvars.iv.next.i267.i.i.1 = add nuw nsw i64 %indvars.iv.i266.i.i, 2 ; 2 uses
  %niter658.next.1 = add i64 %niter658, 2         ; 2 uses
  %niter658.ncmp.1 = icmp eq i64 %niter658.next.1, %unroll_iter657
  br i1 %niter658.ncmp.1, label %.critedge.loopexit.i.i.i.unr-lcssa, label %bb.au, !llvm.loop !160

.critedge.loopexit.i.i.i.unr-lcssa:               ; preds = %bb.au
  %lcmp.mod654.not = icmp eq i64 %xtraiter652, 0
  br i1 %lcmp.mod654.not, label %.critedge.loopexit.i.i.i, label %.epil.preheader651

.epil.preheader651:                               ; preds = %.critedge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i85.i
  %indvars.iv.i266.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i85.i ], [ %indvars.iv.next.i267.i.i.1, %.critedge.loopexit.i.i.i.unr-lcssa ]
  %.011.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i85.i ], [ %i.aak, %.critedge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod656 = trunc i32 %.val.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod656)
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %.val9.i.i.i, i64 %indvars.iv.i266.i.i.epil.init
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !43
  %i.aan = sext i32 %i.aam to i64
  %i.aao = getelementptr inbounds [8 x i8], ptr %.val8.val.val.i.i.i, i64 %i.aan
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !30
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 20
  %i.aar = load i32, ptr %i.aaq, align 4
  %i.aas = lshr i32 %i.aar, 12
  %i.aat = tail call range(i32 0, 1048576) i32 @llvm.umax.i32(i32 range(i32 0, 1048576) %.011.i.i.i.epil.init, i32 range(i32 0, 1048576) %i.aas)
  br label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %.critedge.loopexit.i.i.i.unr-lcssa, %.epil.preheader651
  %.lcssa613 = phi i32 [ %i.aak, %.critedge.loopexit.i.i.i.unr-lcssa ], [ %i.aat, %.epil.preheader651 ]
  %i.aau = shl nuw i32 %.lcssa613, 12
  %i.aav = add i32 %i.aau, 4096
  br label %Abc_NodeGetLevel.exit.i.i

Abc_NodeGetLevel.exit.i.i:                        ; preds = %.critedge.loopexit.i.i.i, %._crit_edge332.i.i
  %.0.lcssa.i.i.i = phi i32 [ 4096, %._crit_edge332.i.i ], [ %i.aav, %.critedge.loopexit.i.i.i ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.zd, i64 20 ; 2 uses
  %i.aax = load i32, ptr %i.aaw, align 4
  %i.aay = and i32 %i.aax, 4095
  %i.aaz = or disjoint i32 %i.aay, %.0.lcssa.i.i.i
  store i32 %i.aaz, ptr %i.aaw, align 4
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv414.i.i
  store ptr %i.zd, ptr %i.aba, align 8, !tbaa !86
  %indvars.iv.next415.i.i = add nuw nsw i64 %indvars.iv414.i.i, 1 ; 2 uses
  %exitcond418.not.i.i = icmp eq i64 %indvars.iv.next415.i.i, %wide.trip.count417.i.i
  br i1 %exitcond418.not.i.i, label %.lr.ph338.i.i.preheader, label %bb.as, !llvm.loop !161

.lr.ph338.i.i.preheader:                          ; preds = %Abc_NodeGetLevel.exit.i.i
  %xtraiter659 = and i64 %wide.trip.count417.i.i, 3 ; 3 uses
  %i.abb = icmp ult i32 %7, 4
  br i1 %i.abb, label %.lr.ph338.i.i.epil.preheader, label %.lr.ph338.i.i.preheader.new

.lr.ph338.i.i.preheader.new:                      ; preds = %.lr.ph338.i.i.preheader
  %unroll_iter663 = and i64 %wide.trip.count417.i.i, 2147483644
  br label %.lr.ph338.i.i

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph338.i.i
  %lcmp.mod661.not = icmp eq i64 %xtraiter659, 0
  br i1 %lcmp.mod661.not, label %.preheader.i.i.loopexit, label %.lr.ph338.i.i.epil.preheader

.lr.ph338.i.i.epil.preheader:                     ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph338.i.i.preheader
  %indvars.iv419.i.i.epil.init = phi i64 [ 0, %.lr.ph338.i.i.preheader ], [ %indvars.iv.next420.i.i.3, %.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod662 = icmp ne i64 %xtraiter659, 0
  tail call void @llvm.assume(i1 %lcmp.mod662)
  br label %.lr.ph338.i.i.epil

.lr.ph338.i.i.epil:                               ; preds = %.lr.ph338.i.i.epil, %.lr.ph338.i.i.epil.preheader
  %indvars.iv419.i.i.epil = phi i64 [ %indvars.iv.next420.i.i.epil, %.lr.ph338.i.i.epil ], [ %indvars.iv419.i.i.epil.init, %.lr.ph338.i.i.epil.preheader ] ; 3 uses
  %epil.iter660 = phi i64 [ %epil.iter660.next, %.lr.ph338.i.i.epil ], [ 0, %.lr.ph338.i.i.epil.preheader ]
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv419.i.i.epil
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !43
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv419.i.i.epil
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !86
  %.val207.i.i.epil = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.abg = sext i32 %i.abd to i64
  %i.abh = getelementptr inbounds [8 x i8], ptr %.val207.i.i.epil, i64 %i.abg
  store ptr %i.abf, ptr %i.abh, align 8, !tbaa !30
  %indvars.iv.next420.i.i.epil = add nuw nsw i64 %indvars.iv419.i.i.epil, 1
  %epil.iter660.next = add i64 %epil.iter660, 1   ; 2 uses
  %epil.iter660.cmp.not = icmp eq i64 %epil.iter660.next, %xtraiter659
  br i1 %epil.iter660.cmp.not, label %.preheader.i.i.loopexit, label %.lr.ph338.i.i.epil, !llvm.loop !162

.preheader.i.i.loopexit:                          ; preds = %.lr.ph338.i.i.epil, %.preheader.i.i.loopexit.unr-lcssa
  %.pre266 = load i32, ptr %calloc.i, align 8, !tbaa !33
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.thread.i.i, %.preheader.i.i.loopexit, %._crit_edge319.i.i
  %25 = phi i32 [ %7, %.preheader.i.i.loopexit ], [ %7, %._crit_edge319.i.i ], [ 0, %._crit_edge.thread.i.i ] ; 3 uses
  %spec.select.i.i.i303306313316 = phi i32 [ %spec.select.i.i.i303306, %.preheader.i.i.loopexit ], [ %spec.select.i.i.i303306, %._crit_edge319.i.i ], [ %spec.select.i.i.i301, %._crit_edge.thread.i.i ] ; 2 uses
  %26 = phi i1 [ %i.tw, %.preheader.i.i.loopexit ], [ %i.tw, %._crit_edge319.i.i ], [ false, %._crit_edge.thread.i.i ]
  %27 = phi i32 [ %.pre266, %.preheader.i.i.loopexit ], [ %i.ks, %._crit_edge319.i.i ], [ %i.ks, %._crit_edge.thread.i.i ] ; 12 uses
  %i.abi = icmp slt i32 %25, %27
  br i1 %i.abi, label %.lr.ph341.preheader.i.i, label %._crit_edge342.i.i

.lr.ph341.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.abj = sext i32 %25 to i64                    ; 4 uses
  %wide.trip.count427.i.i = sext i32 %27 to i64   ; 2 uses
  %i.abk = sub nsw i64 %wide.trip.count427.i.i, %i.abj ; 2 uses
  %xtraiter665 = and i64 %i.abk, 3                ; 3 uses
  %i.abl = sub nsw i64 %i.abj, %wide.trip.count427.i.i
  %i.abm = icmp ugt i64 %i.abl, -4
  br i1 %i.abm, label %.lr.ph341.i.i.epil.preheader, label %.lr.ph341.preheader.i.i.new

.lr.ph341.preheader.i.i.new:                      ; preds = %.lr.ph341.preheader.i.i
  %unroll_iter670 = and i64 %i.abk, -4
  br label %.lr.ph341.i.i

.lr.ph338.i.i:                                    ; preds = %.lr.ph338.i.i, %.lr.ph338.i.i.preheader.new
  %indvars.iv419.i.i = phi i64 [ 0, %.lr.ph338.i.i.preheader.new ], [ %indvars.iv.next420.i.i.3, %.lr.ph338.i.i ] ; 6 uses
  %niter664 = phi i64 [ 0, %.lr.ph338.i.i.preheader.new ], [ %niter664.next.3, %.lr.ph338.i.i ]
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv419.i.i
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !43
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv419.i.i
  %i.abq = load ptr, ptr %i.abp, align 16, !tbaa !86
  %.val207.i.i = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.abr = sext i32 %i.abo to i64
  %i.abs = getelementptr inbounds [8 x i8], ptr %.val207.i.i, i64 %i.abr
  store ptr %i.abq, ptr %i.abs, align 8, !tbaa !30
  %indvars.iv.next420.i.i = or disjoint i64 %indvars.iv419.i.i, 1 ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next420.i.i
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !43
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next420.i.i
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !86
  %.val207.i.i.1 = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.abx = sext i32 %i.abu to i64
  %i.aby = getelementptr inbounds [8 x i8], ptr %.val207.i.i.1, i64 %i.abx
  store ptr %i.abw, ptr %i.aby, align 8, !tbaa !30
  %indvars.iv.next420.i.i.1 = or disjoint i64 %indvars.iv419.i.i, 2 ; 2 uses
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next420.i.i.1
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !43
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next420.i.i.1
  %i.acc = load ptr, ptr %i.acb, align 16, !tbaa !86
  %.val207.i.i.2 = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.acd = sext i32 %i.aca to i64
  %i.ace = getelementptr inbounds [8 x i8], ptr %.val207.i.i.2, i64 %i.acd
  store ptr %i.acc, ptr %i.ace, align 8, !tbaa !30
  %indvars.iv.next420.i.i.2 = or disjoint i64 %indvars.iv419.i.i, 3 ; 2 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next420.i.i.2
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !43
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next420.i.i.2
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !86
  %.val207.i.i.3 = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.acj = sext i32 %i.acg to i64
  %i.ack = getelementptr inbounds [8 x i8], ptr %.val207.i.i.3, i64 %i.acj
  store ptr %i.aci, ptr %i.ack, align 8, !tbaa !30
  %indvars.iv.next420.i.i.3 = add nuw nsw i64 %indvars.iv419.i.i, 4 ; 2 uses
  %niter664.next.3 = add i64 %niter664, 4         ; 2 uses
  %niter664.ncmp.3 = icmp eq i64 %niter664.next.3, %unroll_iter663
  br i1 %niter664.ncmp.3, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph338.i.i, !llvm.loop !163

.lr.ph341.i.i:                                    ; preds = %.lr.ph341.i.i, %.lr.ph341.preheader.i.i.new
  %indvars.iv424.i.i = phi i64 [ %i.abj, %.lr.ph341.preheader.i.i.new ], [ %indvars.iv.next425.i.i.3, %.lr.ph341.i.i ] ; 5 uses
  %.0189339.i.i = phi i32 [ 0, %.lr.ph341.preheader.i.i.new ], [ %i.add, %.lr.ph341.i.i ]
  %niter671 = phi i64 [ 0, %.lr.ph341.preheader.i.i.new ], [ %niter671.next.3, %.lr.ph341.i.i ]
  %i.acl = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %indvars.iv424.i.i
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !43
  %i.acn = shl nuw i32 1, %i.acm
  %i.aco = or i32 %i.acn, %.0189339.i.i
  %i.acp = getelementptr [4 x i8], ptr %i.cz, i64 %indvars.iv424.i.i
  %i.acq = getelementptr i8, ptr %i.acp, i64 4
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !43
  %i.acs = shl nuw i32 1, %i.acr
  %i.act = or i32 %i.acs, %i.aco
  %i.acu = getelementptr [4 x i8], ptr %i.cz, i64 %indvars.iv424.i.i
  %i.acv = getelementptr i8, ptr %i.acu, i64 8
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !43
  %i.acx = shl nuw i32 1, %i.acw
  %i.acy = or i32 %i.acx, %i.act
  %i.acz = getelementptr [4 x i8], ptr %i.cz, i64 %indvars.iv424.i.i
  %i.ada = getelementptr i8, ptr %i.acz, i64 12
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !43
  %i.adc = shl nuw i32 1, %i.adb
  %i.add = or i32 %i.adc, %i.acy                  ; 3 uses
  %indvars.iv.next425.i.i.3 = add nsw i64 %indvars.iv424.i.i, 4 ; 2 uses
  %niter671.next.3 = add i64 %niter671, 4         ; 2 uses
  %niter671.ncmp.3 = icmp eq i64 %niter671.next.3, %unroll_iter670
  br i1 %niter671.ncmp.3, label %._crit_edge342.i.i.loopexit.unr-lcssa, label %.lr.ph341.i.i, !llvm.loop !164

._crit_edge342.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph341.i.i
  %lcmp.mod667.not = icmp eq i64 %xtraiter665, 0
  br i1 %lcmp.mod667.not, label %._crit_edge342.i.i, label %.lr.ph341.i.i.epil.preheader

.lr.ph341.i.i.epil.preheader:                     ; preds = %._crit_edge342.i.i.loopexit.unr-lcssa, %.lr.ph341.preheader.i.i
  %indvars.iv424.i.i.epil.init = phi i64 [ %i.abj, %.lr.ph341.preheader.i.i ], [ %indvars.iv.next425.i.i.3, %._crit_edge342.i.i.loopexit.unr-lcssa ]
  %.0189339.i.i.epil.init = phi i32 [ 0, %.lr.ph341.preheader.i.i ], [ %i.add, %._crit_edge342.i.i.loopexit.unr-lcssa ]
  %lcmp.mod669 = icmp ne i64 %xtraiter665, 0
  tail call void @llvm.assume(i1 %lcmp.mod669)
  br label %.lr.ph341.i.i.epil

.lr.ph341.i.i.epil:                               ; preds = %.lr.ph341.i.i.epil, %.lr.ph341.i.i.epil.preheader
  %indvars.iv424.i.i.epil = phi i64 [ %indvars.iv424.i.i.epil.init, %.lr.ph341.i.i.epil.preheader ], [ %indvars.iv.next425.i.i.epil, %.lr.ph341.i.i.epil ] ; 2 uses
  %.0189339.i.i.epil = phi i32 [ %.0189339.i.i.epil.init, %.lr.ph341.i.i.epil.preheader ], [ %i.adh, %.lr.ph341.i.i.epil ]
  %epil.iter666 = phi i64 [ 0, %.lr.ph341.i.i.epil.preheader ], [ %epil.iter666.next, %.lr.ph341.i.i.epil ]
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %indvars.iv424.i.i.epil
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !43
  %i.adg = shl nuw i32 1, %i.adf
  %i.adh = or i32 %i.adg, %.0189339.i.i.epil      ; 2 uses
  %indvars.iv.next425.i.i.epil = add nsw i64 %indvars.iv424.i.i.epil, 1
  %epil.iter666.next = add i64 %epil.iter666, 1   ; 2 uses
  %epil.iter666.cmp.not = icmp eq i64 %epil.iter666.next, %xtraiter665
  br i1 %epil.iter666.cmp.not, label %._crit_edge342.i.i, label %.lr.ph341.i.i.epil, !llvm.loop !165

._crit_edge342.i.i:                               ; preds = %._crit_edge342.i.i.loopexit.unr-lcssa, %.lr.ph341.i.i.epil, %.preheader.i.i
  %.0189.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.add, %._crit_edge342.i.i.loopexit.unr-lcssa ], [ %i.adh, %.lr.ph341.i.i.epil ] ; 2 uses
  br i1 %i.kx, label %.lr.ph.i269.i.i, label %Abc_NodeLeavesRemove.exit.i.i

.lr.ph.i269.i.i:                                  ; preds = %._crit_edge342.i.i
  %i.adi = zext nneg i32 %.val71117.i to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.az, %.lr.ph.i269.i.i
  %indvars.iv.i270.i.i = phi i64 [ %i.adi, %.lr.ph.i269.i.i ], [ %indvars.iv.next.i271.i.i, %bb.az ] ; 2 uses
  %indvars.iv.next.i271.i.i = add nsw i64 %indvars.iv.i270.i.i, -1 ; 3 uses
  %i.adj = trunc nuw nsw i64 %indvars.iv.next.i271.i.i to i32
  %i.adk = shl nuw i32 1, %i.adj
  %i.adl = and i32 %i.adk, %.0189.lcssa.i.i
  %.not.i272.i.i = icmp eq i32 %i.adl, 0
  br i1 %.not.i272.i.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val.i273.i.i = load ptr, ptr %i.kp, align 8, !tbaa !29 ; 2 uses
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %.val.i273.i.i, i64 %indvars.iv.next.i271.i.i
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !30
  %i.ado = load i32, ptr %i.fm, align 4, !tbaa !26 ; 7 uses
  %smin.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ado, i32 0) ; 2 uses
  %i.adp = icmp sgt i32 %i.ado, 0
  br i1 %i.adp, label %.lr.ph367, label %._crit_edge370

.lr.ph367:                                        ; preds = %bb.aw
  %i.adq = zext nneg i32 %i.ado to i64
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ay
  %i.adr = trunc nuw i64 %i.adu to i32            ; 2 uses
  %i.ads = icmp sgt i32 %i.adr, 0
  br i1 %i.ads, label %bb.ay, label %._crit_edge370, !llvm.loop !82

bb.ay:                                            ; preds = %.lr.ph367, %bb.ax
  %i.adt = phi i32 [ %i.ado, %.lr.ph367 ], [ %i.adr, %bb.ax ]
  %indvars.iv.i.i.i.i365 = phi i64 [ %i.adq, %.lr.ph367 ], [ %i.adu, %bb.ax ]
  %i.adu = add nsw i64 %indvars.iv.i.i.i.i365, -1 ; 3 uses
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %.val.i273.i.i, i64 %i.adu
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !30
  %i.adx = icmp eq ptr %i.adw, %i.adn
  br i1 %i.adx, label %._crit_edge368, label %bb.ax, !llvm.loop !82

._crit_edge368:                                   ; preds = %bb.ay
  br label %._crit_edge370, !llvm.loop !82

._crit_edge370:                                   ; preds = %bb.ax, %._crit_edge368, %bb.aw
  %.0.in.lcssa.i.i.i.i = phi i32 [ %i.adt, %._crit_edge368 ], [ %smin.i.i.i.i, %bb.aw ], [ %smin.i.i.i.i, %bb.ax ] ; 2 uses
  %i.ady = icmp slt i32 %.0.in.lcssa.i.i.i.i, %i.ado
  br i1 %i.ady, label %.lr.ph.i.i.i.i, label %Vec_PtrRemove.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge370
  %i.adz = sext i32 %.0.in.lcssa.i.i.i.i to i64   ; 4 uses
  %wide.trip.count.i.i.i.i = sext i32 %i.ado to i64 ; 3 uses
  %i.aea = sub nsw i64 %wide.trip.count.i.i.i.i, %i.adz
  %xtraiter674.a = and i64 %i.aea, 3              ; 2 uses
  %lcmp.mod675.not = icmp eq i64 %xtraiter674.a, 0
  br i1 %lcmp.mod675.not, label %.prol.loopexit673, label %.prol.preheader672

.prol.preheader672:                               ; preds = %.lr.ph.i.i.i.i, %.prol.preheader672
  %indvars.iv18.i.i.i.i.prol = phi i64 [ %indvars.iv.next19.i.i.i.i.prol, %.prol.preheader672 ], [ %i.adz, %.lr.ph.i.i.i.i ] ; 2 uses
  %prol.iter676 = phi i64 [ %prol.iter676.next, %.prol.preheader672 ], [ 0, %.lr.ph.i.i.i.i ]
  %i.aeb = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.aec = getelementptr inbounds [8 x i8], ptr %i.aeb, i64 %indvars.iv18.i.i.i.i.prol ; 2 uses
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !30
  %i.aee = getelementptr i8, ptr %i.aec, i64 -8
  store ptr %i.aed, ptr %i.aee, align 8, !tbaa !30
  %indvars.iv.next19.i.i.i.i.prol = add nsw i64 %indvars.iv18.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter676.next = add i64 %prol.iter676, 1   ; 2 uses
  %prol.iter676.cmp.not = icmp eq i64 %prol.iter676.next, %xtraiter674.a
  br i1 %prol.iter676.cmp.not, label %.prol.loopexit673, label %.prol.preheader672, !llvm.loop !166

.prol.loopexit673:                                ; preds = %.prol.preheader672, %.lr.ph.i.i.i.i
  %indvars.iv18.i.i.i.i.unr = phi i64 [ %i.adz, %.lr.ph.i.i.i.i ], [ %indvars.iv.next19.i.i.i.i.prol, %.prol.preheader672 ]
  %i.aef = sub nsw i64 %i.adz, %wide.trip.count.i.i.i.i
  %i.aeg = icmp ugt i64 %i.aef, -4
  br i1 %i.aeg, label %Vec_PtrRemove.exit.i.i.i, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.prol.loopexit673, %.lr.ph.i.i.i.i.new
  %indvars.iv18.i.i.i.i = phi i64 [ %indvars.iv.next19.i.i.i.i.3, %.lr.ph.i.i.i.i.new ], [ %indvars.iv18.i.i.i.i.unr, %.prol.loopexit673 ] ; 5 uses
  %i.aeh = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.aei = getelementptr inbounds [8 x i8], ptr %i.aeh, i64 %indvars.iv18.i.i.i.i ; 2 uses
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !30
  %i.aek = getelementptr i8, ptr %i.aei, i64 -8
  store ptr %i.aej, ptr %i.aek, align 8, !tbaa !30
  %i.ael = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.aem = getelementptr [8 x i8], ptr %i.ael, i64 %indvars.iv18.i.i.i.i ; 2 uses
  %i.aen = getelementptr i8, ptr %i.aem, i64 8
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !30
  store ptr %i.aeo, ptr %i.aem, align 8, !tbaa !30
  %i.aep = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.aeq = getelementptr [8 x i8], ptr %i.aep, i64 %indvars.iv18.i.i.i.i ; 2 uses
  %i.aer = getelementptr i8, ptr %i.aeq, i64 16
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !30
  %i.aet = getelementptr i8, ptr %i.aeq, i64 8
  store ptr %i.aes, ptr %i.aet, align 8, !tbaa !30
  %i.aeu = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.aev = getelementptr [8 x i8], ptr %i.aeu, i64 %indvars.iv18.i.i.i.i ; 2 uses
  %i.aew = getelementptr i8, ptr %i.aev, i64 24
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !30
  %i.aey = getelementptr i8, ptr %i.aev, i64 16
  store ptr %i.aex, ptr %i.aey, align 8, !tbaa !30
  %indvars.iv.next19.i.i.i.i.3 = add nsw i64 %indvars.iv18.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next19.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %Vec_PtrRemove.exit.i.i.i, label %.lr.ph.i.i.i.i.new, !llvm.loop !84

Vec_PtrRemove.exit.i.i.i:                         ; preds = %.prol.loopexit673, %.lr.ph.i.i.i.i.new, %._crit_edge370
  %i.aez = add nsw i32 %i.ado, -1
  store i32 %i.aez, ptr %i.fm, align 4, !tbaa !26
  br label %bb.az

bb.az:                                            ; preds = %Vec_PtrRemove.exit.i.i.i, %bb.av
  %i.afa = icmp sgt i64 %indvars.iv.i270.i.i, 1
  br i1 %i.afa, label %bb.av, label %Abc_NodeLeavesRemove.exit.i.i, !llvm.loop !85

Abc_NodeLeavesRemove.exit.i.i:                    ; preds = %bb.az, %._crit_edge342.i.i
  %i.afb = load ptr, ptr %i.kq, align 8, !tbaa !42
  %i.afc = add i32 %25, %.val71117.i
  %i.afd = sub i32 %i.afc, %27
  %notmask.i.i = shl nsw i32 -1, %.val71117.i
  %.demorgan.i.i = or i32 %.0189.lcssa.i.i, %notmask.i.i
  %i.afe = xor i32 %.demorgan.i.i, -1
  tail call void @Extra_TruthShrink(ptr noundef %i.afb, ptr noundef %i.gp, i32 noundef %i.afd, i32 noundef %.val71117.i, i32 noundef %i.afe) #18
  %i.aff = load ptr, ptr %i.kq, align 8, !tbaa !42 ; 3 uses
  br i1 %26, label %select.unfold.preheader.i275.i.i, label %.critedge100.i

select.unfold.preheader.i275.i.i:                 ; preds = %Abc_NodeLeavesRemove.exit.i.i
  %i.afg = ptrtoaddr ptr %i.aff to i64
  %i.afh = zext i32 %spec.select.i.i.i303306313316 to i64 ; 4 uses
  %28 = icmp ne i32 %spec.select.i.i.i303306313316, 0
  %.neg577 = sext i1 %28 to i64
  %29 = add nuw nsw i64 %i.afh, 1
  %30 = add nsw i64 %29, %.neg577                 ; 3 uses
  %min.iters.check = icmp ult i64 %30, 8
  %i.afi = sub i64 %i.gq, %i.afg
  %diff.check = icmp ugt i64 %i.afi, -32
  %or.cond585 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond585, label %select.unfold.i276.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %select.unfold.preheader.i275.i.i
  %n.vec = and i64 %30, -8                        ; 3 uses
  %31 = sub nsw i64 %i.afh, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.afj = xor i64 %index, -1
  %i.afk = add i64 %i.afj, %i.afh                 ; 2 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %i.afk ; 2 uses
  %i.afm = getelementptr inbounds i8, ptr %i.afl, i64 -12
  %i.afn = getelementptr inbounds i8, ptr %i.afl, i64 -28
  %wide.load = load <4 x i32>, ptr %i.afm, align 4, !tbaa !43
  %wide.load372 = load <4 x i32>, ptr %i.afn, align 4, !tbaa !43
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.afk ; 2 uses
  %i.afp = getelementptr inbounds i8, ptr %i.afo, i64 -12
  %i.afq = getelementptr inbounds i8, ptr %i.afo, i64 -28
  store <4 x i32> %wide.load, ptr %i.afp, align 4, !tbaa !43
  store <4 x i32> %wide.load372, ptr %i.afq, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.afr = icmp eq i64 %index.next, %n.vec
  br i1 %i.afr, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %30, %n.vec
  br i1 %cmp.n, label %.critedge100.i, label %select.unfold.i276.i.i.preheader

select.unfold.i276.i.i.preheader:                 ; preds = %select.unfold.preheader.i275.i.i, %middle.block
  %indvars.iv.i277.i.i.ph = phi i64 [ %i.afh, %select.unfold.preheader.i275.i.i ], [ %31, %middle.block ]
  br label %select.unfold.i276.i.i

select.unfold.i276.i.i:                           ; preds = %select.unfold.i276.i.i.preheader, %select.unfold.i276.i.i
  %indvars.iv.i277.i.i = phi i64 [ %indvars.iv.next.i278.i.i, %select.unfold.i276.i.i ], [ %indvars.iv.i277.i.i.ph, %select.unfold.i276.i.i.preheader ] ; 2 uses
  %indvars.iv.next.i278.i.i = add nsw i64 %indvars.iv.i277.i.i, -1 ; 3 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %indvars.iv.next.i278.i.i
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !43
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i278.i.i
  store i32 %i.aft, ptr %i.afu, align 4, !tbaa !43
  %i.afv = icmp samesign ugt i64 %indvars.iv.i277.i.i, 1
  br i1 %i.afv, label %select.unfold.i276.i.i, label %.critedge100.i, !llvm.loop !168

Abc_NodeDecomposeStep.exit.i:                     ; preds = %.loopexit286.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.val70125.i = load i32, ptr %i.fm, align 4, !tbaa !26 ; 2 uses
  %i.afw = icmp sgt i32 %.val70125.i, 0
  br i1 %i.afw, label %.lr.ph127.i, label %Abc_NodeSuperChoiceLut.exit.thread

.lr.ph127.i:                                      ; preds = %Abc_NodeDecomposeStep.exit.i, %bb.bc
  %.val70.i264 = phi i32 [ %.val70.i, %bb.bc ], [ %.val70125.i, %Abc_NodeDecomposeStep.exit.i ] ; 2 uses
  %indvars.iv.i149 = phi i64 [ %indvars.iv.next.i150, %bb.bc ], [ 0, %Abc_NodeDecomposeStep.exit.i ] ; 2 uses
  %.val74.i = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %.val74.i, i64 %indvars.iv.i149
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !30 ; 3 uses
  %i.afz = getelementptr i8, ptr %i.afy, i64 20
  %.val77.i = load i32, ptr %i.afz, align 4
  %i.aga = and i32 %.val77.i, 15
  %.not99.i = icmp eq i32 %i.aga, 7
  br i1 %.not99.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.lr.ph127.i
  %i.agb = getelementptr i8, ptr %i.afy, i64 44
  %.val76.i = load i32, ptr %i.agb, align 4, !tbaa !54
  %i.agc = icmp eq i32 %.val76.i, 0
  br i1 %i.agc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void @Abc_NtkDeleteObj_rec(ptr noundef nonnull %i.afy, i32 noundef 1) #18
  %.val70.i.pre = load i32, ptr %i.fm, align 4, !tbaa !26
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.lr.ph127.i
  %.val70.i = phi i32 [ %.val70.i.pre, %bb.bb ], [ %.val70.i264, %bb.ba ], [ %.val70.i264, %.lr.ph127.i ] ; 2 uses
  %indvars.iv.next.i150 = add nuw nsw i64 %indvars.iv.i149, 1 ; 2 uses
  %i.agd = sext i32 %.val70.i to i64
  %i.age = icmp slt i64 %indvars.iv.next.i150, %i.agd
  br i1 %i.age, label %.lr.ph127.i, label %Abc_NodeSuperChoiceLut.exit.thread, !llvm.loop !169

._crit_edge119.i:                                 ; preds = %.critedge100.i, %Abc_NodeLeavesRemove.exit.i
  %i.agf = phi i32 [ %i.db, %Abc_NodeLeavesRemove.exit.i ], [ %27, %.critedge100.i ] ; 2 uses
  %.pre.i.i262 = phi i32 [ %.pre.i.i260, %Abc_NodeLeavesRemove.exit.i ], [ %27, %.critedge100.i ] ; 2 uses
  %.pre429.i.i256 = phi i32 [ %.pre429.i.i254, %Abc_NodeLeavesRemove.exit.i ], [ %27, %.critedge100.i ] ; 2 uses
  %i.agg = phi i32 [ %i.dc, %Abc_NodeLeavesRemove.exit.i ], [ %27, %.critedge100.i ] ; 2 uses
  %i.agh = load ptr, ptr %i.dg, align 8, !tbaa !67
  %i.agi = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.agh, i32 noundef 7) #18 ; 7 uses
  %.val69120.i = load i32, ptr %i.fm, align 4, !tbaa !26 ; 2 uses
  %i.agj = icmp sgt i32 %.val69120.i, 0
  br i1 %i.agj, label %.lr.ph123.i.preheader, label %.critedge2.i

.lr.ph123.i.preheader:                            ; preds = %._crit_edge119.i
  %i.agk = getelementptr i8, ptr %i.fl, i64 8
  br label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %.lr.ph123.i.preheader, %.lr.ph123.i
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %.lr.ph123.i ], [ 0, %.lr.ph123.i.preheader ] ; 2 uses
  %.val73.i = load ptr, ptr %i.agk, align 8, !tbaa !29
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %.val73.i, i64 %indvars.iv143.i
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !30
  tail call void @Abc_ObjAddFanin(ptr noundef %i.agi, ptr noundef %i.agm) #18
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %.val69.i = load i32, ptr %i.fm, align 4, !tbaa !26 ; 2 uses
  %i.agn = sext i32 %.val69.i to i64
  %i.ago = icmp slt i64 %indvars.iv.next144.i, %i.agn
  br i1 %i.ago, label %.lr.ph123.i, label %.critedge2.i, !llvm.loop !170

.critedge2.i:                                     ; preds = %.lr.ph123.i, %._crit_edge119.i
  %.val69.lcssa.i = phi i32 [ %.val69120.i, %._crit_edge119.i ], [ %.val69.i, %.lr.ph123.i ]
  %i.agp = load ptr, ptr %i.dg, align 8, !tbaa !67
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 256
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !158
  %i.ags = tail call ptr @Abc_SopCreateFromTruth(ptr noundef %i.agr, i32 noundef %.val69.lcssa.i, ptr noundef %i.gp) #18
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agi, i64 64
  store ptr %i.ags, ptr %i.agt, align 8, !tbaa !97
  %i.agu = getelementptr i8, ptr %i.agi, i64 28
  %.val.i92.i = load i32, ptr %i.agu, align 4, !tbaa !63 ; 4 uses
  %i.agv = icmp sgt i32 %.val.i92.i, 0
  br i1 %i.agv, label %.lr.ph.i94.i, label %bb.be

.lr.ph.i94.i:                                     ; preds = %.critedge2.i
  %.val8.i.i = load ptr, ptr %i.agi, align 8, !tbaa !67
  %i.agw = getelementptr i8, ptr %i.agi, i64 32
  %.val9.i.i = load ptr, ptr %i.agw, align 8, !tbaa !159 ; 3 uses
  %i.agx = getelementptr i8, ptr %.val8.i.i, i64 32
  %.val8.val.i.i = load ptr, ptr %i.agx, align 8, !tbaa !51
  %i.agy = getelementptr i8, ptr %.val8.val.i.i, i64 8
  %.val8.val.val.i.i = load ptr, ptr %i.agy, align 8, !tbaa !29 ; 3 uses
  %wide.trip.count.i95.i = zext nneg i32 %.val.i92.i to i64 ; 2 uses
  %xtraiter678 = and i64 %wide.trip.count.i95.i, 1
  %i.agz = icmp eq i32 %.val.i92.i, 1
  br i1 %i.agz, label %.epil.preheader677, label %.lr.ph.i94.i.new

.lr.ph.i94.i.new:                                 ; preds = %.lr.ph.i94.i
  %unroll_iter683 = and i64 %wide.trip.count.i95.i, 2147483646
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i94.i.new
  %indvars.iv.i96.i = phi i64 [ 0, %.lr.ph.i94.i.new ], [ %indvars.iv.next.i97.i.1, %bb.bd ] ; 3 uses
  %.011.i.i = phi i32 [ 0, %.lr.ph.i94.i.new ], [ %i.ahs, %bb.bd ]
  %niter684 = phi i64 [ 0, %.lr.ph.i94.i.new ], [ %niter684.next.1, %bb.bd ]
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %.val9.i.i, i64 %indvars.iv.i96.i
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !43
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds [8 x i8], ptr %.val8.val.val.i.i, i64 %i.ahc
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !30
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 20
  %i.ahg = load i32, ptr %i.ahf, align 4
  %i.ahh = lshr i32 %i.ahg, 12
  %i.ahi = tail call range(i32 0, 1048576) i32 @llvm.umax.i32(i32 range(i32 0, 1048576) %.011.i.i, i32 range(i32 0, 1048576) %i.ahh)
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %.val9.i.i, i64 %indvars.iv.i96.i
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !43
  %i.ahm = sext i32 %i.ahl to i64
  %i.ahn = getelementptr inbounds [8 x i8], ptr %.val8.val.val.i.i, i64 %i.ahm
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !30
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 20
  %i.ahq = load i32, ptr %i.ahp, align 4
  %i.ahr = lshr i32 %i.ahq, 12
  %i.ahs = tail call range(i32 0, 1048576) i32 @llvm.umax.i32(i32 range(i32 0, 1048576) %i.ahi, i32 range(i32 0, 1048576) %i.ahr) ; 3 uses
  %indvars.iv.next.i97.i.1 = add nuw nsw i64 %indvars.iv.i96.i, 2 ; 2 uses
  %niter684.next.1 = add i64 %niter684, 2         ; 2 uses
  %niter684.ncmp.1 = icmp eq i64 %niter684.next.1, %unroll_iter683
  br i1 %niter684.ncmp.1, label %.critedge.loopexit.i.i.unr-lcssa, label %bb.bd, !llvm.loop !160

.critedge.loopexit.i.i.unr-lcssa:                 ; preds = %bb.bd
  %lcmp.mod680.not = icmp eq i64 %xtraiter678, 0
  br i1 %lcmp.mod680.not, label %.critedge.loopexit.i.i, label %.epil.preheader677

.epil.preheader677:                               ; preds = %.critedge.loopexit.i.i.unr-lcssa, %.lr.ph.i94.i
  %indvars.iv.i96.i.epil.init = phi i64 [ 0, %.lr.ph.i94.i ], [ %indvars.iv.next.i97.i.1, %.critedge.loopexit.i.i.unr-lcssa ]
  %.011.i.i.epil.init = phi i32 [ 0, %.lr.ph.i94.i ], [ %i.ahs, %.critedge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod682 = trunc i32 %.val.i92.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod682)
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %.val9.i.i, i64 %indvars.iv.i96.i.epil.init
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !43
  %i.ahv = sext i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds [8 x i8], ptr %.val8.val.val.i.i, i64 %i.ahv
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !30
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 20
  %i.ahz = load i32, ptr %i.ahy, align 4
  %i.aia = lshr i32 %i.ahz, 12
  %i.aib = tail call range(i32 0, 1048576) i32 @llvm.umax.i32(i32 range(i32 0, 1048576) %.011.i.i.epil.init, i32 range(i32 0, 1048576) %i.aia)
  br label %.critedge.loopexit.i.i

.critedge.loopexit.i.i:                           ; preds = %.critedge.loopexit.i.i.unr-lcssa, %.epil.preheader677
  %.lcssa622 = phi i32 [ %i.ahs, %.critedge.loopexit.i.i.unr-lcssa ], [ %i.aib, %.epil.preheader677 ]
  %i.aic = shl nuw i32 %.lcssa622, 12
  %i.aid = add i32 %i.aic, 4096
  br label %bb.be

bb.be:                                            ; preds = %.critedge.loopexit.i.i, %.critedge2.i
  %.0.lcssa.i.i = phi i32 [ 4096, %.critedge2.i ], [ %i.aid, %.critedge.loopexit.i.i ] ; 3 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agi, i64 20 ; 2 uses
  %i.aif = load i32, ptr %i.aie, align 4
  %i.aig = and i32 %i.aif, 4095
  %i.aih = or disjoint i32 %i.aig, %.0.lcssa.i.i
  store i32 %i.aih, ptr %i.aie, align 4
  %i.aii = add nsw i32 %.093208, 1                ; 2 uses
  %i.aij = lshr i32 %.0.lcssa.i.i, 12
  %i.aik = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.ail = lshr i32 %i.aik, 12
  %.not112 = icmp samesign ult i32 %i.aij, %i.ail
  br i1 %.not112, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @Abc_NtkDeleteObj_rec(ptr noundef nonnull %i.agi, i32 noundef 1) #18
  br label %Abc_NodeSuperChoiceLut.exit.thread

bb.bg:                                            ; preds = %bb.be
  %i.aim = and i32 %.0.lcssa.i.i, -4096
  %i.ain = and i32 %i.aik, 4095
  %i.aio = or disjoint i32 %i.ain, %i.aim
  store i32 %i.aio, ptr %i.dp, align 4
  %i.aip = add nsw i32 %.0209, 1
  br label %Abc_NodeSuperChoiceLut.exit.thread

Abc_NodeSuperChoiceLut.exit.thread:               ; preds = %bb.bc, %Abc_NodeDecomposeStep.exit.i, %._crit_edge.i145, %bb.aa, %bb.bg, %bb.n, %bb.w, %Abc_NodeLutMap.exit, %bb.r, %bb.bf
  %i.aiq = phi i32 [ %i.db, %bb.n ], [ %i.db, %bb.r ], [ %i.db, %Abc_NodeLutMap.exit ], [ %i.db, %bb.w ], [ %i.agf, %bb.bg ], [ %i.agf, %bb.bf ], [ %i.db, %bb.aa ], [ %i.db, %._crit_edge.i145 ], [ %i.ks, %Abc_NodeDecomposeStep.exit.i ], [ %i.ks, %bb.bc ]
  %.pre.i.i261 = phi i32 [ %.pre.i.i260, %bb.n ], [ %.pre.i.i260, %bb.r ], [ %.pre.i.i260, %Abc_NodeLutMap.exit ], [ %.pre.i.i260, %bb.w ], [ %.pre.i.i262, %bb.bg ], [ %.pre.i.i262, %bb.bf ], [ %.pre.i.i260, %bb.aa ], [ %.pre.i.i260, %._crit_edge.i145 ], [ %.fr, %Abc_NodeDecomposeStep.exit.i ], [ %.fr, %bb.bc ]
  %.pre429.i.i255 = phi i32 [ %.pre429.i.i254, %bb.n ], [ %.pre429.i.i254, %bb.r ], [ %.pre429.i.i254, %Abc_NodeLutMap.exit ], [ %.pre429.i.i254, %bb.w ], [ %.pre429.i.i256, %bb.bg ], [ %.pre429.i.i256, %bb.bf ], [ %.pre429.i.i254, %bb.aa ], [ %.pre429.i.i254, %._crit_edge.i145 ], [ %.pre429.i.i257, %Abc_NodeDecomposeStep.exit.i ], [ %.pre429.i.i257, %bb.bc ]
  %i.air = phi i32 [ %i.dc, %bb.n ], [ %i.dc, %bb.r ], [ %i.dc, %Abc_NodeLutMap.exit ], [ %i.dc, %bb.w ], [ %i.agg, %bb.bg ], [ %i.agg, %bb.bf ], [ %i.dc, %bb.aa ], [ %i.dc, %._crit_edge.i145 ], [ %i.po, %Abc_NodeDecomposeStep.exit.i ], [ %i.po, %bb.bc ]
  %.198 = phi i32 [ %.097206, %bb.n ], [ %.097206, %bb.r ], [ %i.dn, %Abc_NodeLutMap.exit ], [ %i.dn, %bb.w ], [ %i.dn, %bb.bg ], [ %i.dn, %bb.bf ], [ %i.dn, %bb.aa ], [ %i.dn, %._crit_edge.i145 ], [ %i.dn, %Abc_NodeDecomposeStep.exit.i ], [ %i.dn, %bb.bc ] ; 2 uses
  %.196 = phi i32 [ %.095207, %bb.n ], [ %.095207, %bb.r ], [ %.095207, %Abc_NodeLutMap.exit ], [ %.095207, %bb.w ], [ %i.fo, %bb.bg ], [ %i.fo, %bb.bf ], [ %i.fo, %bb.aa ], [ %i.fo, %._crit_edge.i145 ], [ %i.fo, %Abc_NodeDecomposeStep.exit.i ], [ %i.fo, %bb.bc ] ; 2 uses
  %.194 = phi i32 [ %.093208, %bb.n ], [ %.093208, %bb.r ], [ %.093208, %Abc_NodeLutMap.exit ], [ %.093208, %bb.w ], [ %i.aii, %bb.bg ], [ %i.aii, %bb.bf ], [ %.093208, %bb.aa ], [ %.093208, %._crit_edge.i145 ], [ %.093208, %Abc_NodeDecomposeStep.exit.i ], [ %.093208, %bb.bc ] ; 2 uses
  %.1 = phi i32 [ %.0209, %bb.n ], [ %.0209, %bb.r ], [ %.0209, %Abc_NodeLutMap.exit ], [ %.0209, %bb.w ], [ %i.aip, %bb.bg ], [ %.0209, %bb.bf ], [ %.0209, %bb.aa ], [ %.0209, %._crit_edge.i145 ], [ %.0209, %Abc_NodeDecomposeStep.exit.i ], [ %.0209, %bb.bc ] ; 2 uses
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %i.ais = load ptr, ptr %i.bu, align 8, !tbaa !51 ; 2 uses
  %i.ait = getelementptr i8, ptr %i.ais, i64 4
  %.val117 = load i32, ptr %i.ait, align 4, !tbaa !26
  %i.aiu = sext i32 %.val117 to i64
  %i.aiv = icmp slt i64 %indvars.iv.next243, %i.aiu
  br i1 %i.aiv, label %bb.n, label %.critedge5, !llvm.loop !171

.critedge5:                                       ; preds = %Extra_ProgressBarUpdate.exit, %Abc_NodeSuperChoiceLut.exit.thread, %Abc_NtkStartCutManForScl.exit
  %.097.lcssa = phi i32 [ 0, %Abc_NtkStartCutManForScl.exit ], [ %.198, %Abc_NodeSuperChoiceLut.exit.thread ], [ %.097206, %Extra_ProgressBarUpdate.exit ]
  %.095.lcssa = phi i32 [ 0, %Abc_NtkStartCutManForScl.exit ], [ %.196, %Abc_NodeSuperChoiceLut.exit.thread ], [ %.095207, %Extra_ProgressBarUpdate.exit ]
  %.093.lcssa = phi i32 [ 0, %Abc_NtkStartCutManForScl.exit ], [ %.194, %Abc_NodeSuperChoiceLut.exit.thread ], [ %.093208, %Extra_ProgressBarUpdate.exit ]
  %.0.lcssa = phi i32 [ 0, %Abc_NtkStartCutManForScl.exit ], [ %.1, %Abc_NodeSuperChoiceLut.exit.thread ], [ %.0209, %Extra_ProgressBarUpdate.exit ]
  tail call void @Extra_ProgressBarStop(ptr noundef %i.cr) #18
  %i.aiw = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %.not.i151 = icmp eq ptr %i.aiw, null
  br i1 %.not.i151, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.critedge5
  tail call void @free(ptr noundef nonnull %i.aiw) #18
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.critedge5
  %i.aix = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %.not14.i = icmp eq ptr %i.aix, null
  br i1 %.not14.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @free(ptr noundef nonnull %i.aix) #18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.aiy = load ptr, ptr %i.ag, align 8, !tbaa !41 ; 2 uses
  %.not15.i = icmp eq ptr %i.aiy, null
  br i1 %.not15.i, label %Abc_ManSclStop.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @free(ptr noundef nonnull %i.aiy) #18
  br label %Abc_ManSclStop.exit

Abc_ManSclStop.exit:                              ; preds = %bb.bk, %bb.bl
  tail call void @free(ptr noundef nonnull %calloc.i) #18
  tail call void @Abc_NtkManCutStop(ptr noundef %i.cl) #18
  tail call void @Cut_ManStop(ptr noundef %i.bw) #18
  %i.aiz = getelementptr i8, ptr %0, i64 64
  %.val129 = load ptr, ptr %i.aiz, align 8, !tbaa !172 ; 2 uses
  %i.aja = getelementptr i8, ptr %.val129, i64 4
  %.val129.val = load i32, ptr %i.aja, align 4, !tbaa !26 ; 2 uses
  %i.ajb = icmp sgt i32 %.val129.val, 0
  br i1 %i.ajb, label %.lr.ph220, label %.critedge7

.lr.ph220:                                        ; preds = %Abc_ManSclStop.exit
  %i.ajc = getelementptr i8, ptr %.val129, i64 8
  %.val130.val = load ptr, ptr %i.ajc, align 8, !tbaa !29
  %wide.trip.count = zext nneg i32 %.val129.val to i64
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph220, %bb.bo
  %indvars.iv245 = phi i64 [ 0, %.lr.ph220 ], [ %indvars.iv.next246, %bb.bo ] ; 2 uses
end_hunk_0
