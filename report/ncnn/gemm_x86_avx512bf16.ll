inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.btu = shufflevector <8 x bfloat> %i.btt, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.btv = bitcast <2 x i64> %i.bts to <8 x bfloat>
  %i.btw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.btk, <8 x bfloat> nofpclass(nan inf) %i.btu, <8 x bfloat> nofpclass(nan inf) %i.btv) ; 3 uses
  %i.btx = bitcast <2 x i64> %i.bts to <8 x bfloat>
  %i.bty = shufflevector <8 x bfloat> %i.btx, <8 x bfloat> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.btz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.btn, <8 x bfloat> nofpclass(nan inf) %i.btu, <8 x bfloat> nofpclass(nan inf) %i.bty) ; 3 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %.016621089.i, i64 16 ; 3 uses
  %i.bub = getelementptr inbounds nuw i8, ptr %.717131088.i, i64 32 ; 2 uses
  %niter2622.next.1 = add nuw nsw i32 %niter2622, 2 ; 2 uses
  %niter2622.ncmp.1.not = icmp eq i32 %niter2622.next.1, %unroll_iter2621
  br i1 %niter2622.ncmp.1.not, label %.preheader385.loopexit.i.unr-lcssa, label %.lr.ph1092.i, !llvm.loop !418

.lr.ph1103.i:                                     ; preds = %.lr.ph1103.i.prol.loopexit, %.lr.ph1103.i
  %.116611102.i = phi i32 [ %i.bvg, %.lr.ph1103.i ], [ %.116611102.i.unr, %.lr.ph1103.i.prol.loopexit ]
  %.116631101.i = phi ptr [ %i.bve, %.lr.ph1103.i ], [ %.116631101.i.unr, %.lr.ph1103.i.prol.loopexit ] ; 3 uses
  %.817141100.i = phi ptr [ %i.bvf, %.lr.ph1103.i ], [ %.817141100.i.unr, %.lr.ph1103.i.prol.loopexit ] ; 3 uses
  %.23621099.i = phi <4 x float> [ %i.bvc, %.lr.ph1103.i ], [ %.23621099.i.unr, %.lr.ph1103.i.prol.loopexit ]
  %.23651098.i = phi <4 x float> [ %i.bvd, %.lr.ph1103.i ], [ %.23651098.i.unr, %.lr.ph1103.i.prol.loopexit ]
  %i.buc = load float, ptr %.116631101.i, align 1, !tbaa !17
  %i.bud = insertelement <4 x float> poison, float %i.buc, i64 0
  %i.bue = bitcast <4 x float> %i.bud to <8 x i16>
  %i.buf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bue, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.bug = bitcast <8 x i16> %i.buf to <4 x float> ; 2 uses
  %i.buh = load i64, ptr %.817141100.i, align 1, !tbaa !17
  %i.bui = insertelement <2 x i64> poison, i64 %i.buh, i64 0
  %i.buj = bitcast <2 x i64> %i.bui to <8 x i16>
  %i.buk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.buj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bul = bitcast <8 x i16> %i.buk to <4 x float> ; 2 uses
  %i.bum = shufflevector <4 x float> %i.bul, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bun = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bug, <4 x float> nofpclass(nan inf) %i.bul, <4 x float> nofpclass(nan inf) %.23621099.i)
  %i.buo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bug, <4 x float> nofpclass(nan inf) %i.bum, <4 x float> nofpclass(nan inf) %.23651098.i)
  %i.bup = getelementptr inbounds nuw i8, ptr %.116631101.i, i64 4
  %i.buq = getelementptr inbounds nuw i8, ptr %.817141100.i, i64 8
  %i.bur = load float, ptr %i.bup, align 1, !tbaa !17
  %i.bus = insertelement <4 x float> poison, float %i.bur, i64 0
  %i.but = bitcast <4 x float> %i.bus to <8 x i16>
  %i.buu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.but, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.buv = bitcast <8 x i16> %i.buu to <4 x float> ; 2 uses
  %i.buw = load i64, ptr %i.buq, align 1, !tbaa !17
  %i.bux = insertelement <2 x i64> poison, i64 %i.buw, i64 0
  %i.buy = bitcast <2 x i64> %i.bux to <8 x i16>
  %i.buz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.buy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bva = bitcast <8 x i16> %i.buz to <4 x float> ; 2 uses
  %i.bvb = shufflevector <4 x float> %i.bva, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bvc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.buv, <4 x float> nofpclass(nan inf) %i.bva, <4 x float> nofpclass(nan inf) %i.bun) ; 2 uses
  %i.bvd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.buv, <4 x float> nofpclass(nan inf) %i.bvb, <4 x float> nofpclass(nan inf) %i.buo) ; 2 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %.116631101.i, i64 8
  %i.bvf = getelementptr inbounds nuw i8, ptr %.817141100.i, i64 16 ; 2 uses
  %i.bvg = add nuw nsw i32 %.116611102.i, 2       ; 2 uses
  %exitcond1813.not.i.1 = icmp eq i32 %i.bvg, %8
  br i1 %exitcond1813.not.i.1, label %._crit_edge1104.i, label %.lr.ph1103.i, !llvm.loop !419

._crit_edge1104.i:                                ; preds = %.lr.ph1103.i.prol.loopexit, %.lr.ph1103.i, %.preheader385.i
  %.2365.lcssa.i = phi <4 x float> [ %.1364.lcssa.i, %.preheader385.i ], [ %.lcssa2232.unr, %.lr.ph1103.i.prol.loopexit ], [ %i.bvd, %.lr.ph1103.i ]
  %.2362.lcssa.i = phi <4 x float> [ %.1361.lcssa.i, %.preheader385.i ], [ %.lcssa2233.unr, %.lr.ph1103.i.prol.loopexit ], [ %i.bvc, %.lr.ph1103.i ]
  %.81714.lcssa.i = phi ptr [ %.71713.lcssa.i, %.preheader385.i ], [ %.lcssa2231.unr, %.lr.ph1103.i.prol.loopexit ], [ %i.bvf, %.lr.ph1103.i ] ; 2 uses
  store <4 x float> %.2362.lcssa.i, ptr %.211110.i, align 16, !tbaa !17
  %i.bvh = getelementptr inbounds nuw i8, ptr %.211110.i, i64 16
  store <4 x float> %.2365.lcssa.i, ptr %i.bvh, align 16, !tbaa !17
  %i.bvi = getelementptr inbounds nuw i8, ptr %.211110.i, i64 32 ; 2 uses
  %i.bvj = add nuw nsw i32 %.217031109.i, 4       ; 3 uses
  %i.bvk = or disjoint i32 %i.bvj, 3
  %i.bvl = icmp slt i32 %i.bvk, %6
  br i1 %i.bvl, label %.lr.ph1111.i, label %.preheader389.i, !llvm.loop !420

.preheader388.i:                                  ; preds = %._crit_edge1139.i, %.preheader389.i
  %.91715.lcssa.i = phi ptr [ %.61712.lcssa.i, %.preheader389.i ], [ %.111717.lcssa.i, %._crit_edge1139.i ]
  %.31704.lcssa.i = phi i32 [ %.21703.lcssa.i, %.preheader389.i ], [ %i.cim, %._crit_edge1139.i ] ; 2 uses
  %.22.lcssa.i = phi ptr [ %.21.lcssa.i, %.preheader389.i ], [ %i.cil, %._crit_edge1139.i ] ; 2 uses
  %i.bvm = icmp slt i32 %.31704.lcssa.i, %6
  br i1 %i.bvm, label %.lr.ph1177.i.preheader, label %._crit_edge1178.i

.lr.ph1177.i.preheader:                           ; preds = %.preheader388.i
  %i.bvn = getelementptr i8, ptr %.31182.i, i64 %i.aoa
  %i.bvo = getelementptr i8, ptr %.31182.i, i64 %i.aoe
  br label %.lr.ph1177.i

.lr.ph1148.i:                                     ; preds = %.lr.ph1148.i.preheader, %._crit_edge1139.i
  %.221147.i = phi ptr [ %i.cil, %._crit_edge1139.i ], [ %.21.lcssa.i, %.lr.ph1148.i.preheader ] ; 5 uses
  %.317041146.i = phi i32 [ %i.cim, %._crit_edge1139.i ], [ %.21703.lcssa.i, %.lr.ph1148.i.preheader ]
  %.917151145.i = phi ptr [ %.111717.lcssa.i, %._crit_edge1139.i ], [ %.61712.lcssa.i, %.lr.ph1148.i.preheader ] ; 8 uses
  br i1 %.not1796.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph1148.i
  %i.bvp = load <4 x float>, ptr %.221147.i, align 4, !tbaa !421
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph1148.i
  %i.bvq = phi <4 x float> [ %i.bvp, %bb.al ], [ zeroinitializer, %.lr.ph1148.i ] ; 7 uses
  %i.bvr = shufflevector <4 x float> %i.bvq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  br i1 %i.amo, label %iter.check1536, label %.preheader384.i

iter.check1536:                                   ; preds = %bb.am
  br i1 %min.iters.check1483, label %.lr.ph1123.i.preheader, label %vector.main.loop.iter.check1484

vector.main.loop.iter.check1484:                  ; preds = %iter.check1536
  %i.bvs = extractelement <4 x float> %i.bvq, i64 0
  %i.bvt = extractelement <4 x float> %i.bvq, i64 1
  %i.bvu = extractelement <4 x float> %i.bvq, i64 2
  %i.bvv = extractelement <4 x float> %i.bvq, i64 3
  br i1 %min.iters.check1485, label %vec.epilog.ph1540, label %vector.ph1486

vector.ph1486:                                    ; preds = %vector.main.loop.iter.check1484
  %i.bvw = getelementptr i8, ptr %.917151145.i, i64 %i.ant
  %i.bvx = shufflevector <4 x float> %i.bvq, <4 x float> poison, <16 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvy = shufflevector <4 x float> %i.bvq, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.bvz = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.bvy, <16 x i32> <i32 19, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bwa = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.bvy, <16 x i32> <i32 18, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bwb = shufflevector <16 x float> %i.bvx, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bwc = shufflevector <16 x float> %i.bvy, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1488

vector.body1488:                                  ; preds = %vector.body1488, %vector.ph1486
  %index1489 = phi i64 [ 0, %vector.ph1486 ], [ %index.next1522, %vector.body1488 ] ; 2 uses
  %vec.phi1490 = phi <16 x float> [ %i.bvz, %vector.ph1486 ], [ %i.bzf, %vector.body1488 ]
  %vec.phi1491 = phi <16 x float> [ zeroinitializer, %vector.ph1486 ], [ %i.bzg, %vector.body1488 ]
  %vec.phi1492 = phi <16 x float> [ %i.bwa, %vector.ph1486 ], [ %i.byx, %vector.body1488 ]
  %vec.phi1493 = phi <16 x float> [ zeroinitializer, %vector.ph1486 ], [ %i.byy, %vector.body1488 ]
  %vec.phi1494 = phi <16 x float> [ %i.bwb, %vector.ph1486 ], [ %i.byp, %vector.body1488 ]
  %vec.phi1495 = phi <16 x float> [ zeroinitializer, %vector.ph1486 ], [ %i.byq, %vector.body1488 ]
  %vec.phi1496 = phi <16 x float> [ %i.bwc, %vector.ph1486 ], [ %i.byh, %vector.body1488 ]
  %vec.phi1497 = phi <16 x float> [ zeroinitializer, %vector.ph1486 ], [ %i.byi, %vector.body1488 ]
  %i.bwd = shl i64 %index1489, 3                  ; 3 uses
  %i.bwe = or disjoint i64 %i.bwd, 128            ; 2 uses
  %next.gep1498 = getelementptr i8, ptr %.31182.i, i64 %i.bwd
  %next.gep1499 = getelementptr i8, ptr %.31182.i, i64 %i.bwe
  %next.gep1500 = getelementptr i8, ptr %.917151145.i, i64 %i.bwd
  %next.gep1501 = getelementptr i8, ptr %.917151145.i, i64 %i.bwe
  %wide.vec1502 = load <64 x i16>, ptr %next.gep1498, align 2, !tbaa !57 ; 4 uses
  %strided.vec1503 = shufflevector <64 x i16> %wide.vec1502, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1504 = shufflevector <64 x i16> %wide.vec1502, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1505 = shufflevector <64 x i16> %wide.vec1502, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1506 = shufflevector <64 x i16> %wide.vec1502, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1507 = load <64 x i16>, ptr %next.gep1499, align 2, !tbaa !57 ; 4 uses
  %strided.vec1508 = shufflevector <64 x i16> %wide.vec1507, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1509 = shufflevector <64 x i16> %wide.vec1507, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1510 = shufflevector <64 x i16> %wide.vec1507, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1511 = shufflevector <64 x i16> %wide.vec1507, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.bwf = zext <16 x i16> %strided.vec1503 to <16 x i32>
  %i.bwg = zext <16 x i16> %strided.vec1508 to <16 x i32>
  %i.bwh = shl nuw <16 x i32> %i.bwf, splat (i32 16)
  %i.bwi = shl nuw <16 x i32> %i.bwg, splat (i32 16)
  %i.bwj = bitcast <16 x i32> %i.bwh to <16 x float> ; 2 uses
  %i.bwk = bitcast <16 x i32> %i.bwi to <16 x float> ; 2 uses
  %i.bwl = zext <16 x i16> %strided.vec1504 to <16 x i32>
  %i.bwm = zext <16 x i16> %strided.vec1509 to <16 x i32>
  %i.bwn = shl nuw <16 x i32> %i.bwl, splat (i32 16)
  %i.bwo = shl nuw <16 x i32> %i.bwm, splat (i32 16)
  %i.bwp = bitcast <16 x i32> %i.bwn to <16 x float> ; 2 uses
  %i.bwq = bitcast <16 x i32> %i.bwo to <16 x float> ; 2 uses
  %i.bwr = zext <16 x i16> %strided.vec1505 to <16 x i32>
  %i.bws = zext <16 x i16> %strided.vec1510 to <16 x i32>
  %i.bwt = shl nuw <16 x i32> %i.bwr, splat (i32 16)
  %i.bwu = shl nuw <16 x i32> %i.bws, splat (i32 16)
  %i.bwv = bitcast <16 x i32> %i.bwt to <16 x float> ; 2 uses
  %i.bww = bitcast <16 x i32> %i.bwu to <16 x float> ; 2 uses
  %i.bwx = zext <16 x i16> %strided.vec1506 to <16 x i32>
  %i.bwy = zext <16 x i16> %strided.vec1511 to <16 x i32>
  %i.bwz = shl nuw <16 x i32> %i.bwx, splat (i32 16)
  %i.bxa = shl nuw <16 x i32> %i.bwy, splat (i32 16)
  %i.bxb = bitcast <16 x i32> %i.bwz to <16 x float> ; 2 uses
  %i.bxc = bitcast <16 x i32> %i.bxa to <16 x float> ; 2 uses
  %wide.vec1512 = load <64 x i16>, ptr %next.gep1500, align 2, !tbaa !57 ; 4 uses
  %strided.vec1513 = shufflevector <64 x i16> %wide.vec1512, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1514 = shufflevector <64 x i16> %wide.vec1512, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1515 = shufflevector <64 x i16> %wide.vec1512, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1516 = shufflevector <64 x i16> %wide.vec1512, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1517 = load <64 x i16>, ptr %next.gep1501, align 2, !tbaa !57 ; 4 uses
  %strided.vec1518 = shufflevector <64 x i16> %wide.vec1517, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1519 = shufflevector <64 x i16> %wide.vec1517, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1520 = shufflevector <64 x i16> %wide.vec1517, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1521 = shufflevector <64 x i16> %wide.vec1517, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.bxd = zext <16 x i16> %strided.vec1513 to <16 x i32>
  %i.bxe = zext <16 x i16> %strided.vec1518 to <16 x i32>
  %i.bxf = shl nuw <16 x i32> %i.bxd, splat (i32 16)
  %i.bxg = shl nuw <16 x i32> %i.bxe, splat (i32 16)
  %i.bxh = bitcast <16 x i32> %i.bxf to <16 x float> ; 2 uses
  %i.bxi = bitcast <16 x i32> %i.bxg to <16 x float> ; 2 uses
  %i.bxj = zext <16 x i16> %strided.vec1514 to <16 x i32>
  %i.bxk = zext <16 x i16> %strided.vec1519 to <16 x i32>
  %i.bxl = shl nuw <16 x i32> %i.bxj, splat (i32 16)
  %i.bxm = shl nuw <16 x i32> %i.bxk, splat (i32 16)
  %i.bxn = bitcast <16 x i32> %i.bxl to <16 x float> ; 2 uses
  %i.bxo = bitcast <16 x i32> %i.bxm to <16 x float> ; 2 uses
  %i.bxp = zext <16 x i16> %strided.vec1515 to <16 x i32>
  %i.bxq = zext <16 x i16> %strided.vec1520 to <16 x i32>
  %i.bxr = shl nuw <16 x i32> %i.bxp, splat (i32 16)
  %i.bxs = shl nuw <16 x i32> %i.bxq, splat (i32 16)
  %i.bxt = bitcast <16 x i32> %i.bxr to <16 x float> ; 2 uses
  %i.bxu = bitcast <16 x i32> %i.bxs to <16 x float> ; 2 uses
  %i.bxv = zext <16 x i16> %strided.vec1516 to <16 x i32>
  %i.bxw = zext <16 x i16> %strided.vec1521 to <16 x i32>
  %i.bxx = shl nuw <16 x i32> %i.bxv, splat (i32 16)
  %i.bxy = shl nuw <16 x i32> %i.bxw, splat (i32 16)
  %i.bxz = bitcast <16 x i32> %i.bxx to <16 x float> ; 2 uses
  %i.bya = bitcast <16 x i32> %i.bxy to <16 x float> ; 2 uses
  %i.byb = fmul fast <16 x float> %i.bxh, %i.bwj
  %i.byc = fmul fast <16 x float> %i.bxi, %i.bwk
  %i.byd = fmul fast <16 x float> %i.bxn, %i.bwp
  %i.bye = fmul fast <16 x float> %i.bxo, %i.bwq
  %i.byf = fadd fast <16 x float> %vec.phi1496, %i.byb
  %i.byg = fadd fast <16 x float> %vec.phi1497, %i.byc
  %i.byh = fadd fast <16 x float> %i.byf, %i.byd  ; 2 uses
  %i.byi = fadd fast <16 x float> %i.byg, %i.bye  ; 2 uses
  %i.byj = fmul fast <16 x float> %i.bxt, %i.bwj
  %i.byk = fmul fast <16 x float> %i.bxu, %i.bwk
  %i.byl = fmul fast <16 x float> %i.bxz, %i.bwp
  %i.bym = fmul fast <16 x float> %i.bya, %i.bwq
  %i.byn = fadd fast <16 x float> %vec.phi1494, %i.byj
  %i.byo = fadd fast <16 x float> %vec.phi1495, %i.byk
  %i.byp = fadd fast <16 x float> %i.byn, %i.byl  ; 2 uses
  %i.byq = fadd fast <16 x float> %i.byo, %i.bym  ; 2 uses
  %i.byr = fmul fast <16 x float> %i.bxh, %i.bwv
  %i.bys = fmul fast <16 x float> %i.bxi, %i.bww
  %i.byt = fmul fast <16 x float> %i.bxn, %i.bxb
  %i.byu = fmul fast <16 x float> %i.bxo, %i.bxc
  %i.byv = fadd fast <16 x float> %vec.phi1492, %i.byr
  %i.byw = fadd fast <16 x float> %vec.phi1493, %i.bys
  %i.byx = fadd fast <16 x float> %i.byv, %i.byt  ; 2 uses
  %i.byy = fadd fast <16 x float> %i.byw, %i.byu  ; 2 uses
  %i.byz = fmul fast <16 x float> %i.bxt, %i.bwv
  %i.bza = fmul fast <16 x float> %i.bxu, %i.bww
  %i.bzb = fmul fast <16 x float> %i.bxz, %i.bxb
  %i.bzc = fmul fast <16 x float> %i.bya, %i.bxc
  %i.bzd = fadd fast <16 x float> %vec.phi1490, %i.byz
  %i.bze = fadd fast <16 x float> %vec.phi1491, %i.bza
  %i.bzf = fadd fast <16 x float> %i.bzd, %i.bzb  ; 2 uses
  %i.bzg = fadd fast <16 x float> %i.bze, %i.bzc  ; 2 uses
  %index.next1522 = add nuw i64 %index1489, 32    ; 2 uses
  %i.bzh = icmp eq i64 %index.next1522, %n.vec1487
  br i1 %i.bzh, label %middle.block1523, label %vector.body1488, !llvm.loop !423

middle.block1523:                                 ; preds = %vector.body1488
  %bin.rdx1524 = fadd fast <16 x float> %i.bzg, %i.bzf
  %i.bzi = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1524) ; 2 uses
  %bin.rdx1525 = fadd fast <16 x float> %i.byy, %i.byx
  %i.bzj = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1525) ; 2 uses
  %bin.rdx1526 = fadd fast <16 x float> %i.byq, %i.byp
  %i.bzk = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1526) ; 2 uses
  %bin.rdx1527 = fadd fast <16 x float> %i.byi, %i.byh
  %i.bzl = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1527) ; 2 uses
  %i.bzm = insertelement <4 x float> poison, float %i.bzk, i64 0
  %i.bzn = insertelement <4 x float> %i.bzm, float %i.bzj, i64 1
  %i.bzo = insertelement <4 x float> %i.bzn, float %i.bzi, i64 2
  %i.bzp = insertelement <4 x float> %i.bzo, float %i.bzl, i64 3 ; 2 uses
  br i1 %cmp.n1528, label %.preheader384.loopexit.i, label %vec.epilog.iter.check1538

vec.epilog.iter.check1538:                        ; preds = %middle.block1523
  br i1 %min.epilog.iters.check1539, label %.lr.ph1123.i.preheader, label %vec.epilog.ph1540, !prof !52

vec.epilog.ph1540:                                ; preds = %vector.main.loop.iter.check1484, %vec.epilog.iter.check1538
  %vec.epilog.resume.val1529 = phi i64 [ %n.vec1487, %vec.epilog.iter.check1538 ], [ 0, %vector.main.loop.iter.check1484 ]
  %bc.merge.rdx1531 = phi float [ %i.bzi, %vec.epilog.iter.check1538 ], [ %i.bvv, %vector.main.loop.iter.check1484 ]
  %bc.merge.rdx1532 = phi float [ %i.bzj, %vec.epilog.iter.check1538 ], [ %i.bvu, %vector.main.loop.iter.check1484 ]
  %bc.merge.rdx1533 = phi float [ %i.bzk, %vec.epilog.iter.check1538 ], [ %i.bvt, %vector.main.loop.iter.check1484 ]
  %bc.merge.rdx1534 = phi float [ %i.bzl, %vec.epilog.iter.check1538 ], [ %i.bvs, %vector.main.loop.iter.check1484 ]
  %i.bzq = getelementptr i8, ptr %.917151145.i, i64 %i.anw
  %i.bzr = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1531, i64 0
  %i.bzs = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1532, i64 0
  %i.bzt = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1533, i64 0
  %i.bzu = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1534, i64 0
  br label %vec.epilog.vector.body1542

vec.epilog.vector.body1542:                       ; preds = %vec.epilog.vector.body1542, %vec.epilog.ph1540
  %index1543 = phi i64 [ %vec.epilog.resume.val1529, %vec.epilog.ph1540 ], [ %index.next1560, %vec.epilog.vector.body1542 ] ; 2 uses
  %vec.phi1544 = phi <8 x float> [ %i.bzr, %vec.epilog.ph1540 ], [ %i.cbj, %vec.epilog.vector.body1542 ]
  %vec.phi1545 = phi <8 x float> [ %i.bzs, %vec.epilog.ph1540 ], [ %i.cbf, %vec.epilog.vector.body1542 ]
  %vec.phi1546 = phi <8 x float> [ %i.bzt, %vec.epilog.ph1540 ], [ %i.cbb, %vec.epilog.vector.body1542 ]
  %vec.phi1547 = phi <8 x float> [ %i.bzu, %vec.epilog.ph1540 ], [ %i.cax, %vec.epilog.vector.body1542 ]
  %i.bzv = shl i64 %index1543, 3                  ; 2 uses
  %next.gep1548 = getelementptr i8, ptr %.31182.i, i64 %i.bzv
  %next.gep1549 = getelementptr i8, ptr %.917151145.i, i64 %i.bzv
  %wide.vec1550 = load <32 x i16>, ptr %next.gep1548, align 2, !tbaa !57 ; 4 uses
  %strided.vec1551 = shufflevector <32 x i16> %wide.vec1550, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1552 = shufflevector <32 x i16> %wide.vec1550, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1553 = shufflevector <32 x i16> %wide.vec1550, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1554 = shufflevector <32 x i16> %wide.vec1550, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bzw = zext <8 x i16> %strided.vec1551 to <8 x i32>
  %i.bzx = shl nuw <8 x i32> %i.bzw, splat (i32 16)
  %i.bzy = bitcast <8 x i32> %i.bzx to <8 x float> ; 2 uses
  %i.bzz = zext <8 x i16> %strided.vec1552 to <8 x i32>
  %i.caa = shl nuw <8 x i32> %i.bzz, splat (i32 16)
  %i.cab = bitcast <8 x i32> %i.caa to <8 x float> ; 2 uses
  %i.cac = zext <8 x i16> %strided.vec1553 to <8 x i32>
  %i.cad = shl nuw <8 x i32> %i.cac, splat (i32 16)
  %i.cae = bitcast <8 x i32> %i.cad to <8 x float> ; 2 uses
  %i.caf = zext <8 x i16> %strided.vec1554 to <8 x i32>
  %i.cag = shl nuw <8 x i32> %i.caf, splat (i32 16)
  %i.cah = bitcast <8 x i32> %i.cag to <8 x float> ; 2 uses
  %wide.vec1555 = load <32 x i16>, ptr %next.gep1549, align 2, !tbaa !57 ; 4 uses
  %strided.vec1556 = shufflevector <32 x i16> %wide.vec1555, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1557 = shufflevector <32 x i16> %wide.vec1555, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1558 = shufflevector <32 x i16> %wide.vec1555, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1559 = shufflevector <32 x i16> %wide.vec1555, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cai = zext <8 x i16> %strided.vec1556 to <8 x i32>
  %i.caj = shl nuw <8 x i32> %i.cai, splat (i32 16)
  %i.cak = bitcast <8 x i32> %i.caj to <8 x float> ; 2 uses
  %i.cal = zext <8 x i16> %strided.vec1557 to <8 x i32>
  %i.cam = shl nuw <8 x i32> %i.cal, splat (i32 16)
  %i.can = bitcast <8 x i32> %i.cam to <8 x float> ; 2 uses
  %i.cao = zext <8 x i16> %strided.vec1558 to <8 x i32>
  %i.cap = shl nuw <8 x i32> %i.cao, splat (i32 16)
  %i.caq = bitcast <8 x i32> %i.cap to <8 x float> ; 2 uses
  %i.car = zext <8 x i16> %strided.vec1559 to <8 x i32>
  %i.cas = shl nuw <8 x i32> %i.car, splat (i32 16)
  %i.cat = bitcast <8 x i32> %i.cas to <8 x float> ; 2 uses
  %i.cau = fmul fast <8 x float> %i.cak, %i.bzy
  %i.cav = fmul fast <8 x float> %i.can, %i.cab
  %i.caw = fadd fast <8 x float> %vec.phi1547, %i.cau
  %i.cax = fadd fast <8 x float> %i.caw, %i.cav   ; 2 uses
  %i.cay = fmul fast <8 x float> %i.caq, %i.bzy
  %i.caz = fmul fast <8 x float> %i.cat, %i.cab
  %i.cba = fadd fast <8 x float> %vec.phi1546, %i.cay
  %i.cbb = fadd fast <8 x float> %i.cba, %i.caz   ; 2 uses
  %i.cbc = fmul fast <8 x float> %i.cak, %i.cae
  %i.cbd = fmul fast <8 x float> %i.can, %i.cah
  %i.cbe = fadd fast <8 x float> %vec.phi1545, %i.cbc
  %i.cbf = fadd fast <8 x float> %i.cbe, %i.cbd   ; 2 uses
  %i.cbg = fmul fast <8 x float> %i.caq, %i.cae
  %i.cbh = fmul fast <8 x float> %i.cat, %i.cah
  %i.cbi = fadd fast <8 x float> %vec.phi1544, %i.cbg
  %i.cbj = fadd fast <8 x float> %i.cbi, %i.cbh   ; 2 uses
  %index.next1560 = add nuw i64 %index1543, 8     ; 2 uses
  %i.cbk = icmp eq i64 %index.next1560, %n.vec1541
  br i1 %i.cbk, label %vec.epilog.middle.block1561, label %vec.epilog.vector.body1542, !llvm.loop !424

vec.epilog.middle.block1561:                      ; preds = %vec.epilog.vector.body1542
  %i.cbl = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cbj)
  %i.cbm = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cbf)
  %i.cbn = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cbb)
  %i.cbo = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cax)
  %i.cbp = insertelement <4 x float> poison, float %i.cbn, i64 0
  %i.cbq = insertelement <4 x float> %i.cbp, float %i.cbm, i64 1
  %i.cbr = insertelement <4 x float> %i.cbq, float %i.cbl, i64 2
  %i.cbs = insertelement <4 x float> %i.cbr, float %i.cbo, i64 3 ; 2 uses
  br i1 %cmp.n1562, label %.preheader384.loopexit.i, label %.lr.ph1123.i.preheader

.lr.ph1123.i.preheader:                           ; preds = %iter.check1536, %vec.epilog.iter.check1538, %vec.epilog.middle.block1561
  %.016351121.i.ph = phi i32 [ 0, %iter.check1536 ], [ %i.ans, %vec.epilog.iter.check1538 ], [ %i.anv, %vec.epilog.middle.block1561 ]
  %.016371120.i.ph = phi ptr [ %.31182.i, %iter.check1536 ], [ %i.bru, %vec.epilog.iter.check1538 ], [ %i.brv, %vec.epilog.middle.block1561 ]
  %.1017161115.i.ph = phi ptr [ %.917151145.i, %iter.check1536 ], [ %i.bvw, %vec.epilog.iter.check1538 ], [ %i.bzq, %vec.epilog.middle.block1561 ]
  %.ph2212 = phi <4 x float> [ %i.bvr, %iter.check1536 ], [ %i.bzp, %vec.epilog.iter.check1538 ], [ %i.cbs, %vec.epilog.middle.block1561 ]
  br label %.lr.ph1123.i

.preheader384.loopexit.i:                         ; preds = %.lr.ph1123.i, %vec.epilog.middle.block1561, %middle.block1523
  %i.cbt = phi <4 x float> [ %i.cbs, %vec.epilog.middle.block1561 ], [ %i.bzp, %middle.block1523 ], [ %i.chg, %.lr.ph1123.i ]
  %scevgep1814.i = getelementptr i8, ptr %.917151145.i, i64 %i.ana
  br label %.preheader384.i

.preheader384.i:                                  ; preds = %.preheader384.loopexit.i, %bb.am
  %.101716.lcssa.i = phi ptr [ %.917151145.i, %bb.am ], [ %scevgep1814.i, %.preheader384.loopexit.i ] ; 7 uses
  %.01637.lcssa.i = phi ptr [ %.31182.i, %bb.am ], [ %indvars.iv1817.i, %.preheader384.loopexit.i ] ; 6 uses
  %.01635.lcssa.i = phi i32 [ 0, %bb.am ], [ %i.amt, %.preheader384.loopexit.i ] ; 5 uses
  %i.cbu = phi <4 x float> [ %i.bvr, %bb.am ], [ %i.cbt, %.preheader384.loopexit.i ] ; 7 uses
  %i.cbv = icmp slt i32 %.01635.lcssa.i, %8
  %i.cbw = shufflevector <4 x float> %i.cbu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cbx = extractelement <4 x float> %i.cbu, i64 2 ; 2 uses
  %i.cby = extractelement <4 x float> %i.cbu, i64 3 ; 2 uses
  br i1 %i.cbv, label %iter.check1453, label %._crit_edge1139.i

