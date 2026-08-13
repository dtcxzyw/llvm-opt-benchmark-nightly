inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 206
begin_hunk_0_@dradfg:bb.a
  %i.hj = add nuw nsw i32 %.3553748, 1            ; 2 uses
  %indvars.iv.next956 = sub i32 %indvars.iv955, %i.n
  %indvars.iv.next962 = add i32 %indvars.iv961, %i.n
  %exitcond971.not = icmp eq i32 %i.hj, %i.k
  br i1 %exitcond971.not, label %.loopexit670, label %.lr.ph744, !llvm.loop !992

.preheader671.lr.ph:                              ; preds = %.preheader671.lr.ph.preheader, %._crit_edge728
  %indvars.iv941 = phi i32 [ %i.n, %.preheader671.lr.ph.preheader ], [ %indvars.iv.next942, %._crit_edge728 ] ; 3 uses
  %indvars.iv935 = phi i32 [ %i.fd, %.preheader671.lr.ph.preheader ], [ %indvars.iv.next936, %._crit_edge728 ] ; 3 uses
  %.4554731 = phi i32 [ 1, %.preheader671.lr.ph.preheader ], [ %i.kn, %._crit_edge728 ]
  %i.hk = sext i32 %indvars.iv941 to i64
  %i.hl = shl nsw i64 %i.hk, 2                    ; 6 uses
  %scevgep1258 = getelementptr i8, ptr %scevgep1257, i64 %i.hl ; 5 uses
  %scevgep1260 = getelementptr i8, ptr %scevgep1259, i64 %i.hl ; 5 uses
  %i.hm = sext i32 %indvars.iv935 to i64
  %i.hn = shl nsw i64 %i.hm, 2                    ; 6 uses
  %scevgep1262 = getelementptr i8, ptr %scevgep1261, i64 %i.hn ; 5 uses
  %scevgep1264 = getelementptr i8, ptr %scevgep1263, i64 %i.hn ; 5 uses
  %scevgep1266 = getelementptr i8, ptr %scevgep1265, i64 %i.hl ; 5 uses
  %scevgep1268 = getelementptr i8, ptr %scevgep1267, i64 %i.hl ; 5 uses
  %scevgep1270 = getelementptr i8, ptr %scevgep1269, i64 %i.hn ; 5 uses
  %scevgep1272 = getelementptr i8, ptr %scevgep1271, i64 %i.hn ; 5 uses
  %scevgep1274 = getelementptr i8, ptr %scevgep1273, i64 %i.hn ; 3 uses
  %scevgep1276 = getelementptr i8, ptr %scevgep1275, i64 %i.hn ; 3 uses
  %scevgep1278 = getelementptr i8, ptr %scevgep1277, i64 %i.hl ; 4 uses
  %scevgep1280 = getelementptr i8, ptr %scevgep1279, i64 %i.hl ; 4 uses
  %i.ho = sext i32 %indvars.iv935 to i64
  %i.hp = sext i32 %indvars.iv941 to i64
  %i.hq = insertelement <4 x ptr> poison, ptr %scevgep1274, i64 0 ; 2 uses
  %i.hr = insertelement <4 x ptr> %i.hq, ptr %scevgep1258, i64 1
  %i.hs = insertelement <4 x ptr> %i.hr, ptr %scevgep1266, i64 2
  %i.ht = insertelement <4 x ptr> %i.hs, ptr %scevgep1262, i64 3
  %i.hu = insertelement <4 x ptr> poison, ptr %scevgep1260, i64 0
  %i.hv = insertelement <4 x ptr> %i.hu, ptr %scevgep1280, i64 1
  %i.hw = insertelement <4 x ptr> %i.hv, ptr %scevgep1264, i64 2
  %i.hx = insertelement <4 x ptr> %i.hw, ptr %scevgep1272, i64 3
  %i.hy = insertelement <4 x ptr> poison, ptr %scevgep1258, i64 0
  %i.hz = insertelement <4 x ptr> %i.hy, ptr %scevgep1278, i64 1
  %i.ia = insertelement <4 x ptr> %i.hz, ptr %scevgep1262, i64 2
  %i.ib = insertelement <4 x ptr> %i.ia, ptr %scevgep1270, i64 3
  %i.ic = insertelement <4 x ptr> poison, ptr %scevgep1276, i64 0 ; 2 uses
  %i.id = insertelement <4 x ptr> %i.ic, ptr %scevgep1260, i64 1
  %i.ie = insertelement <4 x ptr> %i.id, ptr %scevgep1268, i64 2
  %i.if = insertelement <4 x ptr> %i.ie, ptr %scevgep1264, i64 3
  %i.ig = insertelement <4 x ptr> %i.hq, ptr %scevgep1262, i64 1
  %i.ih = insertelement <4 x ptr> %i.ig, ptr %scevgep1270, i64 2
  %i.ii = insertelement <4 x ptr> %i.ih, ptr %scevgep1266, i64 3
  %i.ij = insertelement <4 x ptr> poison, ptr %scevgep1264, i64 0
  %i.ik = insertelement <4 x ptr> %i.ij, ptr %scevgep1280, i64 1
  %i.il = insertelement <4 x ptr> %i.ik, ptr %scevgep1268, i64 2
  %i.im = insertelement <4 x ptr> %i.il, ptr %scevgep1276, i64 3
  %i.in = insertelement <4 x ptr> poison, ptr %scevgep1262, i64 0
  %i.io = insertelement <4 x ptr> %i.in, ptr %scevgep1278, i64 1
  %i.ip = insertelement <4 x ptr> %i.io, ptr %scevgep1266, i64 2
  %i.iq = insertelement <4 x ptr> %i.ip, ptr %scevgep1274, i64 3
  %i.ir = insertelement <4 x ptr> %i.ic, ptr %scevgep1264, i64 1
  %i.is = insertelement <4 x ptr> %i.ir, ptr %scevgep1272, i64 2
  %i.it = insertelement <4 x ptr> %i.is, ptr %scevgep1268, i64 3
  %bound01281 = icmp ult ptr %scevgep1258, %scevgep1264
  %bound11282 = icmp ult ptr %scevgep1262, %scevgep1260
  %found.conflict1283 = and i1 %bound01281, %bound11282
  %bound01284 = icmp ult ptr %scevgep1258, %scevgep1268
  %bound11285 = icmp ult ptr %scevgep1266, %scevgep1260
  %found.conflict1286 = and i1 %bound01284, %bound11285
  %bound01288 = icmp ult ptr %scevgep1258, %scevgep1272
  %bound11289 = icmp ult ptr %scevgep1270, %scevgep1260
  %found.conflict1290 = and i1 %bound01288, %bound11289
  %i.iu = icmp ult <4 x ptr> %i.ib, %i.if
  %i.iv = icmp ult <4 x ptr> %i.ht, %i.hx
  %i.iw = and <4 x i1> %i.iv, %i.iu
  %i.ix = icmp ult <4 x ptr> %i.iq, %i.it
  %i.iy = icmp ult <4 x ptr> %i.ii, %i.im
  %i.iz = and <4 x i1> %i.iy, %i.ix
  %bound01324 = icmp ult ptr %scevgep1266, %scevgep1280
  %bound11325 = icmp ult ptr %scevgep1278, %scevgep1268
  %found.conflict1326 = and i1 %bound01324, %bound11325
  %bound01328 = icmp ult ptr %scevgep1270, %scevgep1276
  %bound11329 = icmp ult ptr %scevgep1274, %scevgep1272
  %found.conflict1330 = and i1 %bound01328, %bound11329
  %bound01332 = icmp ult ptr %scevgep1270, %scevgep1280
  %bound11333 = icmp ult ptr %scevgep1278, %scevgep1272
  %found.conflict1334 = and i1 %bound01332, %bound11333
  %rdx.op = or <4 x i1> %i.iw, %i.iz
  %i.ja = bitcast <4 x i1> %rdx.op to i4
  %i.jb = icmp ne i4 %i.ja, 0
  %op.rdx = or i1 %i.jb, %found.conflict1283
  %op.rdx1564 = or i1 %found.conflict1286, %found.conflict1290
  %op.rdx1565 = or i1 %found.conflict1326, %found.conflict1330
  %op.rdx1566 = or i1 %op.rdx, %op.rdx1564
  %op.rdx1567 = or i1 %op.rdx1565, %found.conflict1334
  %op.rdx1568 = or i1 %op.rdx1566, %op.rdx1567
  br label %.preheader671

.preheader671:                                    ; preds = %.preheader671.lr.ph, %._crit_edge724
  %indvars.iv943 = phi i64 [ %i.hp, %.preheader671.lr.ph ], [ %indvars.iv.next944, %._crit_edge724 ] ; 4 uses
  %indvars.iv937 = phi i64 [ %i.ho, %.preheader671.lr.ph ], [ %indvars.iv.next938, %._crit_edge724 ] ; 4 uses
  %.4562727 = phi i32 [ 0, %.preheader671.lr.ph ], [ %i.km, %._crit_edge724 ]
  %brmerge1645.a = select i1 %min.iters.check1337, i1 true, i1 %op.rdx1568
  br i1 %brmerge1645.a, label %scalar.ph1336.preheader, label %vector.ph1338

vector.ph1338:                                    ; preds = %.preheader671
  %i.jc = add i64 %indvars.iv943, %i.ft
  %i.jd = add i64 %indvars.iv937, %i.ft
  %invariant.op1607 = add nuw i64 %indvars.iv943, 1
  %invariant.op1609 = add i64 %indvars.iv937, 1
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1338
  %index1341 = phi i64 [ 0, %vector.ph1338 ], [ %index.next1356, %vector.body1340 ] ; 2 uses
  %i.je = shl i64 %index1341, 1                   ; 2 uses
  %.reass1608 = add nuw i64 %i.je, %invariant.op1607 ; 2 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1608 ; 2 uses
  %wide.vec1342 = load <8 x float>, ptr %i.jf, align 4, !alias.scope !993 ; 2 uses
  %strided.vec1343 = shufflevector <8 x float> %wide.vec1342, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1344 = shufflevector <8 x float> %wide.vec1342, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %.reass1610 = add i64 %i.je, %invariant.op1609  ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1610 ; 2 uses
  %wide.vec1345 = load <8 x float>, ptr %i.jg, align 4, !alias.scope !996 ; 2 uses
  %strided.vec1346 = shufflevector <8 x float> %wide.vec1345, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1347 = shufflevector <8 x float> %wide.vec1345, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jh = fadd <4 x float> %strided.vec1343, %strided.vec1346
  %i.ji = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1608
  %i.jj = fsub <4 x float> %strided.vec1344, %strided.vec1347
  %i.jk = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1610
  %wide.vec1348 = load <8 x float>, ptr %i.jf, align 4, !alias.scope !993 ; 2 uses
  %strided.vec1349 = shufflevector <8 x float> %wide.vec1348, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1350 = shufflevector <8 x float> %wide.vec1348, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1351 = load <8 x float>, ptr %i.jg, align 4, !alias.scope !996 ; 2 uses
  %strided.vec1352 = shufflevector <8 x float> %wide.vec1351, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1353 = shufflevector <8 x float> %wide.vec1351, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jl = fadd <4 x float> %strided.vec1350, %strided.vec1353
  %interleaved.vec1354 = shufflevector <4 x float> %i.jh, <4 x float> %i.jl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1354, ptr %i.ji, align 4
  %i.jm = fsub <4 x float> %strided.vec1352, %strided.vec1349
  %interleaved.vec1355 = shufflevector <4 x float> %i.jj, <4 x float> %i.jm, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1355, ptr %i.jk, align 4
  %index.next1356 = add nuw i64 %index1341, 4     ; 2 uses
  %i.jn = icmp eq i64 %index.next1356, %n.vec1339
  br i1 %i.jn, label %middle.block1357, label %vector.body1340, !llvm.loop !998

middle.block1357:                                 ; preds = %vector.body1340
  br i1 %cmp.n1358, label %._crit_edge724, label %scalar.ph1336.preheader

scalar.ph1336.preheader:                          ; preds = %.preheader671, %middle.block1357
  %indvars.iv945.ph = phi i64 [ %i.jc, %middle.block1357 ], [ %indvars.iv943, %.preheader671 ]
  %indvars.iv939.ph = phi i64 [ %i.jd, %middle.block1357 ], [ %indvars.iv937, %.preheader671 ]
  %.3722.ph = phi i32 [ %i.fw, %middle.block1357 ], [ 2, %.preheader671 ]
  br label %scalar.ph1336

scalar.ph1336:                                    ; preds = %scalar.ph1336.preheader, %scalar.ph1336
  %indvars.iv945 = phi i64 [ %indvars.iv.next946, %scalar.ph1336 ], [ %indvars.iv945.ph, %scalar.ph1336.preheader ] ; 2 uses
  %indvars.iv939 = phi i64 [ %indvars.iv.next940, %scalar.ph1336 ], [ %indvars.iv939.ph, %scalar.ph1336.preheader ] ; 2 uses
  %.3722 = phi i32 [ %i.kk, %scalar.ph1336 ], [ %.3722.ph, %scalar.ph1336.preheader ]
  %indvars.iv.next946 = add nuw nsw i64 %indvars.iv945, 2 ; 3 uses
  %indvars.iv.next940 = add nsw i64 %indvars.iv939, 2 ; 3 uses
  %i.jo = add nuw nsw i64 %indvars.iv945, 1       ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %7, i64 %i.jo ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4
  %i.jr = add nsw i64 %indvars.iv939, 1           ; 2 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %7, i64 %i.jr ; 2 uses
  %i.jt = load float, ptr %i.js, align 4
  %i.ju = fadd float %i.jq, %i.jt
  %i.jv = getelementptr inbounds [4 x i8], ptr %5, i64 %i.jo
  store float %i.ju, ptr %i.jv, align 4
  %i.jw = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next946 ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4
  %i.jy = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next940 ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4
  %i.ka = fsub float %i.jx, %i.jz
  %i.kb = getelementptr inbounds [4 x i8], ptr %5, i64 %i.jr
  store float %i.ka, ptr %i.kb, align 4
  %i.kc = load float, ptr %i.jw, align 4
  %i.kd = load float, ptr %i.jy, align 4
  %i.ke = fadd float %i.kc, %i.kd
  %i.kf = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next946
  store float %i.ke, ptr %i.kf, align 4
  %i.kg = load float, ptr %i.js, align 4
  %i.kh = load float, ptr %i.jp, align 4
  %i.ki = fsub float %i.kg, %i.kh
  %i.kj = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next940
  store float %i.ki, ptr %i.kj, align 4
  %i.kk = add nuw nsw i32 %.3722, 2               ; 2 uses
  %i.kl = icmp slt i32 %i.kk, %0
  br i1 %i.kl, label %scalar.ph1336, label %._crit_edge724, !llvm.loop !999

._crit_edge724:                                   ; preds = %scalar.ph1336, %middle.block1357
  %indvars.iv.next944 = add i64 %indvars.iv943, %i.fe
  %indvars.iv.next938 = add i64 %indvars.iv937, %i.fe
  %i.km = add nuw nsw i32 %.4562727, 1            ; 2 uses
  %exitcond953.not = icmp eq i32 %i.km, %2
  br i1 %exitcond953.not, label %._crit_edge728, label %.preheader671, !llvm.loop !1000

._crit_edge728:                                   ; preds = %._crit_edge724
  %i.kn = add nuw nsw i32 %.4554731, 1            ; 2 uses
  %indvars.iv.next936 = sub i32 %indvars.iv935, %i.n
  %indvars.iv.next942 = add i32 %indvars.iv941, %i.n
  %exitcond954.not = icmp eq i32 %i.kn, %i.k
  br i1 %exitcond954.not, label %.loopexit670, label %.preheader671.lr.ph, !llvm.loop !1001

.loopexit670:                                     ; preds = %._crit_edge728, %._crit_edge745, %.lr.ph749, %.lr.ph732, %.preheader672, %.preheader669, %bb.a
  %i.ko = icmp sgt i32 %3, 0                      ; 3 uses
  br i1 %i.ko, label %.lr.ph753.preheader, label %._crit_edge754

.lr.ph753.preheader:                              ; preds = %.loopexit670
  %wide.trip.count975 = zext nneg i32 %3 to i64   ; 5 uses
  %min.iters.check1365 = icmp ult i32 %3, 8
  %i.kp = sub i64 %i.b, %i.a
  %diff.check1363 = icmp ugt i64 %i.kp, -32
  %or.cond1562 = or i1 %min.iters.check1365, %diff.check1363
  br i1 %or.cond1562, label %.lr.ph753.preheader1572, label %vector.ph1366

vector.ph1366:                                    ; preds = %.lr.ph753.preheader
  %n.vec1367 = and i64 %wide.trip.count975, 2147483640 ; 3 uses
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %vector.ph1366
  %index1369 = phi i64 [ 0, %vector.ph1366 ], [ %index.next1372, %vector.body1368 ] ; 3 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1369 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %wide.load1370 = load <4 x float>, ptr %i.kq, align 4
  %wide.load1371 = load <4 x float>, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index1369 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store <4 x float> %wide.load1370, ptr %i.ks, align 4
  store <4 x float> %wide.load1371, ptr %i.kt, align 4
  %index.next1372 = add nuw i64 %index1369, 8     ; 2 uses
  %i.ku = icmp eq i64 %index.next1372, %n.vec1367
  br i1 %i.ku, label %middle.block1373, label %vector.body1368, !llvm.loop !1002

