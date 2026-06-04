inline.NumInlined: 2245
inline.NumDeleted: 444
begin_hunk_0_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.bis = add nuw nsw i32 %.02223.i.i358, 12     ; 2 uses
  %i.bit = add nuw nsw i32 %.02223.i.i358, 8
  %i.biu = lshr i32 %i.bit, 3
  %i.biv = sub nsw i32 %i.biu, %i.bir             ; 2 uses
  %i.biw = add nsw i32 %i.biv, 1
  %i.bix = icmp slt i32 %i.biv, 2
  tail call void @llvm.assume(i1 %i.bix)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 0, ptr %i.al, align 8, !tbaa !17
  %i.biy = zext nneg i32 %i.bir to i64
  %i.biz = getelementptr inbounds nuw i8, ptr %.025.lcssa.i354, i64 %i.biy
  %i.bja = sext i32 %i.biw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 1 %i.biz, i64 %i.bja, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i359 = load i64, ptr %i.al, align 8, !tbaa !17
  %i.bjb = and i32 %.02223.i.i358, 4
  %i.bjc = zext nneg i32 %i.bjb to i64
  %i.bjd = lshr i64 %.0..0..0..0..0..0..0..0..i29.i359, %i.bjc
  %i.bje = trunc i64 %i.bjd to i32
  %i.bjf = and i32 %i.bje, 4095
  store i32 %i.bjf, ptr %.024.i.i357, align 4, !tbaa !3
  %i.bjg = getelementptr inbounds nuw i8, ptr %.024.i.i357, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.bjh = icmp samesign ult i32 %i.bis, %i.biq
  br i1 %i.bjh, label %.lr.ph.i28.i356, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !136

