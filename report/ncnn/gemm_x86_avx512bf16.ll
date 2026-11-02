Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512bf16?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %strided.vec1352 = shufflevector <64 x i16> %wide.vec1349, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1353 = shufflevector <64 x i16> %wide.vec1349, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1354 = load <64 x i16>, ptr %next.gep1338, align 2, !tbaa !24 ; 4 uses
  %strided.vec1355 = shufflevector <64 x i16> %wide.vec1354, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1356 = shufflevector <64 x i16> %wide.vec1354, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1357 = shufflevector <64 x i16> %wide.vec1354, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1358 = shufflevector <64 x i16> %wide.vec1354, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.bxd = zext <16 x i16> %strided.vec1350 to <16 x i32>
  %i.bxe = zext <16 x i16> %strided.vec1355 to <16 x i32>
  %i.bxf = shl nuw <16 x i32> %i.bxd, splat (i32 16)
  %i.bxg = shl nuw <16 x i32> %i.bxe, splat (i32 16)
  %i.bxh = bitcast <16 x i32> %i.bxf to <16 x float> ; 2 uses
  %i.bxi = bitcast <16 x i32> %i.bxg to <16 x float> ; 2 uses
  %i.bxj = zext <16 x i16> %strided.vec1351 to <16 x i32>
  %i.bxk = zext <16 x i16> %strided.vec1356 to <16 x i32>
  %i.bxl = shl nuw <16 x i32> %i.bxj, splat (i32 16)
  %i.bxm = shl nuw <16 x i32> %i.bxk, splat (i32 16)
  %i.bxn = bitcast <16 x i32> %i.bxl to <16 x float> ; 2 uses
  %i.bxo = bitcast <16 x i32> %i.bxm to <16 x float> ; 2 uses
  %i.bxp = zext <16 x i16> %strided.vec1352 to <16 x i32>
  %i.bxq = zext <16 x i16> %strided.vec1357 to <16 x i32>
  %i.bxr = shl nuw <16 x i32> %i.bxp, splat (i32 16)
  %i.bxs = shl nuw <16 x i32> %i.bxq, splat (i32 16)
  %i.bxt = bitcast <16 x i32> %i.bxr to <16 x float> ; 2 uses
  %i.bxu = bitcast <16 x i32> %i.bxs to <16 x float> ; 2 uses
  %i.bxv = zext <16 x i16> %strided.vec1353 to <16 x i32>
  %i.bxw = zext <16 x i16> %strided.vec1358 to <16 x i32>
  %i.bxx = shl nuw <16 x i32> %i.bxv, splat (i32 16)
  %i.bxy = shl nuw <16 x i32> %i.bxw, splat (i32 16)
  %i.bxz = bitcast <16 x i32> %i.bxx to <16 x float> ; 2 uses
  %i.bya = bitcast <16 x i32> %i.bxy to <16 x float> ; 2 uses
  %i.byb = fmul fast <16 x float> %i.bxh, %i.bwj
  %i.byc = fmul fast <16 x float> %i.bxi, %i.bwk
  %i.byd = fmul fast <16 x float> %i.bxn, %i.bwp
  %i.bye = fmul fast <16 x float> %i.bxo, %i.bwq
  %i.byf = fadd fast <16 x float> %vec.phi1333, %i.byb
  %i.byg = fadd fast <16 x float> %vec.phi1334, %i.byc
  %i.byh = fadd fast <16 x float> %i.byf, %i.byd  ; 2 uses
  %i.byi = fadd fast <16 x float> %i.byg, %i.bye  ; 2 uses
  %i.byj = fmul fast <16 x float> %i.bxt, %i.bwj
  %i.byk = fmul fast <16 x float> %i.bxu, %i.bwk
  %i.byl = fmul fast <16 x float> %i.bxz, %i.bwp
  %i.bym = fmul fast <16 x float> %i.bya, %i.bwq
  %i.byn = fadd fast <16 x float> %vec.phi1331, %i.byj
  %i.byo = fadd fast <16 x float> %vec.phi1332, %i.byk
  %i.byp = fadd fast <16 x float> %i.byn, %i.byl  ; 2 uses
  %i.byq = fadd fast <16 x float> %i.byo, %i.bym  ; 2 uses
  %i.byr = fmul fast <16 x float> %i.bxh, %i.bwv
  %i.bys = fmul fast <16 x float> %i.bxi, %i.bww
  %i.byt = fmul fast <16 x float> %i.bxn, %i.bxb
  %i.byu = fmul fast <16 x float> %i.bxo, %i.bxc
  %i.byv = fadd fast <16 x float> %vec.phi1329, %i.byr
  %i.byw = fadd fast <16 x float> %vec.phi1330, %i.bys
  %i.byx = fadd fast <16 x float> %i.byv, %i.byt  ; 2 uses
  %i.byy = fadd fast <16 x float> %i.byw, %i.byu  ; 2 uses
  %i.byz = fmul fast <16 x float> %i.bxt, %i.bwv
  %i.bza = fmul fast <16 x float> %i.bxu, %i.bww
  %i.bzb = fmul fast <16 x float> %i.bxz, %i.bxb
  %i.bzc = fmul fast <16 x float> %i.bya, %i.bxc
  %i.bzd = fadd fast <16 x float> %vec.phi1327, %i.byz
  %i.bze = fadd fast <16 x float> %vec.phi1328, %i.bza
  %i.bzf = fadd fast <16 x float> %i.bzd, %i.bzb  ; 2 uses
  %i.bzg = fadd fast <16 x float> %i.bze, %i.bzc  ; 2 uses
  %index.next1359 = add nuw i64 %index1326, 32    ; 2 uses
  %i.bzh = icmp eq i64 %index.next1359, %n.vec1324
  br i1 %i.bzh, label %middle.block1360, label %vector.body1325, !llvm.loop !398

middle.block1360:                                 ; preds = %vector.body1325
  %bin.rdx1361 = fadd fast <16 x float> %i.bzg, %i.bzf
  %i.bzi = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1361) ; 2 uses
  %bin.rdx1362 = fadd fast <16 x float> %i.byy, %i.byx
  %i.bzj = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1362) ; 2 uses
  %bin.rdx1363 = fadd fast <16 x float> %i.byq, %i.byp
  %i.bzk = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1363) ; 2 uses
  %bin.rdx1364 = fadd fast <16 x float> %i.byi, %i.byh
  %i.bzl = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1364) ; 2 uses
  %i.bzm = insertelement <4 x float> poison, float %i.bzk, i64 0
  %i.bzn = insertelement <4 x float> %i.bzm, float %i.bzj, i64 1
  %i.bzo = insertelement <4 x float> %i.bzn, float %i.bzi, i64 2
  %i.bzp = insertelement <4 x float> %i.bzo, float %i.bzl, i64 3 ; 2 uses
  br i1 %cmp.n1365, label %.preheader384.loopexit.i, label %vec.epilog.iter.check1367

vec.epilog.iter.check1367:                        ; preds = %middle.block1360
  br i1 %min.epilog.iters.check1369, label %.lr.ph1123.i.preheader, label %vec.epilog.ph1370, !prof !22

vec.epilog.ph1370:                                ; preds = %vector.main.loop.iter.check1321, %vec.epilog.iter.check1367
  %vec.epilog.resume.val1371 = phi i64 [ %n.vec1324, %vec.epilog.iter.check1367 ], [ 0, %vector.main.loop.iter.check1321 ]
  %bc.merge.rdx1372 = phi float [ %i.bzi, %vec.epilog.iter.check1367 ], [ %i.bvv, %vector.main.loop.iter.check1321 ]
  %bc.merge.rdx1373 = phi float [ %i.bzj, %vec.epilog.iter.check1367 ], [ %i.bvu, %vector.main.loop.iter.check1321 ]
  %bc.merge.rdx1374 = phi float [ %i.bzk, %vec.epilog.iter.check1367 ], [ %i.bvt, %vector.main.loop.iter.check1321 ]
  %bc.merge.rdx1375 = phi float [ %i.bzl, %vec.epilog.iter.check1367 ], [ %i.bvs, %vector.main.loop.iter.check1321 ]
  %i.bzq = getelementptr i8, ptr %.917131145.i, i64 %i.anw
  %i.bzr = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1372, i64 0
  %i.bzs = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1373, i64 0
  %i.bzt = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1374, i64 0
  %i.bzu = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1375, i64 0
  br label %vec.epilog.vector.body1377