middle.block1373:                                 ; preds = %vector.body1368
  %cmp.n1374 = icmp eq i64 %n.vec1367, %wide.trip.count975
  br i1 %cmp.n1374, label %._crit_edge754, label %.lr.ph753.preheader1572

.lr.ph753.preheader1572:                          ; preds = %.lr.ph753.preheader, %middle.block1373
  %indvars.iv972.ph = phi i64 [ 0, %.lr.ph753.preheader ], [ %n.vec1367, %middle.block1373 ] ; 3 uses
  %xtraiter1579 = and i64 %wide.trip.count975, 3  ; 2 uses
  %lcmp.mod1580.not = icmp eq i64 %xtraiter1579, 0
  br i1 %lcmp.mod1580.not, label %.lr.ph753.prol.loopexit, label %.lr.ph753.prol

.lr.ph753.prol:                                   ; preds = %.lr.ph753.preheader1572, %.lr.ph753.prol
  %indvars.iv972.prol = phi i64 [ %indvars.iv.next973.prol, %.lr.ph753.prol ], [ %indvars.iv972.ph, %.lr.ph753.preheader1572 ] ; 3 uses
  %prol.iter1581 = phi i64 [ %prol.iter1581.next, %.lr.ph753.prol ], [ 0, %.lr.ph753.preheader1572 ]
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv972.prol
  %i.kw = load float, ptr %i.kv, align 4
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv972.prol
  store float %i.kw, ptr %i.kx, align 4
  %indvars.iv.next973.prol = add nuw nsw i64 %indvars.iv972.prol, 1 ; 2 uses
  %prol.iter1581.next = add i64 %prol.iter1581, 1 ; 2 uses
  %prol.iter1581.cmp.not = icmp eq i64 %prol.iter1581.next, %xtraiter1579
  br i1 %prol.iter1581.cmp.not, label %.lr.ph753.prol.loopexit, label %.lr.ph753.prol, !llvm.loop !1003

.lr.ph753.prol.loopexit:                          ; preds = %.lr.ph753.prol, %.lr.ph753.preheader1572
  %indvars.iv972.unr = phi i64 [ %indvars.iv972.ph, %.lr.ph753.preheader1572 ], [ %indvars.iv.next973.prol, %.lr.ph753.prol ]
  %i.ky = sub nsw i64 %indvars.iv972.ph, %wide.trip.count975
  %i.kz = icmp ugt i64 %i.ky, -4
  br i1 %i.kz, label %._crit_edge754, label %.lr.ph753

.lr.ph753:                                        ; preds = %.lr.ph753.prol.loopexit, %.lr.ph753
  %indvars.iv972 = phi i64 [ %indvars.iv.next973.3, %.lr.ph753 ], [ %indvars.iv972.unr, %.lr.ph753.prol.loopexit ] ; 6 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv972
  %i.lb = load float, ptr %i.la, align 4
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv972
  store float %i.lb, ptr %i.lc, align 4
  %indvars.iv.next973 = add nuw nsw i64 %indvars.iv972, 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973
  %i.le = load float, ptr %i.ld, align 4
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973
  store float %i.le, ptr %i.lf, align 4
  %indvars.iv.next973.1 = add nuw nsw i64 %indvars.iv972, 2 ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973.1
  %i.lh = load float, ptr %i.lg, align 4
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973.1
  store float %i.lh, ptr %i.li, align 4
  %indvars.iv.next973.2 = add nuw nsw i64 %indvars.iv972, 3 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973.2
  %i.lk = load float, ptr %i.lj, align 4
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973.2
  store float %i.lk, ptr %i.ll, align 4
  %indvars.iv.next973.3 = add nuw nsw i64 %indvars.iv972, 4 ; 2 uses
  %exitcond976.not.3 = icmp eq i64 %indvars.iv.next973.3, %wide.trip.count975
  br i1 %exitcond976.not.3, label %._crit_edge754, label %.lr.ph753, !llvm.loop !1004

._crit_edge754:                                   ; preds = %.lr.ph753.prol.loopexit, %.lr.ph753, %middle.block1373, %.loopexit670
  %i.lm = icmp sgt i32 %i.k, 1                    ; 4 uses
  %i.ln = icmp sgt i32 %2, 0                      ; 2 uses
  %or.cond880 = and i1 %i.lm, %i.ln               ; 2 uses
  br i1 %or.cond880, label %.lr.ph759.preheader, label %._crit_edge766.split

.lr.ph759.preheader:                              ; preds = %._crit_edge754
  %i.lo = mul i32 %3, %1                          ; 2 uses
  %i.lp = add nsw i32 %2, -1                      ; 3 uses
  %i.lq = mul i32 %0, %i.lp
  %i.lr = sext i32 %0 to i64                      ; 6 uses
  %i.ls = xor i32 %2, -1
  %i.lt = mul i32 %0, %i.ls
  %i.lu = add i32 %i.lo, %i.lt
  %scevgep1379 = getelementptr i8, ptr %5, i64 4
  %i.lv = zext i32 %i.lp to i64
  %i.lw = shl nuw nsw i64 %i.lv, 2
  %i.lx = add nuw nsw i64 %i.lw, 8                ; 4 uses
  %scevgep1381 = getelementptr i8, ptr %5, i64 %i.lx
  %scevgep1383 = getelementptr i8, ptr %5, i64 4
  %i.ly = xor i32 %2, -1
  %i.lz = add i32 %i.lo, %i.ly
  %scevgep1385 = getelementptr i8, ptr %5, i64 %i.lx
  %scevgep1387 = getelementptr i8, ptr %7, i64 4
  %scevgep1389 = getelementptr i8, ptr %7, i64 %i.lx
  %scevgep1391 = getelementptr i8, ptr %7, i64 4
  %scevgep1393 = getelementptr i8, ptr %7, i64 %i.lx
  %i.ma = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1415 = icmp ugt i32 %2, 7
  %ident.check1377.not = icmp eq i32 %0, 1
  %or.cond1563 = and i1 %min.iters.check1415, %ident.check1377.not
  %n.vec1417 = and i64 %i.ma, 2147483644          ; 5 uses
  %i.mb = trunc nuw nsw i64 %n.vec1417 to i32
  %cmp.n1426 = icmp eq i64 %n.vec1417, %i.ma
  br label %.lr.ph759

.lr.ph759:                                        ; preds = %.lr.ph759.preheader, %._crit_edge760
  %indvar = phi i32 [ 0, %.lr.ph759.preheader ], [ %indvar.next, %._crit_edge760 ] ; 3 uses
  %indvars.iv981 = phi i32 [ %i.lu, %.lr.ph759.preheader ], [ %indvars.iv.next982, %._crit_edge760 ] ; 2 uses
  %indvars.iv977 = phi i32 [ %i.lq, %.lr.ph759.preheader ], [ %indvars.iv.next978, %._crit_edge760 ] ; 2 uses
  %.5555763 = phi i32 [ 1, %.lr.ph759.preheader ], [ %i.od, %._crit_edge760 ]
  %i.mc = sext i32 %indvars.iv977 to i64          ; 4 uses
  %i.md = sext i32 %indvars.iv981 to i64          ; 4 uses
  br i1 %or.cond1563, label %vector.memcheck1378, label %scalar.ph1414.preheader

vector.memcheck1378:                              ; preds = %.lr.ph759
  %i.me = mul i32 %2, %indvar
  %i.mf = add i32 %i.lp, %i.me
  %i.mg = sext i32 %i.mf to i64
  %i.mh = shl nsw i64 %i.mg, 2                    ; 4 uses
  %scevgep1394 = getelementptr i8, ptr %scevgep1393, i64 %i.mh ; 2 uses
  %scevgep1392 = getelementptr i8, ptr %scevgep1391, i64 %i.mh ; 2 uses
  %i.mi = mul i32 %2, %indvar
  %i.mj = sub i32 %i.lz, %i.mi
  %i.mk = sext i32 %i.mj to i64
  %i.ml = shl nsw i64 %i.mk, 2                    ; 4 uses
  %scevgep1390 = getelementptr i8, ptr %scevgep1389, i64 %i.ml ; 2 uses
  %scevgep1388 = getelementptr i8, ptr %scevgep1387, i64 %i.ml ; 2 uses
  %scevgep1386 = getelementptr i8, ptr %scevgep1385, i64 %i.ml ; 3 uses
  %scevgep1384 = getelementptr i8, ptr %scevgep1383, i64 %i.ml ; 3 uses
  %scevgep1382 = getelementptr i8, ptr %scevgep1381, i64 %i.mh ; 3 uses
  %scevgep1380 = getelementptr i8, ptr %scevgep1379, i64 %i.mh ; 3 uses
  %bound01395 = icmp ult ptr %scevgep1380, %scevgep1386
  %bound11396 = icmp ult ptr %scevgep1384, %scevgep1382
  %found.conflict1397 = and i1 %bound01395, %bound11396
  %bound01398 = icmp ult ptr %scevgep1380, %scevgep1390
  %bound11399 = icmp ult ptr %scevgep1388, %scevgep1382
  %found.conflict1400 = and i1 %bound01398, %bound11399
  %conflict.rdx1401 = or i1 %found.conflict1397, %found.conflict1400
  %bound01402 = icmp ult ptr %scevgep1380, %scevgep1394
  %bound11403 = icmp ult ptr %scevgep1392, %scevgep1382
  %found.conflict1404 = and i1 %bound01402, %bound11403
  %conflict.rdx1405 = or i1 %conflict.rdx1401, %found.conflict1404
  %bound01406 = icmp ult ptr %scevgep1384, %scevgep1390
  %bound11407 = icmp ult ptr %scevgep1388, %scevgep1386
  %found.conflict1408 = and i1 %bound01406, %bound11407
  %conflict.rdx1409 = or i1 %conflict.rdx1405, %found.conflict1408
  %bound01410 = icmp ult ptr %scevgep1384, %scevgep1394
  %bound11411 = icmp ult ptr %scevgep1392, %scevgep1386
  %found.conflict1412 = and i1 %bound01410, %bound11411
  %conflict.rdx1413 = or i1 %conflict.rdx1409, %found.conflict1412
  br i1 %conflict.rdx1413, label %scalar.ph1414.preheader, label %vector.ph1416

vector.ph1416:                                    ; preds = %vector.memcheck1378
  %i.mm = add nsw i64 %n.vec1417, %i.md
  %i.mn = add nsw i64 %n.vec1417, %i.mc
  %invariant.op1611 = add i64 %i.mc, 1
  %invariant.op1613 = add i64 %i.md, 1
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.body1418, %vector.ph1416
  %index1419 = phi i64 [ 0, %vector.ph1416 ], [ %index.next1424, %vector.body1418 ] ; 3 uses
  %.reass1612 = add i64 %index1419, %invariant.op1611 ; 2 uses
  %.reass1614 = add i64 %index1419, %invariant.op1613 ; 2 uses
  %i.mo = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1612
  %wide.load1420 = load <4 x float>, ptr %i.mo, align 4, !alias.scope !1005 ; 2 uses
  %i.mp = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1614
  %wide.load1421 = load <4 x float>, ptr %i.mp, align 4, !alias.scope !1008 ; 2 uses
  %i.mq = fadd <4 x float> %wide.load1420, %wide.load1421
  %i.mr = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1612
  store <4 x float> %i.mq, ptr %i.mr, align 4, !alias.scope !1010, !noalias !1012
  %i.ms = fsub <4 x float> %wide.load1421, %wide.load1420
  %i.mt = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1614
  store <4 x float> %i.ms, ptr %i.mt, align 4, !alias.scope !1014, !noalias !1015
  %index.next1424 = add nuw i64 %index1419, 4     ; 2 uses
  %i.mu = icmp eq i64 %index.next1424, %n.vec1417
  br i1 %i.mu, label %middle.block1425, label %vector.body1418, !llvm.loop !1016

middle.block1425:                                 ; preds = %vector.body1418
  br i1 %cmp.n1426, label %._crit_edge760, label %scalar.ph1414.preheader

scalar.ph1414.preheader:                          ; preds = %vector.memcheck1378, %.lr.ph759, %middle.block1425
  %indvars.iv983.ph = phi i64 [ %i.md, %vector.memcheck1378 ], [ %i.md, %.lr.ph759 ], [ %i.mm, %middle.block1425 ] ; 2 uses
  %indvars.iv979.ph = phi i64 [ %i.mc, %vector.memcheck1378 ], [ %i.mc, %.lr.ph759 ], [ %i.mn, %middle.block1425 ] ; 2 uses
  %.5563757.ph = phi i32 [ 0, %vector.memcheck1378 ], [ 0, %.lr.ph759 ], [ %i.mb, %middle.block1425 ] ; 4 uses
  %i.mv = sub i32 %2, %.5563757.ph
  %.neg = add i32 %.5563757.ph, 1
  %xtraiter1582 = and i32 %i.mv, 1
  %lcmp.mod1583.not = icmp eq i32 %xtraiter1582, 0
  br i1 %lcmp.mod1583.not, label %scalar.ph1414.prol.loopexit, label %scalar.ph1414.prol

scalar.ph1414.prol:                               ; preds = %scalar.ph1414.preheader
  %indvars.iv.next980.prol = add nsw i64 %indvars.iv979.ph, %i.lr ; 3 uses
  %indvars.iv.next984.prol = add nsw i64 %indvars.iv983.ph, %i.lr ; 3 uses
  %i.mw = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next980.prol ; 2 uses
  %i.mx = load float, ptr %i.mw, align 4
  %i.my = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next984.prol ; 2 uses
  %i.mz = load float, ptr %i.my, align 4
  %i.na = fadd float %i.mx, %i.mz
  %i.nb = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next980.prol
  store float %i.na, ptr %i.nb, align 4
  %i.nc = load float, ptr %i.my, align 4
  %i.nd = load float, ptr %i.mw, align 4
  %i.ne = fsub float %i.nc, %i.nd
  %i.nf = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next984.prol
  store float %i.ne, ptr %i.nf, align 4
  %i.ng = add nuw nsw i32 %.5563757.ph, 1
  br label %scalar.ph1414.prol.loopexit

scalar.ph1414.prol.loopexit:                      ; preds = %scalar.ph1414.prol, %scalar.ph1414.preheader
  %indvars.iv983.unr = phi i64 [ %indvars.iv983.ph, %scalar.ph1414.preheader ], [ %indvars.iv.next984.prol, %scalar.ph1414.prol ]
  %indvars.iv979.unr = phi i64 [ %indvars.iv979.ph, %scalar.ph1414.preheader ], [ %indvars.iv.next980.prol, %scalar.ph1414.prol ]
  %.5563757.unr = phi i32 [ %.5563757.ph, %scalar.ph1414.preheader ], [ %i.ng, %scalar.ph1414.prol ]
  %i.nh = icmp eq i32 %2, %.neg
  br i1 %i.nh, label %._crit_edge760, label %scalar.ph1414

scalar.ph1414:                                    ; preds = %scalar.ph1414.prol.loopexit, %scalar.ph1414
  %indvars.iv983 = phi i64 [ %indvars.iv.next984.1, %scalar.ph1414 ], [ %indvars.iv983.unr, %scalar.ph1414.prol.loopexit ]
  %indvars.iv979 = phi i64 [ %indvars.iv.next980.1, %scalar.ph1414 ], [ %indvars.iv979.unr, %scalar.ph1414.prol.loopexit ]
  %.5563757 = phi i32 [ %i.oc, %scalar.ph1414 ], [ %.5563757.unr, %scalar.ph1414.prol.loopexit ]
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, %i.lr ; 3 uses
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, %i.lr ; 3 uses
  %i.ni = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next980 ; 2 uses
  %i.nj = load float, ptr %i.ni, align 4
  %i.nk = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next984 ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4
  %i.nm = fadd float %i.nj, %i.nl
  %i.nn = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next980
  store float %i.nm, ptr %i.nn, align 4
  %i.no = load float, ptr %i.nk, align 4
  %i.np = load float, ptr %i.ni, align 4
  %i.nq = fsub float %i.no, %i.np
  %i.nr = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next984
  store float %i.nq, ptr %i.nr, align 4
  %indvars.iv.next980.1 = add nsw i64 %indvars.iv.next980, %i.lr ; 3 uses
  %indvars.iv.next984.1 = add nsw i64 %indvars.iv.next984, %i.lr ; 3 uses
  %i.ns = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next980.1 ; 2 uses
  %i.nt = load float, ptr %i.ns, align 4
  %i.nu = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next984.1 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4
  %i.nw = fadd float %i.nt, %i.nv
  %i.nx = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next980.1
  store float %i.nw, ptr %i.nx, align 4
  %i.ny = load float, ptr %i.nu, align 4
  %i.nz = load float, ptr %i.ns, align 4
  %i.oa = fsub float %i.ny, %i.nz
  %i.ob = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next984.1
  store float %i.oa, ptr %i.ob, align 4
  %i.oc = add nuw nsw i32 %.5563757, 2            ; 2 uses
  %exitcond988.not.1 = icmp eq i32 %i.oc, %2
  br i1 %exitcond988.not.1, label %._crit_edge760, label %scalar.ph1414, !llvm.loop !1017

