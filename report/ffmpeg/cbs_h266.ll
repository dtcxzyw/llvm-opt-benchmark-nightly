inline.NumInlined: 72
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 33
begin_hunk_0_@cbs_h266_write_nal_unit:bb.a
.preheader1078.i.new:                             ; preds = %.preheader1078.i, %bb.db
  %indvars.iv1387.i = phi i64 [ %indvars.iv.next1388.i.1, %bb.db ], [ 0, %.preheader1078.i ] ; 4 uses
  %.07891188.i = phi i32 [ %.1790.i.1, %bb.db ], [ 0, %.preheader1078.i ] ; 3 uses
  %niter2385 = phi i64 [ %niter2385.next.1, %bb.db ], [ 0, %.preheader1078.i ]
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 %indvars.iv1387.i
  %i.pc = load i8, ptr %i.pb, align 2, !tbaa !27
  %.not993.i = icmp eq i8 %i.pc, 0
  br i1 %.not993.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.preheader1078.i.new
  %i.pd = trunc i64 %indvars.iv1387.i to i8
  %i.pe = add nsw i32 %.07891188.i, 1
  %i.pf = sext i32 %.07891188.i to i64
  %i.pg = getelementptr inbounds i8, ptr %i.pa, i64 %i.pf
  store i8 %i.pd, ptr %i.pg, align 1, !tbaa !27
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.preheader1078.i.new
  %.1790.i = phi i32 [ %i.pe, %bb.cy ], [ %.07891188.i, %.preheader1078.i.new ] ; 3 uses
  %indvars.iv.next1388.i = or disjoint i64 %indvars.iv1387.i, 1 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oz, i64 %indvars.iv.next1388.i
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !27
  %.not993.i.1 = icmp eq i8 %i.pi, 0
  br i1 %.not993.i.1, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pj = trunc i64 %indvars.iv.next1388.i to i8
  %i.pk = add nsw i32 %.1790.i, 1
  %i.pl = sext i32 %.1790.i to i64
  %i.pm = getelementptr inbounds i8, ptr %i.pa, i64 %i.pl
  store i8 %i.pj, ptr %i.pm, align 1, !tbaa !27
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.1790.i.1 = phi i32 [ %i.pk, %bb.da ], [ %.1790.i, %bb.cz ] ; 3 uses
  %indvars.iv.next1388.i.1 = add nuw nsw i64 %indvars.iv1387.i, 2 ; 2 uses
  %niter2385.next.1 = add i64 %niter2385, 2       ; 2 uses
  %niter2385.ncmp.1 = icmp eq i64 %niter2385.next.1, %unroll_iter2384
  br i1 %niter2385.ncmp.1, label %.unr-lcssa, label %.preheader1078.i.new, !llvm.loop !296

.unr-lcssa:                                       ; preds = %bb.db
  br i1 %lcmp.mod2381.not.not, label %.epil.preheader2379, label %.epilog-lcssa

.epil.preheader2379:                              ; preds = %.unr-lcssa, %.preheader1078.i
  %indvars.iv1387.i.epil.init = phi i64 [ 0, %.preheader1078.i ], [ %indvars.iv.next1388.i.1, %.unr-lcssa ] ; 2 uses
  %.07891188.i.epil.init = phi i32 [ 0, %.preheader1078.i ], [ %.1790.i.1, %.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod2383)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oz, i64 %indvars.iv1387.i.epil.init
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !27
  %.not993.i.epil = icmp eq i8 %i.po, 0
  br i1 %.not993.i.epil, label %.epilog-lcssa, label %bb.dc

bb.dc:                                            ; preds = %.epil.preheader2379
  %i.pp = trunc i64 %indvars.iv1387.i.epil.init to i8
  %i.pq = add nsw i32 %.07891188.i.epil.init, 1
  %i.pr = sext i32 %.07891188.i.epil.init to i64
  %i.ps = getelementptr inbounds i8, ptr %i.pa, i64 %i.pr
  store i8 %i.pp, ptr %i.ps, align 1, !tbaa !27
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader2379, %bb.dc, %.unr-lcssa
  %.1790.i.lcssa = phi i32 [ %.1790.i.1, %.unr-lcssa ], [ %i.pq, %bb.dc ], [ %.07891188.i.epil.init, %.epil.preheader2379 ]
  %i.pt = trunc i32 %.1790.i.lcssa to i8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv1391.i
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !27
  %indvars.iv.next1392.i = add nuw nsw i64 %indvars.iv1391.i, 1
  %exitcond1395.not.i = icmp eq i64 %indvars.iv1391.i, %i.og
  br i1 %exitcond1395.not.i, label %bb.dd, label %.preheader1078.i, !llvm.loop !297