iter.check1453:                                   ; preds = %.preheader384.i
  %i.cbz = xor i32 %.01635.lcssa.i, -1
  %i.cca = add i32 %8, %i.cbz                     ; 3 uses
  %i.ccb = zext i32 %i.cca to i64
  %i.ccc = add nuw nsw i64 %i.ccb, 1              ; 5 uses
  %min.iters.check1408 = icmp ult i32 %i.cca, 7
  %i.ccd = extractelement <4 x float> %i.cbu, i64 0
  %i.cce = extractelement <4 x float> %i.cbu, i64 1
  br i1 %min.iters.check1408, label %.lr.ph1138.i.preheader, label %vector.main.loop.iter.check1409

vector.main.loop.iter.check1409:                  ; preds = %iter.check1453
  %min.iters.check1410 = icmp ult i32 %i.cca, 31
  br i1 %min.iters.check1410, label %vec.epilog.ph1457, label %vector.ph1411

vector.ph1411:                                    ; preds = %vector.main.loop.iter.check1409
  %i.ccf = and i64 %i.ccc, 24
  %n.vec1412 = and i64 %i.ccc, 8589934560         ; 5 uses
  %i.ccg = trunc i64 %n.vec1412 to i32
  %i.cch = add i32 %.01635.lcssa.i, %i.ccg
  %i.cci = shl nuw nsw i64 %n.vec1412, 2          ; 2 uses
  %i.ccj = getelementptr i8, ptr %.01637.lcssa.i, i64 %i.cci
  %i.cck = getelementptr i8, ptr %.101716.lcssa.i, i64 %i.cci ; 2 uses
  %i.ccl = shufflevector <4 x float> %i.cbu, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.ccm = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.ccl, <16 x i32> <i32 18, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ccn = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.ccl, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cco = shufflevector <16 x float> %i.ccl, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ccp = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.ccl, <16 x i32> <i32 19, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1413

vector.body1413:                                  ; preds = %vector.body1413, %vector.ph1411
  %index1414 = phi i64 [ 0, %vector.ph1411 ], [ %index.next1439, %vector.body1413 ] ; 2 uses
  %vec.phi1415 = phi <16 x float> [ %i.ccm, %vector.ph1411 ], [ %i.cei, %vector.body1413 ]
  %vec.phi1416 = phi <16 x float> [ zeroinitializer, %vector.ph1411 ], [ %i.cej, %vector.body1413 ]
  %vec.phi1417 = phi <16 x float> [ %i.ccn, %vector.ph1411 ], [ %i.cee, %vector.body1413 ]
  %vec.phi1418 = phi <16 x float> [ zeroinitializer, %vector.ph1411 ], [ %i.cef, %vector.body1413 ]
  %vec.phi1419 = phi <16 x float> [ %i.cco, %vector.ph1411 ], [ %i.cea, %vector.body1413 ]
  %vec.phi1420 = phi <16 x float> [ zeroinitializer, %vector.ph1411 ], [ %i.ceb, %vector.body1413 ]
  %vec.phi1421 = phi <16 x float> [ %i.ccp, %vector.ph1411 ], [ %i.cdw, %vector.body1413 ]
  %vec.phi1422 = phi <16 x float> [ zeroinitializer, %vector.ph1411 ], [ %i.cdx, %vector.body1413 ]
  %i.ccq = shl i64 %index1414, 2                  ; 3 uses
  %i.ccr = or disjoint i64 %i.ccq, 64             ; 2 uses
  %next.gep1423 = getelementptr i8, ptr %.01637.lcssa.i, i64 %i.ccq
  %next.gep1424 = getelementptr i8, ptr %.01637.lcssa.i, i64 %i.ccr
  %next.gep1425 = getelementptr i8, ptr %.101716.lcssa.i, i64 %i.ccq
  %next.gep1426 = getelementptr i8, ptr %.101716.lcssa.i, i64 %i.ccr
  %wide.vec1427 = load <32 x i16>, ptr %next.gep1423, align 2, !tbaa !57
  %i.ccs = freeze <32 x i16> %wide.vec1427        ; 2 uses
  %i.cct = bitcast <32 x i16> %i.ccs to <16 x i32>
  %i.ccu = bitcast <32 x i16> %i.ccs to <16 x i32>
  %i.ccv = and <16 x i32> %i.ccu, splat (i32 -65536)
  %wide.vec1430 = load <32 x i16>, ptr %next.gep1424, align 2, !tbaa !57
  %i.ccw = freeze <32 x i16> %wide.vec1430        ; 2 uses
  %i.ccx = bitcast <32 x i16> %i.ccw to <16 x i32>
  %i.ccy = bitcast <32 x i16> %i.ccw to <16 x i32>
  %i.ccz = and <16 x i32> %i.ccy, splat (i32 -65536)
  %i.cda = shl <16 x i32> %i.cct, splat (i32 16)
  %i.cdb = shl <16 x i32> %i.ccx, splat (i32 16)
  %i.cdc = bitcast <16 x i32> %i.cda to <16 x float> ; 2 uses
  %i.cdd = bitcast <16 x i32> %i.cdb to <16 x float> ; 2 uses
  %i.cde = bitcast <16 x i32> %i.ccv to <16 x float> ; 2 uses
  %i.cdf = bitcast <16 x i32> %i.ccz to <16 x float> ; 2 uses
  %wide.vec1433 = load <32 x i16>, ptr %next.gep1425, align 2, !tbaa !57
  %i.cdg = freeze <32 x i16> %wide.vec1433        ; 2 uses
  %i.cdh = bitcast <32 x i16> %i.cdg to <16 x i32>
  %i.cdi = bitcast <32 x i16> %i.cdg to <16 x i32>
  %i.cdj = and <16 x i32> %i.cdi, splat (i32 -65536)
  %wide.vec1436 = load <32 x i16>, ptr %next.gep1426, align 2, !tbaa !57
  %i.cdk = freeze <32 x i16> %wide.vec1436        ; 2 uses
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
  %i.cdw = fadd fast <16 x float> %i.cdu, %vec.phi1421 ; 2 uses
  %i.cdx = fadd fast <16 x float> %i.cdv, %vec.phi1422 ; 2 uses
  %i.cdy = fmul fast <16 x float> %i.cds, %i.cdc
  %i.cdz = fmul fast <16 x float> %i.cdt, %i.cdd
  %i.cea = fadd fast <16 x float> %i.cdy, %vec.phi1419 ; 2 uses
  %i.ceb = fadd fast <16 x float> %i.cdz, %vec.phi1420 ; 2 uses
  %i.cec = fmul fast <16 x float> %i.cdq, %i.cde
  %i.ced = fmul fast <16 x float> %i.cdr, %i.cdf
  %i.cee = fadd fast <16 x float> %i.cec, %vec.phi1417 ; 2 uses
  %i.cef = fadd fast <16 x float> %i.ced, %vec.phi1418 ; 2 uses
  %i.ceg = fmul fast <16 x float> %i.cds, %i.cde
  %i.ceh = fmul fast <16 x float> %i.cdt, %i.cdf
  %i.cei = fadd fast <16 x float> %i.ceg, %vec.phi1415 ; 2 uses
  %i.cej = fadd fast <16 x float> %i.ceh, %vec.phi1416 ; 2 uses
  %index.next1439 = add nuw i64 %index1414, 32    ; 2 uses
  %i.cek = icmp eq i64 %index.next1439, %n.vec1412
  br i1 %i.cek, label %middle.block1440, label %vector.body1413, !llvm.loop !425

middle.block1440:                                 ; preds = %vector.body1413
  %bin.rdx1441 = fadd fast <16 x float> %i.cej, %i.cei
  %i.cel = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1441) ; 3 uses
  %bin.rdx1442 = fadd fast <16 x float> %i.cef, %i.cee
  %i.cem = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1442) ; 3 uses
  %bin.rdx1443 = fadd fast <16 x float> %i.ceb, %i.cea
  %i.cen = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1443) ; 3 uses
  %bin.rdx1444 = fadd fast <16 x float> %i.cdx, %i.cdw
  %i.ceo = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1444) ; 3 uses
  %cmp.n1445 = icmp eq i64 %i.ccc, %n.vec1412
  %i.cep = insertelement <2 x float> poison, float %i.cen, i64 0
  %i.ceq = insertelement <2 x float> %i.cep, float %i.cem, i64 1
  br i1 %cmp.n1445, label %._crit_edge1139.i, label %vec.epilog.iter.check1455

vec.epilog.iter.check1455:                        ; preds = %middle.block1440
  %min.epilog.iters.check1456 = icmp eq i64 %i.ccf, 0
  %i.cer = insertelement <4 x float> poison, float %i.cen, i64 0
  %i.ces = insertelement <4 x float> %i.cer, float %i.cem, i64 1
  %i.cet = insertelement <4 x float> %i.ces, float %i.cel, i64 2
  %i.ceu = insertelement <4 x float> %i.cet, float %i.ceo, i64 3
  br i1 %min.epilog.iters.check1456, label %.lr.ph1138.i.preheader, label %vec.epilog.ph1457, !prof !52

vec.epilog.ph1457:                                ; preds = %vector.main.loop.iter.check1409, %vec.epilog.iter.check1455
  %vec.epilog.resume.val1446 = phi i64 [ %n.vec1412, %vec.epilog.iter.check1455 ], [ 0, %vector.main.loop.iter.check1409 ]
  %i.cev = phi <4 x float> [ %i.ceu, %vec.epilog.iter.check1455 ], [ %i.cbu, %vector.main.loop.iter.check1409 ]
  %n.vec1458 = and i64 %i.ccc, 8589934584         ; 4 uses
  %i.cew = trunc i64 %n.vec1458 to i32
  %i.cex = add i32 %.01635.lcssa.i, %i.cew
  %i.cey = shl nuw nsw i64 %n.vec1458, 2          ; 2 uses
  %i.cez = getelementptr i8, ptr %.01637.lcssa.i, i64 %i.cey
  %i.cfa = getelementptr i8, ptr %.101716.lcssa.i, i64 %i.cey ; 2 uses
  %i.cfb = shufflevector <4 x float> %i.cev, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.cfc = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.cfb, <8 x i32> <i32 10, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfd = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.cfb, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfe = shufflevector <8 x float> %i.cfb, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cff = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.cfb, <8 x i32> <i32 11, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body1459

vec.epilog.vector.body1459:                       ; preds = %vec.epilog.vector.body1459, %vec.epilog.ph1457
  %index1460 = phi i64 [ %vec.epilog.resume.val1446, %vec.epilog.ph1457 ], [ %index.next1473, %vec.epilog.vector.body1459 ] ; 2 uses
  %vec.phi1461 = phi <8 x float> [ %i.cfc, %vec.epilog.ph1457 ], [ %i.cgc, %vec.epilog.vector.body1459 ]
  %vec.phi1462 = phi <8 x float> [ %i.cfd, %vec.epilog.ph1457 ], [ %i.cga, %vec.epilog.vector.body1459 ]
  %vec.phi1463 = phi <8 x float> [ %i.cfe, %vec.epilog.ph1457 ], [ %i.cfy, %vec.epilog.vector.body1459 ]
  %vec.phi1464 = phi <8 x float> [ %i.cff, %vec.epilog.ph1457 ], [ %i.cfw, %vec.epilog.vector.body1459 ]
  %i.cfg = shl i64 %index1460, 2                  ; 2 uses
  %next.gep1465 = getelementptr i8, ptr %.01637.lcssa.i, i64 %i.cfg
  %next.gep1466 = getelementptr i8, ptr %.101716.lcssa.i, i64 %i.cfg
  %wide.vec1467 = load <16 x i16>, ptr %next.gep1465, align 2, !tbaa !57
  %i.cfh = freeze <16 x i16> %wide.vec1467        ; 2 uses
  %i.cfi = bitcast <16 x i16> %i.cfh to <8 x i32>
  %i.cfj = bitcast <16 x i16> %i.cfh to <8 x i32>
  %i.cfk = and <8 x i32> %i.cfj, splat (i32 -65536)
  %i.cfl = shl <8 x i32> %i.cfi, splat (i32 16)
  %i.cfm = bitcast <8 x i32> %i.cfl to <8 x float> ; 2 uses
  %i.cfn = bitcast <8 x i32> %i.cfk to <8 x float> ; 2 uses
  %wide.vec1470 = load <16 x i16>, ptr %next.gep1466, align 2, !tbaa !57
  %i.cfo = freeze <16 x i16> %wide.vec1470        ; 2 uses
  %i.cfp = bitcast <16 x i16> %i.cfo to <8 x i32>
  %i.cfq = bitcast <16 x i16> %i.cfo to <8 x i32>
  %i.cfr = and <8 x i32> %i.cfq, splat (i32 -65536)
  %i.cfs = shl <8 x i32> %i.cfp, splat (i32 16)
  %i.cft = bitcast <8 x i32> %i.cfs to <8 x float> ; 2 uses
  %i.cfu = bitcast <8 x i32> %i.cfr to <8 x float> ; 2 uses
  %i.cfv = fmul fast <8 x float> %i.cft, %i.cfm
  %i.cfw = fadd fast <8 x float> %i.cfv, %vec.phi1464 ; 2 uses
  %i.cfx = fmul fast <8 x float> %i.cfu, %i.cfm
  %i.cfy = fadd fast <8 x float> %i.cfx, %vec.phi1463 ; 2 uses
  %i.cfz = fmul fast <8 x float> %i.cft, %i.cfn
  %i.cga = fadd fast <8 x float> %i.cfz, %vec.phi1462 ; 2 uses
  %i.cgb = fmul fast <8 x float> %i.cfu, %i.cfn
  %i.cgc = fadd fast <8 x float> %i.cgb, %vec.phi1461 ; 2 uses
  %index.next1473 = add nuw i64 %index1460, 8     ; 2 uses
  %i.cgd = icmp eq i64 %index.next1473, %n.vec1458
  br i1 %i.cgd, label %vec.epilog.middle.block1474, label %vec.epilog.vector.body1459, !llvm.loop !426

vec.epilog.middle.block1474:                      ; preds = %vec.epilog.vector.body1459
  %i.cge = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cgc) ; 2 uses
  %i.cgf = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cga) ; 2 uses
  %i.cgg = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cfy) ; 2 uses
  %i.cgh = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cfw) ; 2 uses
  %cmp.n1475 = icmp eq i64 %i.ccc, %n.vec1458
  %i.cgi = insertelement <2 x float> poison, float %i.cgg, i64 0
  %i.cgj = insertelement <2 x float> %i.cgi, float %i.cgf, i64 1
  br i1 %cmp.n1475, label %._crit_edge1139.i, label %.lr.ph1138.i.preheader

.lr.ph1138.i.preheader:                           ; preds = %iter.check1453, %vec.epilog.iter.check1455, %vec.epilog.middle.block1474
  %.116361137.i.ph = phi i32 [ %.01635.lcssa.i, %iter.check1453 ], [ %i.cch, %vec.epilog.iter.check1455 ], [ %i.cex, %vec.epilog.middle.block1474 ]
  %.116381136.i.ph = phi ptr [ %.01637.lcssa.i, %iter.check1453 ], [ %i.ccj, %vec.epilog.iter.check1455 ], [ %i.cez, %vec.epilog.middle.block1474 ]
  %.216411135.i.ph = phi float [ %i.cbx, %iter.check1453 ], [ %i.cel, %vec.epilog.iter.check1455 ], [ %i.cge, %vec.epilog.middle.block1474 ]
  %.216441134.i.ph = phi float [ %i.cce, %iter.check1453 ], [ %i.cem, %vec.epilog.iter.check1455 ], [ %i.cgf, %vec.epilog.middle.block1474 ]
  %.216471133.i.ph = phi float [ %i.ccd, %iter.check1453 ], [ %i.cen, %vec.epilog.iter.check1455 ], [ %i.cgg, %vec.epilog.middle.block1474 ]
  %.216501132.i.ph = phi float [ %i.cby, %iter.check1453 ], [ %i.ceo, %vec.epilog.iter.check1455 ], [ %i.cgh, %vec.epilog.middle.block1474 ]
  %.1117171131.i.ph = phi ptr [ %.101716.lcssa.i, %iter.check1453 ], [ %i.cck, %vec.epilog.iter.check1455 ], [ %i.cfa, %vec.epilog.middle.block1474 ]
  br label %.lr.ph1138.i

.lr.ph1123.i:                                     ; preds = %.lr.ph1123.i.preheader, %.lr.ph1123.i
  %.016351121.i = phi i32 [ %i.chj, %.lr.ph1123.i ], [ %.016351121.i.ph, %.lr.ph1123.i.preheader ]
  %.016371120.i = phi ptr [ %i.chh, %.lr.ph1123.i ], [ %.016371120.i.ph, %.lr.ph1123.i.preheader ] ; 2 uses
  %.1017161115.i = phi ptr [ %i.chi, %.lr.ph1123.i ], [ %.1017161115.i.ph, %.lr.ph1123.i.preheader ] ; 2 uses
  %i.cgk = phi <4 x float> [ %i.chg, %.lr.ph1123.i ], [ %.ph2212, %.lr.ph1123.i.preheader ]
  %i.cgl = load <4 x i16>, ptr %.016371120.i, align 2, !tbaa !57
  %i.cgm = freeze <4 x i16> %i.cgl
  %i.cgn = bitcast <4 x i16> %i.cgm to <2 x i32>  ; 2 uses
  %i.cgo = and <2 x i32> %i.cgn, splat (i32 -65536)
  %i.cgp = shl <2 x i32> %i.cgn, splat (i32 16)
  %i.cgq = bitcast <2 x i32> %i.cgp to <2 x float>
  %i.cgr = shufflevector <2 x float> %i.cgq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.cgs = bitcast <2 x i32> %i.cgo to <2 x float>
  %i.cgt = shufflevector <2 x float> %i.cgs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.cgu = load <4 x i16>, ptr %.1017161115.i, align 2, !tbaa !57
  %i.cgv = freeze <4 x i16> %i.cgu
  %i.cgw = bitcast <4 x i16> %i.cgv to <2 x i32>  ; 2 uses
  %i.cgx = and <2 x i32> %i.cgw, splat (i32 -65536)
  %i.cgy = shl <2 x i32> %i.cgw, splat (i32 16)
  %i.cgz = bitcast <2 x i32> %i.cgy to <2 x float>
  %i.cha = shufflevector <2 x float> %i.cgz, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.chb = bitcast <2 x i32> %i.cgx to <2 x float>
  %i.chc = shufflevector <2 x float> %i.chb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.chd = fmul fast <4 x float> %i.cha, %i.cgr
  %i.che = fmul fast <4 x float> %i.chc, %i.cgt
  %i.chf = fadd fast <4 x float> %i.cgk, %i.chd
  %i.chg = fadd fast <4 x float> %i.chf, %i.che   ; 2 uses
  %i.chh = getelementptr inbounds nuw i8, ptr %.016371120.i, i64 8
  %i.chi = getelementptr inbounds nuw i8, ptr %.1017161115.i, i64 8
  %i.chj = add nuw nsw i32 %.016351121.i, 2       ; 2 uses
  %i.chk = or disjoint i32 %i.chj, 1
  %i.chl = icmp slt i32 %i.chk, %8
  br i1 %i.chl, label %.lr.ph1123.i, label %.preheader384.loopexit.i, !llvm.loop !427

.lr.ph1138.i:                                     ; preds = %.lr.ph1138.i.preheader, %.lr.ph1138.i
  %.116361137.i = phi i32 [ %i.cif, %.lr.ph1138.i ], [ %.116361137.i.ph, %.lr.ph1138.i.preheader ]
  %.116381136.i = phi ptr [ %i.cid, %.lr.ph1138.i ], [ %.116381136.i.ph, %.lr.ph1138.i.preheader ] ; 2 uses
  %.216411135.i = phi float [ %i.cic, %.lr.ph1138.i ], [ %.216411135.i.ph, %.lr.ph1138.i.preheader ]
  %.216441134.i = phi float [ %i.cih, %.lr.ph1138.i ], [ %.216441134.i.ph, %.lr.ph1138.i.preheader ]
  %.216471133.i = phi float [ %i.cig, %.lr.ph1138.i ], [ %.216471133.i.ph, %.lr.ph1138.i.preheader ]
  %.216501132.i = phi float [ %i.chw, %.lr.ph1138.i ], [ %.216501132.i.ph, %.lr.ph1138.i.preheader ]
  %.1117171131.i = phi ptr [ %i.cie, %.lr.ph1138.i ], [ %.1117171131.i.ph, %.lr.ph1138.i.preheader ] ; 2 uses
  %i.chm = load <2 x i16>, ptr %.116381136.i, align 2, !tbaa !57
  %i.chn = zext <2 x i16> %i.chm to <2 x i32>
  %i.cho = shl nuw <2 x i32> %i.chn, splat (i32 16)
  %i.chp = bitcast <2 x i32> %i.cho to <2 x float> ; 3 uses
  %i.chq = load <2 x i16>, ptr %.1117171131.i, align 2, !tbaa !57
  %i.chr = zext <2 x i16> %i.chq to <2 x i32>
  %i.chs = shl nuw <2 x i32> %i.chr, splat (i32 16)
  %i.cht = bitcast <2 x i32> %i.chs to <2 x float> ; 2 uses
  %i.chu = shufflevector <2 x float> %i.cht, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %foldExtExtBinop = fmul fast <2 x float> %i.cht, %i.chp
  %i.chv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.chw = fadd fast float %i.chv, %.216501132.i  ; 2 uses
  %i.chx = fmul fast <2 x float> %i.chu, %i.chp
  %i.chy = insertelement <2 x float> poison, float %.216471133.i, i64 0
  %i.chz = insertelement <2 x float> %i.chy, float %.216441134.i, i64 1
  %i.cia = fadd fast <2 x float> %i.chx, %i.chz   ; 3 uses
  %shift2055 = shufflevector <2 x float> %i.chp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2056 = fmul fast <2 x float> %i.chu, %shift2055
  %i.cib = extractelement <2 x float> %foldExtExtBinop2056, i64 0
  %i.cic = fadd fast float %i.cib, %.216411135.i  ; 2 uses
  %i.cid = getelementptr inbounds nuw i8, ptr %.116381136.i, i64 4
  %i.cie = getelementptr inbounds nuw i8, ptr %.1117171131.i, i64 4 ; 2 uses
  %i.cif = add nuw nsw i32 %.116361137.i, 1       ; 2 uses
  %exitcond1815.not.i = icmp eq i32 %i.cif, %8
  %i.cig = extractelement <2 x float> %i.cia, i64 0
  %i.cih = extractelement <2 x float> %i.cia, i64 1
  br i1 %exitcond1815.not.i, label %._crit_edge1139.i, label %.lr.ph1138.i, !llvm.loop !428

._crit_edge1139.i:                                ; preds = %.lr.ph1138.i, %middle.block1440, %vec.epilog.middle.block1474, %.preheader384.i
  %.111717.lcssa.i = phi ptr [ %.101716.lcssa.i, %.preheader384.i ], [ %i.cfa, %vec.epilog.middle.block1474 ], [ %i.cck, %middle.block1440 ], [ %i.cie, %.lr.ph1138.i ] ; 2 uses
  %.21650.lcssa.i = phi float [ %i.cby, %.preheader384.i ], [ %i.cgh, %vec.epilog.middle.block1474 ], [ %i.ceo, %middle.block1440 ], [ %i.chw, %.lr.ph1138.i ]
  %.21641.lcssa.i = phi float [ %i.cbx, %.preheader384.i ], [ %i.cge, %vec.epilog.middle.block1474 ], [ %i.cel, %middle.block1440 ], [ %i.cic, %.lr.ph1138.i ]
  %i.cii = phi <2 x float> [ %i.cbw, %.preheader384.i ], [ %i.cgj, %vec.epilog.middle.block1474 ], [ %i.ceq, %middle.block1440 ], [ %i.cia, %.lr.ph1138.i ]
  store float %.21650.lcssa.i, ptr %.221147.i, align 4, !tbaa !421
  %i.cij = getelementptr inbounds nuw i8, ptr %.221147.i, i64 4
  store <2 x float> %i.cii, ptr %i.cij, align 4, !tbaa !421
  %i.cik = getelementptr inbounds nuw i8, ptr %.221147.i, i64 12
  store float %.21641.lcssa.i, ptr %i.cik, align 4, !tbaa !421
  %i.cil = getelementptr inbounds nuw i8, ptr %.221147.i, i64 16 ; 2 uses
  %i.cim = add nuw nsw i32 %.317041146.i, 2       ; 3 uses
  %i.cin = or disjoint i32 %i.cim, 1
  %i.cio = icmp slt i32 %i.cin, %6
  br i1 %i.cio, label %.lr.ph1148.i, label %.preheader388.i, !llvm.loop !429

.lr.ph1177.i:                                     ; preds = %.lr.ph1177.i.preheader, %._crit_edge1170.i
  %.231176.i = phi ptr [ %i.cvf, %._crit_edge1170.i ], [ %.22.lcssa.i, %.lr.ph1177.i.preheader ] ; 4 uses
  %.417051175.i = phi i32 [ %i.cvg, %._crit_edge1170.i ], [ %.31704.lcssa.i, %.lr.ph1177.i.preheader ]
  %.1217181174.i = phi ptr [ %.141720.lcssa.i, %._crit_edge1170.i ], [ %.91715.lcssa.i, %.lr.ph1177.i.preheader ] ; 10 uses
  br i1 %.not1796.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph1177.i
  %i.cip = load <2 x float>, ptr %.231176.i, align 4, !tbaa !421
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph1177.i
  %i.ciq = phi <2 x float> [ %i.cip, %bb.an ], [ zeroinitializer, %.lr.ph1177.i ] ; 5 uses
  br i1 %i.amo, label %iter.check1380, label %.preheader383.i

iter.check1380:                                   ; preds = %bb.ao
  br i1 %min.iters.check1311, label %.lr.ph1158.i.preheader, label %vector.main.loop.iter.check1312

vector.main.loop.iter.check1312:                  ; preds = %iter.check1380
  %i.cir = extractelement <2 x float> %i.ciq, i64 0
  %i.cis = extractelement <2 x float> %i.ciq, i64 1
  br i1 %min.iters.check1313, label %vec.epilog.ph1384, label %vector.ph1314

