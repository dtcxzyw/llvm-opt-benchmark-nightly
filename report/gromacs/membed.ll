Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/membed?download=true
inline.NumInlined: 899
inline.NumDeleted: 473
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPf:bb.a
_ZNSt6vectorIhSaIhEE6resizeEm.exit.8.i:           ; preds = %bb.ne, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.8.i, %bb.nd, %bb.nc
  %i.bkz = getelementptr inbounds nuw i8, ptr %11, i64 192 ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.blb = load ptr, ptr %i.bla, align 8, !tbaa !86 ; 2 uses
  %i.blc = load ptr, ptr %i.bkz, align 8, !tbaa !71 ; 2 uses
  %i.bld = ptrtoint ptr %i.blb to i64
  %i.ble = ptrtoint ptr %i.blc to i64
  %i.blf = sub i64 %i.bld, %i.ble                 ; 3 uses
  %i.blg = icmp ult i64 %i.blf, %i.bbs
  br i1 %i.blg, label %bb.nh, label %bb.nf

bb.nf:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.8.i
  %i.blh = icmp ugt i64 %i.blf, %i.bbs
  br i1 %i.blh, label %bb.ng, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i

bb.ng:                                            ; preds = %bb.nf
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blc, i64 %i.bbs ; 2 uses
  %.not.i.i176.8.i = icmp eq ptr %i.blb, %i.bli
  br i1 %.not.i.i176.8.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.8.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.8.i: ; preds = %bb.ng
  store ptr %i.bli, ptr %i.bla, align 8, !tbaa !86
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i

bb.nh:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.8.i
  %i.blj = sub nuw i64 %i.bbs, %i.blf
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bkz, i64 noundef %i.blj)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i unwind label %bb.ld

_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i:        ; preds = %bb.nh, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.8.i, %bb.ng, %bb.nf, %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.7.i
  %i.blk = getelementptr inbounds nuw i8, ptr %3, i64 664 ; 5 uses
  %i.bll = load ptr, ptr %i.blk, align 8, !tbaa !36 ; 3 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %3, i64 672 ; 4 uses
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !36 ; 3 uses
  %i.blo = icmp eq ptr %i.bll, %i.bln
  br i1 %i.blo, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i, label %bb.ni

bb.ni:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i
  %i.blp = ptrtoint ptr %i.bln to i64
  %i.blq = ptrtoint ptr %i.bll to i64
  %i.blr = sub i64 %i.blp, %i.blq                 ; 3 uses
  %i.bls = icmp ult i64 %i.blr, %i.bbs
  br i1 %i.bls, label %bb.nl, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.blt = icmp ugt i64 %i.blr, %i.bbs
  br i1 %i.blt, label %bb.nk, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i

bb.nk:                                            ; preds = %bb.nj
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bll, i64 %i.bbs ; 2 uses
  %.not.i.i174.9.i = icmp eq ptr %i.bln, %i.blu
  br i1 %.not.i.i174.9.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.9.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.9.i:    ; preds = %bb.nk
  store ptr %i.blu, ptr %i.blm, align 8, !tbaa !86
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i

bb.nl:                                            ; preds = %bb.ni
  %i.blv = sub nuw i64 %i.bbs, %i.blr
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.blk, i64 noundef %i.blv)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i unwind label %bb.ld

_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i:           ; preds = %bb.nl, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.9.i, %bb.nk, %bb.nj
  %i.blw = getelementptr inbounds nuw i8, ptr %11, i64 216 ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %11, i64 224 ; 2 uses
  %i.bly = load ptr, ptr %i.blx, align 8, !tbaa !86 ; 2 uses
  %i.blz = load ptr, ptr %i.blw, align 8, !tbaa !71 ; 2 uses
  %i.bma = ptrtoint ptr %i.bly to i64
  %i.bmb = ptrtoint ptr %i.blz to i64
  %i.bmc = sub i64 %i.bma, %i.bmb                 ; 3 uses
  %i.bmd = icmp ult i64 %i.bmc, %i.bbs
  br i1 %i.bmd, label %bb.no, label %bb.nm

bb.nm:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i
  %i.bme = icmp ugt i64 %i.bmc, %i.bbs
  br i1 %i.bme, label %bb.nn, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i