._crit_edge760:                                   ; preds = %scalar.ph1414.prol.loopexit, %scalar.ph1414, %middle.block1425
  %i.od = add nuw nsw i32 %.5555763, 1            ; 2 uses
  %indvars.iv.next978 = add i32 %indvars.iv977, %i.n
  %indvars.iv.next982 = sub i32 %indvars.iv981, %i.n
  %exitcond989.not = icmp eq i32 %i.od, %i.k
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond989.not, label %._crit_edge766.split, label %.lr.ph759, !llvm.loop !1018

._crit_edge766.split:                             ; preds = %._crit_edge760, %._crit_edge754
  %i.oe = add i32 %1, -1                          ; 4 uses
  br i1 %i.lm, label %.lr.ph795.a, label %._crit_edge804.split

.lr.ph795.a:                                      ; preds = %._crit_edge766.split
  %10 = mul i32 %3, %i.oe                         ; 2 uses
  %.not = icmp eq i32 %i.k, 2
  %11 = icmp eq i32 %3, 0
  %12 = sext i32 %3 to i64                        ; 5 uses
  %13 = sext i32 %10 to i64                       ; 5 uses
  %14 = add i32 %1, -2
  %15 = mul i32 %3, %14
  %16 = shl i32 %3, 1
  %wide.trip.count1013 = zext i32 %3 to i64       ; 10 uses
  %brmerge884 = or i1 %.not, %11
  %i.of = add i32 %3, -1
  %i.og = zext i32 %i.of to i64
  %i.oh = shl nuw nsw i64 %i.og, 2
  %i.oi = add nuw nsw i64 %i.oh, 4                ; 4 uses
  %scevgep1432 = getelementptr i8, ptr %8, i64 %i.oi
  %scevgep1435 = getelementptr i8, ptr %8, i64 %i.oi
  %scevgep1438 = getelementptr i8, ptr %6, i64 %i.oi
  %scevgep1441 = getelementptr i8, ptr %6, i64 %i.oi
  %i.oj = shl nsw i64 %13, 2                      ; 2 uses
  %i.ok = add i64 %i.oj, %i.a
  %i.ol = shl nsw i64 %12, 2                      ; 2 uses
  %i.om = add i64 %i.ol, %i.a
  %i.on = sub i64 %i.b, %i.om
  %i.oo = sub i64 %i.b, %i.a
  %i.op = add i64 %i.oj, %i.a
  %i.oq = sub i64 %i.b, %i.op
  %i.or = add i64 %i.ol, %i.a
  %i.os = sub i64 %i.b, %i.or
  %i.ot = sub i64 %i.b, %i.a
  %i.ou = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ov = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ow = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ox = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> zeroinitializer
  %min.iters.check1497 = icmp ult i32 %3, 8
  %invariant.op1631 = sub i64 %i.b, %i.ok
  %invariant.op1633 = add i64 %i.on, -1
  %invariant.op1635 = add i64 %i.oo, -1
  %invariant.op1637 = add i64 %i.oq, -1
  %invariant.op1639 = add i64 %i.os, -1
  %invariant.op1641 = add i64 %i.ot, -1
  %n.vec1499 = and i64 %wide.trip.count1013, 2147483644 ; 7 uses
  %i.oy = add nsw i64 %n.vec1499, %13
  %i.oz = add nuw nsw i64 %n.vec1499, %12
  %invariant.gep1615 = getelementptr [4 x i8], ptr %6, i64 %12
  %invariant.gep1619 = getelementptr [4 x i8], ptr %6, i64 %13
  %cmp.n1511 = icmp eq i64 %n.vec1499, %wide.trip.count1013
  %min.iters.check1463 = icmp ult i32 %3, 8
  %n.vec1465 = and i64 %wide.trip.count1013, 2147483644 ; 7 uses
  %i.pa = trunc nuw nsw i64 %n.vec1465 to i32
  %cmp.n1476 = icmp eq i64 %n.vec1465, %wide.trip.count1013
  br label %bb.e

.preheader667:                                    ; preds = %._crit_edge788.split
  br i1 %i.ko, label %.lr.ph799.preheader, label %._crit_edge804.split

.lr.ph799.preheader:                              ; preds = %.preheader667
  %wide.trip.count1046 = zext nneg i32 %3 to i64
  %i.pb = shl nuw nsw i64 %wide.trip.count1013, 2 ; 2 uses
  %scevgep1518 = getelementptr i8, ptr %8, i64 %i.pb
  %scevgep1520 = getelementptr i8, ptr %6, i64 %i.pb
  %min.iters.check1526 = icmp ult i32 %3, 8
  %n.vec1528 = and i64 %wide.trip.count1013, 2147483640 ; 4 uses
  %cmp.n1537 = icmp eq i64 %n.vec1528, %wide.trip.count1013
  %xtraiter1585 = and i64 %wide.trip.count1013, 1
  %lcmp.mod1586.not = icmp eq i64 %xtraiter1585, 0
  %i.pc = add nsw i64 %wide.trip.count1013, -1
  br label %.lr.ph799

bb.e:                                             ; preds = %.lr.ph795.a, %._crit_edge788.split
  %indvars.iv1000 = phi i32 [ %10, %.lr.ph795.a ], [ %indvars.iv.next1001, %._crit_edge788.split ] ; 4 uses
  %indvars.iv992 = phi i32 [ %3, %.lr.ph795.a ], [ %indvars.iv.next993, %._crit_edge788.split ] ; 4 uses
  %.0569793 = phi i32 [ 1, %.lr.ph795.a ], [ %i.rw, %._crit_edge788.split ]
  %i.pd = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph795.a ], [ %i.pp, %._crit_edge788.split ] ; 2 uses
  %17 = sext i32 %indvars.iv1000 to i64
  %18 = shl nsw i64 %17, 2                        ; 4 uses
  %19 = sext i32 %indvars.iv992 to i64
  %20 = shl nsw i64 %19, 2                        ; 4 uses
  %i.pe = sext i32 %indvars.iv992 to i64
  %i.pf = shl nsw i64 %i.pe, 2                    ; 2 uses
  %scevgep1431 = getelementptr i8, ptr %8, i64 %i.pf ; 3 uses
  %scevgep1433 = getelementptr i8, ptr %scevgep1432, i64 %i.pf ; 3 uses
  %i.pg = sext i32 %indvars.iv1000 to i64
  %i.ph = shl nsw i64 %i.pg, 2                    ; 2 uses
  %scevgep1434 = getelementptr i8, ptr %8, i64 %i.ph ; 3 uses
  %scevgep1436 = getelementptr i8, ptr %scevgep1435, i64 %i.ph ; 3 uses
  %i.pi = sext i32 %indvars.iv1000 to i64         ; 8 uses
  %i.pj = sext i32 %indvars.iv992 to i64          ; 8 uses
  %i.pk = fmul <2 x float> %i.pd, %i.ov           ; 2 uses
  %i.pl = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pm = fmul <2 x float> %i.pl, %i.ox           ; 2 uses
  %i.pn = fadd <2 x float> %i.pk, %i.pm           ; 4 uses
  %i.po = fsub <2 x float> %i.pk, %i.pm           ; 4 uses
  %i.pp = shufflevector <2 x float> %i.pn, <2 x float> %i.po, <2 x i32> <i32 0, i32 3>
  br i1 %i.ko, label %.lr.ph773.preheader, label %._crit_edge788.split

.lr.ph773.preheader:                              ; preds = %bb.e
  br i1 %min.iters.check1497, label %.lr.ph773.preheader1571, label %vector.memcheck1482

vector.memcheck1482:                              ; preds = %.lr.ph773.preheader
  %i.pq = sub nsw i64 %20, %18
  %diff.check1483 = icmp ugt i64 %i.pq, -16
  %.reass1632 = add i64 %20, %invariant.op1631
  %diff.check1484 = icmp ugt i64 %.reass1632, -16
  %conflict.rdx1485 = or i1 %diff.check1483, %diff.check1484
  %.reass1634 = add i64 %20, %invariant.op1633
  %diff.check1486 = icmp ult i64 %.reass1634, 15
  %conflict.rdx1487 = or i1 %conflict.rdx1485, %diff.check1486
  %.reass1636 = add i64 %20, %invariant.op1635
  %diff.check1488 = icmp ult i64 %.reass1636, 15
  %conflict.rdx1489 = or i1 %conflict.rdx1487, %diff.check1488
  %.reass1638 = add i64 %18, %invariant.op1637
  %diff.check1490 = icmp ult i64 %.reass1638, 15
  %conflict.rdx1491 = or i1 %conflict.rdx1489, %diff.check1490
  %.reass1640 = add i64 %18, %invariant.op1639
  %diff.check1492 = icmp ult i64 %.reass1640, 15
  %conflict.rdx1493 = or i1 %conflict.rdx1491, %diff.check1492
  %.reass1642 = add i64 %18, %invariant.op1641
  %diff.check1494 = icmp ult i64 %.reass1642, 15
  %conflict.rdx1495 = or i1 %conflict.rdx1493, %diff.check1494
  br i1 %conflict.rdx1495, label %.lr.ph773.preheader1571, label %vector.ph1498

vector.ph1498:                                    ; preds = %vector.memcheck1482
  %i.pr = add nsw i64 %n.vec1499, %i.pi
  %i.ps = add nsw i64 %n.vec1499, %i.pj
  %broadcast.splat1501 = shufflevector <2 x float> %i.po, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat1503 = shufflevector <2 x float> %i.pn, <2 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1617 = getelementptr [4 x i8], ptr %8, i64 %i.pj
  %invariant.gep1621 = getelementptr [4 x i8], ptr %8, i64 %i.pi
  br label %vector.body1504

vector.body1504:                                  ; preds = %vector.body1504, %vector.ph1498
  %index1505 = phi i64 [ 0, %vector.ph1498 ], [ %index.next1509, %vector.body1504 ] ; 6 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index1505
  %wide.load1506 = load <4 x float>, ptr %i.pt, align 4
  %gep1616 = getelementptr [4 x i8], ptr %invariant.gep1615, i64 %index1505
  %wide.load1507 = load <4 x float>, ptr %gep1616, align 4
  %i.pu = fmul <4 x float> %broadcast.splat1501, %wide.load1507
  %i.pv = fadd <4 x float> %wide.load1506, %i.pu
  %gep1618 = getelementptr [4 x i8], ptr %invariant.gep1617, i64 %index1505
  store <4 x float> %i.pv, ptr %gep1618, align 4
  %gep1620 = getelementptr [4 x i8], ptr %invariant.gep1619, i64 %index1505
  %wide.load1508 = load <4 x float>, ptr %gep1620, align 4
  %i.pw = fmul <4 x float> %broadcast.splat1503, %wide.load1508
  %gep1622 = getelementptr [4 x i8], ptr %invariant.gep1621, i64 %index1505
  store <4 x float> %i.pw, ptr %gep1622, align 4
  %index.next1509 = add nuw i64 %index1505, 4     ; 2 uses
  %i.px = icmp eq i64 %index.next1509, %n.vec1499
  br i1 %i.px, label %middle.block1510, label %vector.body1504, !llvm.loop !1019

middle.block1510:                                 ; preds = %vector.body1504
  br i1 %cmp.n1511, label %.preheader668, label %.lr.ph773.preheader1571

.lr.ph773.preheader1571:                          ; preds = %vector.memcheck1482, %.lr.ph773.preheader, %middle.block1510
  %indvars.iv1002.ph = phi i64 [ %i.pi, %vector.memcheck1482 ], [ %i.pi, %.lr.ph773.preheader ], [ %i.pr, %middle.block1510 ]
  %indvars.iv998.ph = phi i64 [ %13, %vector.memcheck1482 ], [ %13, %.lr.ph773.preheader ], [ %i.oy, %middle.block1510 ]
  %indvars.iv996.ph = phi i64 [ %12, %vector.memcheck1482 ], [ %12, %.lr.ph773.preheader ], [ %i.oz, %middle.block1510 ]
  %indvars.iv994.ph = phi i64 [ %i.pj, %vector.memcheck1482 ], [ %i.pj, %.lr.ph773.preheader ], [ %i.ps, %middle.block1510 ]
  %indvars.iv990.ph = phi i64 [ 0, %vector.memcheck1482 ], [ 0, %.lr.ph773.preheader ], [ %n.vec1499, %middle.block1510 ]
  %i.py = extractelement <2 x float> %i.po, i64 1
  %i.pz = extractelement <2 x float> %i.pn, i64 0
  br label %.lr.ph773

.preheader668:                                    ; preds = %.lr.ph773, %middle.block1510
  %i.qa = extractelement <2 x float> %i.pn, i64 0 ; 3 uses
  %i.qb = extractelement <2 x float> %i.po, i64 1 ; 3 uses
  br i1 %brmerge884, label %._crit_edge788.split, label %.lr.ph780.preheader

.lr.ph780.preheader:                              ; preds = %.preheader668
  %bound01443 = icmp ult ptr %scevgep1431, %scevgep1436
  %bound11444 = icmp ult ptr %scevgep1434, %scevgep1433
  %found.conflict1445 = and i1 %bound01443, %bound11444
  %i.qc = add nsw i64 %n.vec1465, %i.pj
  %i.qd = add nsw i64 %n.vec1465, %i.pi
  %invariant.gep1625 = getelementptr [4 x i8], ptr %8, i64 %i.pj
  %invariant.gep1629 = getelementptr [4 x i8], ptr %8, i64 %i.pi
  br label %.lr.ph780

