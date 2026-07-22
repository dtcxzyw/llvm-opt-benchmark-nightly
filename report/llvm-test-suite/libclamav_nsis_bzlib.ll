inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@nsis_BZ2_bzDecompress:bb.a
  store i32 %i.agl, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.agm = shl nuw i32 1, %i.agl
  %i.agn = and i32 %i.agm, %i.agk
  %i.ago = icmp eq i32 %i.agn, 0
  br i1 %i.ago, label %bb.dg, label %bb.df

bb.db:                                            ; preds = %bb.de, %.lr.ph1656.i
  %i.agp = phi i32 [ %.promoted1660.i, %.lr.ph1656.i ], [ %i.aha, %bb.de ] ; 2 uses
  %i.agq = phi i32 [ %.promoted1654.i829, %.lr.ph1656.i ], [ %i.agy, %bb.de ] ; 2 uses
  %i.agr = icmp eq i32 %i.agp, 0
  br i1 %i.agr, label %BZ2_decompress.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ags = load i32, ptr %i.v, align 8, !tbaa !21
  %i.agt = shl i32 %i.ags, 8
  %i.agu = load ptr, ptr %i.agg, align 8, !tbaa !77 ; 2 uses
  %i.agv = load i8, ptr %i.agu, align 1, !tbaa !34
  %i.agw = zext i8 %i.agv to i32
  %i.agx = or disjoint i32 %i.agt, %i.agw         ; 2 uses
  store i32 %i.agx, ptr %i.v, align 8, !tbaa !21
  %i.agy = add nsw i32 %i.agq, 8                  ; 3 uses
  store i32 %i.agy, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agu, i64 1
  store ptr %i.agz, ptr %i.agg, align 8, !tbaa !77
  %i.aha = add i32 %i.agp, -1                     ; 2 uses
  store i32 %i.aha, ptr %i.agh, align 8, !tbaa !76
  %i.ahb = load i32, ptr %i.agi, align 4, !tbaa !23
  %i.ahc = add i32 %i.ahb, 1                      ; 2 uses
  store i32 %i.ahc, ptr %i.agi, align 4, !tbaa !23
  %i.ahd = icmp eq i32 %i.ahc, 0
  br i1 %i.ahd, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ahe = load i32, ptr %i.agj, align 8, !tbaa !24
  %i.ahf = add i32 %i.ahe, 1
  store i32 %i.ahf, ptr %i.agj, align 8, !tbaa !24
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.ahg = icmp sgt i32 %i.agq, -8
  br i1 %i.ahg, label %._crit_edge1657.i, label %bb.db

bb.df:                                            ; preds = %._crit_edge1657.i
  %i.ahh = add nsw i32 %.8943.i, 1                ; 3 uses
  %.not1349.i = icmp slt i32 %i.ahh, %.31013.i.ph
  br i1 %.not1349.i, label %bb.da, label %BZ2_decompress.exit

bb.dg:                                            ; preds = %._crit_edge1657.i
  %i.ahi = trunc i32 %.8943.i to i8
  %i.ahj = sext i32 %.11.i.ph to i64
  %i.ahk = getelementptr inbounds i8, ptr %i.aa, i64 %i.ahj
  store i8 %i.ahi, ptr %i.ahk, align 1, !tbaa !34
  %i.ahl = add nsw i32 %.11.i.ph, 1
  br label %bb.cz, !llvm.loop !84

bb.dh:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ahm = icmp sgt i32 %.11011.i, 0
  br i1 %i.ahm, label %iter.check, label %.preheader1393.i

iter.check:                                       ; preds = %bb.dh
  %min.iters.check465 = icmp ult i32 %.11011.i, 4
  br i1 %min.iters.check465, label %.lr.ph1521.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ahn = add nsw i32 %.11011.i, -1              ; 2 uses
  %i.aho = and i32 %i.ahn, 255
  %i.ahp = icmp eq i32 %i.aho, 255
  %i.ahq = icmp ugt i32 %i.ahn, 255
  %i.ahr = or i1 %i.ahp, %i.ahq
  br i1 %i.ahr, label %.lr.ph1521.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check466 = icmp ult i32 %.11011.i, 32
  br i1 %min.iters.check466, label %vec.epilog.ph, label %vector.ph467

vector.ph467:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf468 = and i32 %.11011.i, 28
  %n.vec469 = and i32 %.11011.i, 480              ; 10 uses
  %i.ahs = trunc i32 %n.vec469 to i8              ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.a, align 16, !tbaa !34
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.aht, align 16, !tbaa !34
  %i.ahu = icmp eq i32 %n.vec469, 32
  br i1 %i.ahu, label %middle.block473, label %vector.body470.1

vector.body470.1:                                 ; preds = %vector.ph467
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.ahv, align 16, !tbaa !34
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.ahw, align 16, !tbaa !34
  %i.ahx = icmp eq i32 %n.vec469, 64
  br i1 %i.ahx, label %middle.block473, label %vector.body470.2