bb.nn:                                            ; preds = %bb.nm
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.blz, i64 %i.bbs ; 2 uses
  %.not.i.i176.9.i = icmp eq ptr %i.bly, %i.bmf
  br i1 %.not.i.i176.9.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.9.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.9.i: ; preds = %bb.nn
  store ptr %i.bmf, ptr %i.blx, align 8, !tbaa !86
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i

bb.no:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i
  %i.bmg = sub nuw i64 %i.bbs, %i.bmc
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.blw, i64 noundef %i.bmg)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i unwind label %bb.ld

_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i:        ; preds = %bb.no, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.9.i, %bb.nn, %bb.nm, %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i
  %i.bmh = load ptr, ptr %i.pp, align 8, !tbaa !348 ; 9 uses
  %i.bmi = getelementptr inbounds nuw i8, ptr %5, i64 456
  %i.bmj = load ptr, ptr %i.bmi, align 8, !tbaa !348 ; 9 uses
  %i.bmk = load i32, ptr %5, align 8, !tbaa !347
  %i.bml = icmp sgt i32 %i.bmk, 0
  br i1 %i.bml, label %.preheader223.lr.ph.i, label %._crit_edge259.i

.preheader223.lr.ph.i:                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i
  %i.bmm = icmp sgt i32 %.0139.lcssa.i, 0
  %wide.trip.count.i351 = zext i32 %.0139.lcssa.i to i64 ; 6 uses
  %i.bmn = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bmo = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bmp = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.bmq = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.bmr = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.bms = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.bmt = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.bmu = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.bmv = getelementptr inbounds nuw i8, ptr %11, i64 216
  %min.iters.check1397 = icmp ult i32 %.0139.lcssa.i, 8
  %min.iters.check1399 = icmp ult i32 %.0139.lcssa.i, 32
  %i.bmw = and i64 %wide.trip.count.i351, 24
  %n.vec1401 = and i64 %wide.trip.count.i351, 2147483616 ; 4 uses
  %cmp.n1426 = icmp eq i64 %n.vec1401, %wide.trip.count.i351
  %min.epilog.iters.check1433 = icmp eq i64 %i.bmw, 0
  %n.vec1435 = and i64 %wide.trip.count.i351, 2147483640 ; 3 uses
  %cmp.n1447 = icmp eq i64 %n.vec1435, %wide.trip.count.i351
  br label %.preheader223.i

.preheader223.i:                                  ; preds = %.loopexit.i352, %.preheader223.lr.ph.i
  %indvars.iv302.i = phi i64 [ 0, %.preheader223.lr.ph.i ], [ %indvars.iv.next303.i, %.loopexit.i352 ] ; 19 uses
  %.0141258.i = phi i32 [ 0, %.preheader223.lr.ph.i ], [ %.1142.lcssa436.i, %.loopexit.i352 ] ; 4 uses
  br i1 %i.bmm, label %iter.check1430, label %.preheader222.i

iter.check1430:                                   ; preds = %.preheader223.i
  br i1 %min.iters.check1397, label %.lr.ph245.i.preheader, label %vector.main.loop.iter.check1398

vector.main.loop.iter.check1398:                  ; preds = %iter.check1430
  br i1 %min.iters.check1399, label %vec.epilog.ph1434, label %vector.ph1400