bb.dd:                                            ; preds = %.epilog-lcssa
  %i.pv = getelementptr inbounds nuw i8, ptr %i.fp, i64 377552 ; 5 uses
  %i.pw = load i8, ptr %i.pv, align 8, !tbaa !27
  %i.px = zext i8 %i.pw to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !27
  %i.qa = add i8 %i.pz, 1
  store i8 %i.qa, ptr %i.ay, align 16, !tbaa !27
  %i.qb = zext nneg i16 %.1801.i to i32           ; 2 uses
  %i.qc = icmp ugt i16 %.1801.i, 1
  br i1 %i.qc, label %.lr.ph1224.i, label %.preheader1069.._crit_edge1230_crit_edge.i

.lr.ph1224.i:                                     ; preds = %bb.dd
  %i.qd = and i8 %.1799.i, -5
  %or.cond44.i = icmp eq i8 %i.qd, 0
  %i.qe = getelementptr inbounds nuw i8, ptr %i.fp, i64 8330 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.fp, i64 8332
  %i.qg = getelementptr inbounds nuw i8, ptr %i.fp, i64 8329 ; 2 uses
  %i.qh = add nsw i32 %i.qb, -1
  %wide.trip.count1448.i = zext nneg i32 %i.qh to i64
  br label %bb.df

.loopexit1073.thread.i:                           ; preds = %.loopexit1070.i, %.loopexit1073.i, %.loopexit1073.loopexit1272.i, %bb.dh
  %indvars.iv.next1431.i = add nuw nsw i64 %indvars.iv1430.i, 1
  %indvar.next1397.i = add nuw nsw i64 %indvar1396.i, 1 ; 2 uses
  %indvars.iv.next1444.i = add nuw nsw i64 %indvars.iv1443.i, 1
  %exitcond1449.not.i = icmp eq i64 %indvar.next1397.i, %wide.trip.count1448.i
  br i1 %exitcond1449.not.i, label %.preheader1069.i, label %bb.df, !llvm.loop !298

.preheader1069.i:                                 ; preds = %.loopexit1073.thread.i
  %i.qi = load i8, ptr %i.qg, align 1, !tbaa !284
  %.not949.i = icmp eq i8 %i.qi, 0
  br i1 %.not949.i, label %.lr.ph1229.split.us.i, label %._crit_edge1230.thread.i

.preheader1069.._crit_edge1230_crit_edge.i:       ; preds = %bb.dd
  %.phi.trans.insert1507.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8329
  %.pre1508.i = load i8, ptr %.phi.trans.insert1507.i, align 1, !tbaa !284
  %i.qj = icmp ne i8 %.pre1508.i, 0
  br label %._crit_edge1230.i

._crit_edge1230.thread.i:                         ; preds = %.preheader1069.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #10
  br label %.preheader1066.i

.lr.ph1229.split.us.i:                            ; preds = %.preheader1069.i
  %i.qk = load i8, ptr %i.qe, align 2, !tbaa !285
  %wide.trip.count1457.i = zext nneg i16 %.1801.i to i64
  %i.ql = add nuw nsw i64 %i.og, 1                ; 2 uses
  %min.iters.check2100 = icmp ult i8 %i.of, 7
  %n.vec2102 = and i64 %i.ql, 504                 ; 3 uses
  %cmp.n2112 = icmp eq i64 %i.ql, %n.vec2102
  br label %bb.de

bb.de:                                            ; preds = %.thread1031.us.i, %.lr.ph1229.split.us.i
  %indvars.iv1455.i = phi i64 [ %indvars.iv.next1456.i, %.thread1031.us.i ], [ 1, %.lr.ph1229.split.us.i ] ; 2 uses
  %.07951228.us.i = phi i16 [ %i.qs, %.thread1031.us.i ], [ 0, %.lr.ph1229.split.us.i ] ; 3 uses
  switch i8 %i.qk, label %.thread1031.us.i [
    i8 0, label %.thread1035.us.i
    i8 1, label %.thread1035.us.i
    i8 2, label %.preheader1068.us.i
  ]

scalar.ph2099:                                    ; preds = %scalar.ph2099.preheader, %scalar.ph2099
  %indvars.iv1450.i = phi i64 [ %indvars.iv.next1451.i, %scalar.ph2099 ], [ %indvars.iv1450.i.ph, %scalar.ph2099.preheader ] ; 3 uses
  %.11819.fr1226.us.i = phi i32 [ %spec.select.us.i, %scalar.ph2099 ], [ %.11819.fr1226.us.i.ph, %scalar.ph2099.preheader ]
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qt, i64 %indvars.iv1450.i
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !27
  %.fr.i = freeze i8 %i.qn
  %.not951.us.i = icmp ne i8 %.fr.i, 0
  %i.qo = zext i1 %.not951.us.i to i32
  %spec.select.us.i = add i32 %.11819.fr1226.us.i, %i.qo ; 2 uses
  %indvars.iv.next1451.i = add nuw nsw i64 %indvars.iv1450.i, 1
  %exitcond1454.not.i = icmp eq i64 %indvars.iv1450.i, %i.og
  br i1 %exitcond1454.not.i, label %.loopexit2115.a, label %scalar.ph2099, !llvm.loop !299

