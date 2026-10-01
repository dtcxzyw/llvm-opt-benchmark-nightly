Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
begin_hunk_0_@local_laplacian_internal:bb.a
  %lcmp.mod1437.not = icmp eq i64 %xtraiter1435, 0
  br i1 %lcmp.mod1437.not, label %.lr.ph.i645.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i645.preheader.unr-lcssa, %bb.j
  %.056.i.epil.init = phi i32 [ %.pre1079, %bb.j ], [ %i.md, %.lr.ph.i645.preheader.unr-lcssa ]
  %lcmp.mod1439 = icmp ne i64 %xtraiter1435, 0
  tail call void @llvm.assume(i1 %lcmp.mod1439)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.056.i.epil = phi i32 [ %i.me, %.lr.ph.i.epil ], [ %.056.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter1436 = phi i64 [ %epil.iter1436.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.me = sdiv i32 %.056.i.epil, 2                ; 2 uses
  %epil.iter1436.next = add i64 %epil.iter1436, 1 ; 2 uses
  %epil.iter1436.cmp.not = icmp eq i64 %epil.iter1436.next, %xtraiter1435
  br i1 %epil.iter1436.cmp.not, label %.lr.ph.i645.preheader, label %.lr.ph.i.epil, !llvm.loop !54

.lr.ph.i645.preheader:                            ; preds = %.lr.ph.i.epil, %.lr.ph.i645.preheader.unr-lcssa
  %.lcssa1418 = phi i32 [ %i.md, %.lr.ph.i645.preheader.unr-lcssa ], [ %i.me, %.lr.ph.i.epil ]
  %xtraiter1442 = and i64 %indvars.iv, 7          ; 3 uses
  %i.mf = icmp ult i64 %indvar, 7
  br i1 %i.mf, label %.lr.ph.i645.epil.preheader, label %.lr.ph.i645.preheader.new

.lr.ph.i645.preheader.new:                        ; preds = %.lr.ph.i645.preheader
  %unroll_iter1447 = and i64 %indvars.iv, 9223372036854775800
  br label %.lr.ph.i645

.lr.ph.i645:                                      ; preds = %.lr.ph.i645, %.lr.ph.i645.preheader.new
  %.056.i647 = phi i32 [ %.pre1081, %.lr.ph.i645.preheader.new ], [ %i.mg, %.lr.ph.i645 ]
  %niter1448 = phi i64 [ 0, %.lr.ph.i645.preheader.new ], [ %niter1448.next.7, %.lr.ph.i645 ]
  %i.mg = sdiv i32 %.056.i647, 256                ; 3 uses
  %niter1448.next.7 = add i64 %niter1448, 8       ; 2 uses
  %niter1448.ncmp.7 = icmp eq i64 %niter1448.next.7, %unroll_iter1447
  br i1 %niter1448.ncmp.7, label %dl.exit649.unr-lcssa, label %.lr.ph.i645

dl.exit649.unr-lcssa:                             ; preds = %.lr.ph.i645
  %lcmp.mod1444.not = icmp eq i64 %xtraiter1442, 0
  br i1 %lcmp.mod1444.not, label %dl.exit649, label %.lr.ph.i645.epil.preheader

.lr.ph.i645.epil.preheader:                       ; preds = %dl.exit649.unr-lcssa, %.lr.ph.i645.preheader
  %.056.i647.epil.init = phi i32 [ %.pre1081, %.lr.ph.i645.preheader ], [ %i.mg, %dl.exit649.unr-lcssa ]
  %lcmp.mod1446 = icmp ne i64 %xtraiter1442, 0
  tail call void @llvm.assume(i1 %lcmp.mod1446)
  br label %.lr.ph.i645.epil

.lr.ph.i645.epil:                                 ; preds = %.lr.ph.i645.epil, %.lr.ph.i645.epil.preheader
  %.056.i647.epil = phi i32 [ %i.mh, %.lr.ph.i645.epil ], [ %.056.i647.epil.init, %.lr.ph.i645.epil.preheader ]
  %epil.iter1443 = phi i64 [ %epil.iter1443.next, %.lr.ph.i645.epil ], [ 0, %.lr.ph.i645.epil.preheader ]
  %i.mh = sdiv i32 %.056.i647.epil, 2             ; 2 uses
  %epil.iter1443.next = add i64 %epil.iter1443, 1 ; 2 uses
  %epil.iter1443.cmp.not = icmp eq i64 %epil.iter1443.next, %xtraiter1442
  br i1 %epil.iter1443.cmp.not, label %dl.exit649, label %.lr.ph.i645.epil, !llvm.loop !55

dl.exit649:                                       ; preds = %.lr.ph.i645.epil, %dl.exit649.unr-lcssa
  %.lcssa1419 = phi i32 [ %i.mg, %dl.exit649.unr-lcssa ], [ %i.mh, %.lr.ph.i645.epil ]
  %i.mi = add nsw i32 %.lcssa1418, 1
  %i.mj = sext i32 %i.mi to i64
  %i.mk = add nsw i32 %.lcssa1419, 1
  %i.ml = sext i32 %i.mk to i64
  %i.mm = shl nsw i64 %i.mj, 2
  %i.mn = mul nsw i64 %i.mm, %i.ml
  %i.mo = tail call ptr @dt_alloc_aligned(i64 noundef %i.mn) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mo, i64 64) ]
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !17
  %.not613 = icmp eq ptr %i.mo, null
  br i1 %.not613, label %dl.exit649._crit_edge, label %bb.i