vector.body470.2:                                 ; preds = %vector.body470.1
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.ahy, align 16, !tbaa !34
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.ahz, align 16, !tbaa !34
  %i.aia = icmp eq i32 %n.vec469, 96
  br i1 %i.aia, label %middle.block473, label %vector.body470.3

vector.body470.3:                                 ; preds = %vector.body470.2
  %i.aib = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.aic = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.aib, align 16, !tbaa !34
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.aic, align 16, !tbaa !34
  %i.aid = icmp eq i32 %n.vec469, 128
  br i1 %i.aid, label %middle.block473, label %vector.body470.4

vector.body470.4:                                 ; preds = %vector.body470.3
  %i.aie = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aif = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.aie, align 16, !tbaa !34
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.aif, align 16, !tbaa !34
  %i.aig = icmp eq i32 %n.vec469, 160
  br i1 %i.aig, label %middle.block473, label %vector.body470.5

vector.body470.5:                                 ; preds = %vector.body470.4
  %i.aih = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.aii = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.aih, align 16, !tbaa !34
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.aii, align 16, !tbaa !34
  %i.aij = icmp eq i32 %n.vec469, 192
  br i1 %i.aij, label %middle.block473, label %vector.body470.6

vector.body470.6:                                 ; preds = %vector.body470.5
  %i.aik = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ail = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.aik, align 16, !tbaa !34
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.ail, align 16, !tbaa !34
  %i.aim = icmp eq i32 %n.vec469, 224
  br i1 %i.aim, label %middle.block473, label %vector.body470.7

vector.body470.7:                                 ; preds = %vector.body470.6
  %i.ain = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.aio = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.ain, align 16, !tbaa !34
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.aio, align 16, !tbaa !34
  br label %middle.block473

middle.block473:                                  ; preds = %vector.body470.7, %vector.body470.6, %vector.body470.5, %vector.body470.4, %vector.body470.3, %vector.body470.2, %vector.body470.1, %vector.ph467
  %cmp.n = icmp eq i32 %.11011.i, %n.vec469
  br i1 %cmp.n, label %.preheader1393.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block473
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf468, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1521.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec469, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val474 = phi i8 [ %i.ahs, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec476 = and i32 %.11011.i, 508              ; 3 uses
  %i.aip = trunc i32 %n.vec476 to i8
  %broadcast.splatinsert477 = insertelement <4 x i8> poison, i8 %bc.resume.val474, i64 0
  %broadcast.splat478 = shufflevector <4 x i8> %broadcast.splatinsert477, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i8> %broadcast.splat478, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index479 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next481, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind480 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next482, %vec.epilog.vector.body ] ; 2 uses
  %i.aiq = and i32 %index479, 252
  %i.air = zext nneg i32 %i.aiq to i64
  %i.ais = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.air
  store <4 x i8> %vec.ind480, ptr %i.ais, align 4, !tbaa !34
  %index.next481 = add nuw i32 %index479, 4       ; 2 uses
  %vec.ind.next482 = add <4 x i8> %vec.ind480, splat (i8 4)
  %i.ait = icmp eq i32 %index.next481, %n.vec476
  br i1 %i.ait, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n483 = icmp eq i32 %.11011.i, %n.vec476
  br i1 %cmp.n483, label %.preheader1393.i, label %.lr.ph1521.i.preheader

.lr.ph1521.i.preheader:                           ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010651519.i.ph = phi i8 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.ahs, %vec.epilog.iter.check ], [ %i.aip, %vec.epilog.middle.block ]
  br label %.lr.ph1521.i

.preheader1393.i:                                 ; preds = %.lr.ph1521.i, %middle.block473, %vec.epilog.middle.block, %bb.dh
  %i.aiu = icmp sgt i32 %.01032.i, 0
  br i1 %i.aiu, label %.lr.ph1528.i, label %._crit_edge1529.i

.lr.ph1528.i:                                     ; preds = %.preheader1393.i
  %wide.trip.count.i = zext nneg i32 %.01032.i to i64
  br label %bb.di

.lr.ph1521.i:                                     ; preds = %.lr.ph1521.i.preheader, %.lr.ph1521.i
  %.010651519.i = phi i8 [ %i.aix, %.lr.ph1521.i ], [ %.010651519.i.ph, %.lr.ph1521.i.preheader ] ; 3 uses
  %i.aiv = zext i8 %.010651519.i to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aiv
  store i8 %.010651519.i, ptr %i.aiw, align 1, !tbaa !34
  %i.aix = add i8 %.010651519.i, 1                ; 2 uses
  %i.aiy = zext i8 %i.aix to i32
  %i.aiz = icmp samesign ugt i32 %.11011.i, %i.aiy
  br i1 %i.aiz, label %.lr.ph1521.i, label %.preheader1393.i, !llvm.loop !87