vec.epilog.vector.body1377:                       ; preds = %vec.epilog.vector.body1377, %vec.epilog.ph1370
  %index1378 = phi i64 [ %vec.epilog.resume.val1371, %vec.epilog.ph1370 ], [ %index.next1395, %vec.epilog.vector.body1377 ] ; 2 uses
  %vec.phi1379 = phi <8 x float> [ %i.bzr, %vec.epilog.ph1370 ], [ %i.cbj, %vec.epilog.vector.body1377 ]
  %vec.phi1380 = phi <8 x float> [ %i.bzs, %vec.epilog.ph1370 ], [ %i.cbf, %vec.epilog.vector.body1377 ]
  %vec.phi1381 = phi <8 x float> [ %i.bzt, %vec.epilog.ph1370 ], [ %i.cbb, %vec.epilog.vector.body1377 ]
  %vec.phi1382 = phi <8 x float> [ %i.bzu, %vec.epilog.ph1370 ], [ %i.cax, %vec.epilog.vector.body1377 ]
  %i.bzv = shl i64 %index1378, 3                  ; 2 uses
  %next.gep1383 = getelementptr i8, ptr %.31182.i, i64 %i.bzv
  %next.gep1384 = getelementptr i8, ptr %.917131145.i, i64 %i.bzv
  %wide.vec1385 = load <32 x i16>, ptr %next.gep1383, align 2, !tbaa !24 ; 4 uses
  %strided.vec1386 = shufflevector <32 x i16> %wide.vec1385, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1387 = shufflevector <32 x i16> %wide.vec1385, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1388 = shufflevector <32 x i16> %wide.vec1385, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1389 = shufflevector <32 x i16> %wide.vec1385, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bzw = zext <8 x i16> %strided.vec1386 to <8 x i32>
  %i.bzx = shl nuw <8 x i32> %i.bzw, splat (i32 16)
  %i.bzy = bitcast <8 x i32> %i.bzx to <8 x float> ; 2 uses
  %i.bzz = zext <8 x i16> %strided.vec1387 to <8 x i32>
  %i.caa = shl nuw <8 x i32> %i.bzz, splat (i32 16)
  %i.cab = bitcast <8 x i32> %i.caa to <8 x float> ; 2 uses
  %i.cac = zext <8 x i16> %strided.vec1388 to <8 x i32>
  %i.cad = shl nuw <8 x i32> %i.cac, splat (i32 16)
  %i.cae = bitcast <8 x i32> %i.cad to <8 x float> ; 2 uses
  %i.caf = zext <8 x i16> %strided.vec1389 to <8 x i32>
  %i.cag = shl nuw <8 x i32> %i.caf, splat (i32 16)
  %i.cah = bitcast <8 x i32> %i.cag to <8 x float> ; 2 uses
  %wide.vec1390 = load <32 x i16>, ptr %next.gep1384, align 2, !tbaa !24 ; 4 uses
  %strided.vec1391 = shufflevector <32 x i16> %wide.vec1390, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1392 = shufflevector <32 x i16> %wide.vec1390, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1393 = shufflevector <32 x i16> %wide.vec1390, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1394 = shufflevector <32 x i16> %wide.vec1390, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cai = zext <8 x i16> %strided.vec1391 to <8 x i32>
  %i.caj = shl nuw <8 x i32> %i.cai, splat (i32 16)
  %i.cak = bitcast <8 x i32> %i.caj to <8 x float> ; 2 uses
  %i.cal = zext <8 x i16> %strided.vec1392 to <8 x i32>
  %i.cam = shl nuw <8 x i32> %i.cal, splat (i32 16)
  %i.can = bitcast <8 x i32> %i.cam to <8 x float> ; 2 uses
  %i.cao = zext <8 x i16> %strided.vec1393 to <8 x i32>
  %i.cap = shl nuw <8 x i32> %i.cao, splat (i32 16)
  %i.caq = bitcast <8 x i32> %i.cap to <8 x float> ; 2 uses
  %i.car = zext <8 x i16> %strided.vec1394 to <8 x i32>
  %i.cas = shl nuw <8 x i32> %i.car, splat (i32 16)
  %i.cat = bitcast <8 x i32> %i.cas to <8 x float> ; 2 uses
  %i.cau = fmul fast <8 x float> %i.cak, %i.bzy
  %i.cav = fmul fast <8 x float> %i.can, %i.cab
  %i.caw = fadd fast <8 x float> %vec.phi1382, %i.cau
  %i.cax = fadd fast <8 x float> %i.caw, %i.cav   ; 2 uses
  %i.cay = fmul fast <8 x float> %i.caq, %i.bzy
  %i.caz = fmul fast <8 x float> %i.cat, %i.cab
  %i.cba = fadd fast <8 x float> %vec.phi1381, %i.cay
  %i.cbb = fadd fast <8 x float> %i.cba, %i.caz   ; 2 uses
  %i.cbc = fmul fast <8 x float> %i.cak, %i.cae
  %i.cbd = fmul fast <8 x float> %i.can, %i.cah
  %i.cbe = fadd fast <8 x float> %vec.phi1380, %i.cbc
  %i.cbf = fadd fast <8 x float> %i.cbe, %i.cbd   ; 2 uses
  %i.cbg = fmul fast <8 x float> %i.caq, %i.cae
  %i.cbh = fmul fast <8 x float> %i.cat, %i.cah
  %i.cbi = fadd fast <8 x float> %vec.phi1379, %i.cbg
  %i.cbj = fadd fast <8 x float> %i.cbi, %i.cbh   ; 2 uses
  %index.next1395 = add nuw i64 %index1378, 8     ; 2 uses
  %i.cbk = icmp eq i64 %index.next1395, %n.vec1376
  br i1 %i.cbk, label %vec.epilog.middle.block1396, label %vec.epilog.vector.body1377, !llvm.loop !399

vec.epilog.middle.block1396:                      ; preds = %vec.epilog.vector.body1377
  %i.cbl = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cbj)
  %i.cbm = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cbf)
  %i.cbn = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cbb)
  %i.cbo = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cax)
  %i.cbp = insertelement <4 x float> poison, float %i.cbn, i64 0
  %i.cbq = insertelement <4 x float> %i.cbp, float %i.cbm, i64 1
  %i.cbr = insertelement <4 x float> %i.cbq, float %i.cbl, i64 2
  %i.cbs = insertelement <4 x float> %i.cbr, float %i.cbo, i64 3 ; 2 uses
  br i1 %cmp.n1397, label %.preheader384.loopexit.i, label %.lr.ph1123.i.preheader

.lr.ph1123.i.preheader:                           ; preds = %iter.check1366, %vec.epilog.iter.check1367, %vec.epilog.middle.block1396
  %.016331121.i.ph = phi i32 [ 0, %iter.check1366 ], [ %i.ans, %vec.epilog.iter.check1367 ], [ %i.anv, %vec.epilog.middle.block1396 ]
  %.016351120.i.ph = phi ptr [ %.31182.i, %iter.check1366 ], [ %i.bru, %vec.epilog.iter.check1367 ], [ %i.brv, %vec.epilog.middle.block1396 ]
  %.1017141115.i.ph = phi ptr [ %.917131145.i, %iter.check1366 ], [ %i.bvw, %vec.epilog.iter.check1367 ], [ %i.bzq, %vec.epilog.middle.block1396 ]
  %.ph1795 = phi <4 x float> [ %i.bvr, %iter.check1366 ], [ %i.bzp, %vec.epilog.iter.check1367 ], [ %i.cbs, %vec.epilog.middle.block1396 ]
  br label %.lr.ph1123.i

.preheader384.loopexit.i:                         ; preds = %.lr.ph1123.i, %vec.epilog.middle.block1396, %middle.block1360
  %i.cbt = phi <4 x float> [ %i.cbs, %vec.epilog.middle.block1396 ], [ %i.bzp, %middle.block1360 ], [ %i.cgf, %.lr.ph1123.i ]
  %scevgep1791.i = getelementptr i8, ptr %.917131145.i, i64 %i.ana
  br label %.preheader384.i

.preheader384.i:                                  ; preds = %.preheader384.loopexit.i, %bb.am
  %.101714.lcssa.i = phi ptr [ %.917131145.i, %bb.am ], [ %scevgep1791.i, %.preheader384.loopexit.i ] ; 7 uses
  %.01635.lcssa.i = phi ptr [ %.31182.i, %bb.am ], [ %indvars.iv1794.i, %.preheader384.loopexit.i ] ; 6 uses
  %.01633.lcssa.i = phi i32 [ 0, %bb.am ], [ %i.amt, %.preheader384.loopexit.i ] ; 5 uses
  %i.cbu = phi <4 x float> [ %i.bvr, %bb.am ], [ %i.cbt, %.preheader384.loopexit.i ] ; 7 uses
  %i.cbv = icmp slt i32 %.01633.lcssa.i, %8
  %i.cbw = shufflevector <4 x float> %i.cbu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cbx = extractelement <4 x float> %i.cbu, i64 2 ; 2 uses
  %i.cby = extractelement <4 x float> %i.cbu, i64 3 ; 2 uses
  br i1 %i.cbv, label %iter.check1285, label %._crit_edge1139.i

