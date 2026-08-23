Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cbs_h266?download=true
inline.NumInlined: 72
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 33
begin_hunk_0_@cbs_h266_write_nal_unit:bb.a
.preheader1078.i.new:                             ; preds = %.preheader1078.i, %bb.db
  %indvars.iv1388.i = phi i64 [ %indvars.iv.next1389.i.1, %bb.db ], [ 0, %.preheader1078.i ] ; 4 uses
  %.07891188.i = phi i32 [ %.1790.i.1, %bb.db ], [ 0, %.preheader1078.i ] ; 3 uses
  %niter2392 = phi i64 [ %niter2392.next.1, %bb.db ], [ 0, %.preheader1078.i ]
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 %indvars.iv1388.i
  %i.pc = load i8, ptr %i.pb, align 2, !tbaa !27
  %.not993.i = icmp eq i8 %i.pc, 0
  br i1 %.not993.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.preheader1078.i.new
  %i.pd = trunc i64 %indvars.iv1388.i to i8
  %i.pe = add nsw i32 %.07891188.i, 1
  %i.pf = sext i32 %.07891188.i to i64
  %i.pg = getelementptr inbounds i8, ptr %i.pa, i64 %i.pf
  store i8 %i.pd, ptr %i.pg, align 1, !tbaa !27
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.preheader1078.i.new
  %.1790.i = phi i32 [ %i.pe, %bb.cy ], [ %.07891188.i, %.preheader1078.i.new ] ; 3 uses
  %indvars.iv.next1389.i = or disjoint i64 %indvars.iv1388.i, 1 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oz, i64 %indvars.iv.next1389.i
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !27
  %.not993.i.1 = icmp eq i8 %i.pi, 0
  br i1 %.not993.i.1, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pj = trunc i64 %indvars.iv.next1389.i to i8
  %i.pk = add nsw i32 %.1790.i, 1
  %i.pl = sext i32 %.1790.i to i64
  %i.pm = getelementptr inbounds i8, ptr %i.pa, i64 %i.pl
  store i8 %i.pj, ptr %i.pm, align 1, !tbaa !27
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.1790.i.1 = phi i32 [ %i.pk, %bb.da ], [ %.1790.i, %bb.cz ] ; 3 uses
  %indvars.iv.next1389.i.1 = add nuw nsw i64 %indvars.iv1388.i, 2 ; 2 uses
  %niter2392.next.1 = add i64 %niter2392, 2       ; 2 uses
  %niter2392.ncmp.1 = icmp eq i64 %niter2392.next.1, %unroll_iter2391
  br i1 %niter2392.ncmp.1, label %.unr-lcssa, label %.preheader1078.i.new, !llvm.loop !296

.unr-lcssa:                                       ; preds = %bb.db
  br i1 %lcmp.mod2388.not.not, label %.epil.preheader2386, label %.epilog-lcssa

.epil.preheader2386:                              ; preds = %.unr-lcssa, %.preheader1078.i
  %indvars.iv1388.i.epil.init = phi i64 [ 0, %.preheader1078.i ], [ %indvars.iv.next1389.i.1, %.unr-lcssa ] ; 2 uses
  %.07891188.i.epil.init = phi i32 [ 0, %.preheader1078.i ], [ %.1790.i.1, %.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod2390)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oz, i64 %indvars.iv1388.i.epil.init
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !27
  %.not993.i.epil = icmp eq i8 %i.po, 0
  br i1 %.not993.i.epil, label %.epilog-lcssa, label %bb.dc

bb.dc:                                            ; preds = %.epil.preheader2386
  %i.pp = trunc i64 %indvars.iv1388.i.epil.init to i8
  %i.pq = add nsw i32 %.07891188.i.epil.init, 1
  %i.pr = sext i32 %.07891188.i.epil.init to i64
  %i.ps = getelementptr inbounds i8, ptr %i.pa, i64 %i.pr
  store i8 %i.pp, ptr %i.ps, align 1, !tbaa !27
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader2386, %bb.dc, %.unr-lcssa
  %.1790.i.lcssa = phi i32 [ %.1790.i.1, %.unr-lcssa ], [ %i.pq, %bb.dc ], [ %.07891188.i.epil.init, %.epil.preheader2386 ]
  %i.pt = trunc i32 %.1790.i.lcssa to i8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv1392.i
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !27
  %indvars.iv.next1393.i = add nuw nsw i64 %indvars.iv1392.i, 1
  %exitcond1396.not.i = icmp eq i64 %indvars.iv1392.i, %i.og
  br i1 %exitcond1396.not.i, label %bb.dd, label %.preheader1078.i, !llvm.loop !297

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
  %wide.trip.count1443.i = zext nneg i32 %i.qh to i64
  br label %bb.df