bb.di:                                            ; preds = %._crit_edge1526.i, %.lr.ph1528.i
  %indvars.iv1737.i = phi i64 [ 0, %.lr.ph1528.i ], [ %indvars.iv.next1738.i, %._crit_edge1526.i ] ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv1737.i
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !34 ; 7 uses
  %i.ajc = zext i8 %i.ajb to i64                  ; 27 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajc
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !34 ; 2 uses
  %.not13481522.i = icmp eq i8 %i.ajb, 0
  br i1 %.not13481522.i, label %._crit_edge1526.i, label %iter.check501

iter.check501:                                    ; preds = %bb.di
  %min.iters.check487 = icmp ult i8 %i.ajb, 4
  br i1 %min.iters.check487, label %.lr.ph1525.i.preheader, label %vector.scevcheck485

vector.scevcheck485:                              ; preds = %iter.check501
  %i.ajf = add i8 %i.ajb, -1
  %i.ajg = zext i8 %i.ajb to i32
  %i.ajh = add nsw i32 %i.ajg, -1
  %i.aji = zext i8 %i.ajf to i32
  %i.ajj = icmp ult i32 %i.ajh, %i.aji
  br i1 %i.ajj, label %.lr.ph1525.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck485
  %1 = zext i8 %i.ajb to i64
  %2 = add nuw nsw i64 %1, 4294967295
  %3 = and i64 %2, 4294967295
  %4 = sub nsw i64 %i.ajc, %3
  %diff.check = icmp ugt i64 %4, -32
  br i1 %diff.check, label %.lr.ph1525.i.preheader, label %vector.main.loop.iter.check488

vector.main.loop.iter.check488:                   ; preds = %vector.memcheck
  %min.iters.check489 = icmp ult i8 %i.ajb, 32
  br i1 %min.iters.check489, label %vec.epilog.ph505, label %vector.ph490

vector.ph490:                                     ; preds = %vector.main.loop.iter.check488
  %n.mod.vf491 = and i64 %i.ajc, 28
  %n.vec492 = and i64 %i.ajc, 224                 ; 8 uses
  %i.ajk = and i64 %i.ajc, 31
  %i.ajl = add nuw nsw i64 %i.ajc, 4294967295
  %i.ajm = and i64 %i.ajl, 4294967295
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajm ; 2 uses
  %i.ajo = getelementptr inbounds i8, ptr %i.ajn, i64 -15
  %i.ajp = getelementptr inbounds i8, ptr %i.ajn, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ajo, align 1, !tbaa !34
  %wide.load495 = load <16 x i8>, ptr %i.ajp, align 1, !tbaa !34
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.ajr = getelementptr inbounds i8, ptr %i.ajq, i64 -15
  %i.ajs = getelementptr inbounds i8, ptr %i.ajq, i64 -31
  store <16 x i8> %wide.load, ptr %i.ajr, align 1, !tbaa !34
  store <16 x i8> %wide.load495, ptr %i.ajs, align 1, !tbaa !34
  %i.ajt = icmp eq i64 %n.vec492, 32
  br i1 %i.ajt, label %middle.block497, label %vector.body493.1

vector.body493.1:                                 ; preds = %vector.ph490
  %i.aju = add nuw nsw i64 %i.ajc, 4294967263
  %i.ajv = and i64 %i.aju, 4294967295
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajv ; 2 uses
  %i.ajx = getelementptr inbounds i8, ptr %i.ajw, i64 -15
  %i.ajy = getelementptr inbounds i8, ptr %i.ajw, i64 -31
  %wide.load.1 = load <16 x i8>, ptr %i.ajx, align 1, !tbaa !34
  %wide.load495.1 = load <16 x i8>, ptr %i.ajy, align 1, !tbaa !34
  %i.ajz = getelementptr i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.aka = getelementptr i8, ptr %i.ajz, i64 -47
  %i.akb = getelementptr i8, ptr %i.ajz, i64 -63
  store <16 x i8> %wide.load.1, ptr %i.aka, align 1, !tbaa !34
  store <16 x i8> %wide.load495.1, ptr %i.akb, align 1, !tbaa !34
  %i.akc = icmp eq i64 %n.vec492, 64
  br i1 %i.akc, label %middle.block497, label %vector.body493.2