.loopexit2115.a:                                  ; preds = %scalar.ph2099, %middle.block2110
  %spec.select.us.i.lcssa = phi i32 [ %i.rf, %middle.block2110 ], [ %spec.select.us.i, %scalar.ph2099 ]
  %i.qp = icmp ugt i32 %spec.select.us.i.lcssa, 1
  %i.qq = zext i1 %i.qp to i16
  %spec.select1050.us.i = add i16 %.07951228.us.i, %i.qq
  br label %.thread1031.us.i

.thread1035.us.i:                                 ; preds = %bb.de, %bb.de
  %i.qr = add i16 %.07951228.us.i, 1
  br label %.thread1031.us.i

.thread1031.us.i:                                 ; preds = %.thread1035.us.i, %.loopexit2115.a, %bb.de
  %i.qs = phi i16 [ %.07951228.us.i, %bb.de ], [ %spec.select1050.us.i, %.loopexit2115.a ], [ %i.qr, %.thread1035.us.i ] ; 2 uses
  %indvars.iv.next1456.i = add nuw nsw i64 %indvars.iv1455.i, 1 ; 2 uses
  %exitcond1458.not.i = icmp eq i64 %indvars.iv.next1456.i, %wide.trip.count1457.i
  br i1 %exitcond1458.not.i, label %._crit_edge1230.i, label %bb.de, !llvm.loop !300

.preheader1068.us.i:                              ; preds = %bb.de
  %i.qt = getelementptr inbounds nuw [64 x i8], ptr %i.al, i64 %indvars.iv1455.i ; 2 uses
  br i1 %min.iters.check2100, label %scalar.ph2099.preheader, label %vector.body2103

vector.body2103:                                  ; preds = %.preheader1068.us.i, %vector.body2103
  %index2104 = phi i64 [ %index.next2109, %vector.body2103 ], [ 0, %.preheader1068.us.i ] ; 2 uses
  %vec.phi2105.a = phi <4 x i32> [ %i.rc, %vector.body2103 ], [ zeroinitializer, %.preheader1068.us.i ]
  %vec.phi2106 = phi <4 x i32> [ %i.rd, %vector.body2103 ], [ zeroinitializer, %.preheader1068.us.i ]
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %index2104 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  %wide.load2107.a = load <4 x i8>, ptr %i.qu, align 8, !tbaa !27
  %wide.load2108 = load <4 x i8>, ptr %i.qv, align 4, !tbaa !27
  %i.qw = freeze <4 x i8> %wide.load2107.a
  %i.qx = freeze <4 x i8> %wide.load2108
  %i.qy = icmp ne <4 x i8> %i.qw, zeroinitializer
  %i.qz = icmp ne <4 x i8> %i.qx, zeroinitializer
  %i.ra = zext <4 x i1> %i.qy to <4 x i32>
  %i.rb = zext <4 x i1> %i.qz to <4 x i32>
  %i.rc = add <4 x i32> %vec.phi2105.a, %i.ra     ; 2 uses
  %i.rd = add <4 x i32> %vec.phi2106, %i.rb       ; 2 uses
  %index.next2109 = add nuw i64 %index2104, 8     ; 2 uses
  %i.re = icmp eq i64 %index.next2109, %n.vec2102
  br i1 %i.re, label %middle.block2110, label %vector.body2103, !llvm.loop !301

middle.block2110:                                 ; preds = %vector.body2103
  %bin.rdx2111 = add <4 x i32> %i.rd, %i.rc
  %i.rf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx2111) ; 2 uses
  br i1 %cmp.n2112, label %.loopexit2115.a, label %scalar.ph2099.preheader

scalar.ph2099.preheader:                          ; preds = %.preheader1068.us.i, %middle.block2110
  %indvars.iv1450.i.ph = phi i64 [ 0, %.preheader1068.us.i ], [ %n.vec2102, %middle.block2110 ]
  %.11819.fr1226.us.i.ph = phi i32 [ 0, %.preheader1068.us.i ], [ %i.rf, %middle.block2110 ]
  br label %scalar.ph2099

bb.df:                                            ; preds = %.loopexit1073.thread.i, %.lr.ph1224.i
  %indvars.iv1443.i = phi i64 [ 2, %.lr.ph1224.i ], [ %indvars.iv.next1444.i, %.loopexit1073.thread.i ] ; 2 uses
  %indvars.iv1430.i = phi i64 [ 1, %.lr.ph1224.i ], [ %indvars.iv.next1431.i, %.loopexit1073.thread.i ] ; 17 uses
  %indvar1396.i = phi i64 [ 0, %.lr.ph1224.i ], [ %indvar.next1397.i, %.loopexit1073.thread.i ] ; 4 uses
  %i.rg = mul nuw nsw i64 %indvar1396.i, 257
  %i.rh = getelementptr i8, ptr %i.ay, i64 %i.rg
  %scevgep1426.i = getelementptr i8, ptr %i.rh, i64 257 ; 2 uses
  %i.ri = add nuw nsw i64 %indvar1396.i, 2
  %i.rj = shl nuw nsw i64 %indvar1396.i, 6
  %i.rk = getelementptr i8, ptr %i.al, i64 %i.rj
  %scevgep1398.i = getelementptr i8, ptr %i.rk, i64 64
  br i1 %or.cond44.i, label %bb.dg, label %bb.dn

