inline.NumInlined: 11107
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 589
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 598
begin_hunk_0_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.brd = insertelement <4 x i32> %i.brc, i32 %i.bqq, i64 1
  %i.bre = insertelement <4 x i32> %i.brd, i32 %i.bqw, i64 3
  %i.brf = shufflevector <2 x i32> %i.bqx, <2 x i32> %i.bqz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.brg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bre, <4 x i32> %i.brf, <4 x i32> <i32 13, i32 7, i32 8, i32 2>)
  %i.brh = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 28
  %i.bri = load i32, ptr %i.brh, align 1          ; 3 uses
  %i.brj = tail call i32 @llvm.fshl.i32(i32 %i.bri, i32 %i.bqw, i32 15)
  %i.brk = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 32
  %i.brl = load i32, ptr %i.brk, align 1          ; 3 uses
  %i.brm = tail call i32 @llvm.fshl.i32(i32 %i.brl, i32 %i.bri, i32 9)
  %i.brn = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 36 ; 2 uses
  %i.bro = load i32, ptr %i.brn, align 1
  %i.brp = tail call i32 @llvm.fshl.i32(i32 %i.bro, i32 %i.brl, i32 3)
  %i.brq = lshr i32 %i.bqy, 6
  %i.brr = shufflevector <2 x i32> %i.bqx, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.brs = shufflevector <4 x i32> %i.brg, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.brt = shufflevector <16 x i32> %i.brs, <16 x i32> %i.brr, <16 x i32> <i32 16, i32 0, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bru = insertelement <16 x i32> %i.brt, i32 %i.brq, i64 2
  %i.brv = lshr i32 %i.bqq, 12
  %i.brw = insertelement <16 x i32> %i.bru, i32 %i.brv, i64 4
  %i.brx = shufflevector <2 x i32> %i.bqt, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bry = shufflevector <16 x i32> %i.brw, <16 x i32> %i.brx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.brz = lshr i32 %i.brb, 5
  %i.bsa = insertelement <16 x i32> %i.bry, i32 %i.brz, i64 7
  %i.bsb = lshr i32 %i.bra, 11
  %i.bsc = shufflevector <16 x i32> %i.bsa, <16 x i32> %i.brs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 18, i32 poison, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bsd = insertelement <16 x i32> %i.bsc, i32 %i.bsb, i64 9
  %i.bse = insertelement <16 x i32> %i.bsd, i32 %i.brj, i64 11
  %i.bsf = lshr i32 %i.bri, 4
  %i.bsg = insertelement <16 x i32> %i.bse, i32 %i.bsf, i64 12
  %i.bsh = insertelement <16 x i32> %i.bsg, i32 %i.brm, i64 13
  %i.bsi = lshr i32 %i.brl, 10
  %i.bsj = insertelement <16 x i32> %i.bsh, i32 %i.bsi, i64 14
  %.sroa.0129.60.vec.insert.i.i = insertelement <16 x i32> %i.bsj, i32 %i.brp, i64 15
  %i.bsk = bitcast <16 x i32> %.sroa.0129.60.vec.insert.i.i to <8 x i64>
  %i.bsl = and <8 x i64> %i.bsk, splat (i64 2251795519242239)
  store <8 x i64> %i.bsl, ptr %.02630.i508, align 1, !tbaa !15
  %i.bsm = load i32, ptr %i.brn, align 1
  %i.bsn = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 40 ; 2 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 44 ; 2 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 48
  %i.bsq = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 52 ; 2 uses
  %i.bsr = load <2 x i32>, ptr %i.bso, align 1
  %i.bss = load <2 x i32>, ptr %i.bsp, align 1
  %i.bst = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bss, <2 x i32> %i.bsr, <2 x i32> <i32 4, i32 17>)
  %i.bsu = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 56
  %i.bsv = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 60
  %i.bsw = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 64
  %i.bsx = load <2 x i32>, ptr %i.bsn, align 1    ; 2 uses
  %i.bsy = load i32, ptr %i.bso, align 1
  %i.bsz = load i32, ptr %i.bsn, align 1          ; 2 uses
  %i.bta = tail call i32 @llvm.fshl.i32(i32 %i.bsz, i32 %i.bsm, i32 16)
  %i.btb = load <2 x i32>, ptr %i.bsq, align 1    ; 2 uses
  %i.btc = load i32, ptr %i.bsu, align 1
  %i.btd = load i32, ptr %i.bsq, align 1
  %i.bte = load <2 x i32>, ptr %i.bsv, align 1
  %i.btf = load i32, ptr %i.bsw, align 1          ; 2 uses
  %i.btg = shufflevector <2 x i32> %i.bsx, <2 x i32> %i.btb, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bth = shufflevector <2 x i32> %i.bte, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bti = shufflevector <4 x i32> %i.btg, <4 x i32> %i.bth, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.btj = shufflevector <2 x i32> %i.bsx, <2 x i32> %i.btb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.btk = shufflevector <4 x i32> %i.btj, <4 x i32> %i.bth, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.btl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bti, <4 x i32> %i.btk, <4 x i32> <i32 10, i32 11, i32 5, i32 18>)
  %i.btm = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 68
  %i.btn = load i32, ptr %i.btm, align 1          ; 3 uses
  %i.bto = tail call i32 @llvm.fshl.i32(i32 %i.btn, i32 %i.btf, i32 12)
  %i.btp = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 72
  %i.btq = load i32, ptr %i.btp, align 1          ; 2 uses
  %i.btr = tail call i32 @llvm.fshl.i32(i32 %i.btq, i32 %i.btn, i32 6)
  %i.bts = insertelement <16 x i32> poison, i32 %i.bta, i64 0
  %i.btt = lshr i32 %i.bsz, 3
  %i.btu = insertelement <16 x i32> %i.bts, i32 %i.btt, i64 1
  %i.btv = shufflevector <4 x i32> %i.btl, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.btw = shufflevector <16 x i32> %i.btu, <16 x i32> %i.btv, <16 x i32> <i32 0, i32 1, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.btx = lshr i32 %i.bsy, 9
  %i.bty = insertelement <16 x i32> %i.btw, i32 %i.btx, i64 3
  %i.btz = shufflevector <2 x i32> %i.bst, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bua = shufflevector <16 x i32> %i.bty, <16 x i32> %i.btz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bub = lshr i32 %i.btd, 2
  %i.buc = insertelement <16 x i32> %i.bua, i32 %i.bub, i64 6
  %i.bud = lshr i32 %i.btc, 8
  %i.bue = shufflevector <16 x i32> %i.buc, <16 x i32> %i.btv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 17, i32 poison, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.buf = insertelement <16 x i32> %i.bue, i32 %i.bud, i64 8
  %i.bug = lshr i32 %i.btf, 1
  %i.buh = insertelement <16 x i32> %i.buf, i32 %i.bug, i64 11
  %i.bui = insertelement <16 x i32> %i.buh, i32 %i.bto, i64 12
  %i.buj = lshr i32 %i.btn, 7
  %i.buk = insertelement <16 x i32> %i.bui, i32 %i.buj, i64 13
  %i.bul = insertelement <16 x i32> %i.buk, i32 %i.btr, i64 14
  %i.bum = lshr i32 %i.btq, 13
  %.sroa.0149.60.vec.insert.i.i = insertelement <16 x i32> %i.bul, i32 %i.bum, i64 15
  %i.bun = getelementptr inbounds nuw i8, ptr %.02630.i508, i64 64
  %i.buo = bitcast <16 x i32> %.sroa.0149.60.vec.insert.i.i to <8 x i64>
  %i.bup = and <8 x i64> %i.buo, splat (i64 2251795519242239)
  store <8 x i64> %i.bup, ptr %i.bun, align 1, !tbaa !15
  %i.buq = getelementptr inbounds nuw i8, ptr %.02531.i507, i64 76 ; 2 uses
  %i.bur = getelementptr inbounds nuw i8, ptr %.02630.i508, i64 128 ; 2 uses
  %i.bus = add nuw nsw i32 %.032.i506, 1          ; 2 uses
  %exitcond.not.i509 = icmp eq i32 %i.bus, %i.bpp
  br i1 %exitcond.not.i509, label %._crit_edge.i497, label %.lr.ph.i505, !llvm.loop !166

