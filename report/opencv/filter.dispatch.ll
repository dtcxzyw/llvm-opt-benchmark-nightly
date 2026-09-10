Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/filter.dispatch?download=true
inline.NumInlined: 4426
inline.NumDeleted: 1773
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 195
begin_hunk_0_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a
  %indvars.iv208.i335 = phi i64 [ 0, %.lr.ph179.preheader.i331 ], [ %indvars.iv.next209.i337, %bb.aq ] ; 3 uses
  %i.oz = trunc i64 %indvars.iv208.i335 to i32
  %i.pa = add i32 %i.oh, %i.oz
  %i.pb = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.pa, i32 noundef %i.oh, i32 noundef %i.p)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.lr.ph179.i334
  %i.pc = shl nsw i32 %i.pb, 1
  %gep.i336 = getelementptr [4 x i8], ptr %invariant.gep.i333, i64 %indvars.iv208.i335
  store i32 %i.pc, ptr %gep.i336, align 4, !tbaa !18
  %indvars.iv.next209.i337 = add nuw nsw i64 %indvars.iv208.i335, 1 ; 2 uses
  %exitcond212.not.i338 = icmp eq i64 %indvars.iv.next209.i337, %wide.trip.count211.i332
  br i1 %exitcond212.not.i338, label %._crit_edge.i241, label %.lr.ph179.i334, !llvm.loop !669

bb.ar:                                            ; preds = %.lr.ph179.i334
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.as:                                            ; preds = %._crit_edge.i241
  %i.pe = shl nsw i32 %i.om, 1                    ; 2 uses
  %i.pf = sext i32 %i.pe to i64                   ; 2 uses
  %.not.i.i321 = icmp ugt i32 %i.pe, 1032
  store i64 %i.pf, ptr %i.cb, align 8, !tbaa !816
  br i1 %.not.i.i321, label %bb.at, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322

bb.at:                                            ; preds = %bb.as
  %i.pg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pf) #29
          to label %.noexc.i330 unwind label %bb.au ; 2 uses

.noexc.i330:                                      ; preds = %bb.at
  store ptr %i.pg, ptr %15, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322: ; preds = %.noexc.i330, %bb.as
  %i.ph = phi ptr [ %i.pg, %.noexc.i330 ], [ %i.ca, %bb.as ] ; 7 uses
  %i.pi = icmp sgt i32 %i.om, 0
  br i1 %i.pi, label %iter.check1400, label %.loopexit175.i242

iter.check1400:                                   ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322
  %wide.trip.count216.i324 = zext nneg i32 %i.om to i64 ; 6 uses
  %.pre.i325 = load i16, ptr %i.gt, align 1       ; 3 uses
  %min.iters.check1387 = icmp ult i32 %i.om, 4
  br i1 %min.iters.check1387, label %.lr.ph181.i326.preheader, label %vector.main.loop.iter.check1388

vector.main.loop.iter.check1388:                  ; preds = %iter.check1400
  %min.iters.check1389 = icmp ult i32 %i.om, 16
  br i1 %min.iters.check1389, label %vec.epilog.ph1404, label %vector.ph1390

vector.ph1390:                                    ; preds = %vector.main.loop.iter.check1388
  %i.pj = and i64 %wide.trip.count216.i324, 12
  %n.vec1391 = and i64 %wide.trip.count216.i324, 2147483632 ; 4 uses
  %broadcast.splatinsert1392 = insertelement <8 x i16> poison, i16 %.pre.i325, i64 0
  %broadcast.splat1393 = shufflevector <8 x i16> %broadcast.splatinsert1392, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body1394

vector.body1394:                                  ; preds = %vector.body1394, %vector.ph1390
  %index1395 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1396, %vector.body1394 ] ; 2 uses
  %i.pk = shl nuw nsw i64 %index1395, 1
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pk ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  store <8 x i16> %broadcast.splat1393, ptr %i.pl, align 1
  store <8 x i16> %broadcast.splat1393, ptr %i.pm, align 1
  %index.next1396 = add nuw i64 %index1395, 16    ; 2 uses
  %i.pn = icmp eq i64 %index.next1396, %n.vec1391
  br i1 %i.pn, label %middle.block1397, label %vector.body1394, !llvm.loop !670

middle.block1397:                                 ; preds = %vector.body1394
  %cmp.n1398 = icmp eq i64 %n.vec1391, %wide.trip.count216.i324
  br i1 %cmp.n1398, label %.loopexit175.i242, label %vec.epilog.iter.check1402

vec.epilog.iter.check1402:                        ; preds = %middle.block1397
  %min.epilog.iters.check1403 = icmp eq i64 %i.pj, 0
  br i1 %min.epilog.iters.check1403, label %.lr.ph181.i326.preheader, label %vec.epilog.ph1404, !prof !241

vec.epilog.ph1404:                                ; preds = %vector.main.loop.iter.check1388, %vec.epilog.iter.check1402
  %vec.epilog.resume.val1399 = phi i64 [ %n.vec1391, %vec.epilog.iter.check1402 ], [ 0, %vector.main.loop.iter.check1388 ]
  %n.vec1405 = and i64 %wide.trip.count216.i324, 2147483644 ; 3 uses
  %broadcast.splatinsert1406 = insertelement <4 x i16> poison, i16 %.pre.i325, i64 0
  %broadcast.splat1407 = shufflevector <4 x i16> %broadcast.splatinsert1406, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1408

vec.epilog.vector.body1408:                       ; preds = %vec.epilog.vector.body1408, %vec.epilog.ph1404
  %index1409 = phi i64 [ %vec.epilog.resume.val1399, %vec.epilog.ph1404 ], [ %index.next1410, %vec.epilog.vector.body1408 ] ; 2 uses
  %i.po = shl nuw nsw i64 %index1409, 1
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.po
  store <4 x i16> %broadcast.splat1407, ptr %i.pp, align 1
  %index.next1410 = add nuw i64 %index1409, 4     ; 2 uses
  %i.pq = icmp eq i64 %index.next1410, %n.vec1405
  br i1 %i.pq, label %vec.epilog.middle.block1411, label %vec.epilog.vector.body1408, !llvm.loop !671

vec.epilog.middle.block1411:                      ; preds = %vec.epilog.vector.body1408
  %cmp.n1412 = icmp eq i64 %n.vec1405, %wide.trip.count216.i324
  br i1 %cmp.n1412, label %.loopexit175.i242, label %.lr.ph181.i326.preheader

.lr.ph181.i326.preheader:                         ; preds = %iter.check1400, %vec.epilog.iter.check1402, %vec.epilog.middle.block1411
  %indvars.iv213.i327.ph = phi i64 [ 0, %iter.check1400 ], [ %n.vec1391, %vec.epilog.iter.check1402 ], [ %n.vec1405, %vec.epilog.middle.block1411 ]
  br label %.lr.ph181.i326

bb.au:                                            ; preds = %bb.at
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph181.i326:                                   ; preds = %.lr.ph181.i326.preheader, %.lr.ph181.i326
  %indvars.iv213.i327 = phi i64 [ %indvars.iv.next214.i328, %.lr.ph181.i326 ], [ %indvars.iv213.i327.ph, %.lr.ph181.i326.preheader ] ; 2 uses
  %i.ps = shl nuw nsw i64 %indvars.iv213.i327, 1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.ps
  store i16 %.pre.i325, ptr %i.pt, align 1
  %indvars.iv.next214.i328 = add nuw nsw i64 %indvars.iv213.i327, 1 ; 2 uses
  %exitcond217.not.i329 = icmp eq i64 %indvars.iv.next214.i328, %wide.trip.count216.i324
  br i1 %exitcond217.not.i329, label %.loopexit175.i242, label %.lr.ph181.i326, !llvm.loop !672

.loopexit175.i242:                                ; preds = %.lr.ph181.i326, %middle.block1397, %vec.epilog.middle.block1411, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322, %._crit_edge.i241
  %.0138.i243 = phi ptr [ null, %._crit_edge.i241 ], [ %i.ph, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i322 ], [ %i.ph, %middle.block1397 ], [ %i.ph, %vec.epilog.middle.block1411 ], [ %i.ph, %.lr.ph181.i326 ] ; 10 uses
  %i.pu = icmp sgt i32 %i.oi, 0
  br i1 %i.pu, label %.lr.ph196.i285, label %.preheader.i244

.lr.ph196.i285:                                   ; preds = %.loopexit175.i242
  %i.pv = zext nneg i32 %.sroa.speculated1057 to i64 ; 3 uses
  %i.pw = mul i64 %i.ok, %i.pv                    ; 2 uses
  %i.px = getelementptr i8, ptr %i.oj, i64 %i.pw  ; 3 uses
  %i.py = shl nuw nsw i32 %.sroa.speculated1047, 1
  %i.pz = zext nneg i32 %i.py to i64              ; 2 uses
  %i.qa = shl nsw i32 %i.oh, 1
  %i.qb = sext i32 %i.qa to i64                   ; 2 uses
  %i.qc = sext i32 %i.ol to i64                   ; 11 uses
  %wide.trip.count232.i303 = zext nneg i32 %.sroa.speculated1047 to i64 ; 12 uses
  %wide.trip.count237.i304 = zext nneg i32 %.sroa.speculated to i64
  br i1 %i.bd, label %.preheader171.us.i305.preheader, label %.preheader174.preheader.i

.preheader171.us.i305.preheader:                  ; preds = %.lr.ph196.i285
  %i.qd = shl nsw i64 %i.qc, 1                    ; 2 uses
  %i.qe = getelementptr i8, ptr %i.oj, i64 %i.pw
  %scevgep1341 = getelementptr i8, ptr %i.qe, i64 %i.qd
  %i.qf = add nsw i32 %i.oi, -1
  %i.qg = zext i32 %i.qf to i64
  %i.qh = add nuw nsw i64 %i.pv, %i.qg
  %i.qi = mul i64 %i.ok, %i.qh
  %i.qj = add i32 %i.cw, %i.er
  %i.qk = add i32 %i.qj, %.sroa.speculated1066
  %i.ql = add i32 %i.qk, %i.eh
  %i.qm = sub i32 %i.ql, %i.fc
  %smax1342 = call i32 @llvm.smax.i32(i32 %i.qm, i32 0)
  %i.qn = shl nuw i32 %smax1342, 1
  %i.qo = zext i32 %i.qn to i64
  %i.qp = getelementptr i8, ptr %i.oj, i64 %i.qi
  %i.qq = getelementptr i8, ptr %i.qp, i64 %i.qd
  %scevgep1343 = getelementptr i8, ptr %i.qq, i64 %i.qo
  %scevgep1344 = getelementptr i8, ptr %i.gt, i64 2
  %i.qr = add i32 %i.cy, %i.er
  %i.qs = add i32 %i.qr, %.sroa.speculated1066
  %i.qt = add i32 %i.qs, %i.eh
  %i.qu = sub i32 %i.qt, %i.fc                    ; 3 uses
  %smax1345 = call i32 @llvm.smax.i32(i32 %i.qu, i32 0)
  %i.qv = zext nneg i32 %smax1345 to i64          ; 5 uses
  %i.qw = add nsw i32 %i.oi, -1
  %i.qx = zext i32 %i.qw to i64
  %i.qy = add nuw nsw i64 %i.pv, %i.qx
  %i.qz = mul i64 %i.ok, %i.qy
  %i.ra = shl nuw nsw i64 %wide.trip.count232.i303, 1
  %i.rb = getelementptr i8, ptr %i.oj, i64 %i.qz
  %scevgep1354 = getelementptr i8, ptr %i.rb, i64 %i.ra
  %scevgep1355 = getelementptr i8, ptr %i.gt, i64 2
  %i.rc = add i32 %i.ea, %i.er
  %i.rd = add i32 %i.rc, %.sroa.speculated1066
  %i.re = add i32 %i.rd, %i.eh
  %i.rf = sub i32 %i.re, %i.fc
  %smax1785 = call i32 @llvm.smax.i32(i32 %i.rf, i32 0)
  %i.rg = zext nneg i32 %smax1785 to i64          ; 2 uses
  %min.iters.check1360 = icmp slt i32 %.neg214, 4
  %bound01356 = icmp ult ptr %i.px, %scevgep1355
  %bound11357 = icmp ult ptr %i.gt, %scevgep1354
  %found.conflict1358 = and i1 %bound01356, %bound11357
  %stride.check1359 = icmp slt i64 %i.ok, 0
  %i.rh = or i1 %found.conflict1358, %stride.check1359
  %min.iters.check1362 = icmp slt i32 %.neg214, 16
  %i.ri = and i64 %wide.trip.count232.i303, 12
  %n.vec1364 = and i64 %wide.trip.count232.i303, 2147483632 ; 4 uses
  %cmp.n1371 = icmp eq i64 %n.vec1364, %wide.trip.count232.i303
  %min.epilog.iters.check1376 = icmp eq i64 %i.ri, 0
  %n.vec1378 = and i64 %wide.trip.count232.i303, 2147483644 ; 3 uses
  %cmp.n1385 = icmp eq i64 %n.vec1378, %wide.trip.count232.i303
  %xtraiter1782 = and i64 %wide.trip.count232.i303, 3 ; 2 uses
  %lcmp.mod1783.not = icmp eq i64 %xtraiter1782, 0
  %min.iters.check = icmp slt i32 %i.qu, 4
  %bound0 = icmp ult ptr %scevgep1341, %scevgep1344
  %bound1 = icmp ult ptr %i.gt, %scevgep1343
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.ok, 0
  %i.rj = or i1 %found.conflict, %stride.check
  %min.iters.check1346 = icmp slt i32 %i.qu, 16
  %i.rk = and i64 %i.qv, 12
  %n.vec = and i64 %i.qv, 2147483632              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.qv
  %min.epilog.iters.check = icmp eq i64 %i.rk, 0
  %n.vec1347 = and i64 %i.qv, 2147483644          ; 3 uses
  %cmp.n1352 = icmp eq i64 %n.vec1347, %i.qv
  %xtraiter1786 = and i64 %i.rg, 3                ; 2 uses
  %lcmp.mod1787.not = icmp eq i64 %xtraiter1786, 0
  %invariant.op1848 = add i64 1, %i.qc
  %invariant.op1850 = add i64 2, %i.qc
  %invariant.op1852 = add i64 3, %i.qc
  br label %.preheader171.us.i305