bb.dg:                                            ; preds = %bb.df
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv1430.i
  store i16 1, ptr %i.rl, align 2, !tbaa !82
  %i.rm = load i8, ptr %i.qg, align 1, !tbaa !284
  %.not961.i = icmp eq i8 %i.rm, 0
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv1430.i
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !27
  %i.rp = zext i8 %i.ro to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.rp
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !27
  %i.rs = add i8 %i.rr, 1                         ; 2 uses
  %i.rt = getelementptr inbounds nuw [257 x i8], ptr %i.ay, i64 %indvars.iv1430.i ; 4 uses
  br i1 %.not961.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !27
  br label %.loopexit1073.thread.i

bb.di:                                            ; preds = %bb.dg
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %indvars.iv1430.i
  store i8 %i.rs, ptr %i.ru, align 1, !tbaa !27
  br label %bb.dj

.loopexit1070.i:                                  ; preds = %bb.dm, %bb.dj
  %i.rv = icmp sgt i64 %indvars.iv1432.i, 1
  br i1 %i.rv, label %bb.dj, label %.loopexit1073.thread.i, !llvm.loop !302

bb.dj:                                            ; preds = %.loopexit1070.i, %bb.di
  %indvars.iv1432.i = phi i64 [ %indvars.iv1430.i, %bb.di ], [ %indvars.iv.next1433.i, %.loopexit1070.i ] ; 4 uses
  %indvars.iv.next1433.i = add nsw i64 %indvars.iv1432.i, -1 ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 %indvars.iv.next1433.i ; 2 uses
  store i8 0, ptr %i.rw, align 1, !tbaa !27
  %.not9621211.i = icmp sgt i64 %indvars.iv1432.i, %indvars.iv1430.i
  br i1 %.not9621211.i, label %.loopexit1070.i, label %.lr.ph1214.i

.lr.ph1214.i:                                     ; preds = %bb.dj
  %invariant.gep1215.i = getelementptr inbounds nuw i8, ptr %i.he, i64 %indvars.iv.next1433.i
  %invariant.gep1217.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv.next1433.i
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dm, %.lr.ph1214.i
  %i.rx = phi i8 [ 0, %.lr.ph1214.i ], [ %i.sc, %bb.dm ] ; 2 uses
  %indvars.iv1434.i = phi i64 [ %indvars.iv1432.i, %.lr.ph1214.i ], [ %indvars.iv.next1435.i, %bb.dm ] ; 4 uses
  %gep1216.i = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep1215.i, i64 %indvars.iv1434.i
  %i.ry = load i8, ptr %gep1216.i, align 1, !tbaa !27
  %.not964.i = icmp eq i8 %i.ry, 0
  br i1 %.not964.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %gep1218.i = getelementptr inbounds nuw [63 x i8], ptr %invariant.gep1217.i, i64 %indvars.iv1434.i
  %i.rz = load i8, ptr %gep1218.i, align 1, !tbaa !27
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rt, i64 %indvars.iv1434.i
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !27
  %.1012.i = call i8 @llvm.umin.i8(i8 %i.sb, i8 %i.rz)
  %spec.store.select.i = call i8 @llvm.umax.i8(i8 %i.rx, i8 %.1012.i) ; 2 uses
  store i8 %spec.store.select.i, ptr %i.rw, align 1
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.sc = phi i8 [ %spec.store.select.i, %bb.dl ], [ %i.rx, %bb.dk ]
  %indvars.iv.next1435.i = add nuw nsw i64 %indvars.iv1434.i, 1 ; 2 uses
  %exitcond1440.not.i = icmp eq i64 %indvars.iv.next1435.i, %indvars.iv1443.i
  br i1 %exitcond1440.not.i, label %.loopexit1070.i, label %bb.dk, !llvm.loop !303

bb.dn:                                            ; preds = %bb.df
  %i.sd = load i8, ptr %i.qe, align 2, !tbaa !285
  switch i8 %i.sd, label %..loopexit1073_crit_edge.i [
    i8 1, label %.loopexit1073.loopexit1272.i
    i8 2, label %.preheader1077.i
  ]

..loopexit1073_crit_edge.i:                       ; preds = %bb.dn
  %.phi.trans.insert1505.i = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv1430.i
  %.pre1506.i = load i16, ptr %.phi.trans.insert1505.i, align 2, !tbaa !82
  br label %.loopexit1073.i

.preheader1077.i:                                 ; preds = %bb.dn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep1398.i, i8 0, i64 %wide.trip.count1385.i, i1 false), !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1426.i, i8 0, i64 %wide.trip.count1385.i, i1 false), !tbaa !27
  %i.se = getelementptr inbounds nuw [64 x i8], ptr %i.qf, i64 %indvars.iv1430.i ; 2 uses
  %i.sf = getelementptr inbounds nuw [64 x i8], ptr %i.al, i64 %indvars.iv1430.i ; 6 uses
  %i.sg = getelementptr inbounds nuw [64 x i8], ptr %i.az, i64 %indvars.iv1430.i ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv1430.i
  %i.si = getelementptr inbounds nuw [257 x i8], ptr %i.ay, i64 %indvars.iv1430.i ; 3 uses
  br label %bb.do