vector.ph1314:                                    ; preds = %vector.main.loop.iter.check1312
  %i.cit = getelementptr i8, ptr %.1217181174.i, i64 %i.aob
  %i.ciu = shufflevector <2 x float> %i.ciq, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.civ = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.ciu, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ciw = shufflevector <16 x float> %i.ciu, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1366, %vector.body1316 ] ; 3 uses
  %vec.phi1318 = phi <16 x float> [ %i.civ, %vector.ph1314 ], [ %i.cnf, %vector.body1316 ]
  %vec.phi1319 = phi <16 x float> [ zeroinitializer, %vector.ph1314 ], [ %i.cng, %vector.body1316 ]
  %vec.phi1320 = phi <16 x float> [ zeroinitializer, %vector.ph1314 ], [ %i.cnh, %vector.body1316 ]
  %vec.phi1321 = phi <16 x float> [ zeroinitializer, %vector.ph1314 ], [ %i.cni, %vector.body1316 ]
  %vec.phi1322 = phi <16 x float> [ %i.ciw, %vector.ph1314 ], [ %i.cmp, %vector.body1316 ]
  %vec.phi1323 = phi <16 x float> [ zeroinitializer, %vector.ph1314 ], [ %i.cmq, %vector.body1316 ]
  %vec.phi1324 = phi <16 x float> [ zeroinitializer, %vector.ph1314 ], [ %i.cmr, %vector.body1316 ]
  %vec.phi1325 = phi <16 x float> [ zeroinitializer, %vector.ph1314 ], [ %i.cms, %vector.body1316 ]
  %i.cix = shl i64 %index1317, 3                  ; 4 uses
  %next.gep1326 = getelementptr i8, ptr %.31182.i, i64 %i.cix
  %i.ciy = getelementptr i8, ptr %.31182.i, i64 %i.cix
  %next.gep1327 = getelementptr i8, ptr %i.ciy, i64 128
  %i.ciz = getelementptr i8, ptr %.31182.i, i64 %i.cix
  %next.gep1328 = getelementptr i8, ptr %i.ciz, i64 256
  %i.cja = getelementptr i8, ptr %.31182.i, i64 %i.cix
  %next.gep1329 = getelementptr i8, ptr %i.cja, i64 384
  %i.cjb = shl i64 %index1317, 2                  ; 4 uses
  %next.gep1330 = getelementptr i8, ptr %.1217181174.i, i64 %i.cjb
  %i.cjc = getelementptr i8, ptr %.1217181174.i, i64 %i.cjb
  %next.gep1331 = getelementptr i8, ptr %i.cjc, i64 64
  %i.cjd = getelementptr i8, ptr %.1217181174.i, i64 %i.cjb
  %next.gep1332 = getelementptr i8, ptr %i.cjd, i64 128
  %i.cje = getelementptr i8, ptr %.1217181174.i, i64 %i.cjb
  %next.gep1333 = getelementptr i8, ptr %i.cje, i64 192
  %wide.vec1334 = load <64 x i16>, ptr %next.gep1326, align 2, !tbaa !57 ; 4 uses
  %strided.vec1335 = shufflevector <64 x i16> %wide.vec1334, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1336 = shufflevector <64 x i16> %wide.vec1334, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1337 = shufflevector <64 x i16> %wide.vec1334, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1338 = shufflevector <64 x i16> %wide.vec1334, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1339 = load <64 x i16>, ptr %next.gep1327, align 2, !tbaa !57 ; 4 uses
  %strided.vec1340 = shufflevector <64 x i16> %wide.vec1339, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1341 = shufflevector <64 x i16> %wide.vec1339, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1342 = shufflevector <64 x i16> %wide.vec1339, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1343 = shufflevector <64 x i16> %wide.vec1339, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1344 = load <64 x i16>, ptr %next.gep1328, align 2, !tbaa !57 ; 4 uses
  %strided.vec1345 = shufflevector <64 x i16> %wide.vec1344, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1346 = shufflevector <64 x i16> %wide.vec1344, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1347 = shufflevector <64 x i16> %wide.vec1344, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1348 = shufflevector <64 x i16> %wide.vec1344, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1349 = load <64 x i16>, ptr %next.gep1329, align 2, !tbaa !57 ; 4 uses
  %strided.vec1350 = shufflevector <64 x i16> %wide.vec1349, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1351 = shufflevector <64 x i16> %wide.vec1349, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1352 = shufflevector <64 x i16> %wide.vec1349, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1353 = shufflevector <64 x i16> %wide.vec1349, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.cjf = zext <16 x i16> %strided.vec1335 to <16 x i32>
  %i.cjg = zext <16 x i16> %strided.vec1340 to <16 x i32>
  %i.cjh = zext <16 x i16> %strided.vec1345 to <16 x i32>
  %i.cji = zext <16 x i16> %strided.vec1350 to <16 x i32>
  %i.cjj = shl nuw <16 x i32> %i.cjf, splat (i32 16)
  %i.cjk = shl nuw <16 x i32> %i.cjg, splat (i32 16)
  %i.cjl = shl nuw <16 x i32> %i.cjh, splat (i32 16)
  %i.cjm = shl nuw <16 x i32> %i.cji, splat (i32 16)
  %i.cjn = bitcast <16 x i32> %i.cjj to <16 x float>
  %i.cjo = bitcast <16 x i32> %i.cjk to <16 x float>
  %i.cjp = bitcast <16 x i32> %i.cjl to <16 x float>
  %i.cjq = bitcast <16 x i32> %i.cjm to <16 x float>
  %i.cjr = zext <16 x i16> %strided.vec1336 to <16 x i32>
  %i.cjs = zext <16 x i16> %strided.vec1341 to <16 x i32>
  %i.cjt = zext <16 x i16> %strided.vec1346 to <16 x i32>
  %i.cju = zext <16 x i16> %strided.vec1351 to <16 x i32>
  %i.cjv = shl nuw <16 x i32> %i.cjr, splat (i32 16)
  %i.cjw = shl nuw <16 x i32> %i.cjs, splat (i32 16)
  %i.cjx = shl nuw <16 x i32> %i.cjt, splat (i32 16)
  %i.cjy = shl nuw <16 x i32> %i.cju, splat (i32 16)
  %i.cjz = bitcast <16 x i32> %i.cjv to <16 x float>
  %i.cka = bitcast <16 x i32> %i.cjw to <16 x float>
  %i.ckb = bitcast <16 x i32> %i.cjx to <16 x float>
  %i.ckc = bitcast <16 x i32> %i.cjy to <16 x float>
  %i.ckd = zext <16 x i16> %strided.vec1337 to <16 x i32>
  %i.cke = zext <16 x i16> %strided.vec1342 to <16 x i32>
  %i.ckf = zext <16 x i16> %strided.vec1347 to <16 x i32>
  %i.ckg = zext <16 x i16> %strided.vec1352 to <16 x i32>
  %i.ckh = shl nuw <16 x i32> %i.ckd, splat (i32 16)
  %i.cki = shl nuw <16 x i32> %i.cke, splat (i32 16)
  %i.ckj = shl nuw <16 x i32> %i.ckf, splat (i32 16)
  %i.ckk = shl nuw <16 x i32> %i.ckg, splat (i32 16)
  %i.ckl = bitcast <16 x i32> %i.ckh to <16 x float>
  %i.ckm = bitcast <16 x i32> %i.cki to <16 x float>
  %i.ckn = bitcast <16 x i32> %i.ckj to <16 x float>
  %i.cko = bitcast <16 x i32> %i.ckk to <16 x float>
  %i.ckp = zext <16 x i16> %strided.vec1338 to <16 x i32>
  %i.ckq = zext <16 x i16> %strided.vec1343 to <16 x i32>
  %i.ckr = zext <16 x i16> %strided.vec1348 to <16 x i32>
  %i.cks = zext <16 x i16> %strided.vec1353 to <16 x i32>
  %i.ckt = shl nuw <16 x i32> %i.ckp, splat (i32 16)
  %i.cku = shl nuw <16 x i32> %i.ckq, splat (i32 16)
  %i.ckv = shl nuw <16 x i32> %i.ckr, splat (i32 16)
  %i.ckw = shl nuw <16 x i32> %i.cks, splat (i32 16)
  %i.ckx = bitcast <16 x i32> %i.ckt to <16 x float>
  %i.cky = bitcast <16 x i32> %i.cku to <16 x float>
  %i.ckz = bitcast <16 x i32> %i.ckv to <16 x float>
  %i.cla = bitcast <16 x i32> %i.ckw to <16 x float>
  %wide.vec1354 = load <32 x i16>, ptr %next.gep1330, align 2, !tbaa !57
  %i.clb = freeze <32 x i16> %wide.vec1354        ; 2 uses
  %i.clc = bitcast <32 x i16> %i.clb to <16 x i32>
  %i.cld = bitcast <32 x i16> %i.clb to <16 x i32>
  %i.cle = and <16 x i32> %i.cld, splat (i32 -65536)
  %wide.vec1357 = load <32 x i16>, ptr %next.gep1331, align 2, !tbaa !57
  %i.clf = freeze <32 x i16> %wide.vec1357        ; 2 uses
  %i.clg = bitcast <32 x i16> %i.clf to <16 x i32>
  %i.clh = bitcast <32 x i16> %i.clf to <16 x i32>
  %i.cli = and <16 x i32> %i.clh, splat (i32 -65536)
  %wide.vec1360 = load <32 x i16>, ptr %next.gep1332, align 2, !tbaa !57
  %i.clj = freeze <32 x i16> %wide.vec1360        ; 2 uses
  %i.clk = bitcast <32 x i16> %i.clj to <16 x i32>
  %i.cll = bitcast <32 x i16> %i.clj to <16 x i32>
  %i.clm = and <16 x i32> %i.cll, splat (i32 -65536)
  %wide.vec1363 = load <32 x i16>, ptr %next.gep1333, align 2, !tbaa !57
  %i.cln = freeze <32 x i16> %wide.vec1363        ; 2 uses
  %i.clo = bitcast <32 x i16> %i.cln to <16 x i32>
  %i.clp = bitcast <32 x i16> %i.cln to <16 x i32>
  %i.clq = and <16 x i32> %i.clp, splat (i32 -65536)
  %i.clr = shl <16 x i32> %i.clc, splat (i32 16)
  %i.cls = shl <16 x i32> %i.clg, splat (i32 16)
  %i.clt = shl <16 x i32> %i.clk, splat (i32 16)
  %i.clu = shl <16 x i32> %i.clo, splat (i32 16)
  %i.clv = bitcast <16 x i32> %i.clr to <16 x float> ; 2 uses
  %i.clw = bitcast <16 x i32> %i.cls to <16 x float> ; 2 uses
  %i.clx = bitcast <16 x i32> %i.clt to <16 x float> ; 2 uses
  %i.cly = bitcast <16 x i32> %i.clu to <16 x float> ; 2 uses
  %i.clz = bitcast <16 x i32> %i.cle to <16 x float> ; 2 uses
  %i.cma = bitcast <16 x i32> %i.cli to <16 x float> ; 2 uses
  %i.cmb = bitcast <16 x i32> %i.clm to <16 x float> ; 2 uses
  %i.cmc = bitcast <16 x i32> %i.clq to <16 x float> ; 2 uses
  %i.cmd = fmul fast <16 x float> %i.clv, %i.cjn
  %i.cme = fmul fast <16 x float> %i.clw, %i.cjo
  %i.cmf = fmul fast <16 x float> %i.clx, %i.cjp
  %i.cmg = fmul fast <16 x float> %i.cly, %i.cjq
  %i.cmh = fmul fast <16 x float> %i.clz, %i.cjz
  %i.cmi = fmul fast <16 x float> %i.cma, %i.cka
  %i.cmj = fmul fast <16 x float> %i.cmb, %i.ckb
  %i.cmk = fmul fast <16 x float> %i.cmc, %i.ckc
  %i.cml = fadd fast <16 x float> %vec.phi1322, %i.cmd
  %i.cmm = fadd fast <16 x float> %vec.phi1323, %i.cme
  %i.cmn = fadd fast <16 x float> %vec.phi1324, %i.cmf
  %i.cmo = fadd fast <16 x float> %vec.phi1325, %i.cmg
  %i.cmp = fadd fast <16 x float> %i.cml, %i.cmh  ; 2 uses
  %i.cmq = fadd fast <16 x float> %i.cmm, %i.cmi  ; 2 uses
  %i.cmr = fadd fast <16 x float> %i.cmn, %i.cmj  ; 2 uses
  %i.cms = fadd fast <16 x float> %i.cmo, %i.cmk  ; 2 uses
  %i.cmt = fmul fast <16 x float> %i.clv, %i.ckl
  %i.cmu = fmul fast <16 x float> %i.clw, %i.ckm
  %i.cmv = fmul fast <16 x float> %i.clx, %i.ckn
  %i.cmw = fmul fast <16 x float> %i.cly, %i.cko
  %i.cmx = fmul fast <16 x float> %i.clz, %i.ckx
  %i.cmy = fmul fast <16 x float> %i.cma, %i.cky
  %i.cmz = fmul fast <16 x float> %i.cmb, %i.ckz
  %i.cna = fmul fast <16 x float> %i.cmc, %i.cla
  %i.cnb = fadd fast <16 x float> %vec.phi1318, %i.cmt
  %i.cnc = fadd fast <16 x float> %vec.phi1319, %i.cmu
  %i.cnd = fadd fast <16 x float> %vec.phi1320, %i.cmv
  %i.cne = fadd fast <16 x float> %vec.phi1321, %i.cmw
  %i.cnf = fadd fast <16 x float> %i.cnb, %i.cmx  ; 2 uses
  %i.cng = fadd fast <16 x float> %i.cnc, %i.cmy  ; 2 uses
  %i.cnh = fadd fast <16 x float> %i.cnd, %i.cmz  ; 2 uses
  %i.cni = fadd fast <16 x float> %i.cne, %i.cna  ; 2 uses
  %index.next1366 = add nuw i64 %index1317, 64    ; 2 uses
  %i.cnj = icmp eq i64 %index.next1366, %n.vec1315
  br i1 %i.cnj, label %middle.block1367, label %vector.body1316, !llvm.loop !430

middle.block1367:                                 ; preds = %vector.body1316
  %bin.rdx1368 = fadd fast <16 x float> %i.cng, %i.cnf
  %bin.rdx1369 = fadd fast <16 x float> %i.cnh, %bin.rdx1368
  %bin.rdx1370 = fadd fast <16 x float> %i.cni, %bin.rdx1369
  %i.cnk = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1370) ; 2 uses
  %bin.rdx1371 = fadd fast <16 x float> %i.cmq, %i.cmp
  %bin.rdx1372 = fadd fast <16 x float> %i.cmr, %bin.rdx1371
  %bin.rdx1373 = fadd fast <16 x float> %i.cms, %bin.rdx1372
  %i.cnl = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1373) ; 2 uses
  %i.cnm = insertelement <2 x float> poison, float %i.cnl, i64 0
  %i.cnn = insertelement <2 x float> %i.cnm, float %i.cnk, i64 1 ; 2 uses
  br i1 %cmp.n1374, label %.preheader383.loopexit.i, label %vec.epilog.iter.check1382

vec.epilog.iter.check1382:                        ; preds = %middle.block1367
  br i1 %min.epilog.iters.check1383, label %.lr.ph1158.i.preheader, label %vec.epilog.ph1384, !prof !150

vec.epilog.ph1384:                                ; preds = %vector.main.loop.iter.check1312, %vec.epilog.iter.check1382
  %vec.epilog.resume.val1375 = phi i64 [ %n.vec1315, %vec.epilog.iter.check1382 ], [ 0, %vector.main.loop.iter.check1312 ]
  %bc.merge.rdx1377 = phi float [ %i.cnk, %vec.epilog.iter.check1382 ], [ %i.cis, %vector.main.loop.iter.check1312 ]
  %bc.merge.rdx1378 = phi float [ %i.cnl, %vec.epilog.iter.check1382 ], [ %i.cir, %vector.main.loop.iter.check1312 ]
  %i.cno = getelementptr i8, ptr %.1217181174.i, i64 %i.aof
  %i.cnp = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1377, i64 0
  %i.cnq = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1378, i64 0
  br label %vec.epilog.vector.body1386

vec.epilog.vector.body1386:                       ; preds = %vec.epilog.vector.body1386, %vec.epilog.ph1384
  %index1387 = phi i64 [ %vec.epilog.resume.val1375, %vec.epilog.ph1384 ], [ %index.next1400, %vec.epilog.vector.body1386 ] ; 3 uses
  %vec.phi1388 = phi <8 x float> [ %i.cnp, %vec.epilog.ph1384 ], [ %i.cot, %vec.epilog.vector.body1386 ]
  %vec.phi1389 = phi <8 x float> [ %i.cnq, %vec.epilog.ph1384 ], [ %i.cop, %vec.epilog.vector.body1386 ]
  %i.cnr = shl i64 %index1387, 3
  %next.gep1390 = getelementptr i8, ptr %.31182.i, i64 %i.cnr
  %i.cns = shl i64 %index1387, 2
  %next.gep1391 = getelementptr i8, ptr %.1217181174.i, i64 %i.cns
  %wide.vec1392 = load <32 x i16>, ptr %next.gep1390, align 2, !tbaa !57 ; 4 uses
  %strided.vec1393 = shufflevector <32 x i16> %wide.vec1392, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1394 = shufflevector <32 x i16> %wide.vec1392, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1395 = shufflevector <32 x i16> %wide.vec1392, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1396 = shufflevector <32 x i16> %wide.vec1392, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cnt = zext <8 x i16> %strided.vec1393 to <8 x i32>
  %i.cnu = shl nuw <8 x i32> %i.cnt, splat (i32 16)
  %i.cnv = bitcast <8 x i32> %i.cnu to <8 x float>
  %i.cnw = zext <8 x i16> %strided.vec1394 to <8 x i32>
  %i.cnx = shl nuw <8 x i32> %i.cnw, splat (i32 16)
  %i.cny = bitcast <8 x i32> %i.cnx to <8 x float>
  %i.cnz = zext <8 x i16> %strided.vec1395 to <8 x i32>
  %i.coa = shl nuw <8 x i32> %i.cnz, splat (i32 16)
  %i.cob = bitcast <8 x i32> %i.coa to <8 x float>
  %i.coc = zext <8 x i16> %strided.vec1396 to <8 x i32>
  %i.cod = shl nuw <8 x i32> %i.coc, splat (i32 16)
  %i.coe = bitcast <8 x i32> %i.cod to <8 x float>
  %wide.vec1397 = load <16 x i16>, ptr %next.gep1391, align 2, !tbaa !57
  %i.cof = freeze <16 x i16> %wide.vec1397        ; 2 uses
  %i.cog = bitcast <16 x i16> %i.cof to <8 x i32>
  %i.coh = bitcast <16 x i16> %i.cof to <8 x i32>
  %i.coi = and <8 x i32> %i.coh, splat (i32 -65536)
  %i.coj = shl <8 x i32> %i.cog, splat (i32 16)
  %i.cok = bitcast <8 x i32> %i.coj to <8 x float> ; 2 uses
  %i.col = bitcast <8 x i32> %i.coi to <8 x float> ; 2 uses
  %i.com = fmul fast <8 x float> %i.cok, %i.cnv
  %i.con = fmul fast <8 x float> %i.col, %i.cny
  %i.coo = fadd fast <8 x float> %vec.phi1389, %i.com
  %i.cop = fadd fast <8 x float> %i.coo, %i.con   ; 2 uses
  %i.coq = fmul fast <8 x float> %i.cok, %i.cob
  %i.cor = fmul fast <8 x float> %i.col, %i.coe
  %i.cos = fadd fast <8 x float> %vec.phi1388, %i.coq
  %i.cot = fadd fast <8 x float> %i.cos, %i.cor   ; 2 uses
  %index.next1400 = add nuw i64 %index1387, 8     ; 2 uses
  %i.cou = icmp eq i64 %index.next1400, %n.vec1385
  br i1 %i.cou, label %vec.epilog.middle.block1401, label %vec.epilog.vector.body1386, !llvm.loop !431

vec.epilog.middle.block1401:                      ; preds = %vec.epilog.vector.body1386
  %i.cov = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cot)
  %i.cow = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cop)
  %i.cox = insertelement <2 x float> poison, float %i.cow, i64 0
  %i.coy = insertelement <2 x float> %i.cox, float %i.cov, i64 1 ; 2 uses
  br i1 %cmp.n1402, label %.preheader383.loopexit.i, label %.lr.ph1158.i.preheader

.lr.ph1158.i.preheader:                           ; preds = %iter.check1380, %vec.epilog.iter.check1382, %vec.epilog.middle.block1401
  %.015811156.i.ph = phi i32 [ 0, %iter.check1380 ], [ %i.anz, %vec.epilog.iter.check1382 ], [ %i.aod, %vec.epilog.middle.block1401 ]
  %.015831155.i.ph = phi ptr [ %.31182.i, %iter.check1380 ], [ %i.bvn, %vec.epilog.iter.check1382 ], [ %i.bvo, %vec.epilog.middle.block1401 ]
  %.1317191152.i.ph = phi ptr [ %.1217181174.i, %iter.check1380 ], [ %i.cit, %vec.epilog.iter.check1382 ], [ %i.cno, %vec.epilog.middle.block1401 ]
  %.ph2211 = phi <2 x float> [ %i.ciq, %iter.check1380 ], [ %i.cnn, %vec.epilog.iter.check1382 ], [ %i.coy, %vec.epilog.middle.block1401 ]
  br label %.lr.ph1158.i

.preheader383.loopexit.i:                         ; preds = %.lr.ph1158.i, %vec.epilog.middle.block1401, %middle.block1367
  %i.coz = phi <2 x float> [ %i.coy, %vec.epilog.middle.block1401 ], [ %i.cnn, %middle.block1367 ], [ %i.cug, %.lr.ph1158.i ]
  %i.cpa = getelementptr i8, ptr %.1217181174.i, i64 %i.anc
  %scevgep1819.i = getelementptr i8, ptr %i.cpa, i64 4
  br label %.preheader383.i

.preheader383.i:                                  ; preds = %.preheader383.loopexit.i, %bb.ao
  %.131719.lcssa.i = phi ptr [ %.1217181174.i, %bb.ao ], [ %scevgep1819.i, %.preheader383.loopexit.i ] ; 6 uses
  %.01583.lcssa.i = phi ptr [ %.31182.i, %bb.ao ], [ %indvars.iv1817.i, %.preheader383.loopexit.i ] ; 8 uses
  %.01581.lcssa.i = phi i32 [ 0, %bb.ao ], [ %i.amt, %.preheader383.loopexit.i ] ; 5 uses
  %i.cpb = phi <2 x float> [ %i.ciq, %bb.ao ], [ %i.coz, %.preheader383.loopexit.i ] ; 5 uses
  %i.cpc = icmp slt i32 %.01581.lcssa.i, %8
  %i.cpd = extractelement <2 x float> %i.cpb, i64 0
  %i.cpe = extractelement <2 x float> %i.cpb, i64 1
  br i1 %i.cpc, label %iter.check, label %._crit_edge1170.i

iter.check:                                       ; preds = %.preheader383.i
  %i.cpf = xor i32 %.01581.lcssa.i, -1
  %i.cpg = add i32 %8, %i.cpf                     ; 3 uses
  %i.cph = zext i32 %i.cpg to i64
  %i.cpi = add nuw nsw i64 %i.cph, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.cpg, 7
  br i1 %min.iters.check, label %.lr.ph1169.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1261 = icmp ult i32 %i.cpg, 63
  br i1 %min.iters.check1261, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cpj = and i64 %i.cpi, 56
  %n.vec = and i64 %i.cpi, 8589934528             ; 6 uses
  %i.cpk = trunc i64 %n.vec to i32
  %i.cpl = add i32 %.01581.lcssa.i, %i.cpk
  %i.cpm = shl nuw nsw i64 %n.vec, 2
  %i.cpn = getelementptr i8, ptr %.01583.lcssa.i, i64 %i.cpm
  %i.cpo = shl nuw nsw i64 %n.vec, 1
  %i.cpp = getelementptr i8, ptr %.131719.lcssa.i, i64 %i.cpo ; 2 uses
  %i.cpq = shufflevector <2 x float> %i.cpb, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cpr = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.cpq, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cps = shufflevector <16 x float> %i.cpq, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <16 x float> [ %i.cpr, %vector.ph ], [ %i.csb, %vector.body ]
  %vec.phi1262 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.csc, %vector.body ]
  %vec.phi1263 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.csd, %vector.body ]
  %vec.phi1264 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cse, %vector.body ]
  %vec.phi1265 = phi <16 x float> [ %i.cps, %vector.ph ], [ %i.crp, %vector.body ]
  %vec.phi1266 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.crq, %vector.body ]
  %vec.phi1267 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.crr, %vector.body ]
  %vec.phi1268 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.crs, %vector.body ]
  %i.cpt = shl i64 %index, 2                      ; 4 uses
  %next.gep = getelementptr i8, ptr %.01583.lcssa.i, i64 %i.cpt
  %i.cpu = getelementptr i8, ptr %.01583.lcssa.i, i64 %i.cpt
  %next.gep1269 = getelementptr i8, ptr %i.cpu, i64 64
  %i.cpv = getelementptr i8, ptr %.01583.lcssa.i, i64 %i.cpt
  %next.gep1270 = getelementptr i8, ptr %i.cpv, i64 128
  %i.cpw = getelementptr i8, ptr %.01583.lcssa.i, i64 %i.cpt
  %next.gep1271 = getelementptr i8, ptr %i.cpw, i64 192
  %i.cpx = shl i64 %index, 1
  %next.gep1272 = getelementptr i8, ptr %.131719.lcssa.i, i64 %i.cpx ; 4 uses
  %wide.vec = load <32 x i16>, ptr %next.gep, align 2, !tbaa !57
  %i.cpy = freeze <32 x i16> %wide.vec            ; 2 uses
  %i.cpz = bitcast <32 x i16> %i.cpy to <16 x i32>
  %i.cqa = bitcast <32 x i16> %i.cpy to <16 x i32>
  %i.cqb = and <16 x i32> %i.cqa, splat (i32 -65536)
  %wide.vec1274 = load <32 x i16>, ptr %next.gep1269, align 2, !tbaa !57
  %i.cqc = freeze <32 x i16> %wide.vec1274        ; 2 uses
  %i.cqd = bitcast <32 x i16> %i.cqc to <16 x i32>
  %i.cqe = bitcast <32 x i16> %i.cqc to <16 x i32>
  %i.cqf = and <16 x i32> %i.cqe, splat (i32 -65536)
  %wide.vec1277 = load <32 x i16>, ptr %next.gep1270, align 2, !tbaa !57
  %i.cqg = freeze <32 x i16> %wide.vec1277        ; 2 uses
  %i.cqh = bitcast <32 x i16> %i.cqg to <16 x i32>
  %i.cqi = bitcast <32 x i16> %i.cqg to <16 x i32>
  %i.cqj = and <16 x i32> %i.cqi, splat (i32 -65536)
  %wide.vec1280 = load <32 x i16>, ptr %next.gep1271, align 2, !tbaa !57
  %i.cqk = freeze <32 x i16> %wide.vec1280        ; 2 uses
  %i.cql = bitcast <32 x i16> %i.cqk to <16 x i32>
  %i.cqm = bitcast <32 x i16> %i.cqk to <16 x i32>
  %i.cqn = and <16 x i32> %i.cqm, splat (i32 -65536)
  %i.cqo = shl <16 x i32> %i.cpz, splat (i32 16)
  %i.cqp = shl <16 x i32> %i.cqd, splat (i32 16)
  %i.cqq = shl <16 x i32> %i.cqh, splat (i32 16)
  %i.cqr = shl <16 x i32> %i.cql, splat (i32 16)
  %i.cqs = bitcast <16 x i32> %i.cqo to <16 x float>
  %i.cqt = bitcast <16 x i32> %i.cqp to <16 x float>
  %i.cqu = bitcast <16 x i32> %i.cqq to <16 x float>
  %i.cqv = bitcast <16 x i32> %i.cqr to <16 x float>
  %i.cqw = getelementptr i8, ptr %next.gep1272, i64 32
  %i.cqx = getelementptr i8, ptr %next.gep1272, i64 64
  %i.cqy = getelementptr i8, ptr %next.gep1272, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep1272, align 2, !tbaa !57
  %wide.load1283 = load <16 x i16>, ptr %i.cqw, align 2, !tbaa !57
  %wide.load1284 = load <16 x i16>, ptr %i.cqx, align 2, !tbaa !57
  %wide.load1285 = load <16 x i16>, ptr %i.cqy, align 2, !tbaa !57
  %i.cqz = zext <16 x i16> %wide.load to <16 x i32>
  %i.cra = zext <16 x i16> %wide.load1283 to <16 x i32>
  %i.crb = zext <16 x i16> %wide.load1284 to <16 x i32>
  %i.crc = zext <16 x i16> %wide.load1285 to <16 x i32>
  %i.crd = shl nuw <16 x i32> %i.cqz, splat (i32 16)
  %i.cre = shl nuw <16 x i32> %i.cra, splat (i32 16)
  %i.crf = shl nuw <16 x i32> %i.crb, splat (i32 16)
  %i.crg = shl nuw <16 x i32> %i.crc, splat (i32 16)
  %i.crh = bitcast <16 x i32> %i.crd to <16 x float> ; 2 uses
  %i.cri = bitcast <16 x i32> %i.cre to <16 x float> ; 2 uses
  %i.crj = bitcast <16 x i32> %i.crf to <16 x float> ; 2 uses
  %i.crk = bitcast <16 x i32> %i.crg to <16 x float> ; 2 uses
  %i.crl = fmul fast <16 x float> %i.crh, %i.cqs
  %i.crm = fmul fast <16 x float> %i.cri, %i.cqt
  %i.crn = fmul fast <16 x float> %i.crj, %i.cqu
  %i.cro = fmul fast <16 x float> %i.crk, %i.cqv
  %i.crp = fadd fast <16 x float> %i.crl, %vec.phi1265 ; 2 uses
  %i.crq = fadd fast <16 x float> %i.crm, %vec.phi1266 ; 2 uses
  %i.crr = fadd fast <16 x float> %i.crn, %vec.phi1267 ; 2 uses
  %i.crs = fadd fast <16 x float> %i.cro, %vec.phi1268 ; 2 uses
  %i.crt = bitcast <16 x i32> %i.cqb to <16 x float>
  %i.cru = bitcast <16 x i32> %i.cqf to <16 x float>
  %i.crv = bitcast <16 x i32> %i.cqj to <16 x float>
  %i.crw = bitcast <16 x i32> %i.cqn to <16 x float>
  %i.crx = fmul fast <16 x float> %i.crt, %i.crh
  %i.cry = fmul fast <16 x float> %i.cru, %i.cri
  %i.crz = fmul fast <16 x float> %i.crv, %i.crj
  %i.csa = fmul fast <16 x float> %i.crw, %i.crk
  %i.csb = fadd fast <16 x float> %i.crx, %vec.phi ; 2 uses
  %i.csc = fadd fast <16 x float> %i.cry, %vec.phi1262 ; 2 uses
  %i.csd = fadd fast <16 x float> %i.crz, %vec.phi1263 ; 2 uses
  %i.cse = fadd fast <16 x float> %i.csa, %vec.phi1264 ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.csf = icmp eq i64 %index.next, %n.vec
  br i1 %i.csf, label %middle.block, label %vector.body, !llvm.loop !432

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <16 x float> %i.csc, %i.csb
  %bin.rdx1286 = fadd fast <16 x float> %i.csd, %bin.rdx
  %bin.rdx1287 = fadd fast <16 x float> %i.cse, %bin.rdx1286
  %i.csg = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1287) ; 2 uses
  %bin.rdx1288 = fadd fast <16 x float> %i.crq, %i.crp
  %bin.rdx1289 = fadd fast <16 x float> %i.crr, %bin.rdx1288
  %bin.rdx1290 = fadd fast <16 x float> %i.crs, %bin.rdx1289
  %i.csh = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1290) ; 2 uses
  %cmp.n = icmp eq i64 %i.cpi, %n.vec
  br i1 %cmp.n, label %._crit_edge1170.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cpj, 0
  %i.csi = insertelement <2 x float> poison, float %i.csh, i64 0
  %i.csj = insertelement <2 x float> %i.csi, float %i.csg, i64 1 ; 2 uses
  br i1 %min.epilog.iters.check, label %.lr.ph1169.i.preheader, label %vec.epilog.ph, !prof !150

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.csk = phi <2 x float> [ %i.csj, %vec.epilog.iter.check ], [ %i.cpb, %vector.main.loop.iter.check ]
  %n.vec1294 = and i64 %i.cpi, 8589934584         ; 5 uses
  %i.csl = trunc i64 %n.vec1294 to i32
  %i.csm = add i32 %.01581.lcssa.i, %i.csl
  %i.csn = shl nuw nsw i64 %n.vec1294, 2
  %i.cso = getelementptr i8, ptr %.01583.lcssa.i, i64 %i.csn
  %i.csp = shl nuw nsw i64 %n.vec1294, 1
  %i.csq = getelementptr i8, ptr %.131719.lcssa.i, i64 %i.csp ; 2 uses
  %i.csr = shufflevector <2 x float> %i.csk, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.css = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.csr, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cst = shufflevector <8 x float> %i.csr, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1295 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1304, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi1296 = phi <8 x float> [ %i.css, %vec.epilog.ph ], [ %i.ctj, %vec.epilog.vector.body ]
  %vec.phi1297 = phi <8 x float> [ %i.cst, %vec.epilog.ph ], [ %i.ctg, %vec.epilog.vector.body ]
  %i.csu = shl i64 %index1295, 2
  %next.gep1298 = getelementptr i8, ptr %.01583.lcssa.i, i64 %i.csu
  %i.csv = shl i64 %index1295, 1
  %next.gep1299 = getelementptr i8, ptr %.131719.lcssa.i, i64 %i.csv
  %wide.vec1300 = load <16 x i16>, ptr %next.gep1298, align 2, !tbaa !57
  %i.csw = freeze <16 x i16> %wide.vec1300        ; 2 uses
  %i.csx = bitcast <16 x i16> %i.csw to <8 x i32>
  %i.csy = bitcast <16 x i16> %i.csw to <8 x i32>
  %i.csz = and <8 x i32> %i.csy, splat (i32 -65536)
  %i.cta = shl <8 x i32> %i.csx, splat (i32 16)
  %i.ctb = bitcast <8 x i32> %i.cta to <8 x float>
  %wide.load1303 = load <8 x i16>, ptr %next.gep1299, align 2, !tbaa !57
  %i.ctc = zext <8 x i16> %wide.load1303 to <8 x i32>
  %i.ctd = shl nuw <8 x i32> %i.ctc, splat (i32 16)
  %i.cte = bitcast <8 x i32> %i.ctd to <8 x float> ; 2 uses
  %i.ctf = fmul fast <8 x float> %i.cte, %i.ctb
  %i.ctg = fadd fast <8 x float> %i.ctf, %vec.phi1297 ; 2 uses
  %i.cth = bitcast <8 x i32> %i.csz to <8 x float>
  %i.cti = fmul fast <8 x float> %i.cth, %i.cte
  %i.ctj = fadd fast <8 x float> %i.cti, %vec.phi1296 ; 2 uses
  %index.next1304 = add nuw i64 %index1295, 8     ; 2 uses
  %i.ctk = icmp eq i64 %index.next1304, %n.vec1294
  br i1 %i.ctk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !433

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ctl = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ctj) ; 2 uses
  %i.ctm = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ctg) ; 2 uses
  %cmp.n1305 = icmp eq i64 %i.cpi, %n.vec1294
  %i.ctn = insertelement <2 x float> poison, float %i.ctm, i64 0
  %i.cto = insertelement <2 x float> %i.ctn, float %i.ctl, i64 1
  br i1 %cmp.n1305, label %._crit_edge1170.i, label %.lr.ph1169.i.preheader

.lr.ph1169.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.115821168.i.ph = phi i32 [ %.01581.lcssa.i, %iter.check ], [ %i.cpl, %vec.epilog.iter.check ], [ %i.csm, %vec.epilog.middle.block ]
  %.115841167.i.ph = phi ptr [ %.01583.lcssa.i, %iter.check ], [ %i.cpn, %vec.epilog.iter.check ], [ %i.cso, %vec.epilog.middle.block ]
  %.1417201164.i.ph = phi ptr [ %.131719.lcssa.i, %iter.check ], [ %i.cpp, %vec.epilog.iter.check ], [ %i.csq, %vec.epilog.middle.block ]
  %.ph2210 = phi <2 x float> [ %i.cpb, %iter.check ], [ %i.csj, %vec.epilog.iter.check ], [ %i.cto, %vec.epilog.middle.block ]
  br label %.lr.ph1169.i