.preheader174.preheader.i:                        ; preds = %.lr.ph196.i285
  %invariant.gep278.i = getelementptr [4 x i8], ptr %i.or, i64 %wide.trip.count232.i303 ; 3 uses
  %i.rl = add i32 %i.dy, %i.er
  %i.rm = add i32 %i.rl, %.sroa.speculated1066
  %i.rn = add i32 %i.rm, %i.eh
  %i.ro = sub i32 %i.rn, %i.fc                    ; 2 uses
  %smax1775 = call i32 @llvm.smax.i32(i32 %i.ro, i32 0) ; 2 uses
  %i.rp = zext nneg i32 %smax1775 to i64          ; 2 uses
  %xtraiter1769 = and i64 %wide.trip.count232.i303, 3 ; 3 uses
  %i.rq = add nsw i32 %.sroa.speculated1047, -1
  %i.rr = icmp ult i32 %i.rq, 3
  %unroll_iter1773 = and i64 %wide.trip.count232.i303, 2147483644
  %lcmp.mod1771.not = icmp eq i64 %xtraiter1769, 0
  %lcmp.mod1772 = icmp ne i64 %xtraiter1769, 0
  %xtraiter1776 = and i64 %i.rp, 1
  %i.rs = icmp eq i32 %i.ro, 1
  %unroll_iter1780 = and i64 %i.rp, 2147483646
  %lcmp.mod1778.not = icmp eq i64 %xtraiter1776, 0
  %lcmp.mod1779 = trunc i32 %smax1775 to i1
  br label %.preheader174.i288

.preheader171.us.i305:                            ; preds = %.preheader171.us.i305.preheader, %.loopexit.us.i310
  %.0135194.us.i306 = phi i32 [ %i.ty, %.loopexit.us.i310 ], [ 0, %.preheader171.us.i305.preheader ]
  %.0136192.us.i307 = phi ptr [ %i.tz, %.loopexit.us.i310 ], [ %i.px, %.preheader171.us.i305.preheader ] ; 16 uses
  %.0145190.us.i308 = phi ptr [ %i.ua, %.loopexit.us.i310 ], [ %i.of, %.preheader171.us.i305.preheader ] ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.pz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rt, ptr align 1 %.0145190.us.i308, i64 %i.qb, i1 false)
  br i1 %i.fb, label %iter.check1373, label %.preheader170.us.i309

iter.check1373:                                   ; preds = %.preheader171.us.i305
  %brmerge = select i1 %min.iters.check1360, i1 true, i1 %i.rh
  br i1 %brmerge, label %.lr.ph187.us.i316.preheader, label %vector.main.loop.iter.check1361

vector.main.loop.iter.check1361:                  ; preds = %iter.check1373
  br i1 %min.iters.check1362, label %vec.epilog.ph1377, label %vector.ph1363

vector.ph1363:                                    ; preds = %vector.main.loop.iter.check1361
  %i.ru = load i16, ptr %i.gt, align 1, !alias.scope !817
  %broadcast.splatinsert1367 = insertelement <8 x i16> poison, i16 %i.ru, i64 0
  %broadcast.splat1368 = shufflevector <8 x i16> %broadcast.splatinsert1367, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %vector.ph1363
  %index1366 = phi i64 [ 0, %vector.ph1363 ], [ %index.next1369, %vector.body1365 ] ; 2 uses
  %i.rv = shl nuw nsw i64 %index1366, 1
  %i.rw = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.rv ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  store <8 x i16> %broadcast.splat1368, ptr %i.rw, align 1, !alias.scope !818, !noalias !817
  store <8 x i16> %broadcast.splat1368, ptr %i.rx, align 1, !alias.scope !818, !noalias !817
  %index.next1369 = add nuw i64 %index1366, 16    ; 2 uses
  %i.ry = icmp eq i64 %index.next1369, %n.vec1364
  br i1 %i.ry, label %middle.block1370, label %vector.body1365, !llvm.loop !676

middle.block1370:                                 ; preds = %vector.body1365
  br i1 %cmp.n1371, label %.preheader170.us.i309, label %vec.epilog.iter.check1375

vec.epilog.iter.check1375:                        ; preds = %middle.block1370
  br i1 %min.epilog.iters.check1376, label %.lr.ph187.us.i316.preheader, label %vec.epilog.ph1377, !prof !241

vec.epilog.ph1377:                                ; preds = %vector.main.loop.iter.check1361, %vec.epilog.iter.check1375
  %vec.epilog.resume.val1372 = phi i64 [ %n.vec1364, %vec.epilog.iter.check1375 ], [ 0, %vector.main.loop.iter.check1361 ]
  %i.rz = load i16, ptr %i.gt, align 1, !alias.scope !817
  %broadcast.splatinsert1381 = insertelement <4 x i16> poison, i16 %i.rz, i64 0
  %broadcast.splat1382 = shufflevector <4 x i16> %broadcast.splatinsert1381, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1379

vec.epilog.vector.body1379:                       ; preds = %vec.epilog.vector.body1379, %vec.epilog.ph1377
  %index1380 = phi i64 [ %vec.epilog.resume.val1372, %vec.epilog.ph1377 ], [ %index.next1383, %vec.epilog.vector.body1379 ] ; 2 uses
  %i.sa = shl nuw nsw i64 %index1380, 1
  %i.sb = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.sa
  store <4 x i16> %broadcast.splat1382, ptr %i.sb, align 1, !alias.scope !818, !noalias !817
  %index.next1383 = add nuw i64 %index1380, 4     ; 2 uses
  %i.sc = icmp eq i64 %index.next1383, %n.vec1378
  br i1 %i.sc, label %vec.epilog.middle.block1384, label %vec.epilog.vector.body1379, !llvm.loop !677

vec.epilog.middle.block1384:                      ; preds = %vec.epilog.vector.body1379
  br i1 %cmp.n1385, label %.preheader170.us.i309, label %.lr.ph187.us.i316.preheader

.lr.ph187.us.i316.preheader:                      ; preds = %iter.check1373, %vec.epilog.iter.check1375, %vec.epilog.middle.block1384
  %indvars.iv229.i317.ph = phi i64 [ 0, %iter.check1373 ], [ %n.vec1378, %vec.epilog.middle.block1384 ], [ %n.vec1364, %vec.epilog.iter.check1375 ] ; 3 uses
  br i1 %lcmp.mod1783.not, label %.lr.ph187.us.i316.prol.loopexit, label %.lr.ph187.us.i316.prol

.lr.ph187.us.i316.prol:                           ; preds = %.lr.ph187.us.i316.preheader, %.lr.ph187.us.i316.prol
  %indvars.iv229.i317.prol = phi i64 [ %indvars.iv.next230.i318.prol, %.lr.ph187.us.i316.prol ], [ %indvars.iv229.i317.ph, %.lr.ph187.us.i316.preheader ] ; 2 uses
  %prol.iter1784 = phi i64 [ %prol.iter1784.next, %.lr.ph187.us.i316.prol ], [ 0, %.lr.ph187.us.i316.preheader ]
  %i.sd = shl nuw nsw i64 %indvars.iv229.i317.prol, 1
  %i.se = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.sd
  %i.sf = load i16, ptr %i.gt, align 1
  store i16 %i.sf, ptr %i.se, align 1
  %indvars.iv.next230.i318.prol = add nuw nsw i64 %indvars.iv229.i317.prol, 1 ; 2 uses
  %prol.iter1784.next = add i64 %prol.iter1784, 1 ; 2 uses
  %prol.iter1784.cmp.not = icmp eq i64 %prol.iter1784.next, %xtraiter1782
  br i1 %prol.iter1784.cmp.not, label %.lr.ph187.us.i316.prol.loopexit, label %.lr.ph187.us.i316.prol, !llvm.loop !678

.lr.ph187.us.i316.prol.loopexit:                  ; preds = %.lr.ph187.us.i316.prol, %.lr.ph187.us.i316.preheader
  %indvars.iv229.i317.unr = phi i64 [ %indvars.iv229.i317.ph, %.lr.ph187.us.i316.preheader ], [ %indvars.iv.next230.i318.prol, %.lr.ph187.us.i316.prol ]
  %i.sg = sub nsw i64 %indvars.iv229.i317.ph, %wide.trip.count232.i303
  %i.sh = icmp ugt i64 %i.sg, -4
  br i1 %i.sh, label %.preheader170.us.i309, label %.lr.ph187.us.i316

.lr.ph187.us.i316:                                ; preds = %.lr.ph187.us.i316.prol.loopexit, %.lr.ph187.us.i316
  %indvars.iv229.i317 = phi i64 [ %indvars.iv.next230.i318.3, %.lr.ph187.us.i316 ], [ %indvars.iv229.i317.unr, %.lr.ph187.us.i316.prol.loopexit ] ; 5 uses
  %i.si = shl nuw nsw i64 %indvars.iv229.i317, 1
  %i.sj = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.si
  %i.sk = load i16, ptr %i.gt, align 1
  store i16 %i.sk, ptr %i.sj, align 1
  %indvars.iv.next230.i318 = shl i64 %indvars.iv229.i317, 1
  %i.sl = getelementptr i8, ptr %.0136192.us.i307, i64 %indvars.iv.next230.i318
  %i.sm = getelementptr i8, ptr %i.sl, i64 2
  %i.sn = load i16, ptr %i.gt, align 1
  store i16 %i.sn, ptr %i.sm, align 1
  %indvars.iv.next230.i318.1 = shl i64 %indvars.iv229.i317, 1
  %i.so = getelementptr i8, ptr %.0136192.us.i307, i64 %indvars.iv.next230.i318.1
  %i.sp = getelementptr i8, ptr %i.so, i64 4
  %i.sq = load i16, ptr %i.gt, align 1
  store i16 %i.sq, ptr %i.sp, align 1
  %indvars.iv.next230.i318.2 = shl i64 %indvars.iv229.i317, 1
  %i.sr = getelementptr i8, ptr %.0136192.us.i307, i64 %indvars.iv.next230.i318.2
  %i.ss = getelementptr i8, ptr %i.sr, i64 6
  %i.st = load i16, ptr %i.gt, align 1
  store i16 %i.st, ptr %i.ss, align 1
  %indvars.iv.next230.i318.3 = add nuw nsw i64 %indvars.iv229.i317, 4 ; 2 uses
  %exitcond233.not.i319.3 = icmp eq i64 %indvars.iv.next230.i318.3, %wide.trip.count232.i303
  br i1 %exitcond233.not.i319.3, label %.preheader170.us.i309, label %.lr.ph187.us.i316, !llvm.loop !679

.lr.ph189.us.i312:                                ; preds = %.lr.ph189.us.i312.prol.loopexit, %.lr.ph189.us.i312
  %indvars.iv234.i313 = phi i64 [ %indvars.iv.next235.i314.3, %.lr.ph189.us.i312 ], [ %indvars.iv234.i313.unr, %.lr.ph189.us.i312.prol.loopexit ] ; 5 uses
  %i.su = add nsw i64 %indvars.iv234.i313, %i.qc
  %i.sv = shl nsw i64 %i.su, 1
  %i.sw = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.sv
  %i.sx = load i16, ptr %i.gt, align 1
  store i16 %i.sx, ptr %i.sw, align 1
  %.reass1849 = add i64 %indvars.iv234.i313, %invariant.op1848
  %i.sy = shl nsw i64 %.reass1849, 1
  %i.sz = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.sy
  %i.ta = load i16, ptr %i.gt, align 1
  store i16 %i.ta, ptr %i.sz, align 1
  %.reass1851 = add i64 %indvars.iv234.i313, %invariant.op1850
  %i.tb = shl nsw i64 %.reass1851, 1
  %i.tc = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.tb
  %i.td = load i16, ptr %i.gt, align 1
  store i16 %i.td, ptr %i.tc, align 1
  %.reass1853 = add i64 %indvars.iv234.i313, %invariant.op1852
  %i.te = shl nsw i64 %.reass1853, 1
  %i.tf = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.te
  %i.tg = load i16, ptr %i.gt, align 1
  store i16 %i.tg, ptr %i.tf, align 1
  %indvars.iv.next235.i314.3 = add nuw nsw i64 %indvars.iv234.i313, 4 ; 2 uses
  %exitcond238.not.i315.3 = icmp eq i64 %indvars.iv.next235.i314.3, %wide.trip.count237.i304
  br i1 %exitcond238.not.i315.3, label %.loopexit.us.i310, label %.lr.ph189.us.i312, !llvm.loop !680

.preheader170.us.i309:                            ; preds = %.lr.ph187.us.i316.prol.loopexit, %.lr.ph187.us.i316, %middle.block1370, %vec.epilog.middle.block1384, %.preheader171.us.i305
  br i1 %i.fg, label %iter.check, label %.loopexit.us.i310

iter.check:                                       ; preds = %.preheader170.us.i309
  %brmerge1854 = select i1 %min.iters.check, i1 true, i1 %i.rj
  br i1 %brmerge1854, label %.lr.ph189.us.i312.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1346, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.th = load i16, ptr %i.gt, align 1, !alias.scope !819
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.th, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ti = add nsw i64 %index, %i.qc
  %i.tj = shl nsw i64 %i.ti, 1
  %i.tk = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.tj ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.tk, align 1, !alias.scope !820, !noalias !819
  store <8 x i16> %broadcast.splat, ptr %i.tl, align 1, !alias.scope !820, !noalias !819
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.tm = icmp eq i64 %index.next, %n.vec
  br i1 %i.tm, label %middle.block, label %vector.body, !llvm.loop !684

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.i310, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph189.us.i312.preheader, label %vec.epilog.ph, !prof !241

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.tn = load i16, ptr %i.gt, align 1, !alias.scope !819
  %broadcast.splatinsert1349 = insertelement <4 x i16> poison, i16 %i.tn, i64 0
  %broadcast.splat1350 = shufflevector <4 x i16> %broadcast.splatinsert1349, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1348 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1351, %vec.epilog.vector.body ] ; 2 uses
  %i.to = add nsw i64 %index1348, %i.qc
  %i.tp = shl nsw i64 %i.to, 1
  %i.tq = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.tp
  store <4 x i16> %broadcast.splat1350, ptr %i.tq, align 1, !alias.scope !820, !noalias !819
  %index.next1351 = add nuw i64 %index1348, 4     ; 2 uses
  %i.tr = icmp eq i64 %index.next1351, %n.vec1347
  br i1 %i.tr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !685

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1352, label %.loopexit.us.i310, label %.lr.ph189.us.i312.preheader