.loopexit1073.loopexit1272.i:                     ; preds = %bb.dn
  %i.sj = trunc i64 %indvars.iv1430.i to i16
  %i.sk = add nuw i16 %i.sj, 1
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv1430.i
  store i16 %i.sk, ptr %i.sl, align 2, !tbaa !82
  %i.sm = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv1430.i
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !27
  %i.so = zext i8 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !27
  %i.sr = add i8 %i.sq, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1426.i, i8 %i.sr, i64 %i.ri, i1 false), !tbaa !27
  br label %.loopexit1073.thread.i

bb.do:                                            ; preds = %bb.dq, %.preheader1077.i
  %indvars.iv1403.i = phi i64 [ 0, %.preheader1077.i ], [ %indvars.iv.next1404.i, %bb.dq ] ; 6 uses
  %.07881193.i = phi i8 [ 0, %.preheader1077.i ], [ %.1.i, %bb.dq ]
  %.88161191.i = phi i32 [ 0, %.preheader1077.i ], [ %.9817.i, %bb.dq ] ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.se, i64 %indvars.iv1403.i
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !27
  %.not960.i = icmp eq i8 %i.st, 0
  br i1 %.not960.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.su = getelementptr inbounds nuw i8, ptr %i.sf, i64 %indvars.iv1403.i
  store i8 1, ptr %i.su, align 1, !tbaa !27
  %i.sv = trunc i64 %indvars.iv1403.i to i8       ; 2 uses
  %i.sw = sext i32 %.88161191.i to i64
  %i.sx = getelementptr inbounds i8, ptr %i.sg, i64 %i.sw
  store i8 %i.sv, ptr %i.sx, align 1, !tbaa !27
  %i.sy = load i8, ptr %i.sh, align 1, !tbaa !27
  %i.sz = zext i8 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !27
  %i.tc = add i8 %i.tb, 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.si, i64 %indvars.iv1403.i
  store i8 %i.tc, ptr %i.td, align 1, !tbaa !27
  %i.te = add nsw i32 %.88161191.i, 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.9817.i = phi i32 [ %i.te, %bb.dp ], [ %.88161191.i, %bb.do ] ; 3 uses
  %.1.i = phi i8 [ %i.sv, %bb.dp ], [ %.07881193.i, %bb.do ] ; 3 uses
  %indvars.iv.next1404.i = add nuw nsw i64 %indvars.iv1403.i, 1
  %exitcond1406.not.i = icmp eq i64 %indvars.iv1403.i, %i.og
  br i1 %exitcond1406.not.i, label %bb.dr, label %bb.do, !llvm.loop !304

bb.dr:                                            ; preds = %bb.dq
  %i.tf = trunc i32 %.9817.i to i16               ; 3 uses
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv1430.i
  store i16 %i.tf, ptr %i.tg, align 2, !tbaa !82
  %i.th = and i32 %.9817.i, 65535                 ; 2 uses
  %.not1253.i = icmp eq i32 %i.th, 0
  br i1 %.not1253.i, label %._crit_edge1199.i, label %.lr.ph1198.i

.lr.ph1198.i:                                     ; preds = %bb.dr
  %wide.trip.count1415.i = zext nneg i32 %i.th to i64
  br label %bb.ds