.lr.ph1158.i:                                     ; preds = %.lr.ph1158.i.preheader, %.lr.ph1158.i
  %.015811156.i = phi i32 [ %i.cuj, %.lr.ph1158.i ], [ %.015811156.i.ph, %.lr.ph1158.i.preheader ]
  %.015831155.i = phi ptr [ %i.cuh, %.lr.ph1158.i ], [ %.015831155.i.ph, %.lr.ph1158.i.preheader ] ; 2 uses
  %.1317191152.i = phi ptr [ %i.cui, %.lr.ph1158.i ], [ %.1317191152.i.ph, %.lr.ph1158.i.preheader ] ; 2 uses
  %i.ctp = phi <2 x float> [ %i.cug, %.lr.ph1158.i ], [ %.ph2211, %.lr.ph1158.i.preheader ]
  %i.ctq = load <2 x i16>, ptr %.1317191152.i, align 2, !tbaa !57
  %i.ctr = zext <2 x i16> %i.ctq to <2 x i32>
  %i.cts = shl nuw <2 x i32> %i.ctr, splat (i32 16)
  %i.ctt = bitcast <2 x i32> %i.cts to <2 x float> ; 2 uses
  %i.ctu = load <4 x i16>, ptr %.015831155.i, align 2, !tbaa !57
  %i.ctv = freeze <4 x i16> %i.ctu
  %i.ctw = bitcast <4 x i16> %i.ctv to <2 x i32>  ; 2 uses
  %i.ctx = and <2 x i32> %i.ctw, splat (i32 -65536)
  %i.cty = shl <2 x i32> %i.ctw, splat (i32 16)
  %i.ctz = bitcast <2 x i32> %i.cty to <2 x float>
  %i.cua = bitcast <2 x i32> %i.ctx to <2 x float>
  %i.cub = shufflevector <2 x float> %i.ctt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cuc = fmul fast <2 x float> %i.cub, %i.ctz
  %i.cud = shufflevector <2 x float> %i.ctt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cue = fmul fast <2 x float> %i.cud, %i.cua
  %i.cuf = fadd fast <2 x float> %i.ctp, %i.cuc
  %i.cug = fadd fast <2 x float> %i.cuf, %i.cue   ; 2 uses
  %i.cuh = getelementptr inbounds nuw i8, ptr %.015831155.i, i64 8
  %i.cui = getelementptr inbounds nuw i8, ptr %.1317191152.i, i64 4
  %i.cuj = add nuw nsw i32 %.015811156.i, 2       ; 2 uses
  %i.cuk = or disjoint i32 %i.cuj, 1
  %i.cul = icmp slt i32 %i.cuk, %8
  br i1 %i.cul, label %.lr.ph1158.i, label %.preheader383.loopexit.i, !llvm.loop !434

.lr.ph1169.i:                                     ; preds = %.lr.ph1169.i.preheader, %.lr.ph1169.i
  %.115821168.i = phi i32 [ %i.cvb, %.lr.ph1169.i ], [ %.115821168.i.ph, %.lr.ph1169.i.preheader ]
  %.115841167.i = phi ptr [ %i.cuz, %.lr.ph1169.i ], [ %.115841167.i.ph, %.lr.ph1169.i.preheader ] ; 2 uses
  %.1417201164.i = phi ptr [ %i.cva, %.lr.ph1169.i ], [ %.1417201164.i.ph, %.lr.ph1169.i.preheader ] ; 2 uses
  %i.cum = phi <2 x float> [ %i.cuy, %.lr.ph1169.i ], [ %.ph2210, %.lr.ph1169.i.preheader ]
  %i.cun = load i16, ptr %.1417201164.i, align 2, !tbaa !57
  %i.cuo = zext i16 %i.cun to i32
  %i.cup = shl nuw i32 %i.cuo, 16
  %i.cuq = load <2 x i16>, ptr %.115841167.i, align 2, !tbaa !57
  %i.cur = zext <2 x i16> %i.cuq to <2 x i32>
  %i.cus = shl nuw <2 x i32> %i.cur, splat (i32 16)
  %i.cut = bitcast <2 x i32> %i.cus to <2 x float>
  %i.cuu = insertelement <2 x i32> poison, i32 %i.cup, i64 0
  %i.cuv = bitcast <2 x i32> %i.cuu to <2 x float>
  %i.cuw = shufflevector <2 x float> %i.cuv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cux = fmul fast <2 x float> %i.cuw, %i.cut
  %i.cuy = fadd fast <2 x float> %i.cux, %i.cum   ; 3 uses
  %i.cuz = getelementptr inbounds nuw i8, ptr %.115841167.i, i64 4
  %i.cva = getelementptr inbounds nuw i8, ptr %.1417201164.i, i64 2 ; 2 uses
  %i.cvb = add nuw nsw i32 %.115821168.i, 1       ; 2 uses
  %exitcond1820.not.i = icmp eq i32 %i.cvb, %8
  br i1 %exitcond1820.not.i, label %._crit_edge1170.i.loopexit, label %.lr.ph1169.i, !llvm.loop !435

._crit_edge1170.i.loopexit:                       ; preds = %.lr.ph1169.i
  %i.cvc = extractelement <2 x float> %i.cuy, i64 1
  %i.cvd = extractelement <2 x float> %i.cuy, i64 0
  br label %._crit_edge1170.i

._crit_edge1170.i:                                ; preds = %._crit_edge1170.i.loopexit, %middle.block, %vec.epilog.middle.block, %.preheader383.i
  %.141720.lcssa.i = phi ptr [ %.131719.lcssa.i, %.preheader383.i ], [ %i.csq, %vec.epilog.middle.block ], [ %i.cpp, %middle.block ], [ %i.cva, %._crit_edge1170.i.loopexit ]
  %.21590.lcssa.i = phi float [ %i.cpd, %.preheader383.i ], [ %i.ctm, %vec.epilog.middle.block ], [ %i.csh, %middle.block ], [ %i.cvd, %._crit_edge1170.i.loopexit ]
  %.21587.lcssa.i = phi float [ %i.cpe, %.preheader383.i ], [ %i.ctl, %vec.epilog.middle.block ], [ %i.csg, %middle.block ], [ %i.cvc, %._crit_edge1170.i.loopexit ]
  store float %.21590.lcssa.i, ptr %.231176.i, align 4, !tbaa !421
  %i.cve = getelementptr inbounds nuw i8, ptr %.231176.i, i64 4
  store float %.21587.lcssa.i, ptr %i.cve, align 4, !tbaa !421
  %i.cvf = getelementptr inbounds nuw i8, ptr %.231176.i, i64 8 ; 2 uses
  %i.cvg = add nuw nsw i32 %.417051175.i, 1       ; 2 uses
  %exitcond1821.not.i = icmp eq i32 %i.cvg, %6
  br i1 %exitcond1821.not.i, label %._crit_edge1178.i, label %.lr.ph1177.i, !llvm.loop !436

._crit_edge1178.i:                                ; preds = %._crit_edge1170.i, %.preheader388.i
  %.23.lcssa.i = phi ptr [ %.22.lcssa.i, %.preheader388.i ], [ %i.cvf, %._crit_edge1170.i ] ; 2 uses
  %i.cvh = getelementptr inbounds [2 x i8], ptr %.31182.i, i64 %i.amq ; 2 uses
  %i.cvi = add nuw nsw i32 %.313891180.i, 2       ; 3 uses
  %i.cvj = or disjoint i32 %i.cvi, 1
  %i.cvk = icmp slt i32 %i.cvj, %4
  %scevgep1818.i = getelementptr i8, ptr %indvars.iv1817.i, i64 %i.anb
  br i1 %i.cvk, label %.preheader392.i, label %.preheader382.i, !llvm.loop !437

.preheader381.i:                                  ; preds = %._crit_edge1405.i, %.preheader381.lr.ph.i
  %indvars.iv633 = phi ptr [ %scevgep634, %._crit_edge1405.i ], [ %scevgep632, %.preheader381.lr.ph.i ] ; 2 uses
  %.41409.i = phi ptr [ %i.euf, %._crit_edge1405.i ], [ %.3.lcssa.i, %.preheader381.lr.ph.i ] ; 28 uses
  %.241408.i = phi ptr [ %.29.lcssa.i, %._crit_edge1405.i ], [ %.18.lcssa.i, %.preheader381.lr.ph.i ] ; 2 uses
  %.413901407.i = phi i32 [ %i.eug, %._crit_edge1405.i ], [ %.31389.lcssa.i, %.preheader381.lr.ph.i ]
  br i1 %i.bjc, label %.lr.ph1224.i, label %.preheader380.i

.preheader380.i:                                  ; preds = %._crit_edge1218.i, %.preheader381.i
  %.01545.lcssa.i = phi ptr [ %.val8, %.preheader381.i ], [ %.31548.lcssa.i, %._crit_edge1218.i ] ; 2 uses
  %.01540.lcssa.i = phi i32 [ 0, %.preheader381.i ], [ %i.bji, %._crit_edge1218.i ] ; 3 uses
  %.25.lcssa.i = phi ptr [ %.241408.i, %.preheader381.i ], [ %i.daa, %._crit_edge1218.i ] ; 2 uses
  %i.cvl = or disjoint i32 %.01540.lcssa.i, 7
  %i.cvm = icmp slt i32 %i.cvl, %6
  br i1 %i.cvm, label %.lr.ph1266.i, label %.preheader379.i

.lr.ph1224.i:                                     ; preds = %.preheader381.i, %._crit_edge1218.i
  %.251223.i = phi ptr [ %i.daa, %._crit_edge1218.i ], [ %.241408.i, %.preheader381.i ] ; 3 uses
  %.015401222.i = phi i32 [ %i.dab, %._crit_edge1218.i ], [ 0, %.preheader381.i ]
  %.015451221.i = phi ptr [ %.31548.lcssa.i, %._crit_edge1218.i ], [ %.val8, %.preheader381.i ] ; 4 uses
  br i1 %.not1791.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph1224.i
  %i.cvn = load <16 x float>, ptr %.251223.i, align 1, !tbaa !17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph1224.i
  %.01537.i = phi nsz <16 x float> [ %i.cvn, %bb.ap ], [ zeroinitializer, %.lr.ph1224.i ] ; 3 uses
  br i1 %i.bjd, label %.lr.ph1191.i.preheader, label %.preheader376.i

.lr.ph1191.i.preheader:                           ; preds = %bb.aq
  br i1 %i.bjy, label %.lr.ph1191.i.epil.preheader, label %.lr.ph1191.i

.preheader376.i.loopexit.unr-lcssa:               ; preds = %.lr.ph1191.i
  br i1 %lcmp.mod2627.not, label %.preheader376.i.loopexit, label %.lr.ph1191.i.epil.preheader

.lr.ph1191.i.epil.preheader:                      ; preds = %.preheader376.i.loopexit.unr-lcssa, %.lr.ph1191.i.preheader
  %.015341188.i.epil.init = phi ptr [ %.41409.i, %.lr.ph1191.i.preheader ], [ %i.cxd, %.preheader376.i.loopexit.unr-lcssa ]
  %.115381187.i.epil.init = phi <16 x float> [ %.01537.i, %.lr.ph1191.i.preheader ], [ %i.cxc, %.preheader376.i.loopexit.unr-lcssa ]
  %.115461186.i.epil.init = phi ptr [ %.015451221.i, %.lr.ph1191.i.preheader ], [ %i.cxe, %.preheader376.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2630)
  br label %.lr.ph1191.i.epil

.lr.ph1191.i.epil:                                ; preds = %.lr.ph1191.i.epil, %.lr.ph1191.i.epil.preheader
  %.015341188.i.epil = phi ptr [ %i.cvu, %.lr.ph1191.i.epil ], [ %.015341188.i.epil.init, %.lr.ph1191.i.epil.preheader ] ; 2 uses
  %.115381187.i.epil = phi <16 x float> [ %i.cvt, %.lr.ph1191.i.epil ], [ %.115381187.i.epil.init, %.lr.ph1191.i.epil.preheader ]
  %.115461186.i.epil = phi ptr [ %i.cvv, %.lr.ph1191.i.epil ], [ %.115461186.i.epil.init, %.lr.ph1191.i.epil.preheader ] ; 2 uses
  %epil.iter2626 = phi i32 [ %epil.iter2626.next, %.lr.ph1191.i.epil ], [ 0, %.lr.ph1191.i.epil.preheader ]
  %i.cvo = load i32, ptr %.015341188.i.epil, align 4, !tbaa !369
  %i.cvp = insertelement <16 x i32> poison, i32 %i.cvo, i64 0
  %i.cvq = shufflevector <16 x i32> %i.cvp, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cvr = load <32 x bfloat>, ptr %.115461186.i.epil, align 1, !tbaa !17
  %i.cvs = bitcast <16 x i32> %i.cvq to <32 x bfloat>
  %i.cvt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.115381187.i.epil, <32 x bfloat> nofpclass(nan inf) %i.cvs, <32 x bfloat> nofpclass(nan inf) %i.cvr) ; 2 uses
  %i.cvu = getelementptr inbounds nuw i8, ptr %.015341188.i.epil, i64 4 ; 2 uses
  %i.cvv = getelementptr inbounds nuw i8, ptr %.115461186.i.epil, i64 64
  %epil.iter2626.next = add i32 %epil.iter2626, 1 ; 2 uses
  %epil.iter2626.cmp.not = icmp eq i32 %epil.iter2626.next, %xtraiter2625
  br i1 %epil.iter2626.cmp.not, label %.preheader376.i.loopexit, label %.lr.ph1191.i.epil, !llvm.loop !438

.preheader376.i.loopexit:                         ; preds = %.lr.ph1191.i.epil, %.preheader376.i.loopexit.unr-lcssa
  %.lcssa2093 = phi <16 x float> [ %i.cxc, %.preheader376.i.loopexit.unr-lcssa ], [ %i.cvt, %.lr.ph1191.i.epil ]
  %.lcssa = phi ptr [ %i.cxd, %.preheader376.i.loopexit.unr-lcssa ], [ %i.cvu, %.lr.ph1191.i.epil ]
  %i.cvw = getelementptr i8, ptr %.015451221.i, i64 %i.bjr
  %scevgep631 = getelementptr i8, ptr %i.cvw, i64 64
  br label %.preheader376.i

.preheader376.i:                                  ; preds = %.preheader376.i.loopexit, %bb.aq
  %.11546.lcssa.i = phi ptr [ %.015451221.i, %bb.aq ], [ %scevgep631, %.preheader376.i.loopexit ] ; 2 uses
  %.11538.lcssa.i = phi <16 x float> [ %.01537.i, %bb.aq ], [ %.lcssa2093, %.preheader376.i.loopexit ] ; 2 uses
  %.01534.lcssa.i = phi ptr [ %.41409.i, %bb.aq ], [ %.lcssa, %.preheader376.i.loopexit ] ; 2 uses
  %.01531.lcssa.i = phi i32 [ 0, %bb.aq ], [ %i.bjh, %.preheader376.i.loopexit ] ; 3 uses
  %i.cvx = add nuw nsw i32 %.01531.lcssa.i, 3
  %i.cvy = icmp slt i32 %i.cvx, %8
  br i1 %i.cvy, label %.lr.ph1203.i, label %._crit_edge1204.i

.lr.ph1191.i:                                     ; preds = %.lr.ph1191.i.preheader, %.lr.ph1191.i
  %.015341188.i = phi ptr [ %i.cxd, %.lr.ph1191.i ], [ %.41409.i, %.lr.ph1191.i.preheader ] ; 5 uses
  %.115381187.i = phi <16 x float> [ %i.cxc, %.lr.ph1191.i ], [ %.01537.i, %.lr.ph1191.i.preheader ]
  %.115461186.i = phi ptr [ %i.cxe, %.lr.ph1191.i ], [ %.015451221.i, %.lr.ph1191.i.preheader ] ; 5 uses
  %niter2632 = phi i32 [ %niter2632.next.3, %.lr.ph1191.i ], [ 0, %.lr.ph1191.i.preheader ]
  %i.cvz = load i32, ptr %.015341188.i, align 4, !tbaa !369
  %i.cwa = insertelement <16 x i32> poison, i32 %i.cvz, i64 0
  %i.cwb = shufflevector <16 x i32> %i.cwa, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cwc = load <32 x bfloat>, ptr %.115461186.i, align 1, !tbaa !17
  %i.cwd = bitcast <16 x i32> %i.cwb to <32 x bfloat>
  %i.cwe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.115381187.i, <32 x bfloat> nofpclass(nan inf) %i.cwd, <32 x bfloat> nofpclass(nan inf) %i.cwc)
  %i.cwf = getelementptr inbounds nuw i8, ptr %.015341188.i, i64 4
  %i.cwg = getelementptr inbounds nuw i8, ptr %.115461186.i, i64 64
  %i.cwh = load i32, ptr %i.cwf, align 4, !tbaa !369
  %i.cwi = insertelement <16 x i32> poison, i32 %i.cwh, i64 0
  %i.cwj = shufflevector <16 x i32> %i.cwi, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cwk = load <32 x bfloat>, ptr %i.cwg, align 1, !tbaa !17
  %i.cwl = bitcast <16 x i32> %i.cwj to <32 x bfloat>
  %i.cwm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.cwe, <32 x bfloat> nofpclass(nan inf) %i.cwl, <32 x bfloat> nofpclass(nan inf) %i.cwk)
  %i.cwn = getelementptr inbounds nuw i8, ptr %.015341188.i, i64 8
  %i.cwo = getelementptr inbounds nuw i8, ptr %.115461186.i, i64 128
  %i.cwp = load i32, ptr %i.cwn, align 4, !tbaa !369
  %i.cwq = insertelement <16 x i32> poison, i32 %i.cwp, i64 0
  %i.cwr = shufflevector <16 x i32> %i.cwq, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cws = load <32 x bfloat>, ptr %i.cwo, align 1, !tbaa !17
  %i.cwt = bitcast <16 x i32> %i.cwr to <32 x bfloat>
  %i.cwu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.cwm, <32 x bfloat> nofpclass(nan inf) %i.cwt, <32 x bfloat> nofpclass(nan inf) %i.cws)
  %i.cwv = getelementptr inbounds nuw i8, ptr %.015341188.i, i64 12
  %i.cww = getelementptr inbounds nuw i8, ptr %.115461186.i, i64 192
  %i.cwx = load i32, ptr %i.cwv, align 4, !tbaa !369
  %i.cwy = insertelement <16 x i32> poison, i32 %i.cwx, i64 0
  %i.cwz = shufflevector <16 x i32> %i.cwy, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cxa = load <32 x bfloat>, ptr %i.cww, align 1, !tbaa !17
  %i.cxb = bitcast <16 x i32> %i.cwz to <32 x bfloat>
  %i.cxc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.cwu, <32 x bfloat> nofpclass(nan inf) %i.cxb, <32 x bfloat> nofpclass(nan inf) %i.cxa) ; 3 uses
  %i.cxd = getelementptr inbounds nuw i8, ptr %.015341188.i, i64 16 ; 3 uses
  %i.cxe = getelementptr inbounds nuw i8, ptr %.115461186.i, i64 256 ; 2 uses
  %niter2632.next.3 = add i32 %niter2632, 4       ; 2 uses
  %niter2632.ncmp.3.not = icmp eq i32 %niter2632.next.3, %unroll_iter2631
  br i1 %niter2632.ncmp.3.not, label %.preheader376.i.loopexit.unr-lcssa, label %.lr.ph1191.i, !llvm.loop !439

.lr.ph1203.i:                                     ; preds = %.preheader376.i, %.lr.ph1203.i
  %.015211202.i = phi <16 x float> [ %i.cye, %.lr.ph1203.i ], [ zeroinitializer, %.preheader376.i ]
  %.015221201.i = phi <16 x float> [ %i.cxy, %.lr.ph1203.i ], [ zeroinitializer, %.preheader376.i ]
  %.015231200.i = phi <16 x float> [ %i.cxv, %.lr.ph1203.i ], [ zeroinitializer, %.preheader376.i ]
  %.015241199.i = phi <16 x float> [ %i.cxs, %.lr.ph1203.i ], [ zeroinitializer, %.preheader376.i ]
  %.115321198.i = phi i32 [ %i.cyh, %.lr.ph1203.i ], [ %.01531.lcssa.i, %.preheader376.i ] ; 2 uses
  %.115351197.i = phi ptr [ %i.cyf, %.lr.ph1203.i ], [ %.01534.lcssa.i, %.preheader376.i ] ; 2 uses
  %.215471196.i = phi ptr [ %i.cyg, %.lr.ph1203.i ], [ %.11546.lcssa.i, %.preheader376.i ] ; 5 uses
  %i.cxf = load <16 x bfloat>, ptr %.215471196.i, align 1, !tbaa !17
  %i.cxg = fpext fast <16 x bfloat> %i.cxf to <16 x float>
  %i.cxh = getelementptr inbounds nuw i8, ptr %.215471196.i, i64 32
  %i.cxi = load <16 x bfloat>, ptr %i.cxh, align 1, !tbaa !17
  %i.cxj = fpext fast <16 x bfloat> %i.cxi to <16 x float>
  %i.cxk = getelementptr inbounds nuw i8, ptr %.215471196.i, i64 64
  %i.cxl = load <16 x bfloat>, ptr %i.cxk, align 1, !tbaa !17
  %i.cxm = fpext fast <16 x bfloat> %i.cxl to <16 x float>
  %i.cxn = load <4 x i16>, ptr %.115351197.i, align 2, !tbaa !57
  %i.cxo = zext <4 x i16> %i.cxn to <4 x i32>
  %i.cxp = shl nuw <4 x i32> %i.cxo, splat (i32 16) ; 4 uses
  %i.cxq = bitcast <4 x i32> %i.cxp to <4 x float>
  %i.cxr = shufflevector <4 x float> %i.cxq, <4 x float> poison, <16 x i32> zeroinitializer
  %i.cxs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cxr, <16 x float> nofpclass(nan inf) %i.cxg, <16 x float> nofpclass(nan inf) %.015241199.i) ; 2 uses
  %i.cxt = bitcast <4 x i32> %i.cxp to <4 x float>
  %i.cxu = shufflevector <4 x float> %i.cxt, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.cxv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cxu, <16 x float> nofpclass(nan inf) %i.cxj, <16 x float> nofpclass(nan inf) %.015231200.i) ; 2 uses
  %i.cxw = bitcast <4 x i32> %i.cxp to <4 x float>
  %i.cxx = shufflevector <4 x float> %i.cxw, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
end_hunk_0
begin_hunk_1_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.djx = insertelement <4 x i32> poison, i32 %i.djw, i64 0
  %i.djy = bitcast <4 x i32> %i.djx to <4 x float>
  %i.djz = shufflevector <4 x float> %i.djy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dka = load i64, ptr %i.djt, align 1, !tbaa !17
  %i.dkb = insertelement <2 x i64> poison, i64 %i.dka, i64 0
  %i.dkc = bitcast <2 x i64> %i.dkb to <8 x i16>
  %i.dkd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dkc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dke = bitcast <8 x i16> %i.dkd to <4 x float>
  %i.dkf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.djz, <4 x float> nofpclass(nan inf) %i.dke, <4 x float> nofpclass(nan inf) %i.djr) ; 2 uses
  %i.dkg = getelementptr inbounds nuw i8, ptr %.214801298.i, i64 4
  %i.dkh = getelementptr inbounds nuw i8, ptr %.1115561297.i, i64 16 ; 2 uses
  %i.dki = add nuw nsw i32 %.214771299.i, 2       ; 2 uses
  %exitcond1826.not.i.1 = icmp eq i32 %i.dki, %8
  br i1 %exitcond1826.not.i.1, label %._crit_edge1302.i, label %.lr.ph1301.i, !llvm.loop !451

._crit_edge1302.i:                                ; preds = %.lr.ph1301.i.prol.loopexit, %.lr.ph1301.i, %._crit_edge1288.i
  %.2320.lcssa.i = phi <4 x float> [ %.0317.lcssa.i, %._crit_edge1288.i ], [ %.lcssa2127.unr, %.lr.ph1301.i.prol.loopexit ], [ %i.dkf, %.lr.ph1301.i ]
  %.111556.lcssa.i = phi ptr [ %.101555.lcssa.i, %._crit_edge1288.i ], [ %.lcssa2126.unr, %.lr.ph1301.i.prol.loopexit ], [ %i.dkh, %.lr.ph1301.i ] ; 2 uses
  store <4 x float> %.2320.lcssa.i, ptr %.271307.i, align 1, !tbaa !17
  %i.dkj = getelementptr inbounds nuw i8, ptr %.271307.i, i64 16 ; 2 uses
  %i.dkk = add nuw nsw i32 %.215421306.i, 4       ; 3 uses
  %i.dkl = or disjoint i32 %i.dkk, 3
  %i.dkm = icmp slt i32 %i.dkl, %6
  br i1 %i.dkm, label %.lr.ph1308.i, label %.preheader378.i, !llvm.loop !452

.preheader377.i:                                  ; preds = %._crit_edge1355.i, %.preheader378.i
  %.121557.lcssa.i = phi ptr [ %.81553.lcssa.i, %.preheader378.i ], [ %.151560.lcssa.i, %._crit_edge1355.i ]
  %.31543.lcssa.i = phi i32 [ %.21542.lcssa.i, %.preheader378.i ], [ %i.ega, %._crit_edge1355.i ] ; 2 uses
  %.28.lcssa.i = phi ptr [ %.27.lcssa.i, %.preheader378.i ], [ %i.efz, %._crit_edge1355.i ] ; 2 uses
  %i.dkn = icmp slt i32 %.31543.lcssa.i, %6
  br i1 %i.dkn, label %.lr.ph1404.i.preheader, label %._crit_edge1405.i

.lr.ph1404.i.preheader:                           ; preds = %.preheader377.i
  %i.dko = getelementptr i8, ptr %.41409.i, i64 %i.bkn
  %i.dkp = getelementptr i8, ptr %.41409.i, i64 %i.bkq
  br label %.lr.ph1404.i

.lr.ph1362.i:                                     ; preds = %.lr.ph1362.i.preheader, %._crit_edge1355.i
  %.281361.i = phi ptr [ %i.efz, %._crit_edge1355.i ], [ %.27.lcssa.i, %.lr.ph1362.i.preheader ] ; 4 uses
  %.315431360.i = phi i32 [ %i.ega, %._crit_edge1355.i ], [ %.21542.lcssa.i, %.lr.ph1362.i.preheader ]
  %.1215571359.i = phi ptr [ %.151560.lcssa.i, %._crit_edge1355.i ], [ %.81553.lcssa.i, %.lr.ph1362.i.preheader ] ; 10 uses
  br i1 %.not1791.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph1362.i
  %i.dkq = load <2 x float>, ptr %.281361.i, align 4, !tbaa !421
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph1362.i
  %i.dkr = phi <2 x float> [ %i.dkq, %bb.av ], [ zeroinitializer, %.lr.ph1362.i ] ; 5 uses
  br i1 %i.bjd, label %iter.check2020, label %.preheader373.i

iter.check2020:                                   ; preds = %bb.aw
  br i1 %min.iters.check1951, label %.lr.ph1318.i.preheader, label %vector.main.loop.iter.check1952

vector.main.loop.iter.check1952:                  ; preds = %iter.check2020
  %i.dks = extractelement <2 x float> %i.dkr, i64 0
  %i.dkt = extractelement <2 x float> %i.dkr, i64 1
  br i1 %min.iters.check1953, label %vec.epilog.ph2024, label %vector.ph1954

vector.ph1954:                                    ; preds = %vector.main.loop.iter.check1952
  %i.dku = getelementptr i8, ptr %.1215571359.i, i64 %i.bkf
  %i.dkv = shufflevector <2 x float> %i.dkr, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dkw = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.dkv, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dkx = shufflevector <16 x float> %i.dkv, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1956