.loopexit1073.thread.i:                           ; preds = %.loopexit1070.i, %.loopexit1073.i, %.loopexit1073.loopexit1272.i, %bb.dh
  %indvars.iv.next1427.i = add nuw nsw i64 %indvars.iv1426.i, 1
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %indvars.iv.next1439.i = add nuw nsw i64 %indvars.iv1438.i, 1
  %exitcond1444.not.i = icmp eq i64 %indvar.next.i, %wide.trip.count1443.i
  br i1 %exitcond1444.not.i, label %.preheader1069.i, label %bb.df, !llvm.loop !298

.preheader1069.i:                                 ; preds = %.loopexit1073.thread.i
  %i.qi = load i8, ptr %i.qg, align 1, !tbaa !284
  %.not949.i = icmp eq i8 %i.qi, 0
  br i1 %.not949.i, label %.lr.ph1229.split.us.i, label %._crit_edge1230.thread.i

.preheader1069.._crit_edge1230_crit_edge.i:       ; preds = %bb.dd
  %.phi.trans.insert1502.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8329
  %.pre1503.i = load i8, ptr %.phi.trans.insert1502.i, align 1, !tbaa !284
  %i.qj = icmp ne i8 %.pre1503.i, 0
  br label %._crit_edge1230.i

._crit_edge1230.thread.i:                         ; preds = %.preheader1069.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #10
  br label %.preheader1066.i

.lr.ph1229.split.us.i:                            ; preds = %.preheader1069.i
  %i.qk = load i8, ptr %i.qe, align 2, !tbaa !285
  %wide.trip.count1452.i = zext nneg i16 %.1801.i to i64
  %i.ql = add nuw nsw i64 %i.og, 1                ; 2 uses
  %min.iters.check2107 = icmp ult i8 %i.of, 7
  %n.vec2109 = and i64 %i.ql, 504                 ; 3 uses
  %cmp.n2119 = icmp eq i64 %i.ql, %n.vec2109
  br label %bb.de

bb.de:                                            ; preds = %.thread1031.us.i, %.lr.ph1229.split.us.i
  %indvars.iv1450.i = phi i64 [ %indvars.iv.next1451.i, %.thread1031.us.i ], [ 1, %.lr.ph1229.split.us.i ] ; 2 uses
  %.07951228.us.i = phi i16 [ %i.qs, %.thread1031.us.i ], [ 0, %.lr.ph1229.split.us.i ] ; 3 uses
  switch i8 %i.qk, label %.thread1031.us.i [
    i8 0, label %.thread1035.us.i
    i8 1, label %.thread1035.us.i
    i8 2, label %.preheader1068.us.i
  ]

scalar.ph2106:                                    ; preds = %scalar.ph2106.preheader, %scalar.ph2106
  %indvars.iv1445.i = phi i64 [ %indvars.iv.next1446.i, %scalar.ph2106 ], [ %indvars.iv1445.i.ph, %scalar.ph2106.preheader ] ; 3 uses
  %.11819.fr1226.us.i = phi i32 [ %spec.select.us.i, %scalar.ph2106 ], [ %.11819.fr1226.us.i.ph, %scalar.ph2106.preheader ]
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qt, i64 %indvars.iv1445.i
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !27
  %.fr.i = freeze i8 %i.qn
  %.not951.us.i = icmp ne i8 %.fr.i, 0
  %i.qo = zext i1 %.not951.us.i to i32
  %spec.select.us.i = add i32 %.11819.fr1226.us.i, %i.qo ; 2 uses
  %indvars.iv.next1446.i = add nuw nsw i64 %indvars.iv1445.i, 1
  %exitcond1449.not.i = icmp eq i64 %indvars.iv1445.i, %i.og
  br i1 %exitcond1449.not.i, label %.loopexit2122.a, label %scalar.ph2106, !llvm.loop !299

.loopexit2122.a:                                  ; preds = %scalar.ph2106, %middle.block2117
  %spec.select.us.i.lcssa = phi i32 [ %i.rf, %middle.block2117 ], [ %spec.select.us.i, %scalar.ph2106 ]
  %i.qp = icmp ugt i32 %spec.select.us.i.lcssa, 1
  %i.qq = zext i1 %i.qp to i16
  %spec.select1050.us.i = add i16 %.07951228.us.i, %i.qq
  br label %.thread1031.us.i

.thread1035.us.i:                                 ; preds = %bb.de, %bb.de
  %i.qr = add i16 %.07951228.us.i, 1
  br label %.thread1031.us.i

.thread1031.us.i:                                 ; preds = %.thread1035.us.i, %.loopexit2122.a, %bb.de
  %i.qs = phi i16 [ %.07951228.us.i, %bb.de ], [ %spec.select1050.us.i, %.loopexit2122.a ], [ %i.qr, %.thread1035.us.i ] ; 2 uses
  %indvars.iv.next1451.i = add nuw nsw i64 %indvars.iv1450.i, 1 ; 2 uses
  %exitcond1453.not.i = icmp eq i64 %indvars.iv.next1451.i, %wide.trip.count1452.i
  br i1 %exitcond1453.not.i, label %._crit_edge1230.i, label %bb.de, !llvm.loop !300