bb.ao:                                            ; preds = %bb.a
  %i.but = mul nsw i32 %2, 20
  %i.buu = add nsw i32 %4, %i.but
  %i.buv = icmp sgt i32 %2, 0
  br i1 %i.buv, label %.lr.ph.i.i531, label %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i531:                                    ; preds = %bb.ao, %bb.ap
  %.026.i.i532 = phi ptr [ %i.bvl, %bb.ap ], [ %1, %bb.ao ] ; 2 uses
  %.02325.i.i533 = phi i32 [ %i.buy, %bb.ap ], [ %4, %bb.ao ] ; 5 uses
  %i.buw = srem i32 %.02325.i.i533, 8             ; 2 uses
  %i.bux = sdiv i32 %.02325.i.i533, 8             ; 2 uses
  %.not.i.i534 = icmp eq i32 %i.buw, 0
  br i1 %.not.i.i534, label %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i531
  %i.buy = add nsw i32 %.02325.i.i533, 20         ; 3 uses
  %i.buz = add nsw i32 %.02325.i.i533, 19
  %i.bva = sdiv i32 %i.buz, 8
  %i.bvb = sub nsw i32 %i.bva, %i.bux             ; 2 uses
  %i.bvc = add nsw i32 %i.bvb, 1
  %i.bvd = icmp slt i32 %i.bvb, 4
  tail call void @llvm.assume(i1 %i.bvd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 0, ptr %i.x, align 8, !tbaa !19
  %i.bve = sext i32 %i.bux to i64
  %i.bvf = getelementptr inbounds i8, ptr %0, i64 %i.bve
  %i.bvg = sext i32 %i.bvc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr readonly align 1 %i.bvf, i64 %i.bvg, i1 false)
  %.0..0..0..0..0..0..0..0..i.i535 = load i64, ptr %i.x, align 8, !tbaa !19
  %i.bvh = zext nneg i32 %i.buw to i64
  %i.bvi = lshr i64 %.0..0..0..0..0..0..0..0..i.i535, %i.bvh
  %i.bvj = trunc i64 %i.bvi to i32
  %i.bvk = and i32 %i.bvj, 1048575
  store i32 %i.bvk, ptr %.026.i.i532, align 4, !tbaa !3
  %i.bvl = getelementptr inbounds nuw i8, ptr %.026.i.i532, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.bvm = icmp slt i32 %i.buy, %i.buu
  br i1 %i.bvm, label %.lr.ph.i.i531, label %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !167

