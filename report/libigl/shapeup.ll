inline.NumInlined: 5991
inline.NumDeleted: 2888
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN3igl22shapeup_precomputationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EESJ_SF_RKNS7_IT2_EESN_RNS_11ShapeupDataE:bb.a
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !18
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !18
  %i.fr = add nsw i64 %.05.i.i.i.i.i.i.i.i.i192, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i193.3 = icmp eq i64 %i.fr, %i.eg
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i193.3, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i191, !llvm.loop !273

.lr.ph.i.i.i.i.i.i.i.i194:                        ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i194
  %.011.i.i.i.i.i.i.i.i195 = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i194 ], [ 0, %bb.h ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.011.i.i.i.i.i.i.i.i195
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.011.i.i.i.i.i.i.i.i195
  %i.fu = load <2 x i64>, ptr %i.ft, align 16, !tbaa !15
  store <2 x i64> %i.fu, ptr %i.fs, align 16, !tbaa !15
  %i.fv = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i195, 4 ; 2 uses
  %i.fw = icmp slt i64 %i.fv, %i.ei
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i.i.i.i194, label %._crit_edge.i.i.i.i.i.i.i.i190, !llvm.loop !274

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i191.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i191, %middle.block1346, %._crit_edge.i.i.i.i.i.i.i.i190
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.fy = load ptr, ptr %4, align 8, !tbaa !14    ; 8 uses
  %i.fz = ptrtoaddr ptr %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !9  ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !9
  %.not.i.i.i.i.i.i.i.i197 = icmp eq i64 %i.gd, %i.gb
  br i1 %.not.i.i.i.i.i.i.i.i197, label %bb.i, label %thread-pre-split.i.i.i.i.i.i.i198

thread-pre-split.i.i.i.i.i.i.i198:                ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 noundef %i.gb, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i199 = load i64, ptr %i.gc, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i198, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit
  %i.ge = phi i64 [ %.pr.i.i.i.i.i.i.i199, %thread-pre-split.i.i.i.i.i.i.i198 ], [ %i.gb, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit ] ; 7 uses
  %i.gf = load ptr, ptr %i.fx, align 8, !tbaa !14 ; 8 uses
  %i.gg = ptrtoaddr ptr %i.gf to i64
  %i.gh = sdiv i64 %i.ge, 4                       ; 2 uses
  %i.gi = shl nsw i64 %i.gh, 2                    ; 5 uses
  %i.gj = icmp sgt i64 %i.ge, 3
  br i1 %i.gj, label %.lr.ph.i.i.i.i.i.i.i.i204, label %._crit_edge.i.i.i.i.i.i.i.i200

._crit_edge.i.i.i.i.i.i.i.i200:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i204, %bb.i
  %i.gk = icmp slt i64 %i.gi, %i.ge
  br i1 %i.gk, label %.lr.ph.i.i.i.i.i.i.i.i.i201.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit206

.lr.ph.i.i.i.i.i.i.i.i.i201.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i200
  %i.gl = shl nsw i64 %i.gh, 2
  %i.gm = sub i64 %i.ge, %i.gl                    ; 3 uses
  %min.iters.check1352 = icmp ult i64 %i.gm, 8
  %i.gn = sub i64 %i.fz, %i.gg
  %diff.check1350 = icmp ugt i64 %i.gn, -32
  %or.cond1586 = select i1 %min.iters.check1352, i1 true, i1 %diff.check1350
  br i1 %or.cond1586, label %.lr.ph.i.i.i.i.i.i.i.i.i201.preheader1731, label %vector.ph1353

vector.ph1353:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i201.preheader
  %n.vec1354 = and i64 %i.gm, -8                  ; 3 uses
  %i.go = add i64 %i.gi, %n.vec1354
  br label %vector.body1355

vector.body1355:                                  ; preds = %vector.body1355, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1359, %vector.body1355 ] ; 2 uses
  %i.gp = add i64 %i.gi, %index1356               ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.gp ; 2 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.gp ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load1357 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !18
  %wide.load1358 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x i32> %wide.load1357, ptr %i.gq, align 4, !tbaa !18
  store <4 x i32> %wide.load1358, ptr %i.gt, align 4, !tbaa !18
  %index.next1359 = add nuw i64 %index1356, 8     ; 2 uses
  %i.gu = icmp eq i64 %index.next1359, %n.vec1354
  br i1 %i.gu, label %middle.block1360, label %vector.body1355, !llvm.loop !275

middle.block1360:                                 ; preds = %vector.body1355
  %cmp.n1361 = icmp eq i64 %i.gm, %n.vec1354
  br i1 %cmp.n1361, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit206, label %.lr.ph.i.i.i.i.i.i.i.i.i201.preheader1731

.lr.ph.i.i.i.i.i.i.i.i.i201.preheader1731:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i201.preheader, %middle.block1360
  %.05.i.i.i.i.i.i.i.i.i202.ph = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.i.i201.preheader ], [ %i.go, %middle.block1360 ] ; 4 uses
  %i.gv = sub i64 %i.ge, %.05.i.i.i.i.i.i.i.i.i202.ph
  %xtraiter1741 = and i64 %i.gv, 3                ; 2 uses
  %lcmp.mod1742.not = icmp eq i64 %xtraiter1741, 0
  br i1 %lcmp.mod1742.not, label %.lr.ph.i.i.i.i.i.i.i.i.i201.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i201.prol

.lr.ph.i.i.i.i.i.i.i.i.i201.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i201.preheader1731, %.lr.ph.i.i.i.i.i.i.i.i.i201.prol
  %.05.i.i.i.i.i.i.i.i.i202.prol = phi i64 [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.i.i201.prol ], [ %.05.i.i.i.i.i.i.i.i.i202.ph, %.lr.ph.i.i.i.i.i.i.i.i.i201.preheader1731 ] ; 3 uses
  %prol.iter1743 = phi i64 [ %prol.iter1743.next, %.lr.ph.i.i.i.i.i.i.i.i.i201.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i201.preheader1731 ]
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %.05.i.i.i.i.i.i.i.i.i202.prol
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %.05.i.i.i.i.i.i.i.i.i202.prol
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !18
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !18
  %i.gz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i202.prol, 1 ; 2 uses
  %prol.iter1743.next = add i64 %prol.iter1743, 1 ; 2 uses
  %prol.iter1743.cmp.not = icmp eq i64 %prol.iter1743.next, %xtraiter1741
  br i1 %prol.iter1743.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i201.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i201.prol, !llvm.loop !276

.lr.ph.i.i.i.i.i.i.i.i.i201.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i201.prol, %.lr.ph.i.i.i.i.i.i.i.i.i201.preheader1731
  %.05.i.i.i.i.i.i.i.i.i202.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i202.ph, %.lr.ph.i.i.i.i.i.i.i.i.i201.preheader1731 ], [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.i.i201.prol ]
  %i.ha = sub i64 %.05.i.i.i.i.i.i.i.i.i202.ph, %i.ge
  %i.hb = icmp ugt i64 %i.ha, -4
  br i1 %i.hb, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit206, label %.lr.ph.i.i.i.i.i.i.i.i.i201

.lr.ph.i.i.i.i.i.i.i.i.i201:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i201.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i201
  %.05.i.i.i.i.i.i.i.i.i202 = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i201 ], [ %.05.i.i.i.i.i.i.i.i.i202.unr, %.lr.ph.i.i.i.i.i.i.i.i.i201.prol.loopexit ] ; 6 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %.05.i.i.i.i.i.i.i.i.i202
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %.05.i.i.i.i.i.i.i.i.i202
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !18
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !18
  %i.hf = add nsw i64 %.05.i.i.i.i.i.i.i.i.i202, 1 ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.hf
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.hf
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !18
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !18
  %i.hj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i202, 2 ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.hj
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.hj
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !18
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !18
  %i.hn = add nsw i64 %.05.i.i.i.i.i.i.i.i.i202, 3 ; 2 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.hn
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.hn
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !18
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !18
  %i.hr = add nsw i64 %.05.i.i.i.i.i.i.i.i.i202, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i203.3 = icmp eq i64 %i.hr, %i.ge
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i203.3, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit206, label %.lr.ph.i.i.i.i.i.i.i.i.i201, !llvm.loop !277

.lr.ph.i.i.i.i.i.i.i.i204:                        ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i204
  %.011.i.i.i.i.i.i.i.i205 = phi i64 [ %i.hv, %.lr.ph.i.i.i.i.i.i.i.i204 ], [ 0, %bb.i ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.011.i.i.i.i.i.i.i.i205
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.011.i.i.i.i.i.i.i.i205
  %i.hu = load <2 x i64>, ptr %i.ht, align 16, !tbaa !15
  store <2 x i64> %i.hu, ptr %i.hs, align 16, !tbaa !15
  %i.hv = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i205, 4 ; 2 uses
  %i.hw = icmp slt i64 %i.hv, %i.gi
  br i1 %i.hw, label %.lr.ph.i.i.i.i.i.i.i.i204, label %._crit_edge.i.i.i.i.i.i.i.i200, !llvm.loop !270

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit206: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i201.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i201, %middle.block1360, %._crit_edge.i.i.i.i.i.i.i.i200
  %i.hx = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 3 uses
  %i.hy = load i64, ptr %i.bo, align 8, !tbaa !9  ; 13 uses
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit206
  %i.ia = load ptr, ptr %1, align 8, !tbaa !14    ; 10 uses
  %i.ib = sdiv i64 %i.hy, 8
  %i.ic = shl nsw i64 %i.ib, 3                    ; 3 uses
  %i.id = sdiv i64 %i.hy, 4                       ; 2 uses
  %i.ie = shl nsw i64 %i.id, 2                    ; 5 uses
  %.off.i.i.i = add i64 %i.hy, 3
  %.not.i.i.i = icmp ult i64 %.off.i.i.i, 7
  br i1 %.not.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.if = load <2 x i64>, ptr %i.ia, align 16, !tbaa !15 ; 2 uses
  %i.ig = icmp sgt i64 %i.hy, 7
  br i1 %i.ig, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ii = load <4 x i32>, ptr %i.ih, align 16, !tbaa !15 ; 2 uses
  %i.ij = bitcast <2 x i64> %i.if to <4 x i32>    ; 2 uses
  %i.ik = icmp samesign ugt i64 %i.hy, 15
  br i1 %i.ik, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.l
  %.lcssa.i.i.i = phi <4 x i32> [ %i.ii, %bb.l ], [ %i.iv, %.lr.ph.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i = phi <4 x i32> [ %i.ij, %bb.l ], [ %i.ir, %.lr.ph.i.i.i ]
  %i.il = add <4 x i32> %.sroa.064.0.lcssa.i.i.i, %.lcssa.i.i.i ; 2 uses
  %i.im = bitcast <4 x i32> %i.il to <2 x i64>
  %i.in = icmp sgt i64 %i.ie, %i.ic
  br i1 %i.in, label %bb.m, label %bb.n

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %.05775.i.i.i = phi i64 [ %.057.i.i.i, %.lr.ph.i.i.i ], [ 8, %bb.l ] ; 3 uses
  %.057.in74.i.i.i = phi i64 [ %.05775.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.l ]
  %.sroa.064.073.i.i.i = phi <4 x i32> [ %i.ir, %.lr.ph.i.i.i ], [ %i.ij, %bb.l ]
  %i.io = phi <4 x i32> [ %i.iv, %.lr.ph.i.i.i ], [ %i.ii, %bb.l ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.05775.i.i.i
  %i.iq = load <4 x i32>, ptr %i.ip, align 16, !tbaa !15
  %i.ir = add <4 x i32> %i.iq, %.sroa.064.073.i.i.i ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.057.in74.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  %i.iu = load <4 x i32>, ptr %i.it, align 16, !tbaa !15
  %i.iv = add <4 x i32> %i.iu, %i.io              ; 2 uses
  %.057.i.i.i = add nuw nsw i64 %.05775.i.i.i, 8  ; 2 uses
  %i.iw = icmp slt i64 %.057.i.i.i, %i.ic
  br i1 %i.iw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !278

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.ic
  %i.iy = load <4 x i32>, ptr %i.ix, align 16, !tbaa !15
  %i.iz = add <4 x i32> %i.iy, %i.il
  %i.ja = bitcast <4 x i32> %i.iz to <2 x i64>
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i, %bb.k
  %.sroa.064.2.i.i.i = phi <2 x i64> [ %i.if, %bb.k ], [ %i.ja, %bb.m ], [ %i.im, %._crit_edge.i.i.i ] ; 2 uses
  %i.jb = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.jc = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32> ; 2 uses
  %i.jd = shufflevector <4 x i32> %i.jc, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.je = add <4 x i32> %i.jd, %i.jb              ; 2 uses
  %shift = shufflevector <4 x i32> %i.je, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.je, %shift
  %22 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jc) ; 2 uses
  %i.jf = icmp slt i64 %i.ie, %i.hy
  br i1 %i.jf, label %.lr.ph80.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph80.i.i.i.preheader:                         ; preds = %bb.n
  %i.jg = shl nsw i64 %i.id, 2
  %i.jh = sub i64 %i.hy, %i.jg                    ; 3 uses
  %min.iters.check1364 = icmp ult i64 %i.jh, 8
  br i1 %min.iters.check1364, label %.lr.ph80.i.i.i.preheader1724, label %vector.ph1365

vector.ph1365:                                    ; preds = %.lr.ph80.i.i.i.preheader
  %n.vec1366 = and i64 %i.jh, -8                  ; 3 uses
  %i.ji = add i64 %i.ie, %n.vec1366
  %i.jj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.jk = getelementptr [4 x i8], ptr %i.ia, i64 %i.ie
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1365
  %index1368 = phi i64 [ 0, %vector.ph1365 ], [ %index.next1372, %vector.body1367 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.jj, %vector.ph1365 ], [ %i.jn, %vector.body1367 ]
  %vec.phi1369 = phi <4 x i32> [ zeroinitializer, %vector.ph1365 ], [ %i.jo, %vector.body1367 ]
  %i.jl = getelementptr [4 x i8], ptr %i.jk, i64 %index1368 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %wide.load1370 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !18
  %wide.load1371 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !18
  %i.jn = add <4 x i32> %wide.load1370, %vec.phi  ; 2 uses
  %i.jo = add <4 x i32> %wide.load1371, %vec.phi1369 ; 2 uses
  %index.next1372 = add nuw i64 %index1368, 8     ; 2 uses
  %i.jp = icmp eq i64 %index.next1372, %n.vec1366
  br i1 %i.jp, label %middle.block1373, label %vector.body1367, !llvm.loop !279

middle.block1373:                                 ; preds = %vector.body1367
  %bin.rdx = add <4 x i32> %i.jo, %i.jn
  %i.jq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n1374 = icmp eq i64 %i.jh, %n.vec1366
  br i1 %cmp.n1374, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i.preheader1724

.lr.ph80.i.i.i.preheader1724:                     ; preds = %.lr.ph80.i.i.i.preheader, %middle.block1373
  %.05578.i.i.i.ph = phi i64 [ %i.ie, %.lr.ph80.i.i.i.preheader ], [ %i.ji, %middle.block1373 ]
  %.177.i.i.i.ph = phi i32 [ %22, %.lr.ph80.i.i.i.preheader ], [ %i.jq, %middle.block1373 ]
  br label %.lr.ph80.i.i.i

.lr.ph80.i.i.i:                                   ; preds = %.lr.ph80.i.i.i.preheader1724, %.lr.ph80.i.i.i
  %.05578.i.i.i = phi i64 [ %i.ju, %.lr.ph80.i.i.i ], [ %.05578.i.i.i.ph, %.lr.ph80.i.i.i.preheader1724 ] ; 2 uses
  %.177.i.i.i = phi i32 [ %i.jt, %.lr.ph80.i.i.i ], [ %.177.i.i.i.ph, %.lr.ph80.i.i.i.preheader1724 ]
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %.05578.i.i.i
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !18
  %i.jt = add nsw i32 %i.js, %.177.i.i.i          ; 2 uses
  %i.ju = add nsw i64 %.05578.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ju, %i.hy
  br i1 %exitcond.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i, !llvm.loop !280

bb.o:                                             ; preds = %bb.j
  %i.jv = load i32, ptr %i.ia, align 4, !tbaa !18 ; 3 uses
  %i.jw = icmp sgt i64 %i.hy, 1
  br i1 %i.jw, label %.lr.ph85.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph85.i.i.i.preheader:                         ; preds = %bb.o
  %i.jx = add nsw i64 %i.hy, -1                   ; 2 uses
  %min.iters.check1377 = icmp ult i64 %i.hy, 9
  br i1 %min.iters.check1377, label %.lr.ph85.i.i.i.preheader1720, label %vector.ph1378

vector.ph1378:                                    ; preds = %.lr.ph85.i.i.i.preheader
  %n.vec1379 = and i64 %i.jx, -8                  ; 3 uses
  %i.jy = or disjoint i64 %n.vec1379, 1
  %i.jz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.jv, i64 0
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1386, %vector.body1380 ] ; 2 uses
  %vec.phi1382 = phi <4 x i32> [ %i.jz, %vector.ph1378 ], [ %i.kd, %vector.body1380 ]
  %vec.phi1383 = phi <4 x i32> [ zeroinitializer, %vector.ph1378 ], [ %i.ke, %vector.body1380 ]
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %index1381 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 20
  %wide.load1384 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !18
  %wide.load1385 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !18
  %i.kd = add <4 x i32> %wide.load1384, %vec.phi1382 ; 2 uses
  %i.ke = add <4 x i32> %wide.load1385, %vec.phi1383 ; 2 uses
  %index.next1386 = add nuw i64 %index1381, 8     ; 2 uses
  %i.kf = icmp eq i64 %index.next1386, %n.vec1379
  br i1 %i.kf, label %middle.block1387, label %vector.body1380, !llvm.loop !281

middle.block1387:                                 ; preds = %vector.body1380
  %bin.rdx1388 = add <4 x i32> %i.ke, %i.kd
  %i.kg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1388) ; 2 uses
  %cmp.n1389 = icmp eq i64 %i.jx, %n.vec1379
  br i1 %cmp.n1389, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i.preheader1720

.lr.ph85.i.i.i.preheader1720:                     ; preds = %.lr.ph85.i.i.i.preheader, %middle.block1387
  %.083.i.i.i.ph = phi i64 [ 1, %.lr.ph85.i.i.i.preheader ], [ %i.jy, %middle.block1387 ]
  %.282.i.i.i.ph = phi i32 [ %i.jv, %.lr.ph85.i.i.i.preheader ], [ %i.kg, %middle.block1387 ]
  br label %.lr.ph85.i.i.i

.lr.ph85.i.i.i:                                   ; preds = %.lr.ph85.i.i.i.preheader1720, %.lr.ph85.i.i.i
  %.083.i.i.i = phi i64 [ %i.kk, %.lr.ph85.i.i.i ], [ %.083.i.i.i.ph, %.lr.ph85.i.i.i.preheader1720 ] ; 2 uses
  %.282.i.i.i = phi i32 [ %i.kj, %.lr.ph85.i.i.i ], [ %.282.i.i.i.ph, %.lr.ph85.i.i.i.preheader1720 ]
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.083.i.i.i
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !18
  %i.kj = add nsw i32 %i.ki, %.282.i.i.i          ; 2 uses
  %i.kk = add nuw nsw i64 %.083.i.i.i, 1          ; 2 uses
  %exitcond92.not.i.i.i = icmp eq i64 %i.kk, %i.hy
  br i1 %exitcond92.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !282

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit: ; preds = %.lr.ph80.i.i.i, %.lr.ph85.i.i.i, %middle.block1373, %middle.block1387, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit206, %bb.n, %bb.o
  %.0.i = phi i32 [ 0, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit206 ], [ %i.kj, %.lr.ph85.i.i.i ], [ %i.jv, %bb.o ], [ %22, %bb.n ], [ %i.kg, %middle.block1387 ], [ %i.jq, %middle.block1373 ], [ %i.jt, %.lr.ph80.i.i.i ]
  %i.kl = sext i32 %.0.i to i64
  %i.km = load i64, ptr %i.c, align 8, !tbaa !34
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE18conservativeResizeEll(ptr noundef nonnull align 8 dereferenceable(72) %i.hx, i64 noundef %i.kl, i64 noundef %i.km)
  %i.kn = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 3 uses
  %i.ko = load i64, ptr %i.ga, align 8, !tbaa !9
  %i.kp = load i64, ptr %i.c, align 8, !tbaa !34
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE18conservativeResizeEll(ptr noundef nonnull align 8 dereferenceable(72) %i.kn, i64 noundef %i.ko, i64 noundef %i.kp)
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 264 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !25
  %i.kt = load i64, ptr %i.c, align 8, !tbaa !34
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE18conservativeResizeEll(ptr noundef nonnull align 8 dereferenceable(72) %i.kq, i64 noundef %i.ks, i64 noundef %i.kt)
  %i.ku = load i64, ptr %i.do, align 8, !tbaa !25 ; 2 uses
  %i.kv = icmp sgt i64 %i.ku, 0
  br i1 %i.kv, label %.lr.ph861.preheader, label %._crit_edge862