bb.ds:                                            ; preds = %._crit_edge.i, %.lr.ph1198.i
  %indvars.iv1412.i = phi i64 [ 0, %.lr.ph1198.i ], [ %indvars.iv.next1413.i, %._crit_edge.i ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sg, i64 %indvars.iv1412.i
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !27
  %i.tk = zext i8 %i.tj to i64                    ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !27  ; 4 uses
  %.not1254.i = icmp eq i8 %i.tm, 0
  br i1 %.not1254.i, label %._crit_edge.i, label %.lr.ph1195.i

.lr.ph1195.i:                                     ; preds = %bb.ds
  %i.tn = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %i.tk ; 3 uses
  %wide.trip.count1410.i = zext i8 %i.tm to i64   ; 2 uses
  %xtraiter2387 = and i64 %wide.trip.count1410.i, 1
  %i.to = icmp eq i8 %i.tm, 1
  br i1 %i.to, label %.epil.preheader2386, label %.lr.ph1195.i.new

.lr.ph1195.i.new:                                 ; preds = %.lr.ph1195.i
  %unroll_iter2390 = and i64 %wide.trip.count1410.i, 254
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %.lr.ph1195.i.new
  %indvars.iv1407.i = phi i64 [ 0, %.lr.ph1195.i.new ], [ %indvars.iv.next1408.i.1, %bb.dt ] ; 3 uses
  %niter2391 = phi i64 [ 0, %.lr.ph1195.i.new ], [ %niter2391.next.1, %bb.dt ]
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 %indvars.iv1407.i
  %i.tq = load i8, ptr %i.tp, align 2, !tbaa !27
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.tr ; 2 uses
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !27
  %spec.store.select1013.i = call i8 @llvm.umax.i8(i8 %i.tt, i8 1)
  store i8 %spec.store.select1013.i, ptr %i.ts, align 1
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tn, i64 %indvars.iv1407.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 1
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !27
  %i.tx = zext i8 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.tx ; 2 uses
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !27
  %spec.store.select1013.i.1 = call i8 @llvm.umax.i8(i8 %i.tz, i8 1)
  store i8 %spec.store.select1013.i.1, ptr %i.ty, align 1
  %indvars.iv.next1408.i.1 = add nuw nsw i64 %indvars.iv1407.i, 2 ; 2 uses
  %niter2391.next.1 = add i64 %niter2391, 2       ; 2 uses
  %niter2391.ncmp.1 = icmp eq i64 %niter2391.next.1, %unroll_iter2390
  br i1 %niter2391.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.dt, !llvm.loop !305

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.dt
  %lcmp.mod2388.not = icmp eq i64 %xtraiter2387, 0
  br i1 %lcmp.mod2388.not, label %._crit_edge.i, label %.epil.preheader2386

.epil.preheader2386:                              ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph1195.i
  %indvars.iv1407.i.epil.init = phi i64 [ 0, %.lr.ph1195.i ], [ %indvars.iv.next1408.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod2389 = trunc i8 %i.tm to i1
  call void @llvm.assume(i1 %lcmp.mod2389)
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tn, i64 %indvars.iv1407.i.epil.init
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !27
  %i.uc = zext i8 %i.ub to i64
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.uc ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !27
  %spec.store.select1013.i.epil = call i8 @llvm.umax.i8(i8 %i.ue, i8 1)
  store i8 %spec.store.select1013.i.epil, ptr %i.ud, align 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader2386, %._crit_edge.i.loopexit.unr-lcssa, %bb.ds
  %indvars.iv.next1413.i = add nuw nsw i64 %indvars.iv1412.i, 1 ; 2 uses
  %exitcond1416.not.i = icmp eq i64 %indvars.iv.next1413.i, %wide.trip.count1415.i
  br i1 %exitcond1416.not.i, label %._crit_edge1199.i, label %bb.ds, !llvm.loop !306

._crit_edge1199.i:                                ; preds = %._crit_edge.i, %bb.dr
  %.not1255.i = icmp eq i8 %.1.i, 0
  br i1 %.not1255.i, label %.loopexit1073.i, label %.lr.ph1209.i

.lr.ph1209.i:                                     ; preds = %._crit_edge1199.i
  %i.uf = zext i8 %.1.i to i64                    ; 3 uses
  br label %bb.du

bb.du:                                            ; preds = %.loopexit1072.i, %.lr.ph1209.i
  %indvars.iv1418.i = phi i64 [ %i.uf, %.lr.ph1209.i ], [ %indvars.iv.next1419.i, %.loopexit1072.i ] ; 4 uses
  %indvars.iv.next1419.i = add nsw i64 %indvars.iv1418.i, -1 ; 6 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.sf, i64 %indvars.iv.next1419.i
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !27
  %.not954.i = icmp eq i8 %i.uh, 0
  br i1 %.not954.i, label %.loopexit1072.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ui = getelementptr inbounds nuw i8, ptr %i.se, i64 %indvars.iv.next1419.i
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !27
  %.not955.i = icmp ne i8 %i.uj, 0
  %.not9561200.i = icmp samesign ugt i64 %indvars.iv1418.i, %i.uf
  %or.cond1250.i = or i1 %.not9561200.i, %.not955.i
  br i1 %or.cond1250.i, label %.loopexit1072.i, label %.lr.ph1202.i

.lr.ph1202.i:                                     ; preds = %bb.dv
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv.next1419.i
  %invariant.gep1203.i = getelementptr inbounds nuw i8, ptr %i.he, i64 %indvars.iv.next1419.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.si, i64 %indvars.iv.next1419.i ; 2 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dz, %.lr.ph1202.i
  %indvars.iv1420.i = phi i64 [ %indvars.iv1418.i, %.lr.ph1202.i ], [ %indvars.iv.next1421.i, %bb.dz ] ; 6 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.si, i64 %indvars.iv1420.i
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !27
  %gep.i = getelementptr inbounds nuw [63 x i8], ptr %invariant.gep.i, i64 %indvars.iv1420.i
  %i.un = load i8, ptr %gep.i, align 1, !tbaa !27
  %.1014.i = call i8 @llvm.umin.i8(i8 %i.um, i8 %i.un)
  %gep1204.i = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep1203.i, i64 %indvars.iv1420.i
  %i.uo = load i8, ptr %gep1204.i, align 1, !tbaa !27
  %.not957.i = icmp eq i8 %i.uo, 0
  br i1 %.not957.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.up = getelementptr inbounds nuw i8, ptr %i.sf, i64 %indvars.iv1420.i
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !27
  %.not958.i = icmp eq i8 %i.uq, 0
  br i1 %.not958.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ur = load i8, ptr %i.uk, align 1, !tbaa !27
  %spec.store.select1015.i = call i8 @llvm.umax.i8(i8 %i.ur, i8 %.1014.i)
  store i8 %spec.store.select1015.i, ptr %i.uk, align 1
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %indvars.iv.next1421.i = add nuw nsw i64 %indvars.iv1420.i, 1
  %exitcond1424.not.i = icmp eq i64 %indvars.iv1420.i, %i.uf
  br i1 %exitcond1424.not.i, label %.loopexit1072.i, label %bb.dw, !llvm.loop !307

.loopexit1072.i:                                  ; preds = %bb.dz, %bb.dv, %bb.du
  %i.us = icmp sgt i64 %indvars.iv1418.i, 1
  br i1 %i.us, label %bb.du, label %.loopexit1073.i, !llvm.loop !308

.loopexit1073.i:                                  ; preds = %.loopexit1072.i, %._crit_edge1199.i, %..loopexit1073_crit_edge.i
  %i.ut = phi i16 [ %.pre1506.i, %..loopexit1073_crit_edge.i ], [ %i.tf, %._crit_edge1199.i ], [ %i.tf, %.loopexit1072.i ]
  %.not965.i = icmp eq i16 %i.ut, 0
  br i1 %.not965.i, label %.thread1038.i, label %.loopexit1073.thread.i

.thread1038.i:                                    ; preds = %.loopexit1073.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #10
  br label %cbs_h266_write_vps.exit.thread

._crit_edge1230.i:                                ; preds = %.thread1031.us.i, %.preheader1069.._crit_edge1230_crit_edge.i
  %i.uu = phi i1 [ %i.qj, %.preheader1069.._crit_edge1230_crit_edge.i ], [ false, %.thread1031.us.i ]
  %.0795.lcssa.i = phi i16 [ 0, %.preheader1069.._crit_edge1230_crit_edge.i ], [ %i.qs, %.thread1031.us.i ] ; 2 uses
  %i.uv = icmp ne i16 %.0795.lcssa.i, 0
  %or.cond47.not.i = select i1 %i.uu, i1 true, i1 %i.uv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #10
  br i1 %or.cond47.not.i, label %.preheader1066.i, label %cbs_h266_write_vps.exit.thread

.preheader1066.i:                                 ; preds = %._crit_edge1230.i, %._crit_edge1230.thread.i
  %.0795.lcssa1591.i = phi i16 [ 0, %._crit_edge1230.thread.i ], [ %.0795.lcssa.i, %._crit_edge1230.i ] ; 6 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.fp, i64 8329 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.fp, i64 25296
  br label %bb.eb

bb.ea:                                            ; preds = %bb.eb
  %indvars.iv.next1460.i = add nuw nsw i64 %indvars.iv1459.i, 1
  %i.uy = load i8, ptr %i.mp, align 4, !tbaa !289
  %i.uz = zext i8 %i.uy to i64
  %.not966.not.i = icmp samesign ult i64 %indvars.iv1459.i, %i.uz
  br i1 %.not966.not.i, label %bb.eb, label %.preheader1064.i, !llvm.loop !309

.preheader1064.i:                                 ; preds = %bb.ea
  %.not1256.i = icmp eq i16 %.1801.i, 0
  br i1 %.not1256.i, label %._crit_edge1235.i, label %.lr.ph1234.i

.lr.ph1234.i:                                     ; preds = %.preheader1064.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %wide.trip.count1465.i = zext nneg i16 %.1801.i to i64
  br label %bb.ec

bb.eb:                                            ; preds = %bb.ea, %.preheader1066.i
  %indvars.iv1459.i = phi i64 [ 0, %.preheader1066.i ], [ %indvars.iv.next1460.i, %bb.ea ] ; 5 uses
  %i.vb = getelementptr inbounds nuw [1376 x i8], ptr %i.ux, i64 %indvars.iv1459.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv1459.i
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !27
  %i.ve = zext i8 %i.vd to i32
  %i.vf = getelementptr inbounds nuw i8, ptr %i.mt, i64 %indvars.iv1459.i
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !27
  %i.vh = zext i8 %i.vg to i32
  %i.vi = call fastcc i32 @cbs_h266_write_profile_tier_level(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.vb, i32 noundef %i.ve, i32 noundef %i.vh) ; 2 uses
  %i.vj = icmp slt i32 %i.vi, 0
  br i1 %i.vj, label %cbs_h266_write_vps.exit.thread, label %bb.ea

bb.ec:                                            ; preds = %bb.ej, %.lr.ph1234.i
  %indvars.iv1462.i = phi i64 [ 0, %.lr.ph1234.i ], [ %indvars.iv.next1463.i, %bb.ej ] ; 5 uses
  %i.vk = load i8, ptr %i.mp, align 4, !tbaa !289 ; 2 uses
  %.not988.i = icmp eq i8 %i.vk, 0                ; 2 uses
  %i.vl = zext i8 %i.vk to i32                    ; 2 uses
  %i.vm = add nuw nsw i32 %i.vl, 1
  %.not989.i = icmp eq i32 %i.vm, %i.qb
  %or.cond.i = select i1 %.not988.i, i1 true, i1 %.not989.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv1462.i
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !27  ; 4 uses
  br i1 %or.cond.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vp = zext i8 %i.vo to i32
  store i32 1, ptr %i.ba, align 4, !tbaa !51
  %i.vq = trunc nuw nsw i64 %indvars.iv1462.i to i32
  store i32 %i.vq, ptr %i.va, align 4, !tbaa !51
  %i.vr = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 8, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.ba, i32 noundef %i.vp, i32 noundef 0, i32 noundef %i.vl) #10 ; 2 uses
  %i.vs = icmp sgt i32 %i.vr, -1
  br i1 %i.vs, label %bb.ej, label %cbs_h266_write_vps.exit.thread

bb.ee:                                            ; preds = %bb.ec
  br i1 %.not988.i, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %.not991.i = icmp eq i8 %i.vo, 0
  br i1 %.not991.i, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.vt = load ptr, ptr %0, align 8, !tbaa !40
  %i.vu = zext i8 %i.vo to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vt, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.132, i64 noundef %i.vu, i64 noundef 0) #10
  br label %cbs_h266_write_vps.exit.thread