vector.body493.2:                                 ; preds = %vector.body493.1
  %i.akd = add nuw nsw i64 %i.ajc, 4294967231
  %i.ake = and i64 %i.akd, 4294967295
  %i.akf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ake ; 2 uses
  %i.akg = getelementptr inbounds i8, ptr %i.akf, i64 -15
  %i.akh = getelementptr inbounds i8, ptr %i.akf, i64 -31
  %wide.load.2 = load <16 x i8>, ptr %i.akg, align 1, !tbaa !34
  %wide.load495.2 = load <16 x i8>, ptr %i.akh, align 1, !tbaa !34
  %i.aki = getelementptr i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.akj = getelementptr i8, ptr %i.aki, i64 -79
  %i.akk = getelementptr i8, ptr %i.aki, i64 -95
  store <16 x i8> %wide.load.2, ptr %i.akj, align 1, !tbaa !34
  store <16 x i8> %wide.load495.2, ptr %i.akk, align 1, !tbaa !34
  %i.akl = icmp eq i64 %n.vec492, 96
  br i1 %i.akl, label %middle.block497, label %vector.body493.3

vector.body493.3:                                 ; preds = %vector.body493.2
  %i.akm = add nuw nsw i64 %i.ajc, 4294967199
  %i.akn = and i64 %i.akm, 4294967295
  %i.ako = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.akn ; 2 uses
  %i.akp = getelementptr inbounds i8, ptr %i.ako, i64 -15
  %i.akq = getelementptr inbounds i8, ptr %i.ako, i64 -31
  %wide.load.3 = load <16 x i8>, ptr %i.akp, align 1, !tbaa !34
  %wide.load495.3 = load <16 x i8>, ptr %i.akq, align 1, !tbaa !34
  %i.akr = getelementptr i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.aks = getelementptr i8, ptr %i.akr, i64 -111
  %i.akt = getelementptr i8, ptr %i.akr, i64 -127
  store <16 x i8> %wide.load.3, ptr %i.aks, align 1, !tbaa !34
  store <16 x i8> %wide.load495.3, ptr %i.akt, align 1, !tbaa !34
  %i.aku = icmp eq i64 %n.vec492, 128
  br i1 %i.aku, label %middle.block497, label %vector.body493.4

vector.body493.4:                                 ; preds = %vector.body493.3
  %i.akv = add nuw nsw i64 %i.ajc, 4294967167
  %i.akw = and i64 %i.akv, 4294967295
  %i.akx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.akw ; 2 uses
  %i.aky = getelementptr inbounds i8, ptr %i.akx, i64 -15
  %i.akz = getelementptr inbounds i8, ptr %i.akx, i64 -31
  %wide.load.4 = load <16 x i8>, ptr %i.aky, align 1, !tbaa !34
  %wide.load495.4 = load <16 x i8>, ptr %i.akz, align 1, !tbaa !34
  %i.ala = getelementptr i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.alb = getelementptr i8, ptr %i.ala, i64 -143
  %i.alc = getelementptr i8, ptr %i.ala, i64 -159
  store <16 x i8> %wide.load.4, ptr %i.alb, align 1, !tbaa !34
  store <16 x i8> %wide.load495.4, ptr %i.alc, align 1, !tbaa !34
  %i.ald = icmp eq i64 %n.vec492, 160
  br i1 %i.ald, label %middle.block497, label %vector.body493.5

vector.body493.5:                                 ; preds = %vector.body493.4
  %i.ale = add nuw nsw i64 %i.ajc, 4294967135
  %i.alf = and i64 %i.ale, 4294967295
  %i.alg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alf ; 2 uses
  %i.alh = getelementptr inbounds i8, ptr %i.alg, i64 -15
  %i.ali = getelementptr inbounds i8, ptr %i.alg, i64 -31
  %wide.load.5 = load <16 x i8>, ptr %i.alh, align 1, !tbaa !34
  %wide.load495.5 = load <16 x i8>, ptr %i.ali, align 1, !tbaa !34
  %i.alj = getelementptr i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.alk = getelementptr i8, ptr %i.alj, i64 -175
  %i.all = getelementptr i8, ptr %i.alj, i64 -191
  store <16 x i8> %wide.load.5, ptr %i.alk, align 1, !tbaa !34
  store <16 x i8> %wide.load495.5, ptr %i.all, align 1, !tbaa !34
  %i.alm = icmp eq i64 %n.vec492, 192
  br i1 %i.alm, label %middle.block497, label %vector.body493.6

vector.body493.6:                                 ; preds = %vector.body493.5
  %i.aln = add nuw nsw i64 %i.ajc, 4294967103
  %i.alo = and i64 %i.aln, 4294967295
  %i.alp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alo ; 2 uses
  %i.alq = getelementptr inbounds i8, ptr %i.alp, i64 -15
  %i.alr = getelementptr inbounds i8, ptr %i.alp, i64 -31
  %wide.load.6 = load <16 x i8>, ptr %i.alq, align 1, !tbaa !34
  %wide.load495.6 = load <16 x i8>, ptr %i.alr, align 1, !tbaa !34
  %i.als = getelementptr i8, ptr %i.a, i64 %i.ajc ; 2 uses
  %i.alt = getelementptr i8, ptr %i.als, i64 -207
  %i.alu = getelementptr i8, ptr %i.als, i64 -223
  store <16 x i8> %wide.load.6, ptr %i.alt, align 1, !tbaa !34
  store <16 x i8> %wide.load495.6, ptr %i.alu, align 1, !tbaa !34
  br label %middle.block497