.preheader1068.us.i:                              ; preds = %bb.de
  %i.qt = getelementptr inbounds nuw [64 x i8], ptr %i.al, i64 %indvars.iv1450.i ; 2 uses
  br i1 %min.iters.check2107, label %scalar.ph2106.preheader, label %vector.body2110

vector.body2110:                                  ; preds = %.preheader1068.us.i, %vector.body2110
  %index2111 = phi i64 [ %index.next2116, %vector.body2110 ], [ 0, %.preheader1068.us.i ] ; 2 uses
  %vec.phi2112.a = phi <4 x i32> [ %i.rc, %vector.body2110 ], [ zeroinitializer, %.preheader1068.us.i ]
  %vec.phi2113 = phi <4 x i32> [ %i.rd, %vector.body2110 ], [ zeroinitializer, %.preheader1068.us.i ]
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %index2111 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  %wide.load2114.a = load <4 x i8>, ptr %i.qu, align 8, !tbaa !27
  %wide.load2115 = load <4 x i8>, ptr %i.qv, align 4, !tbaa !27
  %i.qw = freeze <4 x i8> %wide.load2114.a
  %i.qx = freeze <4 x i8> %wide.load2115
  %i.qy = icmp ne <4 x i8> %i.qw, zeroinitializer
  %i.qz = icmp ne <4 x i8> %i.qx, zeroinitializer
  %i.ra = zext <4 x i1> %i.qy to <4 x i32>
  %i.rb = zext <4 x i1> %i.qz to <4 x i32>
  %i.rc = add <4 x i32> %vec.phi2112.a, %i.ra     ; 2 uses
  %i.rd = add <4 x i32> %vec.phi2113, %i.rb       ; 2 uses
  %index.next2116 = add nuw i64 %index2111, 8     ; 2 uses
  %i.re = icmp eq i64 %index.next2116, %n.vec2109
  br i1 %i.re, label %middle.block2117, label %vector.body2110, !llvm.loop !301

middle.block2117:                                 ; preds = %vector.body2110
  %bin.rdx2118 = add <4 x i32> %i.rd, %i.rc
  %i.rf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx2118) ; 2 uses
  br i1 %cmp.n2119, label %.loopexit2122.a, label %scalar.ph2106.preheader

scalar.ph2106.preheader:                          ; preds = %.preheader1068.us.i, %middle.block2117
  %indvars.iv1445.i.ph = phi i64 [ 0, %.preheader1068.us.i ], [ %n.vec2109, %middle.block2117 ]
  %.11819.fr1226.us.i.ph = phi i32 [ 0, %.preheader1068.us.i ], [ %i.rf, %middle.block2117 ]
  br label %scalar.ph2106

bb.df:                                            ; preds = %.loopexit1073.thread.i, %.lr.ph1224.i
  %indvars.iv1438.i = phi i64 [ 2, %.lr.ph1224.i ], [ %indvars.iv.next1439.i, %.loopexit1073.thread.i ] ; 2 uses
  %indvars.iv1426.i = phi i64 [ 1, %.lr.ph1224.i ], [ %indvars.iv.next1427.i, %.loopexit1073.thread.i ] ; 18 uses
  %indvar.i = phi i64 [ 0, %.lr.ph1224.i ], [ %indvar.next.i, %.loopexit1073.thread.i ] ; 2 uses
  %i.rg = add nuw nsw i64 %indvar.i, 2
  br i1 %or.cond44.i, label %bb.dg, label %bb.dn

bb.dg:                                            ; preds = %bb.df
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv1426.i
  store i16 1, ptr %i.rh, align 2, !tbaa !82
  %i.ri = load i8, ptr %i.qg, align 1, !tbaa !284
  %.not961.i = icmp eq i8 %i.ri, 0
  %i.rj = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv1426.i
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !27
  %i.rl = zext i8 %i.rk to i64
  %i.rm = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.rl
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !27
  %i.ro = add i8 %i.rn, 1                         ; 2 uses
  %i.rp = getelementptr inbounds nuw [257 x i8], ptr %i.ay, i64 %indvars.iv1426.i ; 4 uses
  br i1 %.not961.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !27
  br label %.loopexit1073.thread.i

bb.di:                                            ; preds = %bb.dg
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %indvars.iv1426.i
  store i8 %i.ro, ptr %i.rq, align 1, !tbaa !27
  br label %bb.dj

.loopexit1070.i:                                  ; preds = %bb.dm, %bb.dj
  %i.rr = icmp sgt i64 %indvars.iv1428.i, 1
  br i1 %i.rr, label %bb.dj, label %.loopexit1073.thread.i, !llvm.loop !302