.lr.ph189.us.i312.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv234.i313.ph = phi i64 [ 0, %iter.check ], [ %n.vec1347, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod1787.not, label %.lr.ph189.us.i312.prol.loopexit, label %.lr.ph189.us.i312.prol

.lr.ph189.us.i312.prol:                           ; preds = %.lr.ph189.us.i312.preheader, %.lr.ph189.us.i312.prol
  %indvars.iv234.i313.prol = phi i64 [ %indvars.iv.next235.i314.prol, %.lr.ph189.us.i312.prol ], [ %indvars.iv234.i313.ph, %.lr.ph189.us.i312.preheader ] ; 2 uses
  %prol.iter1788 = phi i64 [ %prol.iter1788.next, %.lr.ph189.us.i312.prol ], [ 0, %.lr.ph189.us.i312.preheader ]
  %i.ts = add nsw i64 %indvars.iv234.i313.prol, %i.qc
  %i.tt = shl nsw i64 %i.ts, 1
  %i.tu = getelementptr inbounds i8, ptr %.0136192.us.i307, i64 %i.tt
  %i.tv = load i16, ptr %i.gt, align 1
  store i16 %i.tv, ptr %i.tu, align 1
  %indvars.iv.next235.i314.prol = add nuw nsw i64 %indvars.iv234.i313.prol, 1 ; 2 uses
  %prol.iter1788.next = add i64 %prol.iter1788, 1 ; 2 uses
  %prol.iter1788.cmp.not = icmp eq i64 %prol.iter1788.next, %xtraiter1786
  br i1 %prol.iter1788.cmp.not, label %.lr.ph189.us.i312.prol.loopexit, label %.lr.ph189.us.i312.prol, !llvm.loop !686

.lr.ph189.us.i312.prol.loopexit:                  ; preds = %.lr.ph189.us.i312.prol, %.lr.ph189.us.i312.preheader
  %indvars.iv234.i313.unr = phi i64 [ %indvars.iv234.i313.ph, %.lr.ph189.us.i312.preheader ], [ %indvars.iv.next235.i314.prol, %.lr.ph189.us.i312.prol ]
  %i.tw = sub nsw i64 %indvars.iv234.i313.ph, %i.rg
  %i.tx = icmp ugt i64 %i.tw, -4
  br i1 %i.tx, label %.loopexit.us.i310, label %.lr.ph189.us.i312

.loopexit.us.i310:                                ; preds = %.lr.ph189.us.i312.prol.loopexit, %.lr.ph189.us.i312, %middle.block, %vec.epilog.middle.block, %.preheader170.us.i309
  %i.ty = add nuw nsw i32 %.0135194.us.i306, 1    ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.0136192.us.i307, i64 %i.ok
  %i.ua = getelementptr inbounds nuw i8, ptr %.0145190.us.i308, i64 %i.og
  %exitcond239.not.i311 = icmp eq i32 %i.ty, %i.oi
  br i1 %exitcond239.not.i311, label %.preheader.i244, label %.preheader171.us.i305, !llvm.loop !687

.preheader.i244:                                  ; preds = %.loopexit173.i293, %.loopexit.us.i310, %.loopexit175.i242
  br i1 %i.ev, label %.lr.ph198.i273, label %._crit_edge199.i245

.lr.ph198.i273:                                   ; preds = %.preheader.i244
  %i.ub = shl nsw i32 %i.om, 1
  %i.uc = sext i32 %i.ub to i64                   ; 7 uses
  %wide.trip.count248.i274 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i279.preheader, label %.lr.ph198.split.i275

.lr.ph198.split.us.i279.preheader:                ; preds = %.lr.ph198.i273
  %xtraiter1789 = and i64 %wide.trip.count248.i274, 3 ; 3 uses
  %i.ud = add nsw i32 %.neg, -1
  %i.ue = icmp ult i32 %i.ud, 3
  br i1 %i.ue, label %.lr.ph198.split.us.i279.epil.preheader, label %.lr.ph198.split.us.i279.preheader.new

.lr.ph198.split.us.i279.preheader.new:            ; preds = %.lr.ph198.split.us.i279.preheader
  %unroll_iter1793 = and i64 %wide.trip.count248.i274, 2147483644
  br label %.lr.ph198.split.us.i279

.lr.ph198.split.us.i279:                          ; preds = %.lr.ph198.split.us.i279, %.lr.ph198.split.us.i279.preheader.new
  %indvars.iv245.i280 = phi i64 [ 0, %.lr.ph198.split.us.i279.preheader.new ], [ %indvars.iv.next246.i281.3, %.lr.ph198.split.us.i279 ] ; 5 uses
  %niter1794 = phi i64 [ 0, %.lr.ph198.split.us.i279.preheader.new ], [ %niter1794.next.3, %.lr.ph198.split.us.i279 ]
  %i.uf = mul i64 %indvars.iv245.i280, %i.ok
  %i.ug = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.uf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ug, ptr align 1 %.0138.i243, i64 %i.uc, i1 false)
  %indvars.iv.next246.i281 = or disjoint i64 %indvars.iv245.i280, 1
  %i.uh = mul i64 %indvars.iv.next246.i281, %i.ok
  %i.ui = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.uh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ui, ptr align 1 %.0138.i243, i64 %i.uc, i1 false)
  %indvars.iv.next246.i281.1 = or disjoint i64 %indvars.iv245.i280, 2
  %i.uj = mul i64 %indvars.iv.next246.i281.1, %i.ok
  %i.uk = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.uj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uk, ptr align 1 %.0138.i243, i64 %i.uc, i1 false)
  %indvars.iv.next246.i281.2 = or disjoint i64 %indvars.iv245.i280, 3
  %i.ul = mul i64 %indvars.iv.next246.i281.2, %i.ok
  %i.um = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ul
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.um, ptr align 1 %.0138.i243, i64 %i.uc, i1 false)
  %indvars.iv.next246.i281.3 = add nuw nsw i64 %indvars.iv245.i280, 4 ; 2 uses
  %niter1794.next.3 = add i64 %niter1794, 4       ; 2 uses
  %niter1794.ncmp.3 = icmp eq i64 %niter1794.next.3, %unroll_iter1793
  br i1 %niter1794.ncmp.3, label %._crit_edge199.thread.i283.unr-lcssa, label %.lr.ph198.split.us.i279, !llvm.loop !688

.preheader174.i288:                               ; preds = %.loopexit173.i293, %.preheader174.preheader.i
  %.0135194.i289 = phi i32 [ %i.ws, %.loopexit173.i293 ], [ 0, %.preheader174.preheader.i ]
  %.0136192.i290 = phi ptr [ %i.wt, %.loopexit173.i293 ], [ %i.px, %.preheader174.preheader.i ] ; 10 uses
  %.0145190.i291 = phi ptr [ %i.wu, %.loopexit173.i293 ], [ %i.of, %.preheader174.preheader.i ] ; 10 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.pz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.un, ptr align 1 %.0145190.i291, i64 %i.qb, i1 false)
  br i1 %i.fb, label %.lr.ph183.i299.preheader, label %.preheader172.i292

.lr.ph183.i299.preheader:                         ; preds = %.preheader174.i288
  br i1 %i.rr, label %.lr.ph183.i299.epil.preheader, label %.lr.ph183.i299

.preheader172.i292.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i299
  br i1 %lcmp.mod1771.not, label %.preheader172.i292, label %.lr.ph183.i299.epil.preheader

.lr.ph183.i299.epil.preheader:                    ; preds = %.preheader172.i292.loopexit.unr-lcssa, %.lr.ph183.i299.preheader
  %indvars.iv218.i300.epil.init = phi i64 [ 0, %.lr.ph183.i299.preheader ], [ %indvars.iv.next219.i301.3, %.preheader172.i292.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1772)
  br label %.lr.ph183.i299.epil

.lr.ph183.i299.epil:                              ; preds = %.lr.ph183.i299.epil, %.lr.ph183.i299.epil.preheader
  %indvars.iv218.i300.epil = phi i64 [ %indvars.iv.next219.i301.epil, %.lr.ph183.i299.epil ], [ %indvars.iv218.i300.epil.init, %.lr.ph183.i299.epil.preheader ] ; 3 uses
  %epil.iter1770 = phi i64 [ %epil.iter1770.next, %.lr.ph183.i299.epil ], [ 0, %.lr.ph183.i299.epil.preheader ]
  %i.uo = shl nuw nsw i64 %indvars.iv218.i300.epil, 1
  %i.up = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.uo
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv218.i300.epil
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !18
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.us
  %i.uu = load i16, ptr %i.ut, align 1
  store i16 %i.uu, ptr %i.up, align 1
  %indvars.iv.next219.i301.epil = add nuw nsw i64 %indvars.iv218.i300.epil, 1
  %epil.iter1770.next = add i64 %epil.iter1770, 1 ; 2 uses
  %epil.iter1770.cmp.not = icmp eq i64 %epil.iter1770.next, %xtraiter1769
  br i1 %epil.iter1770.cmp.not, label %.preheader172.i292, label %.lr.ph183.i299.epil, !llvm.loop !689

.preheader172.i292:                               ; preds = %.preheader172.i292.loopexit.unr-lcssa, %.lr.ph183.i299.epil, %.preheader174.i288
  br i1 %i.fg, label %.lr.ph185.i295.preheader, label %.loopexit173.i293

.lr.ph185.i295.preheader:                         ; preds = %.preheader172.i292
  br i1 %i.rs, label %.lr.ph185.i295.epil.preheader, label %.lr.ph185.i295

.lr.ph183.i299:                                   ; preds = %.lr.ph183.i299.preheader, %.lr.ph183.i299
  %indvars.iv218.i300 = phi i64 [ %indvars.iv.next219.i301.3, %.lr.ph183.i299 ], [ 0, %.lr.ph183.i299.preheader ] ; 6 uses
  %niter1774 = phi i64 [ %niter1774.next.3, %.lr.ph183.i299 ], [ 0, %.lr.ph183.i299.preheader ]
  %i.uv = shl nuw nsw i64 %indvars.iv218.i300, 1
  %i.uw = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.uv
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv218.i300
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !18
  %i.uz = sext i32 %i.uy to i64
  %i.va = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.uz
  %i.vb = load i16, ptr %i.va, align 1
  store i16 %i.vb, ptr %i.uw, align 1
  %indvars.iv.next219.i301 = or disjoint i64 %indvars.iv218.i300, 1 ; 2 uses
  %i.vc = shl nuw nsw i64 %indvars.iv.next219.i301, 1
  %i.vd = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.vc
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv.next219.i301
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !18
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds i8, ptr %.0145190.i291, i64 %i.vg
  %i.vi = load i16, ptr %i.vh, align 1
  store i16 %i.vi, ptr %i.vd, align 1
  %indvars.iv.next219.i301.1 = or disjoint i64 %indvars.iv218.i300, 2 ; 2 uses
  %i.vj = shl nuw nsw i64 %indvars.iv.next219.i301.1, 1
  %i.vk = getelementptr inbounds nuw i8, ptr %.0136192.i290, i64 %i.vj
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv.next219.i301.1
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a

.lr.ph.preheader.i566:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i462
  %wide.trip.count.i567 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i568

.preheader176.i463:                               ; preds = %bb.ca, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i462
  br i1 %i.fg, label %.lr.ph179.preheader.i558, label %._crit_edge.i464

.lr.ph179.preheader.i558:                         ; preds = %.preheader176.i463
  %i.ahd = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i559 = zext nneg i32 %i.ff to i64
  %invariant.gep.i560 = getelementptr [4 x i8], ptr %i.ahc, i64 %i.ahd
  br label %.lr.ph179.i561

.lr.ph.i568:                                      ; preds = %bb.ca, %.lr.ph.preheader.i566
  %indvars.iv.i569 = phi i64 [ 0, %.lr.ph.preheader.i566 ], [ %indvars.iv.next.i570, %bb.ca ] ; 3 uses
  %i.ahe = trunc i64 %indvars.iv.i569 to i32
  %i.ahf = sub i32 %i.ahe, %.sroa.speculated1047
  %i.ahg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ahf, i32 noundef %i.ags, i32 noundef %i.p)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i568
  %i.ahh = shl nsw i32 %i.ahg, 2
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.i569
  store i32 %i.ahh, ptr %i.ahi, align 4, !tbaa !18
  %indvars.iv.next.i570 = add nuw nsw i64 %indvars.iv.i569, 1 ; 2 uses
  %exitcond.not.i571 = icmp eq i64 %indvars.iv.next.i570, %wide.trip.count.i567
  br i1 %exitcond.not.i571, label %.preheader176.i463, label %.lr.ph.i568, !llvm.loop !709

bb.cb:                                            ; preds = %.lr.ph.i568
  %i.ahj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

._crit_edge.i464:                                 ; preds = %bb.cc, %.preheader176.i463
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr %i.bs, ptr %11, align 8, !tbaa !815
  store i64 1032, ptr %i.bt, align 8, !tbaa !816
  %or.cond.i547 = or i1 %i.ev, %i.fa
  %or.cond1078 = select i1 %i.bd, i1 %or.cond.i547, i1 false
  br i1 %or.cond1078, label %bb.ce, label %.loopexit175.i465

.lr.ph179.i561:                                   ; preds = %bb.cc, %.lr.ph179.preheader.i558
  %indvars.iv208.i562 = phi i64 [ 0, %.lr.ph179.preheader.i558 ], [ %indvars.iv.next209.i564, %bb.cc ] ; 3 uses
  %i.ahk = trunc i64 %indvars.iv208.i562 to i32
  %i.ahl = add i32 %i.ags, %i.ahk
  %i.ahm = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ahl, i32 noundef %i.ags, i32 noundef %i.p)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %.lr.ph179.i561
  %i.ahn = shl nsw i32 %i.ahm, 2
  %gep.i563 = getelementptr [4 x i8], ptr %invariant.gep.i560, i64 %indvars.iv208.i562
  store i32 %i.ahn, ptr %gep.i563, align 4, !tbaa !18
  %indvars.iv.next209.i564 = add nuw nsw i64 %indvars.iv208.i562, 1 ; 2 uses
  %exitcond212.not.i565 = icmp eq i64 %indvars.iv.next209.i564, %wide.trip.count211.i559
  br i1 %exitcond212.not.i565, label %._crit_edge.i464, label %.lr.ph179.i561, !llvm.loop !710

bb.cd:                                            ; preds = %.lr.ph179.i561
  %i.aho = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ce:                                            ; preds = %._crit_edge.i464
  %i.ahp = shl nsw i32 %i.agx, 2                  ; 2 uses
  %i.ahq = sext i32 %i.ahp to i64                 ; 2 uses
  %.not.i.i548 = icmp ugt i32 %i.ahp, 1032
  store i64 %i.ahq, ptr %i.bt, align 8, !tbaa !816
  br i1 %.not.i.i548, label %bb.cf, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549

bb.cf:                                            ; preds = %bb.ce
  %i.ahr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ahq) #29
          to label %.noexc.i557 unwind label %bb.cg ; 2 uses

.noexc.i557:                                      ; preds = %bb.cf
  store ptr %i.ahr, ptr %11, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549: ; preds = %.noexc.i557, %bb.ce
  %i.ahs = phi ptr [ %i.ahr, %.noexc.i557 ], [ %i.bs, %bb.ce ] ; 5 uses
  %i.aht = icmp sgt i32 %i.agx, 0
  br i1 %i.aht, label %.lr.ph181.preheader.i550, label %.loopexit175.i465

.lr.ph181.preheader.i550:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549
  %wide.trip.count216.i551 = zext nneg i32 %i.agx to i64 ; 3 uses
  %.pre.i552 = load i32, ptr %i.gt, align 1       ; 2 uses
  %min.iters.check1454 = icmp ult i32 %i.agx, 8
  br i1 %min.iters.check1454, label %.lr.ph181.i553.preheader, label %vector.ph1455

vector.ph1455:                                    ; preds = %.lr.ph181.preheader.i550
  %n.vec1456 = and i64 %wide.trip.count216.i551, 2147483640 ; 3 uses
  %broadcast.splatinsert1457 = insertelement <4 x i32> poison, i32 %.pre.i552, i64 0
  %broadcast.splat1458 = shufflevector <4 x i32> %broadcast.splatinsert1457, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1459