dl.exit649._crit_edge:                            ; preds = %bb.i, %dl.exit649, %ll_pad_input.exit
  %wide.trip.count947.pre-phi = phi i64 [ 1, %ll_pad_input.exit ], [ %wide.trip.count, %dl.exit649 ], [ %wide.trip.count, %bb.i ] ; 9 uses
  %.0547 = phi i1 [ %.not617, %ll_pad_input.exit ], [ %.not617, %bb.i ], [ true, %dl.exit649 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.f, i8 0, i64 240, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %dl.exit662
  %indvars.iv.next945 = add nuw nsw i64 %indvars.iv944, 1 ; 2 uses
  %exitcond948.not = icmp eq i64 %indvars.iv.next945, %wide.trip.count947.pre-phi
  br i1 %exitcond948.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %dl.exit649._crit_edge, %bb.k
  %indvars.iv944 = phi i64 [ 0, %dl.exit649._crit_edge ], [ %indvars.iv.next945, %bb.k ] ; 9 uses
  %.not828 = icmp eq i64 %indvars.iv944, 0
  br i1 %.not828, label %dl.exit662, label %.lr.ph.i650.preheader

.lr.ph.i650.preheader:                            ; preds = %bb.l
  %xtraiter1449 = and i64 %indvars.iv944, 7       ; 3 uses
  %i.mq = icmp samesign ult i64 %indvars.iv944, 8
  br i1 %i.mq, label %.lr.ph.i650.epil.preheader, label %.lr.ph.i650.preheader.new

.lr.ph.i650.preheader.new:                        ; preds = %.lr.ph.i650.preheader
  %unroll_iter1454 = and i64 %indvars.iv944, 9223372036854775800
  br label %.lr.ph.i650

.lr.ph.i650:                                      ; preds = %.lr.ph.i650, %.lr.ph.i650.preheader.new
  %.056.i652 = phi i32 [ %.pre1079, %.lr.ph.i650.preheader.new ], [ %i.mr, %.lr.ph.i650 ]
  %niter1455 = phi i64 [ 0, %.lr.ph.i650.preheader.new ], [ %niter1455.next.7, %.lr.ph.i650 ]
  %i.mr = sdiv i32 %.056.i652, 256                ; 3 uses
  %niter1455.next.7 = add i64 %niter1455, 8       ; 2 uses
  %niter1455.ncmp.7 = icmp eq i64 %niter1455.next.7, %unroll_iter1454
  br i1 %niter1455.ncmp.7, label %.lr.ph.i657.preheader.unr-lcssa, label %.lr.ph.i650

.lr.ph.i657.preheader.unr-lcssa:                  ; preds = %.lr.ph.i650
  %lcmp.mod1451.not = icmp eq i64 %xtraiter1449, 0
  br i1 %lcmp.mod1451.not, label %.lr.ph.i657.preheader, label %.lr.ph.i650.epil.preheader

.lr.ph.i650.epil.preheader:                       ; preds = %.lr.ph.i657.preheader.unr-lcssa, %.lr.ph.i650.preheader
  %.056.i652.epil.init = phi i32 [ %.pre1079, %.lr.ph.i650.preheader ], [ %i.mr, %.lr.ph.i657.preheader.unr-lcssa ]
  %lcmp.mod1453 = icmp ne i64 %xtraiter1449, 0
  tail call void @llvm.assume(i1 %lcmp.mod1453)
  br label %.lr.ph.i650.epil

.lr.ph.i650.epil:                                 ; preds = %.lr.ph.i650.epil, %.lr.ph.i650.epil.preheader
  %.056.i652.epil = phi i32 [ %i.ms, %.lr.ph.i650.epil ], [ %.056.i652.epil.init, %.lr.ph.i650.epil.preheader ]
  %epil.iter1450 = phi i64 [ %epil.iter1450.next, %.lr.ph.i650.epil ], [ 0, %.lr.ph.i650.epil.preheader ]
  %i.ms = sdiv i32 %.056.i652.epil, 2             ; 2 uses
  %epil.iter1450.next = add i64 %epil.iter1450, 1 ; 2 uses
  %epil.iter1450.cmp.not = icmp eq i64 %epil.iter1450.next, %xtraiter1449
  br i1 %epil.iter1450.cmp.not, label %.lr.ph.i657.preheader, label %.lr.ph.i650.epil, !llvm.loop !56

.lr.ph.i657.preheader:                            ; preds = %.lr.ph.i650.epil, %.lr.ph.i657.preheader.unr-lcssa
  %.lcssa1416 = phi i32 [ %i.mr, %.lr.ph.i657.preheader.unr-lcssa ], [ %i.ms, %.lr.ph.i650.epil ]
  %xtraiter1456 = and i64 %indvars.iv944, 7       ; 3 uses
  %i.mt = icmp samesign ult i64 %indvars.iv944, 8
  br i1 %i.mt, label %.lr.ph.i657.epil.preheader, label %.lr.ph.i657.preheader.new

.lr.ph.i657.preheader.new:                        ; preds = %.lr.ph.i657.preheader
  %unroll_iter1461 = and i64 %indvars.iv944, 9223372036854775800
  br label %.lr.ph.i657

._crit_edge.loopexit.i661.unr-lcssa:              ; preds = %.lr.ph.i657
  %lcmp.mod1458.not = icmp eq i64 %xtraiter1456, 0
  br i1 %lcmp.mod1458.not, label %._crit_edge.loopexit.i661, label %.lr.ph.i657.epil.preheader

.lr.ph.i657.epil.preheader:                       ; preds = %._crit_edge.loopexit.i661.unr-lcssa, %.lr.ph.i657.preheader
  %.056.i659.epil.init = phi i32 [ %.pre1081, %.lr.ph.i657.preheader ], [ %i.mx, %._crit_edge.loopexit.i661.unr-lcssa ]
  %lcmp.mod1460 = icmp ne i64 %xtraiter1456, 0
  tail call void @llvm.assume(i1 %lcmp.mod1460)
  br label %.lr.ph.i657.epil

.lr.ph.i657.epil:                                 ; preds = %.lr.ph.i657.epil, %.lr.ph.i657.epil.preheader
  %.056.i659.epil = phi i32 [ %i.mu, %.lr.ph.i657.epil ], [ %.056.i659.epil.init, %.lr.ph.i657.epil.preheader ]
  %epil.iter1457 = phi i64 [ %epil.iter1457.next, %.lr.ph.i657.epil ], [ 0, %.lr.ph.i657.epil.preheader ]
  %i.mu = sdiv i32 %.056.i659.epil, 2             ; 2 uses
  %epil.iter1457.next = add i64 %epil.iter1457, 1 ; 2 uses
  %epil.iter1457.cmp.not = icmp eq i64 %epil.iter1457.next, %xtraiter1456
  br i1 %epil.iter1457.cmp.not, label %._crit_edge.loopexit.i661, label %.lr.ph.i657.epil, !llvm.loop !57

._crit_edge.loopexit.i661:                        ; preds = %.lr.ph.i657.epil, %._crit_edge.loopexit.i661.unr-lcssa
  %.lcssa1417 = phi i32 [ %i.mx, %._crit_edge.loopexit.i661.unr-lcssa ], [ %i.mu, %.lr.ph.i657.epil ]
  %i.mv = add nsw i32 %.lcssa1416, 1
  %i.mw = add nsw i32 %.lcssa1417, 1
  br label %dl.exit662

.lr.ph.i657:                                      ; preds = %.lr.ph.i657, %.lr.ph.i657.preheader.new
  %.056.i659 = phi i32 [ %.pre1081, %.lr.ph.i657.preheader.new ], [ %i.mx, %.lr.ph.i657 ]
  %niter1462 = phi i64 [ 0, %.lr.ph.i657.preheader.new ], [ %niter1462.next.7, %.lr.ph.i657 ]
  %i.mx = sdiv i32 %.056.i659, 256                ; 3 uses
  %niter1462.next.7 = add i64 %niter1462, 8       ; 2 uses
  %niter1462.ncmp.7 = icmp eq i64 %niter1462.next.7, %unroll_iter1461
  br i1 %niter1462.ncmp.7, label %._crit_edge.loopexit.i661.unr-lcssa, label %.lr.ph.i657

dl.exit662:                                       ; preds = %bb.l, %._crit_edge.loopexit.i661
  %.in = phi i32 [ %i.mv, %._crit_edge.loopexit.i661 ], [ %.pre, %bb.l ]
  %.05.lcssa.i655 = phi i32 [ %i.mw, %._crit_edge.loopexit.i661 ], [ %.pre1074, %bb.l ]
  %i.my = sext i32 %.in to i64
  %i.mz = sext i32 %.05.lcssa.i655 to i64
  %i.na = shl nsw i64 %i.my, 2
  %i.nb = mul i64 %i.na, %i.mz
  %i.nc = tail call ptr @dt_alloc_aligned(i64 noundef %i.nb) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nc, i64 64) ]
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv944
  store ptr %i.nc, ptr %i.nd, align 8, !tbaa !17
  %.not615 = icmp eq ptr %i.nc, null
  br i1 %.not615, label %.critedge638.preheader, label %bb.k

bb.m:                                             ; preds = %bb.k
  br i1 %.0547, label %.critedge638.preheader, label %.preheader851

.critedge638.preheader:                           ; preds = %dl.exit662, %bb.m
  br label %.critedge638

.preheader851:                                    ; preds = %bb.m
  %i.ne = icmp sgt i32 %.0528797, 1
  %wide.trip.count952 = zext nneg i32 %.0528797 to i64 ; 3 uses
  br i1 %i.ne, label %.lr.ph876, label %._crit_edge877.thread

._crit_edge877.thread:                            ; preds = %.preheader851
  %i.nf = add nsw i32 %.0528797, -1               ; 2 uses
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ng
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !17
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %wide.trip.count952
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !17
  br label %dl.exit678

iter.check1367:                                   ; preds = %.critedge638
  %i.nl = zext nneg i32 %2 to i64
  %i.nm = shl nuw nsw i64 %i.nl, 2
  %i.nn = zext nneg i32 %3 to i64
  %i.no = mul nuw i64 %i.nm, %i.nn                ; 9 uses
  %min.iters.check1352 = icmp eq i64 %i.no, 0
  %i.np = sub i64 %i.a, %i.b
  %diff.check1350 = icmp ugt i64 %i.np, -128
  %or.cond1380 = or i1 %min.iters.check1352, %diff.check1350
  br i1 %or.cond1380, label %.lr.ph918.preheader, label %vector.main.loop.iter.check1353

vector.main.loop.iter.check1353:                  ; preds = %iter.check1367
  %min.iters.check1354 = icmp ult i64 %i.no, 32
  br i1 %min.iters.check1354, label %vec.epilog.vector.body1373.preheader, label %vector.ph1355

vector.ph1355:                                    ; preds = %vector.main.loop.iter.check1353
  %i.nq = and i64 %i.no, 28
  %n.vec1356 = and i64 %i.no, -32                 ; 4 uses
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.ph1355, %vector.body1357
  %index1358 = phi i64 [ 0, %vector.ph1355 ], [ %index.next1363, %vector.body1357 ] ; 3 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index1358 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 96
  %wide.load1359.a = load <8 x float>, ptr %i.nr, align 4, !tbaa !21
  %wide.load1360.a = load <8 x float>, ptr %i.ns, align 4, !tbaa !21
  %wide.load1361.a = load <8 x float>, ptr %i.nt, align 4, !tbaa !21
  %wide.load1362 = load <8 x float>, ptr %i.nu, align 4, !tbaa !21
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index1358 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 96
  store <8 x float> %wide.load1359.a, ptr %i.nv, align 4, !tbaa !21
  store <8 x float> %wide.load1360.a, ptr %i.nw, align 4, !tbaa !21
  store <8 x float> %wide.load1361.a, ptr %i.nx, align 4, !tbaa !21
  store <8 x float> %wide.load1362, ptr %i.ny, align 4, !tbaa !21
  %index.next1363 = add nuw i64 %index1358, 32    ; 2 uses
  %i.nz = icmp eq i64 %index.next1363, %n.vec1356
  br i1 %i.nz, label %middle.block1364, label %vector.body1357, !llvm.loop !58

middle.block1364:                                 ; preds = %vector.body1357
  %cmp.n1365 = icmp eq i64 %i.no, %n.vec1356
  br i1 %cmp.n1365, label %.loopexit, label %vec.epilog.iter.check1369

vec.epilog.iter.check1369:                        ; preds = %middle.block1364
  %min.epilog.iters.check1370 = icmp eq i64 %i.nq, 0
  br i1 %min.epilog.iters.check1370, label %.lr.ph918.preheader, label %vec.epilog.vector.body1373.preheader, !prof !25

vec.epilog.vector.body1373.preheader:             ; preds = %vector.main.loop.iter.check1353, %vec.epilog.iter.check1369
  %index1374.ph = phi i64 [ 0, %vector.main.loop.iter.check1353 ], [ %n.vec1356, %vec.epilog.iter.check1369 ]
  br label %vec.epilog.vector.body1373

.lr.ph918.preheader:                              ; preds = %iter.check1367, %vec.epilog.iter.check1369
  %.0542917.ph = phi i64 [ %n.vec1356, %vec.epilog.iter.check1369 ], [ 0, %iter.check1367 ] ; 3 uses
  %xtraiter1702 = and i64 %i.no, 4                ; 2 uses
  %lcmp.mod1703.not = icmp eq i64 %xtraiter1702, 0
  br i1 %lcmp.mod1703.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol

.lr.ph918.prol:                                   ; preds = %.lr.ph918.preheader, %.lr.ph918.prol
  %.0542917.prol = phi i64 [ %i.od, %.lr.ph918.prol ], [ %.0542917.ph, %.lr.ph918.preheader ] ; 3 uses
  %prol.iter1704 = phi i64 [ %prol.iter1704.next, %.lr.ph918.prol ], [ 0, %.lr.ph918.preheader ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0542917.prol
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !21
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0542917.prol
  store float %i.ob, ptr %i.oc, align 4, !tbaa !21
  %i.od = add nuw i64 %.0542917.prol, 1           ; 2 uses
  %prol.iter1704.next = add i64 %prol.iter1704, 1 ; 2 uses
  %prol.iter1704.cmp.not = icmp eq i64 %prol.iter1704.next, %xtraiter1702
  br i1 %prol.iter1704.cmp.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol, !llvm.loop !59

.lr.ph918.prol.loopexit:                          ; preds = %.lr.ph918.prol, %.lr.ph918.preheader
  %.0542917.unr = phi i64 [ %.0542917.ph, %.lr.ph918.preheader ], [ %i.od, %.lr.ph918.prol ]
  %i.oe = sub i64 %.0542917.ph, %i.no
  %i.of = icmp ugt i64 %i.oe, -8
  br i1 %i.of, label %.loopexit, label %.lr.ph918

vec.epilog.vector.body1373:                       ; preds = %vec.epilog.vector.body1373.preheader, %vec.epilog.vector.body1373
  %index1374 = phi i64 [ %index.next1376, %vec.epilog.vector.body1373 ], [ %index1374.ph, %vec.epilog.vector.body1373.preheader ] ; 3 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index1374
  %wide.load1375 = load <4 x float>, ptr %i.og, align 4, !tbaa !21
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index1374
  store <4 x float> %wide.load1375, ptr %i.oh, align 4, !tbaa !21
  %index.next1376 = add nuw i64 %index1374, 4     ; 2 uses
  %i.oi = icmp eq i64 %index.next1376, %i.no
  br i1 %i.oi, label %.loopexit, label %vec.epilog.vector.body1373, !llvm.loop !60

.critedge638:                                     ; preds = %.critedge638.preheader, %.critedge638
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %.critedge638 ], [ 0, %.critedge638.preheader ] ; 3 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv1068
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.ok) #14
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv1068
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.om) #14
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 1 ; 2 uses
  %exitcond1072.not = icmp eq i64 %indvars.iv.next1069, %wide.trip.count947.pre-phi
  br i1 %exitcond1072.not, label %iter.check1367, label %.critedge638

.lr.ph918:                                        ; preds = %.lr.ph918.prol.loopexit, %.lr.ph918
  %.0542917 = phi i64 [ %i.ps, %.lr.ph918 ], [ %.0542917.unr, %.lr.ph918.prol.loopexit ] ; 10 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0542917
  %i.oo = load float, ptr %i.on, align 4, !tbaa !21
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0542917
  store float %i.oo, ptr %i.op, align 4, !tbaa !21
  %i.oq = add nuw i64 %.0542917, 1                ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oq
  %i.os = load float, ptr %i.or, align 4, !tbaa !21
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oq
  store float %i.os, ptr %i.ot, align 4, !tbaa !21
  %i.ou = add nuw i64 %.0542917, 2                ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ou
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !21
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ou
  store float %i.ow, ptr %i.ox, align 4, !tbaa !21
  %i.oy = add nuw i64 %.0542917, 3                ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oy
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !21
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oy
  store float %i.pa, ptr %i.pb, align 4, !tbaa !21
  %i.pc = add nuw i64 %.0542917, 4                ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pc
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !21
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pc
  store float %i.pe, ptr %i.pf, align 4, !tbaa !21
  %i.pg = add nuw i64 %.0542917, 5                ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pg
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !21
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pg
  store float %i.pi, ptr %i.pj, align 4, !tbaa !21
  %i.pk = add nuw i64 %.0542917, 6                ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pk
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !21
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pk
  store float %i.pm, ptr %i.pn, align 4, !tbaa !21
  %i.po = add nuw i64 %.0542917, 7                ; 2 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.po
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !21
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.po
  store float %i.pq, ptr %i.pr, align 4, !tbaa !21
  %i.ps = add nuw i64 %.0542917, 8                ; 2 uses
  %exitcond1073.not.7 = icmp eq i64 %i.ps, %i.no
  br i1 %exitcond1073.not.7, label %.loopexit, label %.lr.ph918, !llvm.loop !61

._crit_edge877:                                   ; preds = %dl.exit694
  %i.pt = add nsw i32 %.0528797, -1               ; 6 uses
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pu
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !17
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %wide.trip.count952
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !17
  %i.pz = add nsw i32 %.0528797, -2               ; 2 uses
  %xtraiter1479 = and i32 %i.pt, 7                ; 3 uses
  %i.qa = icmp ult i32 %i.pz, 7
  br i1 %i.qa, label %.lr.ph.i665.epil.preheader, label %._crit_edge877.new

._crit_edge877.new:                               ; preds = %._crit_edge877
  %unroll_iter1484 = and i32 %i.pt, -8
  br label %.lr.ph.i665

.lr.ph.i665:                                      ; preds = %.lr.ph.i665, %._crit_edge877.new
  %.056.i667 = phi i32 [ %.pre1079, %._crit_edge877.new ], [ %i.qb, %.lr.ph.i665 ]
  %niter1485 = phi i32 [ 0, %._crit_edge877.new ], [ %niter1485.next.7, %.lr.ph.i665 ]
  %i.qb = sdiv i32 %.056.i667, 256                ; 3 uses
  %niter1485.next.7 = add i32 %niter1485, 8       ; 2 uses
  %niter1485.ncmp.7 = icmp eq i32 %niter1485.next.7, %unroll_iter1484
  br i1 %niter1485.ncmp.7, label %.lr.ph.i673.preheader.unr-lcssa, label %.lr.ph.i665

.lr.ph.i673.preheader.unr-lcssa:                  ; preds = %.lr.ph.i665
  %lcmp.mod1481.not = icmp eq i32 %xtraiter1479, 0
  br i1 %lcmp.mod1481.not, label %.lr.ph.i673.preheader, label %.lr.ph.i665.epil.preheader

.lr.ph.i665.epil.preheader:                       ; preds = %.lr.ph.i673.preheader.unr-lcssa, %._crit_edge877
  %.056.i667.epil.init = phi i32 [ %.pre1079, %._crit_edge877 ], [ %i.qb, %.lr.ph.i673.preheader.unr-lcssa ]
  %lcmp.mod1483 = icmp ne i32 %xtraiter1479, 0
  tail call void @llvm.assume(i1 %lcmp.mod1483)
  br label %.lr.ph.i665.epil

.lr.ph.i665.epil:                                 ; preds = %.lr.ph.i665.epil, %.lr.ph.i665.epil.preheader
  %.056.i667.epil = phi i32 [ %i.qc, %.lr.ph.i665.epil ], [ %.056.i667.epil.init, %.lr.ph.i665.epil.preheader ]
  %epil.iter1480 = phi i32 [ %epil.iter1480.next, %.lr.ph.i665.epil ], [ 0, %.lr.ph.i665.epil.preheader ]
  %i.qc = sdiv i32 %.056.i667.epil, 2             ; 2 uses
  %epil.iter1480.next = add i32 %epil.iter1480, 1 ; 2 uses
  %epil.iter1480.cmp.not = icmp eq i32 %epil.iter1480.next, %xtraiter1479
  br i1 %epil.iter1480.cmp.not, label %.lr.ph.i673.preheader, label %.lr.ph.i665.epil, !llvm.loop !62

.lr.ph.i673.preheader:                            ; preds = %.lr.ph.i665.epil, %.lr.ph.i673.preheader.unr-lcssa
  %.lcssa1413.a = phi i32 [ %i.qb, %.lr.ph.i673.preheader.unr-lcssa ], [ %i.qc, %.lr.ph.i665.epil ]
  %xtraiter1486 = and i32 %i.pt, 7                ; 3 uses
  %i.qd = icmp ult i32 %i.pz, 7
  br i1 %i.qd, label %.lr.ph.i673.epil.preheader, label %.lr.ph.i673.preheader.new

.lr.ph.i673.preheader.new:                        ; preds = %.lr.ph.i673.preheader
  %unroll_iter1491 = and i32 %i.pt, -8
  br label %.lr.ph.i673

._crit_edge.loopexit.i677.unr-lcssa:              ; preds = %.lr.ph.i673
  %lcmp.mod1488.not = icmp eq i32 %xtraiter1486, 0
  br i1 %lcmp.mod1488.not, label %._crit_edge.loopexit.i677, label %.lr.ph.i673.epil.preheader

.lr.ph.i673.epil.preheader:                       ; preds = %._crit_edge.loopexit.i677.unr-lcssa, %.lr.ph.i673.preheader
  %.056.i675.epil.init = phi i32 [ %.pre1081, %.lr.ph.i673.preheader ], [ %i.qh, %._crit_edge.loopexit.i677.unr-lcssa ]
  %lcmp.mod1490 = icmp ne i32 %xtraiter1486, 0
  tail call void @llvm.assume(i1 %lcmp.mod1490)
  br label %.lr.ph.i673.epil

.lr.ph.i673.epil:                                 ; preds = %.lr.ph.i673.epil, %.lr.ph.i673.epil.preheader
  %.056.i675.epil = phi i32 [ %i.qe, %.lr.ph.i673.epil ], [ %.056.i675.epil.init, %.lr.ph.i673.epil.preheader ]
  %epil.iter1487 = phi i32 [ %epil.iter1487.next, %.lr.ph.i673.epil ], [ 0, %.lr.ph.i673.epil.preheader ]