vector.ph1400:                                    ; preds = %vector.main.loop.iter.check1398
  %i.bmx = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0141258.i, i64 0
  %broadcast.splatinsert1402 = insertelement <8 x i64> poison, i64 %indvars.iv302.i, i64 0
  %broadcast.splat1403 = shufflevector <8 x i64> %broadcast.splatinsert1402, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.ph1400, %vector.body1404
  %index1405 = phi i64 [ 0, %vector.ph1400 ], [ %index.next1418, %vector.body1404 ] ; 2 uses
  %vec.phi1406 = phi <8 x i32> [ %i.bmx, %vector.ph1400 ], [ %i.bns, %vector.body1404 ]
  %vec.phi1407 = phi <8 x i32> [ zeroinitializer, %vector.ph1400 ], [ %i.bnt, %vector.body1404 ]
  %vec.phi1408 = phi <8 x i32> [ zeroinitializer, %vector.ph1400 ], [ %i.bnu, %vector.body1404 ]
  %vec.phi1409 = phi <8 x i32> [ zeroinitializer, %vector.ph1400 ], [ %i.bnv, %vector.body1404 ]
  %vec.phi1410 = phi <8 x i1> [ zeroinitializer, %vector.ph1400 ], [ %i.bnk, %vector.body1404 ]
  %vec.phi1411 = phi <8 x i1> [ zeroinitializer, %vector.ph1400 ], [ %i.bnl, %vector.body1404 ]
  %vec.phi1412 = phi <8 x i1> [ zeroinitializer, %vector.ph1400 ], [ %i.bnm, %vector.body1404 ]
  %vec.phi1413 = phi <8 x i1> [ zeroinitializer, %vector.ph1400 ], [ %i.bnn, %vector.body1404 ]
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %i.bbi, i64 %index1405 ; 4 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 32
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmy, i64 64
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmy, i64 96
  %wide.load1414 = load <8 x i32>, ptr %i.bmy, align 4, !tbaa !30
  %wide.load1415 = load <8 x i32>, ptr %i.bmz, align 4, !tbaa !30
  %wide.load1416 = load <8 x i32>, ptr %i.bna, align 4, !tbaa !30
  %wide.load1417 = load <8 x i32>, ptr %i.bnb, align 4, !tbaa !30
  %i.bnc = zext <8 x i32> %wide.load1414 to <8 x i64>
  %i.bnd = zext <8 x i32> %wide.load1415 to <8 x i64>
  %i.bne = zext <8 x i32> %wide.load1416 to <8 x i64>
  %i.bnf = zext <8 x i32> %wide.load1417 to <8 x i64>
  %i.bng = icmp eq <8 x i64> %broadcast.splat1403, %i.bnc ; 2 uses
  %i.bnh = icmp eq <8 x i64> %broadcast.splat1403, %i.bnd ; 2 uses
  %i.bni = icmp eq <8 x i64> %broadcast.splat1403, %i.bne ; 2 uses
  %i.bnj = icmp eq <8 x i64> %broadcast.splat1403, %i.bnf ; 2 uses
  %i.bnk = or <8 x i1> %vec.phi1410, %i.bng       ; 2 uses
  %i.bnl = or <8 x i1> %vec.phi1411, %i.bnh       ; 2 uses
  %i.bnm = or <8 x i1> %vec.phi1412, %i.bni       ; 2 uses
  %i.bnn = or <8 x i1> %vec.phi1413, %i.bnj       ; 2 uses
  %i.bno = zext <8 x i1> %i.bng to <8 x i32>
  %i.bnp = zext <8 x i1> %i.bnh to <8 x i32>
  %i.bnq = zext <8 x i1> %i.bni to <8 x i32>
  %i.bnr = zext <8 x i1> %i.bnj to <8 x i32>
  %i.bns = add <8 x i32> %vec.phi1406, %i.bno     ; 2 uses
  %i.bnt = add <8 x i32> %vec.phi1407, %i.bnp     ; 2 uses
  %i.bnu = add <8 x i32> %vec.phi1408, %i.bnq     ; 2 uses
  %i.bnv = add <8 x i32> %vec.phi1409, %i.bnr     ; 2 uses
  %index.next1418 = add nuw i64 %index1405, 32    ; 2 uses
  %i.bnw = icmp eq i64 %index.next1418, %n.vec1401
  br i1 %i.bnw, label %middle.block1419, label %vector.body1404, !llvm.loop !151

middle.block1419:                                 ; preds = %vector.body1404
  %bin.rdx1420 = add <8 x i32> %i.bnt, %i.bns
  %bin.rdx1421 = add <8 x i32> %i.bnu, %bin.rdx1420
  %bin.rdx1422 = add <8 x i32> %i.bnv, %bin.rdx1421
  %i.bnx = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1422) ; 3 uses
  %bin.rdx1423 = or <8 x i1> %i.bnl, %i.bnk
  %bin.rdx1424 = or <8 x i1> %i.bnm, %bin.rdx1423
  %bin.rdx1425 = or <8 x i1> %i.bnn, %bin.rdx1424
  %bin.rdx1425.fr = freeze <8 x i1> %bin.rdx1425
  %i.bny = bitcast <8 x i1> %bin.rdx1425.fr to i8
  %i.bnz = icmp ne i8 %i.bny, 0                   ; 3 uses
  br i1 %cmp.n1426, label %._crit_edge246.i, label %vec.epilog.iter.check1432