vector.body1459:                                  ; preds = %vector.body1459, %vector.ph1455
  %index1460 = phi i64 [ 0, %vector.ph1455 ], [ %index.next1461, %vector.body1459 ] ; 2 uses
  %i.ahu = shl nuw nsw i64 %index1460, 2
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahs, i64 %i.ahu ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 16
  store <4 x i32> %broadcast.splat1458, ptr %i.ahv, align 1
  store <4 x i32> %broadcast.splat1458, ptr %i.ahw, align 1
  %index.next1461 = add nuw i64 %index1460, 8     ; 2 uses
  %i.ahx = icmp eq i64 %index.next1461, %n.vec1456
  br i1 %i.ahx, label %middle.block1462, label %vector.body1459, !llvm.loop !711

middle.block1462:                                 ; preds = %vector.body1459
  %cmp.n1463 = icmp eq i64 %n.vec1456, %wide.trip.count216.i551
  br i1 %cmp.n1463, label %.loopexit175.i465, label %.lr.ph181.i553.preheader

.lr.ph181.i553.preheader:                         ; preds = %.lr.ph181.preheader.i550, %middle.block1462
  %indvars.iv213.i554.ph = phi i64 [ 0, %.lr.ph181.preheader.i550 ], [ %n.vec1456, %middle.block1462 ]
  br label %.lr.ph181.i553

bb.cg:                                            ; preds = %bb.cf
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.lr.ph181.i553:                                   ; preds = %.lr.ph181.i553.preheader, %.lr.ph181.i553
  %indvars.iv213.i554 = phi i64 [ %indvars.iv.next214.i555, %.lr.ph181.i553 ], [ %indvars.iv213.i554.ph, %.lr.ph181.i553.preheader ] ; 2 uses
  %i.ahz = shl nuw nsw i64 %indvars.iv213.i554, 2
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahs, i64 %i.ahz
  store i32 %.pre.i552, ptr %i.aia, align 1
  %indvars.iv.next214.i555 = add nuw nsw i64 %indvars.iv213.i554, 1 ; 2 uses
  %exitcond217.not.i556 = icmp eq i64 %indvars.iv.next214.i555, %wide.trip.count216.i551
  br i1 %exitcond217.not.i556, label %.loopexit175.i465, label %.lr.ph181.i553, !llvm.loop !712

.loopexit175.i465:                                ; preds = %.lr.ph181.i553, %middle.block1462, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549, %._crit_edge.i464
  %.0138.i466 = phi ptr [ null, %._crit_edge.i464 ], [ %i.ahs, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i549 ], [ %i.ahs, %middle.block1462 ], [ %i.ahs, %.lr.ph181.i553 ] ; 10 uses
  %i.aib = icmp sgt i32 %i.agt, 0
  br i1 %i.aib, label %.lr.ph196.i508, label %.preheader.i467

.lr.ph196.i508:                                   ; preds = %.loopexit175.i465
  %i.aic = zext nneg i32 %.sroa.speculated1057 to i64 ; 3 uses
  %i.aid = mul i64 %i.agv, %i.aic                 ; 2 uses
  %i.aie = getelementptr i8, ptr %i.agu, i64 %i.aid ; 3 uses
  %i.aif = shl nuw nsw i32 %.sroa.speculated1047, 2
  %i.aig = zext nneg i32 %i.aif to i64            ; 2 uses
  %i.aih = shl nsw i32 %i.ags, 2
  %i.aii = sext i32 %i.aih to i64                 ; 2 uses
  %i.aij = sext i32 %i.agw to i64                 ; 10 uses
  %wide.trip.count232.i530 = zext nneg i32 %.sroa.speculated1047 to i64 ; 9 uses
  %wide.trip.count237.i531 = zext nneg i32 %.sroa.speculated to i64
  br i1 %i.bd, label %.preheader171.us.i532.preheader, label %.preheader174.preheader.i509

.preheader171.us.i532.preheader:                  ; preds = %.lr.ph196.i508
  %i.aik = shl nsw i64 %i.aij, 2                  ; 2 uses
  %i.ail = getelementptr i8, ptr %i.agu, i64 %i.aid
  %scevgep1415 = getelementptr i8, ptr %i.ail, i64 %i.aik
  %i.aim = add nsw i32 %i.agt, -1
  %i.ain = zext i32 %i.aim to i64
  %i.aio = add nuw nsw i64 %i.aic, %i.ain
  %i.aip = mul i64 %i.agv, %i.aio
  %i.aiq = add i32 %i.da, %i.er
  %i.air = add i32 %i.aiq, %.sroa.speculated1066
  %i.ais = add i32 %i.air, %i.eh
  %i.ait = sub i32 %i.ais, %i.fc
  %smax1416 = call i32 @llvm.smax.i32(i32 %i.ait, i32 0)
  %i.aiu = zext nneg i32 %smax1416 to i64
  %i.aiv = shl nuw nsw i64 %i.aiu, 2
  %i.aiw = getelementptr i8, ptr %i.agu, i64 %i.aip
  %i.aix = getelementptr i8, ptr %i.aiw, i64 %i.aik
  %scevgep1417 = getelementptr i8, ptr %i.aix, i64 %i.aiv
  %scevgep1418 = getelementptr i8, ptr %i.gt, i64 4
  %i.aiy = add nsw i32 %i.agt, -1
  %i.aiz = zext i32 %i.aiy to i64
  %i.aja = add nuw nsw i64 %i.aic, %i.aiz
  %i.ajb = mul i64 %i.agv, %i.aja
  %i.ajc = shl nuw nsw i64 %wide.trip.count232.i530, 2
  %i.ajd = getelementptr i8, ptr %i.agu, i64 %i.ajb
  %scevgep1435 = getelementptr i8, ptr %i.ajd, i64 %i.ajc
  %scevgep1436 = getelementptr i8, ptr %i.gt, i64 4
  %min.iters.check1442 = icmp slt i32 %.neg214, 8
  %bound01437 = icmp ult ptr %i.aie, %scevgep1436
  %bound11438 = icmp ult ptr %i.gt, %scevgep1435
  %found.conflict1439 = and i1 %bound01437, %bound11438
  %stride.check1440 = icmp slt i64 %i.agv, 0
  %i.aje = or i1 %found.conflict1439, %stride.check1440
  %n.vec1444 = and i64 %wide.trip.count232.i530, 2147483640 ; 3 uses
  %cmp.n1451 = icmp eq i64 %n.vec1444, %wide.trip.count232.i530
  %xtraiter1707 = and i64 %wide.trip.count232.i530, 3 ; 2 uses
  %lcmp.mod1708.not = icmp eq i64 %xtraiter1707, 0
  %i.ajf = add i32 %i.er, %i.f
  %i.ajg = add i32 %i.ajf, %.sroa.speculated1066
  %i.ajh = add i32 %i.ajg, %i.eh
  %i.aji = xor i32 %i.fc, -1
  %i.ajj = add i32 %i.ajh, %i.aji
  %i.ajk = sub i32 %i.ajj, %i.d                   ; 2 uses
  %i.ajl = call i32 @llvm.smax.i32(i32 %i.ajk, i32 0)
  %i.ajm = zext nneg i32 %i.ajl to i64            ; 4 uses
  %min.iters.check1423 = icmp slt i32 %i.ajk, 8
  %bound01419 = icmp ult ptr %scevgep1415, %scevgep1418
  %bound11420 = icmp ult ptr %i.gt, %scevgep1417
  %found.conflict1421 = and i1 %bound01419, %bound11420
  %stride.check1422 = icmp slt i64 %i.agv, 0
  %i.ajn = or i1 %found.conflict1421, %stride.check1422
  %n.vec1425 = and i64 %i.ajm, 2147483640         ; 3 uses
  %cmp.n1432 = icmp eq i64 %n.vec1425, %i.ajm
  %xtraiter1710 = and i64 %i.ajm, 3               ; 2 uses
  %lcmp.mod1711.not = icmp eq i64 %xtraiter1710, 0
  %invariant.op1842 = add i64 1, %i.aij
  %invariant.op1844 = add i64 2, %i.aij
  %invariant.op1846 = add i64 3, %i.aij
  br label %.preheader171.us.i532

.preheader174.preheader.i509:                     ; preds = %.lr.ph196.i508
  %invariant.gep278.i512 = getelementptr [4 x i8], ptr %i.ahc, i64 %wide.trip.count232.i530 ; 3 uses
  %i.ajo = add i32 %i.ds, %i.er
  %i.ajp = add i32 %i.ajo, %.sroa.speculated1066
  %i.ajq = add i32 %i.ajp, %i.eh
  %i.ajr = sub i32 %i.ajq, %i.fc                  ; 2 uses
  %smax1700 = call i32 @llvm.smax.i32(i32 %i.ajr, i32 0) ; 2 uses
  %i.ajs = zext nneg i32 %smax1700 to i64         ; 2 uses
  %xtraiter1694 = and i64 %wide.trip.count232.i530, 3 ; 3 uses
  %i.ajt = add nsw i32 %.sroa.speculated1047, -1
  %i.aju = icmp ult i32 %i.ajt, 3
  %unroll_iter1698 = and i64 %wide.trip.count232.i530, 2147483644
  %lcmp.mod1696.not = icmp eq i64 %xtraiter1694, 0
  %lcmp.mod1697 = icmp ne i64 %xtraiter1694, 0
  %xtraiter1701 = and i64 %i.ajs, 1
  %i.ajv = icmp eq i32 %i.ajr, 1
  %unroll_iter1705 = and i64 %i.ajs, 2147483646
  %lcmp.mod1703.not = icmp eq i64 %xtraiter1701, 0
  %lcmp.mod1704 = trunc i32 %smax1700 to i1
  br label %.preheader174.i513

.preheader171.us.i532:                            ; preds = %.preheader171.us.i532.preheader, %.loopexit.us.i537
  %.0135194.us.i533 = phi i32 [ %i.als, %.loopexit.us.i537 ], [ 0, %.preheader171.us.i532.preheader ]
  %.0136192.us.i534 = phi ptr [ %i.alt, %.loopexit.us.i537 ], [ %i.aie, %.preheader171.us.i532.preheader ] ; 14 uses
  %.0145190.us.i535 = phi ptr [ %i.alu, %.loopexit.us.i537 ], [ %i.agq, %.preheader171.us.i532.preheader ] ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.aig
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajw, ptr align 1 %.0145190.us.i535, i64 %i.aii, i1 false)
  br i1 %i.fb, label %.lr.ph187.us.i543.preheader, label %.preheader170.us.i536

.lr.ph187.us.i543.preheader:                      ; preds = %.preheader171.us.i532
  %brmerge1855 = select i1 %min.iters.check1442, i1 true, i1 %i.aje
  br i1 %brmerge1855, label %.lr.ph187.us.i543.preheader1518, label %vector.ph1443

vector.ph1443:                                    ; preds = %.lr.ph187.us.i543.preheader
  %i.ajx = load i32, ptr %i.gt, align 1, !alias.scope !821
  %broadcast.splatinsert1447 = insertelement <4 x i32> poison, i32 %i.ajx, i64 0
  %broadcast.splat1448 = shufflevector <4 x i32> %broadcast.splatinsert1447, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1445

vector.body1445:                                  ; preds = %vector.body1445, %vector.ph1443
  %index1446 = phi i64 [ 0, %vector.ph1443 ], [ %index.next1449, %vector.body1445 ] ; 2 uses
  %i.ajy = shl nuw nsw i64 %index1446, 2
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.ajy ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  store <4 x i32> %broadcast.splat1448, ptr %i.ajz, align 1, !alias.scope !822, !noalias !821
  store <4 x i32> %broadcast.splat1448, ptr %i.aka, align 1, !alias.scope !822, !noalias !821
  %index.next1449 = add nuw i64 %index1446, 8     ; 2 uses
  %i.akb = icmp eq i64 %index.next1449, %n.vec1444
  br i1 %i.akb, label %middle.block1450, label %vector.body1445, !llvm.loop !716

middle.block1450:                                 ; preds = %vector.body1445
  br i1 %cmp.n1451, label %.preheader170.us.i536, label %.lr.ph187.us.i543.preheader1518

.lr.ph187.us.i543.preheader1518:                  ; preds = %.lr.ph187.us.i543.preheader, %middle.block1450
  %indvars.iv229.i544.ph = phi i64 [ %n.vec1444, %middle.block1450 ], [ 0, %.lr.ph187.us.i543.preheader ] ; 3 uses
  br i1 %lcmp.mod1708.not, label %.lr.ph187.us.i543.prol.loopexit, label %.lr.ph187.us.i543.prol

.lr.ph187.us.i543.prol:                           ; preds = %.lr.ph187.us.i543.preheader1518, %.lr.ph187.us.i543.prol
  %indvars.iv229.i544.prol = phi i64 [ %indvars.iv.next230.i545.prol, %.lr.ph187.us.i543.prol ], [ %indvars.iv229.i544.ph, %.lr.ph187.us.i543.preheader1518 ] ; 2 uses
  %prol.iter1709 = phi i64 [ %prol.iter1709.next, %.lr.ph187.us.i543.prol ], [ 0, %.lr.ph187.us.i543.preheader1518 ]
  %i.akc = shl nuw nsw i64 %indvars.iv229.i544.prol, 2
  %i.akd = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.akc
  %i.ake = load i32, ptr %i.gt, align 1
  store i32 %i.ake, ptr %i.akd, align 1
  %indvars.iv.next230.i545.prol = add nuw nsw i64 %indvars.iv229.i544.prol, 1 ; 2 uses
  %prol.iter1709.next = add i64 %prol.iter1709, 1 ; 2 uses
  %prol.iter1709.cmp.not = icmp eq i64 %prol.iter1709.next, %xtraiter1707
  br i1 %prol.iter1709.cmp.not, label %.lr.ph187.us.i543.prol.loopexit, label %.lr.ph187.us.i543.prol, !llvm.loop !717

.lr.ph187.us.i543.prol.loopexit:                  ; preds = %.lr.ph187.us.i543.prol, %.lr.ph187.us.i543.preheader1518
  %indvars.iv229.i544.unr = phi i64 [ %indvars.iv229.i544.ph, %.lr.ph187.us.i543.preheader1518 ], [ %indvars.iv.next230.i545.prol, %.lr.ph187.us.i543.prol ]
  %i.akf = sub nsw i64 %indvars.iv229.i544.ph, %wide.trip.count232.i530
  %i.akg = icmp ugt i64 %i.akf, -4
  br i1 %i.akg, label %.preheader170.us.i536, label %.lr.ph187.us.i543