end_hunk_0
begin_hunk_1_@local_laplacian_internal:bb.a
  %i.xh = sdiv i32 %.056.i715, 256                ; 3 uses
  %niter1615.next.7 = add i64 %niter1615, 8       ; 2 uses
  %niter1615.ncmp.7 = icmp eq i64 %niter1615.next.7, %unroll_iter1614
  br i1 %niter1615.ncmp.7, label %.lr.ph.i721.preheader.unr-lcssa, label %.lr.ph.i713

.lr.ph.i721.preheader.unr-lcssa:                  ; preds = %.lr.ph.i713
  %lcmp.mod1611.not = icmp eq i64 %xtraiter1609, 0
  br i1 %lcmp.mod1611.not, label %.lr.ph.i721.preheader, label %.lr.ph.i713.epil.preheader

.lr.ph.i713.epil.preheader:                       ; preds = %.lr.ph.i721.preheader.unr-lcssa, %.lr.ph.i713.preheader
  %.056.i715.epil.init = phi i32 [ %.pre1079, %.lr.ph.i713.preheader ], [ %i.xh, %.lr.ph.i721.preheader.unr-lcssa ]
  %lcmp.mod1613 = icmp ne i64 %xtraiter1609, 0
  tail call void @llvm.assume(i1 %lcmp.mod1613)
  br label %.lr.ph.i713.epil

.lr.ph.i713.epil:                                 ; preds = %.lr.ph.i713.epil, %.lr.ph.i713.epil.preheader
  %.056.i715.epil = phi i32 [ %i.xi, %.lr.ph.i713.epil ], [ %.056.i715.epil.init, %.lr.ph.i713.epil.preheader ]
  %epil.iter1610 = phi i64 [ %epil.iter1610.next, %.lr.ph.i713.epil ], [ 0, %.lr.ph.i713.epil.preheader ]
  %i.xi = sdiv i32 %.056.i715.epil, 2             ; 2 uses
  %epil.iter1610.next = add i64 %epil.iter1610, 1 ; 2 uses
  %epil.iter1610.cmp.not = icmp eq i64 %epil.iter1610.next, %xtraiter1609
  br i1 %epil.iter1610.cmp.not, label %.lr.ph.i721.preheader, label %.lr.ph.i713.epil, !llvm.loop !82

.lr.ph.i721.preheader:                            ; preds = %.lr.ph.i713.epil, %.lr.ph.i721.preheader.unr-lcssa
  %.lcssa1393 = phi i32 [ %i.xh, %.lr.ph.i721.preheader.unr-lcssa ], [ %i.xi, %.lr.ph.i713.epil ]
  %xtraiter1616 = and i64 %indvar1607, 7          ; 3 uses
  %i.xj = icmp ult i64 %i.xb, 7
  br i1 %i.xj, label %.lr.ph.i721.epil.preheader, label %.lr.ph.i721.preheader.new

.lr.ph.i721.preheader.new:                        ; preds = %.lr.ph.i721.preheader
  %unroll_iter1621 = and i64 %indvar1607, -8
  br label %.lr.ph.i721

._crit_edge.loopexit.i725.unr-lcssa:              ; preds = %.lr.ph.i721
  %lcmp.mod1618.not = icmp eq i64 %xtraiter1616, 0
  br i1 %lcmp.mod1618.not, label %._crit_edge.loopexit.i725, label %.lr.ph.i721.epil.preheader

.lr.ph.i721.epil.preheader:                       ; preds = %._crit_edge.loopexit.i725.unr-lcssa, %.lr.ph.i721.preheader
  %.056.i723.epil.init = phi i32 [ %.pre1081, %.lr.ph.i721.preheader ], [ %i.xn, %._crit_edge.loopexit.i725.unr-lcssa ]
  %lcmp.mod1620 = icmp ne i64 %xtraiter1616, 0
  tail call void @llvm.assume(i1 %lcmp.mod1620)
  br label %.lr.ph.i721.epil

.lr.ph.i721.epil:                                 ; preds = %.lr.ph.i721.epil, %.lr.ph.i721.epil.preheader
  %.056.i723.epil = phi i32 [ %i.xk, %.lr.ph.i721.epil ], [ %.056.i723.epil.init, %.lr.ph.i721.epil.preheader ]
  %epil.iter1617 = phi i64 [ %epil.iter1617.next, %.lr.ph.i721.epil ], [ 0, %.lr.ph.i721.epil.preheader ]
  %i.xk = sdiv i32 %.056.i723.epil, 2             ; 2 uses
  %epil.iter1617.next = add i64 %epil.iter1617, 1 ; 2 uses
  %epil.iter1617.cmp.not = icmp eq i64 %epil.iter1617.next, %xtraiter1616
  br i1 %epil.iter1617.cmp.not, label %._crit_edge.loopexit.i725, label %.lr.ph.i721.epil, !llvm.loop !83

._crit_edge.loopexit.i725:                        ; preds = %.lr.ph.i721.epil, %._crit_edge.loopexit.i725.unr-lcssa
  %.lcssa1394 = phi i32 [ %i.xn, %._crit_edge.loopexit.i725.unr-lcssa ], [ %i.xk, %.lr.ph.i721.epil ]
  %i.xl = add nsw i32 %.lcssa1393, 1
  %i.xm = add nsw i32 %.lcssa1394, 1
  br label %dl.exit726

.lr.ph.i721:                                      ; preds = %.lr.ph.i721, %.lr.ph.i721.preheader.new
  %.056.i723 = phi i32 [ %.pre1081, %.lr.ph.i721.preheader.new ], [ %i.xn, %.lr.ph.i721 ]
  %niter1622 = phi i64 [ 0, %.lr.ph.i721.preheader.new ], [ %niter1622.next.7, %.lr.ph.i721 ]
  %i.xn = sdiv i32 %.056.i723, 256                ; 3 uses
  %niter1622.next.7 = add i64 %niter1622, 8       ; 2 uses
  %niter1622.ncmp.7 = icmp eq i64 %niter1622.next.7, %unroll_iter1621
  br i1 %niter1622.ncmp.7, label %._crit_edge.loopexit.i725.unr-lcssa, label %.lr.ph.i721

dl.exit726:                                       ; preds = %.lr.ph884, %._crit_edge.loopexit.i725
  %.in831 = phi i32 [ %i.xl, %._crit_edge.loopexit.i725 ], [ %.pre, %.lr.ph884 ]
  %.05.lcssa.i719 = phi i32 [ %i.xm, %._crit_edge.loopexit.i725 ], [ %.pre1074, %.lr.ph884 ]
  %i.xo = sext i32 %.in831 to i64
  %i.xp = sext i32 %.05.lcssa.i719 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.xa, ptr noundef %i.xe, i64 noundef %i.xo, i64 noundef %i.xp)
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1 ; 2 uses
  %exitcond1012.not = icmp eq i64 %indvars.iv.next1009, %wide.trip.count947.pre-phi
  %indvar.next1608 = add i64 %indvar1607, 1
  br i1 %exitcond1012.not, label %._crit_edge885, label %.lr.ph884

bb.aa:                                            ; preds = %bb.z
  %i.xq = load i32, ptr %8, align 8, !tbaa !18
  %i.xr = icmp eq i32 %i.xq, 2
  br i1 %i.xr, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.xs = uitofp nneg i32 %.0528797 to float
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.xs) ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !26
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !28
  %i.xx = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !29
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !30
  %i.yb = sitofp reassoc nsz arcp contract afn i32 %i.ya to float
  %i.yc = fmul reassoc nsz arcp contract afn float %i.xw, %i.yb
  %i.yd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !111
  %i.yf = sitofp reassoc nsz arcp contract afn i32 %i.ye to float
  %i.yg = fmul reassoc nsz arcp contract afn float %exp2, %i.yf
  %i.yh = fdiv reassoc nsz arcp contract afn float %i.yg, %i.yc
  %i.yi = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !16 ; 2 uses
  %i.yk = add nsw i32 %i.yj, -1
  %i.yl = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.yh) ; 2 uses
  %i.ym = insertelement <2 x float> poison, float %i.yl, i64 0
  %i.yn = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yo = fadd reassoc nsz arcp contract afn <2 x float> %i.yn, <float -0.000000e+00, float 1.000000e+00>
  %i.yp = fptosi <2 x float> %i.yo to <2 x i32>   ; 2 uses
  %i.yq = insertelement <2 x i32> poison, i32 %i.yj, i64 0
  %i.yr = shufflevector <2 x i32> %i.yq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ys = icmp sgt <2 x i32> %i.yr, %i.yp
  %i.yt = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.yp, <2 x i32> zeroinitializer)
  %i.yu = insertelement <2 x i32> poison, i32 %i.yk, i64 0
  %i.yv = shufflevector <2 x i32> %i.yu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.yw = select <2 x i1> %i.ys, <2 x i32> %i.yt, <2 x i32> %i.yv ; 3 uses
  %i.yx = extractelement <2 x i32> %i.yw, i64 0   ; 10 uses
  %i.yy = sitofp reassoc nsz arcp contract afn i32 %i.yx to float
  %i.yz = fsub reassoc nsz arcp contract afn float %i.yl, %i.yy ; 3 uses
  %i.za = fcmp reassoc nsz arcp contract afn ogt float %i.yz, 1.000000e+00
  %i.zb = fcmp reassoc nsz arcp contract afn olt float %i.yz, 0.000000e+00
  %i.zc = select reassoc nsz arcp contract afn i1 %i.zb, float 0.000000e+00, float %i.yz
  %i.zd = select reassoc nsz arcp contract afn i1 %i.za, float 1.000000e+00, float %i.zc
  %i.ze = tail call reassoc nnan nsz arcp contract afn <2 x float> @llvm.ldexp.v2f32.v2i32(<2 x float> splat (float 1.000000e+00), <2 x i32> %i.yw)
  %i.zf = fdiv reassoc nnan nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ze
  %i.zg = shufflevector <2 x float> %i.zf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.zh = icmp sgt i32 %.0528797, 0
  br i1 %i.zh, label %.lr.ph.i729.preheader, label %dl.exit742