middle.block497:                                  ; preds = %vector.body493.6, %vector.body493.5, %vector.body493.4, %vector.body493.3, %vector.body493.2, %vector.body493.1, %vector.ph490
  %cmp.n498 = icmp eq i64 %n.vec492, %i.ajc
  br i1 %cmp.n498, label %._crit_edge1526.i, label %vec.epilog.iter.check503

vec.epilog.iter.check503:                         ; preds = %middle.block497
  %min.epilog.iters.check504 = icmp eq i64 %n.mod.vf491, 0
  br i1 %min.epilog.iters.check504, label %.lr.ph1525.i.preheader, label %vec.epilog.ph505, !prof !85

vec.epilog.ph505:                                 ; preds = %vector.main.loop.iter.check488, %vec.epilog.iter.check503
  %vec.epilog.resume.val499 = phi i64 [ %n.vec492, %vec.epilog.iter.check503 ], [ 0, %vector.main.loop.iter.check488 ]
  %n.vec507 = and i64 %i.ajc, 252                 ; 2 uses
  %i.alv = and i64 %i.ajc, 3
  br label %vec.epilog.vector.body508

vec.epilog.vector.body508:                        ; preds = %vec.epilog.vector.body508, %vec.epilog.ph505
  %index509 = phi i64 [ %vec.epilog.resume.val499, %vec.epilog.ph505 ], [ %index.next511, %vec.epilog.vector.body508 ] ; 2 uses
  %i.alw = sub i64 %i.ajc, %index509              ; 2 uses
  %i.alx = add nuw nsw i64 %i.alw, 4294967295
  %i.aly = and i64 %i.alx, 4294967295
  %i.alz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aly
  %i.ama = getelementptr inbounds i8, ptr %i.alz, i64 -3
  %wide.load510 = load <4 x i8>, ptr %i.ama, align 1, !tbaa !34
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alw
  %i.amc = getelementptr inbounds i8, ptr %i.amb, i64 -3
  store <4 x i8> %wide.load510, ptr %i.amc, align 1, !tbaa !34
  %index.next511 = add nuw i64 %index509, 4       ; 2 uses
  %i.amd = icmp eq i64 %index.next511, %n.vec507
  br i1 %i.amd, label %vec.epilog.middle.block512, label %vec.epilog.vector.body508, !llvm.loop !88

vec.epilog.middle.block512:                       ; preds = %vec.epilog.vector.body508
  %cmp.n513 = icmp eq i64 %n.vec507, %i.ajc
  br i1 %cmp.n513, label %._crit_edge1526.i, label %.lr.ph1525.i.preheader

.lr.ph1525.i.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck485, %iter.check501, %vec.epilog.iter.check503, %vec.epilog.middle.block512
  %indvars.iv.i.ph = phi i64 [ %i.ajc, %iter.check501 ], [ %i.ajc, %vector.scevcheck485 ], [ %i.ajc, %vector.memcheck ], [ %i.ajk, %vec.epilog.iter.check503 ], [ %i.alv, %vec.epilog.middle.block512 ] ; 6 uses
  %i.ame = trunc nuw i64 %indvars.iv.i.ph to i8
  %xtraiter = and i8 %i.ame, 1
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1525.i.prol.loopexit, label %.lr.ph1525.i.prol

.lr.ph1525.i.prol:                                ; preds = %.lr.ph1525.i.preheader
  %i.amf = add nuw nsw i64 %indvars.iv.i.ph, 4294967295
  %i.amg = and i64 %i.amf, 4294967295
  %i.amh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amg
  %i.ami = load i8, ptr %i.amh, align 1, !tbaa !34
  %i.amj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.ph
  store i8 %i.ami, ptr %i.amj, align 1, !tbaa !34
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.ph, -1
  br label %.lr.ph1525.i.prol.loopexit

.lr.ph1525.i.prol.loopexit:                       ; preds = %.lr.ph1525.i.prol, %.lr.ph1525.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph1525.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph1525.i.prol ]
  %i.amk = icmp eq i64 %indvars.iv.i.ph, 1
  br i1 %i.amk, label %._crit_edge1526.i, label %.lr.ph1525.i