.lr.ph861.preheader:                              ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !14    ; 3 uses
  br label %.lr.ph861

._crit_edge862:                                   ; preds = %._crit_edge848, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit
  %.sroa.20.0.lcssa = phi ptr [ null, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit ], [ %.sroa.20.1.lcssa, %._crit_edge848 ] ; 4 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit ], [ %.sroa.11.1.lcssa, %._crit_edge848 ]
  %.sroa.0607.0.lcssa = phi ptr [ null, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit ], [ %.sroa.0607.1.lcssa, %._crit_edge848 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store ptr %.sroa.0607.0.lcssa, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr %.sroa.11.0.lcssa, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(72) %i.hx, ptr noundef nonnull align 1 dead_on_return %10)
          to label %bb.aa unwind label %bb.ab

.lr.ph861:                                        ; preds = %.lr.ph861.preheader, %._crit_edge848
  %i.kw = phi i64 [ %i.ku, %.lr.ph861.preheader ], [ %i.nq, %._crit_edge848 ]
  %i.kx = phi ptr [ %.pre, %.lr.ph861.preheader ], [ %i.nr, %._crit_edge848 ] ; 2 uses
  %i.ky = phi ptr [ %.pre, %.lr.ph861.preheader ], [ %i.ns, %._crit_edge848 ] ; 2 uses
  %i.kz = phi ptr [ %.pre, %.lr.ph861.preheader ], [ %i.nt, %._crit_edge848 ] ; 2 uses
  %indvars.iv1011 = phi i64 [ 0, %.lr.ph861.preheader ], [ %indvars.iv.next1012, %._crit_edge848 ] ; 6 uses
  %.0140860 = phi i32 [ 0, %.lr.ph861.preheader ], [ %i.nu, %._crit_edge848 ] ; 2 uses
  %.sroa.0607.0858 = phi ptr [ null, %.lr.ph861.preheader ], [ %.sroa.0607.1.lcssa, %._crit_edge848 ] ; 2 uses
  %.sroa.11.0857 = phi ptr [ null, %.lr.ph861.preheader ], [ %.sroa.11.1.lcssa, %._crit_edge848 ] ; 2 uses
  %.sroa.20.0856 = phi ptr [ null, %.lr.ph861.preheader ], [ %.sroa.20.1.lcssa, %._crit_edge848 ] ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv1011
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !18 ; 3 uses
  %i.lc = icmp sgt i32 %i.lb, 0
  br i1 %i.lc, label %.preheader678.preheader, label %._crit_edge848

.preheader678.preheader:                          ; preds = %.lr.ph861
  %i.ld = uitofp nneg i32 %i.lb to double
  %i.le = fdiv double 1.000000e+00, %i.ld         ; 2 uses
  %i.lf = fneg double %i.le                       ; 2 uses
  %i.lg = fsub double 1.000000e+00, %i.le         ; 2 uses
  %i.lh = zext i32 %.0140860 to i64
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv1011
  %.pre1029 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !18
  br label %.preheader678

.preheader678:                                    ; preds = %.preheader678.preheader, %._crit_edge
  %i.li = phi ptr [ %i.kx, %.preheader678.preheader ], [ %i.lr, %._crit_edge ] ; 2 uses
  %i.lj = phi i32 [ %.pre1029, %.preheader678.preheader ], [ %i.lq, %._crit_edge ]
  %indvars.iv1008 = phi i64 [ 0, %.preheader678.preheader ], [ %indvars.iv.next1009, %._crit_edge ] ; 4 uses
  %.sroa.0607.1846 = phi ptr [ %.sroa.0607.0858, %.preheader678.preheader ], [ %.sroa.0607.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.11.1845 = phi ptr [ %.sroa.11.0857, %.preheader678.preheader ], [ %.sroa.11.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.20.1844 = phi ptr [ %.sroa.20.0856, %.preheader678.preheader ], [ %.sroa.20.2.lcssa, %._crit_edge ] ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %.lr.ph, label %.preheader678.._crit_edge_crit_edge

.preheader678.._crit_edge_crit_edge:              ; preds = %.preheader678
  %.phi.trans.insert1030 = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv1011
  %.pre1031 = load i32, ptr %.phi.trans.insert1030, align 4, !tbaa !18 ; 2 uses
  %.pre1067 = sext i32 %.pre1031 to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader678
  %i.ll = add nuw i64 %indvars.iv1008, %i.lh      ; 4 uses
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = trunc i64 %i.ll to i32
  %i.lo = trunc i64 %i.ll to i32
  %i.lp = trunc i64 %i.ll to i32
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit, %.preheader678.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre1067, %.preheader678.._crit_edge_crit_edge ], [ %i.no, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ]
  %i.lq = phi i32 [ %.pre1031, %.preheader678.._crit_edge_crit_edge ], [ %i.nn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.lr = phi ptr [ %i.li, %.preheader678.._crit_edge_crit_edge ], [ %i.nl, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %.sroa.20.2.lcssa = phi ptr [ %.sroa.20.1844, %.preheader678.._crit_edge_crit_edge ], [ %.sroa.20.3, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.sroa.11.2.lcssa = phi ptr [ %.sroa.11.1845, %.preheader678.._crit_edge_crit_edge ], [ %.sroa.11.3, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.sroa.0607.2.lcssa = phi ptr [ %.sroa.0607.1846, %.preheader678.._crit_edge_crit_edge ], [ %.sroa.0607.3, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1 ; 2 uses
  %i.ls = icmp slt i64 %indvars.iv.next1009, %.pre-phi
  br i1 %i.ls, label %.preheader678, label %._crit_edge848.loopexit, !llvm.loop !283

bb.p:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.sroa.0607.2840 = phi ptr [ %.sroa.0607.1846, %.lr.ph ], [ %.sroa.0607.3, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit ] ; 16 uses
end_hunk_0
begin_hunk_1_@_ZN3igl22shapeup_precomputationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EESJ_SF_RKNS7_IT2_EESN_RNS_11ShapeupDataE:bb.a
  %.sroa.26.1885 = phi ptr [ %.sroa.26.5, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289 ], [ %.sroa.26.0895, %.preheader656 ] ; 2 uses
  %i.sd = add nsw i32 %.0113888, %.1141898        ; 4 uses
  %i.se = load double, ptr %i.rr, align 8, !tbaa !315
  %i.sf = load ptr, ptr %5, align 8, !tbaa !316
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv1020
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !35
  %i.si = fmul double %i.se, %i.sh                ; 2 uses
  %.not.i.i274 = icmp eq ptr %.sroa.13.1886, %.sroa.26.1885
  br i1 %.not.i.i274, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph889
  store i32 %i.sd, ptr %.sroa.13.1886, align 8, !tbaa !18
  %.sroa.6512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.1886, i64 4
  store i32 %i.sd, ptr %.sroa.6512.0..sroa_idx, align 4, !tbaa !18
  %.sroa.7515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.1886, i64 8
  store double %i.si, ptr %.sroa.7515.0..sroa_idx, align 8, !tbaa !35
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289

bb.ax:                                            ; preds = %.lr.ph889
  %i.sj = ptrtoint ptr %.sroa.13.1886 to i64
  %i.sk = ptrtoint ptr %.sroa.0518.1887 to i64
  %i.sl = sub i64 %i.sj, %i.sk                    ; 4 uses
  %i.sm = icmp eq i64 %i.sl, 9223372036854775792
  br i1 %i.sm, label %bb.ay, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i275

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #28
          to label %.noexc287 unwind label %.loopexit.split-lp658

.noexc287:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i275: ; preds = %bb.ax
  %i.sn = ashr exact i64 %i.sl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i276 = call i64 @llvm.umax.i64(i64 %i.sn, i64 1)
  %i.so = add nsw i64 %.sroa.speculated.i.i.i.i276, %i.sn ; 2 uses
  %i.sp = icmp ult i64 %i.so, %i.sn
  %i.sq = call i64 @llvm.umin.i64(i64 %i.so, i64 576460752303423487)
  %i.sr = select i1 %i.sp, i64 576460752303423487, i64 %i.sq ; 3 uses
  %.not.i.i.i.i277 = icmp ne i64 %i.sr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i277)
  %i.ss = shl nuw nsw i64 %i.sr, 4
  %i.st = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ss) #31
          to label %.noexc288 unwind label %.loopexit657 ; 5 uses

.noexc288:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i275
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.sl ; 3 uses
  store i32 %i.sd, ptr %i.su, align 8, !tbaa !18
  %.sroa.6512.0..sroa_idx513 = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  store i32 %i.sd, ptr %.sroa.6512.0..sroa_idx513, align 4, !tbaa !18
  %.sroa.7515.0..sroa_idx516 = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store double %i.si, ptr %.sroa.7515.0..sroa_idx516, align 8, !tbaa !35
  %.not10.i.i.i.i.i.i278 = icmp eq ptr %.sroa.0518.1887, %.sroa.13.1886
  br i1 %.not10.i.i.i.i.i.i278, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i283, label %.lr.ph.i.i.i.i.i.i279

.lr.ph.i.i.i.i.i.i279:                            ; preds = %.noexc288, %.lr.ph.i.i.i.i.i.i279
  %.012.i.i.i.i.i.i280 = phi ptr [ %i.sw, %.lr.ph.i.i.i.i.i.i279 ], [ %i.st, %.noexc288 ] ; 2 uses
  %.0911.i.i.i.i.i.i281 = phi ptr [ %i.sv, %.lr.ph.i.i.i.i.i.i279 ], [ %.sroa.0518.1887, %.noexc288 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i280, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i281, i64 16, i1 false), !tbaa.struct !285, !alias.scope !317
  %i.sv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i281, i64 16 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i280, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i282 = icmp eq ptr %i.sv, %.sroa.13.1886
  br i1 %.not.i.i.i.i.i.i282, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i283, label %.lr.ph.i.i.i.i.i.i279, !llvm.loop !290

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i283: ; preds = %.lr.ph.i.i.i.i.i.i279, %.noexc288
  %.0.lcssa.i.i.i.i.i.i284 = phi ptr [ %i.st, %.noexc288 ], [ %i.sw, %.lr.ph.i.i.i.i.i.i279 ]
  %.not.i23.i.i.i285 = icmp eq ptr %.sroa.0518.1887, null
  br i1 %.not.i23.i.i.i285, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i283
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0518.1887, i64 noundef %i.sl) #32
  %.pre1038.pre = load ptr, ptr %1, align 8, !tbaa !14
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286: ; preds = %bb.az, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i283
  %.pre1038 = phi ptr [ %.pre1038.pre, %bb.az ], [ %.pre10381058, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i283 ] ; 2 uses
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.st, i64 %i.sr
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286, %bb.aw
  %.pre10381059 = phi ptr [ %.pre1038, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286 ], [ %.pre10381058, %bb.aw ] ; 2 uses
  %i.sy = phi ptr [ %.pre1038, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286 ], [ %i.sc, %bb.aw ] ; 4 uses
  %.sroa.26.5 = phi ptr [ %i.sx, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286 ], [ %.sroa.26.1885, %bb.aw ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i284.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i284, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286 ], [ %.sroa.13.1886, %bb.aw ]
  %.sroa.0518.5 = phi ptr [ %i.st, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286 ], [ %.sroa.0518.1887, %bb.aw ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i284.pn, i64 16 ; 2 uses
  %i.sz = add nuw nsw i32 %.0113888, 1            ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %indvars.iv1020
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !18 ; 2 uses
  %i.tc = icmp slt i32 %i.sz, %i.tb
  br i1 %i.tc, label %.lr.ph889, label %._crit_edge890.loopexit, !llvm.loop !321

.loopexit657:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i275
  %lpad.loopexit659 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp658:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp660 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

._crit_edge890.loopexit:                          ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit289
  %.pre1039 = load i64, ptr %i.bo, align 8, !tbaa !9
  br label %._crit_edge890

._crit_edge890:                                   ; preds = %._crit_edge890.loopexit, %.preheader656
  %.pre10381057 = phi ptr [ %.pre10381056, %.preheader656 ], [ %.pre10381059, %._crit_edge890.loopexit ]
  %i.td = phi i64 [ %i.rs, %.preheader656 ], [ %.pre1039, %._crit_edge890.loopexit ] ; 2 uses
  %i.te = phi ptr [ %i.rt, %.preheader656 ], [ %i.sy, %._crit_edge890.loopexit ]
  %i.tf = phi ptr [ %i.ru, %.preheader656 ], [ %i.sy, %._crit_edge890.loopexit ]
  %.sroa.26.1.lcssa = phi ptr [ %.sroa.26.0895, %.preheader656 ], [ %.sroa.26.5, %._crit_edge890.loopexit ] ; 2 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0896, %.preheader656 ], [ %.sroa.13.4, %._crit_edge890.loopexit ] ; 2 uses
  %.sroa.0518.1.lcssa = phi ptr [ %.sroa.0518.0897, %.preheader656 ], [ %.sroa.0518.5, %._crit_edge890.loopexit ] ; 2 uses
  %.lcssa735 = phi i32 [ %i.rw, %.preheader656 ], [ %i.tb, %._crit_edge890.loopexit ]
  %i.tg = add nsw i32 %.lcssa735, %.1141898
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 1 ; 2 uses
  %i.th = icmp sgt i64 %i.td, %indvars.iv.next1021
  br i1 %i.th, label %.preheader656, label %.preheader650, !llvm.loop !322

.preheader:                                       ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351, %.preheader650
  %.sroa.26.2.lcssa = phi ptr [ %.sroa.26.0.lcssa, %.preheader650 ], [ %.sroa.26.6, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351 ] ; 2 uses
  %.sroa.13.2.lcssa = phi ptr [ %.sroa.13.0.lcssa, %.preheader650 ], [ %.sroa.13.5, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351 ] ; 2 uses
  %.sroa.0518.2.lcssa = phi ptr [ %.sroa.0518.0.lcssa, %.preheader650 ], [ %.sroa.0518.6, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351 ] ; 2 uses
  %i.ti = load i64, ptr %i.kr, align 8, !tbaa !25 ; 4 uses
  %i.tj = icmp sgt i64 %i.ti, 0
  br i1 %i.tj, label %.lr.ph915, label %._crit_edge916

.lr.ph915:                                        ; preds = %.preheader
  %i.tk = getelementptr inbounds nuw i8, ptr %7, i64 112
  br label %bb.bv

bb.ba:                                            ; preds = %.lr.ph907, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351
  %.pre10401061 = phi i64 [ %i.ry, %.lr.ph907 ], [ %.pre10401062, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351 ] ; 2 uses
  %i.tl = phi i64 [ %i.ry, %.lr.ph907 ], [ %i.yz, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351 ]
  %indvars.iv1023 = phi i64 [ 0, %.lr.ph907 ], [ %indvars.iv.next1024, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351 ] ; 2 uses
  %.sroa.0518.2905 = phi ptr [ %.sroa.0518.0.lcssa, %.lr.ph907 ], [ %.sroa.0518.6, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351 ] ; 8 uses
  %.sroa.13.2904 = phi ptr [ %.sroa.13.0.lcssa, %.lr.ph907 ], [ %.sroa.13.5, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351 ] ; 10 uses
  %.sroa.26.2903 = phi ptr [ %.sroa.26.0.lcssa, %.lr.ph907 ], [ %.sroa.26.6, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351 ] ; 2 uses
  %i.tm = load i64, ptr %i.bo, align 8, !tbaa !9  ; 21 uses
  %i.tn = icmp eq i64 %i.tm, 0
  %i.to = trunc nuw nsw i64 %indvars.iv1023 to i32 ; 5 uses
  br i1 %i.tn, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit335, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.tp = load ptr, ptr %1, align 8, !tbaa !14    ; 19 uses
  %i.tq = sdiv i64 %i.tm, 8
  %i.tr = shl nsw i64 %i.tq, 3                    ; 6 uses
  %i.ts = sdiv i64 %i.tm, 4                       ; 3 uses
  %i.tt = shl nsw i64 %i.ts, 2                    ; 10 uses
  %.off.i.i.i290 = add i64 %i.tm, 3
  %.not.i.i.i291 = icmp ult i64 %.off.i.i.i290, 7
  br i1 %.not.i.i.i291, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.tu = load <2 x i64>, ptr %i.tp, align 16     ; 2 uses
  %i.tv = icmp sgt i64 %i.tm, 7
  br i1 %i.tv, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tx = load <4 x i32>, ptr %i.tw, align 16, !tbaa !15 ; 2 uses
  %i.ty = bitcast <2 x i64> %i.tu to <4 x i32>    ; 2 uses
  %i.tz = icmp samesign ugt i64 %i.tm, 15
  br i1 %i.tz, label %.lr.ph.i.i.i303, label %._crit_edge.i.i.i300

._crit_edge.i.i.i300:                             ; preds = %.lr.ph.i.i.i303, %bb.bd
  %.lcssa.i.i.i301 = phi <4 x i32> [ %i.tx, %bb.bd ], [ %i.uk, %.lr.ph.i.i.i303 ]
  %.sroa.064.0.lcssa.i.i.i302 = phi <4 x i32> [ %i.ty, %bb.bd ], [ %i.ug, %.lr.ph.i.i.i303 ]
  %i.ua = add <4 x i32> %.sroa.064.0.lcssa.i.i.i302, %.lcssa.i.i.i301 ; 2 uses
  %i.ub = bitcast <4 x i32> %i.ua to <2 x i64>
  %i.uc = icmp sgt i64 %i.tt, %i.tr
  br i1 %i.uc, label %bb.be, label %bb.bf

.lr.ph.i.i.i303:                                  ; preds = %bb.bd, %.lr.ph.i.i.i303
  %.05775.i.i.i304 = phi i64 [ %.057.i.i.i307, %.lr.ph.i.i.i303 ], [ 8, %bb.bd ] ; 3 uses
  %.057.in74.i.i.i305 = phi i64 [ %.05775.i.i.i304, %.lr.ph.i.i.i303 ], [ 0, %bb.bd ]
  %.sroa.064.073.i.i.i306 = phi <4 x i32> [ %i.ug, %.lr.ph.i.i.i303 ], [ %i.ty, %bb.bd ]
  %i.ud = phi <4 x i32> [ %i.uk, %.lr.ph.i.i.i303 ], [ %i.tx, %bb.bd ]
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.05775.i.i.i304
  %i.uf = load <4 x i32>, ptr %i.ue, align 16, !tbaa !15
  %i.ug = add <4 x i32> %i.uf, %.sroa.064.073.i.i.i306 ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.057.in74.i.i.i305
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 48
  %i.uj = load <4 x i32>, ptr %i.ui, align 16, !tbaa !15
  %i.uk = add <4 x i32> %i.uj, %i.ud              ; 2 uses
  %.057.i.i.i307 = add nuw nsw i64 %.05775.i.i.i304, 8 ; 2 uses
  %i.ul = icmp slt i64 %.057.i.i.i307, %i.tr
  br i1 %i.ul, label %.lr.ph.i.i.i303, label %._crit_edge.i.i.i300, !llvm.loop !278

bb.be:                                            ; preds = %._crit_edge.i.i.i300
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.tr
  %i.un = load <4 x i32>, ptr %i.um, align 16, !tbaa !15
  %i.uo = add <4 x i32> %i.un, %i.ua
  %i.up = bitcast <4 x i32> %i.uo to <2 x i64>
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge.i.i.i300, %bb.bc
  %.sroa.064.2.i.i.i292 = phi <2 x i64> [ %i.tu, %bb.bc ], [ %i.up, %bb.be ], [ %i.ub, %._crit_edge.i.i.i300 ] ; 2 uses
  %i.uq = bitcast <2 x i64> %.sroa.064.2.i.i.i292 to <4 x i32>
  %i.ur = bitcast <2 x i64> %.sroa.064.2.i.i.i292 to <4 x i32> ; 2 uses
  %i.us = shufflevector <4 x i32> %i.ur, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ut = add <4 x i32> %i.us, %i.uq              ; 2 uses
  %shift1588 = shufflevector <4 x i32> %i.ut, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1589 = add nsw <4 x i32> %i.ut, %shift1588
  %23 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ur) ; 2 uses
  %i.uu = icmp slt i64 %i.tt, %i.tm
  br i1 %i.uu, label %.lr.ph80.i.i.i296.preheader, label %.loopexit1156

.lr.ph80.i.i.i296.preheader:                      ; preds = %bb.bf
  %i.uv = shl nsw i64 %i.ts, 2
  %i.uw = sub i64 %i.tm, %i.uv                    ; 3 uses
  %min.iters.check1441 = icmp ult i64 %i.uw, 8
  br i1 %min.iters.check1441, label %.lr.ph80.i.i.i296.preheader1657, label %vector.ph1442

vector.ph1442:                                    ; preds = %.lr.ph80.i.i.i296.preheader
  %n.vec1443 = and i64 %i.uw, -8                  ; 3 uses
  %i.ux = add i64 %i.tt, %n.vec1443
  %i.uy = shufflevector <4 x i32> %foldExtExtBinop1589, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.uz = getelementptr [4 x i8], ptr %i.tp, i64 %i.tt
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %vector.ph1442
  %index1445 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1450, %vector.body1444 ] ; 2 uses
  %vec.phi1446 = phi <4 x i32> [ %i.uy, %vector.ph1442 ], [ %i.vc, %vector.body1444 ]
  %vec.phi1447 = phi <4 x i32> [ zeroinitializer, %vector.ph1442 ], [ %i.vd, %vector.body1444 ]
  %i.va = getelementptr [4 x i8], ptr %i.uz, i64 %index1445 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %wide.load1448 = load <4 x i32>, ptr %i.va, align 4, !tbaa !18
  %wide.load1449 = load <4 x i32>, ptr %i.vb, align 4, !tbaa !18
  %i.vc = add <4 x i32> %wide.load1448, %vec.phi1446 ; 2 uses
  %i.vd = add <4 x i32> %wide.load1449, %vec.phi1447 ; 2 uses
  %index.next1450 = add nuw i64 %index1445, 8     ; 2 uses
  %i.ve = icmp eq i64 %index.next1450, %n.vec1443
  br i1 %i.ve, label %middle.block1451, label %vector.body1444, !llvm.loop !323

middle.block1451:                                 ; preds = %vector.body1444
  %bin.rdx1452 = add <4 x i32> %i.vd, %i.vc
  %i.vf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1452) ; 2 uses
  %cmp.n1453 = icmp eq i64 %i.uw, %n.vec1443
  br i1 %cmp.n1453, label %.loopexit1156, label %.lr.ph80.i.i.i296.preheader1657