bb.dj:                                            ; preds = %.loopexit1070.i, %bb.di
  %indvars.iv1428.i = phi i64 [ %indvars.iv1426.i, %bb.di ], [ %indvars.iv.next1429.i, %.loopexit1070.i ] ; 4 uses
  %indvars.iv.next1429.i = add nsw i64 %indvars.iv1428.i, -1 ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 %indvars.iv.next1429.i ; 2 uses
  store i8 0, ptr %i.rs, align 1, !tbaa !27
  %.not9621211.i = icmp sgt i64 %indvars.iv1428.i, %indvars.iv1426.i
  br i1 %.not9621211.i, label %.loopexit1070.i, label %.lr.ph1214.i

.lr.ph1214.i:                                     ; preds = %bb.dj
  %invariant.gep1215.i = getelementptr inbounds nuw i8, ptr %i.he, i64 %indvars.iv.next1429.i
  %invariant.gep1217.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv.next1429.i
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dm, %.lr.ph1214.i
  %i.rt = phi i8 [ 0, %.lr.ph1214.i ], [ %i.ry, %bb.dm ] ; 2 uses
  %indvars.iv1430.i = phi i64 [ %indvars.iv1428.i, %.lr.ph1214.i ], [ %indvars.iv.next1431.i, %bb.dm ] ; 4 uses
  %gep1216.i = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep1215.i, i64 %indvars.iv1430.i
  %i.ru = load i8, ptr %gep1216.i, align 1, !tbaa !27
  %.not964.i = icmp eq i8 %i.ru, 0
  br i1 %.not964.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %gep1218.i = getelementptr inbounds nuw [63 x i8], ptr %invariant.gep1217.i, i64 %indvars.iv1430.i
  %i.rv = load i8, ptr %gep1218.i, align 1, !tbaa !27
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rp, i64 %indvars.iv1430.i
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !27
  %.1012.i = call i8 @llvm.umin.i8(i8 %i.rx, i8 %i.rv)
  %spec.store.select.i = call i8 @llvm.umax.i8(i8 %i.rt, i8 %.1012.i) ; 2 uses
  store i8 %spec.store.select.i, ptr %i.rs, align 1
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.ry = phi i8 [ %spec.store.select.i, %bb.dl ], [ %i.rt, %bb.dk ]
  %indvars.iv.next1431.i = add nuw nsw i64 %indvars.iv1430.i, 1 ; 2 uses
  %exitcond1436.not.i = icmp eq i64 %indvars.iv.next1431.i, %indvars.iv1438.i
  br i1 %exitcond1436.not.i, label %.loopexit1070.i, label %bb.dk, !llvm.loop !303

bb.dn:                                            ; preds = %bb.df
  %i.rz = load i8, ptr %i.qe, align 2, !tbaa !285
  switch i8 %i.rz, label %..loopexit1073_crit_edge.i [
    i8 1, label %.loopexit1073.loopexit1272.i
    i8 2, label %.preheader1077.i
  ]

..loopexit1073_crit_edge.i:                       ; preds = %bb.dn
  %.phi.trans.insert1500.i = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv1426.i
  %.pre1501.i = load i16, ptr %.phi.trans.insert1500.i, align 2, !tbaa !82
  br label %.loopexit1073.i

.preheader1077.i:                                 ; preds = %bb.dn
  %i.sa = getelementptr inbounds nuw [64 x i8], ptr %i.al, i64 %indvars.iv1426.i ; 7 uses
  %i.sb = getelementptr inbounds nuw [257 x i8], ptr %i.ay, i64 %indvars.iv1426.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.sa, i8 0, i64 %wide.trip.count1386.i, i1 false), !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.sb, i8 0, i64 %wide.trip.count1386.i, i1 false), !tbaa !27
  %i.sc = getelementptr inbounds nuw [64 x i8], ptr %i.qf, i64 %indvars.iv1426.i ; 2 uses
  %i.sd = getelementptr inbounds nuw [64 x i8], ptr %i.az, i64 %indvars.iv1426.i ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv1426.i
  br label %bb.do

.loopexit1073.loopexit1272.i:                     ; preds = %bb.dn
  %i.sf = trunc i64 %indvars.iv1426.i to i16
  %i.sg = add nuw i16 %i.sf, 1
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv1426.i
  store i16 %i.sg, ptr %i.sh, align 2, !tbaa !82
  %i.si = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv1426.i
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !27
  %i.sk = zext i8 %i.sj to i64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.sk
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !27
  %i.sn = add i8 %i.sm, 1
  %i.so = getelementptr inbounds nuw [257 x i8], ptr %i.ay, i64 %indvars.iv1426.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.so, i8 %i.sn, i64 %i.rg, i1 false), !tbaa !27
  br label %.loopexit1073.thread.i