.lr.ph773:                                        ; preds = %.lr.ph773.preheader1571, %.lr.ph773
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %.lr.ph773 ], [ %indvars.iv1002.ph, %.lr.ph773.preheader1571 ] ; 2 uses
  %indvars.iv998 = phi i64 [ %indvars.iv.next999, %.lr.ph773 ], [ %indvars.iv998.ph, %.lr.ph773.preheader1571 ] ; 2 uses
  %indvars.iv996 = phi i64 [ %indvars.iv.next997, %.lr.ph773 ], [ %indvars.iv996.ph, %.lr.ph773.preheader1571 ] ; 2 uses
  %indvars.iv994 = phi i64 [ %indvars.iv.next995, %.lr.ph773 ], [ %indvars.iv994.ph, %.lr.ph773.preheader1571 ] ; 2 uses
  %indvars.iv990 = phi i64 [ %indvars.iv.next991, %.lr.ph773 ], [ %indvars.iv990.ph, %.lr.ph773.preheader1571 ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv990
  %i.qf = load float, ptr %i.qe, align 4
  %indvars.iv.next997 = add nuw nsw i64 %indvars.iv996, 1
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv996
  %i.qh = load float, ptr %i.qg, align 4
  %i.qi = fmul float %i.py, %i.qh
  %i.qj = fadd float %i.qf, %i.qi
  %indvars.iv.next995 = add nsw i64 %indvars.iv994, 1
  %i.qk = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv994
  store float %i.qj, ptr %i.qk, align 4
  %indvars.iv.next999 = add nsw i64 %indvars.iv998, 1
  %i.ql = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv998
  %i.qm = load float, ptr %i.ql, align 4
  %i.qn = fmul float %i.pz, %i.qm
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, 1
  %i.qo = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1002
  store float %i.qn, ptr %i.qo, align 4
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 1 ; 2 uses
  %exitcond1014.not = icmp eq i64 %indvars.iv.next991, %wide.trip.count1013
  br i1 %exitcond1014.not, label %.preheader668, label %.lr.ph773, !llvm.loop !1020

.lr.ph780:                                        ; preds = %.lr.ph780.preheader, %._crit_edge781
  %indvars.iv1019 = phi i32 [ %indvars.iv.next1020, %._crit_edge781 ], [ %16, %.lr.ph780.preheader ] ; 3 uses
  %indvars.iv1015 = phi i32 [ %indvars.iv.next1016, %._crit_edge781 ], [ %15, %.lr.ph780.preheader ] ; 3 uses
  %.6556786 = phi i32 [ %i.rv, %._crit_edge781 ], [ 2, %.lr.ph780.preheader ]
  %.0598785 = phi float [ %i.qt, %._crit_edge781 ], [ %i.qb, %.lr.ph780.preheader ] ; 2 uses
  %.0600784 = phi float [ %i.qw, %._crit_edge781 ], [ %i.qa, %.lr.ph780.preheader ] ; 2 uses
  %i.qp = sext i32 %indvars.iv1015 to i64         ; 4 uses
  %i.qq = sext i32 %indvars.iv1019 to i64         ; 4 uses
  %i.qr = fmul float %i.qb, %.0598785
  %i.qs = fmul float %i.qa, %.0600784
  %i.qt = fsub float %i.qr, %i.qs                 ; 3 uses
  %i.qu = fmul float %i.qb, %.0600784
  %i.qv = fmul float %i.qa, %.0598785
  %i.qw = fadd float %i.qu, %i.qv                 ; 3 uses
  br i1 %min.iters.check1463, label %scalar.ph1462.preheader, label %vector.memcheck1430

vector.memcheck1430:                              ; preds = %.lr.ph780
  %i.qx = sext i32 %indvars.iv1019 to i64
  %i.qy = shl nsw i64 %i.qx, 2                    ; 2 uses
  %scevgep1442 = getelementptr i8, ptr %scevgep1441, i64 %i.qy ; 2 uses
  %scevgep1440 = getelementptr i8, ptr %6, i64 %i.qy ; 2 uses
  %i.qz = sext i32 %indvars.iv1015 to i64
  %i.ra = shl nsw i64 %i.qz, 2                    ; 2 uses
  %scevgep1439 = getelementptr i8, ptr %scevgep1438, i64 %i.ra ; 2 uses
  %scevgep1437 = getelementptr i8, ptr %6, i64 %i.ra ; 2 uses
  %bound01446 = icmp ult ptr %scevgep1431, %scevgep1439
  %bound11447 = icmp ult ptr %scevgep1437, %scevgep1433
  %found.conflict1448 = and i1 %bound01446, %bound11447
  %conflict.rdx1449 = or i1 %found.conflict1445, %found.conflict1448
  %bound01450 = icmp ult ptr %scevgep1431, %scevgep1442
  %bound11451 = icmp ult ptr %scevgep1440, %scevgep1433
  %found.conflict1452 = and i1 %bound01450, %bound11451
  %conflict.rdx1453 = or i1 %conflict.rdx1449, %found.conflict1452
  %bound01454 = icmp ult ptr %scevgep1434, %scevgep1439
  %bound11455 = icmp ult ptr %scevgep1437, %scevgep1436
  %found.conflict1456 = and i1 %bound01454, %bound11455
  %conflict.rdx1457 = or i1 %conflict.rdx1453, %found.conflict1456
  %bound01458 = icmp ult ptr %scevgep1434, %scevgep1442
  %bound11459 = icmp ult ptr %scevgep1440, %scevgep1436
  %found.conflict1460 = and i1 %bound01458, %bound11459
  %conflict.rdx1461 = or i1 %conflict.rdx1457, %found.conflict1460
  br i1 %conflict.rdx1461, label %scalar.ph1462.preheader, label %vector.ph1464

vector.ph1464:                                    ; preds = %vector.memcheck1430
  %i.rb = add nsw i64 %n.vec1465, %i.qq
  %i.rc = add nsw i64 %n.vec1465, %i.qp
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.qt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1466 = insertelement <4 x float> poison, float %i.qw, i64 0
  %broadcast.splat1467 = shufflevector <4 x float> %broadcast.splatinsert1466, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1623 = getelementptr [4 x i8], ptr %6, i64 %i.qq
  %invariant.gep1627 = getelementptr [4 x i8], ptr %6, i64 %i.qp
  br label %vector.body1468

vector.body1468:                                  ; preds = %vector.body1468, %vector.ph1464
  %index1469 = phi i64 [ 0, %vector.ph1464 ], [ %index.next1474, %vector.body1468 ] ; 5 uses
  %gep1624 = getelementptr [4 x i8], ptr %invariant.gep1623, i64 %index1469
  %wide.load1470 = load <4 x float>, ptr %gep1624, align 4, !alias.scope !1021
  %i.rd = fmul <4 x float> %broadcast.splat, %wide.load1470
  %gep1626 = getelementptr [4 x i8], ptr %invariant.gep1625, i64 %index1469 ; 2 uses
  %wide.load1471 = load <4 x float>, ptr %gep1626, align 4, !alias.scope !1024, !noalias !1026
  %i.re = fadd <4 x float> %wide.load1471, %i.rd
  store <4 x float> %i.re, ptr %gep1626, align 4, !alias.scope !1024, !noalias !1026
  %gep1628 = getelementptr [4 x i8], ptr %invariant.gep1627, i64 %index1469
  %wide.load1472 = load <4 x float>, ptr %gep1628, align 4, !alias.scope !1029
  %i.rf = fmul <4 x float> %broadcast.splat1467, %wide.load1472
  %gep1630 = getelementptr [4 x i8], ptr %invariant.gep1629, i64 %index1469 ; 2 uses
  %wide.load1473 = load <4 x float>, ptr %gep1630, align 4, !alias.scope !1030, !noalias !1031
  %i.rg = fadd <4 x float> %wide.load1473, %i.rf
  store <4 x float> %i.rg, ptr %gep1630, align 4, !alias.scope !1030, !noalias !1031
  %index.next1474 = add nuw i64 %index1469, 4     ; 2 uses
  %i.rh = icmp eq i64 %index.next1474, %n.vec1465
  br i1 %i.rh, label %middle.block1475, label %vector.body1468, !llvm.loop !1032

middle.block1475:                                 ; preds = %vector.body1468
  br i1 %cmp.n1476, label %._crit_edge781, label %scalar.ph1462.preheader

scalar.ph1462.preheader:                          ; preds = %vector.memcheck1430, %.lr.ph780, %middle.block1475
  %indvars.iv1025.ph = phi i64 [ %i.pj, %vector.memcheck1430 ], [ %i.pj, %.lr.ph780 ], [ %i.qc, %middle.block1475 ]
  %indvars.iv1023.ph = phi i64 [ %i.pi, %vector.memcheck1430 ], [ %i.pi, %.lr.ph780 ], [ %i.qd, %middle.block1475 ]
  %indvars.iv1021.ph = phi i64 [ %i.qq, %vector.memcheck1430 ], [ %i.qq, %.lr.ph780 ], [ %i.rb, %middle.block1475 ]
  %indvars.iv1017.ph = phi i64 [ %i.qp, %vector.memcheck1430 ], [ %i.qp, %.lr.ph780 ], [ %i.rc, %middle.block1475 ]
  %.3573778.ph = phi i32 [ 0, %vector.memcheck1430 ], [ 0, %.lr.ph780 ], [ %i.pa, %middle.block1475 ]
  br label %scalar.ph1462

scalar.ph1462:                                    ; preds = %scalar.ph1462.preheader, %scalar.ph1462
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %scalar.ph1462 ], [ %indvars.iv1025.ph, %scalar.ph1462.preheader ] ; 2 uses
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %scalar.ph1462 ], [ %indvars.iv1023.ph, %scalar.ph1462.preheader ] ; 2 uses
  %indvars.iv1021 = phi i64 [ %indvars.iv.next1022, %scalar.ph1462 ], [ %indvars.iv1021.ph, %scalar.ph1462.preheader ] ; 2 uses
  %indvars.iv1017 = phi i64 [ %indvars.iv.next1018, %scalar.ph1462 ], [ %indvars.iv1017.ph, %scalar.ph1462.preheader ] ; 2 uses
  %.3573778 = phi i32 [ %i.ru, %scalar.ph1462 ], [ %.3573778.ph, %scalar.ph1462.preheader ]
  %indvars.iv.next1022 = add nsw i64 %indvars.iv1021, 1
  %i.ri = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1021
  %i.rj = load float, ptr %i.ri, align 4
  %i.rk = fmul float %i.qt, %i.rj
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, 1
  %i.rl = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1025 ; 2 uses
  %i.rm = load float, ptr %i.rl, align 4
  %i.rn = fadd float %i.rm, %i.rk
  store float %i.rn, ptr %i.rl, align 4
  %indvars.iv.next1018 = add nsw i64 %indvars.iv1017, 1
  %i.ro = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1017
  %i.rp = load float, ptr %i.ro, align 4
  %i.rq = fmul float %i.qw, %i.rp
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, 1
  %i.rr = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1023 ; 2 uses
  %i.rs = load float, ptr %i.rr, align 4
  %i.rt = fadd float %i.rs, %i.rq
  store float %i.rt, ptr %i.rr, align 4
  %i.ru = add nuw nsw i32 %.3573778, 1            ; 2 uses
  %exitcond1034.not = icmp eq i32 %i.ru, %3
  br i1 %exitcond1034.not, label %._crit_edge781, label %scalar.ph1462, !llvm.loop !1033

._crit_edge781:                                   ; preds = %scalar.ph1462, %middle.block1475
  %i.rv = add nuw nsw i32 %.6556786, 1            ; 2 uses
  %indvars.iv.next1016 = sub i32 %indvars.iv1015, %3
  %indvars.iv.next1020 = add i32 %indvars.iv1019, %3
  %exitcond1035.not = icmp eq i32 %i.rv, %i.k
  br i1 %exitcond1035.not, label %._crit_edge788.split, label %.lr.ph780, !llvm.loop !1034

._crit_edge788.split:                             ; preds = %._crit_edge781, %bb.e, %.preheader668
  %i.rw = add nuw nsw i32 %.0569793, 1            ; 2 uses
  %indvars.iv.next993 = add i32 %indvars.iv992, %3
  %indvars.iv.next1001 = sub i32 %indvars.iv1000, %3
  %exitcond1036.not = icmp eq i32 %i.rw, %i.k
  br i1 %exitcond1036.not, label %.preheader667, label %bb.e, !llvm.loop !1035

.lr.ph799:                                        ; preds = %.lr.ph799.preheader, %._crit_edge800
  %indvars.iv1039 = phi i32 [ %3, %.lr.ph799.preheader ], [ %indvars.iv.next1040, %._crit_edge800 ] ; 3 uses
  %.7557802 = phi i32 [ 1, %.lr.ph799.preheader ], [ %i.sz, %._crit_edge800 ]
  %i.rx = zext i32 %indvars.iv1039 to i64         ; 4 uses
  br i1 %min.iters.check1526, label %scalar.ph1525.preheader, label %vector.memcheck1517

vector.memcheck1517:                              ; preds = %.lr.ph799
  %i.ry = zext i32 %indvars.iv1039 to i64
  %i.rz = shl nuw nsw i64 %i.ry, 2                ; 2 uses
  %scevgep1521 = getelementptr i8, ptr %scevgep1520, i64 %i.rz
  %scevgep1519 = getelementptr nuw i8, ptr %6, i64 %i.rz
  %bound01522 = icmp ult ptr %8, %scevgep1521
  %bound11523 = icmp ult ptr %scevgep1519, %scevgep1518
  %found.conflict1524 = and i1 %bound01522, %bound11523
  br i1 %found.conflict1524, label %scalar.ph1525.preheader, label %vector.ph1527

vector.ph1527:                                    ; preds = %vector.memcheck1517
  %i.sa = add nuw nsw i64 %n.vec1528, %i.rx
  %invariant.gep1643 = getelementptr [4 x i8], ptr %6, i64 %i.rx
  br label %vector.body1529

vector.body1529:                                  ; preds = %vector.body1529, %vector.ph1527
  %index1530 = phi i64 [ 0, %vector.ph1527 ], [ %index.next1535, %vector.body1529 ] ; 3 uses
  %gep1644 = getelementptr [4 x i8], ptr %invariant.gep1643, i64 %index1530 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %gep1644, i64 16
  %wide.load1531 = load <4 x float>, ptr %gep1644, align 4, !alias.scope !1036
  %wide.load1532 = load <4 x float>, ptr %i.sb, align 4, !alias.scope !1036
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1530 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 2 uses
  %wide.load1533 = load <4 x float>, ptr %i.sc, align 4, !alias.scope !1039, !noalias !1036
  %wide.load1534 = load <4 x float>, ptr %i.sd, align 4, !alias.scope !1039, !noalias !1036
  %i.se = fadd <4 x float> %wide.load1531, %wide.load1533
  %i.sf = fadd <4 x float> %wide.load1532, %wide.load1534
  store <4 x float> %i.se, ptr %i.sc, align 4, !alias.scope !1039, !noalias !1036
  store <4 x float> %i.sf, ptr %i.sd, align 4, !alias.scope !1039, !noalias !1036
  %index.next1535 = add nuw i64 %index1530, 8     ; 2 uses
  %i.sg = icmp eq i64 %index.next1535, %n.vec1528
  br i1 %i.sg, label %middle.block1536, label %vector.body1529, !llvm.loop !1041

middle.block1536:                                 ; preds = %vector.body1529
  br i1 %cmp.n1537, label %._crit_edge800, label %scalar.ph1525.preheader

scalar.ph1525.preheader:                          ; preds = %vector.memcheck1517, %.lr.ph799, %middle.block1536
  %indvars.iv1041.ph = phi i64 [ %i.rx, %vector.memcheck1517 ], [ %i.rx, %.lr.ph799 ], [ %i.sa, %middle.block1536 ] ; 3 uses
  %indvars.iv1037.ph = phi i64 [ 0, %vector.memcheck1517 ], [ 0, %.lr.ph799 ], [ %n.vec1528, %middle.block1536 ] ; 4 uses
  br i1 %lcmp.mod1586.not, label %scalar.ph1525.prol.loopexit, label %scalar.ph1525.prol

scalar.ph1525.prol:                               ; preds = %scalar.ph1525.preheader
  %indvars.iv.next1042.prol = add nuw nsw i64 %indvars.iv1041.ph, 1
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041.ph
  %i.si = load float, ptr %i.sh, align 4
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037.ph ; 2 uses
  %i.sk = load float, ptr %i.sj, align 4
  %i.sl = fadd float %i.si, %i.sk
  store float %i.sl, ptr %i.sj, align 4
  %indvars.iv.next1038.prol = or disjoint i64 %indvars.iv1037.ph, 1
  br label %scalar.ph1525.prol.loopexit

scalar.ph1525.prol.loopexit:                      ; preds = %scalar.ph1525.prol, %scalar.ph1525.preheader
  %indvars.iv1041.unr = phi i64 [ %indvars.iv1041.ph, %scalar.ph1525.preheader ], [ %indvars.iv.next1042.prol, %scalar.ph1525.prol ]
  %indvars.iv1037.unr = phi i64 [ %indvars.iv1037.ph, %scalar.ph1525.preheader ], [ %indvars.iv.next1038.prol, %scalar.ph1525.prol ]
  %i.sm = icmp eq i64 %indvars.iv1037.ph, %i.pc
  br i1 %i.sm, label %._crit_edge800, label %scalar.ph1525

scalar.ph1525:                                    ; preds = %scalar.ph1525.prol.loopexit, %scalar.ph1525
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042.1, %scalar.ph1525 ], [ %indvars.iv1041.unr, %scalar.ph1525.prol.loopexit ] ; 3 uses
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038.1, %scalar.ph1525 ], [ %indvars.iv1037.unr, %scalar.ph1525.prol.loopexit ] ; 3 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041
  %i.so = load float, ptr %i.sn, align 4
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037 ; 2 uses
  %i.sq = load float, ptr %i.sp, align 4
  %i.sr = fadd float %i.so, %i.sq
  store float %i.sr, ptr %i.sp, align 4
  %indvars.iv.next1042.1 = add nuw nsw i64 %indvars.iv1041, 2
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1041
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  %i.su = load float, ptr %i.st, align 4
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1037
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 4 ; 2 uses
  %i.sx = load float, ptr %i.sw, align 4
  %i.sy = fadd float %i.su, %i.sx
  store float %i.sy, ptr %i.sw, align 4
  %indvars.iv.next1038.1 = add nuw nsw i64 %indvars.iv1037, 2 ; 2 uses
  %exitcond1047.not.1 = icmp eq i64 %indvars.iv.next1038.1, %wide.trip.count1046
  br i1 %exitcond1047.not.1, label %._crit_edge800, label %scalar.ph1525, !llvm.loop !1042

._crit_edge800:                                   ; preds = %scalar.ph1525.prol.loopexit, %scalar.ph1525, %middle.block1536
  %i.sz = add nuw nsw i32 %.7557802, 1            ; 2 uses
  %indvars.iv.next1040 = add i32 %indvars.iv1039, %3
  %exitcond1048.not = icmp eq i32 %i.sz, %i.k
  br i1 %exitcond1048.not, label %._crit_edge804.split, label %.lr.ph799, !llvm.loop !1043

._crit_edge804.split:                             ; preds = %._crit_edge800, %._crit_edge766.split, %.preheader667
  %i.ta = icmp slt i32 %0, %2
  %i.tb = icmp sgt i32 %0, 0
  %or.cond886 = and i1 %i.tb, %i.ln               ; 2 uses
  br i1 %i.ta, label %.preheader662, label %.preheader665

.preheader665:                                    ; preds = %._crit_edge804.split
  br i1 %or.cond886, label %.preheader664.preheader, label %.loopexit663

.preheader664.preheader:                          ; preds = %.preheader665
  %i.tc = zext nneg i32 %0 to i64                 ; 4 uses
  %i.td = sext i32 %i.o to i64                    ; 2 uses
  %i.te = add nsw i32 %2, -1
  %i.tf = zext i32 %i.te to i64                   ; 2 uses
  %i.tg = mul nsw i64 %i.td, %i.tf
  %i.th = zext i32 %i.l to i64                    ; 2 uses
  %i.ti = add i64 %i.tg, %i.th
  %i.tj = shl i64 %i.ti, 2
  %i.tk = getelementptr i8, ptr %4, i64 %i.tj
  %scevgep1541 = getelementptr i8, ptr %i.tk, i64 4
  %i.tl = mul nuw nsw i64 %i.tc, %i.tf
  %i.tm = add nuw i64 %i.tl, %i.th
  %i.tn = shl i64 %i.tm, 2
  %i.to = getelementptr i8, ptr %7, i64 %i.tn
  %scevgep1542 = getelementptr i8, ptr %i.to, i64 4
  %min.iters.check1547 = icmp ult i32 %0, 8
  %bound01543 = icmp ult ptr %4, %scevgep1542
  %bound11544 = icmp ult ptr %7, %scevgep1541
  %found.conflict1545 = and i1 %bound01543, %bound11544
  %stride.check = icmp slt i32 %i.o, 0
  %i.tp = or i1 %found.conflict1545, %stride.check
  %n.vec1549 = and i64 %i.tc, 2147483640          ; 5 uses
  %i.tq = trunc nuw nsw i64 %n.vec1549 to i32
  %cmp.n1556 = icmp eq i64 %n.vec1549, %i.tc
  br label %.preheader664

