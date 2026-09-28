Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512bf16?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.dvu = getelementptr i8, ptr %.1615581417.i, i64 %i.bkq
  %i.dvv = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1515, i64 0
  br label %vec.epilog.vector.body1524

vec.epilog.vector.body1524:                       ; preds = %vec.epilog.vector.body1524, %vec.epilog.ph1522
  %index1525 = phi i64 [ %vec.epilog.resume.val1514, %vec.epilog.ph1522 ], [ %index.next1535, %vec.epilog.vector.body1524 ] ; 2 uses
  %vec.phi1526 = phi <8 x float> [ %i.dvv, %vec.epilog.ph1522 ], [ %i.dwo, %vec.epilog.vector.body1524 ]
  %i.dvw = shl i64 %index1525, 2                  ; 2 uses
  %next.gep1527 = getelementptr i8, ptr %.41425.i, i64 %i.dvw
  %next.gep1528 = getelementptr i8, ptr %.1615581417.i, i64 %i.dvw
  %wide.vec1529 = load <16 x i16>, ptr %next.gep1527, align 2, !tbaa !24
  %i.dvx = freeze <16 x i16> %wide.vec1529        ; 2 uses
  %i.dvy = bitcast <16 x i16> %i.dvx to <8 x i32>
  %i.dvz = bitcast <16 x i16> %i.dvx to <8 x i32>
  %i.dwa = and <8 x i32> %i.dvz, splat (i32 -65536)
  %i.dwb = shl <8 x i32> %i.dvy, splat (i32 16)
  %i.dwc = bitcast <8 x i32> %i.dwb to <8 x float>
  %i.dwd = bitcast <8 x i32> %i.dwa to <8 x float>
  %wide.vec1532 = load <16 x i16>, ptr %next.gep1528, align 2, !tbaa !24
  %i.dwe = freeze <16 x i16> %wide.vec1532        ; 2 uses
  %i.dwf = bitcast <16 x i16> %i.dwe to <8 x i32>
  %i.dwg = bitcast <16 x i16> %i.dwe to <8 x i32>
  %i.dwh = and <8 x i32> %i.dwg, splat (i32 -65536)
  %i.dwi = shl <8 x i32> %i.dwf, splat (i32 16)
  %i.dwj = bitcast <8 x i32> %i.dwi to <8 x float>
  %i.dwk = bitcast <8 x i32> %i.dwh to <8 x float>
  %i.dwl = fmul fast <8 x float> %i.dwj, %i.dwc
  %i.dwm = fmul fast <8 x float> %i.dwk, %i.dwd
  %i.dwn = fadd fast <8 x float> %vec.phi1526, %i.dwl
  %i.dwo = fadd fast <8 x float> %i.dwn, %i.dwm   ; 2 uses
  %index.next1535 = add nuw i64 %index1525, 8     ; 2 uses
  %i.dwp = icmp eq i64 %index.next1535, %n.vec1523
  br i1 %i.dwp, label %vec.epilog.middle.block1536, label %vec.epilog.vector.body1524, !llvm.loop !433

vec.epilog.middle.block1536:                      ; preds = %vec.epilog.vector.body1524
  %i.dwq = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dwo) ; 2 uses
  br i1 %cmp.n1537, label %.preheader.loopexit.i, label %.lr.ph1384.i.preheader

.lr.ph1384.i.preheader:                           ; preds = %iter.check1518, %vec.epilog.iter.check1520, %vec.epilog.middle.block1536
  %.013911382.i.ph = phi i32 [ 0, %iter.check1518 ], [ %i.bkm, %vec.epilog.iter.check1520 ], [ %i.bkp, %vec.epilog.middle.block1536 ]
  %.113951381.i.ph = phi float [ %.01394.i, %iter.check1518 ], [ %i.dvt, %vec.epilog.iter.check1520 ], [ %i.dwq, %vec.epilog.middle.block1536 ]
  %.013971380.i.ph = phi ptr [ %.41425.i, %iter.check1518 ], [ %i.dfv, %vec.epilog.iter.check1520 ], [ %i.dfw, %vec.epilog.middle.block1536 ]
  %.1715591379.i.ph = phi ptr [ %.1615581417.i, %iter.check1518 ], [ %i.dss, %vec.epilog.iter.check1520 ], [ %i.dvu, %vec.epilog.middle.block1536 ]
  br label %.lr.ph1384.i