.lr.ph.i729.preheader:                            ; preds = %bb.ab
  %xtraiter1623 = and i32 %.0528797, 7            ; 3 uses
  %i.zi = icmp ult i32 %.0528797, 8
  br i1 %i.zi, label %.lr.ph.i729.epil.preheader, label %.lr.ph.i729.preheader.new

.lr.ph.i729.preheader.new:                        ; preds = %.lr.ph.i729.preheader
  %unroll_iter1628 = and i32 %.0528797, 2147483640
  br label %.lr.ph.i729

.lr.ph.i729:                                      ; preds = %.lr.ph.i729, %.lr.ph.i729.preheader.new
  %.056.i731 = phi i32 [ %.pre1079, %.lr.ph.i729.preheader.new ], [ %i.zj, %.lr.ph.i729 ]
  %niter1629 = phi i32 [ 0, %.lr.ph.i729.preheader.new ], [ %niter1629.next.7, %.lr.ph.i729 ]
  %i.zj = sdiv i32 %.056.i731, 256                ; 3 uses
  %niter1629.next.7 = add nuw nsw i32 %niter1629, 8 ; 2 uses
  %niter1629.ncmp.7 = icmp eq i32 %niter1629.next.7, %unroll_iter1628
  br i1 %niter1629.ncmp.7, label %.lr.ph.i737.preheader.unr-lcssa, label %.lr.ph.i729

.lr.ph.i737.preheader.unr-lcssa:                  ; preds = %.lr.ph.i729
  %lcmp.mod1625.not = icmp eq i32 %xtraiter1623, 0
  br i1 %lcmp.mod1625.not, label %.lr.ph.i737.preheader, label %.lr.ph.i729.epil.preheader

.lr.ph.i729.epil.preheader:                       ; preds = %.lr.ph.i737.preheader.unr-lcssa, %.lr.ph.i729.preheader
  %.056.i731.epil.init = phi i32 [ %.pre1079, %.lr.ph.i729.preheader ], [ %i.zj, %.lr.ph.i737.preheader.unr-lcssa ]
  %lcmp.mod1627 = icmp ne i32 %xtraiter1623, 0
  tail call void @llvm.assume(i1 %lcmp.mod1627)
  br label %.lr.ph.i729.epil

.lr.ph.i729.epil:                                 ; preds = %.lr.ph.i729.epil, %.lr.ph.i729.epil.preheader
  %.056.i731.epil = phi i32 [ %i.zk, %.lr.ph.i729.epil ], [ %.056.i731.epil.init, %.lr.ph.i729.epil.preheader ]
  %epil.iter1624 = phi i32 [ %epil.iter1624.next, %.lr.ph.i729.epil ], [ 0, %.lr.ph.i729.epil.preheader ]
  %i.zk = sdiv i32 %.056.i731.epil, 2             ; 2 uses
  %epil.iter1624.next = add i32 %epil.iter1624, 1 ; 2 uses
  %epil.iter1624.cmp.not = icmp eq i32 %epil.iter1624.next, %xtraiter1623
  br i1 %epil.iter1624.cmp.not, label %.lr.ph.i737.preheader, label %.lr.ph.i729.epil, !llvm.loop !84

.lr.ph.i737.preheader:                            ; preds = %.lr.ph.i729.epil, %.lr.ph.i737.preheader.unr-lcssa
  %.lcssa1392 = phi i32 [ %i.zj, %.lr.ph.i737.preheader.unr-lcssa ], [ %i.zk, %.lr.ph.i729.epil ]
  %xtraiter1630 = and i32 %.0528797, 7            ; 3 uses
  %i.zl = icmp ult i32 %.0528797, 8
  br i1 %i.zl, label %.lr.ph.i737.epil.preheader, label %.lr.ph.i737.preheader.new

.lr.ph.i737.preheader.new:                        ; preds = %.lr.ph.i737.preheader
  %unroll_iter1635 = and i32 %.0528797, 2147483640
  br label %.lr.ph.i737

._crit_edge.loopexit.i741.unr-lcssa:              ; preds = %.lr.ph.i737
  %lcmp.mod1632.not = icmp eq i32 %xtraiter1630, 0
  br i1 %lcmp.mod1632.not, label %._crit_edge.loopexit.i741, label %.lr.ph.i737.epil.preheader

.lr.ph.i737.epil.preheader:                       ; preds = %._crit_edge.loopexit.i741.unr-lcssa, %.lr.ph.i737.preheader
  %.056.i739.epil.init = phi i32 [ %.pre1081, %.lr.ph.i737.preheader ], [ %i.zp, %._crit_edge.loopexit.i741.unr-lcssa ]
  %lcmp.mod1634 = icmp ne i32 %xtraiter1630, 0
  tail call void @llvm.assume(i1 %lcmp.mod1634)
  br label %.lr.ph.i737.epil

.lr.ph.i737.epil:                                 ; preds = %.lr.ph.i737.epil, %.lr.ph.i737.epil.preheader
  %.056.i739.epil = phi i32 [ %i.zm, %.lr.ph.i737.epil ], [ %.056.i739.epil.init, %.lr.ph.i737.epil.preheader ]
  %epil.iter1631 = phi i32 [ %epil.iter1631.next, %.lr.ph.i737.epil ], [ 0, %.lr.ph.i737.epil.preheader ]
  %i.zm = sdiv i32 %.056.i739.epil, 2             ; 2 uses
  %epil.iter1631.next = add i32 %epil.iter1631, 1 ; 2 uses
  %epil.iter1631.cmp.not = icmp eq i32 %epil.iter1631.next, %xtraiter1630
  br i1 %epil.iter1631.cmp.not, label %._crit_edge.loopexit.i741, label %.lr.ph.i737.epil, !llvm.loop !85

._crit_edge.loopexit.i741:                        ; preds = %.lr.ph.i737.epil, %._crit_edge.loopexit.i741.unr-lcssa
  %.lcssa1391 = phi i32 [ %i.zp, %._crit_edge.loopexit.i741.unr-lcssa ], [ %i.zm, %.lr.ph.i737.epil ]
  %i.zn = add nsw i32 %.lcssa1392, 1
  %i.zo = add nsw i32 %.lcssa1391, 1
  br label %dl.exit742

.lr.ph.i737:                                      ; preds = %.lr.ph.i737, %.lr.ph.i737.preheader.new
  %.056.i739 = phi i32 [ %.pre1081, %.lr.ph.i737.preheader.new ], [ %i.zp, %.lr.ph.i737 ]
  %niter1636 = phi i32 [ 0, %.lr.ph.i737.preheader.new ], [ %niter1636.next.7, %.lr.ph.i737 ]
  %i.zp = sdiv i32 %.056.i739, 256                ; 3 uses
  %niter1636.next.7 = add i32 %niter1636, 8       ; 2 uses
  %niter1636.ncmp.7 = icmp eq i32 %niter1636.next.7, %unroll_iter1635
  br i1 %niter1636.ncmp.7, label %._crit_edge.loopexit.i741.unr-lcssa, label %.lr.ph.i737

dl.exit742:                                       ; preds = %bb.ab, %._crit_edge.loopexit.i741
  %.05.lcssa.i727813 = phi i32 [ %i.zn, %._crit_edge.loopexit.i741 ], [ %.pre, %bb.ab ] ; 4 uses
  %.05.lcssa.i735 = phi i32 [ %i.zo, %._crit_edge.loopexit.i741 ], [ %.pre1074, %bb.ab ] ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 8, !tbaa !112 ; 4 uses
  %i.zs = icmp sgt i32 %i.yx, 0
  br i1 %i.zs, label %.lr.ph.preheader.i744, label %dl.exit750

.lr.ph.preheader.i744:                            ; preds = %dl.exit742
  %i.zt = add nsw i32 %i.zr, -1                   ; 2 uses
  %xtraiter1637 = and i32 %i.yx, 7                ; 3 uses
  %i.zu = icmp ult i32 %i.yx, 8
  br i1 %i.zu, label %.lr.ph.i745.epil.preheader, label %.lr.ph.preheader.i744.new

.lr.ph.preheader.i744.new:                        ; preds = %.lr.ph.preheader.i744
  %unroll_iter1642 = and i32 %i.yx, 2147483640
  br label %.lr.ph.i745

.lr.ph.i745:                                      ; preds = %.lr.ph.i745, %.lr.ph.preheader.i744.new
  %.056.i747 = phi i32 [ %i.zt, %.lr.ph.preheader.i744.new ], [ %i.zv, %.lr.ph.i745 ]
  %niter1643 = phi i32 [ 0, %.lr.ph.preheader.i744.new ], [ %niter1643.next.7, %.lr.ph.i745 ]
  %i.zv = sdiv i32 %.056.i747, 256                ; 3 uses
  %niter1643.next.7 = add nuw nsw i32 %niter1643, 8 ; 2 uses
  %niter1643.ncmp.7 = icmp eq i32 %niter1643.next.7, %unroll_iter1642
  br i1 %niter1643.ncmp.7, label %.lr.ph.preheader.i752.unr-lcssa, label %.lr.ph.i745

dl.exit750:                                       ; preds = %dl.exit742
  %i.zw = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !113 ; 2 uses
  br label %dl.exit758