.preheader662:                                    ; preds = %._crit_edge804.split
  br i1 %or.cond886, label %.preheader661.preheader, label %.loopexit663

.preheader661.preheader:                          ; preds = %.preheader662
  %i.tr = zext nneg i32 %0 to i64                 ; 6 uses
  %i.ts = sext i32 %i.o to i64                    ; 5 uses
  %i.tt = add nsw i32 %2, -1
  %xtraiter1592 = and i32 %2, 3                   ; 3 uses
  %i.tu = icmp ult i32 %i.tt, 3
  %unroll_iter1596 = and i32 %2, 2147483644
  %lcmp.mod1594.not = icmp eq i32 %xtraiter1592, 0
  %lcmp.mod1595 = icmp ne i32 %xtraiter1592, 0
  br label %.preheader661

.preheader664:                                    ; preds = %.preheader664.preheader, %._crit_edge809
  %indvars.iv1054 = phi i64 [ 0, %.preheader664.preheader ], [ %indvars.iv.next1055, %._crit_edge809 ] ; 4 uses
  %indvars.iv1050 = phi i64 [ 0, %.preheader664.preheader ], [ %indvars.iv.next1051, %._crit_edge809 ] ; 4 uses
  %.6564812 = phi i32 [ 0, %.preheader664.preheader ], [ %i.ve, %._crit_edge809 ]
  %brmerge1646 = select i1 %min.iters.check1547, i1 true, i1 %i.tp
  br i1 %brmerge1646, label %scalar.ph1546.preheader, label %vector.ph1548

vector.ph1548:                                    ; preds = %.preheader664
  %i.tv = add i64 %indvars.iv1054, %n.vec1549
  %i.tw = add nuw i64 %indvars.iv1050, %n.vec1549
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1050
  %i.ty = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1054
  br label %vector.body1550

vector.body1550:                                  ; preds = %vector.body1550, %vector.ph1548
  %index1551 = phi i64 [ 0, %vector.ph1548 ], [ %index.next1554, %vector.body1550 ] ; 3 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %index1551 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %wide.load1552 = load <4 x float>, ptr %i.tz, align 4, !alias.scope !1044
  %wide.load1553 = load <4 x float>, ptr %i.ua, align 4, !alias.scope !1044
  %i.ub = getelementptr [4 x i8], ptr %i.ty, i64 %index1551 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  store <4 x float> %wide.load1552, ptr %i.ub, align 4, !alias.scope !1047, !noalias !1044
  store <4 x float> %wide.load1553, ptr %i.uc, align 4, !alias.scope !1047, !noalias !1044
  %index.next1554 = add nuw i64 %index1551, 8     ; 2 uses
  %i.ud = icmp eq i64 %index.next1554, %n.vec1549
  br i1 %i.ud, label %middle.block1555, label %vector.body1550, !llvm.loop !1049

middle.block1555:                                 ; preds = %vector.body1550
  br i1 %cmp.n1556, label %._crit_edge809, label %scalar.ph1546.preheader

scalar.ph1546.preheader:                          ; preds = %.preheader664, %middle.block1555
  %indvars.iv1056.ph = phi i64 [ %i.tv, %middle.block1555 ], [ %indvars.iv1054, %.preheader664 ] ; 2 uses
  %indvars.iv1052.ph = phi i64 [ %i.tw, %middle.block1555 ], [ %indvars.iv1050, %.preheader664 ] ; 2 uses
  %.4807.ph = phi i32 [ %i.tq, %middle.block1555 ], [ 0, %.preheader664 ] ; 4 uses
  %i.ue = sub i32 %0, %.4807.ph
  %xtraiter1588 = and i32 %i.ue, 3                ; 2 uses
  %lcmp.mod1589.not = icmp eq i32 %xtraiter1588, 0
  br i1 %lcmp.mod1589.not, label %scalar.ph1546.prol.loopexit, label %scalar.ph1546.prol

scalar.ph1546.prol:                               ; preds = %scalar.ph1546.preheader, %scalar.ph1546.prol
  %indvars.iv1056.prol = phi i64 [ %indvars.iv.next1057.prol, %scalar.ph1546.prol ], [ %indvars.iv1056.ph, %scalar.ph1546.preheader ] ; 2 uses
  %indvars.iv1052.prol = phi i64 [ %indvars.iv.next1053.prol, %scalar.ph1546.prol ], [ %indvars.iv1052.ph, %scalar.ph1546.preheader ] ; 2 uses
  %.4807.prol = phi i32 [ %i.ui, %scalar.ph1546.prol ], [ %.4807.ph, %scalar.ph1546.preheader ]
  %prol.iter1590 = phi i32 [ %prol.iter1590.next, %scalar.ph1546.prol ], [ 0, %scalar.ph1546.preheader ]
  %indvars.iv.next1053.prol = add nuw nsw i64 %indvars.iv1052.prol, 1 ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052.prol
  %i.ug = load float, ptr %i.uf, align 4
  %indvars.iv.next1057.prol = add nsw i64 %indvars.iv1056.prol, 1 ; 2 uses
  %i.uh = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1056.prol
  store float %i.ug, ptr %i.uh, align 4
  %i.ui = add nuw nsw i32 %.4807.prol, 1          ; 2 uses
  %prol.iter1590.next = add i32 %prol.iter1590, 1 ; 2 uses
  %prol.iter1590.cmp.not = icmp eq i32 %prol.iter1590.next, %xtraiter1588
  br i1 %prol.iter1590.cmp.not, label %scalar.ph1546.prol.loopexit, label %scalar.ph1546.prol, !llvm.loop !1050

scalar.ph1546.prol.loopexit:                      ; preds = %scalar.ph1546.prol, %scalar.ph1546.preheader
  %indvars.iv1056.unr = phi i64 [ %indvars.iv1056.ph, %scalar.ph1546.preheader ], [ %indvars.iv.next1057.prol, %scalar.ph1546.prol ]
  %indvars.iv1052.unr = phi i64 [ %indvars.iv1052.ph, %scalar.ph1546.preheader ], [ %indvars.iv.next1053.prol, %scalar.ph1546.prol ]
  %.4807.unr = phi i32 [ %.4807.ph, %scalar.ph1546.preheader ], [ %i.ui, %scalar.ph1546.prol ]
  %i.uj = sub i32 %.4807.ph, %0
  %i.uk = icmp ugt i32 %i.uj, -4
  br i1 %i.uk, label %._crit_edge809, label %scalar.ph1546

scalar.ph1546:                                    ; preds = %scalar.ph1546.prol.loopexit, %scalar.ph1546
  %indvars.iv1056 = phi i64 [ %indvars.iv.next1057.3, %scalar.ph1546 ], [ %indvars.iv1056.unr, %scalar.ph1546.prol.loopexit ] ; 5 uses
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053.3, %scalar.ph1546 ], [ %indvars.iv1052.unr, %scalar.ph1546.prol.loopexit ] ; 5 uses
  %.4807 = phi i32 [ %i.vd, %scalar.ph1546 ], [ %.4807.unr, %scalar.ph1546.prol.loopexit ]
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.um = load float, ptr %i.ul, align 4
  %i.un = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1056
  store float %i.um, ptr %i.un, align 4
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  %i.uq = load float, ptr %i.up, align 4
  %i.ur = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.us = getelementptr i8, ptr %i.ur, i64 4
  store float %i.uq, ptr %i.us, align 4
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load float, ptr %i.uu, align 4
  %i.uw = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.ux = getelementptr i8, ptr %i.uw, i64 8
  store float %i.uv, ptr %i.ux, align 4
  %indvars.iv.next1053.3 = add nuw nsw i64 %indvars.iv1052, 4
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1052
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 12
  %i.va = load float, ptr %i.uz, align 4
  %indvars.iv.next1057.3 = add nsw i64 %indvars.iv1056, 4
  %i.vb = getelementptr [4 x i8], ptr %4, i64 %indvars.iv1056
  %i.vc = getelementptr i8, ptr %i.vb, i64 12
  store float %i.va, ptr %i.vc, align 4
  %i.vd = add nuw nsw i32 %.4807, 4               ; 2 uses
  %exitcond1061.not.3 = icmp eq i32 %i.vd, %0
  br i1 %exitcond1061.not.3, label %._crit_edge809, label %scalar.ph1546, !llvm.loop !1051

._crit_edge809:                                   ; preds = %scalar.ph1546.prol.loopexit, %scalar.ph1546, %middle.block1555
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, %i.tc
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, %i.td
  %i.ve = add nuw nsw i32 %.6564812, 1            ; 2 uses
  %exitcond1065.not = icmp eq i32 %i.ve, %2
  br i1 %exitcond1065.not, label %.loopexit663, label %.preheader664, !llvm.loop !1052

.preheader661:                                    ; preds = %.preheader661.preheader, %._crit_edge817
  %indvars.iv1066 = phi i64 [ 0, %.preheader661.preheader ], [ %indvars.iv.next1067, %._crit_edge817 ] ; 5 uses
  br i1 %i.tu, label %.epil.preheader1591, label %.preheader661.new

.preheader661.new:                                ; preds = %.preheader661, %.preheader661.new
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071.3, %.preheader661.new ], [ %indvars.iv1066, %.preheader661 ] ; 2 uses
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069.3, %.preheader661.new ], [ %indvars.iv1066, %.preheader661 ] ; 2 uses
  %niter1597 = phi i32 [ %niter1597.next.3, %.preheader661.new ], [ 0, %.preheader661 ]
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv1068
  %i.vg = load float, ptr %i.vf, align 4
  %i.vh = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv1070
  store float %i.vg, ptr %i.vh, align 4
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, %i.tr ; 2 uses
  %indvars.iv.next1071 = add nsw i64 %indvars.iv1070, %i.ts ; 2 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069
  %i.vj = load float, ptr %i.vi, align 4
  %i.vk = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071
  store float %i.vj, ptr %i.vk, align 4
  %indvars.iv.next1069.1 = add nuw nsw i64 %indvars.iv.next1069, %i.tr ; 2 uses
  %indvars.iv.next1071.1 = add nsw i64 %indvars.iv.next1071, %i.ts ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069.1
  %i.vm = load float, ptr %i.vl, align 4
  %i.vn = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071.1
  store float %i.vm, ptr %i.vn, align 4
  %indvars.iv.next1069.2 = add nuw nsw i64 %indvars.iv.next1069.1, %i.tr ; 2 uses
  %indvars.iv.next1071.2 = add nsw i64 %indvars.iv.next1071.1, %i.ts ; 2 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next1069.2
  %i.vp = load float, ptr %i.vo, align 4
  %i.vq = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next1071.2
  store float %i.vp, ptr %i.vq, align 4
  %indvars.iv.next1069.3 = add nuw nsw i64 %indvars.iv.next1069.2, %i.tr ; 2 uses
  %indvars.iv.next1071.3 = add nsw i64 %indvars.iv.next1071.2, %i.ts ; 2 uses
  %niter1597.next.3 = add nuw nsw i32 %niter1597, 4 ; 2 uses
  %niter1597.ncmp.3 = icmp eq i32 %niter1597.next.3, %unroll_iter1596
  br i1 %niter1597.ncmp.3, label %._crit_edge817.unr-lcssa, label %.preheader661.new, !llvm.loop !1053

._crit_edge817.unr-lcssa:                         ; preds = %.preheader661.new
  br i1 %lcmp.mod1594.not, label %._crit_edge817, label %.epil.preheader1591

.epil.preheader1591:                              ; preds = %._crit_edge817.unr-lcssa, %.preheader661
  %indvars.iv1070.epil.init = phi i64 [ %indvars.iv1066, %.preheader661 ], [ %indvars.iv.next1071.3, %._crit_edge817.unr-lcssa ]
  %indvars.iv1068.epil.init = phi i64 [ %indvars.iv1066, %.preheader661 ], [ %indvars.iv.next1069.3, %._crit_edge817.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1595)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader1591
  %indvars.iv1070.epil = phi i64 [ %indvars.iv1070.epil.init, %.epil.preheader1591 ], [ %indvars.iv.next1071.epil, %bb.f ] ; 2 uses
  %indvars.iv1068.epil = phi i64 [ %indvars.iv1068.epil.init, %.epil.preheader1591 ], [ %indvars.iv.next1069.epil, %bb.f ] ; 2 uses
end_hunk_0
begin_hunk_1_@dradbg:bb.a
  br i1 %i.nl, label %scalar.ph1380.preheader, label %vector.memcheck1292

vector.memcheck1292:                              ; preds = %vector.scevcheck1282
  br i1 %op.rdx1776, label %scalar.ph1380.preheader, label %vector.ph1382

vector.ph1382:                                    ; preds = %vector.memcheck1292
  %i.nm = add i64 %indvars.iv953, %i.jz
  %i.nn = add i64 %indvars.iv947, %i.jz
  %i.no = add i64 %indvars.iv939, %i.jz
  %i.np = sub i64 %indvars.iv939, %i.ka
  %i.nq = getelementptr [4 x i8], ptr %4, i64 %indvars.iv939
  %i.nr = getelementptr [4 x i8], ptr %7, i64 %indvars.iv953
  %i.ns = getelementptr [4 x i8], ptr %7, i64 %indvars.iv947
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %vector.ph1382
  %index1385 = phi i64 [ 0, %vector.ph1382 ], [ %index.next1400, %vector.body1384 ] ; 3 uses
  %i.nt = shl i64 %index1385, 1                   ; 3 uses
  %i.nu = shl i64 %index1385, 1
  %i.nv = sub i64 %indvars.iv939, %i.nu
  %i.nw = getelementptr [4 x i8], ptr %i.nq, i64 %i.nt
  %i.nx = getelementptr i8, ptr %i.nw, i64 4      ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.nx, align 4, !alias.scope !1187, !noalias !1190 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1386 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ny = getelementptr [4 x i8], ptr %4, i64 %i.nv
  %i.nz = getelementptr i8, ptr %i.ny, i64 -36    ; 2 uses
  %wide.vec1387 = load <8 x float>, ptr %i.nz, align 4, !alias.scope !1193, !noalias !1190 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec1387, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse1390 = shufflevector <8 x float> %wide.vec1387, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.oa = fadd <4 x float> %strided.vec, %reverse
  %i.ob = getelementptr [4 x i8], ptr %i.nr, i64 %i.nt
  %i.oc = getelementptr i8, ptr %i.ob, i64 4
  %wide.vec1391 = load <8 x float>, ptr %i.nx, align 4, !alias.scope !1187, !noalias !1190 ; 2 uses
  %strided.vec1392 = shufflevector <8 x float> %wide.vec1391, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1393 = shufflevector <8 x float> %wide.vec1391, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1394 = load <8 x float>, ptr %i.nz, align 4, !alias.scope !1193, !noalias !1190 ; 2 uses
  %reverse1396 = shufflevector <8 x float> %wide.vec1394, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse1398 = shufflevector <8 x float> %wide.vec1394, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.od = fsub <4 x float> %strided.vec1392, %reverse1396
  %i.oe = getelementptr [4 x i8], ptr %i.ns, i64 %i.nt
  %i.of = getelementptr i8, ptr %i.oe, i64 4
  %i.og = fsub <4 x float> %strided.vec1386, %reverse1390
  %interleaved.vec = shufflevector <4 x float> %i.oa, <4 x float> %i.og, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.oc, align 4
  %i.oh = fadd <4 x float> %strided.vec1393, %reverse1398
  %interleaved.vec1399 = shufflevector <4 x float> %i.od, <4 x float> %i.oh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1399, ptr %i.of, align 4
  %index.next1400 = add nuw i64 %index1385, 4     ; 2 uses
  %i.oi = icmp eq i64 %index.next1400, %n.vec1383
  br i1 %i.oi, label %middle.block1401, label %vector.body1384, !llvm.loop !1195

middle.block1401:                                 ; preds = %vector.body1384
  br i1 %cmp.n1402, label %._crit_edge702, label %scalar.ph1380.preheader

scalar.ph1380.preheader:                          ; preds = %vector.memcheck1292, %vector.scevcheck1282, %.preheader662, %middle.block1401
  %indvars.iv955.ph = phi i64 [ %indvars.iv953, %vector.memcheck1292 ], [ %indvars.iv953, %vector.scevcheck1282 ], [ %indvars.iv953, %.preheader662 ], [ %i.nm, %middle.block1401 ]
  %indvars.iv949.ph = phi i64 [ %indvars.iv947, %vector.memcheck1292 ], [ %indvars.iv947, %vector.scevcheck1282 ], [ %indvars.iv947, %.preheader662 ], [ %i.nn, %middle.block1401 ]
  %indvars.iv943.ph = phi i64 [ %indvars.iv939, %vector.memcheck1292 ], [ %indvars.iv939, %vector.scevcheck1282 ], [ %indvars.iv939, %.preheader662 ], [ %i.no, %middle.block1401 ]
  %indvars.iv941.ph = phi i64 [ %indvars.iv939, %vector.memcheck1292 ], [ %indvars.iv939, %vector.scevcheck1282 ], [ %indvars.iv939, %.preheader662 ], [ %i.np, %middle.block1401 ]
  %.2700.ph = phi i32 [ 2, %vector.memcheck1292 ], [ 2, %vector.scevcheck1282 ], [ 2, %.preheader662 ], [ %i.kd, %middle.block1401 ]
  br label %scalar.ph1380