.preheader.loopexit.i:                            ; preds = %.lr.ph1384.i, %vec.epilog.middle.block1536, %middle.block1509
  %.lcssa873 = phi float [ %i.dwq, %vec.epilog.middle.block1536 ], [ %i.dvt, %middle.block1509 ], [ %i.dzk, %.lr.ph1384.i ]
  %i.dwr = getelementptr i8, ptr %.1615581417.i, i64 %i.bjo
  %scevgep1806.i = getelementptr i8, ptr %i.dwr, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ay
  %.171559.lcssa.i = phi ptr [ %.1615581417.i, %bb.ay ], [ %scevgep1806.i, %.preheader.loopexit.i ] ; 6 uses
  %.01397.lcssa.i = phi ptr [ %.41425.i, %bb.ay ], [ %indvars.iv555, %.preheader.loopexit.i ] ; 5 uses
  %.11395.lcssa.i = phi float [ %.01394.i, %bb.ay ], [ %.lcssa873, %.preheader.loopexit.i ] ; 4 uses
  %.01391.lcssa.i = phi i32 [ 0, %bb.ay ], [ %i.bjh, %.preheader.loopexit.i ] ; 5 uses
  %i.dws = icmp slt i32 %.01391.lcssa.i, %8
  br i1 %i.dws, label %iter.check1445, label %._crit_edge1411.i

iter.check1445:                                   ; preds = %.preheader.i
  %i.dwt = xor i32 %.01391.lcssa.i, -1
  %i.dwu = add i32 %8, %i.dwt                     ; 3 uses
  %i.dwv = zext i32 %i.dwu to i64
  %i.dww = add nuw nsw i64 %i.dwv, 1              ; 5 uses
  %min.iters.check1414 = icmp ult i32 %i.dwu, 7
  br i1 %min.iters.check1414, label %.lr.ph1410.i.preheader, label %vector.main.loop.iter.check1415

vector.main.loop.iter.check1415:                  ; preds = %iter.check1445
  %min.iters.check1416 = icmp ult i32 %i.dwu, 63
  br i1 %min.iters.check1416, label %vec.epilog.ph1449, label %vector.ph1417

vector.ph1417:                                    ; preds = %vector.main.loop.iter.check1415
  %i.dwx = and i64 %i.dww, 56
  %n.vec1418 = and i64 %i.dww, 8589934528         ; 5 uses
  %i.dwy = trunc i64 %n.vec1418 to i32
  %i.dwz = add i32 %.01391.lcssa.i, %i.dwy
  %i.dxa = shl nuw nsw i64 %n.vec1418, 1          ; 2 uses
  %i.dxb = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.dxa
  %i.dxc = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.dxa ; 2 uses
  %i.dxd = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.11395.lcssa.i, i64 0
  br label %vector.body1419