vector.body1956:                                  ; preds = %vector.body1956, %vector.ph1954
  %index1957 = phi i64 [ 0, %vector.ph1954 ], [ %index.next2006, %vector.body1956 ] ; 3 uses
  %vec.phi1958 = phi <16 x float> [ %i.dkw, %vector.ph1954 ], [ %i.dpg, %vector.body1956 ]
  %vec.phi1959 = phi <16 x float> [ zeroinitializer, %vector.ph1954 ], [ %i.dph, %vector.body1956 ]
  %vec.phi1960 = phi <16 x float> [ zeroinitializer, %vector.ph1954 ], [ %i.dpi, %vector.body1956 ]
  %vec.phi1961 = phi <16 x float> [ zeroinitializer, %vector.ph1954 ], [ %i.dpj, %vector.body1956 ]
  %vec.phi1962 = phi <16 x float> [ %i.dkx, %vector.ph1954 ], [ %i.doq, %vector.body1956 ]
  %vec.phi1963 = phi <16 x float> [ zeroinitializer, %vector.ph1954 ], [ %i.dor, %vector.body1956 ]
  %vec.phi1964 = phi <16 x float> [ zeroinitializer, %vector.ph1954 ], [ %i.dos, %vector.body1956 ]
  %vec.phi1965 = phi <16 x float> [ zeroinitializer, %vector.ph1954 ], [ %i.dot, %vector.body1956 ]
  %i.dky = shl i64 %index1957, 2                  ; 4 uses
  %next.gep1966 = getelementptr i8, ptr %.41409.i, i64 %i.dky
  %i.dkz = getelementptr i8, ptr %.41409.i, i64 %i.dky
  %next.gep1967 = getelementptr i8, ptr %i.dkz, i64 64
  %i.dla = getelementptr i8, ptr %.41409.i, i64 %i.dky
  %next.gep1968 = getelementptr i8, ptr %i.dla, i64 128
  %i.dlb = getelementptr i8, ptr %.41409.i, i64 %i.dky
  %next.gep1969 = getelementptr i8, ptr %i.dlb, i64 192
  %i.dlc = shl i64 %index1957, 3                  ; 4 uses
  %next.gep1970 = getelementptr i8, ptr %.1215571359.i, i64 %i.dlc
  %i.dld = getelementptr i8, ptr %.1215571359.i, i64 %i.dlc
  %next.gep1971 = getelementptr i8, ptr %i.dld, i64 128
  %i.dle = getelementptr i8, ptr %.1215571359.i, i64 %i.dlc
  %next.gep1972 = getelementptr i8, ptr %i.dle, i64 256
  %i.dlf = getelementptr i8, ptr %.1215571359.i, i64 %i.dlc
  %next.gep1973 = getelementptr i8, ptr %i.dlf, i64 384
  %wide.vec1974 = load <32 x i16>, ptr %next.gep1966, align 2, !tbaa !57
  %i.dlg = freeze <32 x i16> %wide.vec1974        ; 2 uses
  %i.dlh = bitcast <32 x i16> %i.dlg to <16 x i32>
  %i.dli = bitcast <32 x i16> %i.dlg to <16 x i32>
  %i.dlj = and <16 x i32> %i.dli, splat (i32 -65536)
  %wide.vec1977 = load <32 x i16>, ptr %next.gep1967, align 2, !tbaa !57
  %i.dlk = freeze <32 x i16> %wide.vec1977        ; 2 uses
  %i.dll = bitcast <32 x i16> %i.dlk to <16 x i32>
  %i.dlm = bitcast <32 x i16> %i.dlk to <16 x i32>
  %i.dln = and <16 x i32> %i.dlm, splat (i32 -65536)
  %wide.vec1980 = load <32 x i16>, ptr %next.gep1968, align 2, !tbaa !57
  %i.dlo = freeze <32 x i16> %wide.vec1980        ; 2 uses
  %i.dlp = bitcast <32 x i16> %i.dlo to <16 x i32>
  %i.dlq = bitcast <32 x i16> %i.dlo to <16 x i32>
  %i.dlr = and <16 x i32> %i.dlq, splat (i32 -65536)
  %wide.vec1983 = load <32 x i16>, ptr %next.gep1969, align 2, !tbaa !57
  %i.dls = freeze <32 x i16> %wide.vec1983        ; 2 uses
  %i.dlt = bitcast <32 x i16> %i.dls to <16 x i32>
  %i.dlu = bitcast <32 x i16> %i.dls to <16 x i32>
  %i.dlv = and <16 x i32> %i.dlu, splat (i32 -65536)
  %i.dlw = shl <16 x i32> %i.dlh, splat (i32 16)
  %i.dlx = shl <16 x i32> %i.dll, splat (i32 16)
  %i.dly = shl <16 x i32> %i.dlp, splat (i32 16)
  %i.dlz = shl <16 x i32> %i.dlt, splat (i32 16)
  %i.dma = bitcast <16 x i32> %i.dlw to <16 x float> ; 2 uses
  %i.dmb = bitcast <16 x i32> %i.dlx to <16 x float> ; 2 uses
  %i.dmc = bitcast <16 x i32> %i.dly to <16 x float> ; 2 uses
  %i.dmd = bitcast <16 x i32> %i.dlz to <16 x float> ; 2 uses
  %i.dme = bitcast <16 x i32> %i.dlj to <16 x float> ; 2 uses
  %i.dmf = bitcast <16 x i32> %i.dln to <16 x float> ; 2 uses
  %i.dmg = bitcast <16 x i32> %i.dlr to <16 x float> ; 2 uses
  %i.dmh = bitcast <16 x i32> %i.dlv to <16 x float> ; 2 uses
  %wide.vec1986 = load <64 x i16>, ptr %next.gep1970, align 2, !tbaa !57 ; 4 uses
  %strided.vec1987 = shufflevector <64 x i16> %wide.vec1986, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1988 = shufflevector <64 x i16> %wide.vec1986, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1989 = shufflevector <64 x i16> %wide.vec1986, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1990 = shufflevector <64 x i16> %wide.vec1986, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1991 = load <64 x i16>, ptr %next.gep1971, align 2, !tbaa !57 ; 4 uses
  %strided.vec1992 = shufflevector <64 x i16> %wide.vec1991, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1993 = shufflevector <64 x i16> %wide.vec1991, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1994 = shufflevector <64 x i16> %wide.vec1991, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1995 = shufflevector <64 x i16> %wide.vec1991, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1996 = load <64 x i16>, ptr %next.gep1972, align 2, !tbaa !57 ; 4 uses
  %strided.vec1997 = shufflevector <64 x i16> %wide.vec1996, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1998 = shufflevector <64 x i16> %wide.vec1996, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1999 = shufflevector <64 x i16> %wide.vec1996, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2000 = shufflevector <64 x i16> %wide.vec1996, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2001 = load <64 x i16>, ptr %next.gep1973, align 2, !tbaa !57 ; 4 uses
  %strided.vec2002 = shufflevector <64 x i16> %wide.vec2001, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2003 = shufflevector <64 x i16> %wide.vec2001, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2004 = shufflevector <64 x i16> %wide.vec2001, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2005 = shufflevector <64 x i16> %wide.vec2001, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.dmi = zext <16 x i16> %strided.vec1987 to <16 x i32>
  %i.dmj = zext <16 x i16> %strided.vec1992 to <16 x i32>
  %i.dmk = zext <16 x i16> %strided.vec1997 to <16 x i32>
  %i.dml = zext <16 x i16> %strided.vec2002 to <16 x i32>
  %i.dmm = shl nuw <16 x i32> %i.dmi, splat (i32 16)
  %i.dmn = shl nuw <16 x i32> %i.dmj, splat (i32 16)
  %i.dmo = shl nuw <16 x i32> %i.dmk, splat (i32 16)
  %i.dmp = shl nuw <16 x i32> %i.dml, splat (i32 16)
  %i.dmq = bitcast <16 x i32> %i.dmm to <16 x float>
  %i.dmr = bitcast <16 x i32> %i.dmn to <16 x float>
  %i.dms = bitcast <16 x i32> %i.dmo to <16 x float>
  %i.dmt = bitcast <16 x i32> %i.dmp to <16 x float>
  %i.dmu = zext <16 x i16> %strided.vec1988 to <16 x i32>
  %i.dmv = zext <16 x i16> %strided.vec1993 to <16 x i32>
  %i.dmw = zext <16 x i16> %strided.vec1998 to <16 x i32>
  %i.dmx = zext <16 x i16> %strided.vec2003 to <16 x i32>
  %i.dmy = shl nuw <16 x i32> %i.dmu, splat (i32 16)
  %i.dmz = shl nuw <16 x i32> %i.dmv, splat (i32 16)
  %i.dna = shl nuw <16 x i32> %i.dmw, splat (i32 16)
  %i.dnb = shl nuw <16 x i32> %i.dmx, splat (i32 16)
  %i.dnc = bitcast <16 x i32> %i.dmy to <16 x float>
  %i.dnd = bitcast <16 x i32> %i.dmz to <16 x float>
  %i.dne = bitcast <16 x i32> %i.dna to <16 x float>
  %i.dnf = bitcast <16 x i32> %i.dnb to <16 x float>
  %i.dng = zext <16 x i16> %strided.vec1989 to <16 x i32>
  %i.dnh = zext <16 x i16> %strided.vec1994 to <16 x i32>
  %i.dni = zext <16 x i16> %strided.vec1999 to <16 x i32>
  %i.dnj = zext <16 x i16> %strided.vec2004 to <16 x i32>
  %i.dnk = shl nuw <16 x i32> %i.dng, splat (i32 16)
  %i.dnl = shl nuw <16 x i32> %i.dnh, splat (i32 16)
  %i.dnm = shl nuw <16 x i32> %i.dni, splat (i32 16)
  %i.dnn = shl nuw <16 x i32> %i.dnj, splat (i32 16)
  %i.dno = bitcast <16 x i32> %i.dnk to <16 x float>
  %i.dnp = bitcast <16 x i32> %i.dnl to <16 x float>
  %i.dnq = bitcast <16 x i32> %i.dnm to <16 x float>
  %i.dnr = bitcast <16 x i32> %i.dnn to <16 x float>
  %i.dns = zext <16 x i16> %strided.vec1990 to <16 x i32>
  %i.dnt = zext <16 x i16> %strided.vec1995 to <16 x i32>
  %i.dnu = zext <16 x i16> %strided.vec2000 to <16 x i32>
  %i.dnv = zext <16 x i16> %strided.vec2005 to <16 x i32>
  %i.dnw = shl nuw <16 x i32> %i.dns, splat (i32 16)
  %i.dnx = shl nuw <16 x i32> %i.dnt, splat (i32 16)
  %i.dny = shl nuw <16 x i32> %i.dnu, splat (i32 16)
  %i.dnz = shl nuw <16 x i32> %i.dnv, splat (i32 16)
  %i.doa = bitcast <16 x i32> %i.dnw to <16 x float>
  %i.dob = bitcast <16 x i32> %i.dnx to <16 x float>
  %i.doc = bitcast <16 x i32> %i.dny to <16 x float>
  %i.dod = bitcast <16 x i32> %i.dnz to <16 x float>
  %i.doe = fmul fast <16 x float> %i.dmq, %i.dma
  %i.dof = fmul fast <16 x float> %i.dmr, %i.dmb
  %i.dog = fmul fast <16 x float> %i.dms, %i.dmc
  %i.doh = fmul fast <16 x float> %i.dmt, %i.dmd
  %i.doi = fmul fast <16 x float> %i.dnc, %i.dme
  %i.doj = fmul fast <16 x float> %i.dnd, %i.dmf
  %i.dok = fmul fast <16 x float> %i.dne, %i.dmg
  %i.dol = fmul fast <16 x float> %i.dnf, %i.dmh
  %i.dom = fadd fast <16 x float> %vec.phi1962, %i.doe
  %i.don = fadd fast <16 x float> %vec.phi1963, %i.dof
  %i.doo = fadd fast <16 x float> %vec.phi1964, %i.dog
  %i.dop = fadd fast <16 x float> %vec.phi1965, %i.doh
  %i.doq = fadd fast <16 x float> %i.dom, %i.doi  ; 2 uses
  %i.dor = fadd fast <16 x float> %i.don, %i.doj  ; 2 uses
  %i.dos = fadd fast <16 x float> %i.doo, %i.dok  ; 2 uses
  %i.dot = fadd fast <16 x float> %i.dop, %i.dol  ; 2 uses
  %i.dou = fmul fast <16 x float> %i.dno, %i.dma
  %i.dov = fmul fast <16 x float> %i.dnp, %i.dmb
  %i.dow = fmul fast <16 x float> %i.dnq, %i.dmc
  %i.dox = fmul fast <16 x float> %i.dnr, %i.dmd
  %i.doy = fmul fast <16 x float> %i.doa, %i.dme
  %i.doz = fmul fast <16 x float> %i.dob, %i.dmf
  %i.dpa = fmul fast <16 x float> %i.doc, %i.dmg
  %i.dpb = fmul fast <16 x float> %i.dod, %i.dmh
  %i.dpc = fadd fast <16 x float> %vec.phi1958, %i.dou
  %i.dpd = fadd fast <16 x float> %vec.phi1959, %i.dov
  %i.dpe = fadd fast <16 x float> %vec.phi1960, %i.dow
  %i.dpf = fadd fast <16 x float> %vec.phi1961, %i.dox
  %i.dpg = fadd fast <16 x float> %i.dpc, %i.doy  ; 2 uses
  %i.dph = fadd fast <16 x float> %i.dpd, %i.doz  ; 2 uses
  %i.dpi = fadd fast <16 x float> %i.dpe, %i.dpa  ; 2 uses
  %i.dpj = fadd fast <16 x float> %i.dpf, %i.dpb  ; 2 uses
  %index.next2006 = add nuw i64 %index1957, 64    ; 2 uses
  %i.dpk = icmp eq i64 %index.next2006, %n.vec1955
  br i1 %i.dpk, label %middle.block2007, label %vector.body1956, !llvm.loop !453

middle.block2007:                                 ; preds = %vector.body1956
  %bin.rdx2008 = fadd fast <16 x float> %i.dph, %i.dpg
  %bin.rdx2009 = fadd fast <16 x float> %i.dpi, %bin.rdx2008
  %bin.rdx2010 = fadd fast <16 x float> %i.dpj, %bin.rdx2009
  %i.dpl = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx2010) ; 2 uses
  %bin.rdx2011 = fadd fast <16 x float> %i.dor, %i.doq
  %bin.rdx2012 = fadd fast <16 x float> %i.dos, %bin.rdx2011
  %bin.rdx2013 = fadd fast <16 x float> %i.dot, %bin.rdx2012
  %i.dpm = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx2013) ; 2 uses
  %i.dpn = insertelement <2 x float> poison, float %i.dpm, i64 0
  %i.dpo = insertelement <2 x float> %i.dpn, float %i.dpl, i64 1 ; 2 uses
  br i1 %cmp.n2014, label %.preheader373.loopexit.i, label %vec.epilog.iter.check2022

vec.epilog.iter.check2022:                        ; preds = %middle.block2007
  br i1 %min.epilog.iters.check2023, label %.lr.ph1318.i.preheader, label %vec.epilog.ph2024, !prof !150

vec.epilog.ph2024:                                ; preds = %vector.main.loop.iter.check1952, %vec.epilog.iter.check2022
  %vec.epilog.resume.val2015 = phi i64 [ %n.vec1955, %vec.epilog.iter.check2022 ], [ 0, %vector.main.loop.iter.check1952 ]
  %bc.merge.rdx2017 = phi float [ %i.dpl, %vec.epilog.iter.check2022 ], [ %i.dkt, %vector.main.loop.iter.check1952 ]
  %bc.merge.rdx2018 = phi float [ %i.dpm, %vec.epilog.iter.check2022 ], [ %i.dks, %vector.main.loop.iter.check1952 ]
  %i.dpp = getelementptr i8, ptr %.1215571359.i, i64 %i.bkj
  %i.dpq = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx2017, i64 0
  %i.dpr = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx2018, i64 0
  br label %vec.epilog.vector.body2026

vec.epilog.vector.body2026:                       ; preds = %vec.epilog.vector.body2026, %vec.epilog.ph2024
  %index2027 = phi i64 [ %vec.epilog.resume.val2015, %vec.epilog.ph2024 ], [ %index.next2040, %vec.epilog.vector.body2026 ] ; 3 uses
  %vec.phi2028 = phi <8 x float> [ %i.dpq, %vec.epilog.ph2024 ], [ %i.dqu, %vec.epilog.vector.body2026 ]
  %vec.phi2029 = phi <8 x float> [ %i.dpr, %vec.epilog.ph2024 ], [ %i.dqq, %vec.epilog.vector.body2026 ]
  %i.dps = shl i64 %index2027, 2
  %next.gep2030 = getelementptr i8, ptr %.41409.i, i64 %i.dps
  %i.dpt = shl i64 %index2027, 3
  %next.gep2031 = getelementptr i8, ptr %.1215571359.i, i64 %i.dpt
  %wide.vec2032 = load <16 x i16>, ptr %next.gep2030, align 2, !tbaa !57
  %i.dpu = freeze <16 x i16> %wide.vec2032        ; 2 uses
  %i.dpv = bitcast <16 x i16> %i.dpu to <8 x i32>
  %i.dpw = bitcast <16 x i16> %i.dpu to <8 x i32>
  %i.dpx = and <8 x i32> %i.dpw, splat (i32 -65536)
  %i.dpy = shl <8 x i32> %i.dpv, splat (i32 16)
  %i.dpz = bitcast <8 x i32> %i.dpy to <8 x float> ; 2 uses
  %i.dqa = bitcast <8 x i32> %i.dpx to <8 x float> ; 2 uses
  %wide.vec2035 = load <32 x i16>, ptr %next.gep2031, align 2, !tbaa !57 ; 4 uses
  %strided.vec2036 = shufflevector <32 x i16> %wide.vec2035, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec2037 = shufflevector <32 x i16> %wide.vec2035, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec2038 = shufflevector <32 x i16> %wide.vec2035, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec2039 = shufflevector <32 x i16> %wide.vec2035, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.dqb = zext <8 x i16> %strided.vec2036 to <8 x i32>
  %i.dqc = shl nuw <8 x i32> %i.dqb, splat (i32 16)
  %i.dqd = bitcast <8 x i32> %i.dqc to <8 x float>
  %i.dqe = zext <8 x i16> %strided.vec2037 to <8 x i32>
  %i.dqf = shl nuw <8 x i32> %i.dqe, splat (i32 16)
  %i.dqg = bitcast <8 x i32> %i.dqf to <8 x float>
  %i.dqh = zext <8 x i16> %strided.vec2038 to <8 x i32>
  %i.dqi = shl nuw <8 x i32> %i.dqh, splat (i32 16)
  %i.dqj = bitcast <8 x i32> %i.dqi to <8 x float>
  %i.dqk = zext <8 x i16> %strided.vec2039 to <8 x i32>
  %i.dql = shl nuw <8 x i32> %i.dqk, splat (i32 16)
  %i.dqm = bitcast <8 x i32> %i.dql to <8 x float>
  %i.dqn = fmul fast <8 x float> %i.dqd, %i.dpz
  %i.dqo = fmul fast <8 x float> %i.dqg, %i.dqa
  %i.dqp = fadd fast <8 x float> %vec.phi2029, %i.dqn
  %i.dqq = fadd fast <8 x float> %i.dqp, %i.dqo   ; 2 uses
  %i.dqr = fmul fast <8 x float> %i.dqj, %i.dpz
  %i.dqs = fmul fast <8 x float> %i.dqm, %i.dqa
  %i.dqt = fadd fast <8 x float> %vec.phi2028, %i.dqr
  %i.dqu = fadd fast <8 x float> %i.dqt, %i.dqs   ; 2 uses
  %index.next2040 = add nuw i64 %index2027, 8     ; 2 uses
  %i.dqv = icmp eq i64 %index.next2040, %n.vec2025
  br i1 %i.dqv, label %vec.epilog.middle.block2041, label %vec.epilog.vector.body2026, !llvm.loop !454

vec.epilog.middle.block2041:                      ; preds = %vec.epilog.vector.body2026
  %i.dqw = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dqu)
  %i.dqx = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dqq)
  %i.dqy = insertelement <2 x float> poison, float %i.dqx, i64 0
  %i.dqz = insertelement <2 x float> %i.dqy, float %i.dqw, i64 1 ; 2 uses
  br i1 %cmp.n2042, label %.preheader373.loopexit.i, label %.lr.ph1318.i.preheader

.lr.ph1318.i.preheader:                           ; preds = %iter.check2020, %vec.epilog.iter.check2022, %vec.epilog.middle.block2041
  %.014571316.i.ph = phi i32 [ 0, %iter.check2020 ], [ %i.bkd, %vec.epilog.iter.check2022 ], [ %i.bkh, %vec.epilog.middle.block2041 ]
  %.014601315.i.ph = phi ptr [ %.41409.i, %iter.check2020 ], [ %i.dez, %vec.epilog.iter.check2022 ], [ %i.dfa, %vec.epilog.middle.block2041 ]
  %.1315581312.i.ph = phi ptr [ %.1215571359.i, %iter.check2020 ], [ %i.dku, %vec.epilog.iter.check2022 ], [ %i.dpp, %vec.epilog.middle.block2041 ]
  %.ph2092 = phi <2 x float> [ %i.dkr, %iter.check2020 ], [ %i.dpo, %vec.epilog.iter.check2022 ], [ %i.dqz, %vec.epilog.middle.block2041 ]
  br label %.lr.ph1318.i

.preheader373.loopexit.i:                         ; preds = %.lr.ph1318.i, %vec.epilog.middle.block2041, %middle.block2007
  %.lcssa1003 = phi ptr [ %i.dfa, %vec.epilog.middle.block2041 ], [ %i.dez, %middle.block2007 ], [ %i.dyn, %.lr.ph1318.i ]
  %i.dra = phi <2 x float> [ %i.dqz, %vec.epilog.middle.block2041 ], [ %i.dpo, %middle.block2007 ], [ %i.dym, %.lr.ph1318.i ]
  %i.drb = getelementptr i8, ptr %.1215571359.i, i64 %i.bjn
  %scevgep1827.i = getelementptr i8, ptr %i.drb, i64 8
  br label %.preheader373.i

.preheader373.i:                                  ; preds = %.preheader373.loopexit.i, %bb.aw
  %.131558.lcssa.i = phi ptr [ %.1215571359.i, %bb.aw ], [ %scevgep1827.i, %.preheader373.loopexit.i ] ; 6 uses
  %.01460.lcssa.i = phi ptr [ %.41409.i, %bb.aw ], [ %.lcssa1003, %.preheader373.loopexit.i ] ; 6 uses
  %.01457.lcssa.i = phi i32 [ 0, %bb.aw ], [ %i.bjh, %.preheader373.loopexit.i ] ; 7 uses
  %i.drc = phi <2 x float> [ %i.dkr, %bb.aw ], [ %i.dra, %.preheader373.loopexit.i ] ; 2 uses
  %i.drd = add nuw nsw i32 %.01457.lcssa.i, 3
  %i.dre = icmp slt i32 %i.drd, %8
  br i1 %i.dre, label %iter.check1905, label %._crit_edge1336.i

iter.check1905:                                   ; preds = %.preheader373.i
  %i.drf = add i32 %.01457.lcssa.i, 7
  %smax1859 = tail call i32 @llvm.smax.i32(i32 %8, i32 %i.drf)
  %i.drg = add i32 %smax1859, -4
  %i.drh = sub i32 %i.drg, %.01457.lcssa.i        ; 3 uses
  %i.dri = lshr i32 %i.drh, 2
  %narrow = add nuw nsw i32 %i.dri, 1
  %i.drj = zext nneg i32 %narrow to i64           ; 5 uses
  %min.iters.check1860 = icmp ult i32 %i.drh, 12
  br i1 %min.iters.check1860, label %.lr.ph1335.i.preheader, label %vector.main.loop.iter.check1861

vector.main.loop.iter.check1861:                  ; preds = %iter.check1905
  %min.iters.check1862 = icmp ult i32 %i.drh, 60
  br i1 %min.iters.check1862, label %vec.epilog.ph1909, label %vector.ph1863

vector.ph1863:                                    ; preds = %vector.main.loop.iter.check1861
  %i.drk = and i64 %i.drj, 12
  %n.vec1864 = and i64 %i.drj, 2147483632         ; 6 uses
  %i.drl = trunc nuw nsw i64 %n.vec1864 to i32
  %i.drm = shl i32 %i.drl, 2
  %i.drn = add i32 %.01457.lcssa.i, %i.drm        ; 2 uses
  %i.dro = shl nuw nsw i64 %n.vec1864, 3
  %i.drp = getelementptr i8, ptr %.01460.lcssa.i, i64 %i.dro ; 2 uses
  %i.drq = shl nuw nsw i64 %n.vec1864, 4
  %i.drr = getelementptr i8, ptr %.131558.lcssa.i, i64 %i.drq ; 2 uses
  br label %vector.body1865

vector.body1865:                                  ; preds = %vector.body1865, %vector.ph1863
  %index1866 = phi i64 [ 0, %vector.ph1863 ], [ %index.next1891, %vector.body1865 ] ; 3 uses
  %vec.phi1867 = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dtt, %vector.body1865 ]
  %vec.phi1868 = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dtj, %vector.body1865 ]
  %vec.phi1869 = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dsz, %vector.body1865 ]
  %vec.phi1870 = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dsp, %vector.body1865 ]
  %vec.phi1871 = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dto, %vector.body1865 ]
  %vec.phi1872 = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dte, %vector.body1865 ]
  %vec.phi1873 = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dsu, %vector.body1865 ]
  %vec.phi1874 = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dsk, %vector.body1865 ]
  %i.drs = shl i64 %index1866, 3
  %next.gep1875 = getelementptr i8, ptr %.01460.lcssa.i, i64 %i.drs
  %i.drt = shl i64 %index1866, 4
  %next.gep1876 = getelementptr i8, ptr %.131558.lcssa.i, i64 %i.drt
  %wide.vec1877 = load <64 x i16>, ptr %next.gep1875, align 2, !tbaa !57 ; 4 uses
  %strided.vec1878 = shufflevector <64 x i16> %wide.vec1877, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1879 = shufflevector <64 x i16> %wide.vec1877, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1880 = shufflevector <64 x i16> %wide.vec1877, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1881 = shufflevector <64 x i16> %wide.vec1877, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.dru = zext <16 x i16> %strided.vec1878 to <16 x i32>
  %i.drv = shl nuw <16 x i32> %i.dru, splat (i32 16)
  %i.drw = bitcast <16 x i32> %i.drv to <16 x float> ; 2 uses
  %i.drx = zext <16 x i16> %strided.vec1879 to <16 x i32>
  %i.dry = shl nuw <16 x i32> %i.drx, splat (i32 16)
  %i.drz = bitcast <16 x i32> %i.dry to <16 x float> ; 2 uses
  %i.dsa = zext <16 x i16> %strided.vec1880 to <16 x i32>
  %i.dsb = shl nuw <16 x i32> %i.dsa, splat (i32 16)
  %i.dsc = bitcast <16 x i32> %i.dsb to <16 x float> ; 2 uses
  %i.dsd = zext <16 x i16> %strided.vec1881 to <16 x i32>
  %i.dse = shl nuw <16 x i32> %i.dsd, splat (i32 16)
  %i.dsf = bitcast <16 x i32> %i.dse to <16 x float> ; 2 uses
  %wide.vec1882 = load <128 x i16>, ptr %next.gep1876, align 2, !tbaa !57 ; 8 uses
  %strided.vec1883 = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec1884 = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec1885 = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec1886 = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec1887 = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec1888 = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec1889 = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec1890 = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %i.dsg = zext <16 x i16> %strided.vec1883 to <16 x i32>
  %i.dsh = shl nuw <16 x i32> %i.dsg, splat (i32 16)
  %i.dsi = bitcast <16 x i32> %i.dsh to <16 x float>
  %i.dsj = fmul fast <16 x float> %i.dsi, %i.drw
  %i.dsk = fadd fast <16 x float> %i.dsj, %vec.phi1874 ; 2 uses
  %i.dsl = zext <16 x i16> %strided.vec1884 to <16 x i32>
  %i.dsm = shl nuw <16 x i32> %i.dsl, splat (i32 16)
  %i.dsn = bitcast <16 x i32> %i.dsm to <16 x float>
  %i.dso = fmul fast <16 x float> %i.dsn, %i.drw
  %i.dsp = fadd fast <16 x float> %i.dso, %vec.phi1870 ; 2 uses
  %i.dsq = zext <16 x i16> %strided.vec1885 to <16 x i32>
  %i.dsr = shl nuw <16 x i32> %i.dsq, splat (i32 16)
  %i.dss = bitcast <16 x i32> %i.dsr to <16 x float>
  %i.dst = fmul fast <16 x float> %i.dss, %i.drz
  %i.dsu = fadd fast <16 x float> %i.dst, %vec.phi1873 ; 2 uses
  %i.dsv = zext <16 x i16> %strided.vec1886 to <16 x i32>
  %i.dsw = shl nuw <16 x i32> %i.dsv, splat (i32 16)
  %i.dsx = bitcast <16 x i32> %i.dsw to <16 x float>
  %i.dsy = fmul fast <16 x float> %i.dsx, %i.drz
  %i.dsz = fadd fast <16 x float> %i.dsy, %vec.phi1869 ; 2 uses
  %i.dta = zext <16 x i16> %strided.vec1887 to <16 x i32>
  %i.dtb = shl nuw <16 x i32> %i.dta, splat (i32 16)
  %i.dtc = bitcast <16 x i32> %i.dtb to <16 x float>
  %i.dtd = fmul fast <16 x float> %i.dtc, %i.dsc
  %i.dte = fadd fast <16 x float> %i.dtd, %vec.phi1872 ; 2 uses
  %i.dtf = zext <16 x i16> %strided.vec1888 to <16 x i32>
  %i.dtg = shl nuw <16 x i32> %i.dtf, splat (i32 16)
  %i.dth = bitcast <16 x i32> %i.dtg to <16 x float>
  %i.dti = fmul fast <16 x float> %i.dth, %i.dsc
  %i.dtj = fadd fast <16 x float> %i.dti, %vec.phi1868 ; 2 uses
  %i.dtk = zext <16 x i16> %strided.vec1889 to <16 x i32>
  %i.dtl = shl nuw <16 x i32> %i.dtk, splat (i32 16)
  %i.dtm = bitcast <16 x i32> %i.dtl to <16 x float>
  %i.dtn = fmul fast <16 x float> %i.dtm, %i.dsf
  %i.dto = fadd fast <16 x float> %i.dtn, %vec.phi1871 ; 2 uses
  %i.dtp = zext <16 x i16> %strided.vec1890 to <16 x i32>
  %i.dtq = shl nuw <16 x i32> %i.dtp, splat (i32 16)
  %i.dtr = bitcast <16 x i32> %i.dtq to <16 x float>
  %i.dts = fmul fast <16 x float> %i.dtr, %i.dsf
  %i.dtt = fadd fast <16 x float> %i.dts, %vec.phi1867 ; 2 uses
  %index.next1891 = add nuw i64 %index1866, 16    ; 2 uses
  %i.dtu = icmp eq i64 %index.next1891, %n.vec1864
  br i1 %i.dtu, label %middle.block1892, label %vector.body1865, !llvm.loop !455

middle.block1892:                                 ; preds = %vector.body1865
  %i.dtv = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dtt) ; 2 uses
  %i.dtw = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dtj) ; 2 uses
  %i.dtx = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dsz) ; 2 uses
  %i.dty = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dsp) ; 2 uses
  %i.dtz = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dto) ; 2 uses
  %i.dua = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dte) ; 2 uses
  %i.dub = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dsu) ; 2 uses
  %i.duc = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dsk) ; 2 uses
  %cmp.n1893 = icmp eq i64 %n.vec1864, %i.drj
  %i.dud = insertelement <2 x float> poison, float %i.duc, i64 0
  %i.due = insertelement <2 x float> %i.dud, float %i.dty, i64 1 ; 2 uses
  %i.duf = insertelement <2 x float> poison, float %i.dub, i64 0
  %i.dug = insertelement <2 x float> %i.duf, float %i.dtx, i64 1 ; 2 uses
  %i.duh = insertelement <2 x float> poison, float %i.dua, i64 0
  %i.dui = insertelement <2 x float> %i.duh, float %i.dtw, i64 1 ; 2 uses
  %i.duj = insertelement <2 x float> poison, float %i.dtz, i64 0
  %i.duk = insertelement <2 x float> %i.duj, float %i.dtv, i64 1 ; 2 uses
  br i1 %cmp.n1893, label %._crit_edge1336.loopexit.i, label %vec.epilog.iter.check1907

vec.epilog.iter.check1907:                        ; preds = %middle.block1892
  %min.epilog.iters.check1908 = icmp eq i64 %i.drk, 0
  br i1 %min.epilog.iters.check1908, label %.lr.ph1335.i.preheader, label %vec.epilog.ph1909, !prof !456