.lr.ph.preheader.i752.unr-lcssa:                  ; preds = %.lr.ph.i745
  %lcmp.mod1639.not = icmp eq i32 %xtraiter1637, 0
  br i1 %lcmp.mod1639.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil.preheader

.lr.ph.i745.epil.preheader:                       ; preds = %.lr.ph.preheader.i752.unr-lcssa, %.lr.ph.preheader.i744
  %.056.i747.epil.init = phi i32 [ %i.zt, %.lr.ph.preheader.i744 ], [ %i.zv, %.lr.ph.preheader.i752.unr-lcssa ]
  %lcmp.mod1641 = icmp ne i32 %xtraiter1637, 0
  tail call void @llvm.assume(i1 %lcmp.mod1641)
  br label %.lr.ph.i745.epil

.lr.ph.i745.epil:                                 ; preds = %.lr.ph.i745.epil, %.lr.ph.i745.epil.preheader
  %.056.i747.epil = phi i32 [ %i.zy, %.lr.ph.i745.epil ], [ %.056.i747.epil.init, %.lr.ph.i745.epil.preheader ]
  %epil.iter1638 = phi i32 [ %epil.iter1638.next, %.lr.ph.i745.epil ], [ 0, %.lr.ph.i745.epil.preheader ]
  %i.zy = sdiv i32 %.056.i747.epil, 2             ; 2 uses
  %epil.iter1638.next = add i32 %epil.iter1638, 1 ; 2 uses
  %epil.iter1638.cmp.not = icmp eq i32 %epil.iter1638.next, %xtraiter1637
  br i1 %epil.iter1638.cmp.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil, !llvm.loop !86

.lr.ph.preheader.i752:                            ; preds = %.lr.ph.i745.epil, %.lr.ph.preheader.i752.unr-lcssa
  %.lcssa1390 = phi i32 [ %i.zv, %.lr.ph.preheader.i752.unr-lcssa ], [ %i.zy, %.lr.ph.i745.epil ]
  %i.zz = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !113 ; 2 uses
  %i.aab = add nsw i32 %i.aaa, -1                 ; 2 uses
  %xtraiter1644 = and i32 %i.yx, 7                ; 3 uses
  %i.aac = icmp ult i32 %i.yx, 8
  br i1 %i.aac, label %.lr.ph.i753.epil.preheader, label %.lr.ph.preheader.i752.new

.lr.ph.preheader.i752.new:                        ; preds = %.lr.ph.preheader.i752
  %unroll_iter1649 = and i32 %i.yx, 2147483640
  br label %.lr.ph.i753

._crit_edge.loopexit.i757.unr-lcssa:              ; preds = %.lr.ph.i753
  %lcmp.mod1646.not = icmp eq i32 %xtraiter1644, 0
  br i1 %lcmp.mod1646.not, label %._crit_edge.loopexit.i757, label %.lr.ph.i753.epil.preheader

.lr.ph.i753.epil.preheader:                       ; preds = %._crit_edge.loopexit.i757.unr-lcssa, %.lr.ph.preheader.i752
  %.056.i755.epil.init = phi i32 [ %i.aab, %.lr.ph.preheader.i752 ], [ %i.aag, %._crit_edge.loopexit.i757.unr-lcssa ]
  %lcmp.mod1648 = icmp ne i32 %xtraiter1644, 0
  tail call void @llvm.assume(i1 %lcmp.mod1648)
  br label %.lr.ph.i753.epil

.lr.ph.i753.epil:                                 ; preds = %.lr.ph.i753.epil, %.lr.ph.i753.epil.preheader
  %.056.i755.epil = phi i32 [ %i.aad, %.lr.ph.i753.epil ], [ %.056.i755.epil.init, %.lr.ph.i753.epil.preheader ]
  %epil.iter1645 = phi i32 [ %epil.iter1645.next, %.lr.ph.i753.epil ], [ 0, %.lr.ph.i753.epil.preheader ]
  %i.aad = sdiv i32 %.056.i755.epil, 2            ; 2 uses
  %epil.iter1645.next = add i32 %epil.iter1645, 1 ; 2 uses
  %epil.iter1645.cmp.not = icmp eq i32 %epil.iter1645.next, %xtraiter1644
  br i1 %epil.iter1645.cmp.not, label %._crit_edge.loopexit.i757, label %.lr.ph.i753.epil, !llvm.loop !87

._crit_edge.loopexit.i757:                        ; preds = %.lr.ph.i753.epil, %._crit_edge.loopexit.i757.unr-lcssa
  %.lcssa1389 = phi i32 [ %i.aag, %._crit_edge.loopexit.i757.unr-lcssa ], [ %i.aad, %.lr.ph.i753.epil ]
  %i.aae = add nsw i32 %.lcssa1390, 1
  %i.aaf = add nsw i32 %.lcssa1389, 1
  br label %dl.exit758

.lr.ph.i753:                                      ; preds = %.lr.ph.i753, %.lr.ph.preheader.i752.new
  %.056.i755 = phi i32 [ %i.aab, %.lr.ph.preheader.i752.new ], [ %i.aag, %.lr.ph.i753 ]
  %niter1650 = phi i32 [ 0, %.lr.ph.preheader.i752.new ], [ %niter1650.next.7, %.lr.ph.i753 ]
  %i.aag = sdiv i32 %.056.i755, 256               ; 3 uses
  %niter1650.next.7 = add i32 %niter1650, 8       ; 2 uses
  %niter1650.ncmp.7 = icmp eq i32 %niter1650.next.7, %unroll_iter1649
  br i1 %niter1650.ncmp.7, label %._crit_edge.loopexit.i757.unr-lcssa, label %.lr.ph.i753

dl.exit758:                                       ; preds = %dl.exit750, %._crit_edge.loopexit.i757
  %i.aah = phi i32 [ %i.zx, %dl.exit750 ], [ %i.aaa, %._crit_edge.loopexit.i757 ] ; 2 uses
  %i.aai = phi ptr [ %i.zw, %dl.exit750 ], [ %i.zz, %._crit_edge.loopexit.i757 ]
  %.05.lcssa.i743816 = phi i32 [ %i.zr, %dl.exit750 ], [ %i.aae, %._crit_edge.loopexit.i757 ] ; 5 uses
  %.05.lcssa.i751 = phi i32 [ %i.zx, %dl.exit750 ], [ %i.aaf, %._crit_edge.loopexit.i757 ] ; 3 uses
  %i.aaj = extractelement <2 x i32> %i.yw, i64 1  ; 8 uses
  %i.aak = icmp sgt i32 %i.aaj, 0
  br i1 %i.aak, label %.lr.ph.preheader.i760, label %dl.exit774

.lr.ph.preheader.i760:                            ; preds = %dl.exit758
  %i.aal = add nsw i32 %i.zr, -1                  ; 2 uses
  %xtraiter1651 = and i32 %i.aaj, 7               ; 3 uses
  %i.aam = icmp ult i32 %i.aaj, 8
  br i1 %i.aam, label %.lr.ph.i761.epil.preheader, label %.lr.ph.preheader.i760.new

.lr.ph.preheader.i760.new:                        ; preds = %.lr.ph.preheader.i760
  %unroll_iter1656 = and i32 %i.aaj, 2147483640
  br label %.lr.ph.i761

.lr.ph.i761:                                      ; preds = %.lr.ph.i761, %.lr.ph.preheader.i760.new
  %.056.i763 = phi i32 [ %i.aal, %.lr.ph.preheader.i760.new ], [ %i.aan, %.lr.ph.i761 ]
  %niter1657 = phi i32 [ 0, %.lr.ph.preheader.i760.new ], [ %niter1657.next.7, %.lr.ph.i761 ]
  %i.aan = sdiv i32 %.056.i763, 256               ; 3 uses
  %niter1657.next.7 = add nuw nsw i32 %niter1657, 8 ; 2 uses
  %niter1657.ncmp.7 = icmp eq i32 %niter1657.next.7, %unroll_iter1656
  br i1 %niter1657.ncmp.7, label %.lr.ph.preheader.i768.unr-lcssa, label %.lr.ph.i761

.lr.ph.preheader.i768.unr-lcssa:                  ; preds = %.lr.ph.i761
  %lcmp.mod1653.not = icmp eq i32 %xtraiter1651, 0
  br i1 %lcmp.mod1653.not, label %.lr.ph.preheader.i768, label %.lr.ph.i761.epil.preheader

.lr.ph.i761.epil.preheader:                       ; preds = %.lr.ph.preheader.i768.unr-lcssa, %.lr.ph.preheader.i760
  %.056.i763.epil.init = phi i32 [ %i.aal, %.lr.ph.preheader.i760 ], [ %i.aan, %.lr.ph.preheader.i768.unr-lcssa ]
  %lcmp.mod1655 = icmp ne i32 %xtraiter1651, 0
  tail call void @llvm.assume(i1 %lcmp.mod1655)
  br label %.lr.ph.i761.epil

.lr.ph.i761.epil:                                 ; preds = %.lr.ph.i761.epil, %.lr.ph.i761.epil.preheader
  %.056.i763.epil = phi i32 [ %i.aao, %.lr.ph.i761.epil ], [ %.056.i763.epil.init, %.lr.ph.i761.epil.preheader ]
  %epil.iter1652 = phi i32 [ %epil.iter1652.next, %.lr.ph.i761.epil ], [ 0, %.lr.ph.i761.epil.preheader ]
  %i.aao = sdiv i32 %.056.i763.epil, 2            ; 2 uses
  %epil.iter1652.next = add i32 %epil.iter1652, 1 ; 2 uses
  %epil.iter1652.cmp.not = icmp eq i32 %epil.iter1652.next, %xtraiter1651
  br i1 %epil.iter1652.cmp.not, label %.lr.ph.preheader.i768, label %.lr.ph.i761.epil, !llvm.loop !88