.lr.ph80.i.i.i296.preheader1657:                  ; preds = %.lr.ph80.i.i.i296.preheader, %middle.block1451
  %.05578.i.i.i297.ph = phi i64 [ %i.tt, %.lr.ph80.i.i.i296.preheader ], [ %i.ux, %middle.block1451 ]
  %.177.i.i.i298.ph = phi i32 [ %23, %.lr.ph80.i.i.i296.preheader ], [ %i.vf, %middle.block1451 ]
  br label %.lr.ph80.i.i.i296

.lr.ph80.i.i.i296:                                ; preds = %.lr.ph80.i.i.i296.preheader1657, %.lr.ph80.i.i.i296
  %.05578.i.i.i297 = phi i64 [ %i.vj, %.lr.ph80.i.i.i296 ], [ %.05578.i.i.i297.ph, %.lr.ph80.i.i.i296.preheader1657 ] ; 2 uses
  %.177.i.i.i298 = phi i32 [ %i.vi, %.lr.ph80.i.i.i296 ], [ %.177.i.i.i298.ph, %.lr.ph80.i.i.i296.preheader1657 ]
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %.05578.i.i.i297
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !18
  %i.vi = add nsw i32 %i.vh, %.177.i.i.i298       ; 2 uses
  %i.vj = add nsw i64 %.05578.i.i.i297, 1         ; 2 uses
  %exitcond.not.i.i.i299 = icmp eq i64 %i.vj, %i.tm
  br i1 %exitcond.not.i.i.i299, label %.loopexit1156, label %.lr.ph80.i.i.i296, !llvm.loop !324

bb.bg:                                            ; preds = %bb.bb
  %i.vk = load i32, ptr %i.tp, align 4, !tbaa !18 ; 6 uses
  %i.vl = icmp sgt i64 %i.tm, 1
  br i1 %i.vl, label %.lr.ph85.i.i.i308.preheader, label %bb.bk

.lr.ph85.i.i.i308.preheader:                      ; preds = %bb.bg
  %i.vm = add nsw i64 %i.tm, -1                   ; 2 uses
  %min.iters.check1409 = icmp ult i64 %i.tm, 9
  br i1 %min.iters.check1409, label %.lr.ph85.i.i.i308.preheader1654, label %vector.ph1410

vector.ph1410:                                    ; preds = %.lr.ph85.i.i.i308.preheader
  %n.vec1411 = and i64 %i.vm, -8                  ; 3 uses
  %i.vn = or disjoint i64 %n.vec1411, 1
  %i.vo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.vk, i64 0
  br label %vector.body1412

vector.body1412:                                  ; preds = %vector.body1412, %vector.ph1410
  %index1413 = phi i64 [ 0, %vector.ph1410 ], [ %index.next1418, %vector.body1412 ] ; 2 uses
  %vec.phi1414 = phi <4 x i32> [ %i.vo, %vector.ph1410 ], [ %i.vs, %vector.body1412 ]
  %vec.phi1415 = phi <4 x i32> [ zeroinitializer, %vector.ph1410 ], [ %i.vt, %vector.body1412 ]
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %index1413 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 20
  %wide.load1416 = load <4 x i32>, ptr %i.vq, align 4, !tbaa !18
  %wide.load1417 = load <4 x i32>, ptr %i.vr, align 4, !tbaa !18
  %i.vs = add <4 x i32> %wide.load1416, %vec.phi1414 ; 2 uses
  %i.vt = add <4 x i32> %wide.load1417, %vec.phi1415 ; 2 uses
  %index.next1418 = add nuw i64 %index1413, 8     ; 2 uses
  %i.vu = icmp eq i64 %index.next1418, %n.vec1411
  br i1 %i.vu, label %middle.block1419, label %vector.body1412, !llvm.loop !325

middle.block1419:                                 ; preds = %vector.body1412
  %bin.rdx1420 = add <4 x i32> %i.vt, %i.vs
  %i.vv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1420) ; 2 uses
  %cmp.n1421 = icmp eq i64 %i.vm, %n.vec1411
  br i1 %cmp.n1421, label %.lr.ph85.i.i.i331.preheader, label %.lr.ph85.i.i.i308.preheader1654

.lr.ph85.i.i.i308.preheader1654:                  ; preds = %.lr.ph85.i.i.i308.preheader, %middle.block1419
  %.083.i.i.i309.ph = phi i64 [ 1, %.lr.ph85.i.i.i308.preheader ], [ %i.vn, %middle.block1419 ]
  %.282.i.i.i310.ph = phi i32 [ %i.vk, %.lr.ph85.i.i.i308.preheader ], [ %i.vv, %middle.block1419 ]
  br label %.lr.ph85.i.i.i308

.lr.ph85.i.i.i308:                                ; preds = %.lr.ph85.i.i.i308.preheader1654, %.lr.ph85.i.i.i308
  %.083.i.i.i309 = phi i64 [ %i.vz, %.lr.ph85.i.i.i308 ], [ %.083.i.i.i309.ph, %.lr.ph85.i.i.i308.preheader1654 ] ; 2 uses
  %.282.i.i.i310 = phi i32 [ %i.vy, %.lr.ph85.i.i.i308 ], [ %.282.i.i.i310.ph, %.lr.ph85.i.i.i308.preheader1654 ]
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.083.i.i.i309
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !18
  %i.vy = add nsw i32 %i.vx, %.282.i.i.i310       ; 2 uses
  %i.vz = add nuw nsw i64 %.083.i.i.i309, 1       ; 2 uses
  %exitcond92.not.i.i.i311 = icmp eq i64 %i.vz, %i.tm
  br i1 %exitcond92.not.i.i.i311, label %.lr.ph85.i.i.i331.preheader, label %.lr.ph85.i.i.i308, !llvm.loop !326

.loopexit1156:                                    ; preds = %.lr.ph80.i.i.i296, %middle.block1451, %bb.bf
  %.0.i295.ph = phi i32 [ %23, %bb.bf ], [ %i.vf, %middle.block1451 ], [ %i.vi, %.lr.ph80.i.i.i296 ]
  %i.wa = add nsw i32 %.0.i295.ph, %i.to          ; 3 uses
  %i.wb = load <2 x i64>, ptr %i.tp, align 16, !tbaa !15 ; 2 uses
  %i.wc = icmp sgt i64 %i.tm, 7
  br i1 %i.wc, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %.loopexit1156
  %i.wd = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.we = load <4 x i32>, ptr %i.wd, align 16, !tbaa !15 ; 2 uses
  %i.wf = bitcast <2 x i64> %i.wb to <4 x i32>    ; 2 uses
  %i.wg = icmp samesign ugt i64 %i.tm, 15
  br i1 %i.wg, label %.lr.ph.i.i.i326, label %._crit_edge.i.i.i323

._crit_edge.i.i.i323:                             ; preds = %.lr.ph.i.i.i326, %bb.bh
  %.lcssa.i.i.i324 = phi <4 x i32> [ %i.we, %bb.bh ], [ %i.wr, %.lr.ph.i.i.i326 ]
  %.sroa.064.0.lcssa.i.i.i325 = phi <4 x i32> [ %i.wf, %bb.bh ], [ %i.wn, %.lr.ph.i.i.i326 ]
  %i.wh = add <4 x i32> %.sroa.064.0.lcssa.i.i.i325, %.lcssa.i.i.i324 ; 2 uses
  %i.wi = bitcast <4 x i32> %i.wh to <2 x i64>
  %i.wj = icmp sgt i64 %i.tt, %i.tr
  br i1 %i.wj, label %bb.bi, label %bb.bj

.lr.ph.i.i.i326:                                  ; preds = %bb.bh, %.lr.ph.i.i.i326
  %.05775.i.i.i327 = phi i64 [ %.057.i.i.i330, %.lr.ph.i.i.i326 ], [ 8, %bb.bh ] ; 3 uses
  %.057.in74.i.i.i328 = phi i64 [ %.05775.i.i.i327, %.lr.ph.i.i.i326 ], [ 0, %bb.bh ]
  %.sroa.064.073.i.i.i329 = phi <4 x i32> [ %i.wn, %.lr.ph.i.i.i326 ], [ %i.wf, %bb.bh ]
  %i.wk = phi <4 x i32> [ %i.wr, %.lr.ph.i.i.i326 ], [ %i.we, %bb.bh ]
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.05775.i.i.i327
  %i.wm = load <4 x i32>, ptr %i.wl, align 16, !tbaa !15
  %i.wn = add <4 x i32> %i.wm, %.sroa.064.073.i.i.i329 ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.057.in74.i.i.i328
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 48
  %i.wq = load <4 x i32>, ptr %i.wp, align 16, !tbaa !15
  %i.wr = add <4 x i32> %i.wq, %i.wk              ; 2 uses
  %.057.i.i.i330 = add nuw nsw i64 %.05775.i.i.i327, 8 ; 2 uses
  %i.ws = icmp slt i64 %.057.i.i.i330, %i.tr
  br i1 %i.ws, label %.lr.ph.i.i.i326, label %._crit_edge.i.i.i323, !llvm.loop !278

bb.bi:                                            ; preds = %._crit_edge.i.i.i323
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.tr
  %i.wu = load <4 x i32>, ptr %i.wt, align 16, !tbaa !15
  %i.wv = add <4 x i32> %i.wu, %i.wh
  %i.ww = bitcast <4 x i32> %i.wv to <2 x i64>
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge.i.i.i323, %.loopexit1156
  %.sroa.064.2.i.i.i315 = phi <2 x i64> [ %i.wb, %.loopexit1156 ], [ %i.ww, %bb.bi ], [ %i.wi, %._crit_edge.i.i.i323 ] ; 2 uses
  %i.wx = bitcast <2 x i64> %.sroa.064.2.i.i.i315 to <4 x i32>
  %i.wy = bitcast <2 x i64> %.sroa.064.2.i.i.i315 to <4 x i32> ; 2 uses
  %i.wz = shufflevector <4 x i32> %i.wy, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.xa = add <4 x i32> %i.wz, %i.wx              ; 2 uses
  %shift1591 = shufflevector <4 x i32> %i.xa, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1592 = add nsw <4 x i32> %i.xa, %shift1591
  %24 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.wy) ; 2 uses
  %i.xb = icmp slt i64 %i.tt, %i.tm
  br i1 %i.xb, label %.lr.ph80.i.i.i319.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit335

.lr.ph80.i.i.i319.preheader:                      ; preds = %bb.bj
  %i.xc = shl nsw i64 %i.ts, 2
  %i.xd = sub i64 %i.tm, %i.xc                    ; 3 uses
  %min.iters.check1425 = icmp ult i64 %i.xd, 8
  br i1 %min.iters.check1425, label %.lr.ph80.i.i.i319.preheader1655, label %vector.ph1426

vector.ph1426:                                    ; preds = %.lr.ph80.i.i.i319.preheader
  %n.vec1427 = and i64 %i.xd, -8                  ; 3 uses
  %i.xe = add i64 %i.tt, %n.vec1427
  %i.xf = shufflevector <4 x i32> %foldExtExtBinop1592, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.xg = getelementptr [4 x i8], ptr %i.tp, i64 %i.tt
  br label %vector.body1428

vector.body1428:                                  ; preds = %vector.body1428, %vector.ph1426
  %index1429 = phi i64 [ 0, %vector.ph1426 ], [ %index.next1434, %vector.body1428 ] ; 2 uses
  %vec.phi1430 = phi <4 x i32> [ %i.xf, %vector.ph1426 ], [ %i.xj, %vector.body1428 ]
  %vec.phi1431 = phi <4 x i32> [ zeroinitializer, %vector.ph1426 ], [ %i.xk, %vector.body1428 ]
  %i.xh = getelementptr [4 x i8], ptr %i.xg, i64 %index1429 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %wide.load1432 = load <4 x i32>, ptr %i.xh, align 4, !tbaa !18
  %wide.load1433 = load <4 x i32>, ptr %i.xi, align 4, !tbaa !18
  %i.xj = add <4 x i32> %wide.load1432, %vec.phi1430 ; 2 uses
  %i.xk = add <4 x i32> %wide.load1433, %vec.phi1431 ; 2 uses
  %index.next1434 = add nuw i64 %index1429, 8     ; 2 uses
  %i.xl = icmp eq i64 %index.next1434, %n.vec1427
  br i1 %i.xl, label %middle.block1435, label %vector.body1428, !llvm.loop !327

middle.block1435:                                 ; preds = %vector.body1428
  %bin.rdx1436 = add <4 x i32> %i.xk, %i.xj
  %i.xm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1436) ; 2 uses
  %cmp.n1437 = icmp eq i64 %i.xd, %n.vec1427
  br i1 %cmp.n1437, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit335, label %.lr.ph80.i.i.i319.preheader1655

.lr.ph80.i.i.i319.preheader1655:                  ; preds = %.lr.ph80.i.i.i319.preheader, %middle.block1435
  %.05578.i.i.i320.ph = phi i64 [ %i.tt, %.lr.ph80.i.i.i319.preheader ], [ %i.xe, %middle.block1435 ]
  %.177.i.i.i321.ph = phi i32 [ %24, %.lr.ph80.i.i.i319.preheader ], [ %i.xm, %middle.block1435 ]
  br label %.lr.ph80.i.i.i319

.lr.ph80.i.i.i319:                                ; preds = %.lr.ph80.i.i.i319.preheader1655, %.lr.ph80.i.i.i319
  %.05578.i.i.i320 = phi i64 [ %i.xq, %.lr.ph80.i.i.i319 ], [ %.05578.i.i.i320.ph, %.lr.ph80.i.i.i319.preheader1655 ] ; 2 uses
  %.177.i.i.i321 = phi i32 [ %i.xp, %.lr.ph80.i.i.i319 ], [ %.177.i.i.i321.ph, %.lr.ph80.i.i.i319.preheader1655 ]
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %.05578.i.i.i320
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !18
  %i.xp = add nsw i32 %i.xo, %.177.i.i.i321       ; 2 uses
  %i.xq = add nsw i64 %.05578.i.i.i320, 1         ; 2 uses
  %exitcond.not.i.i.i322 = icmp eq i64 %i.xq, %i.tm
  br i1 %exitcond.not.i.i.i322, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit335, label %.lr.ph80.i.i.i319, !llvm.loop !328

bb.bk:                                            ; preds = %bb.bg
  %i.xr = add nsw i32 %i.vk, %i.to
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit335

.lr.ph85.i.i.i331.preheader:                      ; preds = %.lr.ph85.i.i.i308, %middle.block1419
  %.lcssa1268 = phi i32 [ %i.vv, %middle.block1419 ], [ %i.vy, %.lr.ph85.i.i.i308 ]
  %i.xs = add nsw i32 %.lcssa1268, %i.to          ; 2 uses
  %i.xt = add nsw i64 %i.tm, -1                   ; 2 uses
  %min.iters.check1393 = icmp ult i64 %i.tm, 9
  br i1 %min.iters.check1393, label %.lr.ph85.i.i.i331.preheader1653, label %vector.ph1394

vector.ph1394:                                    ; preds = %.lr.ph85.i.i.i331.preheader
  %n.vec1395 = and i64 %i.xt, -8                  ; 3 uses
  %i.xu = or disjoint i64 %n.vec1395, 1
  %i.xv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.vk, i64 0
  br label %vector.body1396

vector.body1396:                                  ; preds = %vector.body1396, %vector.ph1394
  %index1397 = phi i64 [ 0, %vector.ph1394 ], [ %index.next1402, %vector.body1396 ] ; 2 uses
  %vec.phi1398 = phi <4 x i32> [ %i.xv, %vector.ph1394 ], [ %i.xz, %vector.body1396 ]
  %vec.phi1399 = phi <4 x i32> [ zeroinitializer, %vector.ph1394 ], [ %i.ya, %vector.body1396 ]
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %index1397 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 4
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 20
  %wide.load1400 = load <4 x i32>, ptr %i.xx, align 4, !tbaa !18
  %wide.load1401 = load <4 x i32>, ptr %i.xy, align 4, !tbaa !18
  %i.xz = add <4 x i32> %wide.load1400, %vec.phi1398 ; 2 uses
  %i.ya = add <4 x i32> %wide.load1401, %vec.phi1399 ; 2 uses
  %index.next1402 = add nuw i64 %index1397, 8     ; 2 uses
  %i.yb = icmp eq i64 %index.next1402, %n.vec1395
  br i1 %i.yb, label %middle.block1403, label %vector.body1396, !llvm.loop !329

middle.block1403:                                 ; preds = %vector.body1396
  %bin.rdx1404 = add <4 x i32> %i.ya, %i.xz
  %i.yc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1404) ; 2 uses
  %cmp.n1405 = icmp eq i64 %i.xt, %n.vec1395
  br i1 %cmp.n1405, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit335, label %.lr.ph85.i.i.i331.preheader1653

.lr.ph85.i.i.i331.preheader1653:                  ; preds = %.lr.ph85.i.i.i331.preheader, %middle.block1403
  %.083.i.i.i332.ph = phi i64 [ 1, %.lr.ph85.i.i.i331.preheader ], [ %i.xu, %middle.block1403 ]
  %.282.i.i.i333.ph = phi i32 [ %i.vk, %.lr.ph85.i.i.i331.preheader ], [ %i.yc, %middle.block1403 ]
  br label %.lr.ph85.i.i.i331