.lr.ph187.us.i543:                                ; preds = %.lr.ph187.us.i543.prol.loopexit, %.lr.ph187.us.i543
  %indvars.iv229.i544 = phi i64 [ %indvars.iv.next230.i545.3, %.lr.ph187.us.i543 ], [ %indvars.iv229.i544.unr, %.lr.ph187.us.i543.prol.loopexit ] ; 5 uses
  %i.akh = shl nuw nsw i64 %indvars.iv229.i544, 2
  %i.aki = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.akh
  %i.akj = load i32, ptr %i.gt, align 1
  store i32 %i.akj, ptr %i.aki, align 1
  %indvars.iv.next230.i545 = shl i64 %indvars.iv229.i544, 2
  %i.akk = getelementptr i8, ptr %.0136192.us.i534, i64 %indvars.iv.next230.i545
  %i.akl = getelementptr i8, ptr %i.akk, i64 4
  %i.akm = load i32, ptr %i.gt, align 1
  store i32 %i.akm, ptr %i.akl, align 1
  %indvars.iv.next230.i545.1 = shl i64 %indvars.iv229.i544, 2
  %i.akn = getelementptr i8, ptr %.0136192.us.i534, i64 %indvars.iv.next230.i545.1
  %i.ako = getelementptr i8, ptr %i.akn, i64 8
  %i.akp = load i32, ptr %i.gt, align 1
  store i32 %i.akp, ptr %i.ako, align 1
  %indvars.iv.next230.i545.2 = shl i64 %indvars.iv229.i544, 2
  %i.akq = getelementptr i8, ptr %.0136192.us.i534, i64 %indvars.iv.next230.i545.2
  %i.akr = getelementptr i8, ptr %i.akq, i64 12
  %i.aks = load i32, ptr %i.gt, align 1
  store i32 %i.aks, ptr %i.akr, align 1
  %indvars.iv.next230.i545.3 = add nuw nsw i64 %indvars.iv229.i544, 4 ; 2 uses
  %exitcond233.not.i546.3 = icmp eq i64 %indvars.iv.next230.i545.3, %wide.trip.count232.i530
  br i1 %exitcond233.not.i546.3, label %.preheader170.us.i536, label %.lr.ph187.us.i543, !llvm.loop !718

.lr.ph189.us.i539:                                ; preds = %.lr.ph189.us.i539.prol.loopexit, %.lr.ph189.us.i539
  %indvars.iv234.i540 = phi i64 [ %indvars.iv.next235.i541.3, %.lr.ph189.us.i539 ], [ %indvars.iv234.i540.unr, %.lr.ph189.us.i539.prol.loopexit ] ; 5 uses
  %i.akt = add nsw i64 %indvars.iv234.i540, %i.aij
  %i.aku = shl nsw i64 %i.akt, 2
  %i.akv = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.aku
  %i.akw = load i32, ptr %i.gt, align 1
  store i32 %i.akw, ptr %i.akv, align 1
  %.reass1843 = add i64 %indvars.iv234.i540, %invariant.op1842
  %i.akx = shl nsw i64 %.reass1843, 2
  %i.aky = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.akx
  %i.akz = load i32, ptr %i.gt, align 1
  store i32 %i.akz, ptr %i.aky, align 1
  %.reass1845 = add i64 %indvars.iv234.i540, %invariant.op1844
  %i.ala = shl nsw i64 %.reass1845, 2
  %i.alb = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.ala
  %i.alc = load i32, ptr %i.gt, align 1
  store i32 %i.alc, ptr %i.alb, align 1
  %.reass1847 = add i64 %indvars.iv234.i540, %invariant.op1846
  %i.ald = shl nsw i64 %.reass1847, 2
  %i.ale = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.ald
  %i.alf = load i32, ptr %i.gt, align 1
  store i32 %i.alf, ptr %i.ale, align 1
  %indvars.iv.next235.i541.3 = add nuw nsw i64 %indvars.iv234.i540, 4 ; 2 uses
  %exitcond238.not.i542.3 = icmp eq i64 %indvars.iv.next235.i541.3, %wide.trip.count237.i531
  br i1 %exitcond238.not.i542.3, label %.loopexit.us.i537, label %.lr.ph189.us.i539, !llvm.loop !719

.preheader170.us.i536:                            ; preds = %.lr.ph187.us.i543.prol.loopexit, %.lr.ph187.us.i543, %middle.block1450, %.preheader171.us.i532
  br i1 %i.fg, label %.lr.ph189.us.i539.preheader, label %.loopexit.us.i537

.lr.ph189.us.i539.preheader:                      ; preds = %.preheader170.us.i536
  %brmerge1856 = select i1 %min.iters.check1423, i1 true, i1 %i.ajn
  br i1 %brmerge1856, label %.lr.ph189.us.i539.preheader1517, label %vector.ph1424

vector.ph1424:                                    ; preds = %.lr.ph189.us.i539.preheader
  %i.alg = load i32, ptr %i.gt, align 1, !alias.scope !823
  %broadcast.splatinsert1428 = insertelement <4 x i32> poison, i32 %i.alg, i64 0
  %broadcast.splat1429 = shufflevector <4 x i32> %broadcast.splatinsert1428, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1426

vector.body1426:                                  ; preds = %vector.body1426, %vector.ph1424
  %index1427 = phi i64 [ 0, %vector.ph1424 ], [ %index.next1430, %vector.body1426 ] ; 2 uses
  %i.alh = add nsw i64 %index1427, %i.aij
  %i.ali = shl nsw i64 %i.alh, 2
  %i.alj = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.ali ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 16
  store <4 x i32> %broadcast.splat1429, ptr %i.alj, align 1, !alias.scope !824, !noalias !823
  store <4 x i32> %broadcast.splat1429, ptr %i.alk, align 1, !alias.scope !824, !noalias !823
  %index.next1430 = add nuw i64 %index1427, 8     ; 2 uses
  %i.all = icmp eq i64 %index.next1430, %n.vec1425
  br i1 %i.all, label %middle.block1431, label %vector.body1426, !llvm.loop !723

middle.block1431:                                 ; preds = %vector.body1426
  br i1 %cmp.n1432, label %.loopexit.us.i537, label %.lr.ph189.us.i539.preheader1517

.lr.ph189.us.i539.preheader1517:                  ; preds = %.lr.ph189.us.i539.preheader, %middle.block1431
  %indvars.iv234.i540.ph = phi i64 [ %n.vec1425, %middle.block1431 ], [ 0, %.lr.ph189.us.i539.preheader ] ; 3 uses
  br i1 %lcmp.mod1711.not, label %.lr.ph189.us.i539.prol.loopexit, label %.lr.ph189.us.i539.prol

.lr.ph189.us.i539.prol:                           ; preds = %.lr.ph189.us.i539.preheader1517, %.lr.ph189.us.i539.prol
  %indvars.iv234.i540.prol = phi i64 [ %indvars.iv.next235.i541.prol, %.lr.ph189.us.i539.prol ], [ %indvars.iv234.i540.ph, %.lr.ph189.us.i539.preheader1517 ] ; 2 uses
  %prol.iter1712 = phi i64 [ %prol.iter1712.next, %.lr.ph189.us.i539.prol ], [ 0, %.lr.ph189.us.i539.preheader1517 ]
  %i.alm = add nsw i64 %indvars.iv234.i540.prol, %i.aij
  %i.aln = shl nsw i64 %i.alm, 2
  %i.alo = getelementptr inbounds i8, ptr %.0136192.us.i534, i64 %i.aln
  %i.alp = load i32, ptr %i.gt, align 1
  store i32 %i.alp, ptr %i.alo, align 1
  %indvars.iv.next235.i541.prol = add nuw nsw i64 %indvars.iv234.i540.prol, 1 ; 2 uses
  %prol.iter1712.next = add i64 %prol.iter1712, 1 ; 2 uses
  %prol.iter1712.cmp.not = icmp eq i64 %prol.iter1712.next, %xtraiter1710
  br i1 %prol.iter1712.cmp.not, label %.lr.ph189.us.i539.prol.loopexit, label %.lr.ph189.us.i539.prol, !llvm.loop !724

.lr.ph189.us.i539.prol.loopexit:                  ; preds = %.lr.ph189.us.i539.prol, %.lr.ph189.us.i539.preheader1517
  %indvars.iv234.i540.unr = phi i64 [ %indvars.iv234.i540.ph, %.lr.ph189.us.i539.preheader1517 ], [ %indvars.iv.next235.i541.prol, %.lr.ph189.us.i539.prol ]
  %i.alq = sub nsw i64 %indvars.iv234.i540.ph, %i.ajm
  %i.alr = icmp ugt i64 %i.alq, -4
  br i1 %i.alr, label %.loopexit.us.i537, label %.lr.ph189.us.i539

.loopexit.us.i537:                                ; preds = %.lr.ph189.us.i539.prol.loopexit, %.lr.ph189.us.i539, %middle.block1431, %.preheader170.us.i536
  %i.als = add nuw nsw i32 %.0135194.us.i533, 1   ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %.0136192.us.i534, i64 %i.agv
  %i.alu = getelementptr inbounds nuw i8, ptr %.0145190.us.i535, i64 %i.agr
  %exitcond239.not.i538 = icmp eq i32 %i.als, %i.agt
  br i1 %exitcond239.not.i538, label %.preheader.i467, label %.preheader171.us.i532, !llvm.loop !725

.preheader.i467:                                  ; preds = %.loopexit173.i518, %.loopexit.us.i537, %.loopexit175.i465
  br i1 %i.ev, label %.lr.ph198.i496, label %._crit_edge199.i468

.lr.ph198.i496:                                   ; preds = %.preheader.i467
  %i.alv = shl nsw i32 %i.agx, 2
  %i.alw = sext i32 %i.alv to i64                 ; 7 uses
  %wide.trip.count248.i497 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i502.preheader, label %.lr.ph198.split.i498

.lr.ph198.split.us.i502.preheader:                ; preds = %.lr.ph198.i496
  %xtraiter1713 = and i64 %wide.trip.count248.i497, 3 ; 3 uses
  %i.alx = add nsw i32 %.neg, -1
  %i.aly = icmp ult i32 %i.alx, 3
  br i1 %i.aly, label %.lr.ph198.split.us.i502.epil.preheader, label %.lr.ph198.split.us.i502.preheader.new

.lr.ph198.split.us.i502.preheader.new:            ; preds = %.lr.ph198.split.us.i502.preheader
  %unroll_iter1717 = and i64 %wide.trip.count248.i497, 2147483644
  br label %.lr.ph198.split.us.i502

.lr.ph198.split.us.i502:                          ; preds = %.lr.ph198.split.us.i502, %.lr.ph198.split.us.i502.preheader.new
  %indvars.iv245.i503 = phi i64 [ 0, %.lr.ph198.split.us.i502.preheader.new ], [ %indvars.iv.next246.i504.3, %.lr.ph198.split.us.i502 ] ; 5 uses
  %niter1718 = phi i64 [ 0, %.lr.ph198.split.us.i502.preheader.new ], [ %niter1718.next.3, %.lr.ph198.split.us.i502 ]
  %i.alz = mul i64 %indvars.iv245.i503, %i.agv
  %i.ama = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.alz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ama, ptr align 1 %.0138.i466, i64 %i.alw, i1 false)
  %indvars.iv.next246.i504 = or disjoint i64 %indvars.iv245.i503, 1
  %i.amb = mul i64 %indvars.iv.next246.i504, %i.agv
  %i.amc = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.amb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amc, ptr align 1 %.0138.i466, i64 %i.alw, i1 false)
  %indvars.iv.next246.i504.1 = or disjoint i64 %indvars.iv245.i503, 2
  %i.amd = mul i64 %indvars.iv.next246.i504.1, %i.agv
  %i.ame = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.amd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ame, ptr align 1 %.0138.i466, i64 %i.alw, i1 false)
  %indvars.iv.next246.i504.2 = or disjoint i64 %indvars.iv245.i503, 3
  %i.amf = mul i64 %indvars.iv.next246.i504.2, %i.agv
  %i.amg = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.amf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amg, ptr align 1 %.0138.i466, i64 %i.alw, i1 false)
  %indvars.iv.next246.i504.3 = add nuw nsw i64 %indvars.iv245.i503, 4 ; 2 uses
  %niter1718.next.3 = add i64 %niter1718, 4       ; 2 uses
  %niter1718.ncmp.3 = icmp eq i64 %niter1718.next.3, %unroll_iter1717
  br i1 %niter1718.ncmp.3, label %._crit_edge199.thread.i506.unr-lcssa, label %.lr.ph198.split.us.i502, !llvm.loop !726

.preheader174.i513:                               ; preds = %.loopexit173.i518, %.preheader174.preheader.i509
  %.0135194.i514 = phi i32 [ %i.aom, %.loopexit173.i518 ], [ 0, %.preheader174.preheader.i509 ]
  %.0136192.i515 = phi ptr [ %i.aon, %.loopexit173.i518 ], [ %i.aie, %.preheader174.preheader.i509 ] ; 10 uses
  %.0145190.i516 = phi ptr [ %i.aoo, %.loopexit173.i518 ], [ %i.agq, %.preheader174.preheader.i509 ] ; 10 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.aig
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amh, ptr align 1 %.0145190.i516, i64 %i.aii, i1 false)
  br i1 %i.fb, label %.lr.ph183.i525.preheader, label %.preheader172.i517

.lr.ph183.i525.preheader:                         ; preds = %.preheader174.i513
  br i1 %i.aju, label %.lr.ph183.i525.epil.preheader, label %.lr.ph183.i525

.preheader172.i517.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i525
  br i1 %lcmp.mod1696.not, label %.preheader172.i517, label %.lr.ph183.i525.epil.preheader

.lr.ph183.i525.epil.preheader:                    ; preds = %.preheader172.i517.loopexit.unr-lcssa, %.lr.ph183.i525.preheader
  %indvars.iv218.i526.epil.init = phi i64 [ 0, %.lr.ph183.i525.preheader ], [ %indvars.iv.next219.i527.3, %.preheader172.i517.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1697)
  br label %.lr.ph183.i525.epil

.lr.ph183.i525.epil:                              ; preds = %.lr.ph183.i525.epil, %.lr.ph183.i525.epil.preheader
  %indvars.iv218.i526.epil = phi i64 [ %indvars.iv.next219.i527.epil, %.lr.ph183.i525.epil ], [ %indvars.iv218.i526.epil.init, %.lr.ph183.i525.epil.preheader ] ; 3 uses
  %epil.iter1695 = phi i64 [ %epil.iter1695.next, %.lr.ph183.i525.epil ], [ 0, %.lr.ph183.i525.epil.preheader ]
  %i.ami = shl nuw nsw i64 %indvars.iv218.i526.epil, 2
  %i.amj = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.ami
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv218.i526.epil
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !18
  %i.amm = sext i32 %i.aml to i64
  %i.amn = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.amm
  %i.amo = load i32, ptr %i.amn, align 1
  store i32 %i.amo, ptr %i.amj, align 1
  %indvars.iv.next219.i527.epil = add nuw nsw i64 %indvars.iv218.i526.epil, 1
  %epil.iter1695.next = add i64 %epil.iter1695, 1 ; 2 uses
  %epil.iter1695.cmp.not = icmp eq i64 %epil.iter1695.next, %xtraiter1694
  br i1 %epil.iter1695.cmp.not, label %.preheader172.i517, label %.lr.ph183.i525.epil, !llvm.loop !727