.lr.ph.i360:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i360
  %.032.i361 = phi i32 [ %i.bms, %.lr.ph.i360 ], [ 0, %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i362 = phi ptr [ %i.bmq, %.lr.ph.i360 ], [ %i.bii, %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i ] ; 13 uses
  %.02630.i363 = phi ptr [ %i.bmr, %.lr.ph.i360 ], [ %i.bik, %_ZN5arrow8internal12unpack_exactILi12ELb1EjEEiPKhPT1_ii.exit.i ] ; 9 uses
  %.val94.i.i364 = load i32, ptr %.02531.i362, align 1 ; 3 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 4
  %i.bjj = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 8
  %i.bjk = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 12
  %.val91.i.i367 = load i32, ptr %i.bjk, align 1  ; 3 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 16
  %i.bjm = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 20
  %i.bjn = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 24
  %.val88.i.i370 = load i32, ptr %i.bjn, align 1  ; 3 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 28
  %i.bjp = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 32
  %i.bjq = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 36
  %.val85.i.i373 = load i32, ptr %i.bjq, align 1  ; 3 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 40
  %i.bjs = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 44
  %i.bjt = lshr i32 %.val94.i.i364, 12
  %i.bju = insertelement <4 x i32> poison, i32 %.val94.i.i364, i64 0
  %i.bjv = insertelement <4 x i32> %i.bju, i32 %i.bjt, i64 1
  %i.bjw = getelementptr inbounds nuw i8, ptr %.02630.i363, i64 16
  %.val92.i.i366 = load i32, ptr %i.bjj, align 1  ; 3 uses
  %.val93.i.i365 = load i32, ptr %i.bji, align 1  ; 4 uses
  %i.bjx = tail call i32 @llvm.fshl.i32(i32 %.val93.i.i365, i32 %.val94.i.i364, i32 8)
  %i.bjy = lshr i32 %.val93.i.i365, 4
  %i.bjz = insertelement <4 x i32> %i.bjv, i32 %i.bjx, i64 2
  %i.bka = insertelement <4 x i32> %i.bjz, i32 %i.bjy, i64 3
  %i.bkb = and <4 x i32> %i.bka, splat (i32 4095)
  %i.bkc = tail call i32 @llvm.fshl.i32(i32 %.val92.i.i366, i32 %.val93.i.i365, i32 4)
  %i.bkd = lshr i32 %.val92.i.i366, 20
  %i.bke = lshr i32 %.val92.i.i366, 8
  %i.bkf = lshr i32 %.val93.i.i365, 16
  %i.bkg = insertelement <4 x i32> poison, i32 %i.bkf, i64 0
  %i.bkh = insertelement <4 x i32> %i.bkg, i32 %i.bkc, i64 1
  %i.bki = insertelement <4 x i32> %i.bkh, i32 %i.bke, i64 2
  %i.bkj = insertelement <4 x i32> %i.bki, i32 %i.bkd, i64 3
  %i.bkk = and <4 x i32> %i.bkj, <i32 4095, i32 4095, i32 4095, i32 -1>
  %i.bkl = getelementptr inbounds nuw i8, ptr %.02630.i363, i64 32
  %i.bkm = lshr i32 %.val91.i.i367, 12
  %i.bkn = insertelement <4 x i32> poison, i32 %.val91.i.i367, i64 0
  %i.bko = insertelement <4 x i32> %i.bkn, i32 %i.bkm, i64 1
  %i.bkp = getelementptr inbounds nuw i8, ptr %.02630.i363, i64 48
  %.val89.i.i369 = load i32, ptr %i.bjm, align 1  ; 3 uses
  %.val90.i.i368 = load i32, ptr %i.bjl, align 1  ; 4 uses
  %i.bkq = tail call i32 @llvm.fshl.i32(i32 %.val90.i.i368, i32 %.val91.i.i367, i32 8)
  %i.bkr = lshr i32 %.val90.i.i368, 4
  %i.bks = insertelement <4 x i32> %i.bko, i32 %i.bkq, i64 2
  %i.bkt = insertelement <4 x i32> %i.bks, i32 %i.bkr, i64 3
  %i.bku = and <4 x i32> %i.bkt, splat (i32 4095)
  %i.bkv = tail call i32 @llvm.fshl.i32(i32 %.val89.i.i369, i32 %.val90.i.i368, i32 4)
  %i.bkw = lshr i32 %.val89.i.i369, 20
  %i.bkx = lshr i32 %.val89.i.i369, 8
  %i.bky = lshr i32 %.val90.i.i368, 16
  %i.bkz = insertelement <4 x i32> poison, i32 %i.bky, i64 0
  %i.bla = insertelement <4 x i32> %i.bkz, i32 %i.bkv, i64 1
  %i.blb = insertelement <4 x i32> %i.bla, i32 %i.bkx, i64 2
  %i.blc = insertelement <4 x i32> %i.blb, i32 %i.bkw, i64 3
  %i.bld = and <4 x i32> %i.blc, <i32 4095, i32 4095, i32 4095, i32 -1>
  %i.ble = getelementptr inbounds nuw i8, ptr %.02630.i363, i64 64
  %i.blf = lshr i32 %.val88.i.i370, 12
  %i.blg = insertelement <4 x i32> poison, i32 %.val88.i.i370, i64 0
  %i.blh = insertelement <4 x i32> %i.blg, i32 %i.blf, i64 1
  %i.bli = getelementptr inbounds nuw i8, ptr %.02630.i363, i64 80
  %.val86.i.i372 = load i32, ptr %i.bjp, align 1  ; 3 uses
  %.val87.i.i371 = load i32, ptr %i.bjo, align 1  ; 4 uses
  %i.blj = tail call i32 @llvm.fshl.i32(i32 %.val87.i.i371, i32 %.val88.i.i370, i32 8)
  %i.blk = lshr i32 %.val87.i.i371, 4
  %i.bll = insertelement <4 x i32> %i.blh, i32 %i.blj, i64 2
  %i.blm = insertelement <4 x i32> %i.bll, i32 %i.blk, i64 3
  %i.bln = and <4 x i32> %i.blm, splat (i32 4095)
  %i.blo = tail call i32 @llvm.fshl.i32(i32 %.val86.i.i372, i32 %.val87.i.i371, i32 4)
  %i.blp = lshr i32 %.val86.i.i372, 20
  %i.blq = lshr i32 %.val86.i.i372, 8
  %i.blr = lshr i32 %.val87.i.i371, 16
  %i.bls = insertelement <4 x i32> poison, i32 %i.blr, i64 0
  %i.blt = insertelement <4 x i32> %i.bls, i32 %i.blo, i64 1
  %i.blu = insertelement <4 x i32> %i.blt, i32 %i.blq, i64 2
  %i.blv = insertelement <4 x i32> %i.blu, i32 %i.blp, i64 3
  %i.blw = and <4 x i32> %i.blv, <i32 4095, i32 4095, i32 4095, i32 -1>
  %i.blx = getelementptr inbounds nuw i8, ptr %.02630.i363, i64 96
  %i.bly = lshr i32 %.val85.i.i373, 12
  %i.blz = insertelement <4 x i32> poison, i32 %.val85.i.i373, i64 0
  %i.bma = insertelement <4 x i32> %i.blz, i32 %i.bly, i64 1
  %i.bmb = getelementptr inbounds nuw i8, ptr %.02630.i363, i64 112
  %.val.i.i375 = load i32, ptr %i.bjs, align 1    ; 3 uses
  %.val84.i.i374 = load i32, ptr %i.bjr, align 1  ; 4 uses
  store <4 x i32> %i.bkb, ptr %.02630.i363, align 4, !tbaa !3
  store <4 x i32> %i.bkk, ptr %i.bjw, align 4, !tbaa !3
  store <4 x i32> %i.bku, ptr %i.bkl, align 4, !tbaa !3
  store <4 x i32> %i.bld, ptr %i.bkp, align 4, !tbaa !3
  store <4 x i32> %i.bln, ptr %i.ble, align 4, !tbaa !3
  store <4 x i32> %i.blw, ptr %i.bli, align 4, !tbaa !3
  %i.bmc = tail call i32 @llvm.fshl.i32(i32 %.val84.i.i374, i32 %.val85.i.i373, i32 8)
  %i.bmd = lshr i32 %.val84.i.i374, 4
  %i.bme = insertelement <4 x i32> %i.bma, i32 %i.bmc, i64 2
  %i.bmf = insertelement <4 x i32> %i.bme, i32 %i.bmd, i64 3
  %i.bmg = and <4 x i32> %i.bmf, splat (i32 4095)
  store <4 x i32> %i.bmg, ptr %i.blx, align 4, !tbaa !3
  %i.bmh = tail call i32 @llvm.fshl.i32(i32 %.val.i.i375, i32 %.val84.i.i374, i32 4)
  %i.bmi = lshr i32 %.val.i.i375, 20
  %i.bmj = lshr i32 %.val.i.i375, 8
  %i.bmk = lshr i32 %.val84.i.i374, 16
  %i.bml = insertelement <4 x i32> poison, i32 %i.bmk, i64 0
  %i.bmm = insertelement <4 x i32> %i.bml, i32 %i.bmh, i64 1
  %i.bmn = insertelement <4 x i32> %i.bmm, i32 %i.bmj, i64 2
  %i.bmo = insertelement <4 x i32> %i.bmn, i32 %i.bmi, i64 3
  %i.bmp = and <4 x i32> %i.bmo, <i32 4095, i32 4095, i32 4095, i32 -1>
  store <4 x i32> %i.bmp, ptr %i.bmb, align 4, !tbaa !3
  %i.bmq = getelementptr inbounds nuw i8, ptr %.02531.i362, i64 48 ; 2 uses
  %i.bmr = getelementptr inbounds nuw i8, ptr %.02630.i363, i64 128 ; 2 uses
  %i.bms = add nuw nsw i32 %.032.i361, 1          ; 2 uses
  %exitcond.not.i376 = icmp eq i32 %i.bms, %i.bil
  br i1 %exitcond.not.i376, label %._crit_edge.i352, label %.lr.ph.i360, !llvm.loop !137

bb.aa:                                            ; preds = %bb.a
  %i.bmt = mul nsw i32 %2, 13
  %i.bmu = add nsw i32 %4, %i.bmt
  %i.bmv = icmp sgt i32 %2, 0
  br i1 %i.bmv, label %.lr.ph.i.i403, label %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i403:                                    ; preds = %bb.aa, %bb.ab
  %.026.i.i404 = phi ptr [ %i.bnl, %bb.ab ], [ %1, %bb.aa ] ; 2 uses
  %.02325.i.i405 = phi i32 [ %i.bmy, %bb.ab ], [ %4, %bb.aa ] ; 5 uses
  %i.bmw = srem i32 %.02325.i.i405, 8             ; 2 uses
  %i.bmx = sdiv i32 %.02325.i.i405, 8             ; 2 uses
  %.not.i.i406 = icmp eq i32 %i.bmw, 0
  br i1 %.not.i.i406, label %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i403
  %i.bmy = add nsw i32 %.02325.i.i405, 13         ; 3 uses
  %i.bmz = add nsw i32 %.02325.i.i405, 12
  %i.bna = sdiv i32 %i.bmz, 8
  %i.bnb = sub nsw i32 %i.bna, %i.bmx             ; 2 uses
  %i.bnc = add nsw i32 %i.bnb, 1
  %i.bnd = icmp slt i32 %i.bnb, 3
  tail call void @llvm.assume(i1 %i.bnd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 0, ptr %i.ak, align 8, !tbaa !17
  %i.bne = sext i32 %i.bmx to i64
  %i.bnf = getelementptr inbounds i8, ptr %0, i64 %i.bne
  %i.bng = sext i32 %i.bnc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr readonly align 1 %i.bnf, i64 %i.bng, i1 false)
  %.0..0..0..0..0..0..0..0..i.i407 = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.bnh = zext nneg i32 %i.bmw to i64
  %i.bni = lshr i64 %.0..0..0..0..0..0..0..0..i.i407, %i.bnh
  %i.bnj = trunc i64 %i.bni to i32
  %i.bnk = and i32 %i.bnj, 8191
  store i32 %i.bnk, ptr %.026.i.i404, align 4, !tbaa !3
  %i.bnl = getelementptr inbounds nuw i8, ptr %.026.i.i404, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.bnm = icmp slt i32 %i.bmy, %i.bmu
  br i1 %i.bnm, label %.lr.ph.i.i403, label %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !138

_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ab, %.lr.ph.i.i403, %bb.aa
  %.023.lcssa.i.i382 = phi i32 [ %4, %bb.aa ], [ %i.bmy, %bb.ab ], [ %.02325.i.i405, %.lr.ph.i.i403 ]
  %i.bnn = sub nsw i32 %.023.lcssa.i.i382, %4
  %i.bno = sdiv i32 %i.bnn, 13                    ; 3 uses
  %i.bnp = mul nsw i32 %i.bno, 13
  %i.bnq = add nsw i32 %i.bnp, %4
  %i.bnr = sub nsw i32 %2, %i.bno                 ; 4 uses
  %i.bns = sdiv i32 %i.bnq, 8
  %i.bnt = sext i32 %i.bns to i64                 ; 2 uses
  %i.bnu = getelementptr i8, ptr %0, i64 %i.bnt   ; 9 uses
  %i.bnv = sext i32 %i.bno to i64                 ; 2 uses
  %i.bnw = getelementptr [4 x i8], ptr %1, i64 %i.bnv ; 9 uses
  %i.bnx = sdiv i32 %i.bnr, 32                    ; 4 uses
  %i.bny = icmp sgt i32 %i.bnr, 31
  br i1 %i.bny, label %.lr.ph.i391.preheader, label %._crit_edge.i383

.lr.ph.i391.preheader:                            ; preds = %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i
  %i.bnz = add nsw i32 %i.bnx, -1                 ; 2 uses
  %i.boa = zext i32 %i.bnz to i64
  %i.bob = add nuw nsw i64 %i.boa, 1              ; 2 uses
  %min.iters.check1979 = icmp ult i32 %i.bnz, 15
  br i1 %min.iters.check1979, label %.lr.ph.i391.preheader2057, label %vector.memcheck1972

vector.memcheck1972:                              ; preds = %.lr.ph.i391.preheader
  %i.boc = add nsw i32 %i.bnx, -1
  %i.bod = zext i32 %i.boc to i64                 ; 2 uses
  %i.boe = shl nuw nsw i64 %i.bod, 7
  %i.bof = shl nsw i64 %i.bnv, 2
  %i.bog = getelementptr i8, ptr %1, i64 %i.boe
  %i.boh = getelementptr i8, ptr %i.bog, i64 %i.bof
  %scevgep1973 = getelementptr i8, ptr %i.boh, i64 128
  %i.boi = mul nuw nsw i64 %i.bod, 52
  %i.boj = getelementptr i8, ptr %0, i64 %i.boi
  %i.bok = getelementptr i8, ptr %i.boj, i64 %i.bnt
  %scevgep1974 = getelementptr i8, ptr %i.bok, i64 52
  %bound01975 = icmp ult ptr %i.bnw, %scevgep1974
  %bound11976 = icmp ult ptr %i.bnu, %scevgep1973
  %found.conflict1977 = and i1 %bound01975, %bound11976
  br i1 %found.conflict1977, label %.lr.ph.i391.preheader2057, label %vector.ph1980

vector.ph1980:                                    ; preds = %vector.memcheck1972
  %n.vec1982 = and i64 %i.bob, 8589934588         ; 5 uses
  %i.bol = trunc i64 %n.vec1982 to i32
  %i.bom = mul nuw nsw i64 %n.vec1982, 52
  %i.bon = getelementptr i8, ptr %i.bnu, i64 %i.bom ; 2 uses
  %i.boo = shl nuw nsw i64 %n.vec1982, 7
  %i.bop = getelementptr i8, ptr %i.bnw, i64 %i.boo ; 2 uses
  br label %vector.body1983

vector.body1983:                                  ; preds = %vector.body1983, %vector.ph1980
  %index1984 = phi i64 [ 0, %vector.ph1980 ], [ %index.next1993, %vector.body1983 ] ; 3 uses
  %i.boq = mul i64 %index1984, 52                 ; 4 uses
  %next.gep1985 = getelementptr i8, ptr %i.bnu, i64 %i.boq ; 13 uses
  %i.bor = getelementptr i8, ptr %i.bnu, i64 %i.boq ; 13 uses
  %next.gep1986 = getelementptr i8, ptr %i.bor, i64 52
  %i.bos = getelementptr i8, ptr %i.bnu, i64 %i.boq ; 13 uses
  %next.gep1987 = getelementptr i8, ptr %i.bos, i64 104
  %i.bot = getelementptr i8, ptr %i.bnu, i64 %i.boq ; 13 uses
  %next.gep1988 = getelementptr i8, ptr %i.bot, i64 156
  %i.bou = shl i64 %index1984, 7                  ; 4 uses
  %next.gep1989 = getelementptr i8, ptr %i.bnw, i64 %i.bou ; 8 uses
  %i.bov = getelementptr i8, ptr %i.bnw, i64 %i.bou ; 8 uses
  %next.gep1990 = getelementptr i8, ptr %i.bov, i64 128
  %i.bow = getelementptr i8, ptr %i.bnw, i64 %i.bou ; 8 uses
  %next.gep1991 = getelementptr i8, ptr %i.bow, i64 256
  %i.box = getelementptr i8, ptr %i.bnw, i64 %i.bou ; 8 uses
  %next.gep1992 = getelementptr i8, ptr %i.box, i64 384
  %i.boy = load i32, ptr %next.gep1985, align 1, !alias.scope !139
  %i.boz = load i32, ptr %next.gep1986, align 1, !alias.scope !139
  %i.bpa = load i32, ptr %next.gep1987, align 1, !alias.scope !139
  %i.bpb = load i32, ptr %next.gep1988, align 1, !alias.scope !139
  %i.bpc = insertelement <4 x i32> poison, i32 %i.boy, i64 0
  %i.bpd = insertelement <4 x i32> %i.bpc, i32 %i.boz, i64 1
  %i.bpe = insertelement <4 x i32> %i.bpd, i32 %i.bpa, i64 2
  %i.bpf = insertelement <4 x i32> %i.bpe, i32 %i.bpb, i64 3 ; 3 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 4
  %i.bph = getelementptr i8, ptr %i.bor, i64 56
  %i.bpi = getelementptr i8, ptr %i.bos, i64 108
  %i.bpj = getelementptr i8, ptr %i.bot, i64 160
  %i.bpk = load i32, ptr %i.bpg, align 1, !alias.scope !139
  %i.bpl = load i32, ptr %i.bph, align 1, !alias.scope !139
  %i.bpm = load i32, ptr %i.bpi, align 1, !alias.scope !139
  %i.bpn = load i32, ptr %i.bpj, align 1, !alias.scope !139
  %i.bpo = insertelement <4 x i32> poison, i32 %i.bpk, i64 0
  %i.bpp = insertelement <4 x i32> %i.bpo, i32 %i.bpl, i64 1
  %i.bpq = insertelement <4 x i32> %i.bpp, i32 %i.bpm, i64 2
  %i.bpr = insertelement <4 x i32> %i.bpq, i32 %i.bpn, i64 3 ; 3 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 8
  %i.bpt = getelementptr i8, ptr %i.bor, i64 60
  %i.bpu = getelementptr i8, ptr %i.bos, i64 112
  %i.bpv = getelementptr i8, ptr %i.bot, i64 164
  %i.bpw = load i32, ptr %i.bps, align 1, !alias.scope !139
  %i.bpx = load i32, ptr %i.bpt, align 1, !alias.scope !139
  %i.bpy = load i32, ptr %i.bpu, align 1, !alias.scope !139
  %i.bpz = load i32, ptr %i.bpv, align 1, !alias.scope !139
  %i.bqa = insertelement <4 x i32> poison, i32 %i.bpw, i64 0
  %i.bqb = insertelement <4 x i32> %i.bqa, i32 %i.bpx, i64 1
  %i.bqc = insertelement <4 x i32> %i.bqb, i32 %i.bpy, i64 2
  %i.bqd = insertelement <4 x i32> %i.bqc, i32 %i.bpz, i64 3 ; 4 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 12
  %i.bqf = getelementptr i8, ptr %i.bor, i64 64
  %i.bqg = getelementptr i8, ptr %i.bos, i64 116
  %i.bqh = getelementptr i8, ptr %i.bot, i64 168
  %i.bqi = load i32, ptr %i.bqe, align 1, !alias.scope !139
  %i.bqj = load i32, ptr %i.bqf, align 1, !alias.scope !139
  %i.bqk = load i32, ptr %i.bqg, align 1, !alias.scope !139
  %i.bql = load i32, ptr %i.bqh, align 1, !alias.scope !139
  %i.bqm = insertelement <4 x i32> poison, i32 %i.bqi, i64 0
  %i.bqn = insertelement <4 x i32> %i.bqm, i32 %i.bqj, i64 1
  %i.bqo = insertelement <4 x i32> %i.bqn, i32 %i.bqk, i64 2
  %i.bqp = insertelement <4 x i32> %i.bqo, i32 %i.bql, i64 3 ; 3 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 16
  %i.bqr = getelementptr i8, ptr %i.bor, i64 68
  %i.bqs = getelementptr i8, ptr %i.bos, i64 120
  %i.bqt = getelementptr i8, ptr %i.bot, i64 172
  %i.bqu = load i32, ptr %i.bqq, align 1, !alias.scope !139
  %i.bqv = load i32, ptr %i.bqr, align 1, !alias.scope !139
  %i.bqw = load i32, ptr %i.bqs, align 1, !alias.scope !139
  %i.bqx = load i32, ptr %i.bqt, align 1, !alias.scope !139
  %i.bqy = insertelement <4 x i32> poison, i32 %i.bqu, i64 0
  %i.bqz = insertelement <4 x i32> %i.bqy, i32 %i.bqv, i64 1
  %i.bra = insertelement <4 x i32> %i.bqz, i32 %i.bqw, i64 2
  %i.brb = insertelement <4 x i32> %i.bra, i32 %i.bqx, i64 3 ; 4 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 20
  %i.brd = getelementptr i8, ptr %i.bor, i64 72
  %i.bre = getelementptr i8, ptr %i.bos, i64 124
  %i.brf = getelementptr i8, ptr %i.bot, i64 176
  %i.brg = load i32, ptr %i.brc, align 1, !alias.scope !139
  %i.brh = load i32, ptr %i.brd, align 1, !alias.scope !139
  %i.bri = load i32, ptr %i.bre, align 1, !alias.scope !139
  %i.brj = load i32, ptr %i.brf, align 1, !alias.scope !139
  %i.brk = insertelement <4 x i32> poison, i32 %i.brg, i64 0
  %i.brl = insertelement <4 x i32> %i.brk, i32 %i.brh, i64 1
  %i.brm = insertelement <4 x i32> %i.brl, i32 %i.bri, i64 2
  %i.brn = insertelement <4 x i32> %i.brm, i32 %i.brj, i64 3 ; 3 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 24
  %i.brp = getelementptr i8, ptr %i.bor, i64 76
  %i.brq = getelementptr i8, ptr %i.bos, i64 128
  %i.brr = getelementptr i8, ptr %i.bot, i64 180
  %i.brs = load i32, ptr %i.bro, align 1, !alias.scope !139
  %i.brt = load i32, ptr %i.brp, align 1, !alias.scope !139
  %i.bru = load i32, ptr %i.brq, align 1, !alias.scope !139
  %i.brv = load i32, ptr %i.brr, align 1, !alias.scope !139
  %i.brw = insertelement <4 x i32> poison, i32 %i.brs, i64 0
  %i.brx = insertelement <4 x i32> %i.brw, i32 %i.brt, i64 1
  %i.bry = insertelement <4 x i32> %i.brx, i32 %i.bru, i64 2
  %i.brz = insertelement <4 x i32> %i.bry, i32 %i.brv, i64 3 ; 4 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 28
  %i.bsb = getelementptr i8, ptr %i.bor, i64 80
  %i.bsc = getelementptr i8, ptr %i.bos, i64 132
  %i.bsd = getelementptr i8, ptr %i.bot, i64 184
  %i.bse = load i32, ptr %i.bsa, align 1, !alias.scope !139
  %i.bsf = load i32, ptr %i.bsb, align 1, !alias.scope !139
  %i.bsg = load i32, ptr %i.bsc, align 1, !alias.scope !139
  %i.bsh = load i32, ptr %i.bsd, align 1, !alias.scope !139
  %i.bsi = insertelement <4 x i32> poison, i32 %i.bse, i64 0
  %i.bsj = insertelement <4 x i32> %i.bsi, i32 %i.bsf, i64 1
  %i.bsk = insertelement <4 x i32> %i.bsj, i32 %i.bsg, i64 2
  %i.bsl = insertelement <4 x i32> %i.bsk, i32 %i.bsh, i64 3 ; 3 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 32
  %i.bsn = getelementptr i8, ptr %i.bor, i64 84
  %i.bso = getelementptr i8, ptr %i.bos, i64 136
  %i.bsp = getelementptr i8, ptr %i.bot, i64 188
  %i.bsq = load i32, ptr %i.bsm, align 1, !alias.scope !139
  %i.bsr = load i32, ptr %i.bsn, align 1, !alias.scope !139
  %i.bss = load i32, ptr %i.bso, align 1, !alias.scope !139
  %i.bst = load i32, ptr %i.bsp, align 1, !alias.scope !139
  %i.bsu = insertelement <4 x i32> poison, i32 %i.bsq, i64 0
  %i.bsv = insertelement <4 x i32> %i.bsu, i32 %i.bsr, i64 1
  %i.bsw = insertelement <4 x i32> %i.bsv, i32 %i.bss, i64 2
  %i.bsx = insertelement <4 x i32> %i.bsw, i32 %i.bst, i64 3 ; 4 uses
  %i.bsy = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 36
  %i.bsz = getelementptr i8, ptr %i.bor, i64 88
  %i.bta = getelementptr i8, ptr %i.bos, i64 140
  %i.btb = getelementptr i8, ptr %i.bot, i64 192
  %i.btc = load i32, ptr %i.bsy, align 1, !alias.scope !139
  %i.btd = load i32, ptr %i.bsz, align 1, !alias.scope !139
  %i.bte = load i32, ptr %i.bta, align 1, !alias.scope !139
  %i.btf = load i32, ptr %i.btb, align 1, !alias.scope !139
  %i.btg = insertelement <4 x i32> poison, i32 %i.btc, i64 0
  %i.bth = insertelement <4 x i32> %i.btg, i32 %i.btd, i64 1
  %i.bti = insertelement <4 x i32> %i.bth, i32 %i.bte, i64 2
  %i.btj = insertelement <4 x i32> %i.bti, i32 %i.btf, i64 3 ; 3 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 40
  %i.btl = getelementptr i8, ptr %i.bor, i64 92
  %i.btm = getelementptr i8, ptr %i.bos, i64 144
  %i.btn = getelementptr i8, ptr %i.bot, i64 196
  %i.bto = load i32, ptr %i.btk, align 1, !alias.scope !139
  %i.btp = load i32, ptr %i.btl, align 1, !alias.scope !139
  %i.btq = load i32, ptr %i.btm, align 1, !alias.scope !139
  %i.btr = load i32, ptr %i.btn, align 1, !alias.scope !139
  %i.bts = insertelement <4 x i32> poison, i32 %i.bto, i64 0
  %i.btt = insertelement <4 x i32> %i.bts, i32 %i.btp, i64 1
  %i.btu = insertelement <4 x i32> %i.btt, i32 %i.btq, i64 2
  %i.btv = insertelement <4 x i32> %i.btu, i32 %i.btr, i64 3 ; 4 uses
  %i.btw = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 44
  %i.btx = getelementptr i8, ptr %i.bor, i64 96
  %i.bty = getelementptr i8, ptr %i.bos, i64 148
  %i.btz = getelementptr i8, ptr %i.bot, i64 200
  %i.bua = load i32, ptr %i.btw, align 1, !alias.scope !139
  %i.bub = load i32, ptr %i.btx, align 1, !alias.scope !139
  %i.buc = load i32, ptr %i.bty, align 1, !alias.scope !139
  %i.bud = load i32, ptr %i.btz, align 1, !alias.scope !139
  %i.bue = insertelement <4 x i32> poison, i32 %i.bua, i64 0
  %i.buf = insertelement <4 x i32> %i.bue, i32 %i.bub, i64 1
  %i.bug = insertelement <4 x i32> %i.buf, i32 %i.buc, i64 2
  %i.buh = insertelement <4 x i32> %i.bug, i32 %i.bud, i64 3 ; 3 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %next.gep1985, i64 48
  %i.buj = getelementptr i8, ptr %i.bor, i64 100
  %i.buk = getelementptr i8, ptr %i.bos, i64 152
  %i.bul = getelementptr i8, ptr %i.bot, i64 204
  %i.bum = load i32, ptr %i.bui, align 1, !alias.scope !139
  %i.bun = load i32, ptr %i.buj, align 1, !alias.scope !139
  %i.buo = load i32, ptr %i.buk, align 1, !alias.scope !139
  %i.bup = load i32, ptr %i.bul, align 1, !alias.scope !139
  %i.buq = insertelement <4 x i32> poison, i32 %i.bum, i64 0
  %i.bur = insertelement <4 x i32> %i.buq, i32 %i.bun, i64 1
  %i.bus = insertelement <4 x i32> %i.bur, i32 %i.buo, i64 2
  %i.but = insertelement <4 x i32> %i.bus, i32 %i.bup, i64 3 ; 3 uses
  %i.buu = and <4 x i32> %i.bpf, splat (i32 8191) ; 4 uses
  %i.buv = lshr <4 x i32> %i.bpf, splat (i32 13)
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12unpack_widthILi7ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEmEEvPKhPT1_ii:bb.a
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !17
  %i.bj = lshr i64 %.val73.i, 14
  %i.bk = and i64 %i.bj, 127
  %i.bl = getelementptr inbounds nuw i8, ptr %.02630, i64 16
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !17
  %i.bm = lshr i64 %.val73.i, 21
  %i.bn = and i64 %i.bm, 127
  %i.bo = getelementptr inbounds nuw i8, ptr %.02630, i64 24
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !17
  %i.bp = lshr i64 %.val73.i, 28
  %i.bq = and i64 %i.bp, 127
  %i.br = getelementptr inbounds nuw i8, ptr %.02630, i64 32
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !17
  %i.bs = lshr i64 %.val73.i, 35
  %i.bt = and i64 %i.bs, 127
  %i.bu = getelementptr inbounds nuw i8, ptr %.02630, i64 40
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !17
  %i.bv = lshr i64 %.val73.i, 42
  %i.bw = and i64 %i.bv, 127
  %i.bx = getelementptr inbounds nuw i8, ptr %.02630, i64 48
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !17
  %i.by = lshr i64 %.val73.i, 49
  %i.bz = and i64 %i.by, 127
  %i.ca = getelementptr inbounds nuw i8, ptr %.02630, i64 56
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !17
  %i.cb = lshr i64 %.val73.i, 56
  %i.cc = and i64 %i.cb, 127
  %i.cd = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !17
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %.val72.i, i64 %.val73.i, i64 1)
  %i.cf = and i64 %i.ce, 127
  %i.cg = getelementptr inbounds nuw i8, ptr %.02630, i64 72
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !17
  %i.ch = lshr i64 %.val72.i, 6
  %i.ci = and i64 %i.ch, 127
  %i.cj = getelementptr inbounds nuw i8, ptr %.02630, i64 80
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !17
  %i.ck = lshr i64 %.val72.i, 13
  %i.cl = and i64 %i.ck, 127
  %i.cm = getelementptr inbounds nuw i8, ptr %.02630, i64 88
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !17
  %i.cn = lshr i64 %.val72.i, 20
  %i.co = and i64 %i.cn, 127
  %i.cp = getelementptr inbounds nuw i8, ptr %.02630, i64 96
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !17
  %i.cq = lshr i64 %.val72.i, 27
  %i.cr = and i64 %i.cq, 127
  %i.cs = getelementptr inbounds nuw i8, ptr %.02630, i64 104
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !17
  %i.ct = lshr i64 %.val72.i, 34
  %i.cu = and i64 %i.ct, 127
  %i.cv = getelementptr inbounds nuw i8, ptr %.02630, i64 112
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !17
  %i.cw = lshr i64 %.val72.i, 41
  %i.cx = and i64 %i.cw, 127
  %i.cy = getelementptr inbounds nuw i8, ptr %.02630, i64 120
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !17
  %i.cz = lshr i64 %.val72.i, 48
  %i.da = and i64 %i.cz, 127
  %i.db = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  store i64 %i.da, ptr %i.db, align 8, !tbaa !17
  %i.dc = lshr i64 %.val72.i, 55
  %i.dd = and i64 %i.dc, 127
  %i.de = getelementptr inbounds nuw i8, ptr %.02630, i64 136
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !17
  %i.df = tail call i64 @llvm.fshl.i64(i64 %.val71.i, i64 %.val72.i, i64 2)
  %i.dg = and i64 %i.df, 127
  %i.dh = getelementptr inbounds nuw i8, ptr %.02630, i64 144
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !17
  %i.di = lshr i64 %.val71.i, 5
  %i.dj = and i64 %i.di, 127
  %i.dk = getelementptr inbounds nuw i8, ptr %.02630, i64 152
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !17
  %i.dl = lshr i64 %.val71.i, 12
  %i.dm = and i64 %i.dl, 127
  %i.dn = getelementptr inbounds nuw i8, ptr %.02630, i64 160
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !17
  %i.do = lshr i64 %.val71.i, 19
  %i.dp = and i64 %i.do, 127
  %i.dq = getelementptr inbounds nuw i8, ptr %.02630, i64 168
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !17
  %i.dr = lshr i64 %.val71.i, 26
  %i.ds = and i64 %i.dr, 127
  %i.dt = getelementptr inbounds nuw i8, ptr %.02630, i64 176
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !17
  %i.du = lshr i64 %.val71.i, 33
  %i.dv = and i64 %i.du, 127
  %i.dw = getelementptr inbounds nuw i8, ptr %.02630, i64 184
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !17
  %i.dx = lshr i64 %.val71.i, 40
  %i.dy = and i64 %i.dx, 127
  %i.dz = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !17
  %i.ea = lshr i64 %.val71.i, 47
  %i.eb = and i64 %i.ea, 127
  %i.ec = getelementptr inbounds nuw i8, ptr %.02630, i64 200
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !17
  %i.ed = lshr i64 %.val71.i, 54
  %i.ee = and i64 %i.ed, 127
  %i.ef = getelementptr inbounds nuw i8, ptr %.02630, i64 208
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !17
  %i.eg = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %.val71.i, i64 3)
  %i.eh = and i64 %i.eg, 127
  %i.ei = getelementptr inbounds nuw i8, ptr %.02630, i64 216
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !17
  %i.ej = lshr i64 %i.be, 4
  %i.ek = and i64 %i.ej, 127
  %i.el = getelementptr inbounds nuw i8, ptr %.02630, i64 224
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !17
  %i.em = lshr i64 %i.be, 11
  %i.en = and i64 %i.em, 127
  %i.eo = getelementptr inbounds nuw i8, ptr %.02630, i64 232
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !17
  %i.ep = lshr i64 %i.be, 18
  %i.eq = and i64 %i.ep, 127
  %i.er = getelementptr inbounds nuw i8, ptr %.02630, i64 240
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !17
  %i.es = lshr i64 %i.be, 25
  %i.et = getelementptr inbounds nuw i8, ptr %.02630, i64 248
  store i64 %i.es, ptr %i.et, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %.02531, i64 28 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.02630, i64 256 ; 2 uses
  %i.ew = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ew, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !318
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi8ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = shl nsw i32 %2, 3
  %i.c = add nsw i32 %i.b, %3
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi ptr [ %i.s, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.02325.i = phi i32 [ %i.g, %bb.b ], [ %3, %bb.a ] ; 5 uses
  %i.e = srem i32 %.02325.i, 8                    ; 2 uses
  %i.f = sdiv i32 %.02325.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add nsw i32 %.02325.i, 8                 ; 3 uses
  %i.h = add nsw i32 %.02325.i, 7
  %i.i = sdiv i32 %i.h, 8
  %i.j = sub nsw i32 %i.i, %i.f                   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  %i.l = icmp slt i32 %i.j, 2
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !17
  %i.m = sext i32 %i.f to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = sext i32 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.n, i64 %i.o, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !17
  %i.p = zext nneg i32 %i.e to i64
  %i.q = lshr i64 %.0..0..0..0..0..0..i, %i.p
  %i.r = and i64 %i.q, 255
  store i64 %i.r, ptr %.026.i, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = icmp slt i32 %i.g, %i.c
  br i1 %i.t, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !319

_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.023.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02325.i, %.lr.ph.i ], [ %i.g, %bb.b ]
  %i.u = sub nsw i32 %.023.lcssa.i, %3
  %i.v = sdiv i32 %i.u, 8                         ; 3 uses
  %i.w = shl nsw i32 %i.v, 3
  %i.x = add nsw i32 %i.w, %3
  %i.y = sub nsw i32 %2, %i.v                     ; 4 uses
  %i.z = sdiv i32 %i.x, 8
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  %i.ae = sdiv i32 %i.y, 32                       ; 2 uses
  %i.af = icmp sgt i32 %i.y, 31
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit
  %.026.lcssa = phi ptr [ %i.ad, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ], [ %i.ev, %.lr.ph ] ; 6 uses
  %.025.lcssa = phi ptr [ %i.ab, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ], [ %i.eu, %.lr.ph ] ; 4 uses
  %i.ag = shl nsw i32 %i.ae, 5                    ; 2 uses
  %i.ah = sub nsw i32 %i.y, %i.ag                 ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 32
  tail call void @llvm.assume(i1 %i.ai)
  %.not = icmp eq i32 %i.y, %i.ag
  br i1 %.not, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %._crit_edge
  %i.aj = shl nuw nsw i32 %i.ah, 3
  %i.ak = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.al = tail call i64 @llvm.usub.sat.i64(i64 %i.ak, i64 8) ; 2 uses
  %i.am = lshr exact i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.al, 136
  br i1 %min.iters.check, label %.lr.ph.i28.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.ao = tail call i64 @llvm.usub.sat.i64(i64 %i.ak, i64 8) ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = getelementptr i8, ptr %.026.lcssa, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.aq, i64 8
  %i.ar = getelementptr i8, ptr %.025.lcssa, i64 %i.ap
  %scevgep39 = getelementptr i8, ptr %i.ar, i64 1
  %bound0 = icmp ult ptr %.026.lcssa, %scevgep39
  %bound1 = icmp ult ptr %.025.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 536870908               ; 3 uses
  %i.as = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.at = getelementptr i8, ptr %.026.lcssa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.026.lcssa, i64 %i.au ; 2 uses
  %i.av = and i64 %index, 2305843009213693948
  %i.aw = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %wide.load = load <2 x i8>, ptr %i.aw, align 1, !alias.scope !320
  %wide.load41 = load <2 x i8>, ptr %i.ax, align 1, !alias.scope !320
  %i.ay = zext <2 x i8> %wide.load to <2 x i64>
  %i.az = zext <2 x i8> %wide.load41 to <2 x i64>
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.ay, ptr %next.gep, align 8, !tbaa !17, !alias.scope !323, !noalias !320
  store <2 x i64> %i.az, ptr %i.ba, align 8, !tbaa !17, !alias.scope !323, !noalias !320
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !325

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader43