bb.do:                                            ; preds = %bb.dq, %.preheader1077.i
  %indvars.iv1400.i = phi i64 [ 0, %.preheader1077.i ], [ %indvars.iv.next1401.i, %bb.dq ] ; 6 uses
  %.07881193.i = phi i8 [ 0, %.preheader1077.i ], [ %.1.i, %bb.dq ]
  %.88161191.i = phi i32 [ 0, %.preheader1077.i ], [ %.9817.i, %bb.dq ] ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sc, i64 %indvars.iv1400.i
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !27
  %.not960.i = icmp eq i8 %i.sq, 0
  br i1 %.not960.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sa, i64 %indvars.iv1400.i
  store i8 1, ptr %i.sr, align 1, !tbaa !27
  %i.ss = trunc i64 %indvars.iv1400.i to i8       ; 2 uses
  %i.st = sext i32 %.88161191.i to i64
  %i.su = getelementptr inbounds i8, ptr %i.sd, i64 %i.st
  store i8 %i.ss, ptr %i.su, align 1, !tbaa !27
  %i.sv = load i8, ptr %i.se, align 1, !tbaa !27
  %i.sw = zext i8 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !27
  %i.sz = add i8 %i.sy, 1
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv1400.i
  store i8 %i.sz, ptr %i.ta, align 1, !tbaa !27
  %i.tb = add nsw i32 %.88161191.i, 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.9817.i = phi i32 [ %i.tb, %bb.dp ], [ %.88161191.i, %bb.do ] ; 3 uses
  %.1.i = phi i8 [ %i.ss, %bb.dp ], [ %.07881193.i, %bb.do ] ; 3 uses
  %indvars.iv.next1401.i = add nuw nsw i64 %indvars.iv1400.i, 1
  %exitcond1403.not.i = icmp eq i64 %indvars.iv1400.i, %i.og
  br i1 %exitcond1403.not.i, label %bb.dr, label %bb.do, !llvm.loop !304

bb.dr:                                            ; preds = %bb.dq
  %i.tc = trunc i32 %.9817.i to i16               ; 3 uses
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv1426.i
  store i16 %i.tc, ptr %i.td, align 2, !tbaa !82
  %i.te = and i32 %.9817.i, 65535                 ; 2 uses
  %.not1253.i = icmp eq i32 %i.te, 0
  br i1 %.not1253.i, label %._crit_edge1199.i, label %.lr.ph1198.i

.lr.ph1198.i:                                     ; preds = %bb.dr
  %wide.trip.count1412.i = zext nneg i32 %i.te to i64
  br label %bb.ds