vector.body1419:                                  ; preds = %vector.ph1417, %vector.body1419
  %index1420 = phi i64 [ 0, %vector.ph1417 ], [ %index.next1435, %vector.body1419 ] ; 2 uses
  %vec.phi1421 = phi <16 x float> [ %i.dxd, %vector.ph1417 ], [ %i.dyn, %vector.body1419 ]
  %vec.phi1422 = phi <16 x float> [ zeroinitializer, %vector.ph1417 ], [ %i.dyo, %vector.body1419 ]
  %vec.phi1423 = phi <16 x float> [ zeroinitializer, %vector.ph1417 ], [ %i.dyp, %vector.body1419 ]
  %vec.phi1424 = phi <16 x float> [ zeroinitializer, %vector.ph1417 ], [ %i.dyq, %vector.body1419 ]
  %i.dxe = shl i64 %index1420, 1                  ; 2 uses
  %next.gep1425 = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.dxe ; 4 uses
  %next.gep1426 = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.dxe ; 4 uses
  %i.dxf = getelementptr i8, ptr %next.gep1425, i64 32
  %i.dxg = getelementptr i8, ptr %next.gep1425, i64 64
  %i.dxh = getelementptr i8, ptr %next.gep1425, i64 96
  %wide.load1427 = load <16 x i16>, ptr %next.gep1425, align 2, !tbaa !24
  %wide.load1428 = load <16 x i16>, ptr %i.dxf, align 2, !tbaa !24
  %wide.load1429 = load <16 x i16>, ptr %i.dxg, align 2, !tbaa !24
  %wide.load1430 = load <16 x i16>, ptr %i.dxh, align 2, !tbaa !24
  %i.dxi = zext <16 x i16> %wide.load1427 to <16 x i32>
  %i.dxj = zext <16 x i16> %wide.load1428 to <16 x i32>
  %i.dxk = zext <16 x i16> %wide.load1429 to <16 x i32>
  %i.dxl = zext <16 x i16> %wide.load1430 to <16 x i32>
  %i.dxm = shl nuw <16 x i32> %i.dxi, splat (i32 16)
  %i.dxn = shl nuw <16 x i32> %i.dxj, splat (i32 16)
  %i.dxo = shl nuw <16 x i32> %i.dxk, splat (i32 16)
  %i.dxp = shl nuw <16 x i32> %i.dxl, splat (i32 16)
  %i.dxq = bitcast <16 x i32> %i.dxm to <16 x float>
  %i.dxr = bitcast <16 x i32> %i.dxn to <16 x float>
  %i.dxs = bitcast <16 x i32> %i.dxo to <16 x float>
  %i.dxt = bitcast <16 x i32> %i.dxp to <16 x float>
  %i.dxu = getelementptr i8, ptr %next.gep1426, i64 32
  %i.dxv = getelementptr i8, ptr %next.gep1426, i64 64
  %i.dxw = getelementptr i8, ptr %next.gep1426, i64 96
  %wide.load1431 = load <16 x i16>, ptr %next.gep1426, align 2, !tbaa !24
  %wide.load1432 = load <16 x i16>, ptr %i.dxu, align 2, !tbaa !24
  %wide.load1433 = load <16 x i16>, ptr %i.dxv, align 2, !tbaa !24
  %wide.load1434 = load <16 x i16>, ptr %i.dxw, align 2, !tbaa !24
  %i.dxx = zext <16 x i16> %wide.load1431 to <16 x i32>
  %i.dxy = zext <16 x i16> %wide.load1432 to <16 x i32>
  %i.dxz = zext <16 x i16> %wide.load1433 to <16 x i32>
  %i.dya = zext <16 x i16> %wide.load1434 to <16 x i32>
  %i.dyb = shl nuw <16 x i32> %i.dxx, splat (i32 16)
  %i.dyc = shl nuw <16 x i32> %i.dxy, splat (i32 16)
  %i.dyd = shl nuw <16 x i32> %i.dxz, splat (i32 16)
  %i.dye = shl nuw <16 x i32> %i.dya, splat (i32 16)
  %i.dyf = bitcast <16 x i32> %i.dyb to <16 x float>
  %i.dyg = bitcast <16 x i32> %i.dyc to <16 x float>
  %i.dyh = bitcast <16 x i32> %i.dyd to <16 x float>
  %i.dyi = bitcast <16 x i32> %i.dye to <16 x float>
  %i.dyj = fmul fast <16 x float> %i.dyf, %i.dxq
  %i.dyk = fmul fast <16 x float> %i.dyg, %i.dxr
  %i.dyl = fmul fast <16 x float> %i.dyh, %i.dxs
  %i.dym = fmul fast <16 x float> %i.dyi, %i.dxt
  %i.dyn = fadd fast <16 x float> %i.dyj, %vec.phi1421 ; 2 uses
  %i.dyo = fadd fast <16 x float> %i.dyk, %vec.phi1422 ; 2 uses
  %i.dyp = fadd fast <16 x float> %i.dyl, %vec.phi1423 ; 2 uses
  %i.dyq = fadd fast <16 x float> %i.dym, %vec.phi1424 ; 2 uses
  %index.next1435 = add nuw i64 %index1420, 64    ; 2 uses
  %i.dyr = icmp eq i64 %index.next1435, %n.vec1418
  br i1 %i.dyr, label %middle.block1436, label %vector.body1419, !llvm.loop !434

middle.block1436:                                 ; preds = %vector.body1419
  %bin.rdx1437 = fadd fast <16 x float> %i.dyo, %i.dyn
  %bin.rdx1438 = fadd fast <16 x float> %i.dyp, %bin.rdx1437
  %bin.rdx1439 = fadd fast <16 x float> %i.dyq, %bin.rdx1438
  %i.dys = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1439) ; 3 uses
  %cmp.n1440 = icmp eq i64 %i.dww, %n.vec1418
  br i1 %cmp.n1440, label %._crit_edge1411.i, label %vec.epilog.iter.check1447