.lr.ph85.i.i.i331:                                ; preds = %.lr.ph85.i.i.i331.preheader1653, %.lr.ph85.i.i.i331
  %.083.i.i.i332 = phi i64 [ %i.yg, %.lr.ph85.i.i.i331 ], [ %.083.i.i.i332.ph, %.lr.ph85.i.i.i331.preheader1653 ] ; 2 uses
  %.282.i.i.i333 = phi i32 [ %i.yf, %.lr.ph85.i.i.i331 ], [ %.282.i.i.i333.ph, %.lr.ph85.i.i.i331.preheader1653 ]
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.083.i.i.i332
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !18
  %i.yf = add nsw i32 %i.ye, %.282.i.i.i333       ; 2 uses
  %i.yg = add nuw nsw i64 %.083.i.i.i332, 1       ; 2 uses
  %exitcond92.not.i.i.i334 = icmp eq i64 %i.yg, %i.tm
  br i1 %exitcond92.not.i.i.i334, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit335, label %.lr.ph85.i.i.i331, !llvm.loop !330

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit335: ; preds = %.lr.ph80.i.i.i319, %.lr.ph85.i.i.i331, %middle.block1435, %middle.block1403, %bb.bk, %bb.ba, %bb.bj
  %i.yh = phi i32 [ %i.xs, %middle.block1403 ], [ %i.to, %bb.ba ], [ %i.xr, %bb.bk ], [ %i.wa, %bb.bj ], [ %i.wa, %middle.block1435 ], [ %i.xs, %.lr.ph85.i.i.i331 ], [ %i.wa, %.lr.ph80.i.i.i319 ] ; 2 uses
  %.0.i318 = phi i32 [ %i.yc, %middle.block1403 ], [ 0, %bb.ba ], [ %i.vk, %bb.bk ], [ %24, %bb.bj ], [ %i.xm, %middle.block1435 ], [ %i.yf, %.lr.ph85.i.i.i331 ], [ %i.xp, %.lr.ph80.i.i.i319 ]
  %i.yi = add nsw i32 %.0.i318, %i.to             ; 2 uses
  %i.yj = load double, ptr %i.sa, align 8, !tbaa !35 ; 2 uses
  %.not.i.i336 = icmp eq ptr %.sroa.13.2904, %.sroa.26.2903
  br i1 %.not.i.i336, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit335
  store i32 %i.yh, ptr %.sroa.13.2904, align 8, !tbaa !18
  %.sroa.6501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.2904, i64 4
  store i32 %i.yi, ptr %.sroa.6501.0..sroa_idx, align 4, !tbaa !18
  %.sroa.7504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.2904, i64 8
  store double %i.yj, ptr %.sroa.7504.0..sroa_idx, align 8, !tbaa !35
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351

bb.bm:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit335
  %i.yk = ptrtoint ptr %.sroa.13.2904 to i64
  %i.yl = ptrtoint ptr %.sroa.0518.2905 to i64
  %i.ym = sub i64 %i.yk, %i.yl                    ; 4 uses
  %i.yn = icmp eq i64 %i.ym, 9223372036854775792
  br i1 %i.yn, label %bb.bn, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i337

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #28
          to label %.noexc349 unwind label %.loopexit.split-lp652

.noexc349:                                        ; preds = %bb.bn
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i337: ; preds = %bb.bm
  %i.yo = ashr exact i64 %i.ym, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i338 = call i64 @llvm.umax.i64(i64 %i.yo, i64 1)
  %i.yp = add nsw i64 %.sroa.speculated.i.i.i.i338, %i.yo ; 2 uses
  %i.yq = icmp ult i64 %i.yp, %i.yo
  %i.yr = call i64 @llvm.umin.i64(i64 %i.yp, i64 576460752303423487)
  %i.ys = select i1 %i.yq, i64 576460752303423487, i64 %i.yr ; 3 uses
  %.not.i.i.i.i339 = icmp ne i64 %i.ys, 0
  call void @llvm.assume(i1 %.not.i.i.i.i339)
  %i.yt = shl nuw nsw i64 %i.ys, 4
  %i.yu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yt) #31
          to label %.noexc350 unwind label %.loopexit651 ; 5 uses

.noexc350:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i337
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 %i.ym ; 3 uses
  store i32 %i.yh, ptr %i.yv, align 8, !tbaa !18
  %.sroa.6501.0..sroa_idx502 = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  store i32 %i.yi, ptr %.sroa.6501.0..sroa_idx502, align 4, !tbaa !18
  %.sroa.7504.0..sroa_idx505 = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  store double %i.yj, ptr %.sroa.7504.0..sroa_idx505, align 8, !tbaa !35
  %.not10.i.i.i.i.i.i340 = icmp eq ptr %.sroa.0518.2905, %.sroa.13.2904
  br i1 %.not10.i.i.i.i.i.i340, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i345, label %.lr.ph.i.i.i.i.i.i341

.lr.ph.i.i.i.i.i.i341:                            ; preds = %.noexc350, %.lr.ph.i.i.i.i.i.i341
  %.012.i.i.i.i.i.i342 = phi ptr [ %i.yx, %.lr.ph.i.i.i.i.i.i341 ], [ %i.yu, %.noexc350 ] ; 2 uses
  %.0911.i.i.i.i.i.i343 = phi ptr [ %i.yw, %.lr.ph.i.i.i.i.i.i341 ], [ %.sroa.0518.2905, %.noexc350 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i342, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i343, i64 16, i1 false), !tbaa.struct !285, !alias.scope !331
  %i.yw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i343, i64 16 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i342, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i344 = icmp eq ptr %i.yw, %.sroa.13.2904
  br i1 %.not.i.i.i.i.i.i344, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i345, label %.lr.ph.i.i.i.i.i.i341, !llvm.loop !290

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i345: ; preds = %.lr.ph.i.i.i.i.i.i341, %.noexc350
  %.0.lcssa.i.i.i.i.i.i346 = phi ptr [ %i.yu, %.noexc350 ], [ %i.yx, %.lr.ph.i.i.i.i.i.i341 ]
  %.not.i23.i.i.i347 = icmp eq ptr %.sroa.0518.2905, null
  br i1 %.not.i23.i.i.i347, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i348, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0518.2905, i64 noundef %i.ym) #32
  %.pre1040.pre = load i64, ptr %i.ga, align 8, !tbaa !9
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i348

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i348: ; preds = %bb.bo, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i345
  %.pre1040 = phi i64 [ %.pre1040.pre, %bb.bo ], [ %.pre10401061, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i345 ] ; 2 uses
  %i.yy = getelementptr inbounds nuw [16 x i8], ptr %i.yu, i64 %i.ys
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit351: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i348, %bb.bl
  %.pre10401062 = phi i64 [ %.pre1040, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i348 ], [ %.pre10401061, %bb.bl ]
  %i.yz = phi i64 [ %.pre1040, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i348 ], [ %i.tl, %bb.bl ] ; 2 uses
  %.sroa.26.6 = phi ptr [ %i.yy, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i348 ], [ %.sroa.26.2903, %bb.bl ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i346.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i346, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i348 ], [ %.sroa.13.2904, %bb.bl ]
  %.sroa.0518.6 = phi ptr [ %i.yu, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i348 ], [ %.sroa.0518.2905, %bb.bl ] ; 2 uses
  %.sroa.13.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i346.pn, i64 16 ; 2 uses
  %indvars.iv.next1024 = add nuw nsw i64 %indvars.iv1023, 1 ; 2 uses
  %i.za = icmp sgt i64 %i.yz, %indvars.iv.next1024
  br i1 %i.za, label %bb.ba, label %.preheader, !llvm.loop !335

.loopexit651:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i337
  %lpad.loopexit653 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp652:                            ; preds = %bb.bn
  %lpad.loopexit.split-lp654 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

._crit_edge916:                                   ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436, %.preheader
  %.sroa.26.3.lcssa = phi ptr [ %.sroa.26.2.lcssa, %.preheader ], [ %.sroa.26.7, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436 ] ; 6 uses
  %.sroa.13.3.lcssa = phi ptr [ %.sroa.13.2.lcssa, %.preheader ], [ %.sroa.13.6, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436 ]
  %.sroa.0518.3.lcssa = phi ptr [ %.sroa.0518.2.lcssa, %.preheader ], [ %.sroa.0518.7, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436 ] ; 9 uses
  %.lcssa706 = phi i64 [ %i.ti, %.preheader ], [ %i.ahy, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436 ]
  %i.zb = getelementptr inbounds nuw i8, ptr %7, i64 552 ; 3 uses
  %i.zc = load i64, ptr %i.bo, align 8, !tbaa !9  ; 20 uses
  %i.zd = icmp eq i64 %i.zc, 0
  br i1 %i.zd, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459.sink.split, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge916
  %i.ze = load ptr, ptr %1, align 8, !tbaa !14    ; 19 uses
  %i.zf = sdiv i64 %i.zc, 8
  %i.zg = shl nsw i64 %i.zf, 3                    ; 6 uses
  %i.zh = sdiv i64 %i.zc, 4                       ; 3 uses
  %i.zi = shl nsw i64 %i.zh, 2                    ; 10 uses
  %.off.i.i.i352 = add i64 %i.zc, 3
  %.not.i.i.i353 = icmp ult i64 %.off.i.i.i352, 7
  br i1 %.not.i.i.i353, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.zj = load <2 x i64>, ptr %i.ze, align 16     ; 2 uses
  %i.zk = icmp sgt i64 %i.zc, 7
  br i1 %i.zk, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zm = load <4 x i32>, ptr %i.zl, align 16, !tbaa !15 ; 2 uses
  %i.zn = bitcast <2 x i64> %i.zj to <4 x i32>    ; 2 uses
  %i.zo = icmp samesign ugt i64 %i.zc, 15
  br i1 %i.zo, label %.lr.ph.i.i.i365, label %._crit_edge.i.i.i362

._crit_edge.i.i.i362:                             ; preds = %.lr.ph.i.i.i365, %bb.br
  %.lcssa.i.i.i363 = phi <4 x i32> [ %i.zm, %bb.br ], [ %i.zz, %.lr.ph.i.i.i365 ]
  %.sroa.064.0.lcssa.i.i.i364 = phi <4 x i32> [ %i.zn, %bb.br ], [ %i.zv, %.lr.ph.i.i.i365 ]
  %i.zp = add <4 x i32> %.sroa.064.0.lcssa.i.i.i364, %.lcssa.i.i.i363 ; 2 uses
  %i.zq = bitcast <4 x i32> %i.zp to <2 x i64>
  %i.zr = icmp sgt i64 %i.zi, %i.zg
  br i1 %i.zr, label %bb.bs, label %bb.bt

.lr.ph.i.i.i365:                                  ; preds = %bb.br, %.lr.ph.i.i.i365
  %.05775.i.i.i366 = phi i64 [ %.057.i.i.i369, %.lr.ph.i.i.i365 ], [ 8, %bb.br ] ; 3 uses
  %.057.in74.i.i.i367 = phi i64 [ %.05775.i.i.i366, %.lr.ph.i.i.i365 ], [ 0, %bb.br ]
  %.sroa.064.073.i.i.i368 = phi <4 x i32> [ %i.zv, %.lr.ph.i.i.i365 ], [ %i.zn, %bb.br ]
  %i.zs = phi <4 x i32> [ %i.zz, %.lr.ph.i.i.i365 ], [ %i.zm, %bb.br ]
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %.05775.i.i.i366
  %i.zu = load <4 x i32>, ptr %i.zt, align 16, !tbaa !15
  %i.zv = add <4 x i32> %i.zu, %.sroa.064.073.i.i.i368 ; 2 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %.057.in74.i.i.i367
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 48
  %i.zy = load <4 x i32>, ptr %i.zx, align 16, !tbaa !15
  %i.zz = add <4 x i32> %i.zy, %i.zs              ; 2 uses
  %.057.i.i.i369 = add nuw nsw i64 %.05775.i.i.i366, 8 ; 2 uses
  %i.aaa = icmp slt i64 %.057.i.i.i369, %i.zg
  br i1 %i.aaa, label %.lr.ph.i.i.i365, label %._crit_edge.i.i.i362, !llvm.loop !278

bb.bs:                                            ; preds = %._crit_edge.i.i.i362
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.zg
  %i.aac = load <4 x i32>, ptr %i.aab, align 16, !tbaa !15
  %i.aad = add <4 x i32> %i.aac, %i.zp
  %i.aae = bitcast <4 x i32> %i.aad to <2 x i64>
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %._crit_edge.i.i.i362, %bb.bq
  %.sroa.064.2.i.i.i354 = phi <2 x i64> [ %i.zj, %bb.bq ], [ %i.aae, %bb.bs ], [ %i.zq, %._crit_edge.i.i.i362 ] ; 2 uses
  %i.aaf = bitcast <2 x i64> %.sroa.064.2.i.i.i354 to <4 x i32>
  %i.aag = bitcast <2 x i64> %.sroa.064.2.i.i.i354 to <4 x i32> ; 2 uses
  %i.aah = shufflevector <4 x i32> %i.aag, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aai = add <4 x i32> %i.aah, %i.aaf           ; 2 uses
  %shift1594 = shufflevector <4 x i32> %i.aai, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1595 = add nsw <4 x i32> %i.aai, %shift1594
  %25 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aag) ; 2 uses
  %i.aaj = icmp slt i64 %i.zi, %i.zc
  br i1 %i.aaj, label %.lr.ph80.i.i.i358.preheader, label %.loopexit

.lr.ph80.i.i.i358.preheader:                      ; preds = %bb.bt
  %i.aak = shl nsw i64 %i.zh, 2
  %i.aal = sub i64 %i.zc, %i.aak                  ; 3 uses
  %min.iters.check1521 = icmp ult i64 %i.aal, 8
  br i1 %min.iters.check1521, label %.lr.ph80.i.i.i358.preheader1620, label %vector.ph1522

vector.ph1522:                                    ; preds = %.lr.ph80.i.i.i358.preheader
  %n.vec1523 = and i64 %i.aal, -8                 ; 3 uses
  %i.aam = add i64 %i.zi, %n.vec1523
  %i.aan = shufflevector <4 x i32> %foldExtExtBinop1595, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.aao = getelementptr [4 x i8], ptr %i.ze, i64 %i.zi
  br label %vector.body1524

vector.body1524:                                  ; preds = %vector.body1524, %vector.ph1522
  %index1525 = phi i64 [ 0, %vector.ph1522 ], [ %index.next1530, %vector.body1524 ] ; 2 uses
  %vec.phi1526 = phi <4 x i32> [ %i.aan, %vector.ph1522 ], [ %i.aar, %vector.body1524 ]
  %vec.phi1527 = phi <4 x i32> [ zeroinitializer, %vector.ph1522 ], [ %i.aas, %vector.body1524 ]
  %i.aap = getelementptr [4 x i8], ptr %i.aao, i64 %index1525 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  %wide.load1528 = load <4 x i32>, ptr %i.aap, align 4, !tbaa !18
  %wide.load1529 = load <4 x i32>, ptr %i.aaq, align 4, !tbaa !18
  %i.aar = add <4 x i32> %wide.load1528, %vec.phi1526 ; 2 uses
  %i.aas = add <4 x i32> %wide.load1529, %vec.phi1527 ; 2 uses
  %index.next1530 = add nuw i64 %index1525, 8     ; 2 uses
  %i.aat = icmp eq i64 %index.next1530, %n.vec1523
  br i1 %i.aat, label %middle.block1531, label %vector.body1524, !llvm.loop !336

middle.block1531:                                 ; preds = %vector.body1524
  %bin.rdx1532 = add <4 x i32> %i.aas, %i.aar
  %i.aau = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1532) ; 2 uses
  %cmp.n1533 = icmp eq i64 %i.aal, %n.vec1523
  br i1 %cmp.n1533, label %.loopexit, label %.lr.ph80.i.i.i358.preheader1620

.lr.ph80.i.i.i358.preheader1620:                  ; preds = %.lr.ph80.i.i.i358.preheader, %middle.block1531
  %.05578.i.i.i359.ph = phi i64 [ %i.zi, %.lr.ph80.i.i.i358.preheader ], [ %i.aam, %middle.block1531 ]
  %.177.i.i.i360.ph = phi i32 [ %25, %.lr.ph80.i.i.i358.preheader ], [ %i.aau, %middle.block1531 ]
  br label %.lr.ph80.i.i.i358

.lr.ph80.i.i.i358:                                ; preds = %.lr.ph80.i.i.i358.preheader1620, %.lr.ph80.i.i.i358
  %.05578.i.i.i359 = phi i64 [ %i.aay, %.lr.ph80.i.i.i358 ], [ %.05578.i.i.i359.ph, %.lr.ph80.i.i.i358.preheader1620 ] ; 2 uses
  %.177.i.i.i360 = phi i32 [ %i.aax, %.lr.ph80.i.i.i358 ], [ %.177.i.i.i360.ph, %.lr.ph80.i.i.i358.preheader1620 ]
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.ze, i64 %.05578.i.i.i359
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !18
  %i.aax = add nsw i32 %i.aaw, %.177.i.i.i360     ; 2 uses
  %i.aay = add nsw i64 %.05578.i.i.i359, 1        ; 2 uses
  %exitcond.not.i.i.i361 = icmp eq i64 %i.aay, %i.zc
  br i1 %exitcond.not.i.i.i361, label %.loopexit, label %.lr.ph80.i.i.i358, !llvm.loop !337

bb.bu:                                            ; preds = %bb.bp
  %i.aaz = load i32, ptr %i.ze, align 4, !tbaa !18 ; 5 uses
  %i.aba = icmp sgt i64 %i.zc, 1
  br i1 %i.aba, label %.lr.ph85.i.i.i370.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459.sink.split

.lr.ph85.i.i.i370.preheader:                      ; preds = %bb.bu
  %i.abb = add nsw i64 %i.zc, -1                  ; 4 uses
  %min.iters.check1553 = icmp ult i64 %i.zc, 9
  br i1 %min.iters.check1553, label %.lr.ph85.i.i.i370.preheader1609, label %vector.ph1554

vector.ph1554:                                    ; preds = %.lr.ph85.i.i.i370.preheader
  %n.vec1555 = and i64 %i.abb, -8                 ; 3 uses
  %i.abc = or disjoint i64 %n.vec1555, 1
  %i.abd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aaz, i64 0
  br label %vector.body1556

vector.body1556:                                  ; preds = %vector.body1556, %vector.ph1554
  %index1557 = phi i64 [ 0, %vector.ph1554 ], [ %index.next1562, %vector.body1556 ] ; 2 uses
  %vec.phi1558 = phi <4 x i32> [ %i.abd, %vector.ph1554 ], [ %i.abh, %vector.body1556 ]
  %vec.phi1559 = phi <4 x i32> [ zeroinitializer, %vector.ph1554 ], [ %i.abi, %vector.body1556 ]
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %index1557 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 4
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abe, i64 20
  %wide.load1560 = load <4 x i32>, ptr %i.abf, align 4, !tbaa !18
  %wide.load1561 = load <4 x i32>, ptr %i.abg, align 4, !tbaa !18
  %i.abh = add <4 x i32> %wide.load1560, %vec.phi1558 ; 2 uses
  %i.abi = add <4 x i32> %wide.load1561, %vec.phi1559 ; 2 uses
  %index.next1562 = add nuw i64 %index1557, 8     ; 2 uses
  %i.abj = icmp eq i64 %index.next1562, %n.vec1555
  br i1 %i.abj, label %middle.block1563, label %vector.body1556, !llvm.loop !338

middle.block1563:                                 ; preds = %vector.body1556
  %bin.rdx1564 = add <4 x i32> %i.abi, %i.abh
  %i.abk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1564) ; 2 uses
  %cmp.n1565 = icmp eq i64 %i.abb, %n.vec1555
  br i1 %cmp.n1565, label %.lr.ph85.i.i.i455.preheader, label %.lr.ph85.i.i.i370.preheader1609

.lr.ph85.i.i.i370.preheader1609:                  ; preds = %.lr.ph85.i.i.i370.preheader, %middle.block1563
  %.083.i.i.i371.ph = phi i64 [ 1, %.lr.ph85.i.i.i370.preheader ], [ %i.abc, %middle.block1563 ]
  %.282.i.i.i372.ph = phi i32 [ %i.aaz, %.lr.ph85.i.i.i370.preheader ], [ %i.abk, %middle.block1563 ]
  br label %.lr.ph85.i.i.i370