bb.eh:                                            ; preds = %bb.ee
  %i.vv = zext i8 %i.vo to i64                    ; 2 uses
  %.not990.i = icmp eq i64 %indvars.iv1462.i, %i.vv
  br i1 %.not990.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.vw = load ptr, ptr %0, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vw, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.132, i64 noundef %i.vv, i64 noundef %indvars.iv1462.i) #10
  br label %cbs_h266_write_vps.exit.thread

bb.ej:                                            ; preds = %bb.eh, %bb.ef, %bb.ed
  %indvars.iv.next1463.i = add nuw nsw i64 %indvars.iv1462.i, 1 ; 2 uses
  %exitcond1466.not.i = icmp eq i64 %indvars.iv.next1463.i, %wide.trip.count1465.i
  br i1 %exitcond1466.not.i, label %._crit_edge1235.i, label %bb.ec, !llvm.loop !310

._crit_edge1235.i:                                ; preds = %bb.ej, %.preheader1064.i
  %i.vx = load i8, ptr %i.uw, align 1, !tbaa !284
  %.not967.i = icmp eq i8 %i.vx, 0
  br i1 %.not967.i, label %bb.ek, label %.loopexit.i

bb.ek:                                            ; preds = %._crit_edge1235.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.fp, i64 377810 ; 2 uses
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !311
  %i.wa = zext i16 %i.vz to i32
  %i.wb = zext i16 %.0795.lcssa1591.i to i32      ; 3 uses
  %i.wc = add nsw i32 %i.wb, -1                   ; 2 uses
  %i.wd = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.133, ptr noundef null, i32 noundef %i.wa, i32 noundef 0, i32 noundef %i.wc) #10 ; 2 uses
  %i.we = icmp sgt i32 %i.wd, -1
  br i1 %i.we, label %bb.el, label %cbs_h266_write_vps.exit.thread