_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ap, %.lr.ph.i.i531, %bb.ao
  %.023.lcssa.i.i515 = phi i32 [ %4, %bb.ao ], [ %i.buy, %bb.ap ], [ %.02325.i.i533, %.lr.ph.i.i531 ]
  %i.bvn = sub nsw i32 %.023.lcssa.i.i515, %4
  %i.bvo = sdiv i32 %i.bvn, 20                    ; 3 uses
  %i.bvp = mul nsw i32 %i.bvo, 20
  %i.bvq = add nsw i32 %i.bvp, %4
  %i.bvr = sub nsw i32 %2, %i.bvo                 ; 4 uses
  %i.bvs = sdiv i32 %i.bvq, 8
  %i.bvt = sext i32 %i.bvs to i64
  %i.bvu = getelementptr inbounds i8, ptr %0, i64 %i.bvt ; 2 uses
  %i.bvv = sext i32 %i.bvo to i64
  %i.bvw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvv ; 2 uses
  %i.bvx = sdiv i32 %i.bvr, 32                    ; 2 uses
  %i.bvy = icmp sgt i32 %i.bvr, 31
  br i1 %i.bvy, label %.lr.ph.i524, label %._crit_edge.i516

._crit_edge.i516:                                 ; preds = %.lr.ph.i524, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i517 = phi ptr [ %i.bvw, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bzx, %.lr.ph.i524 ]
  %.025.lcssa.i518 = phi ptr [ %i.bvu, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bzw, %.lr.ph.i524 ]
  %i.bvz = shl nsw i32 %i.bvx, 5                  ; 2 uses
  %i.bwa = sub nsw i32 %i.bvr, %i.bvz             ; 2 uses
  %i.bwb = icmp samesign ult i32 %i.bwa, 32
  tail call void @llvm.assume(i1 %i.bwb)
  %i.bwc = mul nuw nsw i32 %i.bwa, 20
  %.not.i519 = icmp eq i32 %i.bvr, %i.bvz
  br i1 %.not.i519, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i520