iter.check1285:                                   ; preds = %.preheader384.i
  %i.cbz = xor i32 %.01633.lcssa.i, -1
  %i.cca = add i32 %8, %i.cbz                     ; 3 uses
  %i.ccb = zext i32 %i.cca to i64
  %i.ccc = add nuw nsw i64 %i.ccb, 1              ; 5 uses
  %min.iters.check1247 = icmp ult i32 %i.cca, 3
  %i.ccd = extractelement <4 x float> %i.cbu, i64 0
  %i.cce = extractelement <4 x float> %i.cbu, i64 1
  br i1 %min.iters.check1247, label %.lr.ph1138.i.preheader, label %vector.main.loop.iter.check1248

vector.main.loop.iter.check1248:                  ; preds = %iter.check1285
  %min.iters.check1249 = icmp ult i32 %i.cca, 31
  br i1 %min.iters.check1249, label %vec.epilog.ph1289, label %vector.ph1250

vector.ph1250:                                    ; preds = %vector.main.loop.iter.check1248
  %i.ccf = and i64 %i.ccc, 28
  %n.vec1251 = and i64 %i.ccc, 8589934560         ; 5 uses
  %i.ccg = trunc i64 %n.vec1251 to i32
  %i.cch = add i32 %.01633.lcssa.i, %i.ccg
  %i.cci = shl nuw nsw i64 %n.vec1251, 2          ; 2 uses
  %i.ccj = getelementptr i8, ptr %.01635.lcssa.i, i64 %i.cci
  %i.cck = getelementptr i8, ptr %.101714.lcssa.i, i64 %i.cci ; 2 uses
  %i.ccl = shufflevector <4 x float> %i.cbu, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.ccm = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.ccl, <16 x i32> <i32 18, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ccn = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.ccl, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cco = shufflevector <16 x float> %i.ccl, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ccp = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.ccl, <16 x i32> <i32 19, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.ph1250, %vector.body1252
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1278, %vector.body1252 ] ; 2 uses
  %vec.phi1254 = phi <16 x float> [ %i.ccm, %vector.ph1250 ], [ %i.cei, %vector.body1252 ]
  %vec.phi1255 = phi <16 x float> [ zeroinitializer, %vector.ph1250 ], [ %i.cej, %vector.body1252 ]
  %vec.phi1256 = phi <16 x float> [ %i.ccn, %vector.ph1250 ], [ %i.cee, %vector.body1252 ]
  %vec.phi1257 = phi <16 x float> [ zeroinitializer, %vector.ph1250 ], [ %i.cef, %vector.body1252 ]
  %vec.phi1258 = phi <16 x float> [ %i.cco, %vector.ph1250 ], [ %i.cea, %vector.body1252 ]
  %vec.phi1259 = phi <16 x float> [ zeroinitializer, %vector.ph1250 ], [ %i.ceb, %vector.body1252 ]
  %vec.phi1260 = phi <16 x float> [ %i.ccp, %vector.ph1250 ], [ %i.cdw, %vector.body1252 ]
  %vec.phi1261 = phi <16 x float> [ zeroinitializer, %vector.ph1250 ], [ %i.cdx, %vector.body1252 ]
  %i.ccq = shl i64 %index1253, 2                  ; 3 uses
  %i.ccr = or disjoint i64 %i.ccq, 64             ; 2 uses
  %next.gep1262 = getelementptr i8, ptr %.01635.lcssa.i, i64 %i.ccq
  %next.gep1263 = getelementptr i8, ptr %.01635.lcssa.i, i64 %i.ccr
  %next.gep1264 = getelementptr i8, ptr %.101714.lcssa.i, i64 %i.ccq
  %next.gep1265 = getelementptr i8, ptr %.101714.lcssa.i, i64 %i.ccr
  %wide.vec1266 = load <32 x i16>, ptr %next.gep1262, align 2, !tbaa !24
  %i.ccs = freeze <32 x i16> %wide.vec1266        ; 2 uses
  %i.cct = bitcast <32 x i16> %i.ccs to <16 x i32>
  %i.ccu = bitcast <32 x i16> %i.ccs to <16 x i32>
  %i.ccv = and <16 x i32> %i.ccu, splat (i32 -65536)
  %wide.vec1269 = load <32 x i16>, ptr %next.gep1263, align 2, !tbaa !24
  %i.ccw = freeze <32 x i16> %wide.vec1269        ; 2 uses
  %i.ccx = bitcast <32 x i16> %i.ccw to <16 x i32>
  %i.ccy = bitcast <32 x i16> %i.ccw to <16 x i32>
  %i.ccz = and <16 x i32> %i.ccy, splat (i32 -65536)
  %i.cda = shl <16 x i32> %i.cct, splat (i32 16)
  %i.cdb = shl <16 x i32> %i.ccx, splat (i32 16)
  %i.cdc = bitcast <16 x i32> %i.cda to <16 x float> ; 2 uses
  %i.cdd = bitcast <16 x i32> %i.cdb to <16 x float> ; 2 uses
  %i.cde = bitcast <16 x i32> %i.ccv to <16 x float> ; 2 uses
  %i.cdf = bitcast <16 x i32> %i.ccz to <16 x float> ; 2 uses
  %wide.vec1272 = load <32 x i16>, ptr %next.gep1264, align 2, !tbaa !24
  %i.cdg = freeze <32 x i16> %wide.vec1272        ; 2 uses
  %i.cdh = bitcast <32 x i16> %i.cdg to <16 x i32>
  %i.cdi = bitcast <32 x i16> %i.cdg to <16 x i32>
  %i.cdj = and <16 x i32> %i.cdi, splat (i32 -65536)
  %wide.vec1275 = load <32 x i16>, ptr %next.gep1265, align 2, !tbaa !24
  %i.cdk = freeze <32 x i16> %wide.vec1275        ; 2 uses
  %i.cdl = bitcast <32 x i16> %i.cdk to <16 x i32>
  %i.cdm = bitcast <32 x i16> %i.cdk to <16 x i32>
  %i.cdn = and <16 x i32> %i.cdm, splat (i32 -65536)
  %i.cdo = shl <16 x i32> %i.cdh, splat (i32 16)
  %i.cdp = shl <16 x i32> %i.cdl, splat (i32 16)
  %i.cdq = bitcast <16 x i32> %i.cdo to <16 x float> ; 2 uses
  %i.cdr = bitcast <16 x i32> %i.cdp to <16 x float> ; 2 uses
  %i.cds = bitcast <16 x i32> %i.cdj to <16 x float> ; 2 uses
  %i.cdt = bitcast <16 x i32> %i.cdn to <16 x float> ; 2 uses
  %i.cdu = fmul fast <16 x float> %i.cdq, %i.cdc
  %i.cdv = fmul fast <16 x float> %i.cdr, %i.cdd
  %i.cdw = fadd fast <16 x float> %i.cdu, %vec.phi1260 ; 2 uses
  %i.cdx = fadd fast <16 x float> %i.cdv, %vec.phi1261 ; 2 uses
  %i.cdy = fmul fast <16 x float> %i.cds, %i.cdc
  %i.cdz = fmul fast <16 x float> %i.cdt, %i.cdd
  %i.cea = fadd fast <16 x float> %i.cdy, %vec.phi1258 ; 2 uses
  %i.ceb = fadd fast <16 x float> %i.cdz, %vec.phi1259 ; 2 uses
  %i.cec = fmul fast <16 x float> %i.cdq, %i.cde
  %i.ced = fmul fast <16 x float> %i.cdr, %i.cdf
  %i.cee = fadd fast <16 x float> %i.cec, %vec.phi1256 ; 2 uses
  %i.cef = fadd fast <16 x float> %i.ced, %vec.phi1257 ; 2 uses
  %i.ceg = fmul fast <16 x float> %i.cds, %i.cde
  %i.ceh = fmul fast <16 x float> %i.cdt, %i.cdf
  %i.cei = fadd fast <16 x float> %i.ceg, %vec.phi1254 ; 2 uses
  %i.cej = fadd fast <16 x float> %i.ceh, %vec.phi1255 ; 2 uses
  %index.next1278 = add nuw i64 %index1253, 32    ; 2 uses
  %i.cek = icmp eq i64 %index.next1278, %n.vec1251
  br i1 %i.cek, label %middle.block1279, label %vector.body1252, !llvm.loop !400