vec.epilog.ph1909:                                ; preds = %vector.main.loop.iter.check1861, %vec.epilog.iter.check1907
  %vec.epilog.resume.val1894 = phi i64 [ %n.vec1864, %vec.epilog.iter.check1907 ], [ 0, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1895 = phi float [ %i.dtv, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1896 = phi float [ %i.dtw, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1897 = phi float [ %i.dtx, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1898 = phi float [ %i.dty, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1899 = phi float [ %i.dtz, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1900 = phi float [ %i.dua, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1901 = phi float [ %i.dub, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1902 = phi float [ %i.duc, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %n.vec1910 = and i64 %i.drj, 2147483644         ; 5 uses
  %i.dul = trunc nuw nsw i64 %n.vec1910 to i32
  %i.dum = shl i32 %i.dul, 2
  %i.dun = add i32 %.01457.lcssa.i, %i.dum        ; 2 uses
  %i.duo = shl nuw nsw i64 %n.vec1910, 3
  %i.dup = getelementptr i8, ptr %.01460.lcssa.i, i64 %i.duo ; 2 uses
  %i.duq = shl nuw nsw i64 %n.vec1910, 4
  %i.dur = getelementptr i8, ptr %.131558.lcssa.i, i64 %i.duq ; 2 uses
  %i.dus = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1895, i64 0
  %i.dut = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1896, i64 0
  %i.duu = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1897, i64 0
  %i.duv = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1898, i64 0
  %i.duw = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1899, i64 0
  %i.dux = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1900, i64 0
  %i.duy = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1901, i64 0
  %i.duz = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1902, i64 0
  br label %vec.epilog.vector.body1911

vec.epilog.vector.body1911:                       ; preds = %vec.epilog.vector.body1911, %vec.epilog.ph1909
  %index1912 = phi i64 [ %vec.epilog.resume.val1894, %vec.epilog.ph1909 ], [ %index.next1937, %vec.epilog.vector.body1911 ] ; 3 uses
  %vec.phi1913 = phi <4 x float> [ %i.dus, %vec.epilog.ph1909 ], [ %i.dxb, %vec.epilog.vector.body1911 ]
  %vec.phi1914 = phi <4 x float> [ %i.dut, %vec.epilog.ph1909 ], [ %i.dwr, %vec.epilog.vector.body1911 ]
  %vec.phi1915 = phi <4 x float> [ %i.duu, %vec.epilog.ph1909 ], [ %i.dwh, %vec.epilog.vector.body1911 ]
  %vec.phi1916 = phi <4 x float> [ %i.duv, %vec.epilog.ph1909 ], [ %i.dvx, %vec.epilog.vector.body1911 ]
  %vec.phi1917 = phi <4 x float> [ %i.duw, %vec.epilog.ph1909 ], [ %i.dww, %vec.epilog.vector.body1911 ]
  %vec.phi1918 = phi <4 x float> [ %i.dux, %vec.epilog.ph1909 ], [ %i.dwm, %vec.epilog.vector.body1911 ]
  %vec.phi1919 = phi <4 x float> [ %i.duy, %vec.epilog.ph1909 ], [ %i.dwc, %vec.epilog.vector.body1911 ]
  %vec.phi1920 = phi <4 x float> [ %i.duz, %vec.epilog.ph1909 ], [ %i.dvs, %vec.epilog.vector.body1911 ]
  %i.dva = shl i64 %index1912, 3
  %next.gep1921 = getelementptr i8, ptr %.01460.lcssa.i, i64 %i.dva
  %i.dvb = shl i64 %index1912, 4
  %next.gep1922 = getelementptr i8, ptr %.131558.lcssa.i, i64 %i.dvb
  %wide.vec1923 = load <16 x i16>, ptr %next.gep1921, align 2, !tbaa !57 ; 4 uses
  %strided.vec1924 = shufflevector <16 x i16> %wide.vec1923, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1925 = shufflevector <16 x i16> %wide.vec1923, <16 x i16> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1926 = shufflevector <16 x i16> %wide.vec1923, <16 x i16> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec1927 = shufflevector <16 x i16> %wide.vec1923, <16 x i16> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.dvc = zext <4 x i16> %strided.vec1924 to <4 x i32>
  %i.dvd = shl nuw <4 x i32> %i.dvc, splat (i32 16)
  %i.dve = bitcast <4 x i32> %i.dvd to <4 x float> ; 2 uses
  %i.dvf = zext <4 x i16> %strided.vec1925 to <4 x i32>
  %i.dvg = shl nuw <4 x i32> %i.dvf, splat (i32 16)
  %i.dvh = bitcast <4 x i32> %i.dvg to <4 x float> ; 2 uses
  %i.dvi = zext <4 x i16> %strided.vec1926 to <4 x i32>
  %i.dvj = shl nuw <4 x i32> %i.dvi, splat (i32 16)
  %i.dvk = bitcast <4 x i32> %i.dvj to <4 x float> ; 2 uses
  %i.dvl = zext <4 x i16> %strided.vec1927 to <4 x i32>
  %i.dvm = shl nuw <4 x i32> %i.dvl, splat (i32 16)
  %i.dvn = bitcast <4 x i32> %i.dvm to <4 x float> ; 2 uses
  %wide.vec1928 = load <32 x i16>, ptr %next.gep1922, align 2, !tbaa !57 ; 8 uses
  %strided.vec1929 = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec1930 = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec1931 = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec1932 = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec1933 = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec1934 = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec1935 = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec1936 = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.dvo = zext <4 x i16> %strided.vec1929 to <4 x i32>
  %i.dvp = shl nuw <4 x i32> %i.dvo, splat (i32 16)
  %i.dvq = bitcast <4 x i32> %i.dvp to <4 x float>
  %i.dvr = fmul fast <4 x float> %i.dvq, %i.dve
  %i.dvs = fadd fast <4 x float> %i.dvr, %vec.phi1920 ; 2 uses
  %i.dvt = zext <4 x i16> %strided.vec1930 to <4 x i32>
  %i.dvu = shl nuw <4 x i32> %i.dvt, splat (i32 16)
  %i.dvv = bitcast <4 x i32> %i.dvu to <4 x float>
  %i.dvw = fmul fast <4 x float> %i.dvv, %i.dve
  %i.dvx = fadd fast <4 x float> %i.dvw, %vec.phi1916 ; 2 uses
  %i.dvy = zext <4 x i16> %strided.vec1931 to <4 x i32>
  %i.dvz = shl nuw <4 x i32> %i.dvy, splat (i32 16)
  %i.dwa = bitcast <4 x i32> %i.dvz to <4 x float>
  %i.dwb = fmul fast <4 x float> %i.dwa, %i.dvh
  %i.dwc = fadd fast <4 x float> %i.dwb, %vec.phi1919 ; 2 uses
  %i.dwd = zext <4 x i16> %strided.vec1932 to <4 x i32>
  %i.dwe = shl nuw <4 x i32> %i.dwd, splat (i32 16)
  %i.dwf = bitcast <4 x i32> %i.dwe to <4 x float>
  %i.dwg = fmul fast <4 x float> %i.dwf, %i.dvh
  %i.dwh = fadd fast <4 x float> %i.dwg, %vec.phi1915 ; 2 uses
  %i.dwi = zext <4 x i16> %strided.vec1933 to <4 x i32>
  %i.dwj = shl nuw <4 x i32> %i.dwi, splat (i32 16)
  %i.dwk = bitcast <4 x i32> %i.dwj to <4 x float>
  %i.dwl = fmul fast <4 x float> %i.dwk, %i.dvk
  %i.dwm = fadd fast <4 x float> %i.dwl, %vec.phi1918 ; 2 uses
  %i.dwn = zext <4 x i16> %strided.vec1934 to <4 x i32>
  %i.dwo = shl nuw <4 x i32> %i.dwn, splat (i32 16)
  %i.dwp = bitcast <4 x i32> %i.dwo to <4 x float>
  %i.dwq = fmul fast <4 x float> %i.dwp, %i.dvk
  %i.dwr = fadd fast <4 x float> %i.dwq, %vec.phi1914 ; 2 uses
  %i.dws = zext <4 x i16> %strided.vec1935 to <4 x i32>
  %i.dwt = shl nuw <4 x i32> %i.dws, splat (i32 16)
  %i.dwu = bitcast <4 x i32> %i.dwt to <4 x float>
  %i.dwv = fmul fast <4 x float> %i.dwu, %i.dvn
  %i.dww = fadd fast <4 x float> %i.dwv, %vec.phi1917 ; 2 uses
  %i.dwx = zext <4 x i16> %strided.vec1936 to <4 x i32>
  %i.dwy = shl nuw <4 x i32> %i.dwx, splat (i32 16)
  %i.dwz = bitcast <4 x i32> %i.dwy to <4 x float>
  %i.dxa = fmul fast <4 x float> %i.dwz, %i.dvn
  %i.dxb = fadd fast <4 x float> %i.dxa, %vec.phi1913 ; 2 uses
  %index.next1937 = add nuw i64 %index1912, 4     ; 2 uses
  %i.dxc = icmp eq i64 %index.next1937, %n.vec1910
  br i1 %i.dxc, label %vec.epilog.middle.block1938, label %vec.epilog.vector.body1911, !llvm.loop !457

vec.epilog.middle.block1938:                      ; preds = %vec.epilog.vector.body1911
  %i.dxd = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dxb)
  %i.dxe = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dwr)
  %i.dxf = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dwh)
  %i.dxg = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dvx)
  %i.dxh = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dww)
  %i.dxi = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dwm)
  %i.dxj = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dwc)
  %i.dxk = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dvs)
  %cmp.n1939 = icmp eq i64 %n.vec1910, %i.drj
  %i.dxl = insertelement <2 x float> poison, float %i.dxk, i64 0
  %i.dxm = insertelement <2 x float> %i.dxl, float %i.dxg, i64 1 ; 2 uses
  %i.dxn = insertelement <2 x float> poison, float %i.dxj, i64 0
  %i.dxo = insertelement <2 x float> %i.dxn, float %i.dxf, i64 1 ; 2 uses
  %i.dxp = insertelement <2 x float> poison, float %i.dxi, i64 0
  %i.dxq = insertelement <2 x float> %i.dxp, float %i.dxe, i64 1 ; 2 uses
  %i.dxr = insertelement <2 x float> poison, float %i.dxh, i64 0
  %i.dxs = insertelement <2 x float> %i.dxr, float %i.dxd, i64 1 ; 2 uses
  br i1 %cmp.n1939, label %._crit_edge1336.loopexit.i, label %.lr.ph1335.i.preheader

.lr.ph1335.i.preheader:                           ; preds = %iter.check1905, %vec.epilog.iter.check1907, %vec.epilog.middle.block1938
  %.114581326.i.ph = phi i32 [ %.01457.lcssa.i, %iter.check1905 ], [ %i.drn, %vec.epilog.iter.check1907 ], [ %i.dun, %vec.epilog.middle.block1938 ]
  %.114611325.i.ph = phi ptr [ %.01460.lcssa.i, %iter.check1905 ], [ %i.drp, %vec.epilog.iter.check1907 ], [ %i.dup, %vec.epilog.middle.block1938 ]
  %.1415591324.i.ph = phi ptr [ %.131558.lcssa.i, %iter.check1905 ], [ %i.drr, %vec.epilog.iter.check1907 ], [ %i.dur, %vec.epilog.middle.block1938 ]
  %.ph2088 = phi <2 x float> [ zeroinitializer, %iter.check1905 ], [ %i.due, %vec.epilog.iter.check1907 ], [ %i.dxm, %vec.epilog.middle.block1938 ]
  %.ph2089 = phi <2 x float> [ zeroinitializer, %iter.check1905 ], [ %i.dug, %vec.epilog.iter.check1907 ], [ %i.dxo, %vec.epilog.middle.block1938 ]
  %.ph2090 = phi <2 x float> [ zeroinitializer, %iter.check1905 ], [ %i.dui, %vec.epilog.iter.check1907 ], [ %i.dxq, %vec.epilog.middle.block1938 ]
  %.ph2091 = phi <2 x float> [ zeroinitializer, %iter.check1905 ], [ %i.duk, %vec.epilog.iter.check1907 ], [ %i.dxs, %vec.epilog.middle.block1938 ]
  br label %.lr.ph1335.i

.lr.ph1318.i:                                     ; preds = %.lr.ph1318.i.preheader, %.lr.ph1318.i
  %.014571316.i = phi i32 [ %i.dyp, %.lr.ph1318.i ], [ %.014571316.i.ph, %.lr.ph1318.i.preheader ]
  %.014601315.i = phi ptr [ %i.dyn, %.lr.ph1318.i ], [ %.014601315.i.ph, %.lr.ph1318.i.preheader ] ; 2 uses
  %.1315581312.i = phi ptr [ %i.dyo, %.lr.ph1318.i ], [ %.1315581312.i.ph, %.lr.ph1318.i.preheader ] ; 3 uses
  %i.dxt = phi <2 x float> [ %i.dym, %.lr.ph1318.i ], [ %.ph2092, %.lr.ph1318.i.preheader ]
  %i.dxu = load <2 x i16>, ptr %.1315581312.i, align 2, !tbaa !57
  %i.dxv = zext <2 x i16> %i.dxu to <2 x i32>
  %i.dxw = shl nuw <2 x i32> %i.dxv, splat (i32 16)
  %i.dxx = bitcast <2 x i32> %i.dxw to <2 x float>
  %i.dxy = getelementptr inbounds nuw i8, ptr %.1315581312.i, i64 4
  %i.dxz = load <2 x i16>, ptr %.014601315.i, align 2, !tbaa !57
  %i.dya = zext <2 x i16> %i.dxz to <2 x i32>
  %i.dyb = shl nuw <2 x i32> %i.dya, splat (i32 16)
  %i.dyc = bitcast <2 x i32> %i.dyb to <2 x float> ; 2 uses
  %i.dyd = load <2 x i16>, ptr %i.dxy, align 2, !tbaa !57
  %i.dye = zext <2 x i16> %i.dyd to <2 x i32>
  %i.dyf = shl nuw <2 x i32> %i.dye, splat (i32 16)
  %i.dyg = bitcast <2 x i32> %i.dyf to <2 x float>
  %i.dyh = fmul fast <2 x float> %i.dxx, %i.dyc   ; 2 uses
  %i.dyi = fmul fast <2 x float> %i.dyg, %i.dyc   ; 2 uses
  %i.dyj = shufflevector <2 x float> %i.dyh, <2 x float> %i.dyi, <2 x i32> <i32 0, i32 2>
  %i.dyk = fadd fast <2 x float> %i.dxt, %i.dyj
  %i.dyl = shufflevector <2 x float> %i.dyi, <2 x float> %i.dyh, <2 x i32> <i32 3, i32 1>
  %i.dym = fadd fast <2 x float> %i.dyk, %i.dyl   ; 2 uses
  %i.dyn = getelementptr inbounds nuw i8, ptr %.014601315.i, i64 4 ; 2 uses
  %i.dyo = getelementptr inbounds nuw i8, ptr %.1315581312.i, i64 8
  %i.dyp = add nuw nsw i32 %.014571316.i, 2       ; 2 uses
  %i.dyq = or disjoint i32 %i.dyp, 1
  %i.dyr = icmp slt i32 %i.dyq, %8
  br i1 %i.dyr, label %.lr.ph1318.i, label %.preheader373.loopexit.i, !llvm.loop !458

.lr.ph1335.i:                                     ; preds = %.lr.ph1335.i.preheader, %.lr.ph1335.i
  %.114581326.i = phi i32 [ %i.eah, %.lr.ph1335.i ], [ %.114581326.i.ph, %.lr.ph1335.i.preheader ] ; 2 uses
  %.114611325.i = phi ptr [ %i.eaf, %.lr.ph1335.i ], [ %.114611325.i.ph, %.lr.ph1335.i.preheader ] ; 2 uses
  %.1415591324.i = phi ptr [ %i.eag, %.lr.ph1335.i ], [ %.1415591324.i.ph, %.lr.ph1335.i.preheader ] ; 5 uses
  %i.dys = phi <2 x float> [ %i.dzj, %.lr.ph1335.i ], [ %.ph2088, %.lr.ph1335.i.preheader ]
  %i.dyt = phi <2 x float> [ %i.dzq, %.lr.ph1335.i ], [ %.ph2089, %.lr.ph1335.i.preheader ]
  %i.dyu = phi <2 x float> [ %i.dzx, %.lr.ph1335.i ], [ %.ph2090, %.lr.ph1335.i.preheader ]
  %i.dyv = phi <2 x float> [ %i.eae, %.lr.ph1335.i ], [ %.ph2091, %.lr.ph1335.i.preheader ]
  %i.dyw = load <4 x i16>, ptr %.114611325.i, align 2, !tbaa !57
  %i.dyx = zext <4 x i16> %i.dyw to <4 x i32>
  %i.dyy = shl nuw <4 x i32> %i.dyx, splat (i32 16)
  %i.dyz = bitcast <4 x i32> %i.dyy to <4 x float> ; 4 uses
  %i.dza = getelementptr inbounds nuw i8, ptr %.1415591324.i, i64 4
  %i.dzb = getelementptr inbounds nuw i8, ptr %.1415591324.i, i64 8
  %i.dzc = getelementptr inbounds nuw i8, ptr %.1415591324.i, i64 12
  %i.dzd = load <2 x i16>, ptr %.1415591324.i, align 2, !tbaa !57
  %i.dze = zext <2 x i16> %i.dzd to <2 x i32>
  %i.dzf = shl nuw <2 x i32> %i.dze, splat (i32 16)
  %i.dzg = bitcast <2 x i32> %i.dzf to <2 x float>
  %i.dzh = shufflevector <4 x float> %i.dyz, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dzi = fmul fast <2 x float> %i.dzh, %i.dzg
  %i.dzj = fadd fast <2 x float> %i.dzi, %i.dys   ; 2 uses
  %i.dzk = load <2 x i16>, ptr %i.dza, align 2, !tbaa !57
  %i.dzl = zext <2 x i16> %i.dzk to <2 x i32>
  %i.dzm = shl nuw <2 x i32> %i.dzl, splat (i32 16)
  %i.dzn = bitcast <2 x i32> %i.dzm to <2 x float>
  %i.dzo = shufflevector <4 x float> %i.dyz, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dzp = fmul fast <2 x float> %i.dzo, %i.dzn
  %i.dzq = fadd fast <2 x float> %i.dzp, %i.dyt   ; 2 uses
  %i.dzr = load <2 x i16>, ptr %i.dzb, align 2, !tbaa !57
  %i.dzs = zext <2 x i16> %i.dzr to <2 x i32>
  %i.dzt = shl nuw <2 x i32> %i.dzs, splat (i32 16)
  %i.dzu = bitcast <2 x i32> %i.dzt to <2 x float>
  %i.dzv = shufflevector <4 x float> %i.dyz, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dzw = fmul fast <2 x float> %i.dzv, %i.dzu
  %i.dzx = fadd fast <2 x float> %i.dzw, %i.dyu   ; 2 uses
  %i.dzy = load <2 x i16>, ptr %i.dzc, align 2, !tbaa !57
  %i.dzz = zext <2 x i16> %i.dzy to <2 x i32>
  %i.eaa = shl nuw <2 x i32> %i.dzz, splat (i32 16)
  %i.eab = bitcast <2 x i32> %i.eaa to <2 x float>
  %i.eac = shufflevector <4 x float> %i.dyz, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ead = fmul fast <2 x float> %i.eac, %i.eab
  %i.eae = fadd fast <2 x float> %i.ead, %i.dyv   ; 2 uses
  %i.eaf = getelementptr inbounds nuw i8, ptr %.114611325.i, i64 8 ; 2 uses
  %i.eag = getelementptr inbounds nuw i8, ptr %.1415591324.i, i64 16 ; 2 uses
  %i.eah = add nuw nsw i32 %.114581326.i, 4       ; 2 uses
  %i.eai = add nuw nsw i32 %.114581326.i, 7
  %i.eaj = icmp slt i32 %i.eai, %8
  br i1 %i.eaj, label %.lr.ph1335.i, label %._crit_edge1336.loopexit.i, !llvm.loop !459

._crit_edge1336.loopexit.i:                       ; preds = %.lr.ph1335.i, %vec.epilog.middle.block1938, %middle.block1892
  %.lcssa1008 = phi ptr [ %i.dup, %vec.epilog.middle.block1938 ], [ %i.drp, %middle.block1892 ], [ %i.eaf, %.lr.ph1335.i ]
  %.lcssa1007 = phi ptr [ %i.dur, %vec.epilog.middle.block1938 ], [ %i.drr, %middle.block1892 ], [ %i.eag, %.lr.ph1335.i ]
  %.lcssa1006 = phi i32 [ %i.dun, %vec.epilog.middle.block1938 ], [ %i.drn, %middle.block1892 ], [ %i.eah, %.lr.ph1335.i ]
  %i.eak = phi <2 x float> [ %i.dxm, %vec.epilog.middle.block1938 ], [ %i.due, %middle.block1892 ], [ %i.dzj, %.lr.ph1335.i ]
  %i.eal = phi <2 x float> [ %i.dxo, %vec.epilog.middle.block1938 ], [ %i.dug, %middle.block1892 ], [ %i.dzq, %.lr.ph1335.i ]
  %i.eam = phi <2 x float> [ %i.dxq, %vec.epilog.middle.block1938 ], [ %i.dui, %middle.block1892 ], [ %i.dzx, %.lr.ph1335.i ]
  %i.ean = phi <2 x float> [ %i.dxs, %vec.epilog.middle.block1938 ], [ %i.duk, %middle.block1892 ], [ %i.eae, %.lr.ph1335.i ]
  %i.eao = fadd fast <2 x float> %i.eak, %i.drc
  %i.eap = fadd fast <2 x float> %i.eao, %i.eal
  %i.eaq = fadd fast <2 x float> %i.eap, %i.eam
  %i.ear = fadd fast <2 x float> %i.eaq, %i.ean
  br label %._crit_edge1336.i

._crit_edge1336.i:                                ; preds = %._crit_edge1336.loopexit.i, %.preheader373.i
  %.141559.lcssa.i = phi ptr [ %.131558.lcssa.i, %.preheader373.i ], [ %.lcssa1007, %._crit_edge1336.loopexit.i ] ; 9 uses
  %.11461.lcssa.i = phi ptr [ %.01460.lcssa.i, %.preheader373.i ], [ %.lcssa1008, %._crit_edge1336.loopexit.i ] ; 5 uses
  %.11458.lcssa.i = phi i32 [ %.01457.lcssa.i, %.preheader373.i ], [ %.lcssa1006, %._crit_edge1336.loopexit.i ] ; 5 uses
  %i.eas = phi <2 x float> [ %i.drc, %.preheader373.i ], [ %i.ear, %._crit_edge1336.loopexit.i ] ; 4 uses
  %i.eat = icmp slt i32 %.11458.lcssa.i, %8
  %i.eau = extractelement <2 x float> %i.eas, i64 0 ; 2 uses
  %i.eav = extractelement <2 x float> %i.eas, i64 1 ; 2 uses
  br i1 %i.eat, label %iter.check1835, label %._crit_edge1355.i

iter.check1835:                                   ; preds = %._crit_edge1336.i
  %i.eaw = xor i32 %.11458.lcssa.i, -1
  %i.eax = add i32 %8, %i.eaw                     ; 3 uses
  %i.eay = zext i32 %i.eax to i64
  %i.eaz = add nuw nsw i64 %i.eay, 1              ; 5 uses
  %min.iters.check1785 = icmp ult i32 %i.eax, 7
  br i1 %min.iters.check1785, label %.lr.ph1354.i.preheader, label %vector.main.loop.iter.check1786

vector.main.loop.iter.check1786:                  ; preds = %iter.check1835
  %min.iters.check1787 = icmp ult i32 %i.eax, 63
  br i1 %min.iters.check1787, label %vec.epilog.ph1839, label %vector.ph1788

vector.ph1788:                                    ; preds = %vector.main.loop.iter.check1786
  %i.eba = and i64 %i.eaz, 56
  %n.vec1789 = and i64 %i.eaz, 8589934528         ; 6 uses
  %i.ebb = trunc i64 %n.vec1789 to i32
  %i.ebc = add i32 %.11458.lcssa.i, %i.ebb
  %i.ebd = shl nuw nsw i64 %n.vec1789, 1
  %i.ebe = getelementptr i8, ptr %.11461.lcssa.i, i64 %i.ebd
  %i.ebf = shl nuw nsw i64 %n.vec1789, 2
  %i.ebg = getelementptr i8, ptr %.141559.lcssa.i, i64 %i.ebf ; 2 uses
  %i.ebh = shufflevector <2 x float> %i.eas, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ebi = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.ebh, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ebj = shufflevector <16 x float> %i.ebh, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1790

vector.body1790:                                  ; preds = %vector.body1790, %vector.ph1788
  %index1791 = phi i64 [ 0, %vector.ph1788 ], [ %index.next1821, %vector.body1790 ] ; 3 uses
  %vec.phi1792 = phi <16 x float> [ %i.ebi, %vector.ph1788 ], [ %i.eds, %vector.body1790 ]
  %vec.phi1793 = phi <16 x float> [ zeroinitializer, %vector.ph1788 ], [ %i.edt, %vector.body1790 ]
  %vec.phi1794 = phi <16 x float> [ zeroinitializer, %vector.ph1788 ], [ %i.edu, %vector.body1790 ]
  %vec.phi1795 = phi <16 x float> [ zeroinitializer, %vector.ph1788 ], [ %i.edv, %vector.body1790 ]
  %vec.phi1796 = phi <16 x float> [ %i.ebj, %vector.ph1788 ], [ %i.edg, %vector.body1790 ]
  %vec.phi1797 = phi <16 x float> [ zeroinitializer, %vector.ph1788 ], [ %i.edh, %vector.body1790 ]
  %vec.phi1798 = phi <16 x float> [ zeroinitializer, %vector.ph1788 ], [ %i.edi, %vector.body1790 ]
  %vec.phi1799 = phi <16 x float> [ zeroinitializer, %vector.ph1788 ], [ %i.edj, %vector.body1790 ]
  %i.ebk = shl i64 %index1791, 1
  %next.gep1800 = getelementptr i8, ptr %.11461.lcssa.i, i64 %i.ebk ; 4 uses
  %i.ebl = shl i64 %index1791, 2                  ; 4 uses
  %next.gep1801 = getelementptr i8, ptr %.141559.lcssa.i, i64 %i.ebl
  %i.ebm = getelementptr i8, ptr %.141559.lcssa.i, i64 %i.ebl
  %next.gep1802 = getelementptr i8, ptr %i.ebm, i64 64
  %i.ebn = getelementptr i8, ptr %.141559.lcssa.i, i64 %i.ebl
  %next.gep1803 = getelementptr i8, ptr %i.ebn, i64 128
  %i.ebo = getelementptr i8, ptr %.141559.lcssa.i, i64 %i.ebl
  %next.gep1804 = getelementptr i8, ptr %i.ebo, i64 192
  %i.ebp = getelementptr i8, ptr %next.gep1800, i64 32
  %i.ebq = getelementptr i8, ptr %next.gep1800, i64 64
  %i.ebr = getelementptr i8, ptr %next.gep1800, i64 96
  %wide.load1805 = load <16 x i16>, ptr %next.gep1800, align 2, !tbaa !57
  %wide.load1806 = load <16 x i16>, ptr %i.ebp, align 2, !tbaa !57
  %wide.load1807 = load <16 x i16>, ptr %i.ebq, align 2, !tbaa !57
  %wide.load1808 = load <16 x i16>, ptr %i.ebr, align 2, !tbaa !57
  %i.ebs = zext <16 x i16> %wide.load1805 to <16 x i32>
  %i.ebt = zext <16 x i16> %wide.load1806 to <16 x i32>
  %i.ebu = zext <16 x i16> %wide.load1807 to <16 x i32>
  %i.ebv = zext <16 x i16> %wide.load1808 to <16 x i32>
  %i.ebw = shl nuw <16 x i32> %i.ebs, splat (i32 16)
  %i.ebx = shl nuw <16 x i32> %i.ebt, splat (i32 16)
  %i.eby = shl nuw <16 x i32> %i.ebu, splat (i32 16)
  %i.ebz = shl nuw <16 x i32> %i.ebv, splat (i32 16)
  %i.eca = bitcast <16 x i32> %i.ebw to <16 x float> ; 2 uses
  %i.ecb = bitcast <16 x i32> %i.ebx to <16 x float> ; 2 uses
  %i.ecc = bitcast <16 x i32> %i.eby to <16 x float> ; 2 uses
  %i.ecd = bitcast <16 x i32> %i.ebz to <16 x float> ; 2 uses
  %wide.vec1809 = load <32 x i16>, ptr %next.gep1801, align 2, !tbaa !57
  %i.ece = freeze <32 x i16> %wide.vec1809        ; 2 uses
  %i.ecf = bitcast <32 x i16> %i.ece to <16 x i32>
  %i.ecg = bitcast <32 x i16> %i.ece to <16 x i32>
  %i.ech = and <16 x i32> %i.ecg, splat (i32 -65536)
  %wide.vec1812 = load <32 x i16>, ptr %next.gep1802, align 2, !tbaa !57
  %i.eci = freeze <32 x i16> %wide.vec1812        ; 2 uses
  %i.ecj = bitcast <32 x i16> %i.eci to <16 x i32>
  %i.eck = bitcast <32 x i16> %i.eci to <16 x i32>
  %i.ecl = and <16 x i32> %i.eck, splat (i32 -65536)
  %wide.vec1815 = load <32 x i16>, ptr %next.gep1803, align 2, !tbaa !57
  %i.ecm = freeze <32 x i16> %wide.vec1815        ; 2 uses
  %i.ecn = bitcast <32 x i16> %i.ecm to <16 x i32>
  %i.eco = bitcast <32 x i16> %i.ecm to <16 x i32>
  %i.ecp = and <16 x i32> %i.eco, splat (i32 -65536)
  %wide.vec1818 = load <32 x i16>, ptr %next.gep1804, align 2, !tbaa !57
  %i.ecq = freeze <32 x i16> %wide.vec1818        ; 2 uses
  %i.ecr = bitcast <32 x i16> %i.ecq to <16 x i32>
  %i.ecs = bitcast <32 x i16> %i.ecq to <16 x i32>
  %i.ect = and <16 x i32> %i.ecs, splat (i32 -65536)
  %i.ecu = shl <16 x i32> %i.ecf, splat (i32 16)
  %i.ecv = shl <16 x i32> %i.ecj, splat (i32 16)
  %i.ecw = shl <16 x i32> %i.ecn, splat (i32 16)
  %i.ecx = shl <16 x i32> %i.ecr, splat (i32 16)
  %i.ecy = bitcast <16 x i32> %i.ecu to <16 x float>
  %i.ecz = bitcast <16 x i32> %i.ecv to <16 x float>
  %i.eda = bitcast <16 x i32> %i.ecw to <16 x float>
  %i.edb = bitcast <16 x i32> %i.ecx to <16 x float>
  %i.edc = fmul fast <16 x float> %i.ecy, %i.eca
  %i.edd = fmul fast <16 x float> %i.ecz, %i.ecb
  %i.ede = fmul fast <16 x float> %i.eda, %i.ecc
  %i.edf = fmul fast <16 x float> %i.edb, %i.ecd
  %i.edg = fadd fast <16 x float> %i.edc, %vec.phi1796 ; 2 uses
  %i.edh = fadd fast <16 x float> %i.edd, %vec.phi1797 ; 2 uses
  %i.edi = fadd fast <16 x float> %i.ede, %vec.phi1798 ; 2 uses
  %i.edj = fadd fast <16 x float> %i.edf, %vec.phi1799 ; 2 uses
  %i.edk = bitcast <16 x i32> %i.ech to <16 x float>
  %i.edl = bitcast <16 x i32> %i.ecl to <16 x float>
  %i.edm = bitcast <16 x i32> %i.ecp to <16 x float>
  %i.edn = bitcast <16 x i32> %i.ect to <16 x float>
  %i.edo = fmul fast <16 x float> %i.edk, %i.eca
  %i.edp = fmul fast <16 x float> %i.edl, %i.ecb
  %i.edq = fmul fast <16 x float> %i.edm, %i.ecc
  %i.edr = fmul fast <16 x float> %i.edn, %i.ecd
  %i.eds = fadd fast <16 x float> %i.edo, %vec.phi1792 ; 2 uses
  %i.edt = fadd fast <16 x float> %i.edp, %vec.phi1793 ; 2 uses
  %i.edu = fadd fast <16 x float> %i.edq, %vec.phi1794 ; 2 uses
  %i.edv = fadd fast <16 x float> %i.edr, %vec.phi1795 ; 2 uses
  %index.next1821 = add nuw i64 %index1791, 64    ; 2 uses
  %i.edw = icmp eq i64 %index.next1821, %n.vec1789
  br i1 %i.edw, label %middle.block1822, label %vector.body1790, !llvm.loop !460

end_hunk_1
begin_hunk_2_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a

vec.epilog.vector.body1841:                       ; preds = %vec.epilog.vector.body1841, %vec.epilog.ph1839
  %index1842 = phi i64 [ %vec.epilog.resume.val1830, %vec.epilog.ph1839 ], [ %index.next1851, %vec.epilog.vector.body1841 ] ; 3 uses
  %vec.phi1843 = phi <8 x float> [ %i.eej, %vec.epilog.ph1839 ], [ %i.efa, %vec.epilog.vector.body1841 ]
  %vec.phi1844 = phi <8 x float> [ %i.eek, %vec.epilog.ph1839 ], [ %i.eex, %vec.epilog.vector.body1841 ]
  %i.eel = shl i64 %index1842, 1
  %next.gep1845 = getelementptr i8, ptr %.11461.lcssa.i, i64 %i.eel
  %i.eem = shl i64 %index1842, 2
  %next.gep1846 = getelementptr i8, ptr %.141559.lcssa.i, i64 %i.eem
  %wide.load1847 = load <8 x i16>, ptr %next.gep1845, align 2, !tbaa !57
  %i.een = zext <8 x i16> %wide.load1847 to <8 x i32>
  %i.eeo = shl nuw <8 x i32> %i.een, splat (i32 16)
  %i.eep = bitcast <8 x i32> %i.eeo to <8 x float> ; 2 uses
  %wide.vec1848 = load <16 x i16>, ptr %next.gep1846, align 2, !tbaa !57
  %i.eeq = freeze <16 x i16> %wide.vec1848        ; 2 uses
  %i.eer = bitcast <16 x i16> %i.eeq to <8 x i32>
  %i.ees = bitcast <16 x i16> %i.eeq to <8 x i32>
  %i.eet = and <8 x i32> %i.ees, splat (i32 -65536)
  %i.eeu = shl <8 x i32> %i.eer, splat (i32 16)
  %i.eev = bitcast <8 x i32> %i.eeu to <8 x float>
  %i.eew = fmul fast <8 x float> %i.eev, %i.eep
  %i.eex = fadd fast <8 x float> %i.eew, %vec.phi1844 ; 2 uses
  %i.eey = bitcast <8 x i32> %i.eet to <8 x float>
  %i.eez = fmul fast <8 x float> %i.eey, %i.eep
  %i.efa = fadd fast <8 x float> %i.eez, %vec.phi1843 ; 2 uses
  %index.next1851 = add nuw i64 %index1842, 8     ; 2 uses
  %i.efb = icmp eq i64 %index.next1851, %n.vec1840
  br i1 %i.efb, label %vec.epilog.middle.block1852, label %vec.epilog.vector.body1841, !llvm.loop !461

vec.epilog.middle.block1852:                      ; preds = %vec.epilog.vector.body1841
  %i.efc = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.efa) ; 2 uses
  %i.efd = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.eex) ; 2 uses
  %cmp.n1853 = icmp eq i64 %i.eaz, %n.vec1840
  br i1 %cmp.n1853, label %._crit_edge1355.i, label %.lr.ph1354.i.preheader