.preheader172.i517:                               ; preds = %.preheader172.i517.loopexit.unr-lcssa, %.lr.ph183.i525.epil, %.preheader174.i513
  br i1 %i.fg, label %.lr.ph185.i520.preheader, label %.loopexit173.i518

.lr.ph185.i520.preheader:                         ; preds = %.preheader172.i517
  br i1 %i.ajv, label %.lr.ph185.i520.epil.preheader, label %.lr.ph185.i520

.lr.ph183.i525:                                   ; preds = %.lr.ph183.i525.preheader, %.lr.ph183.i525
  %indvars.iv218.i526 = phi i64 [ %indvars.iv.next219.i527.3, %.lr.ph183.i525 ], [ 0, %.lr.ph183.i525.preheader ] ; 6 uses
  %niter1699 = phi i64 [ %niter1699.next.3, %.lr.ph183.i525 ], [ 0, %.lr.ph183.i525.preheader ]
  %i.amp = shl nuw nsw i64 %indvars.iv218.i526, 2
  %i.amq = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.amp
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv218.i526
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !18
  %i.amt = sext i32 %i.ams to i64
  %i.amu = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.amt
  %i.amv = load i32, ptr %i.amu, align 1
  store i32 %i.amv, ptr %i.amq, align 1
  %indvars.iv.next219.i527 = or disjoint i64 %indvars.iv218.i526, 1 ; 2 uses
  %i.amw = shl nuw nsw i64 %indvars.iv.next219.i527, 2
  %i.amx = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.amw
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.next219.i527
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !18
  %i.ana = sext i32 %i.amz to i64
  %i.anb = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.ana
  %i.anc = load i32, ptr %i.anb, align 1
  store i32 %i.anc, ptr %i.amx, align 1
  %indvars.iv.next219.i527.1 = or disjoint i64 %indvars.iv218.i526, 2 ; 2 uses
  %i.and = shl nuw nsw i64 %indvars.iv.next219.i527.1, 2
  %i.ane = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.and
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.next219.i527.1
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !18
  %i.anh = sext i32 %i.ang to i64
  %i.ani = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.anh
  %i.anj = load i32, ptr %i.ani, align 1
  store i32 %i.anj, ptr %i.ane, align 1
  %indvars.iv.next219.i527.2 = or disjoint i64 %indvars.iv218.i526, 3 ; 2 uses
  %i.ank = shl nuw nsw i64 %indvars.iv.next219.i527.2, 2
  %i.anl = getelementptr inbounds nuw i8, ptr %.0136192.i515, i64 %i.ank
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.next219.i527.2
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !18
  %i.ano = sext i32 %i.ann to i64
  %i.anp = getelementptr inbounds i8, ptr %.0145190.i516, i64 %i.ano
  %i.anq = load i32, ptr %i.anp, align 1
  store i32 %i.anq, ptr %i.anl, align 1
  %indvars.iv.next219.i527.3 = add nuw nsw i64 %indvars.iv218.i526, 4 ; 2 uses
  %niter1699.next.3 = add i64 %niter1699, 4       ; 2 uses
  %niter1699.ncmp.3 = icmp eq i64 %niter1699.next.3, %unroll_iter1698
  br i1 %niter1699.ncmp.3, label %.preheader172.i517.loopexit.unr-lcssa, label %.lr.ph183.i525, !llvm.loop !728

.lr.ph185.i520:                                   ; preds = %.lr.ph185.i520.preheader, %.lr.ph185.i520
  %indvars.iv223.i521 = phi i64 [ %indvars.iv.next224.i523.1, %.lr.ph185.i520 ], [ 0, %.lr.ph185.i520.preheader ] ; 4 uses
  %niter1706 = phi i64 [ %niter1706.next.1, %.lr.ph185.i520 ], [ 0, %.lr.ph185.i520.preheader ]
  %i.anr = add nsw i64 %indvars.iv223.i521, %i.aij
  %i.ans = shl nsw i64 %i.anr, 2
  %i.ant = getelementptr inbounds i8, ptr %.0136192.i515, i64 %i.ans
  %gep279.i522 = getelementptr [4 x i8], ptr %invariant.gep278.i512, i64 %indvars.iv223.i521
  %i.anu = load i32, ptr %gep279.i522, align 4, !tbaa !18
end_hunk_1
begin_hunk_2_@_ZNK2cv12cpu_baseline18TiledFilterInvokerclERKNS_5RangeE:bb.a

.lr.ph.preheader.i793:                            ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i689
  %wide.trip.count.i794 = zext nneg i32 %.neg214 to i64
  br label %.lr.ph.i795

.preheader176.i690:                               ; preds = %bb.dm, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i689
  br i1 %i.fg, label %.lr.ph179.preheader.i785, label %._crit_edge.i691

.lr.ph179.preheader.i785:                         ; preds = %.preheader176.i690
  %i.ayx = zext nneg i32 %.sroa.speculated1047 to i64
  %wide.trip.count211.i786 = zext nneg i32 %i.ff to i64
  %invariant.gep.i787 = getelementptr [4 x i8], ptr %i.ayw, i64 %i.ayx
  br label %.lr.ph179.i788

.lr.ph.i795:                                      ; preds = %bb.dm, %.lr.ph.preheader.i793
  %indvars.iv.i796 = phi i64 [ 0, %.lr.ph.preheader.i793 ], [ %indvars.iv.next.i797, %bb.dm ] ; 3 uses
  %i.ayy = trunc i64 %indvars.iv.i796 to i32
  %i.ayz = sub i32 %i.ayy, %.sroa.speculated1047
  %i.aza = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ayz, i32 noundef %i.aym, i32 noundef %i.p)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.i795
  %i.azb = shl nsw i32 %i.aza, 3
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.ayw, i64 %indvars.iv.i796
  store i32 %i.azb, ptr %i.azc, align 4, !tbaa !18
  %indvars.iv.next.i797 = add nuw nsw i64 %indvars.iv.i796, 1 ; 2 uses
  %exitcond.not.i798 = icmp eq i64 %indvars.iv.next.i797, %wide.trip.count.i794
  br i1 %exitcond.not.i798, label %.preheader176.i690, label %.lr.ph.i795, !llvm.loop !747

bb.dn:                                            ; preds = %.lr.ph.i795
  %i.azd = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

._crit_edge.i691:                                 ; preds = %bb.do, %.preheader176.i690
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.bk, ptr %7, align 8, !tbaa !815
  store i64 1032, ptr %i.bl, align 8, !tbaa !816
  %or.cond.i774 = or i1 %i.ev, %i.fa
  %or.cond1080 = select i1 %i.bd, i1 %or.cond.i774, i1 false
  br i1 %or.cond1080, label %bb.dq, label %.loopexit175.i692

.lr.ph179.i788:                                   ; preds = %bb.do, %.lr.ph179.preheader.i785
  %indvars.iv208.i789 = phi i64 [ 0, %.lr.ph179.preheader.i785 ], [ %indvars.iv.next209.i791, %bb.do ] ; 3 uses
  %i.aze = trunc i64 %indvars.iv208.i789 to i32
  %i.azf = add i32 %i.aym, %i.aze
  %i.azg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.azf, i32 noundef %i.aym, i32 noundef %i.p)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %.lr.ph179.i788
  %i.azh = shl nsw i32 %i.azg, 3
  %gep.i790 = getelementptr [4 x i8], ptr %invariant.gep.i787, i64 %indvars.iv208.i789
  store i32 %i.azh, ptr %gep.i790, align 4, !tbaa !18
  %indvars.iv.next209.i791 = add nuw nsw i64 %indvars.iv208.i789, 1 ; 2 uses
  %exitcond212.not.i792 = icmp eq i64 %indvars.iv.next209.i791, %wide.trip.count211.i786
  br i1 %exitcond212.not.i792, label %._crit_edge.i691, label %.lr.ph179.i788, !llvm.loop !748

bb.dp:                                            ; preds = %.lr.ph179.i788
  %i.azi = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dq:                                            ; preds = %._crit_edge.i691
  %i.azj = shl nsw i32 %i.ayr, 3                  ; 2 uses
  %i.azk = sext i32 %i.azj to i64                 ; 2 uses
  %.not.i.i775 = icmp ugt i32 %i.azj, 1032
  store i64 %i.azk, ptr %i.bl, align 8, !tbaa !816
  br i1 %.not.i.i775, label %bb.dr, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776

bb.dr:                                            ; preds = %bb.dq
  %i.azl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.azk) #29
          to label %.noexc.i784 unwind label %bb.ds ; 2 uses

.noexc.i784:                                      ; preds = %bb.dr
  store ptr %i.azl, ptr %7, align 8, !tbaa !815
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776: ; preds = %.noexc.i784, %bb.dq
  %i.azm = phi ptr [ %i.azl, %.noexc.i784 ], [ %i.bk, %bb.dq ] ; 5 uses
  %i.azn = icmp sgt i32 %i.ayr, 0
  br i1 %i.azn, label %.lr.ph181.preheader.i777, label %.loopexit175.i692

.lr.ph181.preheader.i777:                         ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776
  %wide.trip.count216.i778 = zext nneg i32 %i.ayr to i64 ; 3 uses
  %.pre.i779 = load i64, ptr %i.gt, align 1       ; 2 uses
  %min.iters.check1506 = icmp ult i32 %i.ayr, 4
  br i1 %min.iters.check1506, label %.lr.ph181.i780.preheader, label %vector.ph1507

vector.ph1507:                                    ; preds = %.lr.ph181.preheader.i777
  %n.vec1508 = and i64 %wide.trip.count216.i778, 2147483644 ; 3 uses
  %broadcast.splatinsert1509 = insertelement <2 x i64> poison, i64 %.pre.i779, i64 0
  %broadcast.splat1510 = shufflevector <2 x i64> %broadcast.splatinsert1509, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1511

vector.body1511:                                  ; preds = %vector.body1511, %vector.ph1507
  %index1512 = phi i64 [ 0, %vector.ph1507 ], [ %index.next1513, %vector.body1511 ] ; 2 uses
  %i.azo = shl nuw nsw i64 %index1512, 3
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azm, i64 %i.azo ; 2 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 16
  store <2 x i64> %broadcast.splat1510, ptr %i.azp, align 1
  store <2 x i64> %broadcast.splat1510, ptr %i.azq, align 1
  %index.next1513 = add nuw i64 %index1512, 4     ; 2 uses
  %i.azr = icmp eq i64 %index.next1513, %n.vec1508
  br i1 %i.azr, label %middle.block1514, label %vector.body1511, !llvm.loop !749

middle.block1514:                                 ; preds = %vector.body1511
  %cmp.n1515 = icmp eq i64 %n.vec1508, %wide.trip.count216.i778
  br i1 %cmp.n1515, label %.loopexit175.i692, label %.lr.ph181.i780.preheader

.lr.ph181.i780.preheader:                         ; preds = %.lr.ph181.preheader.i777, %middle.block1514
  %indvars.iv213.i781.ph = phi i64 [ 0, %.lr.ph181.preheader.i777 ], [ %n.vec1508, %middle.block1514 ]
  br label %.lr.ph181.i780

bb.ds:                                            ; preds = %bb.dr
  %i.azs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.lr.ph181.i780:                                   ; preds = %.lr.ph181.i780.preheader, %.lr.ph181.i780
  %indvars.iv213.i781 = phi i64 [ %indvars.iv.next214.i782, %.lr.ph181.i780 ], [ %indvars.iv213.i781.ph, %.lr.ph181.i780.preheader ] ; 2 uses
  %i.azt = shl nuw nsw i64 %indvars.iv213.i781, 3
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azm, i64 %i.azt
  store i64 %.pre.i779, ptr %i.azu, align 1
  %indvars.iv.next214.i782 = add nuw nsw i64 %indvars.iv213.i781, 1 ; 2 uses
  %exitcond217.not.i783 = icmp eq i64 %indvars.iv.next214.i782, %wide.trip.count216.i778
  br i1 %exitcond217.not.i783, label %.loopexit175.i692, label %.lr.ph181.i780, !llvm.loop !750

.loopexit175.i692:                                ; preds = %.lr.ph181.i780, %middle.block1514, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776, %._crit_edge.i691
  %.0138.i693 = phi ptr [ null, %._crit_edge.i691 ], [ %i.azm, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit.i776 ], [ %i.azm, %middle.block1514 ], [ %i.azm, %.lr.ph181.i780 ] ; 10 uses
  %i.azv = icmp sgt i32 %i.ayn, 0
  br i1 %i.azv, label %.lr.ph196.i735, label %.preheader.i694

.lr.ph196.i735:                                   ; preds = %.loopexit175.i692
  %i.azw = zext nneg i32 %.sroa.speculated1057 to i64 ; 3 uses
  %i.azx = mul i64 %i.ayp, %i.azw                 ; 2 uses
  %i.azy = getelementptr i8, ptr %i.ayo, i64 %i.azx ; 3 uses
  %i.azz = shl nuw nsw i32 %.sroa.speculated1047, 3
  %i.baa = zext nneg i32 %i.azz to i64            ; 2 uses
  %i.bab = shl nsw i32 %i.aym, 3
  %i.bac = sext i32 %i.bab to i64                 ; 2 uses
  %i.bad = sext i32 %i.ayq to i64                 ; 10 uses
  %wide.trip.count232.i757 = zext nneg i32 %.sroa.speculated1047 to i64 ; 9 uses
  %wide.trip.count237.i758 = zext nneg i32 %.sroa.speculated to i64
  br i1 %i.bd, label %.preheader171.us.i759.preheader, label %.preheader174.preheader.i736