bb.ds:                                            ; preds = %._crit_edge.i, %.lr.ph1198.i
  %indvars.iv1409.i = phi i64 [ 0, %.lr.ph1198.i ], [ %indvars.iv.next1410.i, %._crit_edge.i ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sd, i64 %indvars.iv1409.i
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !27
  %i.th = zext i8 %i.tg to i64                    ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.th
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !27  ; 4 uses
  %.not1254.i = icmp eq i8 %i.tj, 0
  br i1 %.not1254.i, label %._crit_edge.i, label %.lr.ph1195.i

.lr.ph1195.i:                                     ; preds = %bb.ds
  %i.tk = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %i.th ; 3 uses
  %wide.trip.count1407.i = zext i8 %i.tj to i64   ; 2 uses
  %xtraiter2394 = and i64 %wide.trip.count1407.i, 1
  %i.tl = icmp eq i8 %i.tj, 1
  br i1 %i.tl, label %.epil.preheader2393, label %.lr.ph1195.i.new

.lr.ph1195.i.new:                                 ; preds = %.lr.ph1195.i
  %unroll_iter2397 = and i64 %wide.trip.count1407.i, 254
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %.lr.ph1195.i.new
  %indvars.iv1404.i = phi i64 [ 0, %.lr.ph1195.i.new ], [ %indvars.iv.next1405.i.1, %bb.dt ] ; 3 uses
  %niter2398 = phi i64 [ 0, %.lr.ph1195.i.new ], [ %niter2398.next.1, %bb.dt ]
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 %indvars.iv1404.i
  %i.tn = load i8, ptr %i.tm, align 2, !tbaa !27
  %i.to = zext i8 %i.tn to i64
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.to ; 2 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !27
  %spec.store.select1013.i = call i8 @llvm.umax.i8(i8 %i.tq, i8 1)
  store i8 %spec.store.select1013.i, ptr %i.tp, align 1
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tk, i64 %indvars.iv1404.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 1
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !27
  %i.tu = zext i8 %i.tt to i64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.tu ; 2 uses
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !27
  %spec.store.select1013.i.1 = call i8 @llvm.umax.i8(i8 %i.tw, i8 1)
  store i8 %spec.store.select1013.i.1, ptr %i.tv, align 1
  %indvars.iv.next1405.i.1 = add nuw nsw i64 %indvars.iv1404.i, 2 ; 2 uses
  %niter2398.next.1 = add i64 %niter2398, 2       ; 2 uses
  %niter2398.ncmp.1 = icmp eq i64 %niter2398.next.1, %unroll_iter2397
  br i1 %niter2398.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.dt, !llvm.loop !305

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.dt
  %lcmp.mod2395.not = icmp eq i64 %xtraiter2394, 0
  br i1 %lcmp.mod2395.not, label %._crit_edge.i, label %.epil.preheader2393

.epil.preheader2393:                              ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph1195.i
  %indvars.iv1404.i.epil.init = phi i64 [ 0, %.lr.ph1195.i ], [ %indvars.iv.next1405.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod2396 = trunc i8 %i.tj to i1
  call void @llvm.assume(i1 %lcmp.mod2396)
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tk, i64 %indvars.iv1404.i.epil.init
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !27
  %i.tz = zext i8 %i.ty to i64
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.tz ; 2 uses
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !27
  %spec.store.select1013.i.epil = call i8 @llvm.umax.i8(i8 %i.ub, i8 1)
  store i8 %spec.store.select1013.i.epil, ptr %i.ua, align 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader2393, %._crit_edge.i.loopexit.unr-lcssa, %bb.ds
  %indvars.iv.next1410.i = add nuw nsw i64 %indvars.iv1409.i, 1 ; 2 uses
  %exitcond1413.not.i = icmp eq i64 %indvars.iv.next1410.i, %wide.trip.count1412.i
  br i1 %exitcond1413.not.i, label %._crit_edge1199.i, label %bb.ds, !llvm.loop !306

._crit_edge1199.i:                                ; preds = %._crit_edge.i, %bb.dr
  %.not1255.i = icmp eq i8 %.1.i, 0
  br i1 %.not1255.i, label %.loopexit1073.i, label %.lr.ph1209.i

.lr.ph1209.i:                                     ; preds = %._crit_edge1199.i
  %i.uc = zext i8 %.1.i to i64                    ; 3 uses
  br label %bb.du

bb.du:                                            ; preds = %.loopexit1072.i, %.lr.ph1209.i
  %indvars.iv1415.i = phi i64 [ %i.uc, %.lr.ph1209.i ], [ %indvars.iv.next1416.i, %.loopexit1072.i ] ; 4 uses
  %indvars.iv.next1416.i = add nsw i64 %indvars.iv1415.i, -1 ; 6 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sa, i64 %indvars.iv.next1416.i
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !27
  %.not954.i = icmp eq i8 %i.ue, 0
  br i1 %.not954.i, label %.loopexit1072.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sc, i64 %indvars.iv.next1416.i
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !27
  %.not955.i = icmp ne i8 %i.ug, 0
  %.not9561200.i = icmp samesign ugt i64 %indvars.iv1415.i, %i.uc
  %or.cond1250.i = or i1 %.not9561200.i, %.not955.i
  br i1 %or.cond1250.i, label %.loopexit1072.i, label %.lr.ph1202.i

.lr.ph1202.i:                                     ; preds = %bb.dv
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv.next1416.i
  %invariant.gep1203.i = getelementptr inbounds nuw i8, ptr %i.he, i64 %indvars.iv.next1416.i
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv.next1416.i ; 2 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dz, %.lr.ph1202.i
  %indvars.iv1417.i = phi i64 [ %indvars.iv1415.i, %.lr.ph1202.i ], [ %indvars.iv.next1418.i, %bb.dz ] ; 6 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv1417.i
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !27
  %gep.i = getelementptr inbounds nuw [63 x i8], ptr %invariant.gep.i, i64 %indvars.iv1417.i
  %i.uk = load i8, ptr %gep.i, align 1, !tbaa !27
  %.1014.i = call i8 @llvm.umin.i8(i8 %i.uj, i8 %i.uk)
  %gep1204.i = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep1203.i, i64 %indvars.iv1417.i
  %i.ul = load i8, ptr %gep1204.i, align 1, !tbaa !27
  %.not957.i = icmp eq i8 %i.ul, 0
  br i1 %.not957.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.um = getelementptr inbounds nuw i8, ptr %i.sa, i64 %indvars.iv1417.i
  %i.un = load i8, ptr %i.um, align 1, !tbaa !27
  %.not958.i = icmp eq i8 %i.un, 0
  br i1 %.not958.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.uo = load i8, ptr %i.uh, align 1, !tbaa !27
  %spec.store.select1015.i = call i8 @llvm.umax.i8(i8 %i.uo, i8 %.1014.i)
  store i8 %spec.store.select1015.i, ptr %i.uh, align 1
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %indvars.iv.next1418.i = add nuw nsw i64 %indvars.iv1417.i, 1
  %exitcond1421.not.i = icmp eq i64 %indvars.iv1417.i, %i.uc
  br i1 %exitcond1421.not.i, label %.loopexit1072.i, label %bb.dw, !llvm.loop !307

.loopexit1072.i:                                  ; preds = %bb.dz, %bb.dv, %bb.du
  %i.up = icmp sgt i64 %indvars.iv1415.i, 1
  br i1 %i.up, label %bb.du, label %.loopexit1073.i, !llvm.loop !308

.loopexit1073.i:                                  ; preds = %.loopexit1072.i, %._crit_edge1199.i, %..loopexit1073_crit_edge.i
  %i.uq = phi i16 [ %.pre1501.i, %..loopexit1073_crit_edge.i ], [ %i.tc, %._crit_edge1199.i ], [ %i.tc, %.loopexit1072.i ]
  %.not965.i = icmp eq i16 %i.uq, 0
  br i1 %.not965.i, label %.thread1038.i, label %.loopexit1073.thread.i

.thread1038.i:                                    ; preds = %.loopexit1073.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #10
  br label %cbs_h266_write_vps.exit.thread

._crit_edge1230.i:                                ; preds = %.thread1031.us.i, %.preheader1069.._crit_edge1230_crit_edge.i
  %i.ur = phi i1 [ %i.qj, %.preheader1069.._crit_edge1230_crit_edge.i ], [ false, %.thread1031.us.i ]
  %.0795.lcssa.i = phi i16 [ 0, %.preheader1069.._crit_edge1230_crit_edge.i ], [ %i.qs, %.thread1031.us.i ] ; 2 uses
  %i.us = icmp ne i16 %.0795.lcssa.i, 0
  %or.cond47.not.i = select i1 %i.ur, i1 true, i1 %i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #10
  br i1 %or.cond47.not.i, label %.preheader1066.i, label %cbs_h266_write_vps.exit.thread

.preheader1066.i:                                 ; preds = %._crit_edge1230.i, %._crit_edge1230.thread.i
  %.0795.lcssa1586.i = phi i16 [ 0, %._crit_edge1230.thread.i ], [ %.0795.lcssa.i, %._crit_edge1230.i ] ; 6 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.fp, i64 8329 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.fp, i64 25296
  br label %bb.eb

bb.ea:                                            ; preds = %bb.eb
  %indvars.iv.next1455.i = add nuw nsw i64 %indvars.iv1454.i, 1
  %i.uv = load i8, ptr %i.mp, align 4, !tbaa !289
  %i.uw = zext i8 %i.uv to i64
  %.not966.not.i = icmp samesign ult i64 %indvars.iv1454.i, %i.uw
  br i1 %.not966.not.i, label %bb.eb, label %.preheader1064.i, !llvm.loop !309

.preheader1064.i:                                 ; preds = %bb.ea
  %.not1256.i = icmp eq i16 %.1801.i, 0
  br i1 %.not1256.i, label %._crit_edge1235.i, label %.lr.ph1234.i

.lr.ph1234.i:                                     ; preds = %.preheader1064.i
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %wide.trip.count1460.i = zext nneg i16 %.1801.i to i64
  br label %bb.ec

bb.eb:                                            ; preds = %bb.ea, %.preheader1066.i
  %indvars.iv1454.i = phi i64 [ 0, %.preheader1066.i ], [ %indvars.iv.next1455.i, %bb.ea ] ; 5 uses
  %i.uy = getelementptr inbounds nuw [1376 x i8], ptr %i.uu, i64 %indvars.iv1454.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv1454.i
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !27
  %i.vb = zext i8 %i.va to i32
  %i.vc = getelementptr inbounds nuw i8, ptr %i.mt, i64 %indvars.iv1454.i
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !27
  %i.ve = zext i8 %i.vd to i32
  %i.vf = call fastcc i32 @cbs_h266_write_profile_tier_level(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.uy, i32 noundef %i.vb, i32 noundef %i.ve) ; 2 uses
  %i.vg = icmp slt i32 %i.vf, 0
  br i1 %i.vg, label %cbs_h266_write_vps.exit.thread, label %bb.ea

bb.ec:                                            ; preds = %bb.ej, %.lr.ph1234.i
  %indvars.iv1457.i = phi i64 [ 0, %.lr.ph1234.i ], [ %indvars.iv.next1458.i, %bb.ej ] ; 5 uses
  %i.vh = load i8, ptr %i.mp, align 4, !tbaa !289 ; 2 uses
  %.not988.i = icmp eq i8 %i.vh, 0                ; 2 uses
  %i.vi = zext i8 %i.vh to i32                    ; 2 uses
  %i.vj = add nuw nsw i32 %i.vi, 1
  %.not989.i = icmp eq i32 %i.vj, %i.qb
  %or.cond.i = select i1 %.not988.i, i1 true, i1 %.not989.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv1457.i
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !27  ; 4 uses
  br i1 %or.cond.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vm = zext i8 %i.vl to i32
  store i32 1, ptr %i.ba, align 4, !tbaa !51
  %i.vn = trunc nuw nsw i64 %indvars.iv1457.i to i32
  store i32 %i.vn, ptr %i.ux, align 4, !tbaa !51
  %i.vo = call i32 @ff_cbs_write_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 8, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.ba, i32 noundef %i.vm, i32 noundef 0, i32 noundef %i.vi) #10 ; 2 uses
  %i.vp = icmp sgt i32 %i.vo, -1
  br i1 %i.vp, label %bb.ej, label %cbs_h266_write_vps.exit.thread

bb.ee:                                            ; preds = %bb.ec
  br i1 %.not988.i, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %.not991.i = icmp eq i8 %i.vl, 0
  br i1 %.not991.i, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.vq = load ptr, ptr %0, align 8, !tbaa !40
  %i.vr = zext i8 %i.vl to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vq, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.132, i64 noundef %i.vr, i64 noundef 0) #10
  br label %cbs_h266_write_vps.exit.thread