.lr.ph1354.i.preheader:                           ; preds = %iter.check1835, %vec.epilog.iter.check1837, %vec.epilog.middle.block1852
  %.214591352.i.ph = phi i32 [ %.11458.lcssa.i, %iter.check1835 ], [ %i.ebc, %vec.epilog.iter.check1837 ], [ %i.eed, %vec.epilog.middle.block1852 ]
  %.214621351.i.ph = phi ptr [ %.11461.lcssa.i, %iter.check1835 ], [ %i.ebe, %vec.epilog.iter.check1837 ], [ %i.eef, %vec.epilog.middle.block1852 ]
  %.214651350.i.ph = phi float [ %i.eav, %iter.check1835 ], [ %i.edx, %vec.epilog.iter.check1837 ], [ %i.efc, %vec.epilog.middle.block1852 ]
  %.214681349.i.ph = phi float [ %i.eau, %iter.check1835 ], [ %i.edy, %vec.epilog.iter.check1837 ], [ %i.efd, %vec.epilog.middle.block1852 ]
  %.1515601348.i.ph = phi ptr [ %.141559.lcssa.i, %iter.check1835 ], [ %i.ebg, %vec.epilog.iter.check1837 ], [ %i.eeh, %vec.epilog.middle.block1852 ]
  br label %.lr.ph1354.i

.lr.ph1354.i:                                     ; preds = %.lr.ph1354.i.preheader, %.lr.ph1354.i
  %.214591352.i = phi i32 [ %i.efx, %.lr.ph1354.i ], [ %.214591352.i.ph, %.lr.ph1354.i.preheader ]
  %.214621351.i = phi ptr [ %i.efv, %.lr.ph1354.i ], [ %.214621351.i.ph, %.lr.ph1354.i.preheader ] ; 2 uses
  %.214651350.i = phi float [ %i.efu, %.lr.ph1354.i ], [ %.214651350.i.ph, %.lr.ph1354.i.preheader ]
  %.214681349.i = phi float [ %i.efn, %.lr.ph1354.i ], [ %.214681349.i.ph, %.lr.ph1354.i.preheader ]
  %.1515601348.i = phi ptr [ %i.efw, %.lr.ph1354.i ], [ %.1515601348.i.ph, %.lr.ph1354.i.preheader ] ; 3 uses
  %i.efe = load i16, ptr %.214621351.i, align 2, !tbaa !57
  %i.eff = zext i16 %i.efe to i32
  %i.efg = shl nuw i32 %i.eff, 16
  %i.efh = bitcast i32 %i.efg to float            ; 2 uses
  %i.efi = load i16, ptr %.1515601348.i, align 2, !tbaa !57
  %i.efj = zext i16 %i.efi to i32
  %i.efk = shl nuw i32 %i.efj, 16
  %i.efl = bitcast i32 %i.efk to float
  %i.efm = fmul fast float %i.efl, %i.efh
  %i.efn = fadd fast float %i.efm, %.214681349.i  ; 2 uses
  %i.efo = getelementptr inbounds nuw i8, ptr %.1515601348.i, i64 2
  %i.efp = load i16, ptr %i.efo, align 2, !tbaa !57
  %i.efq = zext i16 %i.efp to i32
  %i.efr = shl nuw i32 %i.efq, 16
  %i.efs = bitcast i32 %i.efr to float
  %i.eft = fmul fast float %i.efs, %i.efh
  %i.efu = fadd fast float %i.eft, %.214651350.i  ; 2 uses
  %i.efv = getelementptr inbounds nuw i8, ptr %.214621351.i, i64 2
  %i.efw = getelementptr inbounds nuw i8, ptr %.1515601348.i, i64 4 ; 2 uses
  %i.efx = add nuw nsw i32 %.214591352.i, 1       ; 2 uses
  %exitcond1828.not.i = icmp eq i32 %i.efx, %8
  br i1 %exitcond1828.not.i, label %._crit_edge1355.i, label %.lr.ph1354.i, !llvm.loop !462

._crit_edge1355.i:                                ; preds = %.lr.ph1354.i, %middle.block1822, %vec.epilog.middle.block1852, %._crit_edge1336.i
  %.151560.lcssa.i = phi ptr [ %.141559.lcssa.i, %._crit_edge1336.i ], [ %i.eeh, %vec.epilog.middle.block1852 ], [ %i.ebg, %middle.block1822 ], [ %i.efw, %.lr.ph1354.i ] ; 2 uses
  %.21468.lcssa.i = phi float [ %i.eau, %._crit_edge1336.i ], [ %i.efd, %vec.epilog.middle.block1852 ], [ %i.edy, %middle.block1822 ], [ %i.efn, %.lr.ph1354.i ]
  %.21465.lcssa.i = phi float [ %i.eav, %._crit_edge1336.i ], [ %i.efc, %vec.epilog.middle.block1852 ], [ %i.edx, %middle.block1822 ], [ %i.efu, %.lr.ph1354.i ]
  store float %.21468.lcssa.i, ptr %.281361.i, align 4, !tbaa !421
  %i.efy = getelementptr inbounds nuw i8, ptr %.281361.i, i64 4
  store float %.21465.lcssa.i, ptr %i.efy, align 4, !tbaa !421
  %i.efz = getelementptr inbounds nuw i8, ptr %.281361.i, i64 8 ; 2 uses
  %i.ega = add nuw nsw i32 %.315431360.i, 2       ; 3 uses
  %i.egb = or disjoint i32 %i.ega, 1
  %i.egc = icmp slt i32 %i.egb, %6
  br i1 %i.egc, label %.lr.ph1362.i, label %.preheader377.i, !llvm.loop !463

.lr.ph1404.i:                                     ; preds = %.lr.ph1404.i.preheader, %._crit_edge1398.i
  %.291403.i = phi ptr [ %i.eud, %._crit_edge1398.i ], [ %.28.lcssa.i, %.lr.ph1404.i.preheader ] ; 3 uses
  %.415441402.i = phi i32 [ %i.eue, %._crit_edge1398.i ], [ %.31543.lcssa.i, %.lr.ph1404.i.preheader ]
  %.1615611401.i = phi ptr [ %.191564.lcssa.i, %._crit_edge1398.i ], [ %.121557.lcssa.i, %.lr.ph1404.i.preheader ] ; 10 uses
  br i1 %.not1791.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1404.i
  %i.egd = load float, ptr %.291403.i, align 4, !tbaa !421
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph1404.i
  %.01409.i = phi nsz float [ %i.egd, %bb.ax ], [ 0.000000e+00, %.lr.ph1404.i ] ; 4 uses
  br i1 %i.bjd, label %iter.check1761, label %.preheader.i

iter.check1761:                                   ; preds = %bb.ay
  br i1 %min.iters.check1708, label %.lr.ph1371.i.preheader, label %vector.main.loop.iter.check1709

vector.main.loop.iter.check1709:                  ; preds = %iter.check1761
  br i1 %min.iters.check1710, label %vec.epilog.ph1765, label %vector.ph1711

vector.ph1711:                                    ; preds = %vector.main.loop.iter.check1709
  %i.ege = getelementptr i8, ptr %.1615611401.i, i64 %i.bkn
  %i.egf = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.01409.i, i64 0
  br label %vector.body1713

vector.body1713:                                  ; preds = %vector.body1713, %vector.ph1711
  %index1714 = phi i64 [ 0, %vector.ph1711 ], [ %index.next1751, %vector.body1713 ] ; 2 uses
  %vec.phi1715 = phi <16 x float> [ %i.egf, %vector.ph1711 ], [ %i.eja, %vector.body1713 ]
  %vec.phi1716 = phi <16 x float> [ zeroinitializer, %vector.ph1711 ], [ %i.ejb, %vector.body1713 ]
  %vec.phi1717 = phi <16 x float> [ zeroinitializer, %vector.ph1711 ], [ %i.ejc, %vector.body1713 ]
  %vec.phi1718 = phi <16 x float> [ zeroinitializer, %vector.ph1711 ], [ %i.ejd, %vector.body1713 ]
  %i.egg = shl i64 %index1714, 2                  ; 5 uses
  %i.egh = or disjoint i64 %i.egg, 64             ; 2 uses
  %i.egi = or disjoint i64 %i.egg, 128            ; 2 uses
  %i.egj = or disjoint i64 %i.egg, 192            ; 2 uses
  %next.gep1719 = getelementptr i8, ptr %.41409.i, i64 %i.egg
  %next.gep1720 = getelementptr i8, ptr %.41409.i, i64 %i.egh
  %next.gep1721 = getelementptr i8, ptr %.41409.i, i64 %i.egi
  %next.gep1722 = getelementptr i8, ptr %.41409.i, i64 %i.egj
  %next.gep1723 = getelementptr i8, ptr %.1615611401.i, i64 %i.egg
  %next.gep1724 = getelementptr i8, ptr %.1615611401.i, i64 %i.egh
  %next.gep1725 = getelementptr i8, ptr %.1615611401.i, i64 %i.egi
  %next.gep1726 = getelementptr i8, ptr %.1615611401.i, i64 %i.egj
  %wide.vec1727 = load <32 x i16>, ptr %next.gep1719, align 2, !tbaa !57
  %i.egk = freeze <32 x i16> %wide.vec1727        ; 2 uses
  %i.egl = bitcast <32 x i16> %i.egk to <16 x i32>
  %i.egm = bitcast <32 x i16> %i.egk to <16 x i32>
  %i.egn = and <16 x i32> %i.egm, splat (i32 -65536)
  %wide.vec1730 = load <32 x i16>, ptr %next.gep1720, align 2, !tbaa !57
  %i.ego = freeze <32 x i16> %wide.vec1730        ; 2 uses
  %i.egp = bitcast <32 x i16> %i.ego to <16 x i32>
  %i.egq = bitcast <32 x i16> %i.ego to <16 x i32>
  %i.egr = and <16 x i32> %i.egq, splat (i32 -65536)
  %wide.vec1733 = load <32 x i16>, ptr %next.gep1721, align 2, !tbaa !57
  %i.egs = freeze <32 x i16> %wide.vec1733        ; 2 uses
  %i.egt = bitcast <32 x i16> %i.egs to <16 x i32>
  %i.egu = bitcast <32 x i16> %i.egs to <16 x i32>
  %i.egv = and <16 x i32> %i.egu, splat (i32 -65536)
  %wide.vec1736 = load <32 x i16>, ptr %next.gep1722, align 2, !tbaa !57
  %i.egw = freeze <32 x i16> %wide.vec1736        ; 2 uses
  %i.egx = bitcast <32 x i16> %i.egw to <16 x i32>
  %i.egy = bitcast <32 x i16> %i.egw to <16 x i32>
  %i.egz = and <16 x i32> %i.egy, splat (i32 -65536)
  %i.eha = shl <16 x i32> %i.egl, splat (i32 16)
  %i.ehb = shl <16 x i32> %i.egp, splat (i32 16)
  %i.ehc = shl <16 x i32> %i.egt, splat (i32 16)
  %i.ehd = shl <16 x i32> %i.egx, splat (i32 16)
  %i.ehe = bitcast <16 x i32> %i.eha to <16 x float>
  %i.ehf = bitcast <16 x i32> %i.ehb to <16 x float>
  %i.ehg = bitcast <16 x i32> %i.ehc to <16 x float>
  %i.ehh = bitcast <16 x i32> %i.ehd to <16 x float>
  %i.ehi = bitcast <16 x i32> %i.egn to <16 x float>
  %i.ehj = bitcast <16 x i32> %i.egr to <16 x float>
  %i.ehk = bitcast <16 x i32> %i.egv to <16 x float>
  %i.ehl = bitcast <16 x i32> %i.egz to <16 x float>
  %wide.vec1739 = load <32 x i16>, ptr %next.gep1723, align 2, !tbaa !57
  %i.ehm = freeze <32 x i16> %wide.vec1739        ; 2 uses
  %i.ehn = bitcast <32 x i16> %i.ehm to <16 x i32>
  %i.eho = bitcast <32 x i16> %i.ehm to <16 x i32>
  %i.ehp = and <16 x i32> %i.eho, splat (i32 -65536)
  %wide.vec1742 = load <32 x i16>, ptr %next.gep1724, align 2, !tbaa !57
  %i.ehq = freeze <32 x i16> %wide.vec1742        ; 2 uses
  %i.ehr = bitcast <32 x i16> %i.ehq to <16 x i32>
  %i.ehs = bitcast <32 x i16> %i.ehq to <16 x i32>
  %i.eht = and <16 x i32> %i.ehs, splat (i32 -65536)
  %wide.vec1745 = load <32 x i16>, ptr %next.gep1725, align 2, !tbaa !57
  %i.ehu = freeze <32 x i16> %wide.vec1745        ; 2 uses
  %i.ehv = bitcast <32 x i16> %i.ehu to <16 x i32>
  %i.ehw = bitcast <32 x i16> %i.ehu to <16 x i32>
  %i.ehx = and <16 x i32> %i.ehw, splat (i32 -65536)
  %wide.vec1748 = load <32 x i16>, ptr %next.gep1726, align 2, !tbaa !57
  %i.ehy = freeze <32 x i16> %wide.vec1748        ; 2 uses
  %i.ehz = bitcast <32 x i16> %i.ehy to <16 x i32>
  %i.eia = bitcast <32 x i16> %i.ehy to <16 x i32>
  %i.eib = and <16 x i32> %i.eia, splat (i32 -65536)
  %i.eic = shl <16 x i32> %i.ehn, splat (i32 16)
  %i.eid = shl <16 x i32> %i.ehr, splat (i32 16)
  %i.eie = shl <16 x i32> %i.ehv, splat (i32 16)
  %i.eif = shl <16 x i32> %i.ehz, splat (i32 16)
  %i.eig = bitcast <16 x i32> %i.eic to <16 x float>
  %i.eih = bitcast <16 x i32> %i.eid to <16 x float>
  %i.eii = bitcast <16 x i32> %i.eie to <16 x float>
  %i.eij = bitcast <16 x i32> %i.eif to <16 x float>
  %i.eik = bitcast <16 x i32> %i.ehp to <16 x float>
  %i.eil = bitcast <16 x i32> %i.eht to <16 x float>
  %i.eim = bitcast <16 x i32> %i.ehx to <16 x float>
  %i.ein = bitcast <16 x i32> %i.eib to <16 x float>
  %i.eio = fmul fast <16 x float> %i.eig, %i.ehe
  %i.eip = fmul fast <16 x float> %i.eih, %i.ehf
  %i.eiq = fmul fast <16 x float> %i.eii, %i.ehg
  %i.eir = fmul fast <16 x float> %i.eij, %i.ehh
  %i.eis = fmul fast <16 x float> %i.eik, %i.ehi
  %i.eit = fmul fast <16 x float> %i.eil, %i.ehj
  %i.eiu = fmul fast <16 x float> %i.eim, %i.ehk
  %i.eiv = fmul fast <16 x float> %i.ein, %i.ehl
  %i.eiw = fadd fast <16 x float> %vec.phi1715, %i.eio
  %i.eix = fadd fast <16 x float> %vec.phi1716, %i.eip
  %i.eiy = fadd fast <16 x float> %vec.phi1717, %i.eiq
  %i.eiz = fadd fast <16 x float> %vec.phi1718, %i.eir
  %i.eja = fadd fast <16 x float> %i.eiw, %i.eis  ; 2 uses
  %i.ejb = fadd fast <16 x float> %i.eix, %i.eit  ; 2 uses
  %i.ejc = fadd fast <16 x float> %i.eiy, %i.eiu  ; 2 uses
  %i.ejd = fadd fast <16 x float> %i.eiz, %i.eiv  ; 2 uses
  %index.next1751 = add nuw i64 %index1714, 64    ; 2 uses
  %i.eje = icmp eq i64 %index.next1751, %n.vec1712
  br i1 %i.eje, label %middle.block1752, label %vector.body1713, !llvm.loop !464

middle.block1752:                                 ; preds = %vector.body1713
  %bin.rdx1753 = fadd fast <16 x float> %i.ejb, %i.eja
  %bin.rdx1754 = fadd fast <16 x float> %i.ejc, %bin.rdx1753
  %bin.rdx1755 = fadd fast <16 x float> %i.ejd, %bin.rdx1754
  %i.ejf = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1755) ; 3 uses
  br i1 %cmp.n1756, label %.preheader.loopexit.i, label %vec.epilog.iter.check1763

vec.epilog.iter.check1763:                        ; preds = %middle.block1752
  br i1 %min.epilog.iters.check1764, label %.lr.ph1371.i.preheader, label %vec.epilog.ph1765, !prof !150

vec.epilog.ph1765:                                ; preds = %vector.main.loop.iter.check1709, %vec.epilog.iter.check1763
  %vec.epilog.resume.val1757 = phi i64 [ %n.vec1712, %vec.epilog.iter.check1763 ], [ 0, %vector.main.loop.iter.check1709 ]
  %bc.merge.rdx1758 = phi float [ %i.ejf, %vec.epilog.iter.check1763 ], [ %.01409.i, %vector.main.loop.iter.check1709 ]
  %i.ejg = getelementptr i8, ptr %.1615611401.i, i64 %i.bkq
  %i.ejh = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1758, i64 0
  br label %vec.epilog.vector.body1767

vec.epilog.vector.body1767:                       ; preds = %vec.epilog.vector.body1767, %vec.epilog.ph1765
  %index1768 = phi i64 [ %vec.epilog.resume.val1757, %vec.epilog.ph1765 ], [ %index.next1778, %vec.epilog.vector.body1767 ] ; 2 uses
  %vec.phi1769 = phi <8 x float> [ %i.ejh, %vec.epilog.ph1765 ], [ %i.eka, %vec.epilog.vector.body1767 ]
  %i.eji = shl i64 %index1768, 2                  ; 2 uses
  %next.gep1770 = getelementptr i8, ptr %.41409.i, i64 %i.eji
  %next.gep1771 = getelementptr i8, ptr %.1615611401.i, i64 %i.eji
  %wide.vec1772 = load <16 x i16>, ptr %next.gep1770, align 2, !tbaa !57
  %i.ejj = freeze <16 x i16> %wide.vec1772        ; 2 uses
  %i.ejk = bitcast <16 x i16> %i.ejj to <8 x i32>
  %i.ejl = bitcast <16 x i16> %i.ejj to <8 x i32>
  %i.ejm = and <8 x i32> %i.ejl, splat (i32 -65536)
  %i.ejn = shl <8 x i32> %i.ejk, splat (i32 16)
  %i.ejo = bitcast <8 x i32> %i.ejn to <8 x float>
  %i.ejp = bitcast <8 x i32> %i.ejm to <8 x float>
  %wide.vec1775 = load <16 x i16>, ptr %next.gep1771, align 2, !tbaa !57
  %i.ejq = freeze <16 x i16> %wide.vec1775        ; 2 uses
  %i.ejr = bitcast <16 x i16> %i.ejq to <8 x i32>
  %i.ejs = bitcast <16 x i16> %i.ejq to <8 x i32>
  %i.ejt = and <8 x i32> %i.ejs, splat (i32 -65536)
  %i.eju = shl <8 x i32> %i.ejr, splat (i32 16)
  %i.ejv = bitcast <8 x i32> %i.eju to <8 x float>
  %i.ejw = bitcast <8 x i32> %i.ejt to <8 x float>
  %i.ejx = fmul fast <8 x float> %i.ejv, %i.ejo
  %i.ejy = fmul fast <8 x float> %i.ejw, %i.ejp
  %i.ejz = fadd fast <8 x float> %vec.phi1769, %i.ejx
  %i.eka = fadd fast <8 x float> %i.ejz, %i.ejy   ; 2 uses
  %index.next1778 = add nuw i64 %index1768, 8     ; 2 uses
  %i.ekb = icmp eq i64 %index.next1778, %n.vec1766
  br i1 %i.ekb, label %vec.epilog.middle.block1779, label %vec.epilog.vector.body1767, !llvm.loop !465

vec.epilog.middle.block1779:                      ; preds = %vec.epilog.vector.body1767
  %i.ekc = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.eka) ; 2 uses
  br i1 %cmp.n1780, label %.preheader.loopexit.i, label %.lr.ph1371.i.preheader

.lr.ph1371.i.preheader:                           ; preds = %iter.check1761, %vec.epilog.iter.check1763, %vec.epilog.middle.block1779
  %.014061369.i.ph = phi i32 [ 0, %iter.check1761 ], [ %i.bkm, %vec.epilog.iter.check1763 ], [ %i.bkp, %vec.epilog.middle.block1779 ]
  %.114101368.i.ph = phi float [ %.01409.i, %iter.check1761 ], [ %i.ejf, %vec.epilog.iter.check1763 ], [ %i.ekc, %vec.epilog.middle.block1779 ]
  %.014121367.i.ph = phi ptr [ %.41409.i, %iter.check1761 ], [ %i.dko, %vec.epilog.iter.check1763 ], [ %i.dkp, %vec.epilog.middle.block1779 ]
  %.1715621366.i.ph = phi ptr [ %.1615611401.i, %iter.check1761 ], [ %i.ege, %vec.epilog.iter.check1763 ], [ %i.ejg, %vec.epilog.middle.block1779 ]
  br label %.lr.ph1371.i

.preheader.loopexit.i:                            ; preds = %.lr.ph1371.i, %vec.epilog.middle.block1779, %middle.block1752
  %.lcssa1022 = phi float [ %i.ekc, %vec.epilog.middle.block1779 ], [ %i.ejf, %middle.block1752 ], [ %i.eqb, %.lr.ph1371.i ]
  %i.ekd = getelementptr i8, ptr %.1615611401.i, i64 %i.bjo
  %scevgep1829.i = getelementptr i8, ptr %i.ekd, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ay
  %.171562.lcssa.i = phi ptr [ %.1615611401.i, %bb.ay ], [ %scevgep1829.i, %.preheader.loopexit.i ] ; 7 uses
  %.01412.lcssa.i = phi ptr [ %.41409.i, %bb.ay ], [ %indvars.iv633, %.preheader.loopexit.i ] ; 7 uses
  %.11410.lcssa.i = phi float [ %.01409.i, %bb.ay ], [ %.lcssa1022, %.preheader.loopexit.i ] ; 2 uses
  %.01406.lcssa.i = phi i32 [ 0, %bb.ay ], [ %i.bjh, %.preheader.loopexit.i ] ; 7 uses
  %i.eke = add nuw nsw i32 %.01406.lcssa.i, 3
  %i.ekf = icmp slt i32 %i.eke, %8
  br i1 %i.ekf, label %iter.check1674, label %._crit_edge1384.i

iter.check1674:                                   ; preds = %.preheader.i
  %i.ekg = add i32 %.01406.lcssa.i, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %8, i32 %i.ekg)
  %i.ekh = add i32 %smax, -4
  %i.eki = sub i32 %i.ekh, %.01406.lcssa.i        ; 3 uses
  %i.ekj = lshr i32 %i.eki, 2
  %narrow2048 = add nuw nsw i32 %i.ekj, 1
  %i.ekk = zext nneg i32 %narrow2048 to i64       ; 5 uses
  %min.iters.check1621 = icmp ult i32 %i.eki, 28
  br i1 %min.iters.check1621, label %.lr.ph1383.i.preheader, label %vector.main.loop.iter.check1622

vector.main.loop.iter.check1622:                  ; preds = %iter.check1674
  %min.iters.check1623 = icmp ult i32 %i.eki, 124
  br i1 %min.iters.check1623, label %vec.epilog.ph1678, label %vector.ph1624

vector.ph1624:                                    ; preds = %vector.main.loop.iter.check1622
  %i.ekl = and i64 %i.ekk, 24
  %n.vec1625 = and i64 %i.ekk, 2147483616         ; 5 uses
  %i.ekm = trunc nuw nsw i64 %n.vec1625 to i32
  %i.ekn = shl i32 %i.ekm, 2
  %i.eko = add i32 %.01406.lcssa.i, %i.ekn        ; 2 uses
  %i.ekp = shl nuw nsw i64 %n.vec1625, 3          ; 2 uses
  %i.ekq = getelementptr i8, ptr %.01412.lcssa.i, i64 %i.ekp ; 2 uses
  %i.ekr = getelementptr i8, ptr %.171562.lcssa.i, i64 %i.ekp ; 2 uses
  br label %vector.body1626

vector.body1626:                                  ; preds = %vector.body1626, %vector.ph1624
  %index1627 = phi i64 [ 0, %vector.ph1624 ], [ %index.next1660, %vector.body1626 ] ; 2 uses
  %vec.phi1628 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.ene, %vector.body1626 ]
  %vec.phi1629 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.enf, %vector.body1626 ]
  %vec.phi1630 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.emo, %vector.body1626 ]
  %vec.phi1631 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.emp, %vector.body1626 ]
  %vec.phi1632 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.ely, %vector.body1626 ]
  %vec.phi1633 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.elz, %vector.body1626 ]
  %vec.phi1634 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.eli, %vector.body1626 ]
  %vec.phi1635 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.elj, %vector.body1626 ]
  %i.eks = shl i64 %index1627, 3                  ; 3 uses
  %i.ekt = or disjoint i64 %i.eks, 128            ; 2 uses
  %next.gep1636 = getelementptr i8, ptr %.01412.lcssa.i, i64 %i.eks
  %next.gep1637 = getelementptr i8, ptr %.01412.lcssa.i, i64 %i.ekt
  %next.gep1638 = getelementptr i8, ptr %.171562.lcssa.i, i64 %i.eks
  %next.gep1639 = getelementptr i8, ptr %.171562.lcssa.i, i64 %i.ekt
  %wide.vec1640 = load <64 x i16>, ptr %next.gep1636, align 2, !tbaa !57 ; 4 uses
  %strided.vec1641 = shufflevector <64 x i16> %wide.vec1640, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1642 = shufflevector <64 x i16> %wide.vec1640, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1643 = shufflevector <64 x i16> %wide.vec1640, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1644 = shufflevector <64 x i16> %wide.vec1640, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1645 = load <64 x i16>, ptr %next.gep1637, align 2, !tbaa !57 ; 4 uses
  %strided.vec1646 = shufflevector <64 x i16> %wide.vec1645, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1647 = shufflevector <64 x i16> %wide.vec1645, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1648 = shufflevector <64 x i16> %wide.vec1645, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1649 = shufflevector <64 x i16> %wide.vec1645, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.eku = zext <16 x i16> %strided.vec1641 to <16 x i32>
  %i.ekv = zext <16 x i16> %strided.vec1646 to <16 x i32>
  %i.ekw = shl nuw <16 x i32> %i.eku, splat (i32 16)
  %i.ekx = shl nuw <16 x i32> %i.ekv, splat (i32 16)
  %i.eky = bitcast <16 x i32> %i.ekw to <16 x float>
  %i.ekz = bitcast <16 x i32> %i.ekx to <16 x float>
  %wide.vec1650 = load <64 x i16>, ptr %next.gep1638, align 2, !tbaa !57 ; 4 uses
  %strided.vec1651 = shufflevector <64 x i16> %wide.vec1650, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1652 = shufflevector <64 x i16> %wide.vec1650, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1653 = shufflevector <64 x i16> %wide.vec1650, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1654 = shufflevector <64 x i16> %wide.vec1650, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1655 = load <64 x i16>, ptr %next.gep1639, align 2, !tbaa !57 ; 4 uses
  %strided.vec1656 = shufflevector <64 x i16> %wide.vec1655, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1657 = shufflevector <64 x i16> %wide.vec1655, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1658 = shufflevector <64 x i16> %wide.vec1655, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1659 = shufflevector <64 x i16> %wide.vec1655, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.ela = zext <16 x i16> %strided.vec1651 to <16 x i32>
  %i.elb = zext <16 x i16> %strided.vec1656 to <16 x i32>
  %i.elc = shl nuw <16 x i32> %i.ela, splat (i32 16)
  %i.eld = shl nuw <16 x i32> %i.elb, splat (i32 16)
  %i.ele = bitcast <16 x i32> %i.elc to <16 x float>
  %i.elf = bitcast <16 x i32> %i.eld to <16 x float>
  %i.elg = fmul fast <16 x float> %i.ele, %i.eky
  %i.elh = fmul fast <16 x float> %i.elf, %i.ekz
  %i.eli = fadd fast <16 x float> %i.elg, %vec.phi1634 ; 2 uses
  %i.elj = fadd fast <16 x float> %i.elh, %vec.phi1635 ; 2 uses
  %i.elk = zext <16 x i16> %strided.vec1642 to <16 x i32>
  %i.ell = zext <16 x i16> %strided.vec1647 to <16 x i32>
  %i.elm = shl nuw <16 x i32> %i.elk, splat (i32 16)
  %i.eln = shl nuw <16 x i32> %i.ell, splat (i32 16)
  %i.elo = bitcast <16 x i32> %i.elm to <16 x float>
  %i.elp = bitcast <16 x i32> %i.eln to <16 x float>
  %i.elq = zext <16 x i16> %strided.vec1652 to <16 x i32>
  %i.elr = zext <16 x i16> %strided.vec1657 to <16 x i32>
  %i.els = shl nuw <16 x i32> %i.elq, splat (i32 16)
  %i.elt = shl nuw <16 x i32> %i.elr, splat (i32 16)
  %i.elu = bitcast <16 x i32> %i.els to <16 x float>
  %i.elv = bitcast <16 x i32> %i.elt to <16 x float>
  %i.elw = fmul fast <16 x float> %i.elu, %i.elo
  %i.elx = fmul fast <16 x float> %i.elv, %i.elp
  %i.ely = fadd fast <16 x float> %i.elw, %vec.phi1632 ; 2 uses
  %i.elz = fadd fast <16 x float> %i.elx, %vec.phi1633 ; 2 uses
  %i.ema = zext <16 x i16> %strided.vec1643 to <16 x i32>
  %i.emb = zext <16 x i16> %strided.vec1648 to <16 x i32>
  %i.emc = shl nuw <16 x i32> %i.ema, splat (i32 16)
  %i.emd = shl nuw <16 x i32> %i.emb, splat (i32 16)
  %i.eme = bitcast <16 x i32> %i.emc to <16 x float>
  %i.emf = bitcast <16 x i32> %i.emd to <16 x float>
  %i.emg = zext <16 x i16> %strided.vec1653 to <16 x i32>
  %i.emh = zext <16 x i16> %strided.vec1658 to <16 x i32>
  %i.emi = shl nuw <16 x i32> %i.emg, splat (i32 16)
  %i.emj = shl nuw <16 x i32> %i.emh, splat (i32 16)
  %i.emk = bitcast <16 x i32> %i.emi to <16 x float>
  %i.eml = bitcast <16 x i32> %i.emj to <16 x float>
  %i.emm = fmul fast <16 x float> %i.emk, %i.eme
  %i.emn = fmul fast <16 x float> %i.eml, %i.emf
  %i.emo = fadd fast <16 x float> %i.emm, %vec.phi1630 ; 2 uses
  %i.emp = fadd fast <16 x float> %i.emn, %vec.phi1631 ; 2 uses
  %i.emq = zext <16 x i16> %strided.vec1644 to <16 x i32>
  %i.emr = zext <16 x i16> %strided.vec1649 to <16 x i32>
  %i.ems = shl nuw <16 x i32> %i.emq, splat (i32 16)
  %i.emt = shl nuw <16 x i32> %i.emr, splat (i32 16)
  %i.emu = bitcast <16 x i32> %i.ems to <16 x float>
  %i.emv = bitcast <16 x i32> %i.emt to <16 x float>
  %i.emw = zext <16 x i16> %strided.vec1654 to <16 x i32>
  %i.emx = zext <16 x i16> %strided.vec1659 to <16 x i32>
  %i.emy = shl nuw <16 x i32> %i.emw, splat (i32 16)
  %i.emz = shl nuw <16 x i32> %i.emx, splat (i32 16)
  %i.ena = bitcast <16 x i32> %i.emy to <16 x float>
  %i.enb = bitcast <16 x i32> %i.emz to <16 x float>
  %i.enc = fmul fast <16 x float> %i.ena, %i.emu
  %i.end = fmul fast <16 x float> %i.enb, %i.emv
  %i.ene = fadd fast <16 x float> %i.enc, %vec.phi1628 ; 2 uses
  %i.enf = fadd fast <16 x float> %i.end, %vec.phi1629 ; 2 uses
  %index.next1660 = add nuw i64 %index1627, 32    ; 2 uses
  %i.eng = icmp eq i64 %index.next1660, %n.vec1625
  br i1 %i.eng, label %middle.block1661, label %vector.body1626, !llvm.loop !466