vec.epilog.iter.check1447:                        ; preds = %middle.block1436
  %min.epilog.iters.check1448 = icmp eq i64 %i.dwx, 0
  br i1 %min.epilog.iters.check1448, label %.lr.ph1410.i.preheader, label %vec.epilog.ph1449, !prof !26

vec.epilog.ph1449:                                ; preds = %vector.main.loop.iter.check1415, %vec.epilog.iter.check1447
  %vec.epilog.resume.val1441 = phi i64 [ %n.vec1418, %vec.epilog.iter.check1447 ], [ 0, %vector.main.loop.iter.check1415 ]
  %bc.merge.rdx1442 = phi float [ %i.dys, %vec.epilog.iter.check1447 ], [ %.11395.lcssa.i, %vector.main.loop.iter.check1415 ]
  %n.vec1450 = and i64 %i.dww, 8589934584         ; 4 uses
  %i.dyt = trunc i64 %n.vec1450 to i32
  %i.dyu = add i32 %.01391.lcssa.i, %i.dyt
  %i.dyv = shl nuw nsw i64 %n.vec1450, 1          ; 2 uses
  %i.dyw = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.dyv
  %i.dyx = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.dyv ; 2 uses
  %i.dyy = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1442, i64 0
  br label %vec.epilog.vector.body1451

vec.epilog.vector.body1451:                       ; preds = %vec.epilog.vector.body1451, %vec.epilog.ph1449
  %index1452 = phi i64 [ %vec.epilog.resume.val1441, %vec.epilog.ph1449 ], [ %index.next1458, %vec.epilog.vector.body1451 ] ; 2 uses
  %vec.phi1453 = phi <8 x float> [ %i.dyy, %vec.epilog.ph1449 ], [ %i.dzh, %vec.epilog.vector.body1451 ]
  %i.dyz = shl i64 %index1452, 1                  ; 2 uses
  %next.gep1454 = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.dyz
  %next.gep1455 = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.dyz
  %wide.load1456 = load <8 x i16>, ptr %next.gep1454, align 2, !tbaa !24
  %i.dza = zext <8 x i16> %wide.load1456 to <8 x i32>
  %i.dzb = shl nuw <8 x i32> %i.dza, splat (i32 16)
  %i.dzc = bitcast <8 x i32> %i.dzb to <8 x float>
  %wide.load1457 = load <8 x i16>, ptr %next.gep1455, align 2, !tbaa !24
  %i.dzd = zext <8 x i16> %wide.load1457 to <8 x i32>
  %i.dze = shl nuw <8 x i32> %i.dzd, splat (i32 16)
  %i.dzf = bitcast <8 x i32> %i.dze to <8 x float>
  %i.dzg = fmul fast <8 x float> %i.dzf, %i.dzc
  %i.dzh = fadd fast <8 x float> %i.dzg, %vec.phi1453 ; 2 uses
  %index.next1458 = add nuw i64 %index1452, 8     ; 2 uses
  %i.dzi = icmp eq i64 %index.next1458, %n.vec1450
  br i1 %i.dzi, label %vec.epilog.middle.block1459, label %vec.epilog.vector.body1451, !llvm.loop !435

vec.epilog.middle.block1459:                      ; preds = %vec.epilog.vector.body1451
  %i.dzj = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dzh) ; 2 uses
  %cmp.n1460 = icmp eq i64 %i.dww, %n.vec1450
  br i1 %cmp.n1460, label %._crit_edge1411.i, label %.lr.ph1410.i.preheader

.lr.ph1410.i.preheader:                           ; preds = %iter.check1445, %vec.epilog.iter.check1447, %vec.epilog.middle.block1459
  %.213931408.i.ph = phi i32 [ %.01391.lcssa.i, %iter.check1445 ], [ %i.dwz, %vec.epilog.iter.check1447 ], [ %i.dyu, %vec.epilog.middle.block1459 ]
  %.213961407.i.ph = phi float [ %.11395.lcssa.i, %iter.check1445 ], [ %i.dys, %vec.epilog.iter.check1447 ], [ %i.dzj, %vec.epilog.middle.block1459 ]
  %.213991406.i.ph = phi ptr [ %.01397.lcssa.i, %iter.check1445 ], [ %i.dxb, %vec.epilog.iter.check1447 ], [ %i.dyw, %vec.epilog.middle.block1459 ]
  %.1915611405.i.ph = phi ptr [ %.171559.lcssa.i, %iter.check1445 ], [ %i.dxc, %vec.epilog.iter.check1447 ], [ %i.dyx, %vec.epilog.middle.block1459 ]
  br label %.lr.ph1410.i