.lr.ph.i28.i520:                                  ; preds = %._crit_edge.i516, %.lr.ph.i28.i520
  %.024.i.i521 = phi ptr [ %i.bws, %.lr.ph.i28.i520 ], [ %.026.lcssa.i517, %._crit_edge.i516 ] ; 2 uses
  %.02223.i.i522 = phi i32 [ %i.bwe, %.lr.ph.i28.i520 ], [ 0, %._crit_edge.i516 ] ; 4 uses
  %i.bwd = lshr i32 %.02223.i.i522, 3             ; 2 uses
  %i.bwe = add nuw nsw i32 %.02223.i.i522, 20     ; 2 uses
  %i.bwf = add nuw nsw i32 %.02223.i.i522, 16
  %i.bwg = lshr i32 %i.bwf, 3
  %i.bwh = sub nsw i32 %i.bwg, %i.bwd             ; 2 uses
  %i.bwi = add nsw i32 %i.bwh, 1
  %i.bwj = icmp slt i32 %i.bwh, 3
  tail call void @llvm.assume(i1 %i.bwj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8, !tbaa !19
  %i.bwk = zext nneg i32 %i.bwd to i64
  %i.bwl = getelementptr inbounds nuw i8, ptr %.025.lcssa.i518, i64 %i.bwk
  %i.bwm = sext i32 %i.bwi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 1 %i.bwl, i64 %i.bwm, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i523 = load i64, ptr %i.w, align 8, !tbaa !19
  %i.bwn = and i32 %.02223.i.i522, 4
  %i.bwo = zext nneg i32 %i.bwn to i64
  %i.bwp = lshr i64 %.0..0..0..0..0..0..0..0..i29.i523, %i.bwo
  %i.bwq = trunc i64 %i.bwp to i32
  %i.bwr = and i32 %i.bwq, 1048575
  store i32 %i.bwr, ptr %.024.i.i521, align 4, !tbaa !3
  %i.bws = getelementptr inbounds nuw i8, ptr %.024.i.i521, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.bwt = icmp samesign ult i32 %i.bwe, %i.bwc
  br i1 %i.bwt, label %.lr.ph.i28.i520, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !168

.lr.ph.i524:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i524
  %.032.i525 = phi i32 [ %i.bzy, %.lr.ph.i524 ], [ 0, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i526 = phi ptr [ %i.bzw, %.lr.ph.i524 ], [ %i.bvu, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i ] ; 21 uses
  %.02630.i527 = phi ptr [ %i.bzx, %.lr.ph.i524 ], [ %i.bvw, %_ZN5arrow8internal12unpack_exactILi20ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %5 = load i32, ptr %.02531.i526, align 1        ; 2 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 4 ; 2 uses
  %i.bwv = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 8
  %i.bww = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 12
  %6 = load i32, ptr %i.bwu, align 1              ; 2 uses
  %7 = load <2 x i32>, ptr %i.bwu, align 1
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %5, i32 12)
  %9 = load i32, ptr %i.bww, align 1              ; 2 uses
  %i.bwx = load <2 x i32>, ptr %i.bwv, align 1
  %i.bwy = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bwx, <2 x i32> %7, <2 x i32> <i32 4, i32 16>)
  %i.bwz = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 16
  %i.bxa = load i32, ptr %i.bwz, align 1          ; 2 uses
  %10 = tail call i32 @llvm.fshl.i32(i32 %i.bxa, i32 %9, i32 8)
  %11 = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 20
  %i.bxb = load i32, ptr %11, align 1             ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 24 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 28
  %14 = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 32
  %i.bxc = load i32, ptr %12, align 1             ; 2 uses
  %15 = load <2 x i32>, ptr %12, align 1
  %16 = tail call i32 @llvm.fshl.i32(i32 %i.bxc, i32 %i.bxb, i32 12)
  %17 = load i32, ptr %14, align 1                ; 2 uses
  %18 = load <2 x i32>, ptr %13, align 1
  %19 = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %18, <2 x i32> %15, <2 x i32> <i32 4, i32 16>)
  %20 = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 36
  %21 = load i32, ptr %20, align 1                ; 2 uses
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %17, i32 8)
  %i.bxd = insertelement <16 x i32> poison, i32 %5, i64 0
  %23 = insertelement <16 x i32> %i.bxd, i32 %8, i64 1
  %i.bxe = lshr i32 %6, 8
  %i.bxf = insertelement <16 x i32> %23, i32 %i.bxe, i64 2
  %i.bxg = shufflevector <2 x i32> %i.bwy, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bxh = shufflevector <16 x i32> %i.bxf, <16 x i32> %i.bxg, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bxi = lshr i32 %9, 4
  %24 = insertelement <16 x i32> %i.bxh, i32 %i.bxi, i64 5
  %i.bxj = insertelement <16 x i32> %24, i32 %10, i64 6
  %i.bxk = lshr i32 %i.bxa, 12
  %25 = insertelement <16 x i32> %i.bxj, i32 %i.bxk, i64 7
  %i.bxl = insertelement <16 x i32> %25, i32 %i.bxb, i64 8
  %i.bxm = insertelement <16 x i32> %i.bxl, i32 %16, i64 9
  %i.bxn = lshr i32 %i.bxc, 8
  %i.bxo = insertelement <16 x i32> %i.bxm, i32 %i.bxn, i64 10
  %i.bxp = shufflevector <2 x i32> %19, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bxq = shufflevector <16 x i32> %i.bxo, <16 x i32> %i.bxp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 poison, i32 poison, i32 poison>
  %i.bxr = lshr i32 %17, 4
  %i.bxs = insertelement <16 x i32> %i.bxq, i32 %i.bxr, i64 13
  %26 = insertelement <16 x i32> %i.bxs, i32 %22, i64 14
  %i.bxt = lshr i32 %21, 12
  %.sroa.0127.60.vec.insert.i.i528 = insertelement <16 x i32> %26, i32 %i.bxt, i64 15
  %i.bxu = bitcast <16 x i32> %.sroa.0127.60.vec.insert.i.i528 to <8 x i64>
  %i.bxv = and <8 x i64> %i.bxu, splat (i64 4503595333451775)
  store <8 x i64> %i.bxv, ptr %.02630.i527, align 1, !tbaa !15
  %i.bxw = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 40
  %i.bxx = load i32, ptr %i.bxw, align 1          ; 2 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 44 ; 2 uses
  %i.bxz = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 48
  %i.bya = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 52
  %i.byb = load i32, ptr %i.bxy, align 1          ; 2 uses
  %i.byc = load <2 x i32>, ptr %i.bxy, align 1
  %i.byd = tail call i32 @llvm.fshl.i32(i32 %i.byb, i32 %i.bxx, i32 12)
  %i.bye = load i32, ptr %i.bya, align 1          ; 2 uses
  %i.byf = load <2 x i32>, ptr %i.bxz, align 1
  %i.byg = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.byf, <2 x i32> %i.byc, <2 x i32> <i32 4, i32 16>)
  %i.byh = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 56
  %i.byi = load i32, ptr %i.byh, align 1          ; 2 uses
  %i.byj = tail call i32 @llvm.fshl.i32(i32 %i.byi, i32 %i.bye, i32 8)
  %i.byk = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 60
  %i.byl = load i32, ptr %i.byk, align 1          ; 2 uses
  %i.bym = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 64 ; 2 uses
  %i.byn = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 68
  %i.byo = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 72
  %i.byp = load i32, ptr %i.bym, align 1          ; 2 uses
  %i.byq = load <2 x i32>, ptr %i.bym, align 1
  %i.byr = tail call i32 @llvm.fshl.i32(i32 %i.byp, i32 %i.byl, i32 12)
  %i.bys = load i32, ptr %i.byo, align 1          ; 2 uses
  %i.byt = load <2 x i32>, ptr %i.byn, align 1
  %i.byu = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.byt, <2 x i32> %i.byq, <2 x i32> <i32 4, i32 16>)
  %i.byv = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 76
  %i.byw = load i32, ptr %i.byv, align 1          ; 2 uses
  %i.byx = tail call i32 @llvm.fshl.i32(i32 %i.byw, i32 %i.bys, i32 8)
  %i.byy = insertelement <16 x i32> poison, i32 %i.bxx, i64 0
  %i.byz = insertelement <16 x i32> %i.byy, i32 %i.byd, i64 1
  %i.bza = lshr i32 %i.byb, 8
  %i.bzb = insertelement <16 x i32> %i.byz, i32 %i.bza, i64 2
  %i.bzc = shufflevector <2 x i32> %i.byg, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bzd = shufflevector <16 x i32> %i.bzb, <16 x i32> %i.bzc, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bze = lshr i32 %i.bye, 4
  %i.bzf = insertelement <16 x i32> %i.bzd, i32 %i.bze, i64 5
  %i.bzg = insertelement <16 x i32> %i.bzf, i32 %i.byj, i64 6
  %i.bzh = lshr i32 %i.byi, 12
  %i.bzi = insertelement <16 x i32> %i.bzg, i32 %i.bzh, i64 7
  %i.bzj = insertelement <16 x i32> %i.bzi, i32 %i.byl, i64 8
  %i.bzk = insertelement <16 x i32> %i.bzj, i32 %i.byr, i64 9
  %i.bzl = lshr i32 %i.byp, 8
  %i.bzm = insertelement <16 x i32> %i.bzk, i32 %i.bzl, i64 10
  %i.bzn = shufflevector <2 x i32> %i.byu, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bzo = shufflevector <16 x i32> %i.bzm, <16 x i32> %i.bzn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 poison, i32 poison, i32 poison>
  %i.bzp = lshr i32 %i.bys, 4
  %i.bzq = insertelement <16 x i32> %i.bzo, i32 %i.bzp, i64 13
  %i.bzr = insertelement <16 x i32> %i.bzq, i32 %i.byx, i64 14
  %i.bzs = lshr i32 %i.byw, 12
  %.sroa.0147.60.vec.insert.i.i529 = insertelement <16 x i32> %i.bzr, i32 %i.bzs, i64 15
  %i.bzt = getelementptr inbounds nuw i8, ptr %.02630.i527, i64 64
  %i.bzu = bitcast <16 x i32> %.sroa.0147.60.vec.insert.i.i529 to <8 x i64>
  %i.bzv = and <8 x i64> %i.bzu, splat (i64 4503595333451775)
  store <8 x i64> %i.bzv, ptr %i.bzt, align 1, !tbaa !15
  %i.bzw = getelementptr inbounds nuw i8, ptr %.02531.i526, i64 80 ; 2 uses
  %i.bzx = getelementptr inbounds nuw i8, ptr %.02630.i527, i64 128 ; 2 uses
  %i.bzy = add nuw nsw i32 %.032.i525, 1          ; 2 uses
  %exitcond.not.i530 = icmp eq i32 %i.bzy, %i.bvx
  br i1 %exitcond.not.i530, label %._crit_edge.i516, label %.lr.ph.i524, !llvm.loop !169