vec.epilog.iter.check1432:                        ; preds = %middle.block1419
  br i1 %min.epilog.iters.check1433, label %.lr.ph245.i.preheader, label %vec.epilog.ph1434, !prof !359

vec.epilog.ph1434:                                ; preds = %vector.main.loop.iter.check1398, %vec.epilog.iter.check1432
  %vec.epilog.resume.val1427 = phi i64 [ %n.vec1401, %vec.epilog.iter.check1432 ], [ 0, %vector.main.loop.iter.check1398 ]
  %bc.merge.rdx1428 = phi i32 [ %i.bnx, %vec.epilog.iter.check1432 ], [ %.0141258.i, %vector.main.loop.iter.check1398 ]
  %bc.merge.rdx1429 = phi i1 [ %i.bnz, %vec.epilog.iter.check1432 ], [ false, %vector.main.loop.iter.check1398 ]
  %broadcast.splatinsert1436 = insertelement <8 x i1> poison, i1 %bc.merge.rdx1429, i64 0
  %broadcast.splat1437 = shufflevector <8 x i1> %broadcast.splatinsert1436, <8 x i1> poison, <8 x i32> zeroinitializer
  %52 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1428, i64 0
  %broadcast.splatinsert1438 = insertelement <8 x i64> poison, i64 %indvars.iv302.i, i64 0
  %broadcast.splat1439 = shufflevector <8 x i64> %broadcast.splatinsert1438, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body1440

vec.epilog.vector.body1440:                       ; preds = %vec.epilog.vector.body1440, %vec.epilog.ph1434
  %index1441 = phi i64 [ %vec.epilog.resume.val1427, %vec.epilog.ph1434 ], [ %index.next1445, %vec.epilog.vector.body1440 ] ; 2 uses
  %vec.phi1442 = phi <8 x i32> [ %52, %vec.epilog.ph1434 ], [ %i.bof, %vec.epilog.vector.body1440 ]
  %vec.phi1443 = phi <8 x i1> [ %broadcast.splat1437, %vec.epilog.ph1434 ], [ %i.bod, %vec.epilog.vector.body1440 ]
  %i.boa = getelementptr inbounds nuw [4 x i8], ptr %i.bbi, i64 %index1441
  %wide.load1444 = load <8 x i32>, ptr %i.boa, align 4, !tbaa !30
  %i.bob = zext <8 x i32> %wide.load1444 to <8 x i64>
  %i.boc = icmp eq <8 x i64> %broadcast.splat1439, %i.bob
  %.fr = freeze <8 x i1> %i.boc                   ; 2 uses
  %i.bod = or <8 x i1> %vec.phi1443, %.fr         ; 2 uses
  %i.boe = zext <8 x i1> %.fr to <8 x i32>
  %i.bof = add <8 x i32> %vec.phi1442, %i.boe     ; 2 uses
  %index.next1445 = add nuw i64 %index1441, 8     ; 2 uses
  %i.bog = icmp eq i64 %index.next1445, %n.vec1435
  br i1 %i.bog, label %vec.epilog.middle.block1446, label %vec.epilog.vector.body1440, !llvm.loop !152

vec.epilog.middle.block1446:                      ; preds = %vec.epilog.vector.body1440
  %i.boh = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bof) ; 2 uses
  %i.boi = bitcast <8 x i1> %i.bod to i8
  %i.boj = icmp ne i8 %i.boi, 0                   ; 2 uses
  br i1 %cmp.n1447, label %._crit_edge246.i, label %.lr.ph245.i.preheader