middle.block1661:                                 ; preds = %vector.body1626
  %bin.rdx1662 = fadd fast <16 x float> %i.enf, %i.ene
  %i.enh = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1662) ; 2 uses
  %bin.rdx1663 = fadd fast <16 x float> %i.emp, %i.emo
  %i.eni = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1663) ; 2 uses
  %bin.rdx1664 = fadd fast <16 x float> %i.elz, %i.ely
  %i.enj = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1664) ; 2 uses
  %bin.rdx1665 = fadd fast <16 x float> %i.elj, %i.eli
  %i.enk = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1665) ; 2 uses
  %cmp.n1666 = icmp eq i64 %n.vec1625, %i.ekk
  %i.enl = insertelement <4 x float> poison, float %i.enk, i64 0
  %i.enm = insertelement <4 x float> %i.enl, float %i.enj, i64 1
  %i.enn = insertelement <4 x float> %i.enm, float %i.eni, i64 2
  %i.eno = insertelement <4 x float> %i.enn, float %i.enh, i64 3 ; 2 uses
  br i1 %cmp.n1666, label %._crit_edge1384.loopexit.i, label %vec.epilog.iter.check1676

vec.epilog.iter.check1676:                        ; preds = %middle.block1661
  %min.epilog.iters.check1677 = icmp eq i64 %i.ekl, 0
  br i1 %min.epilog.iters.check1677, label %.lr.ph1383.i.preheader, label %vec.epilog.ph1678, !prof !52

vec.epilog.ph1678:                                ; preds = %vector.main.loop.iter.check1622, %vec.epilog.iter.check1676
  %vec.epilog.resume.val1667 = phi i64 [ %n.vec1625, %vec.epilog.iter.check1676 ], [ 0, %vector.main.loop.iter.check1622 ]
  %bc.merge.rdx1668 = phi float [ %i.enh, %vec.epilog.iter.check1676 ], [ 0.000000e+00, %vector.main.loop.iter.check1622 ]
  %bc.merge.rdx1669 = phi float [ %i.eni, %vec.epilog.iter.check1676 ], [ 0.000000e+00, %vector.main.loop.iter.check1622 ]
  %bc.merge.rdx1670 = phi float [ %i.enj, %vec.epilog.iter.check1676 ], [ 0.000000e+00, %vector.main.loop.iter.check1622 ]
  %bc.merge.rdx1671 = phi float [ %i.enk, %vec.epilog.iter.check1676 ], [ 0.000000e+00, %vector.main.loop.iter.check1622 ]
  %n.vec1679 = and i64 %i.ekk, 2147483640         ; 4 uses
  %i.enp = trunc nuw nsw i64 %n.vec1679 to i32
  %i.enq = shl i32 %i.enp, 2
  %i.enr = add i32 %.01406.lcssa.i, %i.enq        ; 2 uses
  %i.ens = shl nuw nsw i64 %n.vec1679, 3          ; 2 uses
  %i.ent = getelementptr i8, ptr %.01412.lcssa.i, i64 %i.ens ; 2 uses
  %i.enu = getelementptr i8, ptr %.171562.lcssa.i, i64 %i.ens ; 2 uses
  %i.env = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1668, i64 0
  %i.enw = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1669, i64 0
  %i.enx = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1670, i64 0
  %i.eny = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1671, i64 0
  br label %vec.epilog.vector.body1680

vec.epilog.vector.body1680:                       ; preds = %vec.epilog.vector.body1680, %vec.epilog.ph1678
  %index1681 = phi i64 [ %vec.epilog.resume.val1667, %vec.epilog.ph1678 ], [ %index.next1698, %vec.epilog.vector.body1680 ] ; 2 uses
  %vec.phi1682 = phi <8 x float> [ %i.env, %vec.epilog.ph1678 ], [ %i.epf, %vec.epilog.vector.body1680 ]
  %vec.phi1683 = phi <8 x float> [ %i.enw, %vec.epilog.ph1678 ], [ %i.eox, %vec.epilog.vector.body1680 ]
  %vec.phi1684 = phi <8 x float> [ %i.enx, %vec.epilog.ph1678 ], [ %i.eop, %vec.epilog.vector.body1680 ]
  %vec.phi1685 = phi <8 x float> [ %i.eny, %vec.epilog.ph1678 ], [ %i.eoh, %vec.epilog.vector.body1680 ]
  %i.enz = shl i64 %index1681, 3                  ; 2 uses
  %next.gep1686 = getelementptr i8, ptr %.01412.lcssa.i, i64 %i.enz
  %next.gep1687 = getelementptr i8, ptr %.171562.lcssa.i, i64 %i.enz
  %wide.vec1688 = load <32 x i16>, ptr %next.gep1686, align 2, !tbaa !57 ; 4 uses
  %strided.vec1689 = shufflevector <32 x i16> %wide.vec1688, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1690 = shufflevector <32 x i16> %wide.vec1688, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1691 = shufflevector <32 x i16> %wide.vec1688, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1692 = shufflevector <32 x i16> %wide.vec1688, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.eoa = zext <8 x i16> %strided.vec1689 to <8 x i32>
  %i.eob = shl nuw <8 x i32> %i.eoa, splat (i32 16)
  %i.eoc = bitcast <8 x i32> %i.eob to <8 x float>
  %wide.vec1693 = load <32 x i16>, ptr %next.gep1687, align 2, !tbaa !57 ; 4 uses
  %strided.vec1694 = shufflevector <32 x i16> %wide.vec1693, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1695 = shufflevector <32 x i16> %wide.vec1693, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1696 = shufflevector <32 x i16> %wide.vec1693, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1697 = shufflevector <32 x i16> %wide.vec1693, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.eod = zext <8 x i16> %strided.vec1694 to <8 x i32>
  %i.eoe = shl nuw <8 x i32> %i.eod, splat (i32 16)
  %i.eof = bitcast <8 x i32> %i.eoe to <8 x float>
  %i.eog = fmul fast <8 x float> %i.eof, %i.eoc
  %i.eoh = fadd fast <8 x float> %i.eog, %vec.phi1685 ; 2 uses
  %i.eoi = zext <8 x i16> %strided.vec1690 to <8 x i32>
  %i.eoj = shl nuw <8 x i32> %i.eoi, splat (i32 16)
  %i.eok = bitcast <8 x i32> %i.eoj to <8 x float>
  %i.eol = zext <8 x i16> %strided.vec1695 to <8 x i32>
  %i.eom = shl nuw <8 x i32> %i.eol, splat (i32 16)
  %i.eon = bitcast <8 x i32> %i.eom to <8 x float>
  %i.eoo = fmul fast <8 x float> %i.eon, %i.eok
  %i.eop = fadd fast <8 x float> %i.eoo, %vec.phi1684 ; 2 uses
  %i.eoq = zext <8 x i16> %strided.vec1691 to <8 x i32>
  %i.eor = shl nuw <8 x i32> %i.eoq, splat (i32 16)
  %i.eos = bitcast <8 x i32> %i.eor to <8 x float>
  %i.eot = zext <8 x i16> %strided.vec1696 to <8 x i32>
  %i.eou = shl nuw <8 x i32> %i.eot, splat (i32 16)
  %i.eov = bitcast <8 x i32> %i.eou to <8 x float>
  %i.eow = fmul fast <8 x float> %i.eov, %i.eos
  %i.eox = fadd fast <8 x float> %i.eow, %vec.phi1683 ; 2 uses
  %i.eoy = zext <8 x i16> %strided.vec1692 to <8 x i32>
  %i.eoz = shl nuw <8 x i32> %i.eoy, splat (i32 16)
  %i.epa = bitcast <8 x i32> %i.eoz to <8 x float>
  %i.epb = zext <8 x i16> %strided.vec1697 to <8 x i32>
  %i.epc = shl nuw <8 x i32> %i.epb, splat (i32 16)
  %i.epd = bitcast <8 x i32> %i.epc to <8 x float>
  %i.epe = fmul fast <8 x float> %i.epd, %i.epa
  %i.epf = fadd fast <8 x float> %i.epe, %vec.phi1682 ; 2 uses
  %index.next1698 = add nuw i64 %index1681, 8     ; 2 uses
  %i.epg = icmp eq i64 %index.next1698, %n.vec1679
  br i1 %i.epg, label %vec.epilog.middle.block1699, label %vec.epilog.vector.body1680, !llvm.loop !467

vec.epilog.middle.block1699:                      ; preds = %vec.epilog.vector.body1680
  %i.eph = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.epf)
  %i.epi = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.eox)
  %i.epj = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.eop)
  %i.epk = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.eoh)
  %cmp.n1700 = icmp eq i64 %n.vec1679, %i.ekk
  %i.epl = insertelement <4 x float> poison, float %i.epk, i64 0
  %i.epm = insertelement <4 x float> %i.epl, float %i.epj, i64 1
  %i.epn = insertelement <4 x float> %i.epm, float %i.epi, i64 2
  %i.epo = insertelement <4 x float> %i.epn, float %i.eph, i64 3 ; 2 uses
  br i1 %cmp.n1700, label %._crit_edge1384.loopexit.i, label %.lr.ph1383.i.preheader

.lr.ph1383.i.preheader:                           ; preds = %iter.check1674, %vec.epilog.iter.check1676, %vec.epilog.middle.block1699
  %.114071378.i.ph = phi i32 [ %.01406.lcssa.i, %iter.check1674 ], [ %i.eko, %vec.epilog.iter.check1676 ], [ %i.enr, %vec.epilog.middle.block1699 ]
  %.114131377.i.ph = phi ptr [ %.01412.lcssa.i, %iter.check1674 ], [ %i.ekq, %vec.epilog.iter.check1676 ], [ %i.ent, %vec.epilog.middle.block1699 ]
  %.1815631376.i.ph = phi ptr [ %.171562.lcssa.i, %iter.check1674 ], [ %i.ekr, %vec.epilog.iter.check1676 ], [ %i.enu, %vec.epilog.middle.block1699 ]
  %.ph = phi <4 x float> [ zeroinitializer, %iter.check1674 ], [ %i.eno, %vec.epilog.iter.check1676 ], [ %i.epo, %vec.epilog.middle.block1699 ]
  br label %.lr.ph1383.i

.lr.ph1371.i:                                     ; preds = %.lr.ph1371.i.preheader, %.lr.ph1371.i
  %.014061369.i = phi i32 [ %i.eqe, %.lr.ph1371.i ], [ %.014061369.i.ph, %.lr.ph1371.i.preheader ]
  %.114101368.i = phi float [ %i.eqb, %.lr.ph1371.i ], [ %.114101368.i.ph, %.lr.ph1371.i.preheader ]
  %.014121367.i = phi ptr [ %i.eqc, %.lr.ph1371.i ], [ %.014121367.i.ph, %.lr.ph1371.i.preheader ] ; 2 uses
  %.1715621366.i = phi ptr [ %i.eqd, %.lr.ph1371.i ], [ %.1715621366.i.ph, %.lr.ph1371.i.preheader ] ; 2 uses
  %i.epp = load <2 x i16>, ptr %.014121367.i, align 2, !tbaa !57
  %i.epq = zext <2 x i16> %i.epp to <2 x i32>
  %i.epr = shl nuw <2 x i32> %i.epq, splat (i32 16)
  %i.eps = bitcast <2 x i32> %i.epr to <2 x float>
  %i.ept = load <2 x i16>, ptr %.1715621366.i, align 2, !tbaa !57
  %i.epu = zext <2 x i16> %i.ept to <2 x i32>
  %i.epv = shl nuw <2 x i32> %i.epu, splat (i32 16)
  %i.epw = bitcast <2 x i32> %i.epv to <2 x float>
  %i.epx = fmul fast <2 x float> %i.epw, %i.eps   ; 2 uses
  %i.epy = extractelement <2 x float> %i.epx, i64 0
  %i.epz = fadd fast float %.114101368.i, %i.epy
  %i.eqa = extractelement <2 x float> %i.epx, i64 1
  %i.eqb = fadd fast float %i.epz, %i.eqa         ; 2 uses
  %i.eqc = getelementptr inbounds nuw i8, ptr %.014121367.i, i64 4
  %i.eqd = getelementptr inbounds nuw i8, ptr %.1715621366.i, i64 4
  %i.eqe = add nuw nsw i32 %.014061369.i, 2       ; 2 uses
  %i.eqf = or disjoint i32 %i.eqe, 1
  %i.eqg = icmp slt i32 %i.eqf, %8
  br i1 %i.eqg, label %.lr.ph1371.i, label %.preheader.loopexit.i, !llvm.loop !468

.lr.ph1383.i:                                     ; preds = %.lr.ph1383.i.preheader, %.lr.ph1383.i
  %.114071378.i = phi i32 [ %i.equ, %.lr.ph1383.i ], [ %.114071378.i.ph, %.lr.ph1383.i.preheader ] ; 2 uses
  %.114131377.i = phi ptr [ %i.eqs, %.lr.ph1383.i ], [ %.114131377.i.ph, %.lr.ph1383.i.preheader ] ; 2 uses
  %.1815631376.i = phi ptr [ %i.eqt, %.lr.ph1383.i ], [ %.1815631376.i.ph, %.lr.ph1383.i.preheader ] ; 2 uses
  %i.eqh = phi <4 x float> [ %i.eqr, %.lr.ph1383.i ], [ %.ph, %.lr.ph1383.i.preheader ]
  %i.eqi = load <4 x i16>, ptr %.114131377.i, align 2, !tbaa !57
  %i.eqj = zext <4 x i16> %i.eqi to <4 x i32>
  %i.eqk = shl nuw <4 x i32> %i.eqj, splat (i32 16)
  %i.eql = bitcast <4 x i32> %i.eqk to <4 x float>
  %i.eqm = load <4 x i16>, ptr %.1815631376.i, align 2, !tbaa !57
  %i.eqn = zext <4 x i16> %i.eqm to <4 x i32>
  %i.eqo = shl nuw <4 x i32> %i.eqn, splat (i32 16)
  %i.eqp = bitcast <4 x i32> %i.eqo to <4 x float>
  %i.eqq = fmul fast <4 x float> %i.eqp, %i.eql
  %i.eqr = fadd fast <4 x float> %i.eqq, %i.eqh   ; 2 uses
  %i.eqs = getelementptr inbounds nuw i8, ptr %.114131377.i, i64 8 ; 2 uses
  %i.eqt = getelementptr inbounds nuw i8, ptr %.1815631376.i, i64 8 ; 2 uses
  %i.equ = add nuw nsw i32 %.114071378.i, 4       ; 2 uses
  %i.eqv = add nuw nsw i32 %.114071378.i, 7
  %i.eqw = icmp slt i32 %i.eqv, %8
  br i1 %i.eqw, label %.lr.ph1383.i, label %._crit_edge1384.loopexit.i, !llvm.loop !469

._crit_edge1384.loopexit.i:                       ; preds = %.lr.ph1383.i, %vec.epilog.middle.block1699, %middle.block1661
  %.lcssa1025 = phi ptr [ %i.ent, %vec.epilog.middle.block1699 ], [ %i.ekq, %middle.block1661 ], [ %i.eqs, %.lr.ph1383.i ]
  %.lcssa1024 = phi ptr [ %i.enu, %vec.epilog.middle.block1699 ], [ %i.ekr, %middle.block1661 ], [ %i.eqt, %.lr.ph1383.i ]
  %.lcssa1023 = phi i32 [ %i.enr, %vec.epilog.middle.block1699 ], [ %i.eko, %middle.block1661 ], [ %i.equ, %.lr.ph1383.i ]
  %i.eqx = phi <4 x float> [ %i.epo, %vec.epilog.middle.block1699 ], [ %i.eno, %middle.block1661 ], [ %i.eqr, %.lr.ph1383.i ]
  %op.rdx = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %.11410.lcssa.i, <4 x float> %i.eqx)
  br label %._crit_edge1384.i

._crit_edge1384.i:                                ; preds = %._crit_edge1384.loopexit.i, %.preheader.i
  %.181563.lcssa.i = phi ptr [ %.171562.lcssa.i, %.preheader.i ], [ %.lcssa1024, %._crit_edge1384.loopexit.i ] ; 6 uses
  %.11413.lcssa.i = phi ptr [ %.01412.lcssa.i, %.preheader.i ], [ %.lcssa1025, %._crit_edge1384.loopexit.i ] ; 5 uses
  %.11407.lcssa.i = phi i32 [ %.01406.lcssa.i, %.preheader.i ], [ %.lcssa1023, %._crit_edge1384.loopexit.i ] ; 5 uses
  %.01379.lcssa.i = phi float [ %.11410.lcssa.i, %.preheader.i ], [ %op.rdx, %._crit_edge1384.loopexit.i ] ; 4 uses
  %i.eqy = icmp slt i32 %.11407.lcssa.i, %8
  br i1 %i.eqy, label %iter.check1601, label %._crit_edge1398.i

iter.check1601:                                   ; preds = %._crit_edge1384.i
  %i.eqz = xor i32 %.11407.lcssa.i, -1
  %i.era = add i32 %8, %i.eqz                     ; 3 uses
  %i.erb = zext i32 %i.era to i64
  %i.erc = add nuw nsw i64 %i.erb, 1              ; 5 uses
  %min.iters.check1570 = icmp ult i32 %i.era, 7
  br i1 %min.iters.check1570, label %.lr.ph1397.i.preheader, label %vector.main.loop.iter.check1571

vector.main.loop.iter.check1571:                  ; preds = %iter.check1601
  %min.iters.check1572 = icmp ult i32 %i.era, 63
  br i1 %min.iters.check1572, label %vec.epilog.ph1605, label %vector.ph1573

vector.ph1573:                                    ; preds = %vector.main.loop.iter.check1571
  %i.erd = and i64 %i.erc, 56
  %n.vec1574 = and i64 %i.erc, 8589934528         ; 5 uses
  %i.ere = trunc i64 %n.vec1574 to i32
  %i.erf = add i32 %.11407.lcssa.i, %i.ere
  %i.erg = shl nuw nsw i64 %n.vec1574, 1          ; 2 uses
  %i.erh = getelementptr i8, ptr %.11413.lcssa.i, i64 %i.erg
  %i.eri = getelementptr i8, ptr %.181563.lcssa.i, i64 %i.erg ; 2 uses
  %i.erj = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.01379.lcssa.i, i64 0
  br label %vector.body1575

vector.body1575:                                  ; preds = %vector.body1575, %vector.ph1573
  %index1576 = phi i64 [ 0, %vector.ph1573 ], [ %index.next1591, %vector.body1575 ] ; 2 uses
  %vec.phi1577 = phi <16 x float> [ %i.erj, %vector.ph1573 ], [ %i.est, %vector.body1575 ]
  %vec.phi1578 = phi <16 x float> [ zeroinitializer, %vector.ph1573 ], [ %i.esu, %vector.body1575 ]
  %vec.phi1579 = phi <16 x float> [ zeroinitializer, %vector.ph1573 ], [ %i.esv, %vector.body1575 ]
  %vec.phi1580 = phi <16 x float> [ zeroinitializer, %vector.ph1573 ], [ %i.esw, %vector.body1575 ]
  %i.erk = shl i64 %index1576, 1                  ; 2 uses
  %next.gep1581 = getelementptr i8, ptr %.11413.lcssa.i, i64 %i.erk ; 4 uses
  %next.gep1582 = getelementptr i8, ptr %.181563.lcssa.i, i64 %i.erk ; 4 uses
  %i.erl = getelementptr i8, ptr %next.gep1581, i64 32
  %i.erm = getelementptr i8, ptr %next.gep1581, i64 64
  %i.ern = getelementptr i8, ptr %next.gep1581, i64 96
  %wide.load1583 = load <16 x i16>, ptr %next.gep1581, align 2, !tbaa !57
  %wide.load1584 = load <16 x i16>, ptr %i.erl, align 2, !tbaa !57
  %wide.load1585 = load <16 x i16>, ptr %i.erm, align 2, !tbaa !57
  %wide.load1586 = load <16 x i16>, ptr %i.ern, align 2, !tbaa !57
  %i.ero = zext <16 x i16> %wide.load1583 to <16 x i32>
  %i.erp = zext <16 x i16> %wide.load1584 to <16 x i32>
  %i.erq = zext <16 x i16> %wide.load1585 to <16 x i32>
  %i.err = zext <16 x i16> %wide.load1586 to <16 x i32>
  %i.ers = shl nuw <16 x i32> %i.ero, splat (i32 16)
  %i.ert = shl nuw <16 x i32> %i.erp, splat (i32 16)
  %i.eru = shl nuw <16 x i32> %i.erq, splat (i32 16)
  %i.erv = shl nuw <16 x i32> %i.err, splat (i32 16)
  %i.erw = bitcast <16 x i32> %i.ers to <16 x float>
  %i.erx = bitcast <16 x i32> %i.ert to <16 x float>
  %i.ery = bitcast <16 x i32> %i.eru to <16 x float>
  %i.erz = bitcast <16 x i32> %i.erv to <16 x float>
  %i.esa = getelementptr i8, ptr %next.gep1582, i64 32
  %i.esb = getelementptr i8, ptr %next.gep1582, i64 64
  %i.esc = getelementptr i8, ptr %next.gep1582, i64 96
  %wide.load1587 = load <16 x i16>, ptr %next.gep1582, align 2, !tbaa !57
  %wide.load1588 = load <16 x i16>, ptr %i.esa, align 2, !tbaa !57
  %wide.load1589 = load <16 x i16>, ptr %i.esb, align 2, !tbaa !57
  %wide.load1590 = load <16 x i16>, ptr %i.esc, align 2, !tbaa !57
  %i.esd = zext <16 x i16> %wide.load1587 to <16 x i32>
  %i.ese = zext <16 x i16> %wide.load1588 to <16 x i32>
  %i.esf = zext <16 x i16> %wide.load1589 to <16 x i32>
  %i.esg = zext <16 x i16> %wide.load1590 to <16 x i32>
  %i.esh = shl nuw <16 x i32> %i.esd, splat (i32 16)
  %i.esi = shl nuw <16 x i32> %i.ese, splat (i32 16)
  %i.esj = shl nuw <16 x i32> %i.esf, splat (i32 16)
  %i.esk = shl nuw <16 x i32> %i.esg, splat (i32 16)
  %i.esl = bitcast <16 x i32> %i.esh to <16 x float>
  %i.esm = bitcast <16 x i32> %i.esi to <16 x float>
  %i.esn = bitcast <16 x i32> %i.esj to <16 x float>
  %i.eso = bitcast <16 x i32> %i.esk to <16 x float>
  %i.esp = fmul fast <16 x float> %i.esl, %i.erw
  %i.esq = fmul fast <16 x float> %i.esm, %i.erx
  %i.esr = fmul fast <16 x float> %i.esn, %i.ery
  %i.ess = fmul fast <16 x float> %i.eso, %i.erz
  %i.est = fadd fast <16 x float> %i.esp, %vec.phi1577 ; 2 uses
  %i.esu = fadd fast <16 x float> %i.esq, %vec.phi1578 ; 2 uses
  %i.esv = fadd fast <16 x float> %i.esr, %vec.phi1579 ; 2 uses
  %i.esw = fadd fast <16 x float> %i.ess, %vec.phi1580 ; 2 uses
  %index.next1591 = add nuw i64 %index1576, 64    ; 2 uses
  %i.esx = icmp eq i64 %index.next1591, %n.vec1574
  br i1 %i.esx, label %middle.block1592, label %vector.body1575, !llvm.loop !470

middle.block1592:                                 ; preds = %vector.body1575
  %bin.rdx1593 = fadd fast <16 x float> %i.esu, %i.est
  %bin.rdx1594 = fadd fast <16 x float> %i.esv, %bin.rdx1593
  %bin.rdx1595 = fadd fast <16 x float> %i.esw, %bin.rdx1594
  %i.esy = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1595) ; 3 uses
  %cmp.n1596 = icmp eq i64 %i.erc, %n.vec1574
  br i1 %cmp.n1596, label %._crit_edge1398.i, label %vec.epilog.iter.check1603

vec.epilog.iter.check1603:                        ; preds = %middle.block1592
  %min.epilog.iters.check1604 = icmp eq i64 %i.erd, 0
  br i1 %min.epilog.iters.check1604, label %.lr.ph1397.i.preheader, label %vec.epilog.ph1605, !prof !150

vec.epilog.ph1605:                                ; preds = %vector.main.loop.iter.check1571, %vec.epilog.iter.check1603
  %vec.epilog.resume.val1597 = phi i64 [ %n.vec1574, %vec.epilog.iter.check1603 ], [ 0, %vector.main.loop.iter.check1571 ]
  %bc.merge.rdx1598 = phi float [ %i.esy, %vec.epilog.iter.check1603 ], [ %.01379.lcssa.i, %vector.main.loop.iter.check1571 ]
  %n.vec1606 = and i64 %i.erc, 8589934584         ; 4 uses
  %i.esz = trunc i64 %n.vec1606 to i32
  %i.eta = add i32 %.11407.lcssa.i, %i.esz
  %i.etb = shl nuw nsw i64 %n.vec1606, 1          ; 2 uses
  %i.etc = getelementptr i8, ptr %.11413.lcssa.i, i64 %i.etb
  %i.etd = getelementptr i8, ptr %.181563.lcssa.i, i64 %i.etb ; 2 uses
  %i.ete = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1598, i64 0
  br label %vec.epilog.vector.body1607

vec.epilog.vector.body1607:                       ; preds = %vec.epilog.vector.body1607, %vec.epilog.ph1605
  %index1608 = phi i64 [ %vec.epilog.resume.val1597, %vec.epilog.ph1605 ], [ %index.next1614, %vec.epilog.vector.body1607 ] ; 2 uses
  %vec.phi1609 = phi <8 x float> [ %i.ete, %vec.epilog.ph1605 ], [ %i.etn, %vec.epilog.vector.body1607 ]
  %i.etf = shl i64 %index1608, 1                  ; 2 uses
  %next.gep1610 = getelementptr i8, ptr %.11413.lcssa.i, i64 %i.etf
  %next.gep1611 = getelementptr i8, ptr %.181563.lcssa.i, i64 %i.etf
  %wide.load1612 = load <8 x i16>, ptr %next.gep1610, align 2, !tbaa !57
  %i.etg = zext <8 x i16> %wide.load1612 to <8 x i32>
  %i.eth = shl nuw <8 x i32> %i.etg, splat (i32 16)
  %i.eti = bitcast <8 x i32> %i.eth to <8 x float>
  %wide.load1613 = load <8 x i16>, ptr %next.gep1611, align 2, !tbaa !57
  %i.etj = zext <8 x i16> %wide.load1613 to <8 x i32>
  %i.etk = shl nuw <8 x i32> %i.etj, splat (i32 16)
  %i.etl = bitcast <8 x i32> %i.etk to <8 x float>
  %i.etm = fmul fast <8 x float> %i.etl, %i.eti
  %i.etn = fadd fast <8 x float> %i.etm, %vec.phi1609 ; 2 uses
  %index.next1614 = add nuw i64 %index1608, 8     ; 2 uses
  %i.eto = icmp eq i64 %index.next1614, %n.vec1606
  br i1 %i.eto, label %vec.epilog.middle.block1615, label %vec.epilog.vector.body1607, !llvm.loop !471

vec.epilog.middle.block1615:                      ; preds = %vec.epilog.vector.body1607
  %i.etp = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.etn) ; 2 uses
  %cmp.n1616 = icmp eq i64 %i.erc, %n.vec1606
  br i1 %cmp.n1616, label %._crit_edge1398.i, label %.lr.ph1397.i.preheader

.lr.ph1397.i.preheader:                           ; preds = %iter.check1601, %vec.epilog.iter.check1603, %vec.epilog.middle.block1615
  %.214081395.i.ph = phi i32 [ %.11407.lcssa.i, %iter.check1601 ], [ %i.erf, %vec.epilog.iter.check1603 ], [ %i.eta, %vec.epilog.middle.block1615 ]
  %.214111394.i.ph = phi float [ %.01379.lcssa.i, %iter.check1601 ], [ %i.esy, %vec.epilog.iter.check1603 ], [ %i.etp, %vec.epilog.middle.block1615 ]
  %.214141393.i.ph = phi ptr [ %.11413.lcssa.i, %iter.check1601 ], [ %i.erh, %vec.epilog.iter.check1603 ], [ %i.etc, %vec.epilog.middle.block1615 ]
  %.1915641392.i.ph = phi ptr [ %.181563.lcssa.i, %iter.check1601 ], [ %i.eri, %vec.epilog.iter.check1603 ], [ %i.etd, %vec.epilog.middle.block1615 ]
  br label %.lr.ph1397.i

.lr.ph1397.i:                                     ; preds = %.lr.ph1397.i.preheader, %.lr.ph1397.i
  %.214081395.i = phi i32 [ %i.euc, %.lr.ph1397.i ], [ %.214081395.i.ph, %.lr.ph1397.i.preheader ]
  %.214111394.i = phi float [ %i.etz, %.lr.ph1397.i ], [ %.214111394.i.ph, %.lr.ph1397.i.preheader ]
  %.214141393.i = phi ptr [ %i.eua, %.lr.ph1397.i ], [ %.214141393.i.ph, %.lr.ph1397.i.preheader ] ; 2 uses
  %.1915641392.i = phi ptr [ %i.eub, %.lr.ph1397.i ], [ %.1915641392.i.ph, %.lr.ph1397.i.preheader ] ; 2 uses
  %i.etq = load i16, ptr %.214141393.i, align 2, !tbaa !57
  %i.etr = zext i16 %i.etq to i32
  %i.ets = shl nuw i32 %i.etr, 16
  %i.ett = bitcast i32 %i.ets to float
  %i.etu = load i16, ptr %.1915641392.i, align 2, !tbaa !57
  %i.etv = zext i16 %i.etu to i32
  %i.etw = shl nuw i32 %i.etv, 16
  %i.etx = bitcast i32 %i.etw to float
  %i.ety = fmul fast float %i.etx, %i.ett
  %i.etz = fadd fast float %i.ety, %.214111394.i  ; 2 uses
end_hunk_2