.preheader171.us.i759.preheader:                  ; preds = %.lr.ph196.i735
  %i.bae = shl nsw i64 %i.bad, 3                  ; 2 uses
  %i.baf = getelementptr i8, ptr %i.ayo, i64 %i.azx
  %scevgep1466 = getelementptr i8, ptr %i.baf, i64 %i.bae
  %i.bag = add nsw i32 %i.ayn, -1
  %i.bah = zext i32 %i.bag to i64
  %i.bai = add nuw nsw i64 %i.azw, %i.bah
  %i.baj = mul i64 %i.ayp, %i.bai
  %i.bak = add i32 %i.dc, %i.er
  %i.bal = add i32 %i.bak, %.sroa.speculated1066
  %i.bam = add i32 %i.bal, %i.eh
  %i.ban = sub i32 %i.bam, %i.fc
  %smax1467 = call i32 @llvm.smax.i32(i32 %i.ban, i32 0)
  %i.bao = zext nneg i32 %smax1467 to i64
  %i.bap = shl nuw nsw i64 %i.bao, 3
  %i.baq = getelementptr i8, ptr %i.ayo, i64 %i.baj
  %i.bar = getelementptr i8, ptr %i.baq, i64 %i.bae
  %scevgep1468 = getelementptr i8, ptr %i.bar, i64 %i.bap
  %scevgep1469 = getelementptr i8, ptr %i.gt, i64 8
  %i.bas = add nsw i32 %i.ayn, -1
  %i.bat = zext i32 %i.bas to i64
  %i.bau = add nuw nsw i64 %i.azw, %i.bat
  %i.bav = mul i64 %i.ayp, %i.bau
  %i.baw = shl nuw nsw i64 %wide.trip.count232.i757, 3
  %i.bax = getelementptr i8, ptr %i.ayo, i64 %i.bav
  %scevgep1487 = getelementptr i8, ptr %i.bax, i64 %i.baw
  %scevgep1488 = getelementptr i8, ptr %i.gt, i64 8
  %min.iters.check1494 = icmp slt i32 %.neg214, 4
  %bound01489 = icmp ult ptr %i.azy, %scevgep1488
  %bound11490 = icmp ult ptr %i.gt, %scevgep1487
  %found.conflict1491 = and i1 %bound01489, %bound11490
  %stride.check1492 = icmp slt i64 %i.ayp, 0
  %i.bay = or i1 %found.conflict1491, %stride.check1492
  %n.vec1496 = and i64 %wide.trip.count232.i757, 2147483644 ; 3 uses
  %cmp.n1503 = icmp eq i64 %n.vec1496, %wide.trip.count232.i757
  %xtraiter1633 = and i64 %wide.trip.count232.i757, 3 ; 2 uses
  %lcmp.mod1634.not = icmp eq i64 %xtraiter1633, 0
  %i.baz = add i32 %i.er, %i.f
  %i.bba = add i32 %i.baz, %.sroa.speculated1066
  %i.bbb = add i32 %i.bba, %i.eh
  %i.bbc = xor i32 %i.fc, -1
  %i.bbd = add i32 %i.bbb, %i.bbc
  %i.bbe = sub i32 %i.bbd, %i.d                   ; 2 uses
  %i.bbf = call i32 @llvm.smax.i32(i32 %i.bbe, i32 0)
  %i.bbg = zext nneg i32 %i.bbf to i64            ; 4 uses
  %min.iters.check1475 = icmp slt i32 %i.bbe, 4
  %bound01470 = icmp ult ptr %scevgep1466, %scevgep1469
  %bound11471 = icmp ult ptr %i.gt, %scevgep1468
  %found.conflict1472 = and i1 %bound01470, %bound11471
  %stride.check1473 = icmp slt i64 %i.ayp, 0
  %i.bbh = or i1 %found.conflict1472, %stride.check1473
  %n.vec1477 = and i64 %i.bbg, 2147483644         ; 3 uses
  %cmp.n1484 = icmp eq i64 %n.vec1477, %i.bbg
  %xtraiter1635 = and i64 %i.bbg, 3               ; 2 uses
  %lcmp.mod1636.not = icmp eq i64 %xtraiter1635, 0
  %invariant.op = add i64 1, %i.bad
  %invariant.op1838 = add i64 2, %i.bad
  %invariant.op1840 = add i64 3, %i.bad
  br label %.preheader171.us.i759

.preheader174.preheader.i736:                     ; preds = %.lr.ph196.i735
  %invariant.gep278.i739 = getelementptr [4 x i8], ptr %i.ayw, i64 %wide.trip.count232.i757 ; 3 uses
  %i.bbi = add i32 %i.dm, %i.er
  %i.bbj = add i32 %i.bbi, %.sroa.speculated1066
  %i.bbk = add i32 %i.bbj, %i.eh
  %i.bbl = sub i32 %i.bbk, %i.fc                  ; 2 uses
  %smax1626 = call i32 @llvm.smax.i32(i32 %i.bbl, i32 0) ; 2 uses
  %i.bbm = zext nneg i32 %smax1626 to i64         ; 2 uses
  %xtraiter1620 = and i64 %wide.trip.count232.i757, 3 ; 3 uses
  %i.bbn = icmp slt i32 %.neg214, 4
  %unroll_iter1624 = and i64 %wide.trip.count232.i757, 2147483644
  %lcmp.mod1622.not = icmp eq i64 %xtraiter1620, 0
  %lcmp.mod1623 = icmp ne i64 %xtraiter1620, 0
  %xtraiter1627 = and i64 %i.bbm, 1
  %i.bbo = icmp eq i32 %i.bbl, 1
  %unroll_iter1631 = and i64 %i.bbm, 2147483646
  %lcmp.mod1629.not = icmp eq i64 %xtraiter1627, 0
  %lcmp.mod1630 = trunc i32 %smax1626 to i1
  br label %.preheader174.i740

.preheader171.us.i759:                            ; preds = %.preheader171.us.i759.preheader, %.loopexit.us.i764
  %.0135194.us.i760 = phi i32 [ %i.bdl, %.loopexit.us.i764 ], [ 0, %.preheader171.us.i759.preheader ]
  %.0136192.us.i761 = phi ptr [ %i.bdm, %.loopexit.us.i764 ], [ %i.azy, %.preheader171.us.i759.preheader ] ; 14 uses
  %.0145190.us.i762 = phi ptr [ %i.bdn, %.loopexit.us.i764 ], [ %i.ayk, %.preheader171.us.i759.preheader ] ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.baa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bbp, ptr align 1 %.0145190.us.i762, i64 %i.bac, i1 false)
  br i1 %i.fb, label %.lr.ph187.us.i770.preheader, label %.preheader170.us.i763

.lr.ph187.us.i770.preheader:                      ; preds = %.preheader171.us.i759
  %brmerge1857 = select i1 %min.iters.check1494, i1 true, i1 %i.bay
  br i1 %brmerge1857, label %.lr.ph187.us.i770.preheader1520, label %vector.ph1495

vector.ph1495:                                    ; preds = %.lr.ph187.us.i770.preheader
  %i.bbq = load i64, ptr %i.gt, align 1, !alias.scope !825
  %broadcast.splatinsert1499 = insertelement <2 x i64> poison, i64 %i.bbq, i64 0
  %broadcast.splat1500 = shufflevector <2 x i64> %broadcast.splatinsert1499, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1497

vector.body1497:                                  ; preds = %vector.body1497, %vector.ph1495
  %index1498 = phi i64 [ 0, %vector.ph1495 ], [ %index.next1501, %vector.body1497 ] ; 2 uses
  %i.bbr = shl nuw nsw i64 %index1498, 3
  %i.bbs = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.bbr ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 16
  store <2 x i64> %broadcast.splat1500, ptr %i.bbs, align 1, !alias.scope !826, !noalias !825
  store <2 x i64> %broadcast.splat1500, ptr %i.bbt, align 1, !alias.scope !826, !noalias !825
  %index.next1501 = add nuw i64 %index1498, 4     ; 2 uses
  %i.bbu = icmp eq i64 %index.next1501, %n.vec1496
  br i1 %i.bbu, label %middle.block1502, label %vector.body1497, !llvm.loop !754

middle.block1502:                                 ; preds = %vector.body1497
  br i1 %cmp.n1503, label %.preheader170.us.i763, label %.lr.ph187.us.i770.preheader1520

.lr.ph187.us.i770.preheader1520:                  ; preds = %.lr.ph187.us.i770.preheader, %middle.block1502
  %indvars.iv229.i771.ph = phi i64 [ %n.vec1496, %middle.block1502 ], [ 0, %.lr.ph187.us.i770.preheader ] ; 3 uses
  br i1 %lcmp.mod1634.not, label %.lr.ph187.us.i770.prol.loopexit, label %.lr.ph187.us.i770.prol

.lr.ph187.us.i770.prol:                           ; preds = %.lr.ph187.us.i770.preheader1520, %.lr.ph187.us.i770.prol
  %indvars.iv229.i771.prol = phi i64 [ %indvars.iv.next230.i772.prol, %.lr.ph187.us.i770.prol ], [ %indvars.iv229.i771.ph, %.lr.ph187.us.i770.preheader1520 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph187.us.i770.prol ], [ 0, %.lr.ph187.us.i770.preheader1520 ]
  %i.bbv = shl nuw nsw i64 %indvars.iv229.i771.prol, 3
  %i.bbw = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.bbv
  %i.bbx = load i64, ptr %i.gt, align 1
  store i64 %i.bbx, ptr %i.bbw, align 1
  %indvars.iv.next230.i772.prol = add nuw nsw i64 %indvars.iv229.i771.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1633
  br i1 %prol.iter.cmp.not, label %.lr.ph187.us.i770.prol.loopexit, label %.lr.ph187.us.i770.prol, !llvm.loop !755

.lr.ph187.us.i770.prol.loopexit:                  ; preds = %.lr.ph187.us.i770.prol, %.lr.ph187.us.i770.preheader1520
  %indvars.iv229.i771.unr = phi i64 [ %indvars.iv229.i771.ph, %.lr.ph187.us.i770.preheader1520 ], [ %indvars.iv.next230.i772.prol, %.lr.ph187.us.i770.prol ]
  %i.bby = sub nsw i64 %indvars.iv229.i771.ph, %wide.trip.count232.i757
  %i.bbz = icmp ugt i64 %i.bby, -4
  br i1 %i.bbz, label %.preheader170.us.i763, label %.lr.ph187.us.i770

.lr.ph187.us.i770:                                ; preds = %.lr.ph187.us.i770.prol.loopexit, %.lr.ph187.us.i770
  %indvars.iv229.i771 = phi i64 [ %indvars.iv.next230.i772.3, %.lr.ph187.us.i770 ], [ %indvars.iv229.i771.unr, %.lr.ph187.us.i770.prol.loopexit ] ; 5 uses
  %i.bca = shl nuw nsw i64 %indvars.iv229.i771, 3
  %i.bcb = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.bca
  %i.bcc = load i64, ptr %i.gt, align 1
  store i64 %i.bcc, ptr %i.bcb, align 1
  %indvars.iv.next230.i772 = shl i64 %indvars.iv229.i771, 3
  %i.bcd = getelementptr i8, ptr %.0136192.us.i761, i64 %indvars.iv.next230.i772
  %i.bce = getelementptr i8, ptr %i.bcd, i64 8
  %i.bcf = load i64, ptr %i.gt, align 1
  store i64 %i.bcf, ptr %i.bce, align 1
  %indvars.iv.next230.i772.1 = shl i64 %indvars.iv229.i771, 3
  %i.bcg = getelementptr i8, ptr %.0136192.us.i761, i64 %indvars.iv.next230.i772.1
  %i.bch = getelementptr i8, ptr %i.bcg, i64 16
  %i.bci = load i64, ptr %i.gt, align 1
  store i64 %i.bci, ptr %i.bch, align 1
  %indvars.iv.next230.i772.2 = shl i64 %indvars.iv229.i771, 3
  %i.bcj = getelementptr i8, ptr %.0136192.us.i761, i64 %indvars.iv.next230.i772.2
  %i.bck = getelementptr i8, ptr %i.bcj, i64 24
  %i.bcl = load i64, ptr %i.gt, align 1
  store i64 %i.bcl, ptr %i.bck, align 1
  %indvars.iv.next230.i772.3 = add nuw nsw i64 %indvars.iv229.i771, 4 ; 2 uses
  %exitcond233.not.i773.3 = icmp eq i64 %indvars.iv.next230.i772.3, %wide.trip.count232.i757
  br i1 %exitcond233.not.i773.3, label %.preheader170.us.i763, label %.lr.ph187.us.i770, !llvm.loop !756

.lr.ph189.us.i766:                                ; preds = %.lr.ph189.us.i766.prol.loopexit, %.lr.ph189.us.i766
  %indvars.iv234.i767 = phi i64 [ %indvars.iv.next235.i768.3, %.lr.ph189.us.i766 ], [ %indvars.iv234.i767.unr, %.lr.ph189.us.i766.prol.loopexit ] ; 5 uses
  %i.bcm = add nsw i64 %indvars.iv234.i767, %i.bad
  %i.bcn = shl nsw i64 %i.bcm, 3
  %i.bco = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bcn
  %i.bcp = load i64, ptr %i.gt, align 1
  store i64 %i.bcp, ptr %i.bco, align 1
  %.reass = add i64 %indvars.iv234.i767, %invariant.op
  %i.bcq = shl nsw i64 %.reass, 3
  %i.bcr = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bcq
  %i.bcs = load i64, ptr %i.gt, align 1
  store i64 %i.bcs, ptr %i.bcr, align 1
  %.reass1839 = add i64 %indvars.iv234.i767, %invariant.op1838
  %i.bct = shl nsw i64 %.reass1839, 3
  %i.bcu = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bct
  %i.bcv = load i64, ptr %i.gt, align 1
  store i64 %i.bcv, ptr %i.bcu, align 1
  %.reass1841 = add i64 %indvars.iv234.i767, %invariant.op1840
  %i.bcw = shl nsw i64 %.reass1841, 3
  %i.bcx = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bcw
  %i.bcy = load i64, ptr %i.gt, align 1
  store i64 %i.bcy, ptr %i.bcx, align 1
  %indvars.iv.next235.i768.3 = add nuw nsw i64 %indvars.iv234.i767, 4 ; 2 uses
  %exitcond238.not.i769.3 = icmp eq i64 %indvars.iv.next235.i768.3, %wide.trip.count237.i758
  br i1 %exitcond238.not.i769.3, label %.loopexit.us.i764, label %.lr.ph189.us.i766, !llvm.loop !757

.preheader170.us.i763:                            ; preds = %.lr.ph187.us.i770.prol.loopexit, %.lr.ph187.us.i770, %middle.block1502, %.preheader171.us.i759
  br i1 %i.fg, label %.lr.ph189.us.i766.preheader, label %.loopexit.us.i764

.lr.ph189.us.i766.preheader:                      ; preds = %.preheader170.us.i763
  %brmerge1858 = select i1 %min.iters.check1475, i1 true, i1 %i.bbh
  br i1 %brmerge1858, label %.lr.ph189.us.i766.preheader1519, label %vector.ph1476

vector.ph1476:                                    ; preds = %.lr.ph189.us.i766.preheader
  %i.bcz = load i64, ptr %i.gt, align 1, !alias.scope !827
  %broadcast.splatinsert1480 = insertelement <2 x i64> poison, i64 %i.bcz, i64 0
  %broadcast.splat1481 = shufflevector <2 x i64> %broadcast.splatinsert1480, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1476
  %index1479 = phi i64 [ 0, %vector.ph1476 ], [ %index.next1482, %vector.body1478 ] ; 2 uses
  %i.bda = add nsw i64 %index1479, %i.bad
  %i.bdb = shl nsw i64 %i.bda, 3
  %i.bdc = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bdb ; 2 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 16
  store <2 x i64> %broadcast.splat1481, ptr %i.bdc, align 1, !alias.scope !828, !noalias !827
  store <2 x i64> %broadcast.splat1481, ptr %i.bdd, align 1, !alias.scope !828, !noalias !827
  %index.next1482 = add nuw i64 %index1479, 4     ; 2 uses
  %i.bde = icmp eq i64 %index.next1482, %n.vec1477
  br i1 %i.bde, label %middle.block1483, label %vector.body1478, !llvm.loop !761