bb.aq:                                            ; preds = %bb.a
  %i.bzz = mul nsw i32 %2, 21
  %i.caa = add nsw i32 %4, %i.bzz
  %i.cab = icmp sgt i32 %2, 0
  br i1 %i.cab, label %.lr.ph.i.i551, label %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i551:                                    ; preds = %bb.aq, %bb.ar
  %.026.i.i552 = phi ptr [ %i.car, %bb.ar ], [ %1, %bb.aq ] ; 2 uses
  %.02325.i.i553 = phi i32 [ %i.cae, %bb.ar ], [ %4, %bb.aq ] ; 5 uses
  %i.cac = srem i32 %.02325.i.i553, 8             ; 2 uses
  %i.cad = sdiv i32 %.02325.i.i553, 8             ; 2 uses
  %.not.i.i554 = icmp eq i32 %i.cac, 0
  br i1 %.not.i.i554, label %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i551
  %i.cae = add nsw i32 %.02325.i.i553, 21         ; 3 uses
  %i.caf = add nsw i32 %.02325.i.i553, 20
  %i.cag = sdiv i32 %i.caf, 8
  %i.cah = sub nsw i32 %i.cag, %i.cad             ; 2 uses
  %i.cai = add nsw i32 %i.cah, 1
  %i.caj = icmp slt i32 %i.cah, 4
  tail call void @llvm.assume(i1 %i.caj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8, !tbaa !19
  %i.cak = sext i32 %i.cad to i64
  %i.cal = getelementptr inbounds i8, ptr %0, i64 %i.cak
  %i.cam = sext i32 %i.cai to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr readonly align 1 %i.cal, i64 %i.cam, i1 false)
  %.0..0..0..0..0..0..0..0..i.i555 = load i64, ptr %i.v, align 8, !tbaa !19
  %i.can = zext nneg i32 %i.cac to i64
  %i.cao = lshr i64 %.0..0..0..0..0..0..0..0..i.i555, %i.can
  %i.cap = trunc i64 %i.cao to i32
  %i.caq = and i32 %i.cap, 2097151
  store i32 %i.caq, ptr %.026.i.i552, align 4, !tbaa !3
  %i.car = getelementptr inbounds nuw i8, ptr %.026.i.i552, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.cas = icmp slt i32 %i.cae, %i.caa
  br i1 %i.cas, label %.lr.ph.i.i551, label %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !170