middle.block1279:                                 ; preds = %vector.body1252
  %bin.rdx1280 = fadd fast <16 x float> %i.cej, %i.cei
  %i.cel = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1280) ; 3 uses
  %bin.rdx1281 = fadd fast <16 x float> %i.cef, %i.cee
  %i.cem = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1281) ; 3 uses
  %bin.rdx1282 = fadd fast <16 x float> %i.ceb, %i.cea
  %i.cen = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1282) ; 3 uses
  %bin.rdx1283 = fadd fast <16 x float> %i.cdx, %i.cdw
  %i.ceo = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1283) ; 3 uses
  %cmp.n1284 = icmp eq i64 %i.ccc, %n.vec1251
  %i.cep = insertelement <2 x float> poison, float %i.cen, i64 0
  %i.ceq = insertelement <2 x float> %i.cep, float %i.cem, i64 1
  br i1 %cmp.n1284, label %._crit_edge1139.i, label %vec.epilog.iter.check1286

vec.epilog.iter.check1286:                        ; preds = %middle.block1279
  %min.epilog.iters.check1288 = icmp eq i64 %i.ccf, 0
  %i.cer = insertelement <4 x float> poison, float %i.cen, i64 0
  %i.ces = insertelement <4 x float> %i.cer, float %i.cem, i64 1
  %i.cet = insertelement <4 x float> %i.ces, float %i.cel, i64 2
  %i.ceu = insertelement <4 x float> %i.cet, float %i.ceo, i64 3
  br i1 %min.epilog.iters.check1288, label %.lr.ph1138.i.preheader, label %vec.epilog.ph1289, !prof !25

vec.epilog.ph1289:                                ; preds = %vector.main.loop.iter.check1248, %vec.epilog.iter.check1286
  %vec.epilog.resume.val1290 = phi i64 [ %n.vec1251, %vec.epilog.iter.check1286 ], [ 0, %vector.main.loop.iter.check1248 ]
  %i.cev = phi <4 x float> [ %i.ceu, %vec.epilog.iter.check1286 ], [ %i.cbu, %vector.main.loop.iter.check1248 ] ; 4 uses
  %n.vec1295 = and i64 %i.ccc, 8589934588         ; 4 uses
  %i.cew = trunc i64 %n.vec1295 to i32
  %i.cex = add i32 %.01633.lcssa.i, %i.cew
  %i.cey = shl nuw nsw i64 %n.vec1295, 2          ; 2 uses
  %i.cez = getelementptr i8, ptr %.01635.lcssa.i, i64 %i.cey
  %i.cfa = getelementptr i8, ptr %.101714.lcssa.i, i64 %i.cey ; 2 uses
  %9 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cev, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %10 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cev, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %11 = shufflevector <4 x float> %i.cev, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %12 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cev, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1296

vec.epilog.vector.body1296:                       ; preds = %vec.epilog.vector.body1296, %vec.epilog.ph1289
  %index1297 = phi i64 [ %vec.epilog.resume.val1290, %vec.epilog.ph1289 ], [ %index.next1310, %vec.epilog.vector.body1296 ] ; 2 uses
  %vec.phi1298 = phi <4 x float> [ %9, %vec.epilog.ph1289 ], [ %34, %vec.epilog.vector.body1296 ]
  %vec.phi1299 = phi <4 x float> [ %10, %vec.epilog.ph1289 ], [ %32, %vec.epilog.vector.body1296 ]
  %vec.phi1300 = phi <4 x float> [ %11, %vec.epilog.ph1289 ], [ %30, %vec.epilog.vector.body1296 ]
  %vec.phi1301 = phi <4 x float> [ %12, %vec.epilog.ph1289 ], [ %28, %vec.epilog.vector.body1296 ]
  %i.cfb = shl i64 %index1297, 2                  ; 2 uses
  %next.gep1302 = getelementptr i8, ptr %.01635.lcssa.i, i64 %i.cfb
  %next.gep1303 = getelementptr i8, ptr %.101714.lcssa.i, i64 %i.cfb
  %wide.vec1304 = load <8 x i16>, ptr %next.gep1302, align 2, !tbaa !24
  %13 = freeze <8 x i16> %wide.vec1304            ; 2 uses
  %14 = bitcast <8 x i16> %13 to <4 x i32>
  %15 = bitcast <8 x i16> %13 to <4 x i32>
  %16 = and <4 x i32> %15, splat (i32 -65536)
  %17 = shl <4 x i32> %14, splat (i32 16)
  %18 = bitcast <4 x i32> %17 to <4 x float>      ; 2 uses
  %19 = bitcast <4 x i32> %16 to <4 x float>      ; 2 uses
  %wide.vec1307 = load <8 x i16>, ptr %next.gep1303, align 2, !tbaa !24
  %20 = freeze <8 x i16> %wide.vec1307            ; 2 uses
  %21 = bitcast <8 x i16> %20 to <4 x i32>
  %22 = bitcast <8 x i16> %20 to <4 x i32>
  %23 = and <4 x i32> %22, splat (i32 -65536)
  %24 = shl <4 x i32> %21, splat (i32 16)
  %25 = bitcast <4 x i32> %24 to <4 x float>      ; 2 uses
  %26 = bitcast <4 x i32> %23 to <4 x float>      ; 2 uses
  %27 = fmul fast <4 x float> %25, %18
  %28 = fadd fast <4 x float> %27, %vec.phi1301   ; 2 uses
  %29 = fmul fast <4 x float> %26, %18
  %30 = fadd fast <4 x float> %29, %vec.phi1300   ; 2 uses
  %31 = fmul fast <4 x float> %25, %19
  %32 = fadd fast <4 x float> %31, %vec.phi1299   ; 2 uses
  %33 = fmul fast <4 x float> %26, %19
  %34 = fadd fast <4 x float> %33, %vec.phi1298   ; 2 uses
  %index.next1310 = add nuw i64 %index1297, 4     ; 2 uses
  %i.cfc = icmp eq i64 %index.next1310, %n.vec1295
  br i1 %i.cfc, label %vec.epilog.middle.block1311, label %vec.epilog.vector.body1296, !llvm.loop !401

vec.epilog.middle.block1311:                      ; preds = %vec.epilog.vector.body1296
  %i.cfd = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %34) ; 2 uses
  %i.cfe = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %32) ; 2 uses
  %i.cff = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %30) ; 2 uses
  %i.cfg = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %28) ; 2 uses
  %cmp.n1312 = icmp eq i64 %i.ccc, %n.vec1295
  %i.cfh = insertelement <2 x float> poison, float %i.cff, i64 0
  %i.cfi = insertelement <2 x float> %i.cfh, float %i.cfe, i64 1
  br i1 %cmp.n1312, label %._crit_edge1139.i, label %.lr.ph1138.i.preheader

.lr.ph1138.i.preheader:                           ; preds = %iter.check1285, %vec.epilog.iter.check1286, %vec.epilog.middle.block1311
  %.116341137.i.ph = phi i32 [ %.01633.lcssa.i, %iter.check1285 ], [ %i.cch, %vec.epilog.iter.check1286 ], [ %i.cex, %vec.epilog.middle.block1311 ]
  %.116361136.i.ph = phi ptr [ %.01635.lcssa.i, %iter.check1285 ], [ %i.ccj, %vec.epilog.iter.check1286 ], [ %i.cez, %vec.epilog.middle.block1311 ]
  %.216391135.i.ph = phi float [ %i.cbx, %iter.check1285 ], [ %i.cel, %vec.epilog.iter.check1286 ], [ %i.cfd, %vec.epilog.middle.block1311 ]
  %.216421134.i.ph = phi float [ %i.cce, %iter.check1285 ], [ %i.cem, %vec.epilog.iter.check1286 ], [ %i.cfe, %vec.epilog.middle.block1311 ]
  %.216451133.i.ph = phi float [ %i.ccd, %iter.check1285 ], [ %i.cen, %vec.epilog.iter.check1286 ], [ %i.cff, %vec.epilog.middle.block1311 ]
  %.216481132.i.ph = phi float [ %i.cby, %iter.check1285 ], [ %i.ceo, %vec.epilog.iter.check1286 ], [ %i.cfg, %vec.epilog.middle.block1311 ]
  %.1117151131.i.ph = phi ptr [ %.101714.lcssa.i, %iter.check1285 ], [ %i.cck, %vec.epilog.iter.check1286 ], [ %i.cfa, %vec.epilog.middle.block1311 ]
  br label %.lr.ph1138.i