bb.el:                                            ; preds = %bb.ek
  %i.wf = load i8, ptr %i.uw, align 1, !tbaa !284
  %.not968.i = icmp eq i8 %i.wf, 0
  br i1 %.not968.i, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.wg = load i16, ptr %i.vy, align 2, !tbaa !311
  %i.wh = add i16 %i.wg, 1
  %i.wi = zext i16 %i.wh to i32
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.0.i = phi i32 [ %i.wi, %bb.em ], [ 0, %bb.el ] ; 6 uses
  %i.wj = load i8, ptr %i.gc, align 2, !tbaa !277
  %.not969.i = icmp eq i8 %i.wj, 0
  %i.wk = getelementptr inbounds nuw i8, ptr %i.fp, i64 377812 ; 2 uses
  %i.wl = load i8, ptr %i.wk, align 4, !tbaa !312 ; 3 uses
  br i1 %.not969.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wm = zext i8 %i.wl to i32
  %i.wn = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.134, i32 noundef %i.wm) #10 ; 2 uses
  %i.wo = icmp sgt i32 %i.wn, -1
  br i1 %i.wo, label %bb.er, label %cbs_h266_write_vps.exit.thread

bb.ep:                                            ; preds = %bb.en
  %.not970.i = icmp eq i8 %i.wl, 0
  br i1 %.not970.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.wp = load ptr, ptr %0, align 8, !tbaa !40
  %i.wq = zext i8 %i.wl to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.wp, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.134, i64 noundef %i.wq, i64 noundef 0) #10
  br label %cbs_h266_write_vps.exit.thread

bb.er:                                            ; preds = %bb.ep, %bb.eo
  %.not1257.i = icmp eq i32 %.0.i, 0
  br i1 %.not1257.i, label %.preheader1059.i, label %.lr.ph1238.i
end_hunk_0