.lr.ph.i28.preheader43:                           ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28.preheader ], [ %i.as, %middle.block ]
  %.024.i.ph = phi ptr [ %.026.lcssa, %vector.memcheck ], [ %.026.lcssa, %.lr.ph.i28.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader43, %.lr.ph.i28
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i28 ], [ %indvars.iv.ph, %.lr.ph.i28.preheader43 ] ; 2 uses
  %.024.i = phi ptr [ %i.bg, %.lr.ph.i28 ], [ %.024.i.ph, %.lr.ph.i28.preheader43 ] ; 2 uses
  %i.bc = lshr exact i64 %indvars.iv, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i64
  store i64 %i.bf, ptr %.024.i, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.bh, label %.lr.ph.i28, label %_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit, !llvm.loop !326

_ZN5arrow8internal12unpack_exactILi8ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %middle.block, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.ew, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.eu, %.lr.ph ], [ %i.ab, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ] ; 5 uses
  %.02630 = phi ptr [ %i.ev, %.lr.ph ], [ %i.ad, %_ZN5arrow8internal12unpack_exactILi8ELb1EmEEiPKhPT1_ii.exit ] ; 33 uses
  %.val70.i = load i64, ptr %.02531, align 1      ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02531, i64 8
  %.val69.i = load i64, ptr %i.bi, align 1        ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02531, i64 16
  %.val68.i = load i64, ptr %i.bj, align 1        ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02531, i64 24
  %.val.i = load i64, ptr %i.bk, align 1          ; 8 uses
  %i.bl = and i64 %.val70.i, 255
  store i64 %i.bl, ptr %.02630, align 8, !tbaa !17
  %i.bm = lshr i64 %.val70.i, 8
  %i.bn = and i64 %i.bm, 255
  %i.bo = getelementptr inbounds nuw i8, ptr %.02630, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !17
  %i.bp = lshr i64 %.val70.i, 16
  %i.bq = and i64 %i.bp, 255
  %i.br = getelementptr inbounds nuw i8, ptr %.02630, i64 16
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !17
  %i.bs = lshr i64 %.val70.i, 24
  %i.bt = and i64 %i.bs, 255
  %i.bu = getelementptr inbounds nuw i8, ptr %.02630, i64 24
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !17
  %i.bv = lshr i64 %.val70.i, 32
  %i.bw = and i64 %i.bv, 255
  %i.bx = getelementptr inbounds nuw i8, ptr %.02630, i64 32
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !17
  %i.by = lshr i64 %.val70.i, 40
  %i.bz = and i64 %i.by, 255
  %i.ca = getelementptr inbounds nuw i8, ptr %.02630, i64 40
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !17
  %i.cb = lshr i64 %.val70.i, 48
  %i.cc = and i64 %i.cb, 255
  %i.cd = getelementptr inbounds nuw i8, ptr %.02630, i64 48
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !17
  %i.ce = lshr i64 %.val70.i, 56
  %i.cf = getelementptr inbounds nuw i8, ptr %.02630, i64 56
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !17
  %i.cg = and i64 %.val69.i, 255
  %i.ch = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !17
  %i.ci = lshr i64 %.val69.i, 8
  %i.cj = and i64 %i.ci, 255
  %i.ck = getelementptr inbounds nuw i8, ptr %.02630, i64 72
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !17
  %i.cl = lshr i64 %.val69.i, 16
  %i.cm = and i64 %i.cl, 255
  %i.cn = getelementptr inbounds nuw i8, ptr %.02630, i64 80
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !17
  %i.co = lshr i64 %.val69.i, 24
  %i.cp = and i64 %i.co, 255
  %i.cq = getelementptr inbounds nuw i8, ptr %.02630, i64 88
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !17
  %i.cr = lshr i64 %.val69.i, 32
  %i.cs = and i64 %i.cr, 255
  %i.ct = getelementptr inbounds nuw i8, ptr %.02630, i64 96
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !17
  %i.cu = lshr i64 %.val69.i, 40
  %i.cv = and i64 %i.cu, 255
  %i.cw = getelementptr inbounds nuw i8, ptr %.02630, i64 104
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !17
  %i.cx = lshr i64 %.val69.i, 48
  %i.cy = and i64 %i.cx, 255
  %i.cz = getelementptr inbounds nuw i8, ptr %.02630, i64 112
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !17
  %i.da = lshr i64 %.val69.i, 56
  %i.db = getelementptr inbounds nuw i8, ptr %.02630, i64 120
  store i64 %i.da, ptr %i.db, align 8, !tbaa !17
  %i.dc = and i64 %.val68.i, 255
  %i.dd = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !17
  %i.de = lshr i64 %.val68.i, 8
  %i.df = and i64 %i.de, 255
  %i.dg = getelementptr inbounds nuw i8, ptr %.02630, i64 136
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !17
  %i.dh = lshr i64 %.val68.i, 16
  %i.di = and i64 %i.dh, 255
  %i.dj = getelementptr inbounds nuw i8, ptr %.02630, i64 144
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !17
  %i.dk = lshr i64 %.val68.i, 24
  %i.dl = and i64 %i.dk, 255
  %i.dm = getelementptr inbounds nuw i8, ptr %.02630, i64 152
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !17
  %i.dn = lshr i64 %.val68.i, 32
  %i.do = and i64 %i.dn, 255
  %i.dp = getelementptr inbounds nuw i8, ptr %.02630, i64 160
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !17
  %i.dq = lshr i64 %.val68.i, 40
  %i.dr = and i64 %i.dq, 255
  %i.ds = getelementptr inbounds nuw i8, ptr %.02630, i64 168
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !17
  %i.dt = lshr i64 %.val68.i, 48
  %i.du = and i64 %i.dt, 255
  %i.dv = getelementptr inbounds nuw i8, ptr %.02630, i64 176
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !17
  %i.dw = lshr i64 %.val68.i, 56
  %i.dx = getelementptr inbounds nuw i8, ptr %.02630, i64 184
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !17
  %i.dy = and i64 %.val.i, 255
  %i.dz = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !17
  %i.ea = lshr i64 %.val.i, 8
  %i.eb = and i64 %i.ea, 255
  %i.ec = getelementptr inbounds nuw i8, ptr %.02630, i64 200
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !17
  %i.ed = lshr i64 %.val.i, 16
  %i.ee = and i64 %i.ed, 255
  %i.ef = getelementptr inbounds nuw i8, ptr %.02630, i64 208
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !17
  %i.eg = lshr i64 %.val.i, 24
  %i.eh = and i64 %i.eg, 255
  %i.ei = getelementptr inbounds nuw i8, ptr %.02630, i64 216
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !17
  %i.ej = lshr i64 %.val.i, 32
  %i.ek = and i64 %i.ej, 255
  %i.el = getelementptr inbounds nuw i8, ptr %.02630, i64 224
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !17
  %i.em = lshr i64 %.val.i, 40
  %i.en = and i64 %i.em, 255
  %i.eo = getelementptr inbounds nuw i8, ptr %.02630, i64 232
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !17
  %i.ep = lshr i64 %.val.i, 48
  %i.eq = and i64 %i.ep, 255
  %i.er = getelementptr inbounds nuw i8, ptr %.02630, i64 240
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !17
  %i.es = lshr i64 %.val.i, 56
  %i.et = getelementptr inbounds nuw i8, ptr %.02630, i64 248
  store i64 %i.es, ptr %i.et, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %.02531, i64 32 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.02630, i64 256 ; 2 uses
  %i.ew = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ew, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !327
}

end_hunk_1