.lr.ph1123.i:                                     ; preds = %.lr.ph1123.i.preheader, %.lr.ph1123.i
  %.016331121.i = phi i32 [ %i.cgi, %.lr.ph1123.i ], [ %.016331121.i.ph, %.lr.ph1123.i.preheader ]
  %.016351120.i = phi ptr [ %i.cgg, %.lr.ph1123.i ], [ %.016351120.i.ph, %.lr.ph1123.i.preheader ] ; 2 uses
  %.1017141115.i = phi ptr [ %i.cgh, %.lr.ph1123.i ], [ %.1017141115.i.ph, %.lr.ph1123.i.preheader ] ; 2 uses
  %i.cfj = phi <4 x float> [ %i.cgf, %.lr.ph1123.i ], [ %.ph1795, %.lr.ph1123.i.preheader ]
  %i.cfk = load <4 x i16>, ptr %.016351120.i, align 2, !tbaa !24 ; 2 uses
  %i.cfl = shufflevector <4 x i16> %i.cfk, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 2, i32 0>
  %i.cfm = zext <4 x i16> %i.cfl to <4 x i32>
  %i.cfn = shl nuw <4 x i32> %i.cfm, splat (i32 16)
  %i.cfo = bitcast <4 x i32> %i.cfn to <4 x float>
  %i.cfp = shufflevector <4 x i16> %i.cfk, <4 x i16> poison, <4 x i32> <i32 1, i32 3, i32 3, i32 1>
  %i.cfq = zext <4 x i16> %i.cfp to <4 x i32>
  %i.cfr = shl nuw <4 x i32> %i.cfq, splat (i32 16)
  %i.cfs = bitcast <4 x i32> %i.cfr to <4 x float>
  %i.cft = load <4 x i16>, ptr %.1017141115.i, align 2, !tbaa !24 ; 2 uses
  %i.cfu = shufflevector <4 x i16> %i.cft, <4 x i16> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 0>
  %i.cfv = zext <4 x i16> %i.cfu to <4 x i32>
  %i.cfw = shl nuw <4 x i32> %i.cfv, splat (i32 16)
  %i.cfx = bitcast <4 x i32> %i.cfw to <4 x float>
  %i.cfy = shufflevector <4 x i16> %i.cft, <4 x i16> poison, <4 x i32> <i32 3, i32 1, i32 3, i32 1>
  %i.cfz = zext <4 x i16> %i.cfy to <4 x i32>
  %i.cga = shl nuw <4 x i32> %i.cfz, splat (i32 16)
  %i.cgb = bitcast <4 x i32> %i.cga to <4 x float>
  %i.cgc = fmul fast <4 x float> %i.cfx, %i.cfo
  %i.cgd = fmul fast <4 x float> %i.cgb, %i.cfs
  %i.cge = fadd fast <4 x float> %i.cfj, %i.cgc
  %i.cgf = fadd fast <4 x float> %i.cge, %i.cgd   ; 2 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %.016351120.i, i64 8
  %i.cgh = getelementptr inbounds nuw i8, ptr %.1017141115.i, i64 8
  %i.cgi = add nuw nsw i32 %.016331121.i, 2       ; 2 uses
  %i.cgj = or disjoint i32 %i.cgi, 1
  %i.cgk = icmp slt i32 %i.cgj, %8
  br i1 %i.cgk, label %.lr.ph1123.i, label %.preheader384.loopexit.i, !llvm.loop !402

.lr.ph1138.i:                                     ; preds = %.lr.ph1138.i.preheader, %.lr.ph1138.i
  %.116341137.i = phi i32 [ %i.chd, %.lr.ph1138.i ], [ %.116341137.i.ph, %.lr.ph1138.i.preheader ]
  %.116361136.i = phi ptr [ %i.chb, %.lr.ph1138.i ], [ %.116361136.i.ph, %.lr.ph1138.i.preheader ] ; 2 uses
  %.216391135.i = phi float [ %i.cha, %.lr.ph1138.i ], [ %.216391135.i.ph, %.lr.ph1138.i.preheader ]
  %.216421134.i = phi float [ %i.chf, %.lr.ph1138.i ], [ %.216421134.i.ph, %.lr.ph1138.i.preheader ]
  %.216451133.i = phi float [ %i.che, %.lr.ph1138.i ], [ %.216451133.i.ph, %.lr.ph1138.i.preheader ]
  %.216481132.i = phi float [ %i.cgu, %.lr.ph1138.i ], [ %.216481132.i.ph, %.lr.ph1138.i.preheader ]
  %.1117151131.i = phi ptr [ %i.chc, %.lr.ph1138.i ], [ %.1117151131.i.ph, %.lr.ph1138.i.preheader ] ; 2 uses
  %i.cgl = load <2 x i16>, ptr %.116361136.i, align 2, !tbaa !24
  %i.cgm = zext <2 x i16> %i.cgl to <2 x i32>
  %i.cgn = shl nuw <2 x i32> %i.cgm, splat (i32 16)
  %i.cgo = bitcast <2 x i32> %i.cgn to <2 x float> ; 3 uses
  %i.cgp = load <2 x i16>, ptr %.1117151131.i, align 2, !tbaa !24
  %i.cgq = zext <2 x i16> %i.cgp to <2 x i32>
  %i.cgr = shl nuw <2 x i32> %i.cgq, splat (i32 16)
  %shift = bitcast <2 x i32> %i.cgr to <2 x float> ; 2 uses
  %i.cgs = shufflevector <2 x float> %shift, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %foldExtExtBinop = fmul fast <2 x float> %shift, %i.cgo
  %i.cgt = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cgu = fadd fast float %i.cgt, %.216481132.i  ; 2 uses
  %i.cgv = fmul fast <2 x float> %i.cgs, %i.cgo
  %i.cgw = insertelement <2 x float> poison, float %.216451133.i, i64 0
  %i.cgx = insertelement <2 x float> %i.cgw, float %.216421134.i, i64 1
  %i.cgy = fadd fast <2 x float> %i.cgv, %i.cgx   ; 3 uses
  %shift1702 = shufflevector <2 x float> %i.cgo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1703 = fmul fast <2 x float> %i.cgs, %shift1702
  %i.cgz = extractelement <2 x float> %foldExtExtBinop1703, i64 0
  %i.cha = fadd fast float %i.cgz, %.216391135.i  ; 2 uses
  %i.chb = getelementptr inbounds nuw i8, ptr %.116361136.i, i64 4
  %i.chc = getelementptr inbounds nuw i8, ptr %.1117151131.i, i64 4 ; 2 uses
  %i.chd = add nuw nsw i32 %.116341137.i, 1       ; 2 uses
  %exitcond1792.not.i = icmp eq i32 %i.chd, %8
  %i.che = extractelement <2 x float> %i.cgy, i64 0
  %i.chf = extractelement <2 x float> %i.cgy, i64 1
  br i1 %exitcond1792.not.i, label %._crit_edge1139.i, label %.lr.ph1138.i, !llvm.loop !403

._crit_edge1139.i:                                ; preds = %.lr.ph1138.i, %middle.block1279, %vec.epilog.middle.block1311, %.preheader384.i
  %.111715.lcssa.i = phi ptr [ %.101714.lcssa.i, %.preheader384.i ], [ %i.cfa, %vec.epilog.middle.block1311 ], [ %i.cck, %middle.block1279 ], [ %i.chc, %.lr.ph1138.i ] ; 2 uses
  %.21648.lcssa.i = phi float [ %i.cby, %.preheader384.i ], [ %i.cfg, %vec.epilog.middle.block1311 ], [ %i.ceo, %middle.block1279 ], [ %i.cgu, %.lr.ph1138.i ]
  %.21639.lcssa.i = phi float [ %i.cbx, %.preheader384.i ], [ %i.cfd, %vec.epilog.middle.block1311 ], [ %i.cel, %middle.block1279 ], [ %i.cha, %.lr.ph1138.i ]
  %i.chg = phi <2 x float> [ %i.cbw, %.preheader384.i ], [ %i.cfi, %vec.epilog.middle.block1311 ], [ %i.ceq, %middle.block1279 ], [ %i.cgy, %.lr.ph1138.i ]
  store float %.21648.lcssa.i, ptr %.221147.i, align 4, !tbaa !444
  %i.chh = getelementptr inbounds nuw i8, ptr %.221147.i, i64 4
  store <2 x float> %i.chg, ptr %i.chh, align 4, !tbaa !444
  %i.chi = getelementptr inbounds nuw i8, ptr %.221147.i, i64 12
  store float %.21639.lcssa.i, ptr %i.chi, align 4, !tbaa !444
  %i.chj = getelementptr inbounds nuw i8, ptr %.221147.i, i64 16 ; 2 uses
  %i.chk = add nuw nsw i32 %.317021146.i, 2       ; 3 uses
  %i.chl = or disjoint i32 %i.chk, 1
  %i.chm = icmp slt i32 %i.chl, %6
  br i1 %i.chm, label %.lr.ph1148.i, label %.preheader388.i, !llvm.loop !404