.lr.ph85.i.i.i370:                                ; preds = %.lr.ph85.i.i.i370.preheader1609, %.lr.ph85.i.i.i370
  %.083.i.i.i371 = phi i64 [ %i.abo, %.lr.ph85.i.i.i370 ], [ %.083.i.i.i371.ph, %.lr.ph85.i.i.i370.preheader1609 ] ; 2 uses
  %.282.i.i.i372 = phi i32 [ %i.abn, %.lr.ph85.i.i.i370 ], [ %.282.i.i.i372.ph, %.lr.ph85.i.i.i370.preheader1609 ]
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %.083.i.i.i371
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !18
  %i.abn = add nsw i32 %i.abm, %.282.i.i.i372     ; 2 uses
  %i.abo = add nuw nsw i64 %.083.i.i.i371, 1      ; 2 uses
  %exitcond92.not.i.i.i373 = icmp eq i64 %i.abo, %i.zc
  br i1 %exitcond92.not.i.i.i373, label %.lr.ph85.i.i.i455.preheader, label %.lr.ph85.i.i.i370, !llvm.loop !339

bb.bv:                                            ; preds = %.lr.ph915, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436
  %.pre10411064 = phi i64 [ %i.ti, %.lr.ph915 ], [ %.pre10411065, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436 ] ; 2 uses
  %i.abp = phi i64 [ %i.ti, %.lr.ph915 ], [ %i.ahy, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436 ]
  %indvars.iv1026 = phi i64 [ 0, %.lr.ph915 ], [ %indvars.iv.next1027, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436 ] ; 6 uses
  %.sroa.0518.3913 = phi ptr [ %.sroa.0518.2.lcssa, %.lr.ph915 ], [ %.sroa.0518.7, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436 ] ; 8 uses
  %.sroa.13.3912 = phi ptr [ %.sroa.13.2.lcssa, %.lr.ph915 ], [ %.sroa.13.6, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436 ] ; 10 uses
  %.sroa.26.3911 = phi ptr [ %.sroa.26.2.lcssa, %.lr.ph915 ], [ %.sroa.26.7, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436 ] ; 2 uses
  %i.abq = load i64, ptr %i.bo, align 8, !tbaa !9 ; 21 uses
  %i.abr = icmp eq i64 %i.abq, 0
  br i1 %i.abr, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit397, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abs = load ptr, ptr %1, align 8, !tbaa !14   ; 19 uses
  %i.abt = sdiv i64 %i.abq, 8
  %i.abu = shl nsw i64 %i.abt, 3                  ; 6 uses
  %i.abv = sdiv i64 %i.abq, 4                     ; 3 uses
  %i.abw = shl nsw i64 %i.abv, 2                  ; 10 uses
  %.off.i.i.i375 = add i64 %i.abq, 3
  %.not.i.i.i376 = icmp ult i64 %.off.i.i.i375, 7
  br i1 %.not.i.i.i376, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.abx = load <2 x i64>, ptr %i.abs, align 16   ; 2 uses
  %i.aby = icmp sgt i64 %i.abq, 7
  br i1 %i.aby, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %i.aca = load <4 x i32>, ptr %i.abz, align 16, !tbaa !15 ; 2 uses
  %i.acb = bitcast <2 x i64> %i.abx to <4 x i32>  ; 2 uses
  %i.acc = icmp samesign ugt i64 %i.abq, 15
  br i1 %i.acc, label %.lr.ph.i.i.i388, label %._crit_edge.i.i.i385

._crit_edge.i.i.i385:                             ; preds = %.lr.ph.i.i.i388, %bb.by
  %.lcssa.i.i.i386 = phi <4 x i32> [ %i.aca, %bb.by ], [ %i.acn, %.lr.ph.i.i.i388 ]
  %.sroa.064.0.lcssa.i.i.i387 = phi <4 x i32> [ %i.acb, %bb.by ], [ %i.acj, %.lr.ph.i.i.i388 ]
  %i.acd = add <4 x i32> %.sroa.064.0.lcssa.i.i.i387, %.lcssa.i.i.i386 ; 2 uses
  %i.ace = bitcast <4 x i32> %i.acd to <2 x i64>
  %i.acf = icmp sgt i64 %i.abw, %i.abu
  br i1 %i.acf, label %bb.bz, label %bb.ca

.lr.ph.i.i.i388:                                  ; preds = %bb.by, %.lr.ph.i.i.i388
  %.05775.i.i.i389 = phi i64 [ %.057.i.i.i392, %.lr.ph.i.i.i388 ], [ 8, %bb.by ] ; 3 uses
  %.057.in74.i.i.i390 = phi i64 [ %.05775.i.i.i389, %.lr.ph.i.i.i388 ], [ 0, %bb.by ]
  %.sroa.064.073.i.i.i391 = phi <4 x i32> [ %i.acj, %.lr.ph.i.i.i388 ], [ %i.acb, %bb.by ]
  %i.acg = phi <4 x i32> [ %i.acn, %.lr.ph.i.i.i388 ], [ %i.aca, %bb.by ]
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %.05775.i.i.i389
  %i.aci = load <4 x i32>, ptr %i.ach, align 16, !tbaa !15
  %i.acj = add <4 x i32> %i.aci, %.sroa.064.073.i.i.i391 ; 2 uses
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %.057.in74.i.i.i390
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 48
  %i.acm = load <4 x i32>, ptr %i.acl, align 16, !tbaa !15
  %i.acn = add <4 x i32> %i.acm, %i.acg           ; 2 uses
  %.057.i.i.i392 = add nuw nsw i64 %.05775.i.i.i389, 8 ; 2 uses
  %i.aco = icmp slt i64 %.057.i.i.i392, %i.abu
  br i1 %i.aco, label %.lr.ph.i.i.i388, label %._crit_edge.i.i.i385, !llvm.loop !278

bb.bz:                                            ; preds = %._crit_edge.i.i.i385
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %i.abu
  %i.acq = load <4 x i32>, ptr %i.acp, align 16, !tbaa !15
  %i.acr = add <4 x i32> %i.acq, %i.acd
  %i.acs = bitcast <4 x i32> %i.acr to <2 x i64>
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %._crit_edge.i.i.i385, %bb.bx
  %.sroa.064.2.i.i.i377 = phi <2 x i64> [ %i.abx, %bb.bx ], [ %i.acs, %bb.bz ], [ %i.ace, %._crit_edge.i.i.i385 ] ; 2 uses
  %i.act = bitcast <2 x i64> %.sroa.064.2.i.i.i377 to <4 x i32>
  %i.acu = bitcast <2 x i64> %.sroa.064.2.i.i.i377 to <4 x i32> ; 2 uses
  %i.acv = shufflevector <4 x i32> %i.acu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.acw = add <4 x i32> %i.acv, %i.act           ; 2 uses
  %shift1597 = shufflevector <4 x i32> %i.acw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1598 = add nsw <4 x i32> %i.acw, %shift1597
  %26 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.acu) ; 2 uses
  %i.acx = icmp slt i64 %i.abw, %i.abq
  br i1 %i.acx, label %.lr.ph80.i.i.i381.preheader, label %.loopexit1154

.lr.ph80.i.i.i381.preheader:                      ; preds = %bb.ca
  %i.acy = shl nsw i64 %i.abv, 2
  %i.acz = sub i64 %i.abq, %i.acy                 ; 3 uses
  %min.iters.check1505 = icmp ult i64 %i.acz, 8
  br i1 %min.iters.check1505, label %.lr.ph80.i.i.i381.preheader1630, label %vector.ph1506

vector.ph1506:                                    ; preds = %.lr.ph80.i.i.i381.preheader
  %n.vec1507 = and i64 %i.acz, -8                 ; 3 uses
  %i.ada = add i64 %i.abw, %n.vec1507
  %i.adb = shufflevector <4 x i32> %foldExtExtBinop1598, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.adc = getelementptr [4 x i8], ptr %i.abs, i64 %i.abw
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %vector.ph1506
  %index1509 = phi i64 [ 0, %vector.ph1506 ], [ %index.next1514, %vector.body1508 ] ; 2 uses
  %vec.phi1510 = phi <4 x i32> [ %i.adb, %vector.ph1506 ], [ %i.adf, %vector.body1508 ]
  %vec.phi1511 = phi <4 x i32> [ zeroinitializer, %vector.ph1506 ], [ %i.adg, %vector.body1508 ]
  %i.add = getelementptr [4 x i8], ptr %i.adc, i64 %index1509 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 16
  %wide.load1512 = load <4 x i32>, ptr %i.add, align 4, !tbaa !18
  %wide.load1513 = load <4 x i32>, ptr %i.ade, align 4, !tbaa !18
  %i.adf = add <4 x i32> %wide.load1512, %vec.phi1510 ; 2 uses
  %i.adg = add <4 x i32> %wide.load1513, %vec.phi1511 ; 2 uses
  %index.next1514 = add nuw i64 %index1509, 8     ; 2 uses
  %i.adh = icmp eq i64 %index.next1514, %n.vec1507
  br i1 %i.adh, label %middle.block1515, label %vector.body1508, !llvm.loop !340

middle.block1515:                                 ; preds = %vector.body1508
  %bin.rdx1516 = add <4 x i32> %i.adg, %i.adf
  %i.adi = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1516) ; 2 uses
  %cmp.n1517 = icmp eq i64 %i.acz, %n.vec1507
  br i1 %cmp.n1517, label %.loopexit1154, label %.lr.ph80.i.i.i381.preheader1630

.lr.ph80.i.i.i381.preheader1630:                  ; preds = %.lr.ph80.i.i.i381.preheader, %middle.block1515
  %.05578.i.i.i382.ph = phi i64 [ %i.abw, %.lr.ph80.i.i.i381.preheader ], [ %i.ada, %middle.block1515 ]
  %.177.i.i.i383.ph = phi i32 [ %26, %.lr.ph80.i.i.i381.preheader ], [ %i.adi, %middle.block1515 ]
  br label %.lr.ph80.i.i.i381

.lr.ph80.i.i.i381:                                ; preds = %.lr.ph80.i.i.i381.preheader1630, %.lr.ph80.i.i.i381
  %.05578.i.i.i382 = phi i64 [ %i.adm, %.lr.ph80.i.i.i381 ], [ %.05578.i.i.i382.ph, %.lr.ph80.i.i.i381.preheader1630 ] ; 2 uses
  %.177.i.i.i383 = phi i32 [ %i.adl, %.lr.ph80.i.i.i381 ], [ %.177.i.i.i383.ph, %.lr.ph80.i.i.i381.preheader1630 ]
  %i.adj = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %.05578.i.i.i382
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !18
  %i.adl = add nsw i32 %i.adk, %.177.i.i.i383     ; 2 uses
  %i.adm = add nsw i64 %.05578.i.i.i382, 1        ; 2 uses
  %exitcond.not.i.i.i384 = icmp eq i64 %i.adm, %i.abq
  br i1 %exitcond.not.i.i.i384, label %.loopexit1154, label %.lr.ph80.i.i.i381, !llvm.loop !341

bb.cb:                                            ; preds = %bb.bw
  %i.adn = load i32, ptr %i.abs, align 4, !tbaa !18 ; 6 uses
  %i.ado = icmp sgt i64 %i.abq, 1
  br i1 %i.ado, label %.lr.ph85.i.i.i393.preheader, label %bb.cf

.lr.ph85.i.i.i393.preheader:                      ; preds = %bb.cb
  %i.adp = add nsw i64 %i.abq, -1                 ; 2 uses
  %min.iters.check1473 = icmp ult i64 %i.abq, 9
  br i1 %min.iters.check1473, label %.lr.ph85.i.i.i393.preheader1627, label %vector.ph1474

vector.ph1474:                                    ; preds = %.lr.ph85.i.i.i393.preheader
  %n.vec1475 = and i64 %i.adp, -8                 ; 3 uses
  %i.adq = or disjoint i64 %n.vec1475, 1
  %i.adr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.adn, i64 0
  br label %vector.body1476

vector.body1476:                                  ; preds = %vector.body1476, %vector.ph1474
  %index1477 = phi i64 [ 0, %vector.ph1474 ], [ %index.next1482, %vector.body1476 ] ; 2 uses
  %vec.phi1478 = phi <4 x i32> [ %i.adr, %vector.ph1474 ], [ %i.adv, %vector.body1476 ]
  %vec.phi1479 = phi <4 x i32> [ zeroinitializer, %vector.ph1474 ], [ %i.adw, %vector.body1476 ]
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %index1477 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 4
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 20
  %wide.load1480 = load <4 x i32>, ptr %i.adt, align 4, !tbaa !18
  %wide.load1481 = load <4 x i32>, ptr %i.adu, align 4, !tbaa !18
  %i.adv = add <4 x i32> %wide.load1480, %vec.phi1478 ; 2 uses
  %i.adw = add <4 x i32> %wide.load1481, %vec.phi1479 ; 2 uses
  %index.next1482 = add nuw i64 %index1477, 8     ; 2 uses
  %i.adx = icmp eq i64 %index.next1482, %n.vec1475
  br i1 %i.adx, label %middle.block1483, label %vector.body1476, !llvm.loop !342

middle.block1483:                                 ; preds = %vector.body1476
  %bin.rdx1484 = add <4 x i32> %i.adw, %i.adv
  %i.ady = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1484) ; 2 uses
  %cmp.n1485 = icmp eq i64 %i.adp, %n.vec1475
  br i1 %cmp.n1485, label %.lr.ph85.i.i.i416.preheader, label %.lr.ph85.i.i.i393.preheader1627

.lr.ph85.i.i.i393.preheader1627:                  ; preds = %.lr.ph85.i.i.i393.preheader, %middle.block1483
  %.083.i.i.i394.ph = phi i64 [ 1, %.lr.ph85.i.i.i393.preheader ], [ %i.adq, %middle.block1483 ]
  %.282.i.i.i395.ph = phi i32 [ %i.adn, %.lr.ph85.i.i.i393.preheader ], [ %i.ady, %middle.block1483 ]
  br label %.lr.ph85.i.i.i393

.lr.ph85.i.i.i393:                                ; preds = %.lr.ph85.i.i.i393.preheader1627, %.lr.ph85.i.i.i393
  %.083.i.i.i394 = phi i64 [ %i.aec, %.lr.ph85.i.i.i393 ], [ %.083.i.i.i394.ph, %.lr.ph85.i.i.i393.preheader1627 ] ; 2 uses
  %.282.i.i.i395 = phi i32 [ %i.aeb, %.lr.ph85.i.i.i393 ], [ %.282.i.i.i395.ph, %.lr.ph85.i.i.i393.preheader1627 ]
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %.083.i.i.i394
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !18
  %i.aeb = add nsw i32 %i.aea, %.282.i.i.i395     ; 2 uses
  %i.aec = add nuw nsw i64 %.083.i.i.i394, 1      ; 2 uses
  %exitcond92.not.i.i.i396 = icmp eq i64 %i.aec, %i.abq
  br i1 %exitcond92.not.i.i.i396, label %.lr.ph85.i.i.i416.preheader, label %.lr.ph85.i.i.i393, !llvm.loop !343

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit397: ; preds = %bb.bv
  %i.aed = load i64, ptr %i.ga, align 8, !tbaa !9
  %i.aee = trunc i64 %i.aed to i32                ; 2 uses
  %i.aef = trunc nuw nsw i64 %indvars.iv1026 to i32 ; 2 uses
  %i.aeg = add i32 %i.aef, %i.aee
  br label %.loopexit642

.loopexit1154:                                    ; preds = %.lr.ph80.i.i.i381, %middle.block1515, %bb.ca
  %.0.i380.ph = phi i32 [ %26, %bb.ca ], [ %i.adi, %middle.block1515 ], [ %i.adl, %.lr.ph80.i.i.i381 ]
  %i.aeh = load i64, ptr %i.ga, align 8, !tbaa !9
  %i.aei = trunc i64 %i.aeh to i32                ; 4 uses
  %i.aej = trunc nuw nsw i64 %indvars.iv1026 to i32 ; 4 uses
  %i.aek = add i32 %.0.i380.ph, %i.aej
  %i.ael = add i32 %i.aek, %i.aei                 ; 3 uses
  %i.aem = load <2 x i64>, ptr %i.abs, align 16, !tbaa !15 ; 2 uses
  %i.aen = icmp sgt i64 %i.abq, 7
  br i1 %i.aen, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %.loopexit1154
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %i.aep = load <4 x i32>, ptr %i.aeo, align 16, !tbaa !15 ; 2 uses
  %i.aeq = bitcast <2 x i64> %i.aem to <4 x i32>  ; 2 uses
  %i.aer = icmp samesign ugt i64 %i.abq, 15
  br i1 %i.aer, label %.lr.ph.i.i.i411, label %._crit_edge.i.i.i408

._crit_edge.i.i.i408:                             ; preds = %.lr.ph.i.i.i411, %bb.cc
  %.lcssa.i.i.i409 = phi <4 x i32> [ %i.aep, %bb.cc ], [ %i.afc, %.lr.ph.i.i.i411 ]
  %.sroa.064.0.lcssa.i.i.i410 = phi <4 x i32> [ %i.aeq, %bb.cc ], [ %i.aey, %.lr.ph.i.i.i411 ]
  %i.aes = add <4 x i32> %.sroa.064.0.lcssa.i.i.i410, %.lcssa.i.i.i409 ; 2 uses
  %i.aet = bitcast <4 x i32> %i.aes to <2 x i64>
  %i.aeu = icmp sgt i64 %i.abw, %i.abu
  br i1 %i.aeu, label %bb.cd, label %bb.ce

.lr.ph.i.i.i411:                                  ; preds = %bb.cc, %.lr.ph.i.i.i411
  %.05775.i.i.i412 = phi i64 [ %.057.i.i.i415, %.lr.ph.i.i.i411 ], [ 8, %bb.cc ] ; 3 uses
  %.057.in74.i.i.i413 = phi i64 [ %.05775.i.i.i412, %.lr.ph.i.i.i411 ], [ 0, %bb.cc ]
  %.sroa.064.073.i.i.i414 = phi <4 x i32> [ %i.aey, %.lr.ph.i.i.i411 ], [ %i.aeq, %bb.cc ]
  %i.aev = phi <4 x i32> [ %i.afc, %.lr.ph.i.i.i411 ], [ %i.aep, %bb.cc ]
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %.05775.i.i.i412
  %i.aex = load <4 x i32>, ptr %i.aew, align 16, !tbaa !15
  %i.aey = add <4 x i32> %i.aex, %.sroa.064.073.i.i.i414 ; 2 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %.057.in74.i.i.i413
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 48
  %i.afb = load <4 x i32>, ptr %i.afa, align 16, !tbaa !15
  %i.afc = add <4 x i32> %i.afb, %i.aev           ; 2 uses
  %.057.i.i.i415 = add nuw nsw i64 %.05775.i.i.i412, 8 ; 2 uses
  %i.afd = icmp slt i64 %.057.i.i.i415, %i.abu
  br i1 %i.afd, label %.lr.ph.i.i.i411, label %._crit_edge.i.i.i408, !llvm.loop !278

bb.cd:                                            ; preds = %._crit_edge.i.i.i408
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %i.abu
  %i.aff = load <4 x i32>, ptr %i.afe, align 16, !tbaa !15
  %i.afg = add <4 x i32> %i.aff, %i.aes
  %i.afh = bitcast <4 x i32> %i.afg to <2 x i64>
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge.i.i.i408, %.loopexit1154
  %.sroa.064.2.i.i.i400 = phi <2 x i64> [ %i.aem, %.loopexit1154 ], [ %i.afh, %bb.cd ], [ %i.aet, %._crit_edge.i.i.i408 ] ; 2 uses
  %i.afi = bitcast <2 x i64> %.sroa.064.2.i.i.i400 to <4 x i32>
  %i.afj = bitcast <2 x i64> %.sroa.064.2.i.i.i400 to <4 x i32> ; 2 uses
  %i.afk = shufflevector <4 x i32> %i.afj, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.afl = add <4 x i32> %i.afk, %i.afi           ; 2 uses
  %shift1600 = shufflevector <4 x i32> %i.afl, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1601 = add nsw <4 x i32> %i.afl, %shift1600
  %27 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.afj) ; 2 uses
  %i.afm = icmp slt i64 %i.abw, %i.abq
  br i1 %i.afm, label %.lr.ph80.i.i.i404.preheader, label %.loopexit642