_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ar, %.lr.ph.i.i551, %bb.aq
  %.023.lcssa.i.i536 = phi i32 [ %4, %bb.aq ], [ %i.cae, %bb.ar ], [ %.02325.i.i553, %.lr.ph.i.i551 ]
  %i.cat = sub nsw i32 %.023.lcssa.i.i536, %4
  %i.cau = sdiv i32 %i.cat, 21                    ; 3 uses
  %i.cav = mul nsw i32 %i.cau, 21
  %i.caw = add nsw i32 %i.cav, %4
  %i.cax = sub nsw i32 %2, %i.cau                 ; 4 uses
  %i.cay = sdiv i32 %i.caw, 8
  %i.caz = sext i32 %i.cay to i64
  %i.cba = getelementptr inbounds i8, ptr %0, i64 %i.caz ; 2 uses
  %i.cbb = sext i32 %i.cau to i64
  %i.cbc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cbb ; 2 uses
  %i.cbd = sdiv i32 %i.cax, 32                    ; 2 uses
  %i.cbe = icmp sgt i32 %i.cax, 31
  br i1 %i.cbe, label %.lr.ph.i545, label %._crit_edge.i537

._crit_edge.i537:                                 ; preds = %.lr.ph.i545, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i538 = phi ptr [ %i.cbc, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cgl, %.lr.ph.i545 ]
  %.025.lcssa.i539 = phi ptr [ %i.cba, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cgk, %.lr.ph.i545 ]
  %i.cbf = shl nsw i32 %i.cbd, 5                  ; 2 uses
  %i.cbg = sub nsw i32 %i.cax, %i.cbf             ; 2 uses
  %i.cbh = icmp samesign ult i32 %i.cbg, 32
  tail call void @llvm.assume(i1 %i.cbh)
  %i.cbi = mul nuw nsw i32 %i.cbg, 21
  %.not.i540 = icmp eq i32 %i.cax, %i.cbf
  br i1 %.not.i540, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i541