.lr.ph1384.i:                                     ; preds = %.lr.ph1384.i.preheader, %.lr.ph1384.i
  %.013911382.i = phi i32 [ %i.dzn, %.lr.ph1384.i ], [ %.013911382.i.ph, %.lr.ph1384.i.preheader ]
  %.113951381.i = phi float [ %i.dzk, %.lr.ph1384.i ], [ %.113951381.i.ph, %.lr.ph1384.i.preheader ]
  %.013971380.i = phi ptr [ %i.dzl, %.lr.ph1384.i ], [ %.013971380.i.ph, %.lr.ph1384.i.preheader ] ; 3 uses
  %.1715591379.i = phi ptr [ %i.dzm, %.lr.ph1384.i ], [ %.1715591379.i.ph, %.lr.ph1384.i.preheader ] ; 3 uses
  %9 = load i16, ptr %.013971380.i, align 2, !tbaa !24
  %10 = zext i16 %9 to i32
  %11 = shl nuw i32 %10, 16
  %12 = bitcast i32 %11 to float
  %13 = getelementptr inbounds nuw i8, ptr %.013971380.i, i64 2
  %14 = load i16, ptr %13, align 2, !tbaa !24
  %15 = zext i16 %14 to i32
  %16 = shl nuw i32 %15, 16
  %17 = bitcast i32 %16 to float
  %18 = load i16, ptr %.1715591379.i, align 2, !tbaa !24
  %19 = zext i16 %18 to i32
  %20 = shl nuw i32 %19, 16
  %21 = bitcast i32 %20 to float
  %22 = getelementptr inbounds nuw i8, ptr %.1715591379.i, i64 2
  %23 = load i16, ptr %22, align 2, !tbaa !24
  %24 = zext i16 %23 to i32
  %25 = shl nuw i32 %24, 16
  %26 = bitcast i32 %25 to float
  %27 = fmul fast float %21, %12
  %28 = fmul fast float %26, %17
  %29 = fadd fast float %.113951381.i, %27
  %i.dzk = fadd fast float %29, %28               ; 2 uses
  %i.dzl = getelementptr inbounds nuw i8, ptr %.013971380.i, i64 4
  %i.dzm = getelementptr inbounds nuw i8, ptr %.1715591379.i, i64 4
  %i.dzn = add nuw nsw i32 %.013911382.i, 2       ; 2 uses
  %i.dzo = or disjoint i32 %i.dzn, 1
  %i.dzp = icmp slt i32 %i.dzo, %8
  br i1 %i.dzp, label %.lr.ph1384.i, label %.preheader.loopexit.i, !llvm.loop !436

.lr.ph1410.i:                                     ; preds = %.lr.ph1410.i.preheader, %.lr.ph1410.i
  %.213931408.i = phi i32 [ %i.eac, %.lr.ph1410.i ], [ %.213931408.i.ph, %.lr.ph1410.i.preheader ]
  %.213961407.i = phi float [ %i.dzz, %.lr.ph1410.i ], [ %.213961407.i.ph, %.lr.ph1410.i.preheader ]
  %.213991406.i = phi ptr [ %i.eaa, %.lr.ph1410.i ], [ %.213991406.i.ph, %.lr.ph1410.i.preheader ] ; 2 uses
  %.1915611405.i = phi ptr [ %i.eab, %.lr.ph1410.i ], [ %.1915611405.i.ph, %.lr.ph1410.i.preheader ] ; 2 uses
  %i.dzq = load i16, ptr %.213991406.i, align 2, !tbaa !24
  %i.dzr = zext i16 %i.dzq to i32
  %i.dzs = shl nuw i32 %i.dzr, 16
  %i.dzt = bitcast i32 %i.dzs to float
  %i.dzu = load i16, ptr %.1915611405.i, align 2, !tbaa !24
  %i.dzv = zext i16 %i.dzu to i32
  %i.dzw = shl nuw i32 %i.dzv, 16
  %i.dzx = bitcast i32 %i.dzw to float
  %i.dzy = fmul fast float %i.dzx, %i.dzt
  %i.dzz = fadd fast float %i.dzy, %.213961407.i  ; 2 uses
  %i.eaa = getelementptr inbounds nuw i8, ptr %.213991406.i, i64 2
  %i.eab = getelementptr inbounds nuw i8, ptr %.1915611405.i, i64 2 ; 2 uses
  %i.eac = add nuw nsw i32 %.213931408.i, 1       ; 2 uses
  %exitcond1807.not.i = icmp eq i32 %i.eac, %8
  br i1 %exitcond1807.not.i, label %._crit_edge1411.i, label %.lr.ph1410.i, !llvm.loop !437