.lr.ph1177.i:                                     ; preds = %.lr.ph1177.i.preheader, %._crit_edge1170.i
  %.231176.i = phi ptr [ %i.cud, %._crit_edge1170.i ], [ %.22.lcssa.i, %.lr.ph1177.i.preheader ] ; 4 uses
  %.417031175.i = phi i32 [ %i.cue, %._crit_edge1170.i ], [ %.31702.lcssa.i, %.lr.ph1177.i.preheader ]
  %.1217161174.i = phi ptr [ %.141718.lcssa.i, %._crit_edge1170.i ], [ %.91713.lcssa.i, %.lr.ph1177.i.preheader ] ; 10 uses
  br i1 %.not1796.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph1177.i
  %i.chn = load <2 x float>, ptr %.231176.i, align 4, !tbaa !444
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph1177.i
  %i.cho = phi <2 x float> [ %i.chn, %bb.an ], [ zeroinitializer, %.lr.ph1177.i ] ; 5 uses
  br i1 %i.amo, label %iter.check1216, label %.preheader383.i

iter.check1216:                                   ; preds = %bb.ao
  br i1 %min.iters.check1152, label %.lr.ph1158.i.preheader, label %vector.main.loop.iter.check1153

vector.main.loop.iter.check1153:                  ; preds = %iter.check1216
  %i.chp = extractelement <2 x float> %i.cho, i64 0
  %i.chq = extractelement <2 x float> %i.cho, i64 1
  br i1 %min.iters.check1154, label %vec.epilog.ph1220, label %vector.ph1155

vector.ph1155:                                    ; preds = %vector.main.loop.iter.check1153
  %i.chr = getelementptr i8, ptr %.1217161174.i, i64 %i.aob
  %i.chs = shufflevector <2 x float> %i.cho, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cht = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.chs, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.chu = shufflevector <16 x float> %i.chs, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.ph1155, %vector.body1157
  %index1158 = phi i64 [ 0, %vector.ph1155 ], [ %index.next1207, %vector.body1157 ] ; 3 uses
  %vec.phi1159 = phi <16 x float> [ %i.cht, %vector.ph1155 ], [ %i.cmd, %vector.body1157 ]
  %vec.phi1160 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.cme, %vector.body1157 ]
  %vec.phi1161 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.cmf, %vector.body1157 ]
  %vec.phi1162 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.cmg, %vector.body1157 ]
  %vec.phi1163 = phi <16 x float> [ %i.chu, %vector.ph1155 ], [ %i.cln, %vector.body1157 ]
  %vec.phi1164 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.clo, %vector.body1157 ]
  %vec.phi1165 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.clp, %vector.body1157 ]
  %vec.phi1166 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.clq, %vector.body1157 ]
  %i.chv = shl i64 %index1158, 3                  ; 4 uses
  %next.gep1167 = getelementptr i8, ptr %.31182.i, i64 %i.chv
  %i.chw = getelementptr i8, ptr %.31182.i, i64 %i.chv
  %next.gep1168 = getelementptr i8, ptr %i.chw, i64 128
  %i.chx = getelementptr i8, ptr %.31182.i, i64 %i.chv
  %next.gep1169 = getelementptr i8, ptr %i.chx, i64 256
  %i.chy = getelementptr i8, ptr %.31182.i, i64 %i.chv
  %next.gep1170 = getelementptr i8, ptr %i.chy, i64 384
  %i.chz = shl i64 %index1158, 2                  ; 4 uses
  %next.gep1171 = getelementptr i8, ptr %.1217161174.i, i64 %i.chz
  %i.cia = getelementptr i8, ptr %.1217161174.i, i64 %i.chz
  %next.gep1172 = getelementptr i8, ptr %i.cia, i64 64
  %i.cib = getelementptr i8, ptr %.1217161174.i, i64 %i.chz
  %next.gep1173 = getelementptr i8, ptr %i.cib, i64 128
  %i.cic = getelementptr i8, ptr %.1217161174.i, i64 %i.chz
  %next.gep1174 = getelementptr i8, ptr %i.cic, i64 192
  %wide.vec1175 = load <64 x i16>, ptr %next.gep1167, align 2, !tbaa !24 ; 4 uses
  %strided.vec1176 = shufflevector <64 x i16> %wide.vec1175, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1177 = shufflevector <64 x i16> %wide.vec1175, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1178 = shufflevector <64 x i16> %wide.vec1175, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1179 = shufflevector <64 x i16> %wide.vec1175, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1180 = load <64 x i16>, ptr %next.gep1168, align 2, !tbaa !24 ; 4 uses
  %strided.vec1181 = shufflevector <64 x i16> %wide.vec1180, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1182 = shufflevector <64 x i16> %wide.vec1180, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1183 = shufflevector <64 x i16> %wide.vec1180, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1184 = shufflevector <64 x i16> %wide.vec1180, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1185 = load <64 x i16>, ptr %next.gep1169, align 2, !tbaa !24 ; 4 uses
  %strided.vec1186 = shufflevector <64 x i16> %wide.vec1185, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1187 = shufflevector <64 x i16> %wide.vec1185, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1188 = shufflevector <64 x i16> %wide.vec1185, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1189 = shufflevector <64 x i16> %wide.vec1185, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1190 = load <64 x i16>, ptr %next.gep1170, align 2, !tbaa !24 ; 4 uses
  %strided.vec1191 = shufflevector <64 x i16> %wide.vec1190, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1192 = shufflevector <64 x i16> %wide.vec1190, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1193 = shufflevector <64 x i16> %wide.vec1190, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1194 = shufflevector <64 x i16> %wide.vec1190, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.cid = zext <16 x i16> %strided.vec1176 to <16 x i32>
  %i.cie = zext <16 x i16> %strided.vec1181 to <16 x i32>
  %i.cif = zext <16 x i16> %strided.vec1186 to <16 x i32>
  %i.cig = zext <16 x i16> %strided.vec1191 to <16 x i32>
  %i.cih = shl nuw <16 x i32> %i.cid, splat (i32 16)
  %i.cii = shl nuw <16 x i32> %i.cie, splat (i32 16)
  %i.cij = shl nuw <16 x i32> %i.cif, splat (i32 16)
  %i.cik = shl nuw <16 x i32> %i.cig, splat (i32 16)
  %i.cil = bitcast <16 x i32> %i.cih to <16 x float>
  %i.cim = bitcast <16 x i32> %i.cii to <16 x float>
  %i.cin = bitcast <16 x i32> %i.cij to <16 x float>
  %i.cio = bitcast <16 x i32> %i.cik to <16 x float>
  %i.cip = zext <16 x i16> %strided.vec1177 to <16 x i32>
  %i.ciq = zext <16 x i16> %strided.vec1182 to <16 x i32>
  %i.cir = zext <16 x i16> %strided.vec1187 to <16 x i32>
  %i.cis = zext <16 x i16> %strided.vec1192 to <16 x i32>
  %i.cit = shl nuw <16 x i32> %i.cip, splat (i32 16)
  %i.ciu = shl nuw <16 x i32> %i.ciq, splat (i32 16)
  %i.civ = shl nuw <16 x i32> %i.cir, splat (i32 16)
  %i.ciw = shl nuw <16 x i32> %i.cis, splat (i32 16)
  %i.cix = bitcast <16 x i32> %i.cit to <16 x float>
  %i.ciy = bitcast <16 x i32> %i.ciu to <16 x float>
  %i.ciz = bitcast <16 x i32> %i.civ to <16 x float>
  %i.cja = bitcast <16 x i32> %i.ciw to <16 x float>