.lr.ph.i28.i541:                                  ; preds = %._crit_edge.i537, %.lr.ph.i28.i541
  %.024.i.i542 = phi ptr [ %i.cby, %.lr.ph.i28.i541 ], [ %.026.lcssa.i538, %._crit_edge.i537 ] ; 2 uses
  %.02223.i.i543 = phi i32 [ %i.cbk, %.lr.ph.i28.i541 ], [ 0, %._crit_edge.i537 ] ; 4 uses
  %i.cbj = lshr i32 %.02223.i.i543, 3             ; 2 uses
  %i.cbk = add nuw nsw i32 %.02223.i.i543, 21     ; 2 uses
  %i.cbl = add nuw nsw i32 %.02223.i.i543, 20
  %i.cbm = lshr i32 %i.cbl, 3
  %i.cbn = sub nsw i32 %i.cbm, %i.cbj             ; 2 uses
  %i.cbo = add nsw i32 %i.cbn, 1
  %i.cbp = icmp slt i32 %i.cbn, 4
  tail call void @llvm.assume(i1 %i.cbp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 0, ptr %i.u, align 8, !tbaa !19
  %i.cbq = zext nneg i32 %i.cbj to i64
  %i.cbr = getelementptr inbounds nuw i8, ptr %.025.lcssa.i539, i64 %i.cbq
  %i.cbs = sext i32 %i.cbo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 1 %i.cbr, i64 %i.cbs, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i544 = load i64, ptr %i.u, align 8, !tbaa !19
  %i.cbt = and i32 %.02223.i.i543, 7
  %i.cbu = zext nneg i32 %i.cbt to i64
  %i.cbv = lshr i64 %.0..0..0..0..0..0..0..0..i29.i544, %i.cbu
  %i.cbw = trunc i64 %i.cbv to i32
  %i.cbx = and i32 %i.cbw, 2097151
  store i32 %i.cbx, ptr %.024.i.i542, align 4, !tbaa !3
  %i.cby = getelementptr inbounds nuw i8, ptr %.024.i.i542, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.cbz = icmp samesign ult i32 %i.cbk, %i.cbi
  br i1 %i.cbz, label %.lr.ph.i28.i541, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !171

.lr.ph.i545:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i545
  %.032.i546 = phi i32 [ %i.cgm, %.lr.ph.i545 ], [ 0, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i547 = phi ptr [ %i.cgk, %.lr.ph.i545 ], [ %i.cba, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i ] ; 22 uses
  %.02630.i548 = phi ptr [ %i.cgl, %.lr.ph.i545 ], [ %i.cbc, %_ZN5arrow8internal12unpack_exactILi21ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.cca = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 4 ; 2 uses
  %i.ccb = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 8
  %i.ccc = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 12 ; 2 uses
  %i.ccd = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 16
  %i.cce = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 20
  %i.ccf = load <2 x i32>, ptr %i.ccc, align 1
  %i.ccg = load <2 x i32>, ptr %i.cca, align 1
  %i.cch = load i32, ptr %i.ccc, align 1
  %i.cci = load <2 x i32>, ptr %i.ccb, align 1
  %i.ccj = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cci, <2 x i32> %i.ccg, <2 x i32> <i32 1, i32 12>)
  %i.cck = load <2 x i32>, ptr %i.ccd, align 1
  %i.ccl = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cck, <2 x i32> %i.ccf, <2 x i32> <i32 2, i32 13>)
  %i.ccm = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 24
  %i.ccn = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 28 ; 2 uses
  %i.cco = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 32
  %i.ccp = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 36
  %i.ccq = load <2 x i32>, ptr %i.ccn, align 1
  %i.ccr = load <2 x i32>, ptr %i.cco, align 1
  %i.ccs = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.ccr, <2 x i32> %i.ccq, <2 x i32> <i32 4, i32 15>)
  %i.cct = getelementptr inbounds nuw i8, ptr %.02531.i547, i64 40 ; 2 uses
  %i.ccu = load i32, ptr %i.ccp, align 1          ; 2 uses
  %i.ccv = load i32, ptr %i.cce, align 1          ; 2 uses
  %i.ccw = load i32, ptr %.02531.i547, align 1    ; 2 uses
  %i.ccx = load i32, ptr %i.cct, align 1
  %i.ccy = load i32, ptr %i.ccn, align 1          ; 2 uses
  %i.ccz = load i32, ptr %i.ccm, align 1          ; 2 uses
  %i.cda = load i32, ptr %i.cca, align 1          ; 2 uses
  %i.cdb = insertelement <4 x i32> poison, i32 %i.cda, i64 0
  %i.cdc = insertelement <4 x i32> %i.cdb, i32 %i.ccz, i64 1
  %i.cdd = insertelement <4 x i32> %i.cdc, i32 %i.ccy, i64 2
  %i.cde = insertelement <4 x i32> %i.cdd, i32 %i.ccx, i64 3
  %i.cdf = insertelement <4 x i32> poison, i32 %i.ccw, i64 0
  %i.cdg = insertelement <4 x i32> %i.cdf, i32 %i.ccv, i64 1
  %i.cdh = insertelement <4 x i32> %i.cdg, i32 %i.ccz, i64 2
  %i.cdi = insertelement <4 x i32> %i.cdh, i32 %i.ccu, i64 3
  %i.cdj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cde, <4 x i32> %i.cdi, <4 x i32> <i32 11, i32 3, i32 14, i32 5>)
  %i.cdk = insertelement <16 x i32> poison, i32 %i.ccw, i64 0
  %i.cdl = shufflevector <4 x i32> %i.cdj, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
end_hunk_0
