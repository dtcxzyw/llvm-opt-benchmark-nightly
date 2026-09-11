Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
begin_hunk_0_@local_laplacian_internal:bb.a
  %lcmp.mod1441.not = icmp eq i64 %xtraiter1439, 0
  br i1 %lcmp.mod1441.not, label %.lr.ph.i645.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i645.preheader.unr-lcssa, %bb.j
  %.056.i.epil.init = phi i32 [ %.pre1079, %bb.j ], [ %i.md, %.lr.ph.i645.preheader.unr-lcssa ]
  %lcmp.mod1443 = icmp ne i64 %xtraiter1439, 0
  tail call void @llvm.assume(i1 %lcmp.mod1443)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.056.i.epil = phi i32 [ %i.me, %.lr.ph.i.epil ], [ %.056.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter1440 = phi i64 [ %epil.iter1440.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.me = sdiv i32 %.056.i.epil, 2                ; 2 uses
  %epil.iter1440.next = add i64 %epil.iter1440, 1 ; 2 uses
  %epil.iter1440.cmp.not = icmp eq i64 %epil.iter1440.next, %xtraiter1439
  br i1 %epil.iter1440.cmp.not, label %.lr.ph.i645.preheader, label %.lr.ph.i.epil, !llvm.loop !54

.lr.ph.i645.preheader:                            ; preds = %.lr.ph.i.epil, %.lr.ph.i645.preheader.unr-lcssa
  %.lcssa1422 = phi i32 [ %i.md, %.lr.ph.i645.preheader.unr-lcssa ], [ %i.me, %.lr.ph.i.epil ]
  %xtraiter1446 = and i64 %indvars.iv, 7          ; 3 uses
  %i.mf = icmp ult i64 %indvar, 7
  br i1 %i.mf, label %.lr.ph.i645.epil.preheader, label %.lr.ph.i645.preheader.new

.lr.ph.i645.preheader.new:                        ; preds = %.lr.ph.i645.preheader
  %unroll_iter1451 = and i64 %indvars.iv, 9223372036854775800
  br label %.lr.ph.i645

.lr.ph.i645:                                      ; preds = %.lr.ph.i645, %.lr.ph.i645.preheader.new
  %.056.i647 = phi i32 [ %.pre1081, %.lr.ph.i645.preheader.new ], [ %i.mg, %.lr.ph.i645 ]
  %niter1452 = phi i64 [ 0, %.lr.ph.i645.preheader.new ], [ %niter1452.next.7, %.lr.ph.i645 ]
  %i.mg = sdiv i32 %.056.i647, 256                ; 3 uses
  %niter1452.next.7 = add i64 %niter1452, 8       ; 2 uses
  %niter1452.ncmp.7 = icmp eq i64 %niter1452.next.7, %unroll_iter1451
  br i1 %niter1452.ncmp.7, label %dl.exit649.unr-lcssa, label %.lr.ph.i645

dl.exit649.unr-lcssa:                             ; preds = %.lr.ph.i645
  %lcmp.mod1448.not = icmp eq i64 %xtraiter1446, 0
  br i1 %lcmp.mod1448.not, label %dl.exit649, label %.lr.ph.i645.epil.preheader

.lr.ph.i645.epil.preheader:                       ; preds = %dl.exit649.unr-lcssa, %.lr.ph.i645.preheader
  %.056.i647.epil.init = phi i32 [ %.pre1081, %.lr.ph.i645.preheader ], [ %i.mg, %dl.exit649.unr-lcssa ]
  %lcmp.mod1450 = icmp ne i64 %xtraiter1446, 0
  tail call void @llvm.assume(i1 %lcmp.mod1450)
  br label %.lr.ph.i645.epil

.lr.ph.i645.epil:                                 ; preds = %.lr.ph.i645.epil, %.lr.ph.i645.epil.preheader
  %.056.i647.epil = phi i32 [ %i.mh, %.lr.ph.i645.epil ], [ %.056.i647.epil.init, %.lr.ph.i645.epil.preheader ]
  %epil.iter1447 = phi i64 [ %epil.iter1447.next, %.lr.ph.i645.epil ], [ 0, %.lr.ph.i645.epil.preheader ]
  %i.mh = sdiv i32 %.056.i647.epil, 2             ; 2 uses
  %epil.iter1447.next = add i64 %epil.iter1447, 1 ; 2 uses
  %epil.iter1447.cmp.not = icmp eq i64 %epil.iter1447.next, %xtraiter1446
  br i1 %epil.iter1447.cmp.not, label %dl.exit649, label %.lr.ph.i645.epil, !llvm.loop !55

dl.exit649:                                       ; preds = %.lr.ph.i645.epil, %dl.exit649.unr-lcssa
  %.lcssa1423 = phi i32 [ %i.mg, %dl.exit649.unr-lcssa ], [ %i.mh, %.lr.ph.i645.epil ]
  %i.mi = add nsw i32 %.lcssa1422, 1
  %i.mj = sext i32 %i.mi to i64
  %i.mk = add nsw i32 %.lcssa1423, 1
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
  %xtraiter1453 = and i64 %indvars.iv944, 7       ; 3 uses
  %i.mq = icmp samesign ult i64 %indvars.iv944, 8
  br i1 %i.mq, label %.lr.ph.i650.epil.preheader, label %.lr.ph.i650.preheader.new

.lr.ph.i650.preheader.new:                        ; preds = %.lr.ph.i650.preheader
  %unroll_iter1458 = and i64 %indvars.iv944, 9223372036854775800
  br label %.lr.ph.i650

.lr.ph.i650:                                      ; preds = %.lr.ph.i650, %.lr.ph.i650.preheader.new
  %.056.i652 = phi i32 [ %.pre1079, %.lr.ph.i650.preheader.new ], [ %i.mr, %.lr.ph.i650 ]
  %niter1459 = phi i64 [ 0, %.lr.ph.i650.preheader.new ], [ %niter1459.next.7, %.lr.ph.i650 ]
  %i.mr = sdiv i32 %.056.i652, 256                ; 3 uses
  %niter1459.next.7 = add i64 %niter1459, 8       ; 2 uses
  %niter1459.ncmp.7 = icmp eq i64 %niter1459.next.7, %unroll_iter1458
  br i1 %niter1459.ncmp.7, label %.lr.ph.i657.preheader.unr-lcssa, label %.lr.ph.i650

.lr.ph.i657.preheader.unr-lcssa:                  ; preds = %.lr.ph.i650
  %lcmp.mod1455.not = icmp eq i64 %xtraiter1453, 0
  br i1 %lcmp.mod1455.not, label %.lr.ph.i657.preheader, label %.lr.ph.i650.epil.preheader

.lr.ph.i650.epil.preheader:                       ; preds = %.lr.ph.i657.preheader.unr-lcssa, %.lr.ph.i650.preheader
  %.056.i652.epil.init = phi i32 [ %.pre1079, %.lr.ph.i650.preheader ], [ %i.mr, %.lr.ph.i657.preheader.unr-lcssa ]
  %lcmp.mod1457 = icmp ne i64 %xtraiter1453, 0
  tail call void @llvm.assume(i1 %lcmp.mod1457)
  br label %.lr.ph.i650.epil

.lr.ph.i650.epil:                                 ; preds = %.lr.ph.i650.epil, %.lr.ph.i650.epil.preheader
  %.056.i652.epil = phi i32 [ %i.ms, %.lr.ph.i650.epil ], [ %.056.i652.epil.init, %.lr.ph.i650.epil.preheader ]
  %epil.iter1454 = phi i64 [ %epil.iter1454.next, %.lr.ph.i650.epil ], [ 0, %.lr.ph.i650.epil.preheader ]
  %i.ms = sdiv i32 %.056.i652.epil, 2             ; 2 uses
  %epil.iter1454.next = add i64 %epil.iter1454, 1 ; 2 uses
  %epil.iter1454.cmp.not = icmp eq i64 %epil.iter1454.next, %xtraiter1453
  br i1 %epil.iter1454.cmp.not, label %.lr.ph.i657.preheader, label %.lr.ph.i650.epil, !llvm.loop !56

.lr.ph.i657.preheader:                            ; preds = %.lr.ph.i650.epil, %.lr.ph.i657.preheader.unr-lcssa
  %.lcssa1420 = phi i32 [ %i.mr, %.lr.ph.i657.preheader.unr-lcssa ], [ %i.ms, %.lr.ph.i650.epil ]
  %xtraiter1460 = and i64 %indvars.iv944, 7       ; 3 uses
  %i.mt = icmp samesign ult i64 %indvars.iv944, 8
  br i1 %i.mt, label %.lr.ph.i657.epil.preheader, label %.lr.ph.i657.preheader.new

.lr.ph.i657.preheader.new:                        ; preds = %.lr.ph.i657.preheader
  %unroll_iter1465 = and i64 %indvars.iv944, 9223372036854775800
  br label %.lr.ph.i657

._crit_edge.loopexit.i661.unr-lcssa:              ; preds = %.lr.ph.i657
  %lcmp.mod1462.not = icmp eq i64 %xtraiter1460, 0
  br i1 %lcmp.mod1462.not, label %._crit_edge.loopexit.i661, label %.lr.ph.i657.epil.preheader

.lr.ph.i657.epil.preheader:                       ; preds = %._crit_edge.loopexit.i661.unr-lcssa, %.lr.ph.i657.preheader
  %.056.i659.epil.init = phi i32 [ %.pre1081, %.lr.ph.i657.preheader ], [ %i.mx, %._crit_edge.loopexit.i661.unr-lcssa ]
  %lcmp.mod1464 = icmp ne i64 %xtraiter1460, 0
  tail call void @llvm.assume(i1 %lcmp.mod1464)
  br label %.lr.ph.i657.epil

.lr.ph.i657.epil:                                 ; preds = %.lr.ph.i657.epil, %.lr.ph.i657.epil.preheader
  %.056.i659.epil = phi i32 [ %i.mu, %.lr.ph.i657.epil ], [ %.056.i659.epil.init, %.lr.ph.i657.epil.preheader ]
  %epil.iter1461 = phi i64 [ %epil.iter1461.next, %.lr.ph.i657.epil ], [ 0, %.lr.ph.i657.epil.preheader ]
  %i.mu = sdiv i32 %.056.i659.epil, 2             ; 2 uses
  %epil.iter1461.next = add i64 %epil.iter1461, 1 ; 2 uses
  %epil.iter1461.cmp.not = icmp eq i64 %epil.iter1461.next, %xtraiter1460
  br i1 %epil.iter1461.cmp.not, label %._crit_edge.loopexit.i661, label %.lr.ph.i657.epil, !llvm.loop !57

._crit_edge.loopexit.i661:                        ; preds = %.lr.ph.i657.epil, %._crit_edge.loopexit.i661.unr-lcssa
  %.lcssa1421 = phi i32 [ %i.mx, %._crit_edge.loopexit.i661.unr-lcssa ], [ %i.mu, %.lr.ph.i657.epil ]
  %i.mv = add nsw i32 %.lcssa1420, 1
  %i.mw = add nsw i32 %.lcssa1421, 1
  br label %dl.exit662

.lr.ph.i657:                                      ; preds = %.lr.ph.i657, %.lr.ph.i657.preheader.new
  %.056.i659 = phi i32 [ %.pre1081, %.lr.ph.i657.preheader.new ], [ %i.mx, %.lr.ph.i657 ]
  %niter1466 = phi i64 [ 0, %.lr.ph.i657.preheader.new ], [ %niter1466.next.7, %.lr.ph.i657 ]
  %i.mx = sdiv i32 %.056.i659, 256                ; 3 uses
  %niter1466.next.7 = add i64 %niter1466, 8       ; 2 uses
  %niter1466.ncmp.7 = icmp eq i64 %niter1466.next.7, %unroll_iter1465
  br i1 %niter1466.ncmp.7, label %._crit_edge.loopexit.i661.unr-lcssa, label %.lr.ph.i657

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

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1355
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
  %xtraiter1706 = and i64 %i.no, 4                ; 2 uses
  %lcmp.mod1707.not = icmp eq i64 %xtraiter1706, 0
  br i1 %lcmp.mod1707.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol

.lr.ph918.prol:                                   ; preds = %.lr.ph918.preheader, %.lr.ph918.prol
  %.0542917.prol = phi i64 [ %i.od, %.lr.ph918.prol ], [ %.0542917.ph, %.lr.ph918.preheader ] ; 3 uses
  %prol.iter1708 = phi i64 [ %prol.iter1708.next, %.lr.ph918.prol ], [ 0, %.lr.ph918.preheader ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0542917.prol
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !21
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0542917.prol
  store float %i.ob, ptr %i.oc, align 4, !tbaa !21
  %i.od = add nuw i64 %.0542917.prol, 1           ; 2 uses
  %prol.iter1708.next = add i64 %prol.iter1708, 1 ; 2 uses
  %prol.iter1708.cmp.not = icmp eq i64 %prol.iter1708.next, %xtraiter1706
  br i1 %prol.iter1708.cmp.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol, !llvm.loop !59

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
  %xtraiter1483 = and i32 %i.pt, 7                ; 3 uses
  %i.qa = icmp ult i32 %i.pz, 7
  br i1 %i.qa, label %.lr.ph.i665.epil.preheader, label %._crit_edge877.new

._crit_edge877.new:                               ; preds = %._crit_edge877
  %unroll_iter1488 = and i32 %i.pt, -8
  br label %.lr.ph.i665

.lr.ph.i665:                                      ; preds = %.lr.ph.i665, %._crit_edge877.new
  %.056.i667 = phi i32 [ %.pre1079, %._crit_edge877.new ], [ %i.qb, %.lr.ph.i665 ]
  %niter1489 = phi i32 [ 0, %._crit_edge877.new ], [ %niter1489.next.7, %.lr.ph.i665 ]
  %i.qb = sdiv i32 %.056.i667, 256                ; 3 uses
  %niter1489.next.7 = add i32 %niter1489, 8       ; 2 uses
  %niter1489.ncmp.7 = icmp eq i32 %niter1489.next.7, %unroll_iter1488
  br i1 %niter1489.ncmp.7, label %.lr.ph.i673.preheader.unr-lcssa, label %.lr.ph.i665

.lr.ph.i673.preheader.unr-lcssa:                  ; preds = %.lr.ph.i665
  %lcmp.mod1485.not = icmp eq i32 %xtraiter1483, 0
  br i1 %lcmp.mod1485.not, label %.lr.ph.i673.preheader, label %.lr.ph.i665.epil.preheader

.lr.ph.i665.epil.preheader:                       ; preds = %.lr.ph.i673.preheader.unr-lcssa, %._crit_edge877
  %.056.i667.epil.init = phi i32 [ %.pre1079, %._crit_edge877 ], [ %i.qb, %.lr.ph.i673.preheader.unr-lcssa ]
  %lcmp.mod1487 = icmp ne i32 %xtraiter1483, 0
  tail call void @llvm.assume(i1 %lcmp.mod1487)
  br label %.lr.ph.i665.epil

.lr.ph.i665.epil:                                 ; preds = %.lr.ph.i665.epil, %.lr.ph.i665.epil.preheader
  %.056.i667.epil = phi i32 [ %i.qc, %.lr.ph.i665.epil ], [ %.056.i667.epil.init, %.lr.ph.i665.epil.preheader ]
  %epil.iter1484 = phi i32 [ %epil.iter1484.next, %.lr.ph.i665.epil ], [ 0, %.lr.ph.i665.epil.preheader ]
  %i.qc = sdiv i32 %.056.i667.epil, 2             ; 2 uses
  %epil.iter1484.next = add i32 %epil.iter1484, 1 ; 2 uses
  %epil.iter1484.cmp.not = icmp eq i32 %epil.iter1484.next, %xtraiter1483
  br i1 %epil.iter1484.cmp.not, label %.lr.ph.i673.preheader, label %.lr.ph.i665.epil, !llvm.loop !62

.lr.ph.i673.preheader:                            ; preds = %.lr.ph.i665.epil, %.lr.ph.i673.preheader.unr-lcssa
  %.lcssa1417.a = phi i32 [ %i.qb, %.lr.ph.i673.preheader.unr-lcssa ], [ %i.qc, %.lr.ph.i665.epil ]
  %xtraiter1490 = and i32 %i.pt, 7                ; 3 uses
  %i.qd = icmp ult i32 %i.pz, 7
  br i1 %i.qd, label %.lr.ph.i673.epil.preheader, label %.lr.ph.i673.preheader.new

.lr.ph.i673.preheader.new:                        ; preds = %.lr.ph.i673.preheader
  %unroll_iter1495 = and i32 %i.pt, -8
  br label %.lr.ph.i673

._crit_edge.loopexit.i677.unr-lcssa:              ; preds = %.lr.ph.i673
  %lcmp.mod1492.not = icmp eq i32 %xtraiter1490, 0
  br i1 %lcmp.mod1492.not, label %._crit_edge.loopexit.i677, label %.lr.ph.i673.epil.preheader

.lr.ph.i673.epil.preheader:                       ; preds = %._crit_edge.loopexit.i677.unr-lcssa, %.lr.ph.i673.preheader
  %.056.i675.epil.init = phi i32 [ %.pre1081, %.lr.ph.i673.preheader ], [ %i.qh, %._crit_edge.loopexit.i677.unr-lcssa ]
  %lcmp.mod1494 = icmp ne i32 %xtraiter1490, 0
  tail call void @llvm.assume(i1 %lcmp.mod1494)
  br label %.lr.ph.i673.epil

.lr.ph.i673.epil:                                 ; preds = %.lr.ph.i673.epil, %.lr.ph.i673.epil.preheader
  %.056.i675.epil = phi i32 [ %i.qe, %.lr.ph.i673.epil ], [ %.056.i675.epil.init, %.lr.ph.i673.epil.preheader ]
  %epil.iter1491 = phi i32 [ %epil.iter1491.next, %.lr.ph.i673.epil ], [ 0, %.lr.ph.i673.epil.preheader ]
end_hunk_0
begin_hunk_1_@local_laplacian_internal:bb.a
  %niter1619 = phi i64 [ 0, %.lr.ph.i713.preheader.new ], [ %niter1619.next.7, %.lr.ph.i713 ]
  %i.xh = sdiv i32 %.056.i715, 256                ; 3 uses
  %niter1619.next.7 = add i64 %niter1619, 8       ; 2 uses
  %niter1619.ncmp.7 = icmp eq i64 %niter1619.next.7, %unroll_iter1618
  br i1 %niter1619.ncmp.7, label %.lr.ph.i721.preheader.unr-lcssa, label %.lr.ph.i713

.lr.ph.i721.preheader.unr-lcssa:                  ; preds = %.lr.ph.i713
  %lcmp.mod1615.not = icmp eq i64 %xtraiter1613, 0
  br i1 %lcmp.mod1615.not, label %.lr.ph.i721.preheader, label %.lr.ph.i713.epil.preheader

.lr.ph.i713.epil.preheader:                       ; preds = %.lr.ph.i721.preheader.unr-lcssa, %.lr.ph.i713.preheader
  %.056.i715.epil.init = phi i32 [ %.pre1079, %.lr.ph.i713.preheader ], [ %i.xh, %.lr.ph.i721.preheader.unr-lcssa ]
  %lcmp.mod1617 = icmp ne i64 %xtraiter1613, 0
  tail call void @llvm.assume(i1 %lcmp.mod1617)
  br label %.lr.ph.i713.epil

.lr.ph.i713.epil:                                 ; preds = %.lr.ph.i713.epil, %.lr.ph.i713.epil.preheader
  %.056.i715.epil = phi i32 [ %i.xi, %.lr.ph.i713.epil ], [ %.056.i715.epil.init, %.lr.ph.i713.epil.preheader ]
  %epil.iter1614 = phi i64 [ %epil.iter1614.next, %.lr.ph.i713.epil ], [ 0, %.lr.ph.i713.epil.preheader ]
  %i.xi = sdiv i32 %.056.i715.epil, 2             ; 2 uses
  %epil.iter1614.next = add i64 %epil.iter1614, 1 ; 2 uses
  %epil.iter1614.cmp.not = icmp eq i64 %epil.iter1614.next, %xtraiter1613
  br i1 %epil.iter1614.cmp.not, label %.lr.ph.i721.preheader, label %.lr.ph.i713.epil, !llvm.loop !82

.lr.ph.i721.preheader:                            ; preds = %.lr.ph.i713.epil, %.lr.ph.i721.preheader.unr-lcssa
  %.lcssa1397 = phi i32 [ %i.xh, %.lr.ph.i721.preheader.unr-lcssa ], [ %i.xi, %.lr.ph.i713.epil ]
  %xtraiter1620 = and i64 %indvar1611, 7          ; 3 uses
  %i.xj = icmp ult i64 %i.xb, 7
  br i1 %i.xj, label %.lr.ph.i721.epil.preheader, label %.lr.ph.i721.preheader.new

.lr.ph.i721.preheader.new:                        ; preds = %.lr.ph.i721.preheader
  %unroll_iter1625 = and i64 %indvar1611, -8
  br label %.lr.ph.i721

._crit_edge.loopexit.i725.unr-lcssa:              ; preds = %.lr.ph.i721
  %lcmp.mod1622.not = icmp eq i64 %xtraiter1620, 0
  br i1 %lcmp.mod1622.not, label %._crit_edge.loopexit.i725, label %.lr.ph.i721.epil.preheader

.lr.ph.i721.epil.preheader:                       ; preds = %._crit_edge.loopexit.i725.unr-lcssa, %.lr.ph.i721.preheader
  %.056.i723.epil.init = phi i32 [ %.pre1081, %.lr.ph.i721.preheader ], [ %i.xn, %._crit_edge.loopexit.i725.unr-lcssa ]
  %lcmp.mod1624 = icmp ne i64 %xtraiter1620, 0
  tail call void @llvm.assume(i1 %lcmp.mod1624)
  br label %.lr.ph.i721.epil

.lr.ph.i721.epil:                                 ; preds = %.lr.ph.i721.epil, %.lr.ph.i721.epil.preheader
  %.056.i723.epil = phi i32 [ %i.xk, %.lr.ph.i721.epil ], [ %.056.i723.epil.init, %.lr.ph.i721.epil.preheader ]
  %epil.iter1621 = phi i64 [ %epil.iter1621.next, %.lr.ph.i721.epil ], [ 0, %.lr.ph.i721.epil.preheader ]
  %i.xk = sdiv i32 %.056.i723.epil, 2             ; 2 uses
  %epil.iter1621.next = add i64 %epil.iter1621, 1 ; 2 uses
  %epil.iter1621.cmp.not = icmp eq i64 %epil.iter1621.next, %xtraiter1620
  br i1 %epil.iter1621.cmp.not, label %._crit_edge.loopexit.i725, label %.lr.ph.i721.epil, !llvm.loop !83

._crit_edge.loopexit.i725:                        ; preds = %.lr.ph.i721.epil, %._crit_edge.loopexit.i725.unr-lcssa
  %.lcssa1398 = phi i32 [ %i.xn, %._crit_edge.loopexit.i725.unr-lcssa ], [ %i.xk, %.lr.ph.i721.epil ]
  %i.xl = add nsw i32 %.lcssa1397, 1
  %i.xm = add nsw i32 %.lcssa1398, 1
  br label %dl.exit726

.lr.ph.i721:                                      ; preds = %.lr.ph.i721, %.lr.ph.i721.preheader.new
  %.056.i723 = phi i32 [ %.pre1081, %.lr.ph.i721.preheader.new ], [ %i.xn, %.lr.ph.i721 ]
  %niter1626 = phi i64 [ 0, %.lr.ph.i721.preheader.new ], [ %niter1626.next.7, %.lr.ph.i721 ]
  %i.xn = sdiv i32 %.056.i723, 256                ; 3 uses
  %niter1626.next.7 = add i64 %niter1626, 8       ; 2 uses
  %niter1626.ncmp.7 = icmp eq i64 %niter1626.next.7, %unroll_iter1625
  br i1 %niter1626.ncmp.7, label %._crit_edge.loopexit.i725.unr-lcssa, label %.lr.ph.i721

dl.exit726:                                       ; preds = %.lr.ph884, %._crit_edge.loopexit.i725
  %.in831 = phi i32 [ %i.xl, %._crit_edge.loopexit.i725 ], [ %.pre, %.lr.ph884 ]
  %.05.lcssa.i719 = phi i32 [ %i.xm, %._crit_edge.loopexit.i725 ], [ %.pre1074, %.lr.ph884 ]
  %i.xo = sext i32 %.in831 to i64
  %i.xp = sext i32 %.05.lcssa.i719 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.xa, ptr noundef %i.xe, i64 noundef %i.xo, i64 noundef %i.xp)
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1 ; 2 uses
  %exitcond1012.not = icmp eq i64 %indvars.iv.next1009, %wide.trip.count947.pre-phi
  %indvar.next1612 = add i64 %indvar1611, 1
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
  %i.ze = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ldexp.v2f32.v2i32(<2 x float> splat (float 1.000000e+00), <2 x i32> %i.yw)
  %i.zf = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ze ; 2 uses
  %i.zg = icmp sgt i32 %.0528797, 0
  br i1 %i.zg, label %.lr.ph.i729.preheader, label %dl.exit742

.lr.ph.i729.preheader:                            ; preds = %bb.ab
  %xtraiter1627 = and i32 %.0528797, 7            ; 3 uses
  %i.zh = icmp ult i32 %.0528797, 8
  br i1 %i.zh, label %.lr.ph.i729.epil.preheader, label %.lr.ph.i729.preheader.new

.lr.ph.i729.preheader.new:                        ; preds = %.lr.ph.i729.preheader
  %unroll_iter1632 = and i32 %.0528797, 2147483640
  br label %.lr.ph.i729

.lr.ph.i729:                                      ; preds = %.lr.ph.i729, %.lr.ph.i729.preheader.new
  %.056.i731 = phi i32 [ %.pre1079, %.lr.ph.i729.preheader.new ], [ %i.zi, %.lr.ph.i729 ]
  %niter1633 = phi i32 [ 0, %.lr.ph.i729.preheader.new ], [ %niter1633.next.7, %.lr.ph.i729 ]
  %i.zi = sdiv i32 %.056.i731, 256                ; 3 uses
  %niter1633.next.7 = add nuw nsw i32 %niter1633, 8 ; 2 uses
  %niter1633.ncmp.7 = icmp eq i32 %niter1633.next.7, %unroll_iter1632
  br i1 %niter1633.ncmp.7, label %.lr.ph.i737.preheader.unr-lcssa, label %.lr.ph.i729

.lr.ph.i737.preheader.unr-lcssa:                  ; preds = %.lr.ph.i729
  %lcmp.mod1629.not = icmp eq i32 %xtraiter1627, 0
  br i1 %lcmp.mod1629.not, label %.lr.ph.i737.preheader, label %.lr.ph.i729.epil.preheader

.lr.ph.i729.epil.preheader:                       ; preds = %.lr.ph.i737.preheader.unr-lcssa, %.lr.ph.i729.preheader
  %.056.i731.epil.init = phi i32 [ %.pre1079, %.lr.ph.i729.preheader ], [ %i.zi, %.lr.ph.i737.preheader.unr-lcssa ]
  %lcmp.mod1631 = icmp ne i32 %xtraiter1627, 0
  tail call void @llvm.assume(i1 %lcmp.mod1631)
  br label %.lr.ph.i729.epil

.lr.ph.i729.epil:                                 ; preds = %.lr.ph.i729.epil, %.lr.ph.i729.epil.preheader
  %.056.i731.epil = phi i32 [ %i.zj, %.lr.ph.i729.epil ], [ %.056.i731.epil.init, %.lr.ph.i729.epil.preheader ]
  %epil.iter1628 = phi i32 [ %epil.iter1628.next, %.lr.ph.i729.epil ], [ 0, %.lr.ph.i729.epil.preheader ]
  %i.zj = sdiv i32 %.056.i731.epil, 2             ; 2 uses
  %epil.iter1628.next = add i32 %epil.iter1628, 1 ; 2 uses
  %epil.iter1628.cmp.not = icmp eq i32 %epil.iter1628.next, %xtraiter1627
  br i1 %epil.iter1628.cmp.not, label %.lr.ph.i737.preheader, label %.lr.ph.i729.epil, !llvm.loop !84

.lr.ph.i737.preheader:                            ; preds = %.lr.ph.i729.epil, %.lr.ph.i737.preheader.unr-lcssa
  %.lcssa1396 = phi i32 [ %i.zi, %.lr.ph.i737.preheader.unr-lcssa ], [ %i.zj, %.lr.ph.i729.epil ]
  %xtraiter1634 = and i32 %.0528797, 7            ; 3 uses
  %i.zk = icmp ult i32 %.0528797, 8
  br i1 %i.zk, label %.lr.ph.i737.epil.preheader, label %.lr.ph.i737.preheader.new

.lr.ph.i737.preheader.new:                        ; preds = %.lr.ph.i737.preheader
  %unroll_iter1639 = and i32 %.0528797, 2147483640
  br label %.lr.ph.i737

._crit_edge.loopexit.i741.unr-lcssa:              ; preds = %.lr.ph.i737
  %lcmp.mod1636.not = icmp eq i32 %xtraiter1634, 0
  br i1 %lcmp.mod1636.not, label %._crit_edge.loopexit.i741, label %.lr.ph.i737.epil.preheader

.lr.ph.i737.epil.preheader:                       ; preds = %._crit_edge.loopexit.i741.unr-lcssa, %.lr.ph.i737.preheader
  %.056.i739.epil.init = phi i32 [ %.pre1081, %.lr.ph.i737.preheader ], [ %i.zo, %._crit_edge.loopexit.i741.unr-lcssa ]
  %lcmp.mod1638 = icmp ne i32 %xtraiter1634, 0
  tail call void @llvm.assume(i1 %lcmp.mod1638)
  br label %.lr.ph.i737.epil

.lr.ph.i737.epil:                                 ; preds = %.lr.ph.i737.epil, %.lr.ph.i737.epil.preheader
  %.056.i739.epil = phi i32 [ %i.zl, %.lr.ph.i737.epil ], [ %.056.i739.epil.init, %.lr.ph.i737.epil.preheader ]
  %epil.iter1635 = phi i32 [ %epil.iter1635.next, %.lr.ph.i737.epil ], [ 0, %.lr.ph.i737.epil.preheader ]
  %i.zl = sdiv i32 %.056.i739.epil, 2             ; 2 uses
  %epil.iter1635.next = add i32 %epil.iter1635, 1 ; 2 uses
  %epil.iter1635.cmp.not = icmp eq i32 %epil.iter1635.next, %xtraiter1634
  br i1 %epil.iter1635.cmp.not, label %._crit_edge.loopexit.i741, label %.lr.ph.i737.epil, !llvm.loop !85

._crit_edge.loopexit.i741:                        ; preds = %.lr.ph.i737.epil, %._crit_edge.loopexit.i741.unr-lcssa
  %.lcssa1395 = phi i32 [ %i.zo, %._crit_edge.loopexit.i741.unr-lcssa ], [ %i.zl, %.lr.ph.i737.epil ]
  %i.zm = add nsw i32 %.lcssa1396, 1
  %i.zn = add nsw i32 %.lcssa1395, 1
  br label %dl.exit742

.lr.ph.i737:                                      ; preds = %.lr.ph.i737, %.lr.ph.i737.preheader.new
  %.056.i739 = phi i32 [ %.pre1081, %.lr.ph.i737.preheader.new ], [ %i.zo, %.lr.ph.i737 ]
  %niter1640 = phi i32 [ 0, %.lr.ph.i737.preheader.new ], [ %niter1640.next.7, %.lr.ph.i737 ]
  %i.zo = sdiv i32 %.056.i739, 256                ; 3 uses
  %niter1640.next.7 = add i32 %niter1640, 8       ; 2 uses
  %niter1640.ncmp.7 = icmp eq i32 %niter1640.next.7, %unroll_iter1639
  br i1 %niter1640.ncmp.7, label %._crit_edge.loopexit.i741.unr-lcssa, label %.lr.ph.i737

dl.exit742:                                       ; preds = %bb.ab, %._crit_edge.loopexit.i741
  %.05.lcssa.i727813 = phi i32 [ %i.zm, %._crit_edge.loopexit.i741 ], [ %.pre, %bb.ab ] ; 4 uses
  %.05.lcssa.i735 = phi i32 [ %i.zn, %._crit_edge.loopexit.i741 ], [ %.pre1074, %bb.ab ] ; 4 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !112 ; 4 uses
  %i.zr = icmp sgt i32 %i.yx, 0
  br i1 %i.zr, label %.lr.ph.preheader.i744, label %dl.exit750

.lr.ph.preheader.i744:                            ; preds = %dl.exit742
  %i.zs = add nsw i32 %i.zq, -1                   ; 2 uses
  %xtraiter1641 = and i32 %i.yx, 7                ; 3 uses
  %i.zt = icmp ult i32 %i.yx, 8
  br i1 %i.zt, label %.lr.ph.i745.epil.preheader, label %.lr.ph.preheader.i744.new

.lr.ph.preheader.i744.new:                        ; preds = %.lr.ph.preheader.i744
  %unroll_iter1646 = and i32 %i.yx, 2147483640
  br label %.lr.ph.i745

.lr.ph.i745:                                      ; preds = %.lr.ph.i745, %.lr.ph.preheader.i744.new
  %.056.i747 = phi i32 [ %i.zs, %.lr.ph.preheader.i744.new ], [ %i.zu, %.lr.ph.i745 ]
  %niter1647 = phi i32 [ 0, %.lr.ph.preheader.i744.new ], [ %niter1647.next.7, %.lr.ph.i745 ]
  %i.zu = sdiv i32 %.056.i747, 256                ; 3 uses
  %niter1647.next.7 = add nuw nsw i32 %niter1647, 8 ; 2 uses
  %niter1647.ncmp.7 = icmp eq i32 %niter1647.next.7, %unroll_iter1646
  br i1 %niter1647.ncmp.7, label %.lr.ph.preheader.i752.unr-lcssa, label %.lr.ph.i745

dl.exit750:                                       ; preds = %dl.exit742
  %i.zv = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !113 ; 2 uses
  %i.zx = insertelement <2 x i32> poison, i32 %i.zq, i64 0
  %i.zy = insertelement <2 x i32> %i.zx, i32 %i.zw, i64 1
  br label %dl.exit758

.lr.ph.preheader.i752.unr-lcssa:                  ; preds = %.lr.ph.i745
  %lcmp.mod1643.not = icmp eq i32 %xtraiter1641, 0
  br i1 %lcmp.mod1643.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil.preheader

.lr.ph.i745.epil.preheader:                       ; preds = %.lr.ph.preheader.i752.unr-lcssa, %.lr.ph.preheader.i744
  %.056.i747.epil.init = phi i32 [ %i.zs, %.lr.ph.preheader.i744 ], [ %i.zu, %.lr.ph.preheader.i752.unr-lcssa ]
  %lcmp.mod1645 = icmp ne i32 %xtraiter1641, 0
  tail call void @llvm.assume(i1 %lcmp.mod1645)
  br label %.lr.ph.i745.epil

.lr.ph.i745.epil:                                 ; preds = %.lr.ph.i745.epil, %.lr.ph.i745.epil.preheader
  %.056.i747.epil = phi i32 [ %i.zz, %.lr.ph.i745.epil ], [ %.056.i747.epil.init, %.lr.ph.i745.epil.preheader ]
  %epil.iter1642 = phi i32 [ %epil.iter1642.next, %.lr.ph.i745.epil ], [ 0, %.lr.ph.i745.epil.preheader ]
  %i.zz = sdiv i32 %.056.i747.epil, 2             ; 2 uses
  %epil.iter1642.next = add i32 %epil.iter1642, 1 ; 2 uses
  %epil.iter1642.cmp.not = icmp eq i32 %epil.iter1642.next, %xtraiter1641
  br i1 %epil.iter1642.cmp.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil, !llvm.loop !86

.lr.ph.preheader.i752:                            ; preds = %.lr.ph.i745.epil, %.lr.ph.preheader.i752.unr-lcssa
  %.lcssa1394 = phi i32 [ %i.zu, %.lr.ph.preheader.i752.unr-lcssa ], [ %i.zz, %.lr.ph.i745.epil ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !113 ; 2 uses
  %i.aac = add nsw i32 %i.aab, -1                 ; 2 uses
  %xtraiter1648 = and i32 %i.yx, 7                ; 3 uses
  %i.aad = icmp ult i32 %i.yx, 8
  br i1 %i.aad, label %.lr.ph.i753.epil.preheader, label %.lr.ph.preheader.i752.new

.lr.ph.preheader.i752.new:                        ; preds = %.lr.ph.preheader.i752
  %unroll_iter1653 = and i32 %i.yx, 2147483640
  br label %.lr.ph.i753

._crit_edge.loopexit.i757.unr-lcssa:              ; preds = %.lr.ph.i753
  %lcmp.mod1650.not = icmp eq i32 %xtraiter1648, 0
  br i1 %lcmp.mod1650.not, label %._crit_edge.loopexit.i757, label %.lr.ph.i753.epil.preheader

.lr.ph.i753.epil.preheader:                       ; preds = %._crit_edge.loopexit.i757.unr-lcssa, %.lr.ph.preheader.i752
  %.056.i755.epil.init = phi i32 [ %i.aac, %.lr.ph.preheader.i752 ], [ %i.aai, %._crit_edge.loopexit.i757.unr-lcssa ]
  %lcmp.mod1652 = icmp ne i32 %xtraiter1648, 0
  tail call void @llvm.assume(i1 %lcmp.mod1652)
  br label %.lr.ph.i753.epil

.lr.ph.i753.epil:                                 ; preds = %.lr.ph.i753.epil, %.lr.ph.i753.epil.preheader
  %.056.i755.epil = phi i32 [ %i.aae, %.lr.ph.i753.epil ], [ %.056.i755.epil.init, %.lr.ph.i753.epil.preheader ]
  %epil.iter1649 = phi i32 [ %epil.iter1649.next, %.lr.ph.i753.epil ], [ 0, %.lr.ph.i753.epil.preheader ]
  %i.aae = sdiv i32 %.056.i755.epil, 2            ; 2 uses
  %epil.iter1649.next = add i32 %epil.iter1649, 1 ; 2 uses
  %epil.iter1649.cmp.not = icmp eq i32 %epil.iter1649.next, %xtraiter1648
  br i1 %epil.iter1649.cmp.not, label %._crit_edge.loopexit.i757, label %.lr.ph.i753.epil, !llvm.loop !87

._crit_edge.loopexit.i757:                        ; preds = %.lr.ph.i753.epil, %._crit_edge.loopexit.i757.unr-lcssa
  %.lcssa1393 = phi i32 [ %i.aai, %._crit_edge.loopexit.i757.unr-lcssa ], [ %i.aae, %.lr.ph.i753.epil ]
  %i.aaf = insertelement <2 x i32> poison, i32 %.lcssa1394, i64 0
  %i.aag = insertelement <2 x i32> %i.aaf, i32 %.lcssa1393, i64 1
  %i.aah = add nsw <2 x i32> %i.aag, splat (i32 1)
  br label %dl.exit758

.lr.ph.i753:                                      ; preds = %.lr.ph.i753, %.lr.ph.preheader.i752.new
  %.056.i755 = phi i32 [ %i.aac, %.lr.ph.preheader.i752.new ], [ %i.aai, %.lr.ph.i753 ]
  %niter1654 = phi i32 [ 0, %.lr.ph.preheader.i752.new ], [ %niter1654.next.7, %.lr.ph.i753 ]
  %i.aai = sdiv i32 %.056.i755, 256               ; 3 uses
  %niter1654.next.7 = add i32 %niter1654, 8       ; 2 uses
  %niter1654.ncmp.7 = icmp eq i32 %niter1654.next.7, %unroll_iter1653
  br i1 %niter1654.ncmp.7, label %._crit_edge.loopexit.i757.unr-lcssa, label %.lr.ph.i753

dl.exit758:                                       ; preds = %dl.exit750, %._crit_edge.loopexit.i757
  %i.aaj = phi i32 [ %i.zw, %dl.exit750 ], [ %i.aab, %._crit_edge.loopexit.i757 ] ; 2 uses
  %i.aak = phi ptr [ %i.zv, %dl.exit750 ], [ %i.aaa, %._crit_edge.loopexit.i757 ]
  %i.aal = phi <2 x i32> [ %i.zy, %dl.exit750 ], [ %i.aah, %._crit_edge.loopexit.i757 ] ; 5 uses
  %i.aam = extractelement <2 x i32> %i.yw, i64 1  ; 8 uses
  %i.aan = icmp sgt i32 %i.aam, 0
  br i1 %i.aan, label %.lr.ph.preheader.i760, label %dl.exit774

.lr.ph.preheader.i760:                            ; preds = %dl.exit758
  %i.aao = add nsw i32 %i.zq, -1                  ; 2 uses
  %xtraiter1655 = and i32 %i.aam, 7               ; 3 uses
  %i.aap = icmp ult i32 %i.aam, 8
  br i1 %i.aap, label %.lr.ph.i761.epil.preheader, label %.lr.ph.preheader.i760.new

.lr.ph.preheader.i760.new:                        ; preds = %.lr.ph.preheader.i760
  %unroll_iter1660 = and i32 %i.aam, 2147483640
  br label %.lr.ph.i761

.lr.ph.i761:                                      ; preds = %.lr.ph.i761, %.lr.ph.preheader.i760.new
  %.056.i763 = phi i32 [ %i.aao, %.lr.ph.preheader.i760.new ], [ %i.aaq, %.lr.ph.i761 ]
  %niter1661 = phi i32 [ 0, %.lr.ph.preheader.i760.new ], [ %niter1661.next.7, %.lr.ph.i761 ]
  %i.aaq = sdiv i32 %.056.i763, 256               ; 3 uses
  %niter1661.next.7 = add nuw nsw i32 %niter1661, 8 ; 2 uses
  %niter1661.ncmp.7 = icmp eq i32 %niter1661.next.7, %unroll_iter1660
  br i1 %niter1661.ncmp.7, label %.lr.ph.preheader.i768.unr-lcssa, label %.lr.ph.i761

.lr.ph.preheader.i768.unr-lcssa:                  ; preds = %.lr.ph.i761
  %lcmp.mod1657.not = icmp eq i32 %xtraiter1655, 0
  br i1 %lcmp.mod1657.not, label %.lr.ph.preheader.i768, label %.lr.ph.i761.epil.preheader

.lr.ph.i761.epil.preheader:                       ; preds = %.lr.ph.preheader.i768.unr-lcssa, %.lr.ph.preheader.i760
  %.056.i763.epil.init = phi i32 [ %i.aao, %.lr.ph.preheader.i760 ], [ %i.aaq, %.lr.ph.preheader.i768.unr-lcssa ]
  %lcmp.mod1659 = icmp ne i32 %xtraiter1655, 0
  tail call void @llvm.assume(i1 %lcmp.mod1659)
  br label %.lr.ph.i761.epil

.lr.ph.i761.epil:                                 ; preds = %.lr.ph.i761.epil, %.lr.ph.i761.epil.preheader
  %.056.i763.epil = phi i32 [ %i.aar, %.lr.ph.i761.epil ], [ %.056.i763.epil.init, %.lr.ph.i761.epil.preheader ]
  %epil.iter1656 = phi i32 [ %epil.iter1656.next, %.lr.ph.i761.epil ], [ 0, %.lr.ph.i761.epil.preheader ]
  %i.aar = sdiv i32 %.056.i763.epil, 2            ; 2 uses
  %epil.iter1656.next = add i32 %epil.iter1656, 1 ; 2 uses
  %epil.iter1656.cmp.not = icmp eq i32 %epil.iter1656.next, %xtraiter1655
  br i1 %epil.iter1656.cmp.not, label %.lr.ph.preheader.i768, label %.lr.ph.i761.epil, !llvm.loop !88

.lr.ph.preheader.i768:                            ; preds = %.lr.ph.i761.epil, %.lr.ph.preheader.i768.unr-lcssa
  %.lcssa1392 = phi i32 [ %i.aaq, %.lr.ph.preheader.i768.unr-lcssa ], [ %i.aar, %.lr.ph.i761.epil ]
  %i.aas = add nsw i32 %i.aaj, -1                 ; 2 uses
  %xtraiter1662 = and i32 %i.aam, 7               ; 3 uses
  %i.aat = icmp ult i32 %i.aam, 8
  br i1 %i.aat, label %.lr.ph.i769.epil.preheader, label %.lr.ph.preheader.i768.new

.lr.ph.preheader.i768.new:                        ; preds = %.lr.ph.preheader.i768
  %unroll_iter1667 = and i32 %i.aam, 2147483640
  br label %.lr.ph.i769

._crit_edge.loopexit.i773.unr-lcssa:              ; preds = %.lr.ph.i769
  %lcmp.mod1664.not = icmp eq i32 %xtraiter1662, 0
  br i1 %lcmp.mod1664.not, label %._crit_edge.loopexit.i773, label %.lr.ph.i769.epil.preheader

.lr.ph.i769.epil.preheader:                       ; preds = %._crit_edge.loopexit.i773.unr-lcssa, %.lr.ph.preheader.i768
  %.056.i771.epil.init = phi i32 [ %i.aas, %.lr.ph.preheader.i768 ], [ %i.aax, %._crit_edge.loopexit.i773.unr-lcssa ]
  %lcmp.mod1666 = icmp ne i32 %xtraiter1662, 0
  tail call void @llvm.assume(i1 %lcmp.mod1666)
  br label %.lr.ph.i769.epil

.lr.ph.i769.epil:                                 ; preds = %.lr.ph.i769.epil, %.lr.ph.i769.epil.preheader
  %.056.i771.epil = phi i32 [ %i.aau, %.lr.ph.i769.epil ], [ %.056.i771.epil.init, %.lr.ph.i769.epil.preheader ]
  %epil.iter1663 = phi i32 [ %epil.iter1663.next, %.lr.ph.i769.epil ], [ 0, %.lr.ph.i769.epil.preheader ]
  %i.aau = sdiv i32 %.056.i771.epil, 2            ; 2 uses
  %epil.iter1663.next = add i32 %epil.iter1663, 1 ; 2 uses
  %epil.iter1663.cmp.not = icmp eq i32 %epil.iter1663.next, %xtraiter1662
  br i1 %epil.iter1663.cmp.not, label %._crit_edge.loopexit.i773, label %.lr.ph.i769.epil, !llvm.loop !89

._crit_edge.loopexit.i773:                        ; preds = %.lr.ph.i769.epil, %._crit_edge.loopexit.i773.unr-lcssa
  %.lcssa1391 = phi i32 [ %i.aax, %._crit_edge.loopexit.i773.unr-lcssa ], [ %i.aau, %.lr.ph.i769.epil ]
  %i.aav = add nsw i32 %.lcssa1392, 1
  %i.aaw = add nsw i32 %.lcssa1391, 1
  br label %dl.exit774

.lr.ph.i769:                                      ; preds = %.lr.ph.i769, %.lr.ph.preheader.i768.new
  %.056.i771 = phi i32 [ %i.aas, %.lr.ph.preheader.i768.new ], [ %i.aax, %.lr.ph.i769 ]
  %niter1668 = phi i32 [ 0, %.lr.ph.preheader.i768.new ], [ %niter1668.next.7, %.lr.ph.i769 ]
  %i.aax = sdiv i32 %.056.i771, 256               ; 3 uses
  %niter1668.next.7 = add i32 %niter1668, 8       ; 2 uses
  %niter1668.ncmp.7 = icmp eq i32 %niter1668.next.7, %unroll_iter1667
  br i1 %niter1668.ncmp.7, label %._crit_edge.loopexit.i773.unr-lcssa, label %.lr.ph.i769

dl.exit774:                                       ; preds = %dl.exit758, %._crit_edge.loopexit.i773
  %.05.lcssa.i759819 = phi i32 [ %i.aav, %._crit_edge.loopexit.i773 ], [ %i.zq, %dl.exit758 ]
  %.05.lcssa.i767 = phi i32 [ %i.aaw, %._crit_edge.loopexit.i773 ], [ %i.aaj, %dl.exit758 ] ; 2 uses
  %i.aay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !159
  %.not625 = icmp eq ptr %i.aay, null
  br i1 %.not625, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %dl.exit774
  %i.aaz = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aba = sext i32 %i.yx to i64
  %i.abb = getelementptr inbounds [8 x i8], ptr %i.aaz, i64 %i.aba
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !17
  %i.abd = extractelement <2 x i32> %i.aal, i64 0
  %i.abe = extractelement <2 x i32> %i.aal, i64 1
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str, ptr noundef %i.abc, i32 noundef %i.abd, i32 noundef %i.abe, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str.2, ptr noundef %i.qi, i32 noundef %.05.lcssa.i727813, i32 noundef %.05.lcssa.i735, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %dl.exit774
  %i.abf = icmp sgt i32 %.05.lcssa.i735, 0
  br i1 %i.abf, label %.preheader848.lr.ph, label %._crit_edge891.split

.preheader848.lr.ph:                              ; preds = %bb.ad
  %i.abg = icmp sgt i32 %.05.lcssa.i727813, 0
  %i.abh = add nsw <2 x i32> %i.aal, splat (i32 -1) ; 3 uses
  %i.abi = sitofp <2 x i32> %i.abh to <2 x float> ; 2 uses
  %i.abj = insertelement <2 x i32> poison, i32 %.05.lcssa.i759819, i64 0 ; 2 uses
  %i.abk = shufflevector <2 x i32> %i.abj, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.abl = add nsw <2 x i32> %i.abk, <i32 0, i32 -1> ; 2 uses
  %i.abm = insertelement <2 x i32> poison, i32 %.05.lcssa.i767, i64 0
  %i.abn = shufflevector <2 x i32> %i.abm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.abo = add nsw <2 x i32> %i.abn, <i32 0, i32 -1> ; 2 uses
  %i.abp = insertelement <2 x i32> %i.abj, i32 %.05.lcssa.i767, i64 1
  %i.abq = add nsw <2 x i32> %i.abp, splat (i32 -1)
  %i.abr = sitofp <2 x i32> %i.abq to <2 x float> ; 2 uses
  br i1 %i.abg, label %.preheader848.lr.ph.split, label %._crit_edge891.split

.preheader848.lr.ph.split:                        ; preds = %.preheader848.lr.ph
  %i.abs = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.abt = sext i32 %i.aam to i64
  %i.abu = getelementptr inbounds [8 x i8], ptr %i.abs, i64 %i.abt
  %i.abv = sext i32 %i.yx to i64
  %i.abw = getelementptr inbounds [8 x i8], ptr %i.abs, i64 %i.abv
  %i.abx = uitofp nneg i32 %i.ma to float         ; 2 uses
  %i.aby = load ptr, ptr %i.xt, align 8, !tbaa !26 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 16
  %i.aca = load <2 x i32>, ptr %i.aby, align 4, !tbaa !19
  %i.acb = sitofp <2 x i32> %i.aca to <2 x float> ; 2 uses
  %i.acc = extractelement <2 x float> %i.acb, i64 0
  %invariant.op = fsub reassoc nnan nsz arcp contract afn float %i.acc, %i.abx
  %i.acd = extractelement <2 x float> %i.acb, i64 1
  %invariant.op892 = fsub reassoc nnan nsz arcp contract afn float %i.acd, %i.abx
  %i.ace = load ptr, ptr %i.xx, align 8, !tbaa !29
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acg = load i32, ptr %i.zp, align 8, !tbaa !112
  %i.ach = load i32, ptr %i.aak, align 4, !tbaa !113
  %i.aci = load <2 x i32>, ptr %i.acf, align 4, !tbaa !19
  %i.acj = load <2 x i32>, ptr %i.yd, align 8, !tbaa !19 ; 2 uses
  %i.ack = insertelement <2 x i32> poison, i32 %i.acg, i64 0
  %i.acl = insertelement <2 x i32> %i.ack, i32 %i.ach, i64 1 ; 2 uses
  %i.acm = sub nsw <2 x i32> %i.acl, %i.acj
  %i.acn = sitofp <2 x i32> %i.acm to <2 x float>
  %i.aco = sitofp <2 x i32> %i.aci to <2 x float>
  %i.acp = sitofp <2 x i32> %i.acj to <2 x float> ; 2 uses
  %i.acq = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.acn, splat (float 5.000000e-01)
  %i.acr = sitofp <2 x i32> %i.acl to <2 x float> ; 2 uses
  %i.acs = load ptr, ptr %i.abw, align 8, !tbaa !17 ; 4 uses
  %i.act = load ptr, ptr %i.abu, align 8, !tbaa !17 ; 4 uses
  %i.acu = zext nneg i32 %.05.lcssa.i727813 to i64 ; 2 uses
  %wide.trip.count1025 = zext nneg i32 %.05.lcssa.i735 to i64
  %i.acv = extractelement <2 x float> %i.acp, i64 1
  %i.acw = shufflevector <2 x float> %i.zf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acx = extractelement <2 x i32> %i.abh, i64 0 ; 3 uses
  %i.acy = extractelement <2 x i32> %i.abh, i64 1 ; 3 uses
  %i.acz = extractelement <2 x i32> %i.aal, i64 0 ; 3 uses
  %i.ada = shufflevector <2 x i32> %i.abo, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %i.adb = shufflevector <2 x i32> %i.abl, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %i.adc = extractelement <2 x float> %i.acp, i64 0
  %i.add = shufflevector <2 x float> %i.zf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %.preheader848

.preheader848:                                    ; preds = %.preheader848.lr.ph.split, %._crit_edge889
  %indvars.iv1022 = phi i64 [ 0, %.preheader848.lr.ph.split ], [ %indvars.iv.next1023, %._crit_edge889 ] ; 3 uses
  %i.ade = trunc nuw nsw i64 %indvars.iv1022 to i32
  %i.adf = uitofp nneg i32 %i.ade to float
  %i.adg = fmul reassoc nsz arcp contract afn float %exp2, %i.adf
  %.reass893 = fadd reassoc nsz arcp contract afn float %i.adg, %invariant.op892
  %i.adh = fmul reassoc nsz arcp contract afn float %.reass893, %i.acv
  %i.adi = mul nuw nsw i64 %indvars.iv1022, %i.acu
  %invariant.gep1140 = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.adi
  %i.adj = insertelement <2 x float> poison, float %i.adh, i64 1
  br label %bb.ae

._crit_edge891.split:                             ; preds = %._crit_edge889, %.preheader848.lr.ph, %bb.ad
  %i.adk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !159
  %.not626 = icmp eq ptr %i.adk, null
  br i1 %.not626, label %bb.ag, label %bb.af

._crit_edge889:                                   ; preds = %bb.ae
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1 ; 2 uses
  %exitcond1026.not = icmp eq i64 %indvars.iv.next1023, %wide.trip.count1025
  br i1 %exitcond1026.not, label %._crit_edge891.split, label %.preheader848

bb.ae:                                            ; preds = %.preheader848, %bb.ae
  %indvars.iv1017 = phi i64 [ 0, %.preheader848 ], [ %indvars.iv.next1018, %bb.ae ] ; 3 uses
  %i.adl = trunc nuw nsw i64 %indvars.iv1017 to i32
  %i.adm = uitofp nneg i32 %i.adl to float
  %i.adn = fmul reassoc nsz arcp contract afn float %exp2, %i.adm
  %.reass = fadd reassoc nsz arcp contract afn float %i.adn, %invariant.op
  %i.ado = load float, ptr %i.abz, align 4, !tbaa !28
  %i.adp = fmul reassoc nsz arcp contract afn float %.reass, %i.adc
  %i.adq = insertelement <2 x float> poison, float %i.ado, i64 0
  %i.adr = shufflevector <2 x float> %i.adq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ads = fmul reassoc nsz arcp contract afn <2 x float> %i.adr, %i.aco
  %i.adt = insertelement <2 x float> %i.adj, float %i.adp, i64 0
  %i.adu = fdiv reassoc nsz arcp contract afn <2 x float> %i.adt, %i.ads
  %i.adv = fadd reassoc nsz arcp contract afn <2 x float> %i.acq, %i.adu ; 3 uses
  %i.adw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adv, %i.acr
  %i.adx = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.adv, zeroinitializer
  %i.ady = select <2 x i1> %i.adx, <2 x float> zeroinitializer, <2 x float> %i.adv
  %i.adz = select <2 x i1> %i.adw, <2 x float> %i.acr, <2 x float> %i.ady ; 2 uses
  %i.aea = fmul reassoc nsz arcp contract afn <2 x float> %i.adz, %i.add ; 4 uses
  %i.aeb = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aea, %i.abr
  %i.aec = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aea, zeroinitializer
  %i.aed = select <2 x i1> %i.aec, <2 x float> zeroinitializer, <2 x float> %i.aea
  %i.aee = select <2 x i1> %i.aeb, <2 x float> %i.abr, <2 x float> %i.aed
  %i.aef = fptosi <2 x float> %i.aee to <2 x i32> ; 3 uses
  %i.aeg = fmul reassoc nsz arcp contract afn <2 x float> %i.adz, %i.acw ; 4 uses
  %i.aeh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aeg, %i.abi
  %i.aei = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aeg, zeroinitializer
  %i.aej = select <2 x i1> %i.aei, <2 x float> zeroinitializer, <2 x float> %i.aeg
  %i.aek = select <2 x i1> %i.aeh, <2 x float> %i.abi, <2 x float> %i.aej
  %i.ael = fptosi <2 x float> %i.aek to <2 x i32> ; 4 uses
  %i.aem = sitofp <2 x i32> %i.ael to <2 x float>
  %i.aen = fsub reassoc nsz arcp contract afn <2 x float> %i.aeg, %i.aem ; 3 uses
  %i.aeo = extractelement <2 x float> %i.aen, i64 0 ; 2 uses
  %i.aep = fcmp reassoc nsz arcp contract afn ogt float %i.aeo, 1.000000e+00
  %i.aeq = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aen, zeroinitializer ; 2 uses
  %i.aer = extractelement <2 x i1> %i.aeq, i64 0
  %spec.select640 = select reassoc nsz arcp contract afn i1 %i.aer, float 0.000000e+00, float %i.aeo
  %i.aes = select reassoc nsz arcp contract afn i1 %i.aep, float 1.000000e+00, float %spec.select640 ; 3 uses
  %i.aet = extractelement <2 x float> %i.aen, i64 1 ; 2 uses
  %i.aeu = fcmp reassoc nsz arcp contract afn ogt float %i.aet, 1.000000e+00
  %i.aev = extractelement <2 x i1> %i.aeq, i64 1
  %spec.select641 = select reassoc nsz arcp contract afn i1 %i.aev, float 0.000000e+00, float %i.aet
  %i.aew = select reassoc nsz arcp contract afn i1 %i.aeu, float 1.000000e+00, float %spec.select641
  %i.aex = sitofp <2 x i32> %i.aef to <2 x float>
  %i.aey = fsub reassoc nsz arcp contract afn <2 x float> %i.aea, %i.aex ; 3 uses
  %i.aez = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aey, splat (float 1.000000e+00)
  %i.afa = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aey, zeroinitializer
  %i.afb = select <2 x i1> %i.afa, <2 x float> zeroinitializer, <2 x float> %i.aey
  %i.afc = select <2 x i1> %i.aez, <2 x float> splat (float 1.000000e+00), <2 x float> %i.afb ; 3 uses
  %i.afd = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aes ; 2 uses
  %i.afe = extractelement <2 x i32> %i.ael, i64 1 ; 3 uses
  %i.aff = icmp sgt <2 x i32> %i.aal, %i.ael
  %.not628 = extractelement <2 x i1> %i.aff, i64 1
  %i.afg = tail call i32 @llvm.smax.i32(i32 %i.afe, i32 0)
  %i.afh = select i1 %.not628, i32 %i.afg, i32 %i.acy
  %i.afi = mul nsw i32 %i.afh, %i.acz             ; 2 uses
  %i.afj = extractelement <2 x i32> %i.ael, i64 0 ; 4 uses
  %.not629 = icmp sgt i32 %i.acz, %i.afj
  %i.afk = tail call i32 @llvm.smax.i32(i32 %i.afj, i32 0)
  %i.afl = select i1 %.not629, i32 %i.afk, i32 %i.acx ; 2 uses
  %i.afm = add nsw i32 %i.afi, %i.afl
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr inbounds [4 x i8], ptr %i.acs, i64 %i.afn
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !21
  %i.afq = fmul reassoc nsz arcp contract afn float %i.afd, %i.afp
  %.not630 = icmp sgt i32 %i.acx, %i.afj
  %i.afr = tail call i32 @llvm.smax.i32(i32 %i.afj, i32 -1)
  %i.afs = add nsw i32 %i.afr, 1
  %i.aft = select i1 %.not630, i32 %i.afs, i32 %i.acx ; 2 uses
  %i.afu = add nsw i32 %i.afi, %i.aft
  %i.afv = sext i32 %i.afu to i64
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.acs, i64 %i.afv
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !21
  %i.afy = fmul reassoc nsz arcp contract afn float %i.aes, %i.afx
  %.not631 = icmp sgt i32 %i.acy, %i.afe
  %i.afz = tail call i32 @llvm.smax.i32(i32 %i.afe, i32 -1)
  %i.aga = add nsw i32 %i.afz, 1
  %i.agb = select i1 %.not631, i32 %i.aga, i32 %i.acy
  %i.agc = mul nsw i32 %i.agb, %i.acz             ; 2 uses
  %i.agd = add nsw i32 %i.agc, %i.afl
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds [4 x i8], ptr %i.acs, i64 %i.age
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !21
  %i.agh = fmul reassoc nsz arcp contract afn float %i.afd, %i.agg
  %i.agi = add nsw i32 %i.agc, %i.aft
  %i.agj = sext i32 %i.agi to i64
  %i.agk = getelementptr inbounds [4 x i8], ptr %i.acs, i64 %i.agj
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !21
  %i.agm = fmul reassoc nsz arcp contract afn float %i.aes, %i.agl
  %reass.add = fadd reassoc nsz arcp contract afn float %i.afq, %i.afy ; 2 uses
  %reass.add835 = fadd reassoc nsz arcp contract afn float %i.agm, %i.agh
  %i.agn = fsub reassoc nsz arcp contract afn float %reass.add835, %reass.add
  %i.ago = fmul reassoc nsz arcp contract afn float %i.aew, %i.agn
  %i.agp = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.afc ; 2 uses
end_hunk_1