end_hunk_0
begin_hunk_1_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.dwu = getelementptr i8, ptr %next.gep1417, i64 96
  %wide.load1422 = load <16 x i16>, ptr %next.gep1417, align 2, !tbaa !24
  %wide.load1423 = load <16 x i16>, ptr %i.dws, align 2, !tbaa !24
  %wide.load1424 = load <16 x i16>, ptr %i.dwt, align 2, !tbaa !24
  %wide.load1425 = load <16 x i16>, ptr %i.dwu, align 2, !tbaa !24
  %i.dwv = zext <16 x i16> %wide.load1422 to <16 x i32>
  %i.dww = zext <16 x i16> %wide.load1423 to <16 x i32>
  %i.dwx = zext <16 x i16> %wide.load1424 to <16 x i32>
  %i.dwy = zext <16 x i16> %wide.load1425 to <16 x i32>
  %i.dwz = shl nuw <16 x i32> %i.dwv, splat (i32 16)
  %i.dxa = shl nuw <16 x i32> %i.dww, splat (i32 16)
  %i.dxb = shl nuw <16 x i32> %i.dwx, splat (i32 16)
  %i.dxc = shl nuw <16 x i32> %i.dwy, splat (i32 16)
  %i.dxd = bitcast <16 x i32> %i.dwz to <16 x float>
  %i.dxe = bitcast <16 x i32> %i.dxa to <16 x float>
  %i.dxf = bitcast <16 x i32> %i.dxb to <16 x float>
  %i.dxg = bitcast <16 x i32> %i.dxc to <16 x float>
  %i.dxh = fmul fast <16 x float> %i.dxd, %i.dwo
  %i.dxi = fmul fast <16 x float> %i.dxe, %i.dwp
  %i.dxj = fmul fast <16 x float> %i.dxf, %i.dwq
  %i.dxk = fmul fast <16 x float> %i.dxg, %i.dwr
  %i.dxl = fadd fast <16 x float> %i.dxh, %vec.phi1412 ; 2 uses
  %i.dxm = fadd fast <16 x float> %i.dxi, %vec.phi1413 ; 2 uses
  %i.dxn = fadd fast <16 x float> %i.dxj, %vec.phi1414 ; 2 uses
  %i.dxo = fadd fast <16 x float> %i.dxk, %vec.phi1415 ; 2 uses
  %index.next1426 = add nuw i64 %index1411, 64    ; 2 uses
  %i.dxp = icmp eq i64 %index.next1426, %n.vec1409
  br i1 %i.dxp, label %middle.block1427, label %vector.body1410, !llvm.loop !434

middle.block1427:                                 ; preds = %vector.body1410
  %bin.rdx1428 = fadd fast <16 x float> %i.dxm, %i.dxl
  %bin.rdx1429 = fadd fast <16 x float> %i.dxn, %bin.rdx1428
  %bin.rdx1430 = fadd fast <16 x float> %i.dxo, %bin.rdx1429
  %i.dxq = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1430) ; 3 uses
  %cmp.n1431 = icmp eq i64 %i.dvu, %n.vec1409
  br i1 %cmp.n1431, label %._crit_edge1411.i, label %vec.epilog.iter.check1433

vec.epilog.iter.check1433:                        ; preds = %middle.block1427
  %min.epilog.iters.check1435 = icmp eq i64 %i.dvv, 0
  br i1 %min.epilog.iters.check1435, label %.lr.ph1410.i.preheader, label %vec.epilog.ph1436, !prof !26

vec.epilog.ph1436:                                ; preds = %vector.main.loop.iter.check1406, %vec.epilog.iter.check1433
  %vec.epilog.resume.val1437 = phi i64 [ %n.vec1409, %vec.epilog.iter.check1433 ], [ 0, %vector.main.loop.iter.check1406 ]
  %bc.merge.rdx1438 = phi float [ %i.dxq, %vec.epilog.iter.check1433 ], [ %.11395.lcssa.i, %vector.main.loop.iter.check1406 ]
  %n.vec1439 = and i64 %i.dvu, 8589934584         ; 4 uses
  %i.dxr = trunc i64 %n.vec1439 to i32
  %i.dxs = add i32 %.01391.lcssa.i, %i.dxr
  %i.dxt = shl nuw nsw i64 %n.vec1439, 1          ; 2 uses
  %i.dxu = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.dxt
  %i.dxv = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.dxt ; 2 uses
  %i.dxw = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1438, i64 0
  br label %vec.epilog.vector.body1440

vec.epilog.vector.body1440:                       ; preds = %vec.epilog.vector.body1440, %vec.epilog.ph1436
  %index1441 = phi i64 [ %vec.epilog.resume.val1437, %vec.epilog.ph1436 ], [ %index.next1447, %vec.epilog.vector.body1440 ] ; 2 uses
  %vec.phi1442 = phi <8 x float> [ %i.dxw, %vec.epilog.ph1436 ], [ %i.dyf, %vec.epilog.vector.body1440 ]
  %i.dxx = shl i64 %index1441, 1                  ; 2 uses
  %next.gep1443 = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.dxx
  %next.gep1444 = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.dxx
  %wide.load1445 = load <8 x i16>, ptr %next.gep1443, align 2, !tbaa !24
  %i.dxy = zext <8 x i16> %wide.load1445 to <8 x i32>
  %i.dxz = shl nuw <8 x i32> %i.dxy, splat (i32 16)
  %i.dya = bitcast <8 x i32> %i.dxz to <8 x float>
  %wide.load1446 = load <8 x i16>, ptr %next.gep1444, align 2, !tbaa !24
  %i.dyb = zext <8 x i16> %wide.load1446 to <8 x i32>
  %i.dyc = shl nuw <8 x i32> %i.dyb, splat (i32 16)
  %i.dyd = bitcast <8 x i32> %i.dyc to <8 x float>
  %i.dye = fmul fast <8 x float> %i.dyd, %i.dya
  %i.dyf = fadd fast <8 x float> %i.dye, %vec.phi1442 ; 2 uses
  %index.next1447 = add nuw i64 %index1441, 8     ; 2 uses
  %i.dyg = icmp eq i64 %index.next1447, %n.vec1439
  br i1 %i.dyg, label %vec.epilog.middle.block1448, label %vec.epilog.vector.body1440, !llvm.loop !435

vec.epilog.middle.block1448:                      ; preds = %vec.epilog.vector.body1440
  %i.dyh = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dyf) ; 2 uses
  %cmp.n1449 = icmp eq i64 %i.dvu, %n.vec1439
  br i1 %cmp.n1449, label %._crit_edge1411.i, label %.lr.ph1410.i.preheader

.lr.ph1410.i.preheader:                           ; preds = %iter.check1432, %vec.epilog.iter.check1433, %vec.epilog.middle.block1448
  %.213931408.i.ph = phi i32 [ %.01391.lcssa.i, %iter.check1432 ], [ %i.dvx, %vec.epilog.iter.check1433 ], [ %i.dxs, %vec.epilog.middle.block1448 ]
  %.213961407.i.ph = phi float [ %.11395.lcssa.i, %iter.check1432 ], [ %i.dxq, %vec.epilog.iter.check1433 ], [ %i.dyh, %vec.epilog.middle.block1448 ]
  %.213991406.i.ph = phi ptr [ %.01397.lcssa.i, %iter.check1432 ], [ %i.dvz, %vec.epilog.iter.check1433 ], [ %i.dxu, %vec.epilog.middle.block1448 ]
  %.1915611405.i.ph = phi ptr [ %.171559.lcssa.i, %iter.check1432 ], [ %i.dwa, %vec.epilog.iter.check1433 ], [ %i.dxv, %vec.epilog.middle.block1448 ]
  br label %.lr.ph1410.i

.lr.ph1384.i:                                     ; preds = %.lr.ph1384.i.preheader, %.lr.ph1384.i
  %.013911382.i = phi i32 [ %i.dzg, %.lr.ph1384.i ], [ %.013911382.i.ph, %.lr.ph1384.i.preheader ]
  %.113951381.i = phi float [ %i.dzd, %.lr.ph1384.i ], [ %.113951381.i.ph, %.lr.ph1384.i.preheader ]
  %.013971380.i = phi ptr [ %i.dze, %.lr.ph1384.i ], [ %.013971380.i.ph, %.lr.ph1384.i.preheader ] ; 3 uses
  %.1715591379.i = phi ptr [ %i.dzf, %.lr.ph1384.i ], [ %.1715591379.i.ph, %.lr.ph1384.i.preheader ] ; 3 uses
  %i.dyi = load i16, ptr %.013971380.i, align 2, !tbaa !24
  %i.dyj = zext i16 %i.dyi to i32
  %i.dyk = shl nuw i32 %i.dyj, 16
  %i.dyl = bitcast i32 %i.dyk to float
  %i.dym = getelementptr inbounds nuw i8, ptr %.013971380.i, i64 2
  %i.dyn = load i16, ptr %i.dym, align 2, !tbaa !24
  %i.dyo = zext i16 %i.dyn to i32
  %i.dyp = shl nuw i32 %i.dyo, 16
  %i.dyq = bitcast i32 %i.dyp to float
  %i.dyr = load i16, ptr %.1715591379.i, align 2, !tbaa !24
  %i.dys = zext i16 %i.dyr to i32
  %i.dyt = shl nuw i32 %i.dys, 16
  %i.dyu = bitcast i32 %i.dyt to float
  %i.dyv = getelementptr inbounds nuw i8, ptr %.1715591379.i, i64 2
  %i.dyw = load i16, ptr %i.dyv, align 2, !tbaa !24
  %i.dyx = zext i16 %i.dyw to i32
  %i.dyy = shl nuw i32 %i.dyx, 16
  %i.dyz = bitcast i32 %i.dyy to float
  %i.dza = fmul fast float %i.dyu, %i.dyl
  %i.dzb = fmul fast float %i.dyz, %i.dyq
  %i.dzc = fadd fast float %.113951381.i, %i.dza
  %i.dzd = fadd fast float %i.dzc, %i.dzb         ; 2 uses
  %i.dze = getelementptr inbounds nuw i8, ptr %.013971380.i, i64 4
  %i.dzf = getelementptr inbounds nuw i8, ptr %.1715591379.i, i64 4
  %i.dzg = add nuw nsw i32 %.013911382.i, 2       ; 2 uses
  %i.dzh = or disjoint i32 %i.dzg, 1
  %i.dzi = icmp slt i32 %i.dzh, %8
  br i1 %i.dzi, label %.lr.ph1384.i, label %.preheader.loopexit.i, !llvm.loop !436