._crit_edge1411.i:                                ; preds = %.lr.ph1410.i, %middle.block1436, %vec.epilog.middle.block1459, %.preheader.i
  %.191561.lcssa.i = phi ptr [ %.171559.lcssa.i, %.preheader.i ], [ %i.dyx, %vec.epilog.middle.block1459 ], [ %i.dxc, %middle.block1436 ], [ %i.eab, %.lr.ph1410.i ]
  %.21396.lcssa.i = phi float [ %.11395.lcssa.i, %.preheader.i ], [ %i.dzj, %vec.epilog.middle.block1459 ], [ %i.dys, %middle.block1436 ], [ %i.dzz, %.lr.ph1410.i ]
  store float %.21396.lcssa.i, ptr %.291419.i, align 4, !tbaa !444
  %i.ead = getelementptr inbounds nuw i8, ptr %.291419.i, i64 4 ; 2 uses
  %i.eae = add nuw nsw i32 %.415411418.i, 1       ; 2 uses
  %exitcond1808.not.i = icmp eq i32 %i.eae, %6
  br i1 %exitcond1808.not.i, label %._crit_edge1421.i, label %.lr.ph1420.i, !llvm.loop !438

._crit_edge1421.i:                                ; preds = %._crit_edge1411.i, %.preheader377.i
  %.29.lcssa.i = phi ptr [ %.28.lcssa.i, %.preheader377.i ], [ %i.ead, %._crit_edge1411.i ]
  %i.eaf = getelementptr inbounds [2 x i8], ptr %.41425.i, i64 %i.bje
  %i.eag = add nuw nsw i32 %.413901423.i, 1       ; 2 uses
  %exitcond1809.not.i = icmp eq i32 %i.eag, %4
  %scevgep556 = getelementptr i8, ptr %indvars.iv555, i64 %i.bjt
  br i1 %exitcond1809.not.i, label %_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii.exit, label %.preheader381.i, !llvm.loop !439

_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii.exit: ; preds = %._crit_edge1421.i, %.preheader382.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float>, <32 x bfloat>, <32 x bfloat>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float>, <16 x bfloat>, <16 x bfloat>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float>, <8 x bfloat>, <8 x bfloat>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTSN4ncnn9AllocatorE", !9, i64 0}
!13 = !{!"_ZTSN4ncnn3MatE", !9, i64 0, !10, i64 8, !11, i64 16, !6, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !11, i64 64}
!14 = !{!13, !9, i64 0}
!15 = !{!13, !6, i64 24}
!16 = !{!13, !6, i64 40}
!17 = !{!5, !5, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 8, i32 24}
!23 = !{!"short", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"branch_weights", i32 4, i32 28}
!26 = !{!"branch_weights", i32 8, i32 56}
!27 = !{!"branch_weights", i32 16, i32 112}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !18, !20, !21}
!40 = distinct !{!40, !18, !20}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !18, !20, !21}
!52 = distinct !{!52, !18, !20, !21}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !18, !20}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !56}
!61 = distinct !{!61, !56}
!62 = distinct !{!62, !18, !20, !21}
!63 = distinct !{!63, !18, !20, !21}
!64 = distinct !{!64, !18, !20}
!65 = distinct !{!65, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !65}
!69 = distinct !{!69, !65}
!70 = distinct !{!70, !65}
!71 = distinct !{!71, !18, !20, !21}
!72 = distinct !{!72, !18, !20, !21}
!73 = distinct !{!73, !18, !20}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !"LVerDomain"}
!78 = distinct !{!78, !77}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !77}
!81 = distinct !{!81, !18, !20, !21}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !18}
!84 = distinct !{!84, !18, !20}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !18}
!88 = distinct !{!88, !18}
!89 = distinct !{!89, !18}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !18, !20, !21}
!95 = distinct !{!95, !18, !20, !21}
!96 = distinct !{!96, !18, !20}
!97 = distinct !{!97, !18, !20}
!98 = distinct !{!98, !18}
!99 = distinct !{!99, !"LVerDomain"}
end_hunk_0