bb.eh:                                            ; preds = %bb.ee
  %i.vs = zext i8 %i.vl to i64                    ; 2 uses
  %.not990.i = icmp eq i64 %indvars.iv1457.i, %i.vs
  br i1 %.not990.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.vt = load ptr, ptr %0, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vt, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.132, i64 noundef %i.vs, i64 noundef %indvars.iv1457.i) #10
  br label %cbs_h266_write_vps.exit.thread

bb.ej:                                            ; preds = %bb.eh, %bb.ef, %bb.ed
  %indvars.iv.next1458.i = add nuw nsw i64 %indvars.iv1457.i, 1 ; 2 uses
  %exitcond1461.not.i = icmp eq i64 %indvars.iv.next1458.i, %wide.trip.count1460.i
  br i1 %exitcond1461.not.i, label %._crit_edge1235.i, label %bb.ec, !llvm.loop !310

._crit_edge1235.i:                                ; preds = %bb.ej, %.preheader1064.i
  %i.vu = load i8, ptr %i.ut, align 1, !tbaa !284
  %.not967.i = icmp eq i8 %i.vu, 0
  br i1 %.not967.i, label %bb.ek, label %.loopexit.i

bb.ek:                                            ; preds = %._crit_edge1235.i
  %i.vv = getelementptr inbounds nuw i8, ptr %i.fp, i64 377810 ; 2 uses
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !311
  %i.vx = zext i16 %i.vw to i32
  %i.vy = zext i16 %.0795.lcssa1586.i to i32      ; 3 uses
  %i.vz = add nsw i32 %i.vy, -1                   ; 2 uses
  %i.wa = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.133, ptr noundef null, i32 noundef %i.vx, i32 noundef 0, i32 noundef %i.vz) #10 ; 2 uses
  %i.wb = icmp sgt i32 %i.wa, -1
  br i1 %i.wb, label %bb.el, label %cbs_h266_write_vps.exit.thread