.lr.ph1525.i:                                     ; preds = %.lr.ph1525.i.prol.loopexit, %.lr.ph1525.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph1525.i ], [ %indvars.iv.i.unr, %.lr.ph1525.i.prol.loopexit ] ; 5 uses
  %i.aml = add nuw nsw i64 %indvars.iv.i, 4294967295
  %i.amm = and i64 %i.aml, 4294967295
  %i.amn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amm
  %i.amo = load i8, ptr %i.amn, align 1, !tbaa !34
  %i.amp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.amo, ptr %i.amp, align 1, !tbaa !34
  %i.amq = add nsw i64 %indvars.iv.i, 4294967294
  %i.amr = and i64 %i.amq, 4294967295
  %i.ams = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amr
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !34
  %i.amu = getelementptr i8, ptr %i.a, i64 %indvars.iv.i
  %i.amv = getelementptr i8, ptr %i.amu, i64 -1
  store i8 %i.amt, ptr %i.amv, align 1, !tbaa !34
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.amw = and i64 %indvars.iv.next.i.1, 255
  %.not1348.i.1 = icmp eq i64 %i.amw, 0
  br i1 %.not1348.i.1, label %._crit_edge1526.i, label %.lr.ph1525.i, !llvm.loop !89

._crit_edge1526.i:                                ; preds = %.lr.ph1525.i.prol.loopexit, %.lr.ph1525.i, %middle.block497, %vec.epilog.middle.block512, %bb.di
  store i8 %i.aje, ptr %i.a, align 16, !tbaa !34
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv1737.i
  store i8 %i.aje, ptr %i.amx, align 1, !tbaa !34
  %indvars.iv.next1738.i = add nuw nsw i64 %indvars.iv1737.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next1738.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge1529.i, label %bb.di, !llvm.loop !90