.lr.ph80.i.i.i404.preheader:                      ; preds = %bb.ce
  %i.afn = shl nsw i64 %i.abv, 2
  %i.afo = sub i64 %i.abq, %i.afn                 ; 3 uses
  %min.iters.check1489 = icmp ult i64 %i.afo, 8
  br i1 %min.iters.check1489, label %.lr.ph80.i.i.i404.preheader1628, label %vector.ph1490

vector.ph1490:                                    ; preds = %.lr.ph80.i.i.i404.preheader
  %n.vec1491 = and i64 %i.afo, -8                 ; 3 uses
  %i.afp = add i64 %i.abw, %n.vec1491
  %i.afq = shufflevector <4 x i32> %foldExtExtBinop1601, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.afr = getelementptr [4 x i8], ptr %i.abs, i64 %i.abw
  br label %vector.body1492

vector.body1492:                                  ; preds = %vector.body1492, %vector.ph1490
  %index1493 = phi i64 [ 0, %vector.ph1490 ], [ %index.next1498, %vector.body1492 ] ; 2 uses
  %vec.phi1494 = phi <4 x i32> [ %i.afq, %vector.ph1490 ], [ %i.afu, %vector.body1492 ]
  %vec.phi1495 = phi <4 x i32> [ zeroinitializer, %vector.ph1490 ], [ %i.afv, %vector.body1492 ]
  %i.afs = getelementptr [4 x i8], ptr %i.afr, i64 %index1493 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 16
  %wide.load1496 = load <4 x i32>, ptr %i.afs, align 4, !tbaa !18
  %wide.load1497 = load <4 x i32>, ptr %i.aft, align 4, !tbaa !18
  %i.afu = add <4 x i32> %wide.load1496, %vec.phi1494 ; 2 uses
  %i.afv = add <4 x i32> %wide.load1497, %vec.phi1495 ; 2 uses
  %index.next1498 = add nuw i64 %index1493, 8     ; 2 uses
  %i.afw = icmp eq i64 %index.next1498, %n.vec1491
  br i1 %i.afw, label %middle.block1499, label %vector.body1492, !llvm.loop !344

middle.block1499:                                 ; preds = %vector.body1492
  %bin.rdx1500 = add <4 x i32> %i.afv, %i.afu
  %i.afx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1500) ; 2 uses
  %cmp.n1501 = icmp eq i64 %i.afo, %n.vec1491
  br i1 %cmp.n1501, label %.loopexit642, label %.lr.ph80.i.i.i404.preheader1628

.lr.ph80.i.i.i404.preheader1628:                  ; preds = %.lr.ph80.i.i.i404.preheader, %middle.block1499
  %.05578.i.i.i405.ph = phi i64 [ %i.abw, %.lr.ph80.i.i.i404.preheader ], [ %i.afp, %middle.block1499 ]
  %.177.i.i.i406.ph = phi i32 [ %27, %.lr.ph80.i.i.i404.preheader ], [ %i.afx, %middle.block1499 ]
  br label %.lr.ph80.i.i.i404

.lr.ph80.i.i.i404:                                ; preds = %.lr.ph80.i.i.i404.preheader1628, %.lr.ph80.i.i.i404
  %.05578.i.i.i405 = phi i64 [ %i.agb, %.lr.ph80.i.i.i404 ], [ %.05578.i.i.i405.ph, %.lr.ph80.i.i.i404.preheader1628 ] ; 2 uses
  %.177.i.i.i406 = phi i32 [ %i.aga, %.lr.ph80.i.i.i404 ], [ %.177.i.i.i406.ph, %.lr.ph80.i.i.i404.preheader1628 ]
  %i.afy = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %.05578.i.i.i405
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !18
  %i.aga = add nsw i32 %i.afz, %.177.i.i.i406     ; 2 uses
  %i.agb = add nsw i64 %.05578.i.i.i405, 1        ; 2 uses
  %exitcond.not.i.i.i407 = icmp eq i64 %i.agb, %i.abq
  br i1 %exitcond.not.i.i.i407, label %.loopexit642, label %.lr.ph80.i.i.i404, !llvm.loop !345

bb.cf:                                            ; preds = %bb.cb
  %i.agc = load i64, ptr %i.ga, align 8, !tbaa !9
  %i.agd = trunc i64 %i.agc to i32                ; 2 uses
  %i.age = trunc nuw nsw i64 %indvars.iv1026 to i32 ; 2 uses
  %i.agf = add i32 %i.adn, %i.age
  %i.agg = add i32 %i.agf, %i.agd
  br label %.loopexit642

.lr.ph85.i.i.i416.preheader:                      ; preds = %.lr.ph85.i.i.i393, %middle.block1483
  %.lcssa1254 = phi i32 [ %i.ady, %middle.block1483 ], [ %i.aeb, %.lr.ph85.i.i.i393 ]
  %i.agh = load i64, ptr %i.ga, align 8, !tbaa !9
  %i.agi = trunc i64 %i.agh to i32                ; 3 uses
  %i.agj = trunc nuw nsw i64 %indvars.iv1026 to i32 ; 3 uses
  %i.agk = add i32 %.lcssa1254, %i.agj
  %i.agl = add i32 %i.agk, %i.agi                 ; 2 uses
  %i.agm = add nsw i64 %i.abq, -1                 ; 2 uses
  %min.iters.check1457 = icmp ult i64 %i.abq, 9
  br i1 %min.iters.check1457, label %.lr.ph85.i.i.i416.preheader1626, label %vector.ph1458

vector.ph1458:                                    ; preds = %.lr.ph85.i.i.i416.preheader
  %n.vec1459 = and i64 %i.agm, -8                 ; 3 uses
  %i.agn = or disjoint i64 %n.vec1459, 1
  %i.ago = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.adn, i64 0
  br label %vector.body1460

vector.body1460:                                  ; preds = %vector.body1460, %vector.ph1458
  %index1461 = phi i64 [ 0, %vector.ph1458 ], [ %index.next1466, %vector.body1460 ] ; 2 uses
  %vec.phi1462 = phi <4 x i32> [ %i.ago, %vector.ph1458 ], [ %i.ags, %vector.body1460 ]
  %vec.phi1463 = phi <4 x i32> [ zeroinitializer, %vector.ph1458 ], [ %i.agt, %vector.body1460 ]
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %index1461 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 4
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agp, i64 20
  %wide.load1464 = load <4 x i32>, ptr %i.agq, align 4, !tbaa !18
  %wide.load1465 = load <4 x i32>, ptr %i.agr, align 4, !tbaa !18
  %i.ags = add <4 x i32> %wide.load1464, %vec.phi1462 ; 2 uses
  %i.agt = add <4 x i32> %wide.load1465, %vec.phi1463 ; 2 uses
  %index.next1466 = add nuw i64 %index1461, 8     ; 2 uses
  %i.agu = icmp eq i64 %index.next1466, %n.vec1459
  br i1 %i.agu, label %middle.block1467, label %vector.body1460, !llvm.loop !346

middle.block1467:                                 ; preds = %vector.body1460
  %bin.rdx1468 = add <4 x i32> %i.agt, %i.ags
  %i.agv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1468) ; 2 uses
  %cmp.n1469 = icmp eq i64 %i.agm, %n.vec1459
  br i1 %cmp.n1469, label %.loopexit642, label %.lr.ph85.i.i.i416.preheader1626

.lr.ph85.i.i.i416.preheader1626:                  ; preds = %.lr.ph85.i.i.i416.preheader, %middle.block1467
  %.083.i.i.i417.ph = phi i64 [ 1, %.lr.ph85.i.i.i416.preheader ], [ %i.agn, %middle.block1467 ]
  %.282.i.i.i418.ph = phi i32 [ %i.adn, %.lr.ph85.i.i.i416.preheader ], [ %i.agv, %middle.block1467 ]
  br label %.lr.ph85.i.i.i416

.lr.ph85.i.i.i416:                                ; preds = %.lr.ph85.i.i.i416.preheader1626, %.lr.ph85.i.i.i416
  %.083.i.i.i417 = phi i64 [ %i.agz, %.lr.ph85.i.i.i416 ], [ %.083.i.i.i417.ph, %.lr.ph85.i.i.i416.preheader1626 ] ; 2 uses
  %.282.i.i.i418 = phi i32 [ %i.agy, %.lr.ph85.i.i.i416 ], [ %.282.i.i.i418.ph, %.lr.ph85.i.i.i416.preheader1626 ]
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %.083.i.i.i417
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !18
  %i.agy = add nsw i32 %i.agx, %.282.i.i.i418     ; 2 uses
  %i.agz = add nuw nsw i64 %.083.i.i.i417, 1      ; 2 uses
  %exitcond92.not.i.i.i419 = icmp eq i64 %i.agz, %i.abq
  br i1 %exitcond92.not.i.i.i419, label %.loopexit642, label %.lr.ph85.i.i.i416, !llvm.loop !347

.loopexit642:                                     ; preds = %.lr.ph80.i.i.i404, %.lr.ph85.i.i.i416, %middle.block1499, %middle.block1467, %bb.cf, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit397, %bb.ce
  %.pre-phi1068 = phi i32 [ %i.agj, %middle.block1467 ], [ %i.age, %bb.cf ], [ %i.aef, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit397 ], [ %i.aej, %bb.ce ], [ %i.aej, %middle.block1499 ], [ %i.agj, %.lr.ph85.i.i.i416 ], [ %i.aej, %.lr.ph80.i.i.i404 ]
  %i.aha = phi i32 [ %i.agl, %middle.block1467 ], [ %i.agg, %bb.cf ], [ %i.aeg, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit397 ], [ %i.ael, %bb.ce ], [ %i.ael, %middle.block1499 ], [ %i.agl, %.lr.ph85.i.i.i416 ], [ %i.ael, %.lr.ph80.i.i.i404 ] ; 2 uses
  %i.ahb = phi i32 [ %i.agi, %middle.block1467 ], [ %i.agd, %bb.cf ], [ %i.aee, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit397 ], [ %i.aei, %bb.ce ], [ %i.aei, %middle.block1499 ], [ %i.agi, %.lr.ph85.i.i.i416 ], [ %i.aei, %.lr.ph80.i.i.i404 ]
  %.0.i403 = phi i32 [ %i.agv, %middle.block1467 ], [ %i.adn, %bb.cf ], [ 0, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit397 ], [ %27, %bb.ce ], [ %i.afx, %middle.block1499 ], [ %i.agy, %.lr.ph85.i.i.i416 ], [ %i.aga, %.lr.ph80.i.i.i404 ]
  %i.ahc = add i32 %i.ahb, %.pre-phi1068
  %i.ahd = add i32 %i.ahc, %.0.i403               ; 2 uses
  %i.ahe = load double, ptr %i.tk, align 8, !tbaa !348
  %i.ahf = load ptr, ptr %6, align 8, !tbaa !316
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.ahf, i64 %indvars.iv1026
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !35
  %i.ahi = fmul double %i.ahe, %i.ahh             ; 2 uses
  %.not.i.i421 = icmp eq ptr %.sroa.13.3912, %.sroa.26.3911
  br i1 %.not.i.i421, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.loopexit642
  store i32 %i.aha, ptr %.sroa.13.3912, align 8, !tbaa !18
  %.sroa.6492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.3912, i64 4
  store i32 %i.ahd, ptr %.sroa.6492.0..sroa_idx, align 4, !tbaa !18
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.3912, i64 8
  store double %i.ahi, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !35
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436

bb.ch:                                            ; preds = %.loopexit642
  %i.ahj = ptrtoint ptr %.sroa.13.3912 to i64
  %i.ahk = ptrtoint ptr %.sroa.0518.3913 to i64
  %i.ahl = sub i64 %i.ahj, %i.ahk                 ; 4 uses
  %i.ahm = icmp eq i64 %i.ahl, 9223372036854775792
  br i1 %i.ahm, label %bb.ci, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i422

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #28
          to label %.noexc434 unwind label %.loopexit.split-lp

.noexc434:                                        ; preds = %bb.ci
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i422: ; preds = %bb.ch
  %i.ahn = ashr exact i64 %i.ahl, 4               ; 3 uses
  %.sroa.speculated.i.i.i.i423 = call i64 @llvm.umax.i64(i64 %i.ahn, i64 1)
  %i.aho = add nsw i64 %.sroa.speculated.i.i.i.i423, %i.ahn ; 2 uses
  %i.ahp = icmp ult i64 %i.aho, %i.ahn
  %i.ahq = call i64 @llvm.umin.i64(i64 %i.aho, i64 576460752303423487)
  %i.ahr = select i1 %i.ahp, i64 576460752303423487, i64 %i.ahq ; 3 uses
  %.not.i.i.i.i424 = icmp ne i64 %i.ahr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i424)
  %i.ahs = shl nuw nsw i64 %i.ahr, 4
  %i.aht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahs) #31
          to label %.noexc435 unwind label %.loopexit646 ; 5 uses

.noexc435:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i422
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.ahl ; 3 uses
  store i32 %i.aha, ptr %i.ahu, align 8, !tbaa !18
  %.sroa.6492.0..sroa_idx493 = getelementptr inbounds nuw i8, ptr %i.ahu, i64 4
  store i32 %i.ahd, ptr %.sroa.6492.0..sroa_idx493, align 4, !tbaa !18
  %.sroa.7.0..sroa_idx495 = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  store double %i.ahi, ptr %.sroa.7.0..sroa_idx495, align 8, !tbaa !35
  %.not10.i.i.i.i.i.i425 = icmp eq ptr %.sroa.0518.3913, %.sroa.13.3912
  br i1 %.not10.i.i.i.i.i.i425, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i430, label %.lr.ph.i.i.i.i.i.i426

.lr.ph.i.i.i.i.i.i426:                            ; preds = %.noexc435, %.lr.ph.i.i.i.i.i.i426
  %.012.i.i.i.i.i.i427 = phi ptr [ %i.ahw, %.lr.ph.i.i.i.i.i.i426 ], [ %i.aht, %.noexc435 ] ; 2 uses
  %.0911.i.i.i.i.i.i428 = phi ptr [ %i.ahv, %.lr.ph.i.i.i.i.i.i426 ], [ %.sroa.0518.3913, %.noexc435 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i427, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i428, i64 16, i1 false), !tbaa.struct !285, !alias.scope !349
  %i.ahv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i428, i64 16 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i427, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i429 = icmp eq ptr %i.ahv, %.sroa.13.3912
  br i1 %.not.i.i.i.i.i.i429, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i430, label %.lr.ph.i.i.i.i.i.i426, !llvm.loop !290

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i430: ; preds = %.lr.ph.i.i.i.i.i.i426, %.noexc435
  %.0.lcssa.i.i.i.i.i.i431 = phi ptr [ %i.aht, %.noexc435 ], [ %i.ahw, %.lr.ph.i.i.i.i.i.i426 ]
  %.not.i23.i.i.i432 = icmp eq ptr %.sroa.0518.3913, null
  br i1 %.not.i23.i.i.i432, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i433, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i430
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0518.3913, i64 noundef %i.ahl) #32
  %.pre1041.pre = load i64, ptr %i.kr, align 8, !tbaa !25
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i433

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i433: ; preds = %bb.cj, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i430
  %.pre1041 = phi i64 [ %.pre1041.pre, %bb.cj ], [ %.pre10411064, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i430 ] ; 2 uses
  %i.ahx = getelementptr inbounds nuw [16 x i8], ptr %i.aht, i64 %i.ahr
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit436: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i433, %bb.cg
  %.pre10411065 = phi i64 [ %.pre1041, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i433 ], [ %.pre10411064, %bb.cg ]
  %i.ahy = phi i64 [ %.pre1041, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i433 ], [ %i.abp, %bb.cg ] ; 3 uses
  %.sroa.26.7 = phi ptr [ %i.ahx, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i433 ], [ %.sroa.26.3911, %bb.cg ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i431.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i431, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i433 ], [ %.sroa.13.3912, %bb.cg ]
  %.sroa.0518.7 = phi ptr [ %i.aht, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i433 ], [ %.sroa.0518.3913, %bb.cg ] ; 2 uses
  %.sroa.13.6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i431.pn, i64 16 ; 2 uses
  %indvars.iv.next1027 = add nuw nsw i64 %indvars.iv1026, 1 ; 2 uses
  %i.ahz = icmp sgt i64 %i.ahy, %indvars.iv.next1027
  br i1 %i.ahz, label %bb.bv, label %._crit_edge916, !llvm.loop !353

.loopexit646:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i422
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp:                               ; preds = %bb.ci
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit:                                        ; preds = %.lr.ph80.i.i.i358, %middle.block1531, %bb.bt
  %.0.i357.ph = phi i32 [ %25, %bb.bt ], [ %i.aau, %middle.block1531 ], [ %i.aax, %.lr.ph80.i.i.i358 ] ; 3 uses
  %i.aia = load i64, ptr %i.ga, align 8, !tbaa !9 ; 3 uses
  %i.aib = load <2 x i64>, ptr %i.ze, align 16, !tbaa !15 ; 2 uses
  %i.aic = icmp sgt i64 %i.zc, 7
  br i1 %i.aic, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %.loopexit
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.aie = load <4 x i32>, ptr %i.aid, align 16, !tbaa !15 ; 2 uses
  %i.aif = bitcast <2 x i64> %i.aib to <4 x i32>  ; 2 uses
  %i.aig = icmp samesign ugt i64 %i.zc, 15
  br i1 %i.aig, label %.lr.ph.i.i.i450, label %._crit_edge.i.i.i447

._crit_edge.i.i.i447:                             ; preds = %.lr.ph.i.i.i450, %bb.ck
  %.lcssa.i.i.i448 = phi <4 x i32> [ %i.aie, %bb.ck ], [ %i.air, %.lr.ph.i.i.i450 ]
  %.sroa.064.0.lcssa.i.i.i449 = phi <4 x i32> [ %i.aif, %bb.ck ], [ %i.ain, %.lr.ph.i.i.i450 ]
  %i.aih = add <4 x i32> %.sroa.064.0.lcssa.i.i.i449, %.lcssa.i.i.i448 ; 2 uses
  %i.aii = bitcast <4 x i32> %i.aih to <2 x i64>
  %i.aij = icmp sgt i64 %i.zi, %i.zg
  br i1 %i.aij, label %bb.cl, label %bb.cm

.lr.ph.i.i.i450:                                  ; preds = %bb.ck, %.lr.ph.i.i.i450
  %.05775.i.i.i451 = phi i64 [ %.057.i.i.i454, %.lr.ph.i.i.i450 ], [ 8, %bb.ck ] ; 3 uses
  %.057.in74.i.i.i452 = phi i64 [ %.05775.i.i.i451, %.lr.ph.i.i.i450 ], [ 0, %bb.ck ]
  %.sroa.064.073.i.i.i453 = phi <4 x i32> [ %i.ain, %.lr.ph.i.i.i450 ], [ %i.aif, %bb.ck ]
  %i.aik = phi <4 x i32> [ %i.air, %.lr.ph.i.i.i450 ], [ %i.aie, %bb.ck ]
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %.05775.i.i.i451
  %i.aim = load <4 x i32>, ptr %i.ail, align 16, !tbaa !15
  %i.ain = add <4 x i32> %i.aim, %.sroa.064.073.i.i.i453 ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %.057.in74.i.i.i452
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 48
  %i.aiq = load <4 x i32>, ptr %i.aip, align 16, !tbaa !15
  %i.air = add <4 x i32> %i.aiq, %i.aik           ; 2 uses
  %.057.i.i.i454 = add nuw nsw i64 %.05775.i.i.i451, 8 ; 2 uses
  %i.ais = icmp slt i64 %.057.i.i.i454, %i.zg
  br i1 %i.ais, label %.lr.ph.i.i.i450, label %._crit_edge.i.i.i447, !llvm.loop !278