.lr.ph245.i.preheader:                            ; preds = %iter.check1430, %vec.epilog.iter.check1432, %vec.epilog.middle.block1446
  %indvars.iv288.i.ph = phi i64 [ 0, %iter.check1430 ], [ %n.vec1401, %vec.epilog.iter.check1432 ], [ %n.vec1435, %vec.epilog.middle.block1446 ]
  %.1142243.i.ph = phi i32 [ %.0141258.i, %iter.check1430 ], [ %i.bnx, %vec.epilog.iter.check1432 ], [ %i.boh, %vec.epilog.middle.block1446 ]
  %.0159242.i.ph = phi i1 [ false, %iter.check1430 ], [ %i.bnz, %vec.epilog.iter.check1432 ], [ %i.boj, %vec.epilog.middle.block1446 ]
  br label %.lr.ph245.i

._crit_edge259.i:                                 ; preds = %.loopexit.i352, %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i
  invoke void @_ZN7t_state14changeNumAtomsEi(ptr noundef nonnull align 8 dereferenceable(840) %5, i32 noundef %i.bbr)
          to label %.preheader219.i unwind label %bb.np

.preheader219.i:                                  ; preds = %._crit_edge259.i
  %i.bok = load i32, ptr %5, align 8, !tbaa !347  ; 3 uses
  %i.bol = icmp sgt i32 %i.bok, 0
  br i1 %i.bol, label %.lr.ph261.preheader.i, label %._crit_edge262.i

.lr.ph261.preheader.i:                            ; preds = %.preheader219.i
  %wide.trip.count308.i = zext nneg i32 %i.bok to i64 ; 6 uses
  %min.iters.check1453 = icmp ult i32 %i.bok, 8
  br i1 %min.iters.check1453, label %.lr.ph261.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph261.preheader.i
  %i.bom = mul nuw nsw i64 %wide.trip.count308.i, 12 ; 2 uses
  %i.bon = getelementptr i8, ptr %i.bmh, i64 %i.bom
  %i.boo = getelementptr i8, ptr %i.bbt, i64 %i.bom
  %bound0 = icmp ult ptr %i.bmh, %i.boo
  %bound1 = icmp ult ptr %i.bbt, %i.bon
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph261.i.preheader, label %vector.ph1454

vector.ph1454:                                    ; preds = %vector.memcheck
  %n.vec1455 = and i64 %wide.trip.count308.i, 2147483640 ; 3 uses
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %vector.ph1454
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1460, %vector.body1456 ] ; 3 uses
  %i.bop = getelementptr inbounds nuw [12 x i8], ptr %i.bbt, i64 %index1457
  %i.boq = getelementptr inbounds nuw [12 x i8], ptr %i.bmh, i64 %index1457
  %wide.vec = load <24 x float>, ptr %i.bop, align 4, !tbaa !20, !alias.scope !418
  store <24 x float> %wide.vec, ptr %i.boq, align 4, !tbaa !20, !alias.scope !419, !noalias !418
  %index.next1460 = add nuw i64 %index1457, 8     ; 2 uses
  %i.bor = icmp eq i64 %index.next1460, %n.vec1455
  br i1 %i.bor, label %middle.block1461, label %vector.body1456, !llvm.loop !156

middle.block1461:                                 ; preds = %vector.body1456
  %cmp.n1462 = icmp eq i64 %n.vec1455, %wide.trip.count308.i
  br i1 %cmp.n1462, label %._crit_edge262.i, label %.lr.ph261.i.preheader

.lr.ph261.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph261.preheader.i, %middle.block1461
  %indvars.iv305.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph261.preheader.i ], [ %n.vec1455, %middle.block1461 ] ; 3 uses
  %xtraiter1603 = and i64 %wide.trip.count308.i, 3 ; 2 uses
  %lcmp.mod1604.not = icmp eq i64 %xtraiter1603, 0
  br i1 %lcmp.mod1604.not, label %.lr.ph261.i.prol.loopexit, label %.lr.ph261.i.prol