._crit_edge1529.i:                                ; preds = %._crit_edge1526.i, %.preheader1393.i
  %.12.lcssa.i = phi i32 [ 0, %.preheader1393.i ], [ %.01032.i, %._crit_edge1526.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.ec, %._crit_edge1529.i
  %i.amy = phi i32 [ %i.afm, %._crit_edge1529.i ], [ %i.apm, %bb.ec ]
  %i.amz = phi i32 [ %i.afn, %._crit_edge1529.i ], [ %i.apn, %bb.ec ]
  %i.ana = phi i32 [ %i.afo, %._crit_edge1529.i ], [ %i.apo, %bb.ec ]
  %i.anb = phi i32 [ %i.afp, %._crit_edge1529.i ], [ %i.app, %bb.ec ] ; 3 uses
  %i.anc = phi i32 [ %i.afq, %._crit_edge1529.i ], [ %i.apq, %bb.ec ]
  %i.and = phi i32 [ %i.afr, %._crit_edge1529.i ], [ %i.apr, %bb.ec ]
  %i.ane = phi i32 [ %i.afs, %._crit_edge1529.i ], [ %i.aps, %bb.ec ] ; 3 uses
  %i.anf = phi i32 [ %i.aft, %._crit_edge1529.i ], [ %i.apt, %bb.ec ] ; 3 uses
  %i.ang = phi i32 [ %i.afv, %._crit_edge1529.i ], [ %i.apu, %bb.ec ] ; 3 uses
  %i.anh = phi i32 [ %i.afw, %._crit_edge1529.i ], [ %i.apv, %bb.ec ] ; 2 uses
  %i.ani = phi i32 [ %i.afx, %._crit_edge1529.i ], [ %i.apw, %bb.ec ] ; 3 uses
  %i.anj = phi i32 [ %i.afy, %._crit_edge1529.i ], [ %i.apx, %bb.ec ] ; 3 uses
  %i.ank = phi i32 [ %i.afz, %._crit_edge1529.i ], [ %i.apy, %bb.ec ] ; 2 uses
  %i.anl = phi i32 [ %i.aga, %._crit_edge1529.i ], [ %i.apz, %bb.ec ] ; 2 uses
  %i.anm = phi ptr [ %i.agb, %._crit_edge1529.i ], [ %i.aqa, %bb.ec ] ; 2 uses
  %i.ann = phi ptr [ %i.agc, %._crit_edge1529.i ], [ %i.aqb, %bb.ec ] ; 2 uses
  %i.ano = phi ptr [ %i.agd, %._crit_edge1529.i ], [ %i.aqc, %bb.ec ] ; 2 uses
  %.01155.i = phi i32 [ %i.afu, %._crit_edge1529.i ], [ %.21157.i, %bb.ec ] ; 3 uses
  %.31035.i = phi i32 [ %.01032.i, %._crit_edge1529.i ], [ %.51037.i, %bb.ec ] ; 4 uses
  %.41014.i = phi i32 [ %.11011.i, %._crit_edge1529.i ], [ %.61016.i, %bb.ec ] ; 7 uses
  %.5988.i = phi i32 [ %.2985.i, %._crit_edge1529.i ], [ %.7990.i, %bb.ec ] ; 9 uses
  %.0964.i = phi i32 [ 0, %._crit_edge1529.i ], [ %i.auo, %bb.ec ] ; 2 uses
  %.9944.i = phi i32 [ %.6941.i, %._crit_edge1529.i ], [ %.11946.i, %bb.ec ] ; 3 uses
  %.13.i = phi i32 [ %.12.lcssa.i, %._crit_edge1529.i ], [ %.15.i, %bb.ec ]
  %i.anp = icmp slt i32 %.0964.i, %.41014.i
  br i1 %i.anp, label %bb.dk, label %.preheader1392.i

.preheader1392.i:                                 ; preds = %bb.dj
  %i.anq = icmp sgt i32 %.41014.i, 0
  br i1 %i.anq, label %.preheader1391.lr.ph.i, label %._crit_edge1539.i

.preheader1391.lr.ph.i:                           ; preds = %.preheader1392.i
  %i.anr = icmp sgt i32 %.5988.i, 0
  %wide.trip.count.i.i = zext i32 %.5988.i to i64 ; 7 uses
  %wide.trip.count1751.i = zext nneg i32 %.41014.i to i64
  %min.iters.check529 = icmp ult i32 %.5988.i, 8
  %n.vec532 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n543 = icmp eq i64 %n.vec532, %wide.trip.count.i.i
  %xtraiter720 = and i64 %wide.trip.count.i.i, 1
  %i.ans = icmp eq i32 %.5988.i, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  %lcmp.mod721.not = icmp eq i64 %xtraiter720, 0
  %lcmp.mod723 = trunc i32 %.5988.i to i1
  %xtraiter724 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.ant = icmp ult i32 %.5988.i, 4
  %unroll_iter727 = and i64 %wide.trip.count.i.i, 2147483644
  %lcmp.mod725.not = icmp eq i64 %xtraiter724, 0
  %lcmp.mod726 = icmp ne i64 %xtraiter724, 0
  br label %.preheader1391.i

bb.dk:                                            ; preds = %bb.dj, %bb.at
  %i.anu = phi i32 [ %i.amy, %bb.dj ], [ %.pre1854.i, %bb.at ] ; 2 uses
  %i.anv = phi i32 [ %i.amz, %bb.dj ], [ %.pre1856.i, %bb.at ] ; 2 uses
  %i.anw = phi i32 [ %i.ana, %bb.dj ], [ %.pre1858.i, %bb.at ] ; 2 uses
  %i.anx = phi i32 [ %i.anb, %bb.dj ], [ %.pre1860.i, %bb.at ] ; 2 uses
  %i.any = phi i32 [ %i.anc, %bb.dj ], [ %.pre1862.i, %bb.at ] ; 2 uses
  %i.anz = phi i32 [ %i.and, %bb.dj ], [ %.pre1864.i, %bb.at ] ; 2 uses
  %i.aoa = phi i32 [ %i.ane, %bb.dj ], [ %.pre1866.i, %bb.at ] ; 2 uses
  %i.aob = phi i32 [ %i.anf, %bb.dj ], [ %.pre1868.i, %bb.at ] ; 2 uses
  %i.aoc = phi i32 [ %i.ang, %bb.dj ], [ %.pre1872.i, %bb.at ] ; 2 uses
  %i.aod = phi i32 [ %i.anh, %bb.dj ], [ %.pre1874.i, %bb.at ] ; 2 uses
  %i.aoe = phi i32 [ %i.ani, %bb.dj ], [ %.pre1876.i, %bb.at ] ; 2 uses
  %i.aof = phi i32 [ %i.anj, %bb.dj ], [ %.pre1878.i, %bb.at ] ; 2 uses
  %i.aog = phi i32 [ %i.ank, %bb.dj ], [ %.pre1880.i, %bb.at ] ; 2 uses
  %i.aoh = phi i32 [ %i.anl, %bb.dj ], [ %.pre1882.i, %bb.at ] ; 2 uses
  %i.aoi = phi ptr [ %i.anm, %bb.dj ], [ %.pre1884.i, %bb.at ] ; 2 uses
  %i.aoj = phi ptr [ %i.ann, %bb.dj ], [ %.pre1886.i, %bb.at ] ; 2 uses
  %i.aok = phi ptr [ %i.ano, %bb.dj ], [ %.pre1888.i, %bb.at ] ; 2 uses
  %.11156.i = phi i32 [ %.01155.i, %bb.dj ], [ %.pre1870.i, %bb.at ]
  %.41036.i = phi i32 [ %.31035.i, %bb.dj ], [ %.pre1852.i, %bb.at ] ; 2 uses
  %.51015.i = phi i32 [ %.41014.i, %bb.dj ], [ %.pre1850.i, %bb.at ] ; 2 uses
  %.6989.i = phi i32 [ %.5988.i, %bb.dj ], [ %.pre1848.i, %bb.at ] ; 2 uses
  %.1965.i = phi i32 [ %.0964.i, %bb.dj ], [ %.pre1846.i, %bb.at ] ; 2 uses
  %.10945.i = phi i32 [ %.9944.i, %bb.dj ], [ %.pre1844.i, %bb.at ] ; 2 uses
  %.14.i = phi i32 [ %.13.i, %bb.dj ], [ %.pre.i36, %bb.at ]
  store i32 33, ptr %i.g, align 8, !tbaa !19
  %.promoted1633.i = load i32, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20 ; 3 uses
  %i.aol = icmp sgt i32 %.promoted1633.i, 4
  br i1 %i.aol, label %.._crit_edge1636_crit_edge.i, label %.lr.ph1635.i

.._crit_edge1636_crit_edge.i:                     ; preds = %bb.dk
  %.pre1946.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1636.i

.lr.ph1635.i:                                     ; preds = %bb.dk
  %i.aom = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 8 ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aom, i64 12 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aom, i64 16 ; 2 uses
  %.promoted1639.i = load i32, ptr %i.aon, align 8, !tbaa !76
  br label %bb.dl

._crit_edge1636.i:                                ; preds = %bb.do, %.._crit_edge1636_crit_edge.i
  %i.aoq = phi i32 [ %.pre1946.i, %.._crit_edge1636_crit_edge.i ], [ %i.apc, %bb.do ]
  %.lcssa1421.i = phi i32 [ %.promoted1633.i, %.._crit_edge1636_crit_edge.i ], [ %i.apd, %bb.do ]
  %i.aor = add nsw i32 %.lcssa1421.i, -5          ; 2 uses
  %i.aos = lshr i32 %i.aoq, %i.aor
  %i.aot = and i32 %i.aos, 31
  store i32 %i.aor, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  br label %bb.dp

bb.dl:                                            ; preds = %bb.do, %.lr.ph1635.i
  %i.aou = phi i32 [ %.promoted1639.i, %.lr.ph1635.i ], [ %i.apf, %bb.do ] ; 2 uses
  %i.aov = phi i32 [ %.promoted1633.i, %.lr.ph1635.i ], [ %i.apd, %bb.do ] ; 2 uses
  %i.aow = icmp eq i32 %i.aou, 0
  br i1 %i.aow, label %BZ2_decompress.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aox = load i32, ptr %i.v, align 8, !tbaa !21
  %i.aoy = shl i32 %i.aox, 8
  %i.aoz = load ptr, ptr %i.aom, align 8, !tbaa !77 ; 2 uses
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !34
  %i.apb = zext i8 %i.apa to i32
  %i.apc = or disjoint i32 %i.aoy, %i.apb         ; 2 uses
  store i32 %i.apc, ptr %i.v, align 8, !tbaa !21
  %i.apd = add nsw i32 %i.aov, 8                  ; 3 uses
  store i32 %i.apd, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoz, i64 1
  store ptr %i.ape, ptr %i.aom, align 8, !tbaa !77
  %i.apf = add i32 %i.aou, -1                     ; 2 uses
  store i32 %i.apf, ptr %i.aon, align 8, !tbaa !76
  %i.apg = load i32, ptr %i.aoo, align 4, !tbaa !23
  %i.aph = add i32 %i.apg, 1                      ; 2 uses
  store i32 %i.aph, ptr %i.aoo, align 4, !tbaa !23
  %i.api = icmp eq i32 %i.aph, 0
  br i1 %i.api, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.apj = load i32, ptr %i.aop, align 8, !tbaa !24
  %i.apk = add i32 %i.apj, 1
  store i32 %i.apk, ptr %i.aop, align 8, !tbaa !24
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.apl = icmp sgt i32 %i.aov, -4
  br i1 %i.apl, label %._crit_edge1636.i, label %bb.dl

bb.dp:                                            ; preds = %bb.eb, %._crit_edge1636.i
  %i.apm = phi i32 [ %i.anu, %._crit_edge1636.i ], [ %i.aqw, %bb.eb ] ; 2 uses
  %i.apn = phi i32 [ %i.anv, %._crit_edge1636.i ], [ %i.aqx, %bb.eb ] ; 2 uses
  %i.apo = phi i32 [ %i.anw, %._crit_edge1636.i ], [ %i.aqy, %bb.eb ] ; 2 uses
  %i.app = phi i32 [ %i.anx, %._crit_edge1636.i ], [ %i.aqz, %bb.eb ] ; 2 uses
  %i.apq = phi i32 [ %i.any, %._crit_edge1636.i ], [ %i.ara, %bb.eb ] ; 2 uses
  %i.apr = phi i32 [ %i.anz, %._crit_edge1636.i ], [ %i.arb, %bb.eb ] ; 2 uses
  %i.aps = phi i32 [ %i.aoa, %._crit_edge1636.i ], [ %i.arc, %bb.eb ] ; 2 uses
  %i.apt = phi i32 [ %i.aob, %._crit_edge1636.i ], [ %i.ard, %bb.eb ] ; 2 uses
end_hunk_0