scalar.ph1380:                                    ; preds = %scalar.ph1380.preheader, %scalar.ph1380
  %indvars.iv955 = phi i64 [ %indvars.iv.next956, %scalar.ph1380 ], [ %indvars.iv955.ph, %scalar.ph1380.preheader ] ; 2 uses
  %indvars.iv949 = phi i64 [ %indvars.iv.next950, %scalar.ph1380 ], [ %indvars.iv949.ph, %scalar.ph1380.preheader ] ; 2 uses
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %scalar.ph1380 ], [ %indvars.iv943.ph, %scalar.ph1380.preheader ] ; 2 uses
  %indvars.iv941 = phi i64 [ %indvars.iv.next942, %scalar.ph1380 ], [ %indvars.iv941.ph, %scalar.ph1380.preheader ] ; 2 uses
  %.2700 = phi i32 [ %i.ph, %scalar.ph1380 ], [ %.2700.ph, %scalar.ph1380.preheader ]
  %indvars.iv.next956 = add nuw nsw i64 %indvars.iv955, 2 ; 2 uses
  %indvars.iv.next950 = add nsw i64 %indvars.iv949, 2 ; 2 uses
  %indvars.iv.next944 = add nsw i64 %indvars.iv943, 2 ; 2 uses
  %indvars.iv.next942 = add nsw i64 %indvars.iv941, -2 ; 2 uses
  %i.oj = getelementptr [4 x i8], ptr %4, i64 %indvars.iv943
  %i.ok = getelementptr i8, ptr %i.oj, i64 4      ; 2 uses
  %i.ol = load float, ptr %i.ok, align 4
  %i.om = getelementptr [4 x i8], ptr %4, i64 %indvars.iv941
  %i.on = getelementptr i8, ptr %i.om, i64 -12    ; 2 uses
  %i.oo = load float, ptr %i.on, align 4
  %i.op = fadd float %i.ol, %i.oo
  %i.oq = getelementptr [4 x i8], ptr %7, i64 %indvars.iv955
  %i.or = getelementptr i8, ptr %i.oq, i64 4
  store float %i.op, ptr %i.or, align 4
  %i.os = load float, ptr %i.ok, align 4
  %i.ot = load float, ptr %i.on, align 4
  %i.ou = fsub float %i.os, %i.ot
  %i.ov = getelementptr [4 x i8], ptr %7, i64 %indvars.iv949
  %i.ow = getelementptr i8, ptr %i.ov, i64 4
  store float %i.ou, ptr %i.ow, align 4
  %i.ox = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next944 ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4
  %i.oz = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next942 ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4
  %i.pb = fsub float %i.oy, %i.pa
  %i.pc = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next956
  store float %i.pb, ptr %i.pc, align 4
  %i.pd = load float, ptr %i.ox, align 4
  %i.pe = load float, ptr %i.oz, align 4
  %i.pf = fadd float %i.pd, %i.pe
  %i.pg = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next950
  store float %i.pf, ptr %i.pg, align 4
  %i.ph = add nuw nsw i32 %.2700, 2               ; 2 uses
  %i.pi = icmp slt i32 %i.ph, %0
  br i1 %i.pi, label %scalar.ph1380, label %._crit_edge702, !llvm.loop !1196

._crit_edge702:                                   ; preds = %scalar.ph1380, %middle.block1401
  %indvars.iv.next954 = add i64 %indvars.iv953, %i.ix
  %indvars.iv.next948 = add i64 %indvars.iv947, %i.ix
  %indvars.iv.next940 = add i64 %indvars.iv939, %i.iu
  %i.pj = add nuw nsw i32 %.3546706, 1            ; 2 uses
  %exitcond969.not = icmp eq i32 %i.pj, %2
  %indvar.next1284 = add i64 %indvar1283, 1
  br i1 %exitcond969.not, label %._crit_edge707, label %.preheader662, !llvm.loop !1197

._crit_edge707:                                   ; preds = %._crit_edge702
  %i.pk = add nuw nsw i32 %.1536711, 1            ; 2 uses
  %indvars.iv.next938 = add i32 %indvars.iv937, %i.du
  %indvars.iv.next946 = sub i32 %indvars.iv945, %i.d
  %indvars.iv.next952 = add i32 %indvars.iv951, %i.d
  %exitcond970.not = icmp eq i32 %i.pk, %i.o
  br i1 %exitcond970.not, label %.loopexit661, label %.preheader662.lr.ph, !llvm.loop !1198

.lr.ph728:                                        ; preds = %.lr.ph728.preheader, %._crit_edge729
  %indvars.iv989 = phi i32 [ %i.kn, %.lr.ph728.preheader ], [ %indvars.iv.next990, %._crit_edge729 ] ; 2 uses
  %indvars.iv983 = phi i32 [ %i.kl, %.lr.ph728.preheader ], [ %indvars.iv.next984, %._crit_edge729 ] ; 2 uses
  %indvars.iv977 = phi i32 [ %i.ki, %.lr.ph728.preheader ], [ %indvars.iv.next978, %._crit_edge729 ] ; 2 uses
  %indvars.iv971 = phi i32 [ %i.kg, %.lr.ph728.preheader ], [ %indvars.iv.next972, %._crit_edge729 ] ; 2 uses
  %.2537733 = phi i32 [ 1, %.lr.ph728.preheader ], [ %i.qm, %._crit_edge729 ]
  br label %.lr.ph720

.lr.ph720:                                        ; preds = %.lr.ph728, %._crit_edge721
  %indvars.iv991 = phi i32 [ %indvars.iv989, %.lr.ph728 ], [ %indvars.iv.next992, %._crit_edge721 ] ; 2 uses
  %indvars.iv985 = phi i32 [ %indvars.iv983, %.lr.ph728 ], [ %indvars.iv.next986, %._crit_edge721 ] ; 2 uses
  %indvars.iv979 = phi i32 [ %indvars.iv977, %.lr.ph728 ], [ %indvars.iv.next980, %._crit_edge721 ] ; 2 uses
  %indvars.iv973 = phi i32 [ %indvars.iv971, %.lr.ph728 ], [ %indvars.iv.next974, %._crit_edge721 ] ; 2 uses
  %.3726 = phi i32 [ 2, %.lr.ph728 ], [ %i.qk, %._crit_edge721 ]
  %i.pl = sext i32 %indvars.iv973 to i64
  %i.pm = sext i32 %indvars.iv979 to i64
  %i.pn = sext i32 %indvars.iv985 to i64
  %i.po = sext i32 %indvars.iv991 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph720, %bb.c
  %indvars.iv993 = phi i64 [ %i.po, %.lr.ph720 ], [ %indvars.iv.next994, %bb.c ] ; 2 uses
  %indvars.iv987 = phi i64 [ %i.pn, %.lr.ph720 ], [ %indvars.iv.next988, %bb.c ] ; 2 uses
  %indvars.iv981 = phi i64 [ %i.pm, %.lr.ph720 ], [ %indvars.iv.next982, %bb.c ] ; 2 uses
  %indvars.iv975 = phi i64 [ %i.pl, %.lr.ph720 ], [ %indvars.iv.next976, %bb.c ] ; 2 uses
  %.4547718 = phi i32 [ 0, %.lr.ph720 ], [ %i.qj, %bb.c ]
  %i.pp = getelementptr [4 x i8], ptr %4, i64 %indvars.iv981 ; 3 uses
  %i.pq = getelementptr i8, ptr %i.pp, i64 -4     ; 2 uses
  %i.pr = load float, ptr %i.pq, align 4
  %i.ps = getelementptr [4 x i8], ptr %4, i64 %indvars.iv975 ; 3 uses
  %i.pt = getelementptr i8, ptr %i.ps, i64 -4     ; 2 uses
  %i.pu = load float, ptr %i.pt, align 4
  %i.pv = fadd float %i.pr, %i.pu
  %i.pw = getelementptr [4 x i8], ptr %7, i64 %indvars.iv993 ; 2 uses
  %i.px = getelementptr i8, ptr %i.pw, i64 -4
  store float %i.pv, ptr %i.px, align 4
  %i.py = load float, ptr %i.pq, align 4
  %i.pz = load float, ptr %i.pt, align 4
  %i.qa = fsub float %i.py, %i.pz
  %i.qb = getelementptr [4 x i8], ptr %7, i64 %indvars.iv987 ; 2 uses
  %i.qc = getelementptr i8, ptr %i.qb, i64 -4
  store float %i.qa, ptr %i.qc, align 4
  %i.qd = load float, ptr %i.pp, align 4
  %i.qe = load float, ptr %i.ps, align 4
  %i.qf = fsub float %i.qd, %i.qe
  store float %i.qf, ptr %i.pw, align 4
  %i.qg = load float, ptr %i.pp, align 4
  %i.qh = load float, ptr %i.ps, align 4
  %i.qi = fadd float %i.qg, %i.qh
  store float %i.qi, ptr %i.qb, align 4
  %indvars.iv.next994 = add nsw i64 %indvars.iv993, %i.km
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, %i.km
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, %i.kh
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, %i.kh
  %i.qj = add nuw nsw i32 %.4547718, 1            ; 2 uses
  %exitcond1002.not = icmp eq i32 %i.qj, %2
  br i1 %exitcond1002.not, label %._crit_edge721, label %bb.c, !llvm.loop !1199

._crit_edge721:                                   ; preds = %bb.c
  %i.qk = add nuw nsw i32 %.3726, 2               ; 2 uses
  %i.ql = icmp slt i32 %i.qk, %0
  %indvars.iv.next974 = add i32 %indvars.iv973, -2
  %indvars.iv.next980 = add i32 %indvars.iv979, 2
  %indvars.iv.next986 = add i32 %indvars.iv985, 2
  %indvars.iv.next992 = add i32 %indvars.iv991, 2
  br i1 %i.ql, label %.lr.ph720, label %._crit_edge729, !llvm.loop !1200

._crit_edge729:                                   ; preds = %._crit_edge721
  %i.qm = add nuw nsw i32 %.2537733, 1            ; 2 uses
  %indvars.iv.next972 = add i32 %indvars.iv971, %i.du
  %indvars.iv.next978 = add i32 %indvars.iv977, %i.du
  %indvars.iv.next984 = sub i32 %indvars.iv983, %i.d
  %indvars.iv.next990 = add i32 %indvars.iv989, %i.d
  %exitcond1003.not = icmp eq i32 %i.qm, %i.o
  br i1 %exitcond1003.not, label %.loopexit661, label %.lr.ph728, !llvm.loop !1201

.loopexit661.thread:                              ; preds = %.lr.ph734, %.lr.ph712
  %i.qn = add i32 %1, -1
  br label %.lr.ph767.a

.loopexit661.thread1192:                          ; preds = %.preheader663, %.preheader660
  %i.qo = add i32 %1, -1
  br label %.preheader658.thread

.loopexit661:                                     ; preds = %._crit_edge707, %._crit_edge729, %._crit_edge695.split
  %i.qp = add i32 %1, -1                          ; 2 uses
  br i1 %i.dv, label %.lr.ph767.a, label %.preheader658.thread

.lr.ph767.a:                                      ; preds = %.loopexit661.thread, %.loopexit661
  %10 = phi i32 [ %i.qn, %.loopexit661.thread ], [ %i.qp, %.loopexit661 ] ; 5 uses
  %11 = mul i32 %3, %10                           ; 2 uses
  %12 = icmp sgt i32 %3, 0
  %.not = icmp eq i32 %i.o, 2
  %13 = icmp eq i32 %3, 0
  %14 = sext i32 %11 to i64                       ; 5 uses
  %15 = sext i32 %3 to i64                        ; 5 uses
  %16 = add i32 %1, -2
  %17 = mul i32 %3, %16
  %18 = shl i32 %3, 1
  %wide.trip.count1029 = zext i32 %3 to i64       ; 7 uses
  %brmerge870 = or i1 %.not, %13
  %i.qq = add i32 %3, -1
  %i.qr = zext i32 %i.qq to i64
  %i.qs = shl nuw nsw i64 %i.qr, 2
  %i.qt = add nuw nsw i64 %i.qs, 4                ; 4 uses
  %scevgep1410 = getelementptr i8, ptr %6, i64 %i.qt
  %scevgep1413 = getelementptr i8, ptr %6, i64 %i.qt
  %scevgep1416 = getelementptr i8, ptr %8, i64 %i.qt
  %scevgep1419 = getelementptr i8, ptr %8, i64 %i.qt
  %i.qu = shl nsw i64 %14, 2                      ; 2 uses
  %i.qv = add i64 %i.qu, %i.b
  %i.qw = shl nsw i64 %15, 2                      ; 2 uses
  %i.qx = add i64 %i.qw, %i.b
  %i.qy = sub i64 %i.a, %i.qx
  %i.qz = sub i64 %i.a, %i.b
  %i.ra = add i64 %i.qu, %i.b
  %i.rb = sub i64 %i.a, %i.ra
  %i.rc = add i64 %i.qw, %i.b
  %i.rd = sub i64 %i.a, %i.rc
  %i.re = sub i64 %i.a, %i.b
  %i.rf = insertelement <2 x float> poison, float %i.i, i64 0
  %i.rg = shufflevector <2 x float> %i.rf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rh = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ri = shufflevector <2 x float> %i.rh, <2 x float> poison, <2 x i32> zeroinitializer
  %min.iters.check1474 = icmp ult i32 %3, 8
  %invariant.op1830 = sub i64 %i.a, %i.qv
  %invariant.op1832 = add i64 %i.qy, -1
  %invariant.op1834 = add i64 %i.qz, -1
  %invariant.op1836 = add i64 %i.rb, -1
  %invariant.op1838 = add i64 %i.rd, -1
  %invariant.op1840 = add i64 %i.re, -1
  %n.vec1476 = and i64 %wide.trip.count1029, 2147483644 ; 7 uses
  %i.rj = add nuw nsw i64 %n.vec1476, %15
  %i.rk = add nsw i64 %n.vec1476, %14
  %invariant.gep1814 = getelementptr [4 x i8], ptr %8, i64 %15
  %invariant.gep1818 = getelementptr [4 x i8], ptr %8, i64 %14
  %cmp.n1488 = icmp eq i64 %n.vec1476, %wide.trip.count1029
  %min.iters.check1441 = icmp ult i32 %3, 8
  %n.vec1443 = and i64 %wide.trip.count1029, 2147483644 ; 7 uses
  %i.rl = trunc nuw nsw i64 %n.vec1443 to i32
  %cmp.n1454 = icmp eq i64 %n.vec1443, %wide.trip.count1029
  br label %bb.d

.preheader658.thread:                             ; preds = %.loopexit661, %.loopexit661.thread1192
  %.ph = phi i32 [ %i.qp, %.loopexit661 ], [ %i.qo, %.loopexit661.thread1192 ]
  %i.rm = icmp sgt i32 %3, 0
  br label %._crit_edge786.split

.preheader659:                                    ; preds = %._crit_edge760.split
  %i.rn = icmp sgt i32 %3, 0                      ; 3 uses
  %or.cond867 = and i1 %i.dv, %i.rn
  br i1 %or.cond867, label %.lr.ph771.preheader, label %.preheader658

.lr.ph771.preheader:                              ; preds = %.preheader659
  %wide.trip.count1062 = zext nneg i32 %3 to i64
  %min.iters.check1495 = icmp ult i32 %3, 8
  %n.vec1497 = and i64 %wide.trip.count1029, 2147483640 ; 4 uses
  %cmp.n1506 = icmp eq i64 %n.vec1497, %wide.trip.count1029
  br label %.lr.ph771