.lr.ph.preheader.i768:                            ; preds = %.lr.ph.i761.epil, %.lr.ph.preheader.i768.unr-lcssa
  %.lcssa1388 = phi i32 [ %i.aan, %.lr.ph.preheader.i768.unr-lcssa ], [ %i.aao, %.lr.ph.i761.epil ]
  %i.aap = add nsw i32 %i.aah, -1                 ; 2 uses
  %xtraiter1658 = and i32 %i.aaj, 7               ; 3 uses
  %i.aaq = icmp ult i32 %i.aaj, 8
  br i1 %i.aaq, label %.lr.ph.i769.epil.preheader, label %.lr.ph.preheader.i768.new

.lr.ph.preheader.i768.new:                        ; preds = %.lr.ph.preheader.i768
  %unroll_iter1663 = and i32 %i.aaj, 2147483640
  br label %.lr.ph.i769

._crit_edge.loopexit.i773.unr-lcssa:              ; preds = %.lr.ph.i769
  %lcmp.mod1660.not = icmp eq i32 %xtraiter1658, 0
  br i1 %lcmp.mod1660.not, label %._crit_edge.loopexit.i773, label %.lr.ph.i769.epil.preheader

.lr.ph.i769.epil.preheader:                       ; preds = %._crit_edge.loopexit.i773.unr-lcssa, %.lr.ph.preheader.i768
  %.056.i771.epil.init = phi i32 [ %i.aap, %.lr.ph.preheader.i768 ], [ %i.aau, %._crit_edge.loopexit.i773.unr-lcssa ]
  %lcmp.mod1662 = icmp ne i32 %xtraiter1658, 0
  tail call void @llvm.assume(i1 %lcmp.mod1662)
  br label %.lr.ph.i769.epil

.lr.ph.i769.epil:                                 ; preds = %.lr.ph.i769.epil, %.lr.ph.i769.epil.preheader
  %.056.i771.epil = phi i32 [ %i.aar, %.lr.ph.i769.epil ], [ %.056.i771.epil.init, %.lr.ph.i769.epil.preheader ]
  %epil.iter1659 = phi i32 [ %epil.iter1659.next, %.lr.ph.i769.epil ], [ 0, %.lr.ph.i769.epil.preheader ]
  %i.aar = sdiv i32 %.056.i771.epil, 2            ; 2 uses
  %epil.iter1659.next = add i32 %epil.iter1659, 1 ; 2 uses
  %epil.iter1659.cmp.not = icmp eq i32 %epil.iter1659.next, %xtraiter1658
  br i1 %epil.iter1659.cmp.not, label %._crit_edge.loopexit.i773, label %.lr.ph.i769.epil, !llvm.loop !89

._crit_edge.loopexit.i773:                        ; preds = %.lr.ph.i769.epil, %._crit_edge.loopexit.i773.unr-lcssa
  %.lcssa1387 = phi i32 [ %i.aau, %._crit_edge.loopexit.i773.unr-lcssa ], [ %i.aar, %.lr.ph.i769.epil ]
  %i.aas = add nsw i32 %.lcssa1388, 1
  %i.aat = add nsw i32 %.lcssa1387, 1
  br label %dl.exit774

.lr.ph.i769:                                      ; preds = %.lr.ph.i769, %.lr.ph.preheader.i768.new
  %.056.i771 = phi i32 [ %i.aap, %.lr.ph.preheader.i768.new ], [ %i.aau, %.lr.ph.i769 ]
  %niter1664 = phi i32 [ 0, %.lr.ph.preheader.i768.new ], [ %niter1664.next.7, %.lr.ph.i769 ]
  %i.aau = sdiv i32 %.056.i771, 256               ; 3 uses
  %niter1664.next.7 = add i32 %niter1664, 8       ; 2 uses
  %niter1664.ncmp.7 = icmp eq i32 %niter1664.next.7, %unroll_iter1663
  br i1 %niter1664.ncmp.7, label %._crit_edge.loopexit.i773.unr-lcssa, label %.lr.ph.i769

dl.exit774:                                       ; preds = %dl.exit758, %._crit_edge.loopexit.i773
  %.05.lcssa.i759819 = phi i32 [ %i.aas, %._crit_edge.loopexit.i773 ], [ %i.zr, %dl.exit758 ] ; 4 uses
  %.05.lcssa.i767 = phi i32 [ %i.aat, %._crit_edge.loopexit.i773 ], [ %i.aah, %dl.exit758 ] ; 2 uses
  %i.aav = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !159
  %.not625 = icmp eq ptr %i.aav, null
  br i1 %.not625, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %dl.exit774
  %i.aaw = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aax = sext i32 %i.yx to i64
  %i.aay = getelementptr inbounds [8 x i8], ptr %i.aaw, i64 %i.aax
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !17
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str, ptr noundef %i.aaz, i32 noundef %.05.lcssa.i743816, i32 noundef %.05.lcssa.i751, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str.2, ptr noundef %i.qi, i32 noundef %.05.lcssa.i727813, i32 noundef %.05.lcssa.i735, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %dl.exit774
  %i.aba = icmp sgt i32 %.05.lcssa.i735, 0
  br i1 %i.aba, label %.preheader848.lr.ph, label %._crit_edge891.split

.preheader848.lr.ph:                              ; preds = %bb.ad
  %i.abb = icmp sgt i32 %.05.lcssa.i727813, 0
  %i.abc = insertelement <4 x i32> poison, i32 %.05.lcssa.i767, i64 0
  %i.abd = insertelement <4 x i32> %i.abc, i32 %.05.lcssa.i759819, i64 1
  %i.abe = insertelement <4 x i32> %i.abd, i32 %.05.lcssa.i751, i64 2
  %i.abf = insertelement <4 x i32> %i.abe, i32 %.05.lcssa.i743816, i64 3
  %i.abg = add nsw <4 x i32> %i.abf, splat (i32 -1) ; 5 uses
  %i.abh = sitofp <4 x i32> %i.abg to <4 x float> ; 2 uses
  br i1 %i.abb, label %.preheader848.lr.ph.split, label %._crit_edge891.split

.preheader848.lr.ph.split:                        ; preds = %.preheader848.lr.ph
  %i.abi = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.abj = sext i32 %i.aaj to i64
  %i.abk = getelementptr inbounds [8 x i8], ptr %i.abi, i64 %i.abj
  %i.abl = sext i32 %i.yx to i64
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.abi, i64 %i.abl
  %i.abn = uitofp nneg i32 %i.ma to float         ; 2 uses
  %i.abo = load ptr, ptr %i.xt, align 8, !tbaa !26 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %i.abq = load <2 x i32>, ptr %i.abo, align 4, !tbaa !19
  %i.abr = sitofp <2 x i32> %i.abq to <2 x float> ; 2 uses
  %i.abs = extractelement <2 x float> %i.abr, i64 0
  %invariant.op = fsub reassoc nnan nsz arcp contract afn float %i.abs, %i.abn
  %i.abt = extractelement <2 x float> %i.abr, i64 1
  %invariant.op892 = fsub reassoc nnan nsz arcp contract afn float %i.abt, %i.abn
  %i.abu = load ptr, ptr %i.xx, align 8, !tbaa !29
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  %i.abw = load i32, ptr %i.zq, align 8, !tbaa !112
  %i.abx = load i32, ptr %i.aai, align 4, !tbaa !113
  %i.aby = load <2 x i32>, ptr %i.abv, align 4, !tbaa !19
  %i.abz = load <2 x i32>, ptr %i.yd, align 8, !tbaa !19 ; 3 uses
  %i.aca = extractelement <2 x i32> %i.abz, i64 0
  %i.acb = sitofp reassoc nsz arcp contract afn i32 %i.aca to float
  %i.acc = insertelement <2 x i32> poison, i32 %i.abw, i64 0
  %i.acd = insertelement <2 x i32> %i.acc, i32 %i.abx, i64 1 ; 2 uses
  %i.ace = sub nsw <2 x i32> %i.acd, %i.abz
  %i.acf = sitofp <2 x i32> %i.ace to <2 x float>
  %i.acg = sitofp <2 x i32> %i.aby to <2 x float>
  %i.ach = extractelement <2 x i32> %i.abz, i64 1
  %i.aci = sitofp reassoc nsz arcp contract afn i32 %i.ach to float
  %i.acj = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.acf, splat (float 5.000000e-01)
  %i.ack = sitofp <2 x i32> %i.acd to <2 x float> ; 2 uses
  %i.acl = load ptr, ptr %i.abm, align 8, !tbaa !17 ; 4 uses
  %i.acm = load ptr, ptr %i.abk, align 8, !tbaa !17 ; 4 uses
  %i.acn = zext nneg i32 %.05.lcssa.i727813 to i64 ; 2 uses
  %wide.trip.count1025 = zext nneg i32 %.05.lcssa.i735 to i64
  %i.aco = extractelement <4 x i32> %i.abg, i64 0 ; 3 uses
  %i.acp = extractelement <4 x i32> %i.abg, i64 1 ; 3 uses
  %i.acq = extractelement <4 x i32> %i.abg, i64 2 ; 3 uses
  %i.acr = extractelement <4 x i32> %i.abg, i64 3 ; 3 uses
  br label %.preheader848