bb.cl:                                            ; preds = %._crit_edge.i.i.i447
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.zg
  %i.aiu = load <4 x i32>, ptr %i.ait, align 16, !tbaa !15
  %i.aiv = add <4 x i32> %i.aiu, %i.aih
  %i.aiw = bitcast <4 x i32> %i.aiv to <2 x i64>
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge.i.i.i447, %.loopexit
  %.sroa.064.2.i.i.i439 = phi <2 x i64> [ %i.aib, %.loopexit ], [ %i.aiw, %bb.cl ], [ %i.aii, %._crit_edge.i.i.i447 ] ; 2 uses
  %i.aix = bitcast <2 x i64> %.sroa.064.2.i.i.i439 to <4 x i32>
  %i.aiy = bitcast <2 x i64> %.sroa.064.2.i.i.i439 to <4 x i32> ; 2 uses
  %i.aiz = shufflevector <4 x i32> %i.aiy, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aja = add <4 x i32> %i.aiz, %i.aix           ; 2 uses
  %shift1603 = shufflevector <4 x i32> %i.aja, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1604 = add nsw <4 x i32> %i.aja, %shift1603
  %28 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aiy) ; 2 uses
  %i.ajb = icmp slt i64 %i.zi, %i.zc
  br i1 %i.ajb, label %.lr.ph80.i.i.i443.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459

.lr.ph80.i.i.i443.preheader:                      ; preds = %bb.cm
  %i.ajc = shl nsw i64 %i.zh, 2
  %i.ajd = sub i64 %i.zc, %i.ajc                  ; 3 uses
  %min.iters.check1537 = icmp ult i64 %i.ajd, 8
  br i1 %min.iters.check1537, label %.lr.ph80.i.i.i443.preheader1613, label %vector.ph1538

vector.ph1538:                                    ; preds = %.lr.ph80.i.i.i443.preheader
  %n.vec1539 = and i64 %i.ajd, -8                 ; 3 uses
  %i.aje = add i64 %i.zi, %n.vec1539
  %i.ajf = shufflevector <4 x i32> %foldExtExtBinop1604, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ajg = getelementptr [4 x i8], ptr %i.ze, i64 %i.zi
  br label %vector.body1540

vector.body1540:                                  ; preds = %vector.body1540, %vector.ph1538
  %index1541 = phi i64 [ 0, %vector.ph1538 ], [ %index.next1546, %vector.body1540 ] ; 2 uses
  %vec.phi1542 = phi <4 x i32> [ %i.ajf, %vector.ph1538 ], [ %i.ajj, %vector.body1540 ]
  %vec.phi1543 = phi <4 x i32> [ zeroinitializer, %vector.ph1538 ], [ %i.ajk, %vector.body1540 ]
  %i.ajh = getelementptr [4 x i8], ptr %i.ajg, i64 %index1541 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %wide.load1544 = load <4 x i32>, ptr %i.ajh, align 4, !tbaa !18
  %wide.load1545 = load <4 x i32>, ptr %i.aji, align 4, !tbaa !18
  %i.ajj = add <4 x i32> %wide.load1544, %vec.phi1542 ; 2 uses
  %i.ajk = add <4 x i32> %wide.load1545, %vec.phi1543 ; 2 uses
  %index.next1546 = add nuw i64 %index1541, 8     ; 2 uses
  %i.ajl = icmp eq i64 %index.next1546, %n.vec1539
  br i1 %i.ajl, label %middle.block1547, label %vector.body1540, !llvm.loop !354

middle.block1547:                                 ; preds = %vector.body1540
  %bin.rdx1548 = add <4 x i32> %i.ajk, %i.ajj
  %i.ajm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1548) ; 2 uses
  %cmp.n1549 = icmp eq i64 %i.ajd, %n.vec1539
  br i1 %cmp.n1549, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459, label %.lr.ph80.i.i.i443.preheader1613

.lr.ph80.i.i.i443.preheader1613:                  ; preds = %.lr.ph80.i.i.i443.preheader, %middle.block1547
  %.05578.i.i.i444.ph = phi i64 [ %i.zi, %.lr.ph80.i.i.i443.preheader ], [ %i.aje, %middle.block1547 ]
  %.177.i.i.i445.ph = phi i32 [ %28, %.lr.ph80.i.i.i443.preheader ], [ %i.ajm, %middle.block1547 ]
  br label %.lr.ph80.i.i.i443

.lr.ph80.i.i.i443:                                ; preds = %.lr.ph80.i.i.i443.preheader1613, %.lr.ph80.i.i.i443
  %.05578.i.i.i444 = phi i64 [ %i.ajq, %.lr.ph80.i.i.i443 ], [ %.05578.i.i.i444.ph, %.lr.ph80.i.i.i443.preheader1613 ] ; 2 uses
  %.177.i.i.i445 = phi i32 [ %i.ajp, %.lr.ph80.i.i.i443 ], [ %.177.i.i.i445.ph, %.lr.ph80.i.i.i443.preheader1613 ]
  %i.ajn = getelementptr inbounds [4 x i8], ptr %i.ze, i64 %.05578.i.i.i444
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !18
  %i.ajp = add nsw i32 %i.ajo, %.177.i.i.i445     ; 2 uses
  %i.ajq = add nsw i64 %.05578.i.i.i444, 1        ; 2 uses
  %exitcond.not.i.i.i446 = icmp eq i64 %i.ajq, %i.zc
  br i1 %exitcond.not.i.i.i446, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459, label %.lr.ph80.i.i.i443, !llvm.loop !355

.lr.ph85.i.i.i455.preheader:                      ; preds = %.lr.ph85.i.i.i370, %middle.block1563
  %.lcssa1241 = phi i32 [ %i.abk, %middle.block1563 ], [ %i.abn, %.lr.ph85.i.i.i370 ] ; 2 uses
  %i.ajr = load i64, ptr %i.ga, align 8, !tbaa !9 ; 2 uses
  %min.iters.check1569 = icmp ult i64 %i.zc, 9
  br i1 %min.iters.check1569, label %.lr.ph85.i.i.i455.preheader1606, label %vector.ph1570

vector.ph1570:                                    ; preds = %.lr.ph85.i.i.i455.preheader
  %n.vec1571 = and i64 %i.abb, -8                 ; 3 uses
  %i.ajs = or disjoint i64 %n.vec1571, 1
  %i.ajt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aaz, i64 0
  br label %vector.body1572

vector.body1572:                                  ; preds = %vector.body1572, %vector.ph1570
  %index1573 = phi i64 [ 0, %vector.ph1570 ], [ %index.next1578, %vector.body1572 ] ; 2 uses
  %vec.phi1574 = phi <4 x i32> [ %i.ajt, %vector.ph1570 ], [ %i.ajx, %vector.body1572 ]
  %vec.phi1575 = phi <4 x i32> [ zeroinitializer, %vector.ph1570 ], [ %i.ajy, %vector.body1572 ]
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %index1573 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 4
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aju, i64 20
  %wide.load1576 = load <4 x i32>, ptr %i.ajv, align 4, !tbaa !18
  %wide.load1577 = load <4 x i32>, ptr %i.ajw, align 4, !tbaa !18
  %i.ajx = add <4 x i32> %wide.load1576, %vec.phi1574 ; 2 uses
  %i.ajy = add <4 x i32> %wide.load1577, %vec.phi1575 ; 2 uses
  %index.next1578 = add nuw i64 %index1573, 8     ; 2 uses
  %i.ajz = icmp eq i64 %index.next1578, %n.vec1571
  br i1 %i.ajz, label %middle.block1579, label %vector.body1572, !llvm.loop !356

middle.block1579:                                 ; preds = %vector.body1572
  %bin.rdx1580 = add <4 x i32> %i.ajy, %i.ajx
  %i.aka = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1580) ; 2 uses
  %cmp.n1581 = icmp eq i64 %i.abb, %n.vec1571
  br i1 %cmp.n1581, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459, label %.lr.ph85.i.i.i455.preheader1606

.lr.ph85.i.i.i455.preheader1606:                  ; preds = %.lr.ph85.i.i.i455.preheader, %middle.block1579
  %.083.i.i.i456.ph = phi i64 [ 1, %.lr.ph85.i.i.i455.preheader ], [ %i.ajs, %middle.block1579 ]
  %.282.i.i.i457.ph = phi i32 [ %i.aaz, %.lr.ph85.i.i.i455.preheader ], [ %i.aka, %middle.block1579 ]
  br label %.lr.ph85.i.i.i455

.lr.ph85.i.i.i455:                                ; preds = %.lr.ph85.i.i.i455.preheader1606, %.lr.ph85.i.i.i455
  %.083.i.i.i456 = phi i64 [ %i.ake, %.lr.ph85.i.i.i455 ], [ %.083.i.i.i456.ph, %.lr.ph85.i.i.i455.preheader1606 ] ; 2 uses
  %.282.i.i.i457 = phi i32 [ %i.akd, %.lr.ph85.i.i.i455 ], [ %.282.i.i.i457.ph, %.lr.ph85.i.i.i455.preheader1606 ]
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %.083.i.i.i456
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !18
  %i.akd = add nsw i32 %i.akc, %.282.i.i.i457     ; 2 uses
  %i.ake = add nuw nsw i64 %.083.i.i.i456, 1      ; 2 uses
  %exitcond92.not.i.i.i458 = icmp eq i64 %i.ake, %i.zc
  br i1 %exitcond92.not.i.i.i458, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459, label %.lr.ph85.i.i.i455, !llvm.loop !357

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459.sink.split: ; preds = %bb.bu, %._crit_edge916
  %.0.i357623.ph = phi i32 [ 0, %._crit_edge916 ], [ %i.aaz, %bb.bu ] ; 2 uses
  %i.akf = load i64, ptr %i.ga, align 8, !tbaa !9
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459: ; preds = %.lr.ph80.i.i.i443, %.lr.ph85.i.i.i455, %middle.block1547, %middle.block1579, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459.sink.split, %bb.cm
  %i.akg = phi i64 [ %i.aia, %bb.cm ], [ %i.akf, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459.sink.split ], [ %i.ajr, %middle.block1579 ], [ %i.aia, %middle.block1547 ], [ %i.ajr, %.lr.ph85.i.i.i455 ], [ %i.aia, %.lr.ph80.i.i.i443 ]
  %.0.i357623 = phi i32 [ %.0.i357.ph, %bb.cm ], [ %.0.i357623.ph, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459.sink.split ], [ %.lcssa1241, %middle.block1579 ], [ %.0.i357.ph, %middle.block1547 ], [ %.lcssa1241, %.lr.ph85.i.i.i455 ], [ %.0.i357.ph, %.lr.ph80.i.i.i443 ]
  %.0.i442 = phi i32 [ %28, %bb.cm ], [ %.0.i357623.ph, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459.sink.split ], [ %i.aka, %middle.block1579 ], [ %i.ajm, %middle.block1547 ], [ %i.akd, %.lr.ph85.i.i.i455 ], [ %i.ajp, %.lr.ph80.i.i.i443 ]
  %i.akh = sext i32 %.0.i357623 to i64
  %i.aki = add i64 %i.akg, %.lcssa706             ; 2 uses
  %i.akj = add i64 %i.aki, %i.akh
  %i.akk = sext i32 %.0.i442 to i64
  %i.akl = add i64 %i.aki, %i.akk
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE18conservativeResizeEll(ptr noundef nonnull align 8 dereferenceable(72) %i.zb, i64 noundef %i.akj, i64 noundef %i.akl)
          to label %bb.cn unwind label %bb.df

bb.cn:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit459
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  store ptr %.sroa.0518.3.lcssa, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  store ptr %.sroa.13.3.lcssa, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(72) %i.zb, ptr noundef nonnull align 1 dead_on_return %8)
          to label %bb.co unwind label %bb.dg

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  store i8 0, ptr %18, align 8
  %i.akm = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.ro, ptr %i.akm, align 8
  %i.akn = getelementptr inbounds nuw i8, ptr %7, i64 480 ; 2 uses
  %i.ako = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.akn, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.cp unwind label %bb.dh     ; 0 uses

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  store i8 0, ptr %19, align 8, !tbaa !358, !alias.scope !360
  %i.akp = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i8 0, ptr %i.akp, align 8
  %.sroa.5488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.akn, ptr %.sroa.5488.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %i.zb, ptr %.sroa.6.0..sroa_idx, align 8
  %i.akq = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %i.ro, ptr %i.akq, align 8, !tbaa !247, !alias.scope !360
  %i.akr = getelementptr inbounds nuw i8, ptr %7, i64 336 ; 2 uses
  %i.aks = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_7ProductIS1_S1_Li2EEES1_EERS1_RKNS3_IT_T0_Li2EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.akr, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %bb.cq unwind label %bb.di     ; 0 uses

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  store i8 0, ptr %21, align 8, !tbaa !302
  %i.akt = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 -1, ptr %i.akt, align 8, !tbaa !303
  %i.aku = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.akv = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aku, i8 0, i64 56, i1 false)
  %i.akw = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #29 ; 3 uses
  store ptr %i.akw, ptr %i.akv, align 8, !tbaa !304
  %.not6.i485 = icmp eq ptr %i.akw, null
  br i1 %.not6.i485, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.akx = call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.akx, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.akx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc486 unwind label %bb.cs

.noexc486:                                        ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.cr
  %i.aky = landingpad { ptr, i32 }
          cleanup
  %i.akz = getelementptr inbounds nuw i8, ptr %21, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.akz) #27
  br label %.body462

bb.ct:                                            ; preds = %bb.cq
  store i64 0, ptr %i.akt, align 8, !tbaa !303
  store i32 0, ptr %i.akw, align 4
  %i.ala = getelementptr inbounds nuw i8, ptr %7, i64 624
  %i.alb = invoke noundef zeroext i1 @_ZN3igl30min_quad_with_fixed_precomputeIdN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS1_12SparseMatrixIT_Li0EiEERKNS1_10MatrixBaseIT0_EES8_bRNS_24min_quad_with_fixed_dataIS5_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.akr, ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(72) %21, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(2384) %i.ala)
          to label %bb.cu unwind label %bb.dj