bb.d:                                             ; preds = %.lr.ph767.a, %._crit_edge760.split
  %indvars.iv1014 = phi i32 [ %3, %.lr.ph767.a ], [ %indvars.iv.next1015, %._crit_edge760.split ] ; 4 uses
  %indvars.iv1010 = phi i32 [ %11, %.lr.ph767.a ], [ %indvars.iv.next1011, %._crit_edge760.split ] ; 4 uses
  %.0554765 = phi i32 [ 1, %.lr.ph767.a ], [ %i.uh, %._crit_edge760.split ]
  %i.ro = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph767.a ], [ %i.sa, %._crit_edge760.split ] ; 2 uses
  %19 = sext i32 %indvars.iv1010 to i64
  %20 = shl nsw i64 %19, 2                        ; 4 uses
  %21 = sext i32 %indvars.iv1014 to i64
  %22 = shl nsw i64 %21, 2                        ; 4 uses
  %i.rp = sext i32 %indvars.iv1014 to i64
  %i.rq = shl nsw i64 %i.rp, 2                    ; 2 uses
  %scevgep1409 = getelementptr i8, ptr %6, i64 %i.rq ; 3 uses
  %scevgep1411 = getelementptr i8, ptr %scevgep1410, i64 %i.rq ; 3 uses
  %i.rr = sext i32 %indvars.iv1010 to i64
  %i.rs = shl nsw i64 %i.rr, 2                    ; 2 uses
  %scevgep1412 = getelementptr i8, ptr %6, i64 %i.rs ; 3 uses
  %scevgep1414 = getelementptr i8, ptr %scevgep1413, i64 %i.rs ; 3 uses
  %i.rt = sext i32 %indvars.iv1010 to i64         ; 8 uses
  %i.ru = sext i32 %indvars.iv1014 to i64         ; 8 uses
  %i.rv = fmul <2 x float> %i.ro, %i.rg           ; 2 uses
  %i.rw = shufflevector <2 x float> %i.ro, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rx = fmul <2 x float> %i.rw, %i.ri           ; 2 uses
  %i.ry = fadd <2 x float> %i.rv, %i.rx           ; 4 uses
  %i.rz = fsub <2 x float> %i.rv, %i.rx           ; 4 uses
  %i.sa = shufflevector <2 x float> %i.ry, <2 x float> %i.rz, <2 x i32> <i32 0, i32 3>
  br i1 %12, label %.lr.ph743.preheader, label %._crit_edge760.split

.lr.ph743.preheader:                              ; preds = %bb.d
  br i1 %min.iters.check1474, label %.lr.ph743.preheader1780, label %vector.memcheck1460

vector.memcheck1460:                              ; preds = %.lr.ph743.preheader
  %i.sb = sub nsw i64 %22, %20
  %diff.check = icmp ugt i64 %i.sb, -16
  %.reass1831 = add i64 %22, %invariant.op1830
  %diff.check1461 = icmp ugt i64 %.reass1831, -16
  %conflict.rdx1462 = or i1 %diff.check, %diff.check1461
  %.reass1833 = add i64 %22, %invariant.op1832
  %diff.check1463 = icmp ult i64 %.reass1833, 15
  %conflict.rdx1464 = or i1 %conflict.rdx1462, %diff.check1463
  %.reass1835 = add i64 %22, %invariant.op1834
  %diff.check1465 = icmp ult i64 %.reass1835, 15
  %conflict.rdx1466 = or i1 %conflict.rdx1464, %diff.check1465
  %.reass1837 = add i64 %20, %invariant.op1836
  %diff.check1467 = icmp ult i64 %.reass1837, 15
  %conflict.rdx1468 = or i1 %conflict.rdx1466, %diff.check1467
  %.reass1839 = add i64 %20, %invariant.op1838
  %diff.check1469 = icmp ult i64 %.reass1839, 15
  %conflict.rdx1470 = or i1 %conflict.rdx1468, %diff.check1469
  %.reass1841 = add i64 %20, %invariant.op1840
  %diff.check1471 = icmp ult i64 %.reass1841, 15
  %conflict.rdx1472 = or i1 %conflict.rdx1470, %diff.check1471
  br i1 %conflict.rdx1472, label %.lr.ph743.preheader1780, label %vector.ph1475

vector.ph1475:                                    ; preds = %vector.memcheck1460
  %i.sc = add nsw i64 %n.vec1476, %i.ru
  %i.sd = add nsw i64 %n.vec1476, %i.rt
  %broadcast.splat1478 = shufflevector <2 x float> %i.rz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat1480 = shufflevector <2 x float> %i.ry, <2 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1816 = getelementptr [4 x i8], ptr %6, i64 %i.ru
  %invariant.gep1820 = getelementptr [4 x i8], ptr %6, i64 %i.rt
  br label %vector.body1481

vector.body1481:                                  ; preds = %vector.body1481, %vector.ph1475
  %index1482 = phi i64 [ 0, %vector.ph1475 ], [ %index.next1486, %vector.body1481 ] ; 6 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1482
  %wide.load1483 = load <4 x float>, ptr %i.se, align 4
  %gep1815 = getelementptr [4 x i8], ptr %invariant.gep1814, i64 %index1482
  %wide.load1484 = load <4 x float>, ptr %gep1815, align 4
  %i.sf = fmul <4 x float> %broadcast.splat1478, %wide.load1484
  %i.sg = fadd <4 x float> %wide.load1483, %i.sf
  %gep1817 = getelementptr [4 x i8], ptr %invariant.gep1816, i64 %index1482
  store <4 x float> %i.sg, ptr %gep1817, align 4
  %gep1819 = getelementptr [4 x i8], ptr %invariant.gep1818, i64 %index1482
  %wide.load1485 = load <4 x float>, ptr %gep1819, align 4
  %i.sh = fmul <4 x float> %broadcast.splat1480, %wide.load1485
  %gep1821 = getelementptr [4 x i8], ptr %invariant.gep1820, i64 %index1482
  store <4 x float> %i.sh, ptr %gep1821, align 4
  %index.next1486 = add nuw i64 %index1482, 4     ; 2 uses
  %i.si = icmp eq i64 %index.next1486, %n.vec1476
  br i1 %i.si, label %middle.block1487, label %vector.body1481, !llvm.loop !1202

middle.block1487:                                 ; preds = %vector.body1481
  br i1 %cmp.n1488, label %._crit_edge744, label %.lr.ph743.preheader1780

.lr.ph743.preheader1780:                          ; preds = %vector.memcheck1460, %.lr.ph743.preheader, %middle.block1487
  %indvars.iv1016.ph = phi i64 [ %i.ru, %vector.memcheck1460 ], [ %i.ru, %.lr.ph743.preheader ], [ %i.sc, %middle.block1487 ]
  %indvars.iv1012.ph = phi i64 [ %i.rt, %vector.memcheck1460 ], [ %i.rt, %.lr.ph743.preheader ], [ %i.sd, %middle.block1487 ]
  %indvars.iv1008.ph = phi i64 [ 0, %vector.memcheck1460 ], [ 0, %.lr.ph743.preheader ], [ %n.vec1476, %middle.block1487 ]
  %indvars.iv1006.ph = phi i64 [ %15, %vector.memcheck1460 ], [ %15, %.lr.ph743.preheader ], [ %i.rj, %middle.block1487 ]
  %indvars.iv1004.ph = phi i64 [ %14, %vector.memcheck1460 ], [ %14, %.lr.ph743.preheader ], [ %i.rk, %middle.block1487 ]
  %i.sj = extractelement <2 x float> %i.rz, i64 1
  %i.sk = extractelement <2 x float> %i.ry, i64 0
  br label %.lr.ph743

.lr.ph743:                                        ; preds = %.lr.ph743.preheader1780, %.lr.ph743
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %.lr.ph743 ], [ %indvars.iv1016.ph, %.lr.ph743.preheader1780 ] ; 2 uses
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %.lr.ph743 ], [ %indvars.iv1012.ph, %.lr.ph743.preheader1780 ] ; 2 uses
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %.lr.ph743 ], [ %indvars.iv1008.ph, %.lr.ph743.preheader1780 ] ; 2 uses
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %.lr.ph743 ], [ %indvars.iv1006.ph, %.lr.ph743.preheader1780 ] ; 2 uses
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %.lr.ph743 ], [ %indvars.iv1004.ph, %.lr.ph743.preheader1780 ] ; 2 uses
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1 ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1008
  %i.sm = load float, ptr %i.sl, align 4
  %indvars.iv.next1007 = add nuw nsw i64 %indvars.iv1006, 1
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1006
  %i.so = load float, ptr %i.sn, align 4
  %i.sp = fmul float %i.sj, %i.so
  %i.sq = fadd float %i.sm, %i.sp
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, 1
  %i.sr = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1016
  store float %i.sq, ptr %i.sr, align 4
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, 1
  %i.ss = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1004
  %i.st = load float, ptr %i.ss, align 4
  %i.su = fmul float %i.sk, %i.st
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, 1
  %i.sv = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1012
  store float %i.su, ptr %i.sv, align 4
  %exitcond1030.not = icmp eq i64 %indvars.iv.next1009, %wide.trip.count1029
  br i1 %exitcond1030.not, label %._crit_edge744, label %.lr.ph743, !llvm.loop !1203

._crit_edge744:                                   ; preds = %.lr.ph743, %middle.block1487
  %i.sw = extractelement <2 x float> %i.ry, i64 0 ; 3 uses
  %i.sx = extractelement <2 x float> %i.rz, i64 1 ; 3 uses
  br i1 %brmerge870, label %._crit_edge760.split, label %.lr.ph751.preheader

.lr.ph751.preheader:                              ; preds = %._crit_edge744
  %bound01421 = icmp ult ptr %scevgep1409, %scevgep1414
  %bound11422 = icmp ult ptr %scevgep1412, %scevgep1411
  %found.conflict1423 = and i1 %bound01421, %bound11422
  %i.sy = add nsw i64 %n.vec1443, %i.ru
  %i.sz = add nsw i64 %n.vec1443, %i.rt
  %invariant.gep1824 = getelementptr [4 x i8], ptr %6, i64 %i.ru
  %invariant.gep1828 = getelementptr [4 x i8], ptr %6, i64 %i.rt
  br label %.lr.ph751

.lr.ph751:                                        ; preds = %.lr.ph751.preheader, %._crit_edge752
  %indvars.iv1035 = phi i32 [ %indvars.iv.next1036, %._crit_edge752 ], [ %18, %.lr.ph751.preheader ] ; 3 uses
  %indvars.iv1031 = phi i32 [ %indvars.iv.next1032, %._crit_edge752 ], [ %17, %.lr.ph751.preheader ] ; 3 uses
  %.3538757 = phi i32 [ %i.ug, %._crit_edge752 ], [ 2, %.lr.ph751.preheader ]
  %.0572756 = phi float [ %i.te, %._crit_edge752 ], [ %i.sx, %.lr.ph751.preheader ] ; 2 uses
  %.0574755 = phi float [ %i.th, %._crit_edge752 ], [ %i.sw, %.lr.ph751.preheader ] ; 2 uses
  %i.ta = sext i32 %indvars.iv1031 to i64         ; 4 uses
  %i.tb = sext i32 %indvars.iv1035 to i64         ; 4 uses
  %i.tc = fmul float %i.sx, %.0572756
  %i.td = fmul float %i.sw, %.0574755
  %i.te = fsub float %i.tc, %i.td                 ; 3 uses
  %i.tf = fmul float %i.sx, %.0574755
  %i.tg = fmul float %i.sw, %.0572756
  %i.th = fadd float %i.tf, %i.tg                 ; 3 uses
  br i1 %min.iters.check1441, label %scalar.ph1440.preheader, label %vector.memcheck1408

vector.memcheck1408:                              ; preds = %.lr.ph751
  %i.ti = sext i32 %indvars.iv1035 to i64
  %i.tj = shl nsw i64 %i.ti, 2                    ; 2 uses
  %scevgep1420 = getelementptr i8, ptr %scevgep1419, i64 %i.tj ; 2 uses
  %scevgep1418 = getelementptr i8, ptr %8, i64 %i.tj ; 2 uses
  %i.tk = sext i32 %indvars.iv1031 to i64
  %i.tl = shl nsw i64 %i.tk, 2                    ; 2 uses
  %scevgep1417 = getelementptr i8, ptr %scevgep1416, i64 %i.tl ; 2 uses
  %scevgep1415 = getelementptr i8, ptr %8, i64 %i.tl ; 2 uses
  %bound01424 = icmp ult ptr %scevgep1409, %scevgep1417
  %bound11425 = icmp ult ptr %scevgep1415, %scevgep1411
  %found.conflict1426 = and i1 %bound01424, %bound11425
  %conflict.rdx1427 = or i1 %found.conflict1423, %found.conflict1426
  %bound01428 = icmp ult ptr %scevgep1409, %scevgep1420
  %bound11429 = icmp ult ptr %scevgep1418, %scevgep1411
  %found.conflict1430 = and i1 %bound01428, %bound11429
  %conflict.rdx1431 = or i1 %conflict.rdx1427, %found.conflict1430
  %bound01432 = icmp ult ptr %scevgep1412, %scevgep1417
  %bound11433 = icmp ult ptr %scevgep1415, %scevgep1414
  %found.conflict1434 = and i1 %bound01432, %bound11433
  %conflict.rdx1435 = or i1 %conflict.rdx1431, %found.conflict1434
  %bound01436 = icmp ult ptr %scevgep1412, %scevgep1420
  %bound11437 = icmp ult ptr %scevgep1418, %scevgep1414
  %found.conflict1438 = and i1 %bound01436, %bound11437
  %conflict.rdx1439 = or i1 %conflict.rdx1435, %found.conflict1438
  br i1 %conflict.rdx1439, label %scalar.ph1440.preheader, label %vector.ph1442

vector.ph1442:                                    ; preds = %vector.memcheck1408
  %i.tm = add nsw i64 %n.vec1443, %i.tb
  %i.tn = add nsw i64 %n.vec1443, %i.ta
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.te, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1444 = insertelement <4 x float> poison, float %i.th, i64 0
  %broadcast.splat1445 = shufflevector <4 x float> %broadcast.splatinsert1444, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1822 = getelementptr [4 x i8], ptr %8, i64 %i.tb
  %invariant.gep1826 = getelementptr [4 x i8], ptr %8, i64 %i.ta
  br label %vector.body1446

vector.body1446:                                  ; preds = %vector.body1446, %vector.ph1442
  %index1447 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1452, %vector.body1446 ] ; 5 uses
  %gep1823 = getelementptr [4 x i8], ptr %invariant.gep1822, i64 %index1447
  %wide.load1448 = load <4 x float>, ptr %gep1823, align 4, !alias.scope !1204
  %i.to = fmul <4 x float> %broadcast.splat, %wide.load1448
  %gep1825 = getelementptr [4 x i8], ptr %invariant.gep1824, i64 %index1447 ; 2 uses
  %wide.load1449 = load <4 x float>, ptr %gep1825, align 4, !alias.scope !1207, !noalias !1209
  %i.tp = fadd <4 x float> %wide.load1449, %i.to
  store <4 x float> %i.tp, ptr %gep1825, align 4, !alias.scope !1207, !noalias !1209
  %gep1827 = getelementptr [4 x i8], ptr %invariant.gep1826, i64 %index1447
  %wide.load1450 = load <4 x float>, ptr %gep1827, align 4, !alias.scope !1212
  %i.tq = fmul <4 x float> %broadcast.splat1445, %wide.load1450
  %gep1829 = getelementptr [4 x i8], ptr %invariant.gep1828, i64 %index1447 ; 2 uses
  %wide.load1451 = load <4 x float>, ptr %gep1829, align 4, !alias.scope !1213, !noalias !1214
  %i.tr = fadd <4 x float> %wide.load1451, %i.tq
  store <4 x float> %i.tr, ptr %gep1829, align 4, !alias.scope !1213, !noalias !1214
  %index.next1452 = add nuw i64 %index1447, 4     ; 2 uses
  %i.ts = icmp eq i64 %index.next1452, %n.vec1443
  br i1 %i.ts, label %middle.block1453, label %vector.body1446, !llvm.loop !1215

middle.block1453:                                 ; preds = %vector.body1446
  br i1 %cmp.n1454, label %._crit_edge752, label %scalar.ph1440.preheader

scalar.ph1440.preheader:                          ; preds = %vector.memcheck1408, %.lr.ph751, %middle.block1453
  %indvars.iv1041.ph = phi i64 [ %i.ru, %vector.memcheck1408 ], [ %i.ru, %.lr.ph751 ], [ %i.sy, %middle.block1453 ]
  %indvars.iv1039.ph = phi i64 [ %i.rt, %vector.memcheck1408 ], [ %i.rt, %.lr.ph751 ], [ %i.sz, %middle.block1453 ]
  %indvars.iv1037.ph = phi i64 [ %i.tb, %vector.memcheck1408 ], [ %i.tb, %.lr.ph751 ], [ %i.tm, %middle.block1453 ]
  %indvars.iv1033.ph = phi i64 [ %i.ta, %vector.memcheck1408 ], [ %i.ta, %.lr.ph751 ], [ %i.tn, %middle.block1453 ]
  %.1556749.ph = phi i32 [ 0, %vector.memcheck1408 ], [ 0, %.lr.ph751 ], [ %i.rl, %middle.block1453 ]
  br label %scalar.ph1440