bb.el:                                            ; preds = %bb.ek
  %i.wc = load i8, ptr %i.ut, align 1, !tbaa !284
  %.not968.i = icmp eq i8 %i.wc, 0
  br i1 %.not968.i, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.wd = load i16, ptr %i.vv, align 2, !tbaa !311
  %i.we = add i16 %i.wd, 1
  %i.wf = zext i16 %i.we to i32
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.0.i = phi i32 [ %i.wf, %bb.em ], [ 0, %bb.el ] ; 6 uses
  %i.wg = load i8, ptr %i.gc, align 2, !tbaa !277
  %.not969.i = icmp eq i8 %i.wg, 0
  %i.wh = getelementptr inbounds nuw i8, ptr %i.fp, i64 377812 ; 2 uses
  %i.wi = load i8, ptr %i.wh, align 4, !tbaa !312 ; 3 uses
  br i1 %.not969.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wj = zext i8 %i.wi to i32
  %i.wk = call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.134, i32 noundef %i.wj) #10 ; 2 uses
  %i.wl = icmp sgt i32 %i.wk, -1
  br i1 %i.wl, label %bb.er, label %cbs_h266_write_vps.exit.thread

bb.ep:                                            ; preds = %bb.en
  %.not970.i = icmp eq i8 %i.wi, 0
  br i1 %.not970.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.wm = load ptr, ptr %0, align 8, !tbaa !40
  %i.wn = zext i8 %i.wi to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.wm, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.134, i64 noundef %i.wn, i64 noundef 0) #10
  br label %cbs_h266_write_vps.exit.thread

bb.er:                                            ; preds = %bb.ep, %bb.eo
  %.not1257.i = icmp eq i32 %.0.i, 0
  br i1 %.not1257.i, label %.preheader1059.i, label %.lr.ph1238.i
end_hunk_0