bb.cu:                                            ; preds = %bb.ct
  %i.alc = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.ald = load ptr, ptr %i.akv, align 8, !tbaa !304
  call void @free(ptr noundef %i.ald) #27
  %i.ale = load ptr, ptr %i.alc, align 8, !tbaa !363
  call void @free(ptr noundef %i.ale) #27
  %i.alf = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !364 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS3_EEEEvRT_RKT0_:bb.a
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body85 ], [ %i.dr, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body68

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block272, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.cy, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi0EiEES3_S3_EEvRKT_RKT0_RT1_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !133  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !303  ; 14 uses
  %i.e = icmp ugt i64 %i.b, 131072                ; 5 uses
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #29 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.j = shl nuw i64 %i.b, 3
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc142 unwind label %.split

.noexc142:                                        ; preds = %bb.d
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.b, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  %i.n = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.o = icmp samesign ult i64 %i.b, 16385
  br i1 %i.o, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread, label %bb.e

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.p = add nuw nsw i64 %i.n, 15
  %i.q = alloca i8, i64 %i.p, align 16
  %i.r = add nuw nsw i64 %i.n, 15
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.h

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.t = phi i64 [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 2 uses
  %i.u = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 3 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #29 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc144 unwind label %.split263

.noexc144:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit: ; preds = %bb.e
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.t) #29 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc149 unwind label %.split268

.noexc149:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread
  %i.ab = phi i1 [ false, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ true, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 2 uses
  %i.ac = phi ptr [ %i.q, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 7 uses
  %i.ad = phi ptr [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.u, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 7 uses
  %i.ae = phi ptr [ %i.s, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !363 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !304 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !303
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !18
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.ap = sub nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !303 ; 11 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.av = and i64 %i.au, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.aw = lshr exact i64 %i.au, 2
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = and i64 %i.ax, 3
  %i.az = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.as)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.l ], [ %i.as, %bb.k ] ; 12 uses
  %i.ba = sub nsw i64 %i.as, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bb = sdiv i64 %i.ba, 8
  %i.bc = shl nsw i64 %i.bb, 3                    ; 2 uses
  %i.bd = sdiv i64 %i.ba, 4                       ; 2 uses
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.bf = add nsw i64 %i.bc, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bg = add nsw i64 %i.be, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.ba, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.bh = getelementptr [4 x i8], ptr %i.ag, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bh, align 1, !tbaa !15 ; 2 uses
  %i.bj = icmp sgt i64 %i.ba, 7
  br i1 %i.bj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load <4 x i32>, ptr %i.bk, align 1, !tbaa !15 ; 2 uses
  %i.bm = bitcast <2 x i64> %i.bi to <4 x i32>    ; 2 uses
  %i.bn = icmp samesign ugt i64 %i.ba, 15
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.n
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.n
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bl, %bb.n ], [ %i.by, %.lr.ph.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bm, %bb.n ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %i.bo = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  %i.bq = icmp sgt i64 %i.be, %i.bc
  br i1 %i.bq, label %bb.o, label %bb.p

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.br = phi <4 x i32> [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05780.i.i.i.i.i
  %i.bt = load <4 x i32>, ptr %i.bs, align 1, !tbaa !15
  %i.bu = add <4 x i32> %i.bt, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.ag, i64 %.057.in79.i.i.i.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !15
  %i.by = add <4 x i32> %i.bx, %i.br              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.bz = icmp slt i64 %.057.i.i.i.i.i, %i.bf
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !749

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bf
  %i.cb = load <4 x i32>, ptr %i.ca, align 1, !tbaa !15
  %i.cc = add <4 x i32> %i.cb, %i.bo
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i, %bb.m
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.bi, %bb.m ], [ %i.cd, %bb.o ], [ %i.bp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ce = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32> ; 2 uses
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ch = add <4 x i32> %i.cg, %i.ce              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ch, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cf) ; 2 uses
  %i.ci = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.p
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.i.preheader518, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.cj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi394 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !18
  %wide.load395 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !18
  %i.cm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cn = add <4 x i32> %wide.load395, %vec.phi394 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !750

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cn, %i.cm
  %i.cp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader518

.lr.ph85.i.i.i.i.i.preheader518:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block, %bb.p
  %.075.lcssa.i.i.i.i.i = phi i32 [ %4, %bb.p ], [ %i.cp, %middle.block ], [ %i.df, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.cq = icmp slt i64 %i.bg, %i.as
  br i1 %i.cq, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.cr = shl nsw i64 %i.bd, 2
  %i.cs = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.cr
  %i.ct = sub i64 %i.as, %i.cs                    ; 3 uses
  %min.iters.check397 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check397, label %.lr.ph89.i.i.i.i.i.preheader513, label %vector.ph398

vector.ph398:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec399 = and i64 %i.ct, -8                   ; 3 uses
  %i.cu = add i64 %i.bg, %n.vec399
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.cw = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body400 ] ; 2 uses
  %vec.phi402 = phi <4 x i32> [ %i.cv, %vector.ph398 ], [ %i.cz, %vector.body400 ]
  %vec.phi403 = phi <4 x i32> [ zeroinitializer, %vector.ph398 ], [ %i.da, %vector.body400 ]
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %index401 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load404 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !18
  %wide.load405 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !18
  %i.cz = add <4 x i32> %wide.load404, %vec.phi402 ; 2 uses
  %i.da = add <4 x i32> %wide.load405, %vec.phi403 ; 2 uses
  %index.next406 = add nuw i64 %index401, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.db, label %middle.block407, label %vector.body400, !llvm.loop !751

middle.block407:                                  ; preds = %vector.body400
  %bin.rdx408 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx408) ; 2 uses
  %cmp.n409 = icmp eq i64 %i.ct, %n.vec399
  br i1 %cmp.n409, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader513

.lr.ph89.i.i.i.i.i.preheader513:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block407
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.cu, %middle.block407 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.dc, %middle.block407 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader518, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader518 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.df, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader518 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05683.i.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !18
  %i.df = add nsw i32 %i.de, %.07582.i.i.i.i.i    ; 2 uses
  %i.dg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !752

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader513, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader513 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader513 ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05588.i.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !18
  %i.dj = add nsw i32 %i.di, %.187.i.i.i.i.i      ; 2 uses
  %i.dk = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.as
  br i1 %i.dl, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !753

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !18 ; 3 uses
  %i.dn = icmp sgt i64 %i.as, 1
  br i1 %i.dn, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.q
  %i.do = add nsw i64 %i.as, -1                   ; 2 uses
  %min.iters.check413 = icmp ult i64 %i.as, 9
  br i1 %min.iters.check413, label %.lr.ph94.i.i.i.i.i.preheader509, label %vector.ph414

vector.ph414:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec415 = and i64 %i.do, -8                   ; 3 uses
  %i.dp = or disjoint i64 %n.vec415, 1
  %i.dq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dm, i64 0
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph414
  %index417 = phi i64 [ 0, %vector.ph414 ], [ %index.next422, %vector.body416 ] ; 2 uses
  %vec.phi418 = phi <4 x i32> [ %i.dq, %vector.ph414 ], [ %i.du, %vector.body416 ]
  %vec.phi419 = phi <4 x i32> [ zeroinitializer, %vector.ph414 ], [ %i.dv, %vector.body416 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index417 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %wide.load420 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !18
  %wide.load421 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !18
  %i.du = add <4 x i32> %wide.load420, %vec.phi418 ; 2 uses
  %i.dv = add <4 x i32> %wide.load421, %vec.phi419 ; 2 uses
  %index.next422 = add nuw i64 %index417, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next422, %n.vec415
  br i1 %i.dw, label %middle.block423, label %vector.body416, !llvm.loop !754

middle.block423:                                  ; preds = %vector.body416
  %bin.rdx424 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx424) ; 2 uses
  %cmp.n425 = icmp eq i64 %i.do, %n.vec415
  br i1 %cmp.n425, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader509

.lr.ph94.i.i.i.i.i.preheader509:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block423
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dp, %middle.block423 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.dm, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dx, %middle.block423 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader509, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader509 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader509 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.092.i.i.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !18
  %i.ea = add nsw i32 %i.dz, %.291.i.i.i.i.i      ; 2 uses
  %i.eb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.eb, %i.as
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !755

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block407, %middle.block423, %bb.q, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.dm, %bb.q ], [ %i.dx, %middle.block423 ], [ %i.dc, %middle.block407 ], [ %i.dj, %.lr.ph89.i.i.i.i.i ]
  %i.ec = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.aq, %bb.i ], [ %i.ec, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !363 ; 13 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !304 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !18
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !18
  %i.el = sub nsw i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185

bb.s:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.en = icmp eq i64 %i.d, 0
  br i1 %i.en, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ep = and i64 %i.eo, 3
  %.not.i.i.i.i.i.i.i.i.i151 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i151, label %bb.u, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i152

bb.u:                                             ; preds = %bb.t
  %i.eq = lshr exact i64 %i.eo, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = and i64 %i.er, 3
  %i.et = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i152

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i152: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i153 = phi i64 [ %i.et, %bb.u ], [ %i.d, %bb.t ] ; 12 uses
  %i.eu = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i153 ; 5 uses
  %i.ev = sdiv i64 %i.eu, 8
  %i.ew = shl nsw i64 %i.ev, 3                    ; 2 uses
  %i.ex = sdiv i64 %i.eu, 4                       ; 2 uses
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %i.ez = add nsw i64 %i.ew, %.0.i.i.i.i.i.i.i.i.i153 ; 2 uses
  %i.fa = add nsw i64 %i.ey, %.0.i.i.i.i.i.i.i.i.i153 ; 4 uses
  %.off.i.i.i.i.i154 = add i64 %i.eu, 3
  %.not.i.i.i.i.i155 = icmp ult i64 %.off.i.i.i.i.i154, 7
  br i1 %.not.i.i.i.i.i155, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i152
  %i.fb = getelementptr [4 x i8], ptr %i.ee, i64 %.0.i.i.i.i.i.i.i.i.i153 ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !15 ; 2 uses
  %i.fd = icmp sgt i64 %i.eu, 7
  br i1 %i.fd, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr i8, ptr %i.fb, i64 16
  %i.ff = load <4 x i32>, ptr %i.fe, align 1, !tbaa !15 ; 2 uses
  %i.fg = bitcast <2 x i64> %i.fc to <4 x i32>    ; 2 uses
  %i.fh = icmp samesign ugt i64 %i.eu, 15
  br i1 %i.fh, label %.lr.ph.preheader.i.i.i.i.i174, label %._crit_edge.i.i.i.i.i171

.lr.ph.preheader.i.i.i.i.i174:                    ; preds = %bb.w
  %.05777.i.i.i.i.i175 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i153, 8
  br label %.lr.ph.i.i.i.i.i176

._crit_edge.i.i.i.i.i171:                         ; preds = %.lr.ph.i.i.i.i.i176, %bb.w
  %.lcssa.i.i.i.i.i172 = phi <4 x i32> [ %i.ff, %bb.w ], [ %i.fs, %.lr.ph.i.i.i.i.i176 ]
  %.sroa.067.0.lcssa.i.i.i.i.i173 = phi <4 x i32> [ %i.fg, %bb.w ], [ %i.fo, %.lr.ph.i.i.i.i.i176 ]
  %i.fi = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i173, %.lcssa.i.i.i.i.i172 ; 2 uses
  %i.fj = bitcast <4 x i32> %i.fi to <2 x i64>
  %i.fk = icmp sgt i64 %i.ey, %i.ew
  br i1 %i.fk, label %bb.x, label %bb.y

.lr.ph.i.i.i.i.i176:                              ; preds = %.lr.ph.i.i.i.i.i176, %.lr.ph.preheader.i.i.i.i.i174
  %.05780.i.i.i.i.i177 = phi i64 [ %.057.i.i.i.i.i180, %.lr.ph.i.i.i.i.i176 ], [ %.05777.i.i.i.i.i175, %.lr.ph.preheader.i.i.i.i.i174 ] ; 3 uses
  %.057.in79.i.i.i.i.i178 = phi i64 [ %.05780.i.i.i.i.i177, %.lr.ph.i.i.i.i.i176 ], [ %.0.i.i.i.i.i.i.i.i.i153, %.lr.ph.preheader.i.i.i.i.i174 ]
  %.sroa.067.078.i.i.i.i.i179 = phi <4 x i32> [ %i.fo, %.lr.ph.i.i.i.i.i176 ], [ %i.fg, %.lr.ph.preheader.i.i.i.i.i174 ]
  %i.fl = phi <4 x i32> [ %i.fs, %.lr.ph.i.i.i.i.i176 ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i174 ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05780.i.i.i.i.i177
  %i.fn = load <4 x i32>, ptr %i.fm, align 1, !tbaa !15
  %i.fo = add <4 x i32> %i.fn, %.sroa.067.078.i.i.i.i.i179 ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.ee, i64 %.057.in79.i.i.i.i.i178
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load <4 x i32>, ptr %i.fq, align 1, !tbaa !15
  %i.fs = add <4 x i32> %i.fr, %i.fl              ; 2 uses
  %.057.i.i.i.i.i180 = add nsw i64 %.05780.i.i.i.i.i177, 8 ; 2 uses
  %i.ft = icmp slt i64 %.057.i.i.i.i.i180, %i.ez
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i176, label %._crit_edge.i.i.i.i.i171, !llvm.loop !749

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i171
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ez
  %i.fv = load <4 x i32>, ptr %i.fu, align 1, !tbaa !15
  %i.fw = add <4 x i32> %i.fv, %i.fi
  %i.fx = bitcast <4 x i32> %i.fw to <2 x i64>
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i.i171, %bb.v
  %.sroa.067.2.i.i.i.i.i156 = phi <2 x i64> [ %i.fc, %bb.v ], [ %i.fx, %bb.x ], [ %i.fj, %._crit_edge.i.i.i.i.i171 ] ; 2 uses
  %i.fy = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i156 to <4 x i32>
  %i.fz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i156 to <4 x i32> ; 2 uses
  %i.ga = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gb = add <4 x i32> %i.ga, %i.fy              ; 2 uses
  %shift487 = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop488 = add nsw <4 x i32> %i.gb, %shift487
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fz) ; 2 uses
  %i.gc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i153, 0
  br i1 %i.gc, label %.lr.ph85.i.i.i.i.i167.preheader, label %.preheader.i.i.i.i.i159

.lr.ph85.i.i.i.i.i167.preheader:                  ; preds = %bb.y
  %min.iters.check429 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i153, 8
  br i1 %min.iters.check429, label %.lr.ph85.i.i.i.i.i167.preheader503, label %vector.ph430

vector.ph430:                                     ; preds = %.lr.ph85.i.i.i.i.i167.preheader
  %n.vec431 = and i64 %.0.i.i.i.i.i.i.i.i.i153, 9223372036854775800 ; 3 uses
  %i.gd = shufflevector <4 x i32> %foldExtExtBinop488, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body432

vector.body432:                                   ; preds = %vector.body432, %vector.ph430
  %index433 = phi i64 [ 0, %vector.ph430 ], [ %index.next438, %vector.body432 ] ; 2 uses
  %vec.phi434 = phi <4 x i32> [ %i.gd, %vector.ph430 ], [ %i.gg, %vector.body432 ]
  %vec.phi435 = phi <4 x i32> [ zeroinitializer, %vector.ph430 ], [ %i.gh, %vector.body432 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index433 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load436 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !18
  %wide.load437 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !18
  %i.gg = add <4 x i32> %wide.load436, %vec.phi434 ; 2 uses
  %i.gh = add <4 x i32> %wide.load437, %vec.phi435 ; 2 uses
  %index.next438 = add nuw i64 %index433, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next438, %n.vec431
  br i1 %i.gi, label %middle.block439, label %vector.body432, !llvm.loop !756

middle.block439:                                  ; preds = %vector.body432
  %bin.rdx440 = add <4 x i32> %i.gh, %i.gg
  %i.gj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx440) ; 2 uses
  %cmp.n441 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i153, %n.vec431
  br i1 %cmp.n441, label %.preheader.i.i.i.i.i159, label %.lr.ph85.i.i.i.i.i167.preheader503

.lr.ph85.i.i.i.i.i167.preheader503:               ; preds = %.lr.ph85.i.i.i.i.i167.preheader, %middle.block439
  %.05683.i.i.i.i.i168.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i167.preheader ], [ %n.vec431, %middle.block439 ]
  %.07582.i.i.i.i.i169.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.i167.preheader ], [ %i.gj, %middle.block439 ]
  br label %.lr.ph85.i.i.i.i.i167

.preheader.i.i.i.i.i159:                          ; preds = %.lr.ph85.i.i.i.i.i167, %middle.block439, %bb.y
  %.075.lcssa.i.i.i.i.i160 = phi i32 [ %5, %bb.y ], [ %i.gj, %middle.block439 ], [ %i.gz, %.lr.ph85.i.i.i.i.i167 ] ; 3 uses
  %i.gk = icmp slt i64 %i.fa, %i.d
  br i1 %i.gk, label %.lr.ph89.i.i.i.i.i164.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161

.lr.ph89.i.i.i.i.i164.preheader:                  ; preds = %.preheader.i.i.i.i.i159
  %i.gl = shl nsw i64 %i.ex, 2
  %i.gm = add i64 %.0.i.i.i.i.i.i.i.i.i153, %i.gl
  %i.gn = sub i64 %i.d, %i.gm                     ; 3 uses
  %min.iters.check445 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check445, label %.lr.ph89.i.i.i.i.i164.preheader498, label %vector.ph446

vector.ph446:                                     ; preds = %.lr.ph89.i.i.i.i.i164.preheader
  %n.vec447 = and i64 %i.gn, -8                   ; 3 uses
  %i.go = add i64 %i.fa, %n.vec447
  %i.gp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i160, i64 0
  %i.gq = getelementptr [4 x i8], ptr %i.ee, i64 %i.fa
  br label %vector.body448

vector.body448:                                   ; preds = %vector.body448, %vector.ph446
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next454, %vector.body448 ] ; 2 uses
  %vec.phi450 = phi <4 x i32> [ %i.gp, %vector.ph446 ], [ %i.gt, %vector.body448 ]
  %vec.phi451 = phi <4 x i32> [ zeroinitializer, %vector.ph446 ], [ %i.gu, %vector.body448 ]
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %index449 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load452 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !18
  %wide.load453 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !18
  %i.gt = add <4 x i32> %wide.load452, %vec.phi450 ; 2 uses
  %i.gu = add <4 x i32> %wide.load453, %vec.phi451 ; 2 uses
  %index.next454 = add nuw i64 %index449, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next454, %n.vec447
  br i1 %i.gv, label %middle.block455, label %vector.body448, !llvm.loop !757

middle.block455:                                  ; preds = %vector.body448
  %bin.rdx456 = add <4 x i32> %i.gu, %i.gt
  %i.gw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx456) ; 2 uses
  %cmp.n457 = icmp eq i64 %i.gn, %n.vec447
  br i1 %cmp.n457, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161, label %.lr.ph89.i.i.i.i.i164.preheader498

.lr.ph89.i.i.i.i.i164.preheader498:               ; preds = %.lr.ph89.i.i.i.i.i164.preheader, %middle.block455
  %.05588.i.i.i.i.i165.ph = phi i64 [ %i.fa, %.lr.ph89.i.i.i.i.i164.preheader ], [ %i.go, %middle.block455 ]
  %.187.i.i.i.i.i166.ph = phi i32 [ %.075.lcssa.i.i.i.i.i160, %.lr.ph89.i.i.i.i.i164.preheader ], [ %i.gw, %middle.block455 ]
  br label %.lr.ph89.i.i.i.i.i164

.lr.ph85.i.i.i.i.i167:                            ; preds = %.lr.ph85.i.i.i.i.i167.preheader503, %.lr.ph85.i.i.i.i.i167
  %.05683.i.i.i.i.i168 = phi i64 [ %i.ha, %.lr.ph85.i.i.i.i.i167 ], [ %.05683.i.i.i.i.i168.ph, %.lr.ph85.i.i.i.i.i167.preheader503 ] ; 2 uses
  %.07582.i.i.i.i.i169 = phi i32 [ %i.gz, %.lr.ph85.i.i.i.i.i167 ], [ %.07582.i.i.i.i.i169.ph, %.lr.ph85.i.i.i.i.i167.preheader503 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.05683.i.i.i.i.i168
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !18
  %i.gz = add nsw i32 %i.gy, %.07582.i.i.i.i.i169 ; 2 uses
  %i.ha = add nuw nsw i64 %.05683.i.i.i.i.i168, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i170 = icmp eq i64 %i.ha, %.0.i.i.i.i.i.i.i.i.i153
  br i1 %exitcond.not.i.i.i.i.i170, label %.preheader.i.i.i.i.i159, label %.lr.ph85.i.i.i.i.i167, !llvm.loop !758

.lr.ph89.i.i.i.i.i164:                            ; preds = %.lr.ph89.i.i.i.i.i164.preheader498, %.lr.ph89.i.i.i.i.i164
  %.05588.i.i.i.i.i165 = phi i64 [ %i.he, %.lr.ph89.i.i.i.i.i164 ], [ %.05588.i.i.i.i.i165.ph, %.lr.ph89.i.i.i.i.i164.preheader498 ] ; 2 uses
  %.187.i.i.i.i.i166 = phi i32 [ %i.hd, %.lr.ph89.i.i.i.i.i164 ], [ %.187.i.i.i.i.i166.ph, %.lr.ph89.i.i.i.i.i164.preheader498 ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05588.i.i.i.i.i165
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !18
  %i.hd = add nsw i32 %i.hc, %.187.i.i.i.i.i166   ; 2 uses
  %i.he = add nsw i64 %.05588.i.i.i.i.i165, 1     ; 2 uses
  %i.hf = icmp slt i64 %i.he, %i.d
  br i1 %i.hf, label %.lr.ph89.i.i.i.i.i164, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161, !llvm.loop !759

bb.z:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i152
  %i.hg = load i32, ptr %i.ee, align 4, !tbaa !18 ; 3 uses
  %i.hh = icmp sgt i64 %i.d, 1
  br i1 %i.hh, label %.lr.ph94.i.i.i.i.i181.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161

.lr.ph94.i.i.i.i.i181.preheader:                  ; preds = %bb.z
  %i.hi = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check461 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check461, label %.lr.ph94.i.i.i.i.i181.preheader494, label %vector.ph462

vector.ph462:                                     ; preds = %.lr.ph94.i.i.i.i.i181.preheader
  %n.vec463 = and i64 %i.hi, -8                   ; 3 uses
  %i.hj = or disjoint i64 %n.vec463, 1
  %i.hk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hg, i64 0
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph462
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next470, %vector.body464 ] ; 2 uses
  %vec.phi466 = phi <4 x i32> [ %i.hk, %vector.ph462 ], [ %i.ho, %vector.body464 ]
  %vec.phi467 = phi <4 x i32> [ zeroinitializer, %vector.ph462 ], [ %i.hp, %vector.body464 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index465 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %wide.load468 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !18
  %wide.load469 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !18
  %i.ho = add <4 x i32> %wide.load468, %vec.phi466 ; 2 uses
  %i.hp = add <4 x i32> %wide.load469, %vec.phi467 ; 2 uses
  %index.next470 = add nuw i64 %index465, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next470, %n.vec463
  br i1 %i.hq, label %middle.block471, label %vector.body464, !llvm.loop !760

middle.block471:                                  ; preds = %vector.body464
  %bin.rdx472 = add <4 x i32> %i.hp, %i.ho
  %i.hr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx472) ; 2 uses
  %cmp.n473 = icmp eq i64 %i.hi, %n.vec463
  br i1 %cmp.n473, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161, label %.lr.ph94.i.i.i.i.i181.preheader494

.lr.ph94.i.i.i.i.i181.preheader494:               ; preds = %.lr.ph94.i.i.i.i.i181.preheader, %middle.block471
  %.092.i.i.i.i.i182.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i181.preheader ], [ %i.hj, %middle.block471 ]
  %.291.i.i.i.i.i183.ph = phi i32 [ %i.hg, %.lr.ph94.i.i.i.i.i181.preheader ], [ %i.hr, %middle.block471 ]
  br label %.lr.ph94.i.i.i.i.i181

.lr.ph94.i.i.i.i.i181:                            ; preds = %.lr.ph94.i.i.i.i.i181.preheader494, %.lr.ph94.i.i.i.i.i181
  %.092.i.i.i.i.i182 = phi i64 [ %i.hv, %.lr.ph94.i.i.i.i.i181 ], [ %.092.i.i.i.i.i182.ph, %.lr.ph94.i.i.i.i.i181.preheader494 ] ; 2 uses
  %.291.i.i.i.i.i183 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i181 ], [ %.291.i.i.i.i.i183.ph, %.lr.ph94.i.i.i.i.i181.preheader494 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.092.i.i.i.i.i182
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !18
  %i.hu = add nsw i32 %i.ht, %.291.i.i.i.i.i183   ; 2 uses
  %i.hv = add nuw nsw i64 %.092.i.i.i.i.i182, 1   ; 2 uses
  %exitcond102.not.i.i.i.i.i184 = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond102.not.i.i.i.i.i184, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161, label %.lr.ph94.i.i.i.i.i181, !llvm.loop !761

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161: ; preds = %.lr.ph89.i.i.i.i.i164, %.lr.ph94.i.i.i.i.i181, %middle.block455, %middle.block471, %bb.z, %.preheader.i.i.i.i.i159
  %.0.i.i.i162 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i181 ], [ %.075.lcssa.i.i.i.i.i160, %.preheader.i.i.i.i.i159 ], [ %i.hg, %bb.z ], [ %i.hr, %middle.block471 ], [ %i.gw, %middle.block455 ], [ %i.hd, %.lr.ph89.i.i.i.i.i164 ]
  %i.hw = sext i32 %.0.i.i.i162 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161, %bb.s, %bb.r
  %.0.i.i163 = phi i64 [ %i.em, %bb.r ], [ %i.hw, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161 ], [ 0, %bb.s ]
  %i.hx = add nsw i64 %.0.i.i163, %.0.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.hy, align 8, !tbaa !397
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !304
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !303
  %i.id = shl i64 %i.ic, 2
  %i.ie = add i64 %i.id, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 %i.ie, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !363 ; 2 uses
  %.not.i = icmp eq ptr %i.ig, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !303
  %i.ii = shl i64 %i.ih, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ig, i8 0, i64 %i.ii, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185, %bb.aa
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef %i.hx)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader unwind label %bb.ae

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ik = icmp sgt i64 %i.d, 0
  br i1 %i.ik, label %.lr.ph310, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph310:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.is = udiv i64 %i.b, 11
end_hunk_2