scalar.ph1440:                                    ; preds = %scalar.ph1440.preheader, %scalar.ph1440
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042, %scalar.ph1440 ], [ %indvars.iv1041.ph, %scalar.ph1440.preheader ] ; 2 uses
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %scalar.ph1440 ], [ %indvars.iv1039.ph, %scalar.ph1440.preheader ] ; 2 uses
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %scalar.ph1440 ], [ %indvars.iv1037.ph, %scalar.ph1440.preheader ] ; 2 uses
  %indvars.iv1033 = phi i64 [ %indvars.iv.next1034, %scalar.ph1440 ], [ %indvars.iv1033.ph, %scalar.ph1440.preheader ] ; 2 uses
  %.1556749 = phi i32 [ %i.uf, %scalar.ph1440 ], [ %.1556749.ph, %scalar.ph1440.preheader ]
  %indvars.iv.next1038 = add nsw i64 %indvars.iv1037, 1
  %i.tt = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1037
  %i.tu = load float, ptr %i.tt, align 4
  %i.tv = fmul float %i.te, %i.tu
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, 1
  %i.tw = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1041 ; 2 uses
  %i.tx = load float, ptr %i.tw, align 4
  %i.ty = fadd float %i.tx, %i.tv
  store float %i.ty, ptr %i.tw, align 4
  %indvars.iv.next1034 = add nsw i64 %indvars.iv1033, 1
  %i.tz = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1033
  %i.ua = load float, ptr %i.tz, align 4
  %i.ub = fmul float %i.th, %i.ua
  %indvars.iv.next1040 = add nsw i64 %indvars.iv1039, 1
  %i.uc = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1039 ; 2 uses
  %i.ud = load float, ptr %i.uc, align 4
  %i.ue = fadd float %i.ud, %i.ub
  store float %i.ue, ptr %i.uc, align 4
  %i.uf = add nuw nsw i32 %.1556749, 1            ; 2 uses
  %exitcond1050.not = icmp eq i32 %i.uf, %3
  br i1 %exitcond1050.not, label %._crit_edge752, label %scalar.ph1440, !llvm.loop !1216

._crit_edge752:                                   ; preds = %scalar.ph1440, %middle.block1453
  %i.ug = add nuw nsw i32 %.3538757, 1            ; 2 uses
  %indvars.iv.next1032 = sub i32 %indvars.iv1031, %3
  %indvars.iv.next1036 = add i32 %indvars.iv1035, %3
  %exitcond1051.not = icmp eq i32 %i.ug, %i.o
  br i1 %exitcond1051.not, label %._crit_edge760.split, label %.lr.ph751, !llvm.loop !1217

._crit_edge760.split:                             ; preds = %._crit_edge752, %bb.d, %._crit_edge744
  %i.uh = add nuw nsw i32 %.0554765, 1            ; 2 uses
  %indvars.iv.next1011 = sub i32 %indvars.iv1010, %3
  %indvars.iv.next1015 = add i32 %indvars.iv1014, %3
  %exitcond1052.not = icmp eq i32 %i.uh, %i.o
  br i1 %exitcond1052.not, label %.preheader659, label %bb.d, !llvm.loop !1218

.preheader658:                                    ; preds = %._crit_edge772, %.preheader659
  br i1 %or.cond862, label %.lr.ph780.preheader, label %._crit_edge786.split

.lr.ph780.preheader:                              ; preds = %.preheader658
  %i.ui = sext i32 %0 to i64                      ; 6 uses
  %i.uj = mul i32 %i.d, %10
  %i.uk = add nsw i32 %2, -1
  %i.ul = zext i32 %i.uk to i64
  %i.um = shl nuw nsw i64 %i.ul, 2
  %i.un = add nuw nsw i64 %i.um, 4                ; 4 uses
  %scevgep1515 = getelementptr i8, ptr %7, i64 %i.un
  %scevgep1518 = getelementptr i8, ptr %7, i64 %i.un
  %scevgep1521 = getelementptr i8, ptr %5, i64 %i.un
  %scevgep1524 = getelementptr i8, ptr %5, i64 %i.un
  %i.uo = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1546 = icmp ugt i32 %2, 7
  %ident.check1510.not = icmp eq i32 %0, 1
  %or.cond1749 = and i1 %min.iters.check1546, %ident.check1510.not
  %n.vec1548 = and i64 %i.uo, 2147483644          ; 5 uses
  %i.up = trunc nuw nsw i64 %n.vec1548 to i32
  %cmp.n1557 = icmp eq i64 %n.vec1548, %i.uo
  br label %.lr.ph780

.lr.ph771:                                        ; preds = %.lr.ph771.preheader, %._crit_edge772
  %indvars.iv1055 = phi i32 [ %3, %.lr.ph771.preheader ], [ %indvars.iv.next1056, %._crit_edge772 ] ; 2 uses
  %.4539774 = phi i32 [ 1, %.lr.ph771.preheader ], [ %i.vd, %._crit_edge772 ]
  %i.uq = zext i32 %indvars.iv1055 to i64         ; 3 uses
  br i1 %min.iters.check1495, label %scalar.ph1494.preheader, label %vector.ph1496

vector.ph1496:                                    ; preds = %.lr.ph771
  %i.ur = add nuw nsw i64 %n.vec1497, %i.uq
  %invariant.gep1842 = getelementptr [4 x i8], ptr %8, i64 %i.uq
  br label %vector.body1498

vector.body1498:                                  ; preds = %vector.body1498, %vector.ph1496
  %index1499 = phi i64 [ 0, %vector.ph1496 ], [ %index.next1504, %vector.body1498 ] ; 3 uses
  %gep1843 = getelementptr [4 x i8], ptr %invariant.gep1842, i64 %index1499 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %gep1843, i64 16
  %wide.load1500 = load <4 x float>, ptr %gep1843, align 4
  %wide.load1501 = load <4 x float>, ptr %i.us, align 4
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1499 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16 ; 2 uses
  %wide.load1502 = load <4 x float>, ptr %i.ut, align 4
  %wide.load1503 = load <4 x float>, ptr %i.uu, align 4
  %i.uv = fadd <4 x float> %wide.load1500, %wide.load1502
  %i.uw = fadd <4 x float> %wide.load1501, %wide.load1503
  store <4 x float> %i.uv, ptr %i.ut, align 4
  store <4 x float> %i.uw, ptr %i.uu, align 4
  %index.next1504 = add nuw i64 %index1499, 8     ; 2 uses
  %i.ux = icmp eq i64 %index.next1504, %n.vec1497
  br i1 %i.ux, label %middle.block1505, label %vector.body1498, !llvm.loop !1219

middle.block1505:                                 ; preds = %vector.body1498
  br i1 %cmp.n1506, label %._crit_edge772, label %scalar.ph1494.preheader

scalar.ph1494.preheader:                          ; preds = %.lr.ph771, %middle.block1505
  %indvars.iv1057.ph = phi i64 [ %i.uq, %.lr.ph771 ], [ %i.ur, %middle.block1505 ]
  %indvars.iv1053.ph = phi i64 [ 0, %.lr.ph771 ], [ %n.vec1497, %middle.block1505 ]
  br label %scalar.ph1494

scalar.ph1494:                                    ; preds = %scalar.ph1494.preheader, %scalar.ph1494
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %scalar.ph1494 ], [ %indvars.iv1057.ph, %scalar.ph1494.preheader ] ; 2 uses
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %scalar.ph1494 ], [ %indvars.iv1053.ph, %scalar.ph1494.preheader ] ; 2 uses
  %indvars.iv.next1058 = add nuw nsw i64 %indvars.iv1057, 1
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1057
  %i.uz = load float, ptr %i.uy, align 4
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1053 ; 2 uses
  %i.vb = load float, ptr %i.va, align 4
  %i.vc = fadd float %i.uz, %i.vb
  store float %i.vc, ptr %i.va, align 4
  %indvars.iv.next1054 = add nuw nsw i64 %indvars.iv1053, 1 ; 2 uses
  %exitcond1063.not = icmp eq i64 %indvars.iv.next1054, %wide.trip.count1062
  br i1 %exitcond1063.not, label %._crit_edge772, label %scalar.ph1494, !llvm.loop !1220

._crit_edge772:                                   ; preds = %scalar.ph1494, %middle.block1505
  %i.vd = add nuw nsw i32 %.4539774, 1            ; 2 uses
  %indvars.iv.next1056 = add i32 %indvars.iv1055, %3
  %exitcond1064.not = icmp eq i32 %i.vd, %i.o
  br i1 %exitcond1064.not, label %.preheader658, label %.lr.ph771, !llvm.loop !1221

.lr.ph780:                                        ; preds = %.lr.ph780.preheader, %._crit_edge781
  %indvar1512 = phi i32 [ 0, %.lr.ph780.preheader ], [ %indvar.next1513, %._crit_edge781 ] ; 3 uses
  %indvars.iv1069 = phi i32 [ %i.uj, %.lr.ph780.preheader ], [ %indvars.iv.next1070, %._crit_edge781 ] ; 2 uses
  %indvars.iv1065 = phi i32 [ %i.d, %.lr.ph780.preheader ], [ %indvars.iv.next1066, %._crit_edge781 ] ; 2 uses
  %.5540784 = phi i32 [ 1, %.lr.ph780.preheader ], [ %i.xh, %._crit_edge781 ]
  %i.ve = sext i32 %indvars.iv1065 to i64         ; 4 uses
  %i.vf = sext i32 %indvars.iv1069 to i64         ; 4 uses
  br i1 %or.cond1749, label %vector.memcheck1511, label %scalar.ph1545.preheader

vector.memcheck1511:                              ; preds = %.lr.ph780
  %i.vg = add i32 %indvar1512, 1
  %i.vh = mul i32 %2, %i.vg
  %i.vi = sext i32 %i.vh to i64
  %i.vj = shl nsw i64 %i.vi, 2                    ; 4 uses
  %scevgep1525 = getelementptr i8, ptr %scevgep1524, i64 %i.vj ; 2 uses
  %scevgep1523 = getelementptr i8, ptr %5, i64 %i.vj ; 2 uses
  %i.vk = sub i32 %10, %indvar1512
  %i.vl = mul i32 %2, %i.vk
  %i.vm = sext i32 %i.vl to i64
  %i.vn = shl nsw i64 %i.vm, 2                    ; 4 uses
  %scevgep1522 = getelementptr i8, ptr %scevgep1521, i64 %i.vn ; 2 uses
  %scevgep1520 = getelementptr i8, ptr %5, i64 %i.vn ; 2 uses
  %scevgep1519 = getelementptr i8, ptr %scevgep1518, i64 %i.vn ; 3 uses
  %scevgep1517 = getelementptr i8, ptr %7, i64 %i.vn ; 3 uses
  %scevgep1516 = getelementptr i8, ptr %scevgep1515, i64 %i.vj ; 3 uses
  %scevgep1514 = getelementptr i8, ptr %7, i64 %i.vj ; 3 uses
  %bound01526 = icmp ult ptr %scevgep1514, %scevgep1519
  %bound11527 = icmp ult ptr %scevgep1517, %scevgep1516
  %found.conflict1528 = and i1 %bound01526, %bound11527
  %bound01529 = icmp ult ptr %scevgep1514, %scevgep1522
  %bound11530 = icmp ult ptr %scevgep1520, %scevgep1516
  %found.conflict1531 = and i1 %bound01529, %bound11530
  %conflict.rdx1532 = or i1 %found.conflict1528, %found.conflict1531
  %bound01533 = icmp ult ptr %scevgep1514, %scevgep1525
  %bound11534 = icmp ult ptr %scevgep1523, %scevgep1516
  %found.conflict1535 = and i1 %bound01533, %bound11534
  %conflict.rdx1536 = or i1 %conflict.rdx1532, %found.conflict1535
  %bound01537 = icmp ult ptr %scevgep1517, %scevgep1522
  %bound11538 = icmp ult ptr %scevgep1520, %scevgep1519
  %found.conflict1539 = and i1 %bound01537, %bound11538
  %conflict.rdx1540 = or i1 %conflict.rdx1536, %found.conflict1539
  %bound01541 = icmp ult ptr %scevgep1517, %scevgep1525
  %bound11542 = icmp ult ptr %scevgep1523, %scevgep1519
  %found.conflict1543 = and i1 %bound01541, %bound11542
  %conflict.rdx1544 = or i1 %conflict.rdx1540, %found.conflict1543
  br i1 %conflict.rdx1544, label %scalar.ph1545.preheader, label %vector.ph1547

vector.ph1547:                                    ; preds = %vector.memcheck1511
  %i.vo = add nsw i64 %n.vec1548, %i.vf
  %i.vp = add nsw i64 %n.vec1548, %i.ve
  br label %vector.body1549

vector.body1549:                                  ; preds = %vector.body1549, %vector.ph1547
  %index1550 = phi i64 [ 0, %vector.ph1547 ], [ %index.next1555, %vector.body1549 ] ; 3 uses
  %i.vq = add i64 %index1550, %i.vf               ; 2 uses
  %i.vr = add i64 %index1550, %i.ve               ; 2 uses
  %i.vs = getelementptr inbounds [4 x i8], ptr %5, i64 %i.vr
  %wide.load1551 = load <4 x float>, ptr %i.vs, align 4, !alias.scope !1222 ; 2 uses
  %i.vt = getelementptr inbounds [4 x i8], ptr %5, i64 %i.vq
  %wide.load1552 = load <4 x float>, ptr %i.vt, align 4, !alias.scope !1225 ; 2 uses
  %i.vu = fsub <4 x float> %wide.load1551, %wide.load1552
  %i.vv = getelementptr inbounds [4 x i8], ptr %7, i64 %i.vr
  store <4 x float> %i.vu, ptr %i.vv, align 4, !alias.scope !1227, !noalias !1229
  %i.vw = fadd <4 x float> %wide.load1551, %wide.load1552
  %i.vx = getelementptr inbounds [4 x i8], ptr %7, i64 %i.vq
  store <4 x float> %i.vw, ptr %i.vx, align 4, !alias.scope !1231, !noalias !1232
  %index.next1555 = add nuw i64 %index1550, 4     ; 2 uses
  %i.vy = icmp eq i64 %index.next1555, %n.vec1548
  br i1 %i.vy, label %middle.block1556, label %vector.body1549, !llvm.loop !1233

middle.block1556:                                 ; preds = %vector.body1549
  br i1 %cmp.n1557, label %._crit_edge781, label %scalar.ph1545.preheader

scalar.ph1545.preheader:                          ; preds = %vector.memcheck1511, %.lr.ph780, %middle.block1556
  %indvars.iv1071.ph = phi i64 [ %i.vf, %vector.memcheck1511 ], [ %i.vf, %.lr.ph780 ], [ %i.vo, %middle.block1556 ] ; 4 uses
  %indvars.iv1067.ph = phi i64 [ %i.ve, %vector.memcheck1511 ], [ %i.ve, %.lr.ph780 ], [ %i.vp, %middle.block1556 ] ; 4 uses
  %.5548778.ph = phi i32 [ 0, %vector.memcheck1511 ], [ 0, %.lr.ph780 ], [ %i.up, %middle.block1556 ] ; 4 uses
  %i.vz = sub i32 %2, %.5548778.ph
  %.neg1798 = add i32 %.5548778.ph, 1
  %xtraiter1789 = and i32 %i.vz, 1
  %lcmp.mod1790.not = icmp eq i32 %xtraiter1789, 0
  br i1 %lcmp.mod1790.not, label %scalar.ph1545.prol.loopexit, label %scalar.ph1545.prol

scalar.ph1545.prol:                               ; preds = %scalar.ph1545.preheader
  %i.wa = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1067.ph ; 2 uses
  %i.wb = load float, ptr %i.wa, align 4
  %i.wc = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1071.ph ; 2 uses
  %i.wd = load float, ptr %i.wc, align 4
  %i.we = fsub float %i.wb, %i.wd
  %i.wf = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1067.ph
  store float %i.we, ptr %i.wf, align 4
  %i.wg = load float, ptr %i.wa, align 4
  %i.wh = load float, ptr %i.wc, align 4
  %i.wi = fadd float %i.wg, %i.wh
  %i.wj = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1071.ph
  store float %i.wi, ptr %i.wj, align 4
  %indvars.iv.next1068.prol = add nsw i64 %indvars.iv1067.ph, %i.ui
  %indvars.iv.next1072.prol = add nsw i64 %indvars.iv1071.ph, %i.ui
  %i.wk = add nuw nsw i32 %.5548778.ph, 1
  br label %scalar.ph1545.prol.loopexit

scalar.ph1545.prol.loopexit:                      ; preds = %scalar.ph1545.prol, %scalar.ph1545.preheader
  %indvars.iv1071.unr = phi i64 [ %indvars.iv1071.ph, %scalar.ph1545.preheader ], [ %indvars.iv.next1072.prol, %scalar.ph1545.prol ]
  %indvars.iv1067.unr = phi i64 [ %indvars.iv1067.ph, %scalar.ph1545.preheader ], [ %indvars.iv.next1068.prol, %scalar.ph1545.prol ]
  %.5548778.unr = phi i32 [ %.5548778.ph, %scalar.ph1545.preheader ], [ %i.wk, %scalar.ph1545.prol ]
  %i.wl = icmp eq i32 %2, %.neg1798
  br i1 %i.wl, label %._crit_edge781, label %scalar.ph1545

scalar.ph1545:                                    ; preds = %scalar.ph1545.prol.loopexit, %scalar.ph1545
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072.1, %scalar.ph1545 ], [ %indvars.iv1071.unr, %scalar.ph1545.prol.loopexit ] ; 3 uses
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068.1, %scalar.ph1545 ], [ %indvars.iv1067.unr, %scalar.ph1545.prol.loopexit ] ; 3 uses
  %.5548778 = phi i32 [ %i.xg, %scalar.ph1545 ], [ %.5548778.unr, %scalar.ph1545.prol.loopexit ]
  %i.wm = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1067 ; 2 uses
  %i.wn = load float, ptr %i.wm, align 4
end_hunk_1