middle.block1483:                                 ; preds = %vector.body1478
  br i1 %cmp.n1484, label %.loopexit.us.i764, label %.lr.ph189.us.i766.preheader1519

.lr.ph189.us.i766.preheader1519:                  ; preds = %.lr.ph189.us.i766.preheader, %middle.block1483
  %indvars.iv234.i767.ph = phi i64 [ %n.vec1477, %middle.block1483 ], [ 0, %.lr.ph189.us.i766.preheader ] ; 3 uses
  br i1 %lcmp.mod1636.not, label %.lr.ph189.us.i766.prol.loopexit, label %.lr.ph189.us.i766.prol

.lr.ph189.us.i766.prol:                           ; preds = %.lr.ph189.us.i766.preheader1519, %.lr.ph189.us.i766.prol
  %indvars.iv234.i767.prol = phi i64 [ %indvars.iv.next235.i768.prol, %.lr.ph189.us.i766.prol ], [ %indvars.iv234.i767.ph, %.lr.ph189.us.i766.preheader1519 ] ; 2 uses
  %prol.iter1637 = phi i64 [ %prol.iter1637.next, %.lr.ph189.us.i766.prol ], [ 0, %.lr.ph189.us.i766.preheader1519 ]
  %i.bdf = add nsw i64 %indvars.iv234.i767.prol, %i.bad
  %i.bdg = shl nsw i64 %i.bdf, 3
  %i.bdh = getelementptr inbounds i8, ptr %.0136192.us.i761, i64 %i.bdg
  %i.bdi = load i64, ptr %i.gt, align 1
  store i64 %i.bdi, ptr %i.bdh, align 1
  %indvars.iv.next235.i768.prol = add nuw nsw i64 %indvars.iv234.i767.prol, 1 ; 2 uses
  %prol.iter1637.next = add i64 %prol.iter1637, 1 ; 2 uses
  %prol.iter1637.cmp.not = icmp eq i64 %prol.iter1637.next, %xtraiter1635
  br i1 %prol.iter1637.cmp.not, label %.lr.ph189.us.i766.prol.loopexit, label %.lr.ph189.us.i766.prol, !llvm.loop !762

.lr.ph189.us.i766.prol.loopexit:                  ; preds = %.lr.ph189.us.i766.prol, %.lr.ph189.us.i766.preheader1519
  %indvars.iv234.i767.unr = phi i64 [ %indvars.iv234.i767.ph, %.lr.ph189.us.i766.preheader1519 ], [ %indvars.iv.next235.i768.prol, %.lr.ph189.us.i766.prol ]
  %i.bdj = sub nsw i64 %indvars.iv234.i767.ph, %i.bbg
  %i.bdk = icmp ugt i64 %i.bdj, -4
  br i1 %i.bdk, label %.loopexit.us.i764, label %.lr.ph189.us.i766

.loopexit.us.i764:                                ; preds = %.lr.ph189.us.i766.prol.loopexit, %.lr.ph189.us.i766, %middle.block1483, %.preheader170.us.i763
  %i.bdl = add nuw nsw i32 %.0135194.us.i760, 1   ; 2 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %.0136192.us.i761, i64 %i.ayp
  %i.bdn = getelementptr inbounds nuw i8, ptr %.0145190.us.i762, i64 %i.ayl
  %exitcond239.not.i765 = icmp eq i32 %i.bdl, %i.ayn
  br i1 %exitcond239.not.i765, label %.preheader.i694, label %.preheader171.us.i759, !llvm.loop !763

.preheader.i694:                                  ; preds = %.loopexit173.i745, %.loopexit.us.i764, %.loopexit175.i692
  br i1 %i.ev, label %.lr.ph198.i723, label %._crit_edge199.i695

.lr.ph198.i723:                                   ; preds = %.preheader.i694
  %i.bdo = shl nsw i32 %i.ayr, 3
  %i.bdp = sext i32 %i.bdo to i64                 ; 7 uses
  %wide.trip.count248.i724 = zext nneg i32 %.neg to i64 ; 3 uses
  br i1 %i.bd, label %.lr.ph198.split.us.i729.preheader, label %.lr.ph198.split.i725

.lr.ph198.split.us.i729.preheader:                ; preds = %.lr.ph198.i723
  %xtraiter1638 = and i64 %wide.trip.count248.i724, 3 ; 3 uses
  %i.bdq = add nsw i32 %.neg, -1
  %i.bdr = icmp ult i32 %i.bdq, 3
  br i1 %i.bdr, label %.lr.ph198.split.us.i729.epil.preheader, label %.lr.ph198.split.us.i729.preheader.new

.lr.ph198.split.us.i729.preheader.new:            ; preds = %.lr.ph198.split.us.i729.preheader
  %unroll_iter1642 = and i64 %wide.trip.count248.i724, 2147483644
  br label %.lr.ph198.split.us.i729

.lr.ph198.split.us.i729:                          ; preds = %.lr.ph198.split.us.i729, %.lr.ph198.split.us.i729.preheader.new
  %indvars.iv245.i730 = phi i64 [ 0, %.lr.ph198.split.us.i729.preheader.new ], [ %indvars.iv.next246.i731.3, %.lr.ph198.split.us.i729 ] ; 5 uses
  %niter1643 = phi i64 [ 0, %.lr.ph198.split.us.i729.preheader.new ], [ %niter1643.next.3, %.lr.ph198.split.us.i729 ]
  %i.bds = mul i64 %indvars.iv245.i730, %i.ayp
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %i.bds
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdt, ptr align 1 %.0138.i693, i64 %i.bdp, i1 false)
  %indvars.iv.next246.i731 = or disjoint i64 %indvars.iv245.i730, 1
  %i.bdu = mul i64 %indvars.iv.next246.i731, %i.ayp
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %i.bdu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdv, ptr align 1 %.0138.i693, i64 %i.bdp, i1 false)
  %indvars.iv.next246.i731.1 = or disjoint i64 %indvars.iv245.i730, 2
  %i.bdw = mul i64 %indvars.iv.next246.i731.1, %i.ayp
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %i.bdw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdx, ptr align 1 %.0138.i693, i64 %i.bdp, i1 false)
  %indvars.iv.next246.i731.2 = or disjoint i64 %indvars.iv245.i730, 3
  %i.bdy = mul i64 %indvars.iv.next246.i731.2, %i.ayp
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %i.bdy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdz, ptr align 1 %.0138.i693, i64 %i.bdp, i1 false)
  %indvars.iv.next246.i731.3 = add nuw nsw i64 %indvars.iv245.i730, 4 ; 2 uses
  %niter1643.next.3 = add i64 %niter1643, 4       ; 2 uses
  %niter1643.ncmp.3 = icmp eq i64 %niter1643.next.3, %unroll_iter1642
  br i1 %niter1643.ncmp.3, label %._crit_edge199.thread.i733.unr-lcssa, label %.lr.ph198.split.us.i729, !llvm.loop !764

.preheader174.i740:                               ; preds = %.loopexit173.i745, %.preheader174.preheader.i736
  %.0135194.i741 = phi i32 [ %i.bgf, %.loopexit173.i745 ], [ 0, %.preheader174.preheader.i736 ]
  %.0136192.i742 = phi ptr [ %i.bgg, %.loopexit173.i745 ], [ %i.azy, %.preheader174.preheader.i736 ] ; 10 uses
  %.0145190.i743 = phi ptr [ %i.bgh, %.loopexit173.i745 ], [ %i.ayk, %.preheader174.preheader.i736 ] ; 10 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.baa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bea, ptr align 1 %.0145190.i743, i64 %i.bac, i1 false)
  br i1 %i.fb, label %.lr.ph183.i752.preheader, label %.preheader172.i744

.lr.ph183.i752.preheader:                         ; preds = %.preheader174.i740
  br i1 %i.bbn, label %.lr.ph183.i752.epil.preheader, label %.lr.ph183.i752

.preheader172.i744.loopexit.unr-lcssa:            ; preds = %.lr.ph183.i752
  br i1 %lcmp.mod1622.not, label %.preheader172.i744, label %.lr.ph183.i752.epil.preheader

.lr.ph183.i752.epil.preheader:                    ; preds = %.preheader172.i744.loopexit.unr-lcssa, %.lr.ph183.i752.preheader
  %indvars.iv218.i753.epil.init = phi i64 [ 0, %.lr.ph183.i752.preheader ], [ %indvars.iv.next219.i754.3, %.preheader172.i744.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1623)
  br label %.lr.ph183.i752.epil

.lr.ph183.i752.epil:                              ; preds = %.lr.ph183.i752.epil, %.lr.ph183.i752.epil.preheader
  %indvars.iv218.i753.epil = phi i64 [ %indvars.iv.next219.i754.epil, %.lr.ph183.i752.epil ], [ %indvars.iv218.i753.epil.init, %.lr.ph183.i752.epil.preheader ] ; 3 uses
  %epil.iter1621 = phi i64 [ %epil.iter1621.next, %.lr.ph183.i752.epil ], [ 0, %.lr.ph183.i752.epil.preheader ]
  %i.beb = shl nuw nsw i64 %indvars.iv218.i753.epil, 3
  %i.bec = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.beb
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %i.ayw, i64 %indvars.iv218.i753.epil
  %i.bee = load i32, ptr %i.bed, align 4, !tbaa !18
  %i.bef = sext i32 %i.bee to i64
  %i.beg = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bef
  %i.beh = load i64, ptr %i.beg, align 1
  store i64 %i.beh, ptr %i.bec, align 1
  %indvars.iv.next219.i754.epil = add nuw nsw i64 %indvars.iv218.i753.epil, 1
  %epil.iter1621.next = add i64 %epil.iter1621, 1 ; 2 uses
  %epil.iter1621.cmp.not = icmp eq i64 %epil.iter1621.next, %xtraiter1620
  br i1 %epil.iter1621.cmp.not, label %.preheader172.i744, label %.lr.ph183.i752.epil, !llvm.loop !765

.preheader172.i744:                               ; preds = %.preheader172.i744.loopexit.unr-lcssa, %.lr.ph183.i752.epil, %.preheader174.i740
  br i1 %i.fg, label %.lr.ph185.i747.preheader, label %.loopexit173.i745

.lr.ph185.i747.preheader:                         ; preds = %.preheader172.i744
  br i1 %i.bbo, label %.lr.ph185.i747.epil.preheader, label %.lr.ph185.i747

.lr.ph183.i752:                                   ; preds = %.lr.ph183.i752.preheader, %.lr.ph183.i752
  %indvars.iv218.i753 = phi i64 [ %indvars.iv.next219.i754.3, %.lr.ph183.i752 ], [ 0, %.lr.ph183.i752.preheader ] ; 6 uses
  %niter1625 = phi i64 [ %niter1625.next.3, %.lr.ph183.i752 ], [ 0, %.lr.ph183.i752.preheader ]
  %i.bei = shl nuw nsw i64 %indvars.iv218.i753, 3
  %i.bej = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.bei
  %i.bek = getelementptr inbounds nuw [4 x i8], ptr %i.ayw, i64 %indvars.iv218.i753
  %i.bel = load i32, ptr %i.bek, align 4, !tbaa !18
  %i.bem = sext i32 %i.bel to i64
  %i.ben = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bem
  %i.beo = load i64, ptr %i.ben, align 1
  store i64 %i.beo, ptr %i.bej, align 1
  %indvars.iv.next219.i754 = or disjoint i64 %indvars.iv218.i753, 1 ; 2 uses
  %i.bep = shl nuw nsw i64 %indvars.iv.next219.i754, 3
  %i.beq = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.bep
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %i.ayw, i64 %indvars.iv.next219.i754
  %i.bes = load i32, ptr %i.ber, align 4, !tbaa !18
  %i.bet = sext i32 %i.bes to i64
  %i.beu = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bet
  %i.bev = load i64, ptr %i.beu, align 1
  store i64 %i.bev, ptr %i.beq, align 1
  %indvars.iv.next219.i754.1 = or disjoint i64 %indvars.iv218.i753, 2 ; 2 uses
  %i.bew = shl nuw nsw i64 %indvars.iv.next219.i754.1, 3
  %i.bex = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.bew
  %i.bey = getelementptr inbounds nuw [4 x i8], ptr %i.ayw, i64 %indvars.iv.next219.i754.1
  %i.bez = load i32, ptr %i.bey, align 4, !tbaa !18
  %i.bfa = sext i32 %i.bez to i64
  %i.bfb = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bfa
  %i.bfc = load i64, ptr %i.bfb, align 1
  store i64 %i.bfc, ptr %i.bex, align 1
  %indvars.iv.next219.i754.2 = or disjoint i64 %indvars.iv218.i753, 3 ; 2 uses
  %i.bfd = shl nuw nsw i64 %indvars.iv.next219.i754.2, 3
  %i.bfe = getelementptr inbounds nuw i8, ptr %.0136192.i742, i64 %i.bfd
  %i.bff = getelementptr inbounds nuw [4 x i8], ptr %i.ayw, i64 %indvars.iv.next219.i754.2
  %i.bfg = load i32, ptr %i.bff, align 4, !tbaa !18
  %i.bfh = sext i32 %i.bfg to i64
  %i.bfi = getelementptr inbounds i8, ptr %.0145190.i743, i64 %i.bfh
  %i.bfj = load i64, ptr %i.bfi, align 1
  store i64 %i.bfj, ptr %i.bfe, align 1
  %indvars.iv.next219.i754.3 = add nuw nsw i64 %indvars.iv218.i753, 4 ; 2 uses
  %niter1625.next.3 = add i64 %niter1625, 4       ; 2 uses
  %niter1625.ncmp.3 = icmp eq i64 %niter1625.next.3, %unroll_iter1624
  br i1 %niter1625.ncmp.3, label %.preheader172.i744.loopexit.unr-lcssa, label %.lr.ph183.i752, !llvm.loop !766

.lr.ph185.i747:                                   ; preds = %.lr.ph185.i747.preheader, %.lr.ph185.i747
  %indvars.iv223.i748 = phi i64 [ %indvars.iv.next224.i750.1, %.lr.ph185.i747 ], [ 0, %.lr.ph185.i747.preheader ] ; 4 uses
  %niter1632 = phi i64 [ %niter1632.next.1, %.lr.ph185.i747 ], [ 0, %.lr.ph185.i747.preheader ]
  %i.bfk = add nsw i64 %indvars.iv223.i748, %i.bad
  %i.bfl = shl nsw i64 %i.bfk, 3
  %i.bfm = getelementptr inbounds i8, ptr %.0136192.i742, i64 %i.bfl
  %gep279.i749 = getelementptr [4 x i8], ptr %invariant.gep278.i739, i64 %indvars.iv223.i748
  %i.bfn = load i32, ptr %gep279.i749, align 4, !tbaa !18
end_hunk_2