.lr.ph261.i.prol:                                 ; preds = %.lr.ph261.i.preheader, %.lr.ph261.i.prol
  %indvars.iv305.i.prol = phi i64 [ %indvars.iv.next306.i.prol, %.lr.ph261.i.prol ], [ %indvars.iv305.i.ph, %.lr.ph261.i.preheader ] ; 3 uses
  %prol.iter1605 = phi i64 [ %prol.iter1605.next, %.lr.ph261.i.prol ], [ 0, %.lr.ph261.i.preheader ]
  %i.bos = getelementptr inbounds nuw [12 x i8], ptr %i.bbt, i64 %indvars.iv305.i.prol ; 3 uses
  %i.bot = getelementptr inbounds nuw [12 x i8], ptr %i.bmh, i64 %indvars.iv305.i.prol ; 3 uses
  %i.bou = load float, ptr %i.bos, align 4, !tbaa !20
  store float %i.bou, ptr %i.bot, align 4, !tbaa !20
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bos, i64 4
  %i.bow = load float, ptr %i.bov, align 4, !tbaa !20
  %i.box = getelementptr inbounds nuw i8, ptr %i.bot, i64 4
  store float %i.bow, ptr %i.box, align 4, !tbaa !20
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bos, i64 8
  %i.boz = load float, ptr %i.boy, align 4, !tbaa !20
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.bot, i64 8
  store float %i.boz, ptr %i.bpa, align 4, !tbaa !20
  %indvars.iv.next306.i.prol = add nuw nsw i64 %indvars.iv305.i.prol, 1 ; 2 uses
  %prol.iter1605.next = add i64 %prol.iter1605, 1 ; 2 uses
  %prol.iter1605.cmp.not = icmp eq i64 %prol.iter1605.next, %xtraiter1603
  br i1 %prol.iter1605.cmp.not, label %.lr.ph261.i.prol.loopexit, label %.lr.ph261.i.prol, !llvm.loop !157

.lr.ph261.i.prol.loopexit:                        ; preds = %.lr.ph261.i.prol, %.lr.ph261.i.preheader
  %indvars.iv305.i.unr = phi i64 [ %indvars.iv305.i.ph, %.lr.ph261.i.preheader ], [ %indvars.iv.next306.i.prol, %.lr.ph261.i.prol ]
  %i.bpb = sub nsw i64 %indvars.iv305.i.ph, %wide.trip.count308.i
  %i.bpc = icmp ugt i64 %i.bpb, -4
  br i1 %i.bpc, label %._crit_edge262.i, label %.lr.ph261.i

bb.np:                                            ; preds = %bb.pb, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit._crit_edge.i, %._crit_edge262.i, %._crit_edge259.i
  %i.bpd = landingpad { ptr, i32 }
          cleanup
  br label %bb.pk

.lr.ph245.i:                                      ; preds = %.lr.ph245.i.preheader, %.lr.ph245.i
  %indvars.iv288.i = phi i64 [ %indvars.iv.next289.i, %.lr.ph245.i ], [ %indvars.iv288.i.ph, %.lr.ph245.i.preheader ] ; 2 uses
  %.1142243.i = phi i32 [ %spec.select171.i, %.lr.ph245.i ], [ %.1142243.i.ph, %.lr.ph245.i.preheader ]
  %.0159242.i = phi i1 [ %spec.select.i353, %.lr.ph245.i ], [ %.0159242.i.ph, %.lr.ph245.i.preheader ]
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.bbi, i64 %indvars.iv288.i
  %i.bpf = load i32, ptr %i.bpe, align 4, !tbaa !30
  %i.bpg = zext i32 %i.bpf to i64
  %i.bph = icmp eq i64 %indvars.iv302.i, %i.bpg   ; 2 uses
  %spec.select.i353 = select i1 %i.bph, i1 true, i1 %.0159242.i ; 2 uses
  %i.bpi = zext i1 %i.bph to i32
  %spec.select171.i = add nsw i32 %.1142243.i, %i.bpi ; 2 uses
  %indvars.iv.next289.i = add nuw nsw i64 %indvars.iv288.i, 1 ; 2 uses
  %exitcond.not.i354 = icmp eq i64 %indvars.iv.next289.i, %wide.trip.count.i351
  br i1 %exitcond.not.i354, label %._crit_edge246.i, label %.lr.ph245.i, !llvm.loop !158

._crit_edge246.i:                                 ; preds = %.lr.ph245.i, %vec.epilog.middle.block1446, %middle.block1419
  %spec.select.i353.lcssa = phi i1 [ %i.boj, %vec.epilog.middle.block1446 ], [ %i.bnz, %middle.block1419 ], [ %spec.select.i353, %.lr.ph245.i ]
  %spec.select171.i.lcssa = phi i32 [ %i.boh, %vec.epilog.middle.block1446 ], [ %i.bnx, %middle.block1419 ], [ %spec.select171.i, %.lr.ph245.i ] ; 2 uses
  br i1 %spec.select.i353.lcssa, label %.loopexit.i352, label %.preheader222.i