.preheader848:                                    ; preds = %.preheader848.lr.ph.split, %._crit_edge889
  %indvars.iv1022 = phi i64 [ 0, %.preheader848.lr.ph.split ], [ %indvars.iv.next1023, %._crit_edge889 ] ; 3 uses
  %i.acs = trunc nuw nsw i64 %indvars.iv1022 to i32
  %i.act = uitofp nsz nneg i32 %i.acs to float
  %i.acu = fmul reassoc nsz arcp contract afn float %exp2, %i.act
  %.reass893 = fadd reassoc nsz arcp contract afn float %i.acu, %invariant.op892
  %i.acv = fmul reassoc nsz arcp contract afn float %.reass893, %i.aci
  %i.acw = mul nuw nsw i64 %indvars.iv1022, %i.acn
  %invariant.gep1140 = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.acw
  %i.acx = insertelement <2 x float> poison, float %i.acv, i64 1
  br label %bb.ae

._crit_edge891.split:                             ; preds = %._crit_edge889, %.preheader848.lr.ph, %bb.ad
  %i.acy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !159
  %.not626 = icmp eq ptr %i.acy, null
  br i1 %.not626, label %bb.ag, label %bb.af

._crit_edge889:                                   ; preds = %bb.ae
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1 ; 2 uses
  %exitcond1026.not = icmp eq i64 %indvars.iv.next1023, %wide.trip.count1025
  br i1 %exitcond1026.not, label %._crit_edge891.split, label %.preheader848

bb.ae:                                            ; preds = %.preheader848, %bb.ae
  %indvars.iv1017 = phi i64 [ 0, %.preheader848 ], [ %indvars.iv.next1018, %bb.ae ] ; 3 uses
  %i.acz = trunc nuw nsw i64 %indvars.iv1017 to i32
  %i.ada = uitofp nsz nneg i32 %i.acz to float
  %i.adb = fmul reassoc nsz arcp contract afn float %exp2, %i.ada
  %.reass = fadd reassoc nsz arcp contract afn float %i.adb, %invariant.op
  %i.adc = load float, ptr %i.abp, align 4, !tbaa !28
  %i.add = fmul reassoc nsz arcp contract afn float %.reass, %i.acb
  %i.ade = insertelement <2 x float> poison, float %i.adc, i64 0
  %i.adf = shufflevector <2 x float> %i.ade, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adg = fmul reassoc nsz arcp contract afn <2 x float> %i.adf, %i.acg
  %i.adh = insertelement <2 x float> %i.acx, float %i.add, i64 0
  %i.adi = fdiv reassoc nsz arcp contract afn <2 x float> %i.adh, %i.adg
  %i.adj = fadd reassoc nsz arcp contract afn <2 x float> %i.acj, %i.adi ; 3 uses
  %i.adk = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adj, %i.ack
  %i.adl = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.adj, zeroinitializer
  %i.adm = select <2 x i1> %i.adl, <2 x float> zeroinitializer, <2 x float> %i.adj
  %i.adn = select <2 x i1> %i.adk, <2 x float> %i.ack, <2 x float> %i.adm
  %i.ado = shufflevector <2 x float> %i.adn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.adp = fmul reassoc nsz arcp contract afn <4 x float> %i.ado, %i.zg ; 4 uses
  %i.adq = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.adp, %i.abh
  %i.adr = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.adp, zeroinitializer
  %i.ads = select <4 x i1> %i.adr, <4 x float> zeroinitializer, <4 x float> %i.adp
  %i.adt = select <4 x i1> %i.adq, <4 x float> %i.abh, <4 x float> %i.ads
  %i.adu = fptosi <4 x float> %i.adt to <4 x i32> ; 5 uses
  %i.adv = sitofp <4 x i32> %i.adu to <4 x float>
  %i.adw = fsub reassoc nsz arcp contract afn <4 x float> %i.adp, %i.adv ; 6 uses
  %i.adx = extractelement <4 x float> %i.adw, i64 3
  %i.ady = fcmp reassoc nsz arcp contract afn ogt float %i.adx, 1.000000e+00
  %i.adz = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.adw, zeroinitializer
  %i.aea = extractelement <4 x float> %i.adw, i64 2
  %i.aeb = fcmp reassoc nsz arcp contract afn ogt float %i.aea, 1.000000e+00
  %i.aec = extractelement <4 x float> %i.adw, i64 1
  %i.aed = fcmp reassoc nsz arcp contract afn ogt float %i.aec, 1.000000e+00
  %i.aee = extractelement <4 x float> %i.adw, i64 0
  %i.aef = fcmp reassoc nsz arcp contract afn ogt float %i.aee, 1.000000e+00
  %i.aeg = select <4 x i1> %i.adz, <4 x float> zeroinitializer, <4 x float> %i.adw ; 4 uses
  %i.aeh = extractelement <4 x float> %i.aeg, i64 3
  %i.aei = select reassoc nsz arcp contract afn i1 %i.ady, float 1.000000e+00, float %i.aeh ; 3 uses
  %i.aej = extractelement <4 x float> %i.aeg, i64 2
  %i.aek = select reassoc nsz arcp contract afn i1 %i.aeb, float 1.000000e+00, float %i.aej
  %i.ael = extractelement <4 x float> %i.aeg, i64 1
  %i.aem = select reassoc nsz arcp contract afn i1 %i.aed, float 1.000000e+00, float %i.ael ; 3 uses
  %i.aen = extractelement <4 x float> %i.aeg, i64 0
  %i.aeo = select reassoc nsz arcp contract afn i1 %i.aef, float 1.000000e+00, float %i.aen ; 2 uses
  %i.aep = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aei ; 2 uses
  %i.aeq = extractelement <4 x i32> %i.adu, i64 2 ; 4 uses
  %.not628 = icmp sgt i32 %.05.lcssa.i751, %i.aeq
  %i.aer = tail call i32 @llvm.smax.i32(i32 %i.aeq, i32 0)
  %i.aes = select i1 %.not628, i32 %i.aer, i32 %i.acq
  %i.aet = mul nsw i32 %i.aes, %.05.lcssa.i743816 ; 2 uses
  %i.aeu = extractelement <4 x i32> %i.adu, i64 3 ; 4 uses
  %.not629 = icmp sgt i32 %.05.lcssa.i743816, %i.aeu
  %i.aev = tail call i32 @llvm.smax.i32(i32 %i.aeu, i32 0)
  %i.aew = select i1 %.not629, i32 %i.aev, i32 %i.acr ; 2 uses
  %i.aex = add nsw i32 %i.aet, %i.aew
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr inbounds [4 x i8], ptr %i.acl, i64 %i.aey
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !21
  %i.afb = fmul reassoc nsz arcp contract afn float %i.aep, %i.afa
  %.not630 = icmp sgt i32 %i.acr, %i.aeu
  %i.afc = tail call i32 @llvm.smax.i32(i32 %i.aeu, i32 -1)
  %i.afd = add nsw i32 %i.afc, 1
  %i.afe = select i1 %.not630, i32 %i.afd, i32 %i.acr ; 2 uses
  %i.aff = add nsw i32 %i.aet, %i.afe
  %i.afg = sext i32 %i.aff to i64
  %i.afh = getelementptr inbounds [4 x i8], ptr %i.acl, i64 %i.afg
  %i.afi = load float, ptr %i.afh, align 4, !tbaa !21
  %i.afj = fmul reassoc nsz arcp contract afn float %i.aei, %i.afi
  %.not631 = icmp sgt i32 %i.acq, %i.aeq
  %i.afk = tail call i32 @llvm.smax.i32(i32 %i.aeq, i32 -1)
  %i.afl = add nsw i32 %i.afk, 1
  %i.afm = select i1 %.not631, i32 %i.afl, i32 %i.acq
  %i.afn = mul nsw i32 %i.afm, %.05.lcssa.i743816 ; 2 uses
  %i.afo = add nsw i32 %i.afn, %i.aew
  %i.afp = sext i32 %i.afo to i64
  %i.afq = getelementptr inbounds [4 x i8], ptr %i.acl, i64 %i.afp
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !21
  %i.afs = fmul reassoc nsz arcp contract afn float %i.aep, %i.afr
  %i.aft = add nsw i32 %i.afn, %i.afe
  %i.afu = sext i32 %i.aft to i64
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.acl, i64 %i.afu
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !21
  %i.afx = fmul reassoc nsz arcp contract afn float %i.aei, %i.afw
  %reass.add = fadd reassoc nsz arcp contract afn float %i.afb, %i.afj ; 2 uses
  %reass.add835 = fadd reassoc nsz arcp contract afn float %i.afx, %i.afs
  %i.afy = fsub reassoc nsz arcp contract afn float %reass.add835, %reass.add
  %i.afz = fmul reassoc nsz arcp contract afn float %i.aek, %i.afy
  %i.aga = fadd reassoc nsz arcp contract afn float %reass.add, %i.afz ; 2 uses
  %i.agb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aem ; 2 uses
  %i.agc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aeo
  %i.agd = extractelement <4 x i32> %i.adu, i64 0 ; 4 uses
  %.not632 = icmp sgt i32 %.05.lcssa.i767, %i.agd
  %i.age = tail call i32 @llvm.smax.i32(i32 %i.agd, i32 0)
  %i.agf = select i1 %.not632, i32 %i.age, i32 %i.aco
  %i.agg = mul nsw i32 %i.agf, %.05.lcssa.i759819 ; 2 uses
  %i.agh = extractelement <4 x i32> %i.adu, i64 1 ; 4 uses
  %.not633 = icmp sgt i32 %.05.lcssa.i759819, %i.agh
  %i.agi = tail call i32 @llvm.smax.i32(i32 %i.agh, i32 0)
  %i.agj = select i1 %.not633, i32 %i.agi, i32 %i.acp ; 2 uses
  %i.agk = add nsw i32 %i.agg, %i.agj
  %i.agl = sext i32 %i.agk to i64
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.acm, i64 %i.agl
end_hunk_1