.lr.ph1410.i:                                     ; preds = %.lr.ph1410.i.preheader, %.lr.ph1410.i
  %.213931408.i = phi i32 [ %i.dzv, %.lr.ph1410.i ], [ %.213931408.i.ph, %.lr.ph1410.i.preheader ]
  %.213961407.i = phi float [ %i.dzs, %.lr.ph1410.i ], [ %.213961407.i.ph, %.lr.ph1410.i.preheader ]
  %.213991406.i = phi ptr [ %i.dzt, %.lr.ph1410.i ], [ %.213991406.i.ph, %.lr.ph1410.i.preheader ] ; 2 uses
  %.1915611405.i = phi ptr [ %i.dzu, %.lr.ph1410.i ], [ %.1915611405.i.ph, %.lr.ph1410.i.preheader ] ; 2 uses
  %i.dzj = load i16, ptr %.213991406.i, align 2, !tbaa !24
  %i.dzk = zext i16 %i.dzj to i32
  %i.dzl = shl nuw i32 %i.dzk, 16
  %i.dzm = bitcast i32 %i.dzl to float
  %i.dzn = load i16, ptr %.1915611405.i, align 2, !tbaa !24
  %i.dzo = zext i16 %i.dzn to i32
  %i.dzp = shl nuw i32 %i.dzo, 16
  %i.dzq = bitcast i32 %i.dzp to float
  %i.dzr = fmul fast float %i.dzq, %i.dzm
  %i.dzs = fadd fast float %i.dzr, %.213961407.i  ; 2 uses
  %i.dzt = getelementptr inbounds nuw i8, ptr %.213991406.i, i64 2
  %i.dzu = getelementptr inbounds nuw i8, ptr %.1915611405.i, i64 2 ; 2 uses
  %i.dzv = add nuw nsw i32 %.213931408.i, 1       ; 2 uses
  %exitcond1807.not.i = icmp eq i32 %i.dzv, %8
  br i1 %exitcond1807.not.i, label %._crit_edge1411.i, label %.lr.ph1410.i, !llvm.loop !437

._crit_edge1411.i:                                ; preds = %.lr.ph1410.i, %middle.block1427, %vec.epilog.middle.block1448, %.preheader.i
  %.191561.lcssa.i = phi ptr [ %.171559.lcssa.i, %.preheader.i ], [ %i.dxv, %vec.epilog.middle.block1448 ], [ %i.dwa, %middle.block1427 ], [ %i.dzu, %.lr.ph1410.i ]
  %.21396.lcssa.i = phi float [ %.11395.lcssa.i, %.preheader.i ], [ %i.dyh, %vec.epilog.middle.block1448 ], [ %i.dxq, %middle.block1427 ], [ %i.dzs, %.lr.ph1410.i ]
  store float %.21396.lcssa.i, ptr %.291419.i, align 4, !tbaa !444
  %i.dzw = getelementptr inbounds nuw i8, ptr %.291419.i, i64 4 ; 2 uses
  %i.dzx = add nuw nsw i32 %.415411418.i, 1       ; 2 uses
  %exitcond1808.not.i = icmp eq i32 %i.dzx, %6
  br i1 %exitcond1808.not.i, label %._crit_edge1421.i, label %.lr.ph1420.i, !llvm.loop !438

._crit_edge1421.i:                                ; preds = %._crit_edge1411.i, %.preheader377.i
  %.29.lcssa.i = phi ptr [ %.28.lcssa.i, %.preheader377.i ], [ %i.dzw, %._crit_edge1411.i ]
  %i.dzy = getelementptr inbounds [2 x i8], ptr %.41425.i, i64 %i.bje
  %i.dzz = add nuw nsw i32 %.413901423.i, 1       ; 2 uses
  %exitcond1809.not.i = icmp eq i32 %i.dzz, %4
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #4

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
!33 = distinct !{!33, i1 false, !"LVerDomain"}
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
!56 = distinct !{!56, i1 false, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !56}
!61 = distinct !{!61, !56}
!62 = distinct !{!62, !18, !20, !21}
!63 = distinct !{!63, !18, !20, !21}
!64 = distinct !{!64, !18, !20}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
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
!77 = distinct !{!77, i1 false, !"LVerDomain"}
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
!90 = distinct !{!90, i1 false, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !18, !20, !21}
!95 = distinct !{!95, !18, !20, !21}
!96 = distinct !{!96, !18, !20}
!97 = distinct !{!97, !18, !20}
!98 = distinct !{!98, !18}
!99 = distinct !{!99, i1 false, !"LVerDomain"}
!100 = distinct !{!100, !99}
!101 = distinct !{!101, !99}
!102 = distinct !{!102, !99}
!103 = distinct !{!103, !18, !20, !21}
!104 = distinct !{!104, !18, !20, !21}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, i1 false, !"LVerDomain"}
!107 = distinct !{!107, !106}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !18, !20, !21}
!110 = distinct !{!110, !18, !20, !21}
!111 = distinct !{!111, !18, !20, !21}
!112 = distinct !{!112, !18, !20, !21}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !18, !20}
!115 = distinct !{!115, !18, !20}
!116 = distinct !{!116, !18}
!117 = !{!34}
!118 = !{!35}
!119 = !{!36}
!120 = !{!37}
!121 = !{!38}
!122 = !{!37, !36, !35, !34}
!123 = !{!57}
!124 = !{!58}
!125 = !{!59}
!126 = !{!60}
!127 = !{!61}
!128 = !{!60, !59, !58, !57}
!129 = !{!66}
!130 = !{!67}
!131 = !{!68}
!132 = !{!69}
!133 = !{!70}
!134 = !{!69, !68, !67, !66}
!135 = !{!78}
!136 = !{!79}
!137 = !{!80}
!138 = !{!79, !78}
!139 = !{!91}
!140 = !{!92}
!141 = !{!93}
!142 = !{!92, !91}
!143 = !{!100}
!144 = !{!101}
!145 = !{!102}
!146 = !{!101, !100}
!147 = !{!107}
!148 = !{!108}
!149 = distinct !{!149, !18}
!150 = distinct !{!150, !19}
!151 = distinct !{!151, !18}
!152 = distinct !{!152, !18}
!153 = distinct !{!153, !18}
!154 = distinct !{!154, !18}
!155 = distinct !{!155, !18}
!156 = distinct !{!156, !19}
!157 = distinct !{!157, !18}
!158 = distinct !{!158, !18}
!159 = distinct !{!159, !18}
!160 = distinct !{!160, !18}
!161 = distinct !{!161, !18}
!162 = distinct !{!162, !18}
!163 = distinct !{!163, !18}
!164 = distinct !{!164, !18}
!165 = distinct !{!165, !19}
!166 = distinct !{!166, !18}
!167 = distinct !{!167, !18}
!168 = distinct !{!168, !18}
!169 = distinct !{!169, !18}
!170 = distinct !{!170, !18}
!171 = distinct !{!171, !18}
!172 = distinct !{!172, !18}
!173 = distinct !{!173, !19}
!174 = distinct !{!174, !18}
!175 = distinct !{!175, !18}
!176 = distinct !{!176, !18}
!177 = distinct !{!177, !18}
!178 = distinct !{!178, !18}
!179 = distinct !{!179, !18}
!180 = distinct !{!180, !18}
!181 = distinct !{!181, !19}
!182 = distinct !{!182, !18}
!183 = distinct !{!183, !18}
!184 = distinct !{!184, !19}
!185 = distinct !{!185, !19}
!186 = distinct !{!186, !18}
!187 = distinct !{!187, !18}
end_hunk_1