.preheader222.i:                                  ; preds = %._crit_edge246.i, %.preheader223.i
  %.1142.lcssa435.i = phi i32 [ %spec.select171.i.lcssa, %._crit_edge246.i ], [ %.0141258.i, %.preheader223.i ] ; 3 uses
  %i.bpj = trunc nuw nsw i64 %indvars.iv302.i to i32
  %i.bpk = sub nsw i32 %i.bpj, %.1142.lcssa435.i  ; 3 uses
  %i.bpl = sext i32 %i.bpk to i64                 ; 12 uses
  %i.bpm = load ptr, ptr %i.bdk, align 8, !tbaa !36 ; 2 uses
  %i.bpn = load ptr, ptr %i.bdm, align 8, !tbaa !36
  %i.bpo = icmp eq ptr %i.bpm, %i.bpn
  br i1 %i.bpo, label %bb.nr, label %bb.nq

.lr.ph252.i:                                      ; preds = %bb.oj
  %i.bpp = load ptr, ptr %i.ii, align 8, !tbaa !65
  br label %bb.ok

bb.nq:                                            ; preds = %.preheader222.i
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpm, i64 %indvars.iv302.i
  %i.bpr = load i8, ptr %i.bpq, align 1, !tbaa !43
  %i.bps = load ptr, ptr %11, align 8, !tbaa !71
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 %i.bpl
  store i8 %i.bpr, ptr %i.bpt, align 1, !tbaa !43
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %.preheader222.i
  %i.bpu = load ptr, ptr %i.bei, align 8, !tbaa !36 ; 2 uses
  %i.bpv = load ptr, ptr %i.bek, align 8, !tbaa !36
  %i.bpw = icmp eq ptr %i.bpu, %i.bpv
  br i1 %i.bpw, label %bb.nt, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpu, i64 %indvars.iv302.i
  %i.bpy = load i8, ptr %i.bpx, align 1, !tbaa !43
  %i.bpz = load ptr, ptr %i.bmn, align 8, !tbaa !71
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 %i.bpl
  store i8 %i.bpy, ptr %i.bqa, align 1, !tbaa !43
  br label %bb.nt

bb.nt:                                            ; preds = %bb.ns, %bb.nr
  %i.bqb = load ptr, ptr %i.bff, align 8, !tbaa !36 ; 2 uses
  %i.bqc = load ptr, ptr %i.bfh, align 8, !tbaa !36
  %i.bqd = icmp eq ptr %i.bqb, %i.bqc
  br i1 %i.bqd, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqb, i64 %indvars.iv302.i
  %i.bqf = load i8, ptr %i.bqe, align 1, !tbaa !43
  %i.bqg = load ptr, ptr %i.bmo, align 8, !tbaa !71
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqg, i64 %i.bpl
  store i8 %i.bqf, ptr %i.bqh, align 1, !tbaa !43
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.nt
  %i.bqi = load ptr, ptr %i.bgc, align 8, !tbaa !36 ; 2 uses
  %i.bqj = load ptr, ptr %i.bge, align 8, !tbaa !36
  %i.bqk = icmp eq ptr %i.bqi, %i.bqj
  br i1 %i.bqk, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqi, i64 %indvars.iv302.i
  %i.bqm = load i8, ptr %i.bql, align 1, !tbaa !43
  %i.bqn = load ptr, ptr %i.bmp, align 8, !tbaa !71
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 %i.bpl
  store i8 %i.bqm, ptr %i.bqo, align 1, !tbaa !43
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv
  %i.bqp = load ptr, ptr %i.bgz, align 8, !tbaa !36 ; 2 uses
  %i.bqq = load ptr, ptr %i.bhb, align 8, !tbaa !36
  %i.bqr = icmp eq ptr %i.bqp, %i.bqq
  br i1 %i.bqr, label %bb.nz, label %bb.ny

end_hunk_0
