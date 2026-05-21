inline.NumInlined: 10913
inline.NumDeleted: 449
begin_hunk_0_@_ZN5arrow8internal13unpack_avx512ItEEvPKhPT_iii:bb.a
  %i.apz = sub nsw i32 %i.apy, %i.apv             ; 2 uses
  %i.aqa = add nsw i32 %i.apz, 1
  %i.aqb = icmp slt i32 %i.apz, 3
  tail call void @llvm.assume(i1 %i.aqb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8, !tbaa !19
  %i.aqc = zext nneg i32 %i.apv to i64
  %i.aqd = getelementptr inbounds nuw i8, ptr %.025.lcssa.i313.i, i64 %i.aqc
  %i.aqe = sext i32 %i.aqa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 1 %i.aqd, i64 %i.aqe, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i318.i = load i64, ptr %i.f, align 8, !tbaa !19
  %i.aqf = and i32 %.02223.i.i317.i, 7
  %i.aqg = zext nneg i32 %i.aqf to i64
  %i.aqh = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i318.i, %i.aqg
  %i.aqi = trunc i64 %i.aqh to i16
  %i.aqj = and i16 %i.aqi, 8191
  store i16 %i.aqj, ptr %.024.i.i316.i, align 2, !tbaa !41
  %i.aqk = getelementptr inbounds nuw i8, ptr %.024.i.i316.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aql = icmp samesign ult i32 %i.apw, %i.apu
  br i1 %i.aql, label %.lr.ph.i28.i315.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !88

.lr.ph.i319.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi13ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i319.i
  %.032.i320.i = phi i32 [ %i.asj, %.lr.ph.i319.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi13ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i321.i = phi ptr [ %i.ash, %.lr.ph.i319.i ], [ %i.apm, %_ZN5arrow8internal12unpack_exactILi13ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 7 uses
  %.02630.i322.i = phi ptr [ %i.asi, %.lr.ph.i319.i ], [ %i.apo, %_ZN5arrow8internal12unpack_exactILi13ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %.02531.i321.i, i64 4
  %i.aqn = getelementptr inbounds nuw i8, ptr %.02531.i321.i, i64 8
  %i.aqo = getelementptr inbounds nuw i8, ptr %.02531.i321.i, i64 12
  %i.aqp = getelementptr inbounds nuw i8, ptr %.02531.i321.i, i64 24 ; 2 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %.02531.i321.i, i64 36
  %i.aqr = load <6 x i32>, ptr %i.aqp, align 1    ; 4 uses
  %i.aqs = shufflevector <6 x i32> %i.aqr, <6 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 4, i32 4, i32 5>
  %i.aqt = load <4 x i32>, ptr %i.aqn, align 1    ; 2 uses
  %i.aqu = load <2 x i32>, ptr %.02531.i321.i, align 1 ; 2 uses
  %i.aqv = load <2 x i32>, ptr %i.aqm, align 1    ; 2 uses
  %i.aqw = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.aqv, <2 x i32> %i.aqu, <2 x i32> <i32 6, i32 12>)
  %i.aqx = load i32, ptr %i.aqp, align 1
  %i.aqy = load <4 x i32>, ptr %i.aqo, align 1    ; 3 uses
  %i.aqz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aqy, <4 x i32> %i.aqt, <4 x i32> <i32 5, i32 11, i32 4, i32 10>)
  %i.ara = shufflevector <2 x i32> %i.aqv, <2 x i32> %i.aqu, <8 x i32> <i32 2, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.arb = shufflevector <4 x i32> %i.aqt, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.arc = shufflevector <8 x i32> %i.ara, <8 x i32> %i.arb, <8 x i32> <i32 0, i32 poison, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ard = shufflevector <4 x i32> %i.aqy, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.are = shufflevector <8 x i32> %i.arc, <8 x i32> %i.ard, <8 x i32> <i32 0, i32 0, i32 2, i32 3, i32 3, i32 8, i32 9, i32 9>
  %i.arf = shufflevector <4 x i32> %i.aqy, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 3>
  %i.arg = shufflevector <4 x i32> %i.aqz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.arh = shufflevector <8 x i32> %i.are, <8 x i32> %i.arg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.ari = shufflevector <2 x i32> %i.aqw, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.arj = shufflevector <16 x i32> %i.arh, <16 x i32> %i.ari, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.ark = shufflevector <16 x i32> %i.arj, <16 x i32> %i.arf, <16 x i32> <i32 0, i32 1, i32 10, i32 2, i32 11, i32 3, i32 4, i32 12, i32 5, i32 13, i32 6, i32 7, i32 14, i32 29, i32 15, i32 31>
  %i.arl = lshr <16 x i32> %i.ark, <i32 0, i32 13, i32 0, i32 7, i32 0, i32 1, i32 14, i32 0, i32 8, i32 0, i32 2, i32 15, i32 0, i32 9, i32 0, i32 3>
  %i.arm = shufflevector <6 x i32> %i.aqr, <6 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.arn = shufflevector <6 x i32> %i.aqr, <6 x i32> poison, <2 x i32> <i32 poison, i32 1>
  %i.aro = insertelement <2 x i32> %i.arn, i32 %i.aqx, i64 0
  %i.arp = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.arm, <2 x i32> %i.aro, <2 x i32> <i32 3, i32 9>)
  %i.arq = load <4 x i32>, ptr %i.aqq, align 1    ; 2 uses
  %i.arr = shufflevector <6 x i32> %i.aqr, <6 x i32> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ars = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.arq, <4 x i32> %i.arr, <4 x i32> <i32 2, i32 8, i32 1, i32 7>)
  %i.art = shufflevector <4 x i32> %i.arq, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 3>
  %i.aru = shufflevector <4 x i32> %i.ars, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.arv = shufflevector <8 x i32> %i.aqs, <8 x i32> %i.aru, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.arw = shufflevector <2 x i32> %i.arp, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.arx = shufflevector <16 x i32> %i.arv, <16 x i32> %i.arw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.ary = shufflevector <16 x i32> %i.arx, <16 x i32> %i.art, <16 x i32> <i32 0, i32 10, i32 1, i32 11, i32 2, i32 3, i32 12, i32 4, i32 13, i32 5, i32 6, i32 14, i32 7, i32 15, i32 30, i32 31>
  %i.arz = lshr <16 x i32> %i.ary, <i32 16, i32 0, i32 10, i32 0, i32 4, i32 17, i32 0, i32 11, i32 0, i32 5, i32 18, i32 0, i32 12, i32 0, i32 6, i32 19>
  %i.asa = bitcast <16 x i32> %i.arl to <32 x i16>
  %i.asb = and <32 x i16> %i.asa, <i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison>
  %i.asc = shufflevector <32 x i16> %i.asb, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.asc, ptr %.02630.i322.i, align 2, !tbaa !41
  %i.asd = bitcast <16 x i32> %i.arz to <32 x i16>
  %i.ase = and <32 x i16> %i.asd, <i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison, i16 8191, i16 poison>
  %i.asf = getelementptr inbounds nuw i8, ptr %.02630.i322.i, i64 32
  %i.asg = shufflevector <32 x i16> %i.ase, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.asg, ptr %i.asf, align 2, !tbaa !41
  %i.ash = getelementptr inbounds nuw i8, ptr %.02531.i321.i, i64 52 ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %.02630.i322.i, i64 64 ; 2 uses
  %i.asj = add nuw nsw i32 %.032.i320.i, 1        ; 2 uses
  %exitcond.not.i323.i = icmp eq i32 %i.asj, %i.app
  br i1 %exitcond.not.i323.i, label %._crit_edge.i311.i, label %.lr.ph.i319.i, !llvm.loop !89

bb.ac:                                            ; preds = %bb.a
  %i.ask = mul nsw i32 %2, 14
  %i.asl = add nsw i32 %4, %i.ask
  %i.asm = icmp sgt i32 %2, 0
  br i1 %i.asm, label %.lr.ph.i.i345.i, label %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i345.i:                                  ; preds = %bb.ac, %bb.ad
  %.026.i.i346.i = phi ptr [ %i.atc, %bb.ad ], [ %1, %bb.ac ] ; 2 uses
  %.02325.i.i347.i = phi i32 [ %i.asp, %bb.ad ], [ %4, %bb.ac ] ; 5 uses
  %i.asn = srem i32 %.02325.i.i347.i, 8           ; 2 uses
  %i.aso = sdiv i32 %.02325.i.i347.i, 8           ; 2 uses
  %.not.i.i348.i = icmp eq i32 %i.asn, 0
  br i1 %.not.i.i348.i, label %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i345.i
  %i.asp = add nsw i32 %.02325.i.i347.i, 14       ; 3 uses
  %i.asq = add nsw i32 %.02325.i.i347.i, 13
  %i.asr = sdiv i32 %i.asq, 8
  %i.ass = sub nsw i32 %i.asr, %i.aso             ; 2 uses
  %i.ast = add nsw i32 %i.ass, 1
  %i.asu = icmp slt i32 %i.ass, 3
  tail call void @llvm.assume(i1 %i.asu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8, !tbaa !19
  %i.asv = sext i32 %i.aso to i64
  %i.asw = getelementptr inbounds i8, ptr %0, i64 %i.asv
  %i.asx = sext i32 %i.ast to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr readonly align 1 %i.asw, i64 %i.asx, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i349.i = load i64, ptr %i.e, align 8, !tbaa !19
  %i.asy = zext nneg i32 %i.asn to i64
  %i.asz = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i349.i, %i.asy
  %i.ata = trunc i64 %i.asz to i16
  %i.atb = and i16 %i.ata, 16383
  store i16 %i.atb, ptr %.026.i.i346.i, align 2, !tbaa !41
  %i.atc = getelementptr inbounds nuw i8, ptr %.026.i.i346.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.atd = icmp slt i32 %i.asp, %i.asl
  br i1 %i.atd, label %.lr.ph.i.i345.i, label %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !90

_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.ad, %.lr.ph.i.i345.i, %bb.ac
  %.023.lcssa.i.i329.i = phi i32 [ %4, %bb.ac ], [ %.02325.i.i347.i, %.lr.ph.i.i345.i ], [ %i.asp, %bb.ad ]
  %i.ate = sub nsw i32 %.023.lcssa.i.i329.i, %4
  %i.atf = sdiv i32 %i.ate, 14                    ; 3 uses
  %i.atg = mul nsw i32 %i.atf, 14
  %i.ath = add nsw i32 %i.atg, %4
  %i.ati = sub nsw i32 %2, %i.atf                 ; 4 uses
  %i.atj = sdiv i32 %i.ath, 8
  %i.atk = sext i32 %i.atj to i64
  %i.atl = getelementptr inbounds i8, ptr %0, i64 %i.atk ; 2 uses
  %i.atm = sext i32 %i.atf to i64
  %i.atn = getelementptr inbounds [2 x i8], ptr %1, i64 %i.atm ; 2 uses
  %i.ato = sdiv i32 %i.ati, 32                    ; 2 uses
  %i.atp = icmp sgt i32 %i.ati, 31
  br i1 %i.atp, label %.lr.ph.i338.i, label %._crit_edge.i330.i

._crit_edge.i330.i:                               ; preds = %.lr.ph.i338.i, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i331.i = phi ptr [ %i.atn, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.awd, %.lr.ph.i338.i ]
  %.025.lcssa.i332.i = phi ptr [ %i.atl, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.awc, %.lr.ph.i338.i ]
  %i.atq = shl nsw i32 %i.ato, 5                  ; 2 uses
  %i.atr = sub nsw i32 %i.ati, %i.atq             ; 2 uses
  %i.ats = icmp samesign ult i32 %i.atr, 32
  tail call void @llvm.assume(i1 %i.ats)
  %i.att = mul nuw nsw i32 %i.atr, 14
  %.not.i333.i = icmp eq i32 %i.ati, %i.atq
  br i1 %.not.i333.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i334.i

.lr.ph.i28.i334.i:                                ; preds = %._crit_edge.i330.i, %.lr.ph.i28.i334.i
  %.024.i.i335.i = phi ptr [ %i.auj, %.lr.ph.i28.i334.i ], [ %.026.lcssa.i331.i, %._crit_edge.i330.i ] ; 2 uses
  %.02223.i.i336.i = phi i32 [ %i.atv, %.lr.ph.i28.i334.i ], [ 0, %._crit_edge.i330.i ] ; 4 uses
  %i.atu = lshr i32 %.02223.i.i336.i, 3           ; 2 uses
  %i.atv = add nuw nsw i32 %.02223.i.i336.i, 14   ; 2 uses
  %i.atw = add nuw nsw i32 %.02223.i.i336.i, 12
  %i.atx = lshr i32 %i.atw, 3
  %i.aty = sub nsw i32 %i.atx, %i.atu             ; 2 uses
  %i.atz = add nsw i32 %i.aty, 1
  %i.aua = icmp slt i32 %i.aty, 3
  tail call void @llvm.assume(i1 %i.aua)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !tbaa !19
  %i.aub = zext nneg i32 %i.atu to i64
  %i.auc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i332.i, i64 %i.aub
  %i.aud = sext i32 %i.atz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 1 %i.auc, i64 %i.aud, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i337.i = load i64, ptr %i.d, align 8, !tbaa !19
  %i.aue = and i32 %.02223.i.i336.i, 6
  %i.auf = zext nneg i32 %i.aue to i64
  %i.aug = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i337.i, %i.auf
  %i.auh = trunc i64 %i.aug to i16
  %i.aui = and i16 %i.auh, 16383
  store i16 %i.aui, ptr %.024.i.i335.i, align 2, !tbaa !41
  %i.auj = getelementptr inbounds nuw i8, ptr %.024.i.i335.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.auk = icmp samesign ult i32 %i.atv, %i.att
  br i1 %i.auk, label %.lr.ph.i28.i334.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !91

.lr.ph.i338.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i338.i
  %.032.i339.i = phi i32 [ %i.awe, %.lr.ph.i338.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i340.i = phi ptr [ %i.awc, %.lr.ph.i338.i ], [ %i.atl, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 6 uses
  %.02630.i341.i = phi ptr [ %i.awd, %.lr.ph.i338.i ], [ %i.atn, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %.02531.i340.i, i64 4
  %i.aum = getelementptr inbounds nuw i8, ptr %.02531.i340.i, i64 12
  %i.aun = load <2 x i32>, ptr %i.aul, align 1    ; 3 uses
  %i.auo = load <2 x i32>, ptr %.02531.i340.i, align 1 ; 2 uses
  %i.aup = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.aun, <2 x i32> %i.auo, <2 x i32> <i32 4, i32 8>)
  %i.auq = load <4 x i32>, ptr %i.aum, align 1    ; 4 uses
  %i.aur = shufflevector <4 x i32> %i.auq, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.aus = shufflevector <2 x i32> %i.aun, <2 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aut = shufflevector <4 x i32> %i.aus, <4 x i32> %i.aur, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.auu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.auq, <4 x i32> %i.aut, <4 x i32> <i32 12, i32 2, i32 6, i32 10>)
  %i.auv = shufflevector <2 x i32> %i.aun, <2 x i32> %i.auo, <8 x i32> <i32 2, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.auw = shufflevector <4 x i32> %i.auq, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aux = shufflevector <8 x i32> %i.auv, <8 x i32> %i.auw, <8 x i32> <i32 0, i32 0, i32 2, i32 3, i32 8, i32 8, i32 9, i32 10>
  %i.auy = shufflevector <4 x i32> %i.auq, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 3>
  %i.auz = shufflevector <4 x i32> %i.auu, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ava = shufflevector <8 x i32> %i.aux, <8 x i32> %i.auz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.avb = shufflevector <2 x i32> %i.aup, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avc = shufflevector <16 x i32> %i.ava, <16 x i32> %i.avb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.avd = shufflevector <16 x i32> %i.avc, <16 x i32> %i.auy, <16 x i32> <i32 0, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 30, i32 31>
  %i.ave = lshr <16 x i32> %i.avd, <i32 0, i32 14, i32 0, i32 10, i32 0, i32 6, i32 0, i32 2, i32 16, i32 0, i32 12, i32 0, i32 8, i32 0, i32 4, i32 18>
  %i.avf = getelementptr i8, ptr %.02531.i340.i, <8 x i64> <i64 28, i64 28, i64 32, i64 36, i64 40, i64 40, i64 44, i64 48>
  %i.avg = getelementptr inbounds nuw i8, ptr %.02531.i340.i, i64 40
  %i.avh = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 1 %i.avf, <8 x i1> splat (i1 true), <8 x i32> poison) ; 4 uses
  %i.avi = shufflevector <8 x i32> %i.avh, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.avj = shufflevector <8 x i32> %i.avh, <8 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.avk = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.avi, <2 x i32> %i.avj, <2 x i32> <i32 4, i32 8>)
  %i.avl = load <4 x i32>, ptr %i.avg, align 1    ; 2 uses
  %i.avm = shufflevector <8 x i32> %i.avh, <8 x i32> poison, <4 x i32> <i32 3, i32 4, i32 6, i32 7>
  %i.avn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.avl, <4 x i32> %i.avm, <4 x i32> <i32 12, i32 2, i32 6, i32 10>)
  %i.avo = shufflevector <4 x i32> %i.avl, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 3>
  %i.avp = shufflevector <4 x i32> %i.avn, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avq = shufflevector <8 x i32> %i.avh, <8 x i32> %i.avp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.avr = shufflevector <2 x i32> %i.avk, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avs = shufflevector <16 x i32> %i.avq, <16 x i32> %i.avr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.avt = shufflevector <16 x i32> %i.avs, <16 x i32> %i.avo, <16 x i32> <i32 0, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 30, i32 31>
  %i.avu = lshr <16 x i32> %i.avt, <i32 0, i32 14, i32 0, i32 10, i32 0, i32 6, i32 0, i32 2, i32 16, i32 0, i32 12, i32 0, i32 8, i32 0, i32 4, i32 18>
  %i.avv = bitcast <16 x i32> %i.ave to <32 x i16>
  %i.avw = and <32 x i16> %i.avv, <i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison>
  %i.avx = shufflevector <32 x i16> %i.avw, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.avx, ptr %.02630.i341.i, align 2, !tbaa !41
  %i.avy = bitcast <16 x i32> %i.avu to <32 x i16>
  %i.avz = and <32 x i16> %i.avy, <i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison>
  %i.awa = getelementptr inbounds nuw i8, ptr %.02630.i341.i, i64 32
  %i.awb = shufflevector <32 x i16> %i.avz, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.awb, ptr %i.awa, align 2, !tbaa !41
  %i.awc = getelementptr inbounds nuw i8, ptr %.02531.i340.i, i64 56 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.02630.i341.i, i64 64 ; 2 uses
  %i.awe = add nuw nsw i32 %.032.i339.i, 1        ; 2 uses
  %exitcond.not.i344.i = icmp eq i32 %i.awe, %i.ato
  br i1 %exitcond.not.i344.i, label %._crit_edge.i330.i, label %.lr.ph.i338.i, !llvm.loop !92

bb.ae:                                            ; preds = %bb.a
  %i.awf = mul nsw i32 %2, 15
  %i.awg = add nsw i32 %4, %i.awf
  %i.awh = icmp sgt i32 %2, 0
  br i1 %i.awh, label %.lr.ph.i.i364.i, label %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i364.i:                                  ; preds = %bb.ae, %bb.af
  %.026.i.i365.i = phi ptr [ %i.awx, %bb.af ], [ %1, %bb.ae ] ; 2 uses
  %.02325.i.i366.i = phi i32 [ %i.awk, %bb.af ], [ %4, %bb.ae ] ; 5 uses
  %i.awi = srem i32 %.02325.i.i366.i, 8           ; 2 uses
  %i.awj = sdiv i32 %.02325.i.i366.i, 8           ; 2 uses
  %.not.i.i367.i = icmp eq i32 %i.awi, 0
  br i1 %.not.i.i367.i, label %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i364.i
  %i.awk = add nsw i32 %.02325.i.i366.i, 15       ; 3 uses
  %i.awl = add nsw i32 %.02325.i.i366.i, 14
  %i.awm = sdiv i32 %i.awl, 8
  %i.awn = sub nsw i32 %i.awm, %i.awj             ; 2 uses
  %i.awo = add nsw i32 %i.awn, 1
  %i.awp = icmp slt i32 %i.awn, 3
  tail call void @llvm.assume(i1 %i.awp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !tbaa !19
  %i.awq = sext i32 %i.awj to i64
  %i.awr = getelementptr inbounds i8, ptr %0, i64 %i.awq
  %i.aws = sext i32 %i.awo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr readonly align 1 %i.awr, i64 %i.aws, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i368.i = load i64, ptr %i.c, align 8, !tbaa !19
  %i.awt = zext nneg i32 %i.awi to i64
  %i.awu = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i368.i, %i.awt
  %i.awv = trunc i64 %i.awu to i16
  %i.aww = and i16 %i.awv, 32767
  store i16 %i.aww, ptr %.026.i.i365.i, align 2, !tbaa !41
  %i.awx = getelementptr inbounds nuw i8, ptr %.026.i.i365.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.awy = icmp slt i32 %i.awk, %i.awg
  br i1 %i.awy, label %.lr.ph.i.i364.i, label %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !93

_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.af, %.lr.ph.i.i364.i, %bb.ae
  %.023.lcssa.i.i350.i = phi i32 [ %4, %bb.ae ], [ %.02325.i.i366.i, %.lr.ph.i.i364.i ], [ %i.awk, %bb.af ]
  %i.awz = sub nsw i32 %.023.lcssa.i.i350.i, %4
  %i.axa = sdiv i32 %i.awz, 15                    ; 3 uses
  %i.axb = mul nsw i32 %i.axa, 15
  %i.axc = add nsw i32 %i.axb, %4
  %i.axd = sub nsw i32 %2, %i.axa                 ; 4 uses
  %i.axe = sdiv i32 %i.axc, 8
  %i.axf = sext i32 %i.axe to i64
  %i.axg = getelementptr inbounds i8, ptr %0, i64 %i.axf ; 2 uses
  %i.axh = sext i32 %i.axa to i64
  %i.axi = getelementptr inbounds [2 x i8], ptr %1, i64 %i.axh ; 2 uses
  %i.axj = sdiv i32 %i.axd, 32                    ; 2 uses
  %i.axk = icmp sgt i32 %i.axd, 31
  br i1 %i.axk, label %.lr.ph.i359.i, label %._crit_edge.i351.i

._crit_edge.i351.i:                               ; preds = %.lr.ph.i359.i, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i352.i = phi ptr [ %i.axi, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.baz, %.lr.ph.i359.i ]
  %.025.lcssa.i353.i = phi ptr [ %i.axg, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.bay, %.lr.ph.i359.i ]
  %i.axl = shl nsw i32 %i.axj, 5                  ; 2 uses
  %i.axm = sub nsw i32 %i.axd, %i.axl             ; 2 uses
  %i.axn = icmp samesign ult i32 %i.axm, 32
  tail call void @llvm.assume(i1 %i.axn)
  %i.axo = mul nuw nsw i32 %i.axm, 15
  %.not.i354.i = icmp eq i32 %i.axd, %i.axl
  br i1 %.not.i354.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i355.i

.lr.ph.i28.i355.i:                                ; preds = %._crit_edge.i351.i, %.lr.ph.i28.i355.i
  %.024.i.i356.i = phi ptr [ %i.aye, %.lr.ph.i28.i355.i ], [ %.026.lcssa.i352.i, %._crit_edge.i351.i ] ; 2 uses
  %.02223.i.i357.i = phi i32 [ %i.axq, %.lr.ph.i28.i355.i ], [ 0, %._crit_edge.i351.i ] ; 4 uses
  %i.axp = lshr i32 %.02223.i.i357.i, 3           ; 2 uses
  %i.axq = add nuw nsw i32 %.02223.i.i357.i, 15   ; 2 uses
  %i.axr = add nuw nsw i32 %.02223.i.i357.i, 14
  %i.axs = lshr i32 %i.axr, 3
  %i.axt = sub nsw i32 %i.axs, %i.axp             ; 2 uses
  %i.axu = add nsw i32 %i.axt, 1
  %i.axv = icmp slt i32 %i.axt, 3
  tail call void @llvm.assume(i1 %i.axv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !19
  %i.axw = zext nneg i32 %i.axp to i64
  %i.axx = getelementptr inbounds nuw i8, ptr %.025.lcssa.i353.i, i64 %i.axw
  %i.axy = sext i32 %i.axu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %i.axx, i64 %i.axy, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i358.i = load i64, ptr %i.b, align 8, !tbaa !19
  %i.axz = and i32 %.02223.i.i357.i, 7
  %i.aya = zext nneg i32 %i.axz to i64
  %i.ayb = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i358.i, %i.aya
  %i.ayc = trunc i64 %i.ayb to i16
  %i.ayd = and i16 %i.ayc, 32767
  store i16 %i.ayd, ptr %.024.i.i356.i, align 2, !tbaa !41
  %i.aye = getelementptr inbounds nuw i8, ptr %.024.i.i356.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ayf = icmp samesign ult i32 %i.axq, %i.axo
  br i1 %i.ayf, label %.lr.ph.i28.i355.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !94

.lr.ph.i359.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i359.i
  %.032.i360.i = phi i32 [ %i.bba, %.lr.ph.i359.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i361.i = phi ptr [ %i.bay, %.lr.ph.i359.i ], [ %i.axg, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 9 uses
  %.02630.i362.i = phi ptr [ %i.baz, %.lr.ph.i359.i ], [ %i.axi, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %.02531.i361.i, i64 4
  %i.ayh = load i32, ptr %i.ayg, align 1          ; 3 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %.02531.i361.i, i64 8
  %i.ayj = load i32, ptr %i.ayi, align 1          ; 3 uses
  %i.ayk = tail call i32 @llvm.fshl.i32(i32 %i.ayj, i32 %i.ayh, i32 4)
  %i.ayl = getelementptr inbounds nuw i8, ptr %.02531.i361.i, i64 12
  %i.aym = load i32, ptr %i.ayl, align 1          ; 3 uses
  %i.ayn = tail call i32 @llvm.fshl.i32(i32 %i.aym, i32 %i.ayj, i32 6)
  %i.ayo = getelementptr inbounds nuw i8, ptr %.02531.i361.i, i64 16
  %i.ayp = load i32, ptr %i.ayo, align 1          ; 3 uses
  %i.ayq = tail call i32 @llvm.fshl.i32(i32 %i.ayp, i32 %i.aym, i32 8)
  %i.ayr = getelementptr inbounds nuw i8, ptr %.02531.i361.i, i64 20
  %i.ays = load i32, ptr %i.ayr, align 1          ; 3 uses
  %i.ayt = tail call i32 @llvm.fshl.i32(i32 %i.ays, i32 %i.ayp, i32 10)
  %i.ayu = getelementptr inbounds nuw i8, ptr %.02531.i361.i, i64 24
  %i.ayv = load i32, ptr %i.ayu, align 1          ; 3 uses
  %i.ayw = tail call i32 @llvm.fshl.i32(i32 %i.ayv, i32 %i.ays, i32 12)
  %i.ayx = getelementptr inbounds nuw i8, ptr %.02531.i361.i, i64 28
  %i.ayy = load i32, ptr %.02531.i361.i, align 1  ; 2 uses
  %i.ayz = tail call i32 @llvm.fshl.i32(i32 %i.ayh, i32 %i.ayy, i32 2)
  %i.aza = insertelement <2 x i32> poison, i32 %i.ayy, i64 0
  %i.azb = shufflevector <2 x i32> %i.aza, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.azc = lshr <16 x i32> %i.azb, <i32 0, i32 15, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %i.azd = insertelement <16 x i32> %i.azc, i32 %i.ayz, i64 2
  %i.aze = lshr i32 %i.ayh, 13
  %i.azf = insertelement <16 x i32> %i.azd, i32 %i.aze, i64 3
  %i.azg = insertelement <16 x i32> %i.azf, i32 %i.ayk, i64 4
  %i.azh = lshr i32 %i.ayj, 11
  %i.azi = insertelement <16 x i32> %i.azg, i32 %i.azh, i64 5
  %i.azj = insertelement <16 x i32> %i.azi, i32 %i.ayn, i64 6
  %i.azk = lshr i32 %i.aym, 9
  %i.azl = insertelement <16 x i32> %i.azj, i32 %i.azk, i64 7
  %i.azm = insertelement <16 x i32> %i.azl, i32 %i.ayq, i64 8
  %i.azn = lshr i32 %i.ayp, 7
  %i.azo = insertelement <16 x i32> %i.azm, i32 %i.azn, i64 9
  %i.azp = insertelement <16 x i32> %i.azo, i32 %i.ayt, i64 10
  %i.azq = lshr i32 %i.ays, 5
  %i.azr = insertelement <16 x i32> %i.azp, i32 %i.azq, i64 11
  %i.azs = insertelement <16 x i32> %i.azr, i32 %i.ayw, i64 12
  %i.azt = lshr i32 %i.ayv, 3
  %i.azu = insertelement <16 x i32> %i.azs, i32 %i.azt, i64 13
  %i.azv = load <8 x i32>, ptr %i.ayx, align 1    ; 8 uses
  %i.azw = extractelement <8 x i32> %i.azv, i64 0 ; 3 uses
  %i.azx = tail call i32 @llvm.fshl.i32(i32 %i.azw, i32 %i.ayv, i32 14)
  %i.azy = insertelement <16 x i32> %i.azu, i32 %i.azx, i64 14
  %i.azz = lshr i32 %i.azw, 1
  %.sroa.0123.60.vec.insert.i.i.i.i = insertelement <16 x i32> %i.azy, i32 %i.azz, i64 15
  %i.baa = extractelement <8 x i32> %i.azv, i64 1
  %i.bab = tail call i32 @llvm.fshl.i32(i32 %i.baa, i32 %i.azw, i32 1)
  %i.bac = shufflevector <8 x i32> %i.azv, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.bad = shufflevector <8 x i32> %i.azv, <8 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.bae = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bac, <2 x i32> %i.bad, <2 x i32> <i32 3, i32 5>)
  %i.baf = shufflevector <8 x i32> %i.azv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bag = shufflevector <8 x i32> %i.azv, <8 x i32> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bah = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.baf, <4 x i32> %i.bag, <4 x i32> <i32 7, i32 9, i32 11, i32 13>)
  %i.bai = insertelement <16 x i32> poison, i32 %i.bab, i64 1
  %i.baj = shufflevector <8 x i32> %i.azv, <8 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bak = shufflevector <16 x i32> %i.bai, <16 x i32> %i.baj, <16 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 23>
  %i.bal = shufflevector <4 x i32> %i.bah, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bam = shufflevector <8 x i32> %i.azv, <8 x i32> %i.bal, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.ban = shufflevector <2 x i32> %i.bae, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bao = shufflevector <16 x i32> %i.bam, <16 x i32> %i.ban, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.bap = shufflevector <16 x i32> %i.bao, <16 x i32> %i.bak, <16 x i32> <i32 0, i32 17, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7, i32 31>
  %i.baq = lshr <16 x i32> %i.bap, <i32 16, i32 0, i32 14, i32 0, i32 12, i32 0, i32 10, i32 0, i32 8, i32 0, i32 6, i32 0, i32 4, i32 0, i32 2, i32 17>
  %i.bar = bitcast <16 x i32> %.sroa.0123.60.vec.insert.i.i.i.i to <32 x i16>
  %i.bas = and <32 x i16> %i.bar, <i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison>
  %i.bat = shufflevector <32 x i16> %i.bas, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.bat, ptr %.02630.i362.i, align 2, !tbaa !41
  %i.bau = bitcast <16 x i32> %i.baq to <32 x i16>
  %i.bav = and <32 x i16> %i.bau, <i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison>
  %i.baw = getelementptr inbounds nuw i8, ptr %.02630.i362.i, i64 32
end_hunk_0
begin_hunk_1_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.ash = add nsw i32 %i.asg, 1
  %i.asi = icmp slt i32 %i.asg, 3
  tail call void @llvm.assume(i1 %i.asi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.aj, align 8, !tbaa !19
  %i.asj = zext nneg i32 %i.asc to i64
  %i.ask = getelementptr inbounds nuw i8, ptr %.025.lcssa.i377, i64 %i.asj
  %i.asl = sext i32 %i.ash to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 1 %i.ask, i64 %i.asl, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i382 = load i64, ptr %i.aj, align 8, !tbaa !19
  %i.asm = and i32 %.02223.i.i381, 7
  %i.asn = zext nneg i32 %i.asm to i64
  %i.aso = lshr i64 %.0..0..0..0..0..0..0..0..i29.i382, %i.asn
  %i.asp = trunc i64 %i.aso to i32
  %i.asq = and i32 %i.asp, 8191
  store i32 %i.asq, ptr %.024.i.i380, align 4, !tbaa !3
  %i.asr = getelementptr inbounds nuw i8, ptr %.024.i.i380, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.ass = icmp samesign ult i32 %i.asd, %i.asb
  br i1 %i.ass, label %.lr.ph.i28.i379, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !142

.lr.ph.i383:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i383
  %.032.i384 = phi i32 [ %i.auo, %.lr.ph.i383 ], [ 0, %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i385 = phi ptr [ %i.aum, %.lr.ph.i383 ], [ %i.art, %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i ] ; 7 uses
  %.02630.i386 = phi ptr [ %i.aun, %.lr.ph.i383 ], [ %i.arv, %_ZN5arrow8internal12unpack_exactILi13ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %.02531.i385, i64 4
  %i.asu = getelementptr inbounds nuw i8, ptr %.02531.i385, i64 8
  %i.asv = getelementptr inbounds nuw i8, ptr %.02531.i385, i64 12
  %i.asw = getelementptr inbounds nuw i8, ptr %.02531.i385, i64 24 ; 2 uses
  %i.asx = load <4 x i32>, ptr %i.asu, align 1    ; 2 uses
  %i.asy = load <2 x i32>, ptr %.02531.i385, align 1 ; 2 uses
  %i.asz = load <2 x i32>, ptr %i.ast, align 1    ; 2 uses
  %i.ata = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.asz, <2 x i32> %i.asy, <2 x i32> <i32 6, i32 12>)
  %i.atb = load <4 x i32>, ptr %i.asv, align 1    ; 3 uses
  %i.atc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.atb, <4 x i32> %i.asx, <4 x i32> <i32 5, i32 11, i32 4, i32 10>)
  %i.atd = shufflevector <2 x i32> %i.asz, <2 x i32> %i.asy, <8 x i32> <i32 2, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ate = shufflevector <4 x i32> %i.asx, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atf = shufflevector <8 x i32> %i.atd, <8 x i32> %i.ate, <8 x i32> <i32 0, i32 poison, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atg = shufflevector <4 x i32> %i.atb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ath = shufflevector <8 x i32> %i.atf, <8 x i32> %i.atg, <8 x i32> <i32 0, i32 0, i32 2, i32 3, i32 3, i32 8, i32 9, i32 9>
  %i.ati = shufflevector <4 x i32> %i.atb, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 3>
  %i.atj = shufflevector <4 x i32> %i.atc, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atk = shufflevector <8 x i32> %i.ath, <8 x i32> %i.atj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.atl = shufflevector <2 x i32> %i.ata, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atm = shufflevector <16 x i32> %i.atk, <16 x i32> %i.atl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.atn = shufflevector <16 x i32> %i.atm, <16 x i32> %i.ati, <16 x i32> <i32 0, i32 1, i32 10, i32 2, i32 11, i32 3, i32 4, i32 12, i32 5, i32 13, i32 6, i32 7, i32 14, i32 29, i32 15, i32 31>
  %i.ato = lshr <16 x i32> %i.atn, <i32 0, i32 13, i32 0, i32 7, i32 0, i32 1, i32 14, i32 0, i32 8, i32 0, i32 2, i32 15, i32 0, i32 9, i32 0, i32 3>
  %i.atp = bitcast <16 x i32> %i.ato to <8 x i64>
  %i.atq = and <8 x i64> %i.atp, splat (i64 35180077129727)
  store <8 x i64> %i.atq, ptr %.02630.i386, align 1, !tbaa !15
  %i.atr = getelementptr inbounds nuw i8, ptr %.02531.i385, i64 36
  %i.ats = load <6 x i32>, ptr %i.asw, align 1    ; 4 uses
  %i.att = shufflevector <6 x i32> %i.ats, <6 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 4, i32 4, i32 5>
  %i.atu = load i32, ptr %i.asw, align 1
  %i.atv = shufflevector <6 x i32> %i.ats, <6 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.atw = shufflevector <6 x i32> %i.ats, <6 x i32> poison, <2 x i32> <i32 poison, i32 1>
  %i.atx = insertelement <2 x i32> %i.atw, i32 %i.atu, i64 0
  %i.aty = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.atv, <2 x i32> %i.atx, <2 x i32> <i32 3, i32 9>)
  %i.atz = load <4 x i32>, ptr %i.atr, align 1    ; 2 uses
  %i.aua = shufflevector <6 x i32> %i.ats, <6 x i32> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.aub = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.atz, <4 x i32> %i.aua, <4 x i32> <i32 2, i32 8, i32 1, i32 7>)
  %i.auc = shufflevector <4 x i32> %i.atz, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 3>
  %i.aud = shufflevector <4 x i32> %i.aub, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aue = shufflevector <8 x i32> %i.att, <8 x i32> %i.aud, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.auf = shufflevector <2 x i32> %i.aty, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aug = shufflevector <16 x i32> %i.aue, <16 x i32> %i.auf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.auh = shufflevector <16 x i32> %i.aug, <16 x i32> %i.auc, <16 x i32> <i32 0, i32 10, i32 1, i32 11, i32 2, i32 3, i32 12, i32 4, i32 13, i32 5, i32 6, i32 14, i32 7, i32 15, i32 30, i32 31>
  %i.aui = lshr <16 x i32> %i.auh, <i32 16, i32 0, i32 10, i32 0, i32 4, i32 17, i32 0, i32 11, i32 0, i32 5, i32 18, i32 0, i32 12, i32 0, i32 6, i32 19>
  %i.auj = getelementptr inbounds nuw i8, ptr %.02630.i386, i64 64
  %i.auk = bitcast <16 x i32> %i.aui to <8 x i64>
  %i.aul = and <8 x i64> %i.auk, splat (i64 35180077129727)
  store <8 x i64> %i.aul, ptr %i.auj, align 1, !tbaa !15
  %i.aum = getelementptr inbounds nuw i8, ptr %.02531.i385, i64 52 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %.02630.i386, i64 128 ; 2 uses
  %i.auo = add nuw nsw i32 %.032.i384, 1          ; 2 uses
  %exitcond.not.i387 = icmp eq i32 %i.auo, %i.arw
  br i1 %exitcond.not.i387, label %._crit_edge.i375, label %.lr.ph.i383, !llvm.loop !143

bb.ac:                                            ; preds = %bb.a
  %i.aup = mul nsw i32 %2, 14
  %i.auq = add nsw i32 %4, %i.aup
  %i.aur = icmp sgt i32 %2, 0
  br i1 %i.aur, label %.lr.ph.i.i409, label %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i409:                                    ; preds = %bb.ac, %bb.ad
  %.026.i.i410 = phi ptr [ %i.avh, %bb.ad ], [ %1, %bb.ac ] ; 2 uses
  %.02325.i.i411 = phi i32 [ %i.auu, %bb.ad ], [ %4, %bb.ac ] ; 5 uses
  %i.aus = srem i32 %.02325.i.i411, 8             ; 2 uses
  %i.aut = sdiv i32 %.02325.i.i411, 8             ; 2 uses
  %.not.i.i412 = icmp eq i32 %i.aus, 0
  br i1 %.not.i.i412, label %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i409
  %i.auu = add nsw i32 %.02325.i.i411, 14         ; 3 uses
  %i.auv = add nsw i32 %.02325.i.i411, 13
  %i.auw = sdiv i32 %i.auv, 8
  %i.aux = sub nsw i32 %i.auw, %i.aut             ; 2 uses
  %i.auy = add nsw i32 %i.aux, 1
  %i.auz = icmp slt i32 %i.aux, 3
  tail call void @llvm.assume(i1 %i.auz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 0, ptr %i.ai, align 8, !tbaa !19
  %i.ava = sext i32 %i.aut to i64
  %i.avb = getelementptr inbounds i8, ptr %0, i64 %i.ava
  %i.avc = sext i32 %i.auy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr readonly align 1 %i.avb, i64 %i.avc, i1 false)
  %.0..0..0..0..0..0..0..0..i.i413 = load i64, ptr %i.ai, align 8, !tbaa !19
  %i.avd = zext nneg i32 %i.aus to i64
  %i.ave = lshr i64 %.0..0..0..0..0..0..0..0..i.i413, %i.avd
  %i.avf = trunc i64 %i.ave to i32
  %i.avg = and i32 %i.avf, 16383
  store i32 %i.avg, ptr %.026.i.i410, align 4, !tbaa !3
  %i.avh = getelementptr inbounds nuw i8, ptr %.026.i.i410, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.avi = icmp slt i32 %i.auu, %i.auq
  br i1 %i.avi, label %.lr.ph.i.i409, label %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !144

_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ad, %.lr.ph.i.i409, %bb.ac
  %.023.lcssa.i.i393 = phi i32 [ %4, %bb.ac ], [ %i.auu, %bb.ad ], [ %.02325.i.i411, %.lr.ph.i.i409 ]
  %i.avj = sub nsw i32 %.023.lcssa.i.i393, %4
  %i.avk = sdiv i32 %i.avj, 14                    ; 3 uses
  %i.avl = mul nsw i32 %i.avk, 14
  %i.avm = add nsw i32 %i.avl, %4
  %i.avn = sub nsw i32 %2, %i.avk                 ; 4 uses
  %i.avo = sdiv i32 %i.avm, 8
  %i.avp = sext i32 %i.avo to i64
  %i.avq = getelementptr inbounds i8, ptr %0, i64 %i.avp ; 2 uses
  %i.avr = sext i32 %i.avk to i64
  %i.avs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.avr ; 2 uses
  %i.avt = sdiv i32 %i.avn, 32                    ; 2 uses
  %i.avu = icmp sgt i32 %i.avn, 31
  br i1 %i.avu, label %.lr.ph.i402, label %._crit_edge.i394

._crit_edge.i394:                                 ; preds = %.lr.ph.i402, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i395 = phi ptr [ %i.avs, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ayg, %.lr.ph.i402 ]
  %.025.lcssa.i396 = phi ptr [ %i.avq, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ayf, %.lr.ph.i402 ]
  %i.avv = shl nsw i32 %i.avt, 5                  ; 2 uses
  %i.avw = sub nsw i32 %i.avn, %i.avv             ; 2 uses
  %i.avx = icmp samesign ult i32 %i.avw, 32
  tail call void @llvm.assume(i1 %i.avx)
  %i.avy = mul nuw nsw i32 %i.avw, 14
  %.not.i397 = icmp eq i32 %i.avn, %i.avv
  br i1 %.not.i397, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i398

.lr.ph.i28.i398:                                  ; preds = %._crit_edge.i394, %.lr.ph.i28.i398
  %.024.i.i399 = phi ptr [ %i.awo, %.lr.ph.i28.i398 ], [ %.026.lcssa.i395, %._crit_edge.i394 ] ; 2 uses
  %.02223.i.i400 = phi i32 [ %i.awa, %.lr.ph.i28.i398 ], [ 0, %._crit_edge.i394 ] ; 4 uses
  %i.avz = lshr i32 %.02223.i.i400, 3             ; 2 uses
  %i.awa = add nuw nsw i32 %.02223.i.i400, 14     ; 2 uses
  %i.awb = add nuw nsw i32 %.02223.i.i400, 12
  %i.awc = lshr i32 %i.awb, 3
  %i.awd = sub nsw i32 %i.awc, %i.avz             ; 2 uses
  %i.awe = add nsw i32 %i.awd, 1
  %i.awf = icmp slt i32 %i.awd, 3
  tail call void @llvm.assume(i1 %i.awf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 0, ptr %i.ah, align 8, !tbaa !19
  %i.awg = zext nneg i32 %i.avz to i64
  %i.awh = getelementptr inbounds nuw i8, ptr %.025.lcssa.i396, i64 %i.awg
  %i.awi = sext i32 %i.awe to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 1 %i.awh, i64 %i.awi, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i401 = load i64, ptr %i.ah, align 8, !tbaa !19
  %i.awj = and i32 %.02223.i.i400, 6
  %i.awk = zext nneg i32 %i.awj to i64
  %i.awl = lshr i64 %.0..0..0..0..0..0..0..0..i29.i401, %i.awk
  %i.awm = trunc i64 %i.awl to i32
  %i.awn = and i32 %i.awm, 16383
  store i32 %i.awn, ptr %.024.i.i399, align 4, !tbaa !3
  %i.awo = getelementptr inbounds nuw i8, ptr %.024.i.i399, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.awp = icmp samesign ult i32 %i.awa, %i.avy
  br i1 %i.awp, label %.lr.ph.i28.i398, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !145

.lr.ph.i402:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i402
  %.032.i403 = phi i32 [ %i.ayh, %.lr.ph.i402 ], [ 0, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i404 = phi ptr [ %i.ayf, %.lr.ph.i402 ], [ %i.avq, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i ] ; 6 uses
  %.02630.i405 = phi ptr [ %i.ayg, %.lr.ph.i402 ], [ %i.avs, %_ZN5arrow8internal12unpack_exactILi14ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %.02531.i404, i64 4
  %i.awr = getelementptr inbounds nuw i8, ptr %.02531.i404, i64 12
  %i.aws = load <2 x i32>, ptr %i.awq, align 1    ; 3 uses
  %i.awt = load <2 x i32>, ptr %.02531.i404, align 1 ; 2 uses
  %i.awu = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.aws, <2 x i32> %i.awt, <2 x i32> <i32 4, i32 8>)
  %i.awv = load <4 x i32>, ptr %i.awr, align 1    ; 4 uses
  %i.aww = shufflevector <4 x i32> %i.awv, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.awx = shufflevector <2 x i32> %i.aws, <2 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.awy = shufflevector <4 x i32> %i.awx, <4 x i32> %i.aww, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.awz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.awv, <4 x i32> %i.awy, <4 x i32> <i32 12, i32 2, i32 6, i32 10>)
  %i.axa = shufflevector <2 x i32> %i.aws, <2 x i32> %i.awt, <8 x i32> <i32 2, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axb = shufflevector <4 x i32> %i.awv, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axc = shufflevector <8 x i32> %i.axa, <8 x i32> %i.axb, <8 x i32> <i32 0, i32 0, i32 2, i32 3, i32 8, i32 8, i32 9, i32 10>
  %i.axd = shufflevector <4 x i32> %i.awv, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 3>
  %i.axe = shufflevector <4 x i32> %i.awz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axf = shufflevector <8 x i32> %i.axc, <8 x i32> %i.axe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.axg = shufflevector <2 x i32> %i.awu, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axh = shufflevector <16 x i32> %i.axf, <16 x i32> %i.axg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.axi = shufflevector <16 x i32> %i.axh, <16 x i32> %i.axd, <16 x i32> <i32 0, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 30, i32 31>
  %i.axj = lshr <16 x i32> %i.axi, <i32 0, i32 14, i32 0, i32 10, i32 0, i32 6, i32 0, i32 2, i32 16, i32 0, i32 12, i32 0, i32 8, i32 0, i32 4, i32 18>
  %i.axk = bitcast <16 x i32> %i.axj to <8 x i64>
  %i.axl = and <8 x i64> %i.axk, splat (i64 70364449226751)
  store <8 x i64> %i.axl, ptr %.02630.i405, align 1, !tbaa !15
  %i.axm = getelementptr i8, ptr %.02531.i404, <8 x i64> <i64 28, i64 28, i64 32, i64 36, i64 40, i64 40, i64 44, i64 48>
  %i.axn = getelementptr inbounds nuw i8, ptr %.02531.i404, i64 40
  %i.axo = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 1 %i.axm, <8 x i1> splat (i1 true), <8 x i32> poison) ; 4 uses
  %i.axp = shufflevector <8 x i32> %i.axo, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.axq = shufflevector <8 x i32> %i.axo, <8 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.axr = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.axp, <2 x i32> %i.axq, <2 x i32> <i32 4, i32 8>)
  %i.axs = load <4 x i32>, ptr %i.axn, align 1    ; 2 uses
  %i.axt = shufflevector <8 x i32> %i.axo, <8 x i32> poison, <4 x i32> <i32 3, i32 4, i32 6, i32 7>
  %i.axu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.axs, <4 x i32> %i.axt, <4 x i32> <i32 12, i32 2, i32 6, i32 10>)
  %i.axv = shufflevector <4 x i32> %i.axs, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 3>
  %i.axw = shufflevector <4 x i32> %i.axu, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axx = shufflevector <8 x i32> %i.axo, <8 x i32> %i.axw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.axy = shufflevector <2 x i32> %i.axr, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axz = shufflevector <16 x i32> %i.axx, <16 x i32> %i.axy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.aya = shufflevector <16 x i32> %i.axz, <16 x i32> %i.axv, <16 x i32> <i32 0, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15, i32 30, i32 31>
  %i.ayb = lshr <16 x i32> %i.aya, <i32 0, i32 14, i32 0, i32 10, i32 0, i32 6, i32 0, i32 2, i32 16, i32 0, i32 12, i32 0, i32 8, i32 0, i32 4, i32 18>
  %i.ayc = getelementptr inbounds nuw i8, ptr %.02630.i405, i64 64
  %i.ayd = bitcast <16 x i32> %i.ayb to <8 x i64>
  %i.aye = and <8 x i64> %i.ayd, splat (i64 70364449226751)
  store <8 x i64> %i.aye, ptr %i.ayc, align 1, !tbaa !15
  %i.ayf = getelementptr inbounds nuw i8, ptr %.02531.i404, i64 56 ; 2 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %.02630.i405, i64 128 ; 2 uses
  %i.ayh = add nuw nsw i32 %.032.i403, 1          ; 2 uses
  %exitcond.not.i408 = icmp eq i32 %i.ayh, %i.avt
  br i1 %exitcond.not.i408, label %._crit_edge.i394, label %.lr.ph.i402, !llvm.loop !146

bb.ae:                                            ; preds = %bb.a
  %i.ayi = mul nsw i32 %2, 15
  %i.ayj = add nsw i32 %4, %i.ayi
  %i.ayk = icmp sgt i32 %2, 0
  br i1 %i.ayk, label %.lr.ph.i.i428, label %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i428:                                    ; preds = %bb.ae, %bb.af
  %.026.i.i429 = phi ptr [ %i.aza, %bb.af ], [ %1, %bb.ae ] ; 2 uses
  %.02325.i.i430 = phi i32 [ %i.ayn, %bb.af ], [ %4, %bb.ae ] ; 5 uses
  %i.ayl = srem i32 %.02325.i.i430, 8             ; 2 uses
  %i.aym = sdiv i32 %.02325.i.i430, 8             ; 2 uses
  %.not.i.i431 = icmp eq i32 %i.ayl, 0
  br i1 %.not.i.i431, label %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i428
  %i.ayn = add nsw i32 %.02325.i.i430, 15         ; 3 uses
  %i.ayo = add nsw i32 %.02325.i.i430, 14
  %i.ayp = sdiv i32 %i.ayo, 8
  %i.ayq = sub nsw i32 %i.ayp, %i.aym             ; 2 uses
  %i.ayr = add nsw i32 %i.ayq, 1
  %i.ays = icmp slt i32 %i.ayq, 3
  tail call void @llvm.assume(i1 %i.ays)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 0, ptr %i.ag, align 8, !tbaa !19
  %i.ayt = sext i32 %i.aym to i64
  %i.ayu = getelementptr inbounds i8, ptr %0, i64 %i.ayt
  %i.ayv = sext i32 %i.ayr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr readonly align 1 %i.ayu, i64 %i.ayv, i1 false)
  %.0..0..0..0..0..0..0..0..i.i432 = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.ayw = zext nneg i32 %i.ayl to i64
  %i.ayx = lshr i64 %.0..0..0..0..0..0..0..0..i.i432, %i.ayw
  %i.ayy = trunc i64 %i.ayx to i32
  %i.ayz = and i32 %i.ayy, 32767
  store i32 %i.ayz, ptr %.026.i.i429, align 4, !tbaa !3
  %i.aza = getelementptr inbounds nuw i8, ptr %.026.i.i429, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.azb = icmp slt i32 %i.ayn, %i.ayj
  br i1 %i.azb, label %.lr.ph.i.i428, label %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !147

_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.af, %.lr.ph.i.i428, %bb.ae
  %.023.lcssa.i.i414 = phi i32 [ %4, %bb.ae ], [ %i.ayn, %bb.af ], [ %.02325.i.i430, %.lr.ph.i.i428 ]
  %i.azc = sub nsw i32 %.023.lcssa.i.i414, %4
  %i.azd = sdiv i32 %i.azc, 15                    ; 3 uses
  %i.aze = mul nsw i32 %i.azd, 15
  %i.azf = add nsw i32 %i.aze, %4
  %i.azg = sub nsw i32 %2, %i.azd                 ; 4 uses
  %i.azh = sdiv i32 %i.azf, 8
  %i.azi = sext i32 %i.azh to i64
  %i.azj = getelementptr inbounds i8, ptr %0, i64 %i.azi ; 2 uses
  %i.azk = sext i32 %i.azd to i64
  %i.azl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.azk ; 2 uses
  %i.azm = sdiv i32 %i.azg, 32                    ; 2 uses
  %i.azn = icmp sgt i32 %i.azg, 31
  br i1 %i.azn, label %.lr.ph.i423, label %._crit_edge.i415

._crit_edge.i415:                                 ; preds = %.lr.ph.i423, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i416 = phi ptr [ %i.azl, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bdb, %.lr.ph.i423 ]
  %.025.lcssa.i417 = phi ptr [ %i.azj, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bda, %.lr.ph.i423 ]
  %i.azo = shl nsw i32 %i.azm, 5                  ; 2 uses
  %i.azp = sub nsw i32 %i.azg, %i.azo             ; 2 uses
  %i.azq = icmp samesign ult i32 %i.azp, 32
  tail call void @llvm.assume(i1 %i.azq)
  %i.azr = mul nuw nsw i32 %i.azp, 15
  %.not.i418 = icmp eq i32 %i.azg, %i.azo
  br i1 %.not.i418, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i419

.lr.ph.i28.i419:                                  ; preds = %._crit_edge.i415, %.lr.ph.i28.i419
  %.024.i.i420 = phi ptr [ %i.bah, %.lr.ph.i28.i419 ], [ %.026.lcssa.i416, %._crit_edge.i415 ] ; 2 uses
  %.02223.i.i421 = phi i32 [ %i.azt, %.lr.ph.i28.i419 ], [ 0, %._crit_edge.i415 ] ; 4 uses
  %i.azs = lshr i32 %.02223.i.i421, 3             ; 2 uses
  %i.azt = add nuw nsw i32 %.02223.i.i421, 15     ; 2 uses
  %i.azu = add nuw nsw i32 %.02223.i.i421, 14
  %i.azv = lshr i32 %i.azu, 3
  %i.azw = sub nsw i32 %i.azv, %i.azs             ; 2 uses
  %i.azx = add nsw i32 %i.azw, 1
  %i.azy = icmp slt i32 %i.azw, 3
  tail call void @llvm.assume(i1 %i.azy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 0, ptr %i.af, align 8, !tbaa !19
  %i.azz = zext nneg i32 %i.azs to i64
  %i.baa = getelementptr inbounds nuw i8, ptr %.025.lcssa.i417, i64 %i.azz
  %i.bab = sext i32 %i.azx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 1 %i.baa, i64 %i.bab, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i422 = load i64, ptr %i.af, align 8, !tbaa !19
  %i.bac = and i32 %.02223.i.i421, 7
  %i.bad = zext nneg i32 %i.bac to i64
  %i.bae = lshr i64 %.0..0..0..0..0..0..0..0..i29.i422, %i.bad
  %i.baf = trunc i64 %i.bae to i32
  %i.bag = and i32 %i.baf, 32767
  store i32 %i.bag, ptr %.024.i.i420, align 4, !tbaa !3
  %i.bah = getelementptr inbounds nuw i8, ptr %.024.i.i420, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.bai = icmp samesign ult i32 %i.azt, %i.azr
  br i1 %i.bai, label %.lr.ph.i28.i419, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !148

.lr.ph.i423:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i423
  %.032.i424 = phi i32 [ %i.bdc, %.lr.ph.i423 ], [ 0, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i425 = phi ptr [ %i.bda, %.lr.ph.i423 ], [ %i.azj, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ] ; 9 uses
  %.02630.i426 = phi ptr [ %i.bdb, %.lr.ph.i423 ], [ %i.azl, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 4
  %i.bak = load i32, ptr %i.baj, align 1          ; 3 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 8
  %i.bam = load i32, ptr %i.bal, align 1          ; 3 uses
  %i.ban = tail call i32 @llvm.fshl.i32(i32 %i.bam, i32 %i.bak, i32 4)
  %i.bao = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 12
  %i.bap = load i32, ptr %i.bao, align 1          ; 3 uses
  %i.baq = tail call i32 @llvm.fshl.i32(i32 %i.bap, i32 %i.bam, i32 6)
  %i.bar = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 16
  %i.bas = load i32, ptr %i.bar, align 1          ; 3 uses
  %i.bat = tail call i32 @llvm.fshl.i32(i32 %i.bas, i32 %i.bap, i32 8)
  %i.bau = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 20
  %i.bav = load i32, ptr %i.bau, align 1          ; 3 uses
  %i.baw = tail call i32 @llvm.fshl.i32(i32 %i.bav, i32 %i.bas, i32 10)
  %i.bax = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 24
  %i.bay = load i32, ptr %i.bax, align 1          ; 3 uses
  %i.baz = tail call i32 @llvm.fshl.i32(i32 %i.bay, i32 %i.bav, i32 12)
  %i.bba = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 28 ; 2 uses
  %i.bbb = load i32, ptr %i.bba, align 1          ; 2 uses
  %i.bbc = tail call i32 @llvm.fshl.i32(i32 %i.bbb, i32 %i.bay, i32 14)
  %i.bbd = load i32, ptr %.02531.i425, align 1    ; 2 uses
  %i.bbe = tail call i32 @llvm.fshl.i32(i32 %i.bak, i32 %i.bbd, i32 2)
  %i.bbf = insertelement <2 x i32> poison, i32 %i.bbd, i64 0
  %i.bbg = shufflevector <2 x i32> %i.bbf, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbh = lshr <16 x i32> %i.bbg, <i32 0, i32 15, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %i.bbi = insertelement <16 x i32> %i.bbh, i32 %i.bbe, i64 2
  %i.bbj = lshr i32 %i.bak, 13
  %i.bbk = insertelement <16 x i32> %i.bbi, i32 %i.bbj, i64 3
  %i.bbl = insertelement <16 x i32> %i.bbk, i32 %i.ban, i64 4
  %i.bbm = lshr i32 %i.bam, 11
  %i.bbn = insertelement <16 x i32> %i.bbl, i32 %i.bbm, i64 5
  %i.bbo = insertelement <16 x i32> %i.bbn, i32 %i.baq, i64 6
  %i.bbp = lshr i32 %i.bap, 9
  %i.bbq = insertelement <16 x i32> %i.bbo, i32 %i.bbp, i64 7
  %i.bbr = insertelement <16 x i32> %i.bbq, i32 %i.bat, i64 8
  %i.bbs = lshr i32 %i.bas, 7
  %i.bbt = insertelement <16 x i32> %i.bbr, i32 %i.bbs, i64 9
  %i.bbu = insertelement <16 x i32> %i.bbt, i32 %i.baw, i64 10
  %i.bbv = lshr i32 %i.bav, 5
  %i.bbw = insertelement <16 x i32> %i.bbu, i32 %i.bbv, i64 11
  %i.bbx = insertelement <16 x i32> %i.bbw, i32 %i.baz, i64 12
  %i.bby = lshr i32 %i.bay, 3
  %i.bbz = insertelement <16 x i32> %i.bbx, i32 %i.bby, i64 13
  %i.bca = insertelement <16 x i32> %i.bbz, i32 %i.bbc, i64 14
  %i.bcb = lshr i32 %i.bbb, 1
  %.sroa.0123.60.vec.insert.i.i = insertelement <16 x i32> %i.bca, i32 %i.bcb, i64 15
  %i.bcc = bitcast <16 x i32> %.sroa.0123.60.vec.insert.i.i to <8 x i64>
  %i.bcd = and <8 x i64> %i.bcc, splat (i64 140733193420799)
  store <8 x i64> %i.bcd, ptr %.02630.i426, align 1, !tbaa !15
  %i.bce = load <8 x i32>, ptr %i.bba, align 1    ; 8 uses
  %i.bcf = extractelement <8 x i32> %i.bce, i64 0
  %i.bcg = extractelement <8 x i32> %i.bce, i64 1
  %i.bch = tail call i32 @llvm.fshl.i32(i32 %i.bcg, i32 %i.bcf, i32 1)
  %i.bci = shufflevector <8 x i32> %i.bce, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.bcj = shufflevector <8 x i32> %i.bce, <8 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.bck = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bci, <2 x i32> %i.bcj, <2 x i32> <i32 3, i32 5>)
  %i.bcl = shufflevector <8 x i32> %i.bce, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bcm = shufflevector <8 x i32> %i.bce, <8 x i32> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bcn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bcl, <4 x i32> %i.bcm, <4 x i32> <i32 7, i32 9, i32 11, i32 13>)
  %i.bco = insertelement <16 x i32> poison, i32 %i.bch, i64 1
  %i.bcp = shufflevector <8 x i32> %i.bce, <8 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcq = shufflevector <16 x i32> %i.bco, <16 x i32> %i.bcp, <16 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 23>
  %i.bcr = shufflevector <4 x i32> %i.bcn, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcs = shufflevector <8 x i32> %i.bce, <8 x i32> %i.bcr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.bct = shufflevector <2 x i32> %i.bck, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcu = shufflevector <16 x i32> %i.bcs, <16 x i32> %i.bct, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.bcv = shufflevector <16 x i32> %i.bcu, <16 x i32> %i.bcq, <16 x i32> <i32 0, i32 17, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7, i32 31>
  %i.bcw = lshr <16 x i32> %i.bcv, <i32 16, i32 0, i32 14, i32 0, i32 12, i32 0, i32 10, i32 0, i32 8, i32 0, i32 6, i32 0, i32 4, i32 0, i32 2, i32 17>
  %i.bcx = getelementptr inbounds nuw i8, ptr %.02630.i426, i64 64
  %i.bcy = bitcast <16 x i32> %i.bcw to <8 x i64>
  %i.bcz = and <8 x i64> %i.bcy, splat (i64 140733193420799)
  store <8 x i64> %i.bcz, ptr %i.bcx, align 1, !tbaa !15
  %i.bda = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 60 ; 2 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %.02630.i426, i64 128 ; 2 uses
  %i.bdc = add nuw nsw i32 %.032.i424, 1          ; 2 uses
  %exitcond.not.i427 = icmp eq i32 %i.bdc, %i.azm
  br i1 %exitcond.not.i427, label %._crit_edge.i415, label %.lr.ph.i423, !llvm.loop !149

bb.ag:                                            ; preds = %bb.a
  %i.bdd = shl nsw i32 %2, 4
  %i.bde = add nsw i32 %4, %i.bdd
  %i.bdf = icmp sgt i32 %2, 0
  br i1 %i.bdf, label %.lr.ph.i.i451, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i451:                                    ; preds = %bb.ag, %bb.ah
  %.026.i.i452 = phi ptr [ %i.bdv, %bb.ah ], [ %1, %bb.ag ] ; 2 uses
  %.02325.i.i453 = phi i32 [ %i.bdi, %bb.ah ], [ %4, %bb.ag ] ; 5 uses
  %i.bdg = srem i32 %.02325.i.i453, 8             ; 2 uses
  %i.bdh = sdiv i32 %.02325.i.i453, 8             ; 2 uses
  %.not.i.i454 = icmp eq i32 %i.bdg, 0
  br i1 %.not.i.i454, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i451
  %i.bdi = add nsw i32 %.02325.i.i453, 16         ; 3 uses
  %i.bdj = add nsw i32 %.02325.i.i453, 15
  %i.bdk = sdiv i32 %i.bdj, 8
  %i.bdl = sub nsw i32 %i.bdk, %i.bdh             ; 2 uses
  %i.bdm = add nsw i32 %i.bdl, 1
  %i.bdn = icmp slt i32 %i.bdl, 3
  tail call void @llvm.assume(i1 %i.bdn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8, !tbaa !19
  %i.bdo = sext i32 %i.bdh to i64
  %i.bdp = getelementptr inbounds i8, ptr %0, i64 %i.bdo
  %i.bdq = sext i32 %i.bdm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr readonly align 1 %i.bdp, i64 %i.bdq, i1 false)
  %.0..0..0..0..0..0..0..0..i.i455 = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.bdr = zext nneg i32 %i.bdg to i64
  %i.bds = lshr i64 %.0..0..0..0..0..0..0..0..i.i455, %i.bdr
  %i.bdt = trunc i64 %i.bds to i32
  %i.bdu = and i32 %i.bdt, 65535
  store i32 %i.bdu, ptr %.026.i.i452, align 4, !tbaa !3
  %i.bdv = getelementptr inbounds nuw i8, ptr %.026.i.i452, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.bdw = icmp slt i32 %i.bdi, %i.bde
  br i1 %i.bdw, label %.lr.ph.i.i451, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !150

_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ah, %.lr.ph.i.i451, %bb.ag
  %.023.lcssa.i.i433 = phi i32 [ %4, %bb.ag ], [ %i.bdi, %bb.ah ], [ %.02325.i.i453, %.lr.ph.i.i451 ]
  %i.bdx = sub nsw i32 %.023.lcssa.i.i433, %4
  %i.bdy = sdiv i32 %i.bdx, 16                    ; 3 uses
  %i.bdz = shl nsw i32 %i.bdy, 4
  %i.bea = add nsw i32 %i.bdz, %4
  %i.beb = sub nsw i32 %2, %i.bdy                 ; 4 uses
  %i.bec = sdiv i32 %i.bea, 8
  %i.bed = sext i32 %i.bec to i64
  %i.bee = getelementptr inbounds i8, ptr %0, i64 %i.bed ; 2 uses
  %i.bef = sext i32 %i.bdy to i64
  %i.beg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bef ; 2 uses
  %i.beh = sdiv i32 %i.beb, 32                    ; 2 uses
  %i.bei = icmp sgt i32 %i.beb, 31
  br i1 %i.bei, label %.lr.ph.i444, label %._crit_edge.i434

._crit_edge.i434:                                 ; preds = %.lr.ph.i444, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i435 = phi ptr [ %i.beg, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bha, %.lr.ph.i444 ] ; 7 uses
  %.025.lcssa.i436 = phi ptr [ %i.bee, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bgz, %.lr.ph.i444 ] ; 5 uses
  %i.bej = shl nsw i32 %i.beh, 5                  ; 2 uses
  %i.bek = sub nsw i32 %i.beb, %i.bej             ; 2 uses
  %i.bel = icmp samesign ult i32 %i.bek, 32
  tail call void @llvm.assume(i1 %i.bel)
  %.not.i437 = icmp eq i32 %i.beb, %i.bej
  br i1 %.not.i437, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i434
  %i.bem = shl nuw nsw i32 %i.bek, 4
  %i.ben = zext nneg i32 %i.bem to i64            ; 3 uses
  %i.beo = tail call i64 @llvm.usub.sat.i64(i64 %i.ben, i64 16) ; 3 uses
  %i.bep = lshr exact i64 %i.beo, 4
  %i.beq = add nuw nsw i64 %i.bep, 1              ; 3 uses
  %min.iters.check1239 = icmp samesign ult i64 %i.beo, 112
  br i1 %min.iters.check1239, label %.lr.ph.i28.i439.preheader, label %vector.memcheck1230

vector.memcheck1230:                              ; preds = %iter.check
  %i.ber = tail call i64 @llvm.usub.sat.i64(i64 %i.ben, i64 16) ; 2 uses
  %i.bes = lshr exact i64 %i.ber, 3
  %i.bet = lshr exact i64 %i.ber, 2
  %i.beu = getelementptr i8, ptr %.026.lcssa.i435, i64 %i.bet
  %scevgep1232 = getelementptr i8, ptr %i.beu, i64 4
  %i.bev = getelementptr i8, ptr %.025.lcssa.i436, i64 %i.bes
  %scevgep1233 = getelementptr i8, ptr %i.bev, i64 2
  %bound01234 = icmp ult ptr %.026.lcssa.i435, %scevgep1233
  %bound11235 = icmp ult ptr %.025.lcssa.i436, %scevgep1232
  %found.conflict1236 = and i1 %bound01234, %bound11235
  br i1 %found.conflict1236, label %.lr.ph.i28.i439.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1230
  %min.iters.check1240.not = icmp eq i64 %i.beo, 496
  br i1 %min.iters.check1240.not, label %vector.body1244, label %vec.epilog.ph

vector.body1244:                                  ; preds = %vector.main.loop.iter.check, %vector.body1244
  %index1245 = phi i64 [ %index.next1250, %vector.body1244 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bew = shl i64 %index1245, 2
  %next.gep1246 = getelementptr i8, ptr %.026.lcssa.i435, i64 %i.bew ; 4 uses
  %i.bex = shl i64 %index1245, 1
  %i.bey = and i64 %i.bex, 2305843009213693888
  %i.bez = getelementptr inbounds nuw i8, ptr %.025.lcssa.i436, i64 %i.bey ; 4 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 16
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bez, i64 32
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bez, i64 48
  %wide.load = load <8 x i16>, ptr %i.bez, align 1, !alias.scope !151
  %wide.load1247 = load <8 x i16>, ptr %i.bfa, align 1, !alias.scope !151
  %wide.load1248 = load <8 x i16>, ptr %i.bfb, align 1, !alias.scope !151
  %wide.load1249 = load <8 x i16>, ptr %i.bfc, align 1, !alias.scope !151
  %i.bfd = zext <8 x i16> %wide.load to <8 x i32>
  %i.bfe = zext <8 x i16> %wide.load1247 to <8 x i32>
  %i.bff = zext <8 x i16> %wide.load1248 to <8 x i32>
  %i.bfg = zext <8 x i16> %wide.load1249 to <8 x i32>
  %i.bfh = getelementptr i8, ptr %next.gep1246, i64 32
  %i.bfi = getelementptr i8, ptr %next.gep1246, i64 64
  %i.bfj = getelementptr i8, ptr %next.gep1246, i64 96
  store <8 x i32> %i.bfd, ptr %next.gep1246, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  store <8 x i32> %i.bfe, ptr %i.bfh, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  store <8 x i32> %i.bff, ptr %i.bfi, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  store <8 x i32> %i.bfg, ptr %i.bfj, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  %index.next1250 = add nuw i64 %index1245, 32    ; 2 uses
  %i.bfk = icmp eq i64 %index.next1250, %i.beq
  br i1 %i.bfk, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %vector.body1244, !llvm.loop !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec1256 = and i64 %i.beq, 268435448          ; 4 uses
  %i.bfl = shl nuw nsw i64 %n.vec1256, 4
  %i.bfm = shl nuw nsw i64 %n.vec1256, 2
  %i.bfn = getelementptr i8, ptr %.026.lcssa.i435, i64 %i.bfm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1257 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next1260, %vec.epilog.vector.body ] ; 3 uses
  %i.bfo = shl i64 %index1257, 2
  %next.gep1258 = getelementptr i8, ptr %.026.lcssa.i435, i64 %i.bfo
  %i.bfp = shl i64 %index1257, 1
  %i.bfq = and i64 %i.bfp, 2305843009213693936
  %i.bfr = getelementptr inbounds nuw i8, ptr %.025.lcssa.i436, i64 %i.bfq
  %wide.load1259 = load <8 x i16>, ptr %i.bfr, align 1, !alias.scope !151
  %i.bfs = zext <8 x i16> %wide.load1259 to <8 x i32>
  store <8 x i32> %i.bfs, ptr %next.gep1258, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  %index.next1260 = add nuw i64 %index1257, 8     ; 2 uses
  %i.bft = icmp eq i64 %index.next1260, %n.vec1256
  br i1 %i.bft, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1261 = icmp eq i64 %i.beq, %n.vec1256
  br i1 %cmp.n1261, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i439.preheader

.lr.ph.i28.i439.preheader:                        ; preds = %vector.memcheck1230, %iter.check, %vec.epilog.middle.block
  %indvars.iv.i440.ph = phi i64 [ 0, %vector.memcheck1230 ], [ 0, %iter.check ], [ %i.bfl, %vec.epilog.middle.block ]
  %.024.i.i441.ph = phi ptr [ %.026.lcssa.i435, %vector.memcheck1230 ], [ %.026.lcssa.i435, %iter.check ], [ %i.bfn, %vec.epilog.middle.block ]
  br label %.lr.ph.i28.i439

.lr.ph.i28.i439:                                  ; preds = %.lr.ph.i28.i439.preheader, %.lr.ph.i28.i439
  %indvars.iv.i440 = phi i64 [ %indvars.iv.next.i442, %.lr.ph.i28.i439 ], [ %indvars.iv.i440.ph, %.lr.ph.i28.i439.preheader ] ; 2 uses
  %.024.i.i441 = phi ptr [ %i.bfy, %.lr.ph.i28.i439 ], [ %.024.i.i441.ph, %.lr.ph.i28.i439.preheader ] ; 2 uses
  %i.bfu = lshr exact i64 %indvars.iv.i440, 3
  %indvars.iv.next.i442 = add nuw nsw i64 %indvars.iv.i440, 16 ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %.025.lcssa.i436, i64 %i.bfu
  %i.bfw = load i16, ptr %i.bfv, align 1
  %i.bfx = zext i16 %i.bfw to i32
  store i32 %i.bfx, ptr %.024.i.i441, align 4, !tbaa !3
  %i.bfy = getelementptr inbounds nuw i8, ptr %.024.i.i441, i64 4
  %i.bfz = icmp samesign ult i64 %indvars.iv.next.i442, %i.ben
  br i1 %i.bfz, label %.lr.ph.i28.i439, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !158

.lr.ph.i444:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i444
  %.032.i445 = phi i32 [ %i.bhb, %.lr.ph.i444 ], [ 0, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i446 = phi ptr [ %i.bgz, %.lr.ph.i444 ], [ %i.bee, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ] ; 4 uses
  %.02630.i447 = phi ptr [ %i.bha, %.lr.ph.i444 ], [ %i.beg, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %.02531.i446, i64 20
  %i.bgb = load <5 x i32>, ptr %.02531.i446, align 1 ; 2 uses
  %i.bgc = shufflevector <5 x i32> %i.bgb, <5 x i32> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4> ; 2 uses
  %i.bgd = lshr <8 x i32> %i.bgc, <i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0>
  %i.bge = shufflevector <8 x i32> %i.bgc, <8 x i32> %i.bgd, <16 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgf = extractelement <5 x i32> %i.bgb, i64 4
  %i.bgg = lshr i32 %i.bgf, 16
  %i.bgh = insertelement <16 x i32> %i.bge, i32 %i.bgg, i64 9
  %i.bgi = load <3 x i32>, ptr %i.bga, align 1    ; 3 uses
  %i.bgj = shufflevector <3 x i32> %i.bgi, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.bgk = shufflevector <3 x i32> %i.bgi, <3 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgl = shufflevector <16 x i32> %i.bgh, <16 x i32> %i.bgk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgm = lshr <4 x i32> %i.bgj, <i32 16, i32 0, i32 16, i32 0>
  %i.bgn = shufflevector <4 x i32> %i.bgm, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgo = shufflevector <16 x i32> %i.bgl, <16 x i32> %i.bgn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 18, i32 19, i32 poison>
  %i.bgp = extractelement <3 x i32> %i.bgi, i64 2
  %i.bgq = lshr i32 %i.bgp, 16
  %.sroa.0109.60.vec.insert.i.i448 = insertelement <16 x i32> %i.bgo, i32 %i.bgq, i64 15
  %i.bgr = bitcast <16 x i32> %.sroa.0109.60.vec.insert.i.i448 to <8 x i64>
  %i.bgs = and <8 x i64> %i.bgr, splat (i64 281470681808895)
  store <8 x i64> %i.bgs, ptr %.02630.i447, align 1, !tbaa !15
  %i.bgt = getelementptr i8, ptr %.02531.i446, <16 x i64> <i64 32, i64 32, i64 36, i64 36, i64 40, i64 40, i64 44, i64 44, i64 48, i64 48, i64 52, i64 52, i64 56, i64 56, i64 60, i64 60>
  %i.bgu = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 1 %i.bgt, <16 x i1> splat (i1 true), <16 x i32> poison)
  %i.bgv = lshr <16 x i32> %i.bgu, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %i.bgw = getelementptr inbounds nuw i8, ptr %.02630.i447, i64 64
  %i.bgx = bitcast <16 x i32> %i.bgv to <8 x i64>
  %i.bgy = and <8 x i64> %i.bgx, splat (i64 281470681808895)
  store <8 x i64> %i.bgy, ptr %i.bgw, align 1, !tbaa !15
  %i.bgz = getelementptr inbounds nuw i8, ptr %.02531.i446, i64 64 ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %.02630.i447, i64 128 ; 2 uses
  %i.bhb = add nuw nsw i32 %.032.i445, 1          ; 2 uses
  %exitcond.not.i450 = icmp eq i32 %i.bhb, %i.beh
  br i1 %exitcond.not.i450, label %._crit_edge.i434, label %.lr.ph.i444, !llvm.loop !159

bb.ai:                                            ; preds = %bb.a
  %i.bhc = mul nsw i32 %2, 17
  %i.bhd = add nsw i32 %4, %i.bhc
  %i.bhe = icmp sgt i32 %2, 0
  br i1 %i.bhe, label %.lr.ph.i.i470, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i470:                                    ; preds = %bb.ai, %bb.aj
  %.026.i.i471 = phi ptr [ %i.bhu, %bb.aj ], [ %1, %bb.ai ] ; 2 uses
  %.02325.i.i472 = phi i32 [ %i.bhh, %bb.aj ], [ %4, %bb.ai ] ; 5 uses
  %i.bhf = srem i32 %.02325.i.i472, 8             ; 2 uses
  %i.bhg = sdiv i32 %.02325.i.i472, 8             ; 2 uses
  %.not.i.i473 = icmp eq i32 %i.bhf, 0
  br i1 %.not.i.i473, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i470
  %i.bhh = add nsw i32 %.02325.i.i472, 17         ; 3 uses
  %i.bhi = add nsw i32 %.02325.i.i472, 16
  %i.bhj = sdiv i32 %i.bhi, 8
  %i.bhk = sub nsw i32 %i.bhj, %i.bhg             ; 2 uses
  %i.bhl = add nsw i32 %i.bhk, 1
  %i.bhm = icmp slt i32 %i.bhk, 3
  tail call void @llvm.assume(i1 %i.bhm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ad, align 8, !tbaa !19
  %i.bhn = sext i32 %i.bhg to i64
  %i.bho = getelementptr inbounds i8, ptr %0, i64 %i.bhn
  %i.bhp = sext i32 %i.bhl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr readonly align 1 %i.bho, i64 %i.bhp, i1 false)
  %.0..0..0..0..0..0..0..0..i.i474 = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.bhq = zext nneg i32 %i.bhf to i64
  %i.bhr = lshr i64 %.0..0..0..0..0..0..0..0..i.i474, %i.bhq
  %i.bhs = trunc i64 %i.bhr to i32
  %i.bht = and i32 %i.bhs, 131071
  store i32 %i.bht, ptr %.026.i.i471, align 4, !tbaa !3
  %i.bhu = getelementptr inbounds nuw i8, ptr %.026.i.i471, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.bhv = icmp slt i32 %i.bhh, %i.bhd
  br i1 %i.bhv, label %.lr.ph.i.i470, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !160

_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.aj, %.lr.ph.i.i470, %bb.ai
  %.023.lcssa.i.i456 = phi i32 [ %4, %bb.ai ], [ %i.bhh, %bb.aj ], [ %.02325.i.i472, %.lr.ph.i.i470 ]
  %i.bhw = sub nsw i32 %.023.lcssa.i.i456, %4
  %i.bhx = sdiv i32 %i.bhw, 17                    ; 3 uses
  %i.bhy = mul nsw i32 %i.bhx, 17
  %i.bhz = add nsw i32 %i.bhy, %4
  %i.bia = sub nsw i32 %2, %i.bhx                 ; 4 uses
  %i.bib = sdiv i32 %i.bhz, 8
  %i.bic = sext i32 %i.bib to i64
  %i.bid = getelementptr inbounds i8, ptr %0, i64 %i.bic ; 2 uses
  %i.bie = sext i32 %i.bhx to i64
  %i.bif = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bie ; 2 uses
  %i.big = sdiv i32 %i.bia, 32                    ; 2 uses
  %i.bih = icmp sgt i32 %i.bia, 31
  br i1 %i.bih, label %.lr.ph.i465, label %._crit_edge.i457

._crit_edge.i457:                                 ; preds = %.lr.ph.i465, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i458 = phi ptr [ %i.bif, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.blk, %.lr.ph.i465 ]
  %.025.lcssa.i459 = phi ptr [ %i.bid, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.blj, %.lr.ph.i465 ]
  %i.bii = shl nsw i32 %i.big, 5                  ; 2 uses
  %i.bij = sub nsw i32 %i.bia, %i.bii             ; 2 uses
  %i.bik = icmp samesign ult i32 %i.bij, 32
  tail call void @llvm.assume(i1 %i.bik)
  %i.bil = mul nuw nsw i32 %i.bij, 17
  %.not.i460 = icmp eq i32 %i.bia, %i.bii
  br i1 %.not.i460, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i461

.lr.ph.i28.i461:                                  ; preds = %._crit_edge.i457, %.lr.ph.i28.i461
  %.024.i.i462 = phi ptr [ %i.bjb, %.lr.ph.i28.i461 ], [ %.026.lcssa.i458, %._crit_edge.i457 ] ; 2 uses
  %.02223.i.i463 = phi i32 [ %i.bin, %.lr.ph.i28.i461 ], [ 0, %._crit_edge.i457 ] ; 4 uses
  %i.bim = lshr i32 %.02223.i.i463, 3             ; 2 uses
  %i.bin = add nuw nsw i32 %.02223.i.i463, 17     ; 2 uses
  %i.bio = add nuw nsw i32 %.02223.i.i463, 16
  %i.bip = lshr i32 %i.bio, 3
  %i.biq = sub nsw i32 %i.bip, %i.bim             ; 2 uses
  %i.bir = add nsw i32 %i.biq, 1
  %i.bis = icmp slt i32 %i.biq, 3
  tail call void @llvm.assume(i1 %i.bis)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8, !tbaa !19
  %i.bit = zext nneg i32 %i.bim to i64
  %i.biu = getelementptr inbounds nuw i8, ptr %.025.lcssa.i459, i64 %i.bit
  %i.biv = sext i32 %i.bir to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 1 %i.biu, i64 %i.biv, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i464 = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.biw = and i32 %.02223.i.i463, 7
  %i.bix = zext nneg i32 %i.biw to i64
  %i.biy = lshr i64 %.0..0..0..0..0..0..0..0..i29.i464, %i.bix
  %i.biz = trunc i64 %i.biy to i32
  %i.bja = and i32 %i.biz, 131071
  store i32 %i.bja, ptr %.024.i.i462, align 4, !tbaa !3
  %i.bjb = getelementptr inbounds nuw i8, ptr %.024.i.i462, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.bjc = icmp samesign ult i32 %i.bin, %i.bil
  br i1 %i.bjc, label %.lr.ph.i28.i461, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !161

.lr.ph.i465:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i465
  %.032.i466 = phi i32 [ %i.bll, %.lr.ph.i465 ], [ 0, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i467 = phi ptr [ %i.blj, %.lr.ph.i465 ], [ %i.bid, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ] ; 11 uses
  %.02630.i468 = phi ptr [ %i.blk, %.lr.ph.i465 ], [ %i.bif, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.bjd = load i32, ptr %.02531.i467, align 1    ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 4
  %i.bjf = load i32, ptr %i.bje, align 1          ; 3 uses
  %i.bjg = tail call i32 @llvm.fshl.i32(i32 %i.bjf, i32 %i.bjd, i32 15)
  %i.bjh = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 8
  %i.bji = load i32, ptr %i.bjh, align 1          ; 3 uses
  %i.bjj = tail call i32 @llvm.fshl.i32(i32 %i.bji, i32 %i.bjf, i32 13)
  %i.bjk = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 12
  %i.bjl = load i32, ptr %i.bjk, align 1          ; 3 uses
  %i.bjm = tail call i32 @llvm.fshl.i32(i32 %i.bjl, i32 %i.bji, i32 11)
  %i.bjn = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 16
  %i.bjo = load i32, ptr %i.bjn, align 1          ; 3 uses
  %i.bjp = tail call i32 @llvm.fshl.i32(i32 %i.bjo, i32 %i.bjl, i32 9)
  %i.bjq = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 20
  %i.bjr = load i32, ptr %i.bjq, align 1          ; 3 uses
  %i.bjs = tail call i32 @llvm.fshl.i32(i32 %i.bjr, i32 %i.bjo, i32 7)
  %i.bjt = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 24
  %i.bju = load i32, ptr %i.bjt, align 1          ; 3 uses
  %i.bjv = tail call i32 @llvm.fshl.i32(i32 %i.bju, i32 %i.bjr, i32 5)
  %i.bjw = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 28
  %i.bjx = load i32, ptr %i.bjw, align 1          ; 3 uses
  %i.bjy = tail call i32 @llvm.fshl.i32(i32 %i.bjx, i32 %i.bju, i32 3)
  %i.bjz = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 32 ; 2 uses
  %i.bka = load i32, ptr %i.bjz, align 1
  %i.bkb = tail call i32 @llvm.fshl.i32(i32 %i.bka, i32 %i.bjx, i32 1)
  %i.bkc = insertelement <16 x i32> poison, i32 %i.bjd, i64 0
  %i.bkd = insertelement <16 x i32> %i.bkc, i32 %i.bjg, i64 1
  %i.bke = lshr i32 %i.bjf, 2
  %i.bkf = insertelement <16 x i32> %i.bkd, i32 %i.bke, i64 2
  %i.bkg = insertelement <16 x i32> %i.bkf, i32 %i.bjj, i64 3
  %i.bkh = lshr i32 %i.bji, 4
  %i.bki = insertelement <16 x i32> %i.bkg, i32 %i.bkh, i64 4
  %i.bkj = insertelement <16 x i32> %i.bki, i32 %i.bjm, i64 5
  %i.bkk = lshr i32 %i.bjl, 6
  %i.bkl = insertelement <16 x i32> %i.bkj, i32 %i.bkk, i64 6
  %i.bkm = insertelement <16 x i32> %i.bkl, i32 %i.bjp, i64 7
  %i.bkn = lshr i32 %i.bjo, 8
  %i.bko = insertelement <16 x i32> %i.bkm, i32 %i.bkn, i64 8
  %i.bkp = insertelement <16 x i32> %i.bko, i32 %i.bjs, i64 9
  %i.bkq = lshr i32 %i.bjr, 10
  %i.bkr = insertelement <16 x i32> %i.bkp, i32 %i.bkq, i64 10
  %i.bks = insertelement <16 x i32> %i.bkr, i32 %i.bjv, i64 11
  %i.bkt = lshr i32 %i.bju, 12
  %i.bku = insertelement <16 x i32> %i.bks, i32 %i.bkt, i64 12
  %i.bkv = insertelement <16 x i32> %i.bku, i32 %i.bjy, i64 13
  %i.bkw = lshr i32 %i.bjx, 14
  %i.bkx = insertelement <16 x i32> %i.bkv, i32 %i.bkw, i64 14
  %.sroa.0125.60.vec.insert.i.i = insertelement <16 x i32> %i.bkx, i32 %i.bkb, i64 15
  %i.bky = bitcast <16 x i32> %.sroa.0125.60.vec.insert.i.i to <8 x i64>
  %i.bkz = and <8 x i64> %i.bky, splat (i64 562945658585087)
  store <8 x i64> %i.bkz, ptr %.02630.i468, align 1, !tbaa !15
  %i.bla = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 36
  %i.blb = load <8 x i32>, ptr %i.bjz, align 1
  %i.blc = load <8 x i32>, ptr %i.bla, align 1    ; 2 uses
  %i.bld = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.blc, <8 x i32> %i.blb, <8 x i32> <i32 16, i32 14, i32 12, i32 10, i32 8, i32 6, i32 4, i32 2>)
  %i.ble = lshr <8 x i32> %i.blc, <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.blf = shufflevector <8 x i32> %i.bld, <8 x i32> %i.ble, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.blg = getelementptr inbounds nuw i8, ptr %.02630.i468, i64 64
  %i.blh = bitcast <16 x i32> %i.blf to <8 x i64>
  %i.bli = and <8 x i64> %i.blh, splat (i64 562945658585087)
  store <8 x i64> %i.bli, ptr %i.blg, align 1, !tbaa !15
  %i.blj = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 68 ; 2 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %.02630.i468, i64 128 ; 2 uses
  %i.bll = add nuw nsw i32 %.032.i466, 1          ; 2 uses
  %exitcond.not.i469 = icmp eq i32 %i.bll, %i.big
  br i1 %exitcond.not.i469, label %._crit_edge.i457, label %.lr.ph.i465, !llvm.loop !162

bb.ak:                                            ; preds = %bb.a
  %i.blm = mul nsw i32 %2, 18
  %i.bln = add nsw i32 %4, %i.blm
  %i.blo = icmp sgt i32 %2, 0
  br i1 %i.blo, label %.lr.ph.i.i491, label %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i491:                                    ; preds = %bb.ak, %bb.al
  %.026.i.i492 = phi ptr [ %i.bme, %bb.al ], [ %1, %bb.ak ] ; 2 uses
  %.02325.i.i493 = phi i32 [ %i.blr, %bb.al ], [ %4, %bb.ak ] ; 5 uses
  %i.blp = srem i32 %.02325.i.i493, 8             ; 2 uses
  %i.blq = sdiv i32 %.02325.i.i493, 8             ; 2 uses
  %.not.i.i494 = icmp eq i32 %i.blp, 0
  br i1 %.not.i.i494, label %_ZN5arrow8internal12unpack_exactILi18ELb1EjEEiPKhPT1_ii.exit.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i491
  %i.blr = add nsw i32 %.02325.i.i493, 18         ; 3 uses
  %i.bls = add nsw i32 %.02325.i.i493, 17
  %i.blt = sdiv i32 %i.bls, 8
  %i.blu = sub nsw i32 %i.blt, %i.blq             ; 2 uses
  %i.blv = add nsw i32 %i.blu, 1
  %i.blw = icmp slt i32 %i.blu, 4
  tail call void @llvm.assume(i1 %i.blw)
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12unpack_widthILi31ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii:bb.a
  %i.bp = lshr i64 %i.bc, 29
  %i.bq = insertelement <8 x i64> %i.bo, i64 %i.bp, i64 3
  %i.br = insertelement <8 x i64> %i.bq, i64 %i.bf, i64 4
  %i.bs = lshr i64 %i.be, 27
  %i.bt = insertelement <8 x i64> %i.br, i64 %i.bs, i64 5
  %i.bu = insertelement <8 x i64> %i.bt, i64 %i.bi, i64 6
  %i.bv = lshr i64 %i.bh, 25
  %.sroa.0383.56.vec.insert.i = insertelement <8 x i64> %i.bu, i64 %i.bv, i64 7
  %i.bw = and <8 x i64> %.sroa.0383.56.vec.insert.i, splat (i64 2147483647)
  store <8 x i64> %i.bw, ptr %.02630, align 1, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %.02531, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %.02531, i64 56
  %i.bz = load <4 x i64>, ptr %i.bg, align 1
  %i.ca = load <4 x i64>, ptr %i.bx, align 1      ; 2 uses
  %i.cb = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ca, <4 x i64> %i.bz, <4 x i64> <i64 8, i64 10, i64 12, i64 14>)
  %i.cc = lshr <4 x i64> %i.ca, <i64 23, i64 21, i64 19, i64 17>
  %i.cd = shufflevector <4 x i64> %i.cb, <4 x i64> %i.cc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ce = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  %i.cf = and <8 x i64> %i.cd, splat (i64 2147483647)
  store <8 x i64> %i.cf, ptr %i.ce, align 1, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %.02531, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %.02531, i64 88
  %i.ci = load <4 x i64>, ptr %i.by, align 1
  %i.cj = load <4 x i64>, ptr %i.cg, align 1      ; 2 uses
  %i.ck = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cj, <4 x i64> %i.ci, <4 x i64> <i64 16, i64 18, i64 20, i64 22>)
  %i.cl = lshr <4 x i64> %i.cj, <i64 15, i64 13, i64 11, i64 9>
  %i.cm = shufflevector <4 x i64> %i.ck, <4 x i64> %i.cl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cn = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.co = and <8 x i64> %i.cm, splat (i64 2147483647)
  store <8 x i64> %i.co, ptr %i.cn, align 1, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %.02531, i64 96
  %i.cq = getelementptr inbounds nuw i8, ptr %.02531, i64 120
  %i.cr = load <4 x i64>, ptr %i.ch, align 1
  %i.cs = load <4 x i64>, ptr %i.cp, align 1      ; 2 uses
  %i.ct = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cs, <4 x i64> %i.cr, <4 x i64> <i64 24, i64 26, i64 28, i64 30>)
  %i.cu = lshr <4 x i64> %i.cs, <i64 7, i64 5, i64 3, i64 1>
  %i.cv = shufflevector <4 x i64> %i.ct, <4 x i64> %i.cu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cw = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.cx = and <8 x i64> %i.cv, splat (i64 2147483647)
  store <8 x i64> %i.cx, ptr %i.cw, align 1, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %.02531, i64 128
  %i.cz = getelementptr inbounds nuw i8, ptr %.02531, i64 152
  %i.da = load <4 x i64>, ptr %i.cq, align 1      ; 2 uses
  %i.db = load <4 x i64>, ptr %i.cy, align 1
  %i.dc = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.db, <4 x i64> %i.da, <4 x i64> <i64 1, i64 3, i64 5, i64 7>)
  %i.dd = lshr <4 x i64> %i.da, <i64 32, i64 30, i64 28, i64 26>
  %i.de = shufflevector <4 x i64> %i.dd, <4 x i64> %i.dc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.df = getelementptr inbounds nuw i8, ptr %.02630, i64 256
  %i.dg = and <8 x i64> %i.de, splat (i64 2147483647)
  store <8 x i64> %i.dg, ptr %i.df, align 1, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %.02531, i64 160
  %i.di = getelementptr inbounds nuw i8, ptr %.02531, i64 184
  %i.dj = load <4 x i64>, ptr %i.cz, align 1      ; 2 uses
  %i.dk = load <4 x i64>, ptr %i.dh, align 1
  %i.dl = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dk, <4 x i64> %i.dj, <4 x i64> <i64 9, i64 11, i64 13, i64 15>)
  %i.dm = lshr <4 x i64> %i.dj, <i64 24, i64 22, i64 20, i64 18>
  %i.dn = shufflevector <4 x i64> %i.dm, <4 x i64> %i.dl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.do = getelementptr inbounds nuw i8, ptr %.02630, i64 320
  %i.dp = and <8 x i64> %i.dn, splat (i64 2147483647)
  store <8 x i64> %i.dp, ptr %i.do, align 1, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %.02531, i64 192
  %i.dr = getelementptr inbounds nuw i8, ptr %.02531, i64 216
  %i.ds = load <4 x i64>, ptr %i.di, align 1      ; 2 uses
  %i.dt = load <4 x i64>, ptr %i.dq, align 1
  %i.du = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dt, <4 x i64> %i.ds, <4 x i64> <i64 17, i64 19, i64 21, i64 23>)
  %i.dv = lshr <4 x i64> %i.ds, <i64 16, i64 14, i64 12, i64 10>
  %i.dw = shufflevector <4 x i64> %i.dv, <4 x i64> %i.du, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.dx = getelementptr inbounds nuw i8, ptr %.02630, i64 384
  %i.dy = and <8 x i64> %i.dw, splat (i64 2147483647)
  store <8 x i64> %i.dy, ptr %i.dx, align 1, !tbaa !15
  %i.dz = load <4 x i64>, ptr %i.dr, align 1      ; 6 uses
  %i.ea = extractelement <4 x i64> %i.dz, i64 0
  %i.eb = extractelement <4 x i64> %i.dz, i64 1
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.ea, i64 25)
  %i.ed = shufflevector <4 x i64> %i.dz, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.ee = shufflevector <4 x i64> %i.dz, <4 x i64> poison, <2 x i32> <i32 1, i32 2>
  %i.ef = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ed, <2 x i64> %i.ee, <2 x i64> <i64 27, i64 29>)
  %i.eg = insertelement <8 x i64> poison, i64 %i.ec, i64 1
  %i.eh = shufflevector <4 x i64> %i.dz, <4 x i64> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ei = shufflevector <8 x i64> %i.eg, <8 x i64> %i.eh, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 11>
  %i.ej = shufflevector <2 x i64> %i.ef, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ek = shufflevector <4 x i64> %i.dz, <4 x i64> %i.ej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 4, i32 5>
  %i.el = shufflevector <8 x i64> %i.ek, <8 x i64> %i.ei, <8 x i32> <i32 0, i32 9, i32 1, i32 6, i32 2, i32 7, i32 3, i32 15>
  %i.em = lshr <8 x i64> %i.el, <i64 8, i64 0, i64 6, i64 0, i64 4, i64 0, i64 2, i64 33>
  %i.en = getelementptr inbounds nuw i8, ptr %.02630, i64 448
  %i.eo = and <8 x i64> %i.em, splat (i64 2147483647)
  store <8 x i64> %i.eo, ptr %i.en, align 1, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %.02531, i64 248 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.02630, i64 512 ; 2 uses
  %i.er = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.er, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !314
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi32ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = shl nsw i32 %2, 5
  %i.c = add nsw i32 %i.b, %3
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi ptr [ %i.s, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.02325.i = phi i32 [ %i.g, %bb.b ], [ %3, %bb.a ] ; 5 uses
  %i.e = srem i32 %.02325.i, 8                    ; 2 uses
  %i.f = sdiv i32 %.02325.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add nsw i32 %.02325.i, 32                ; 3 uses
  %i.h = add nsw i32 %.02325.i, 31
  %i.i = sdiv i32 %i.h, 8
  %i.j = sub nsw i32 %i.i, %i.f                   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  %i.l = icmp slt i32 %i.j, 5
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !19
  %i.m = sext i32 %i.f to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = sext i32 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.n, i64 %i.o, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !19
  %i.p = zext nneg i32 %i.e to i64
  %i.q = lshr i64 %.0..0..0..0..0..0..i, %i.p
  %i.r = and i64 %i.q, 4294967295
  store i64 %i.r, ptr %.026.i, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = icmp slt i32 %i.g, %i.c
  br i1 %i.t, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !315

_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.023.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02325.i, %.lr.ph.i ], [ %i.g, %bb.b ]
  %i.u = sub nsw i32 %.023.lcssa.i, %3
  %i.v = sdiv i32 %i.u, 32                        ; 3 uses
  %i.w = shl nsw i32 %i.v, 5
  %i.x = add nsw i32 %i.w, %3
  %i.y = sub nsw i32 %2, %i.v                     ; 4 uses
  %i.z = sdiv i32 %i.x, 8
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  %i.ae = sdiv i32 %i.y, 64                       ; 2 uses
  %i.af = icmp sgt i32 %i.y, 63
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit
  %.026.lcssa = phi ptr [ %i.ad, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit ], [ %i.cm, %.lr.ph ]
  %.025.lcssa = phi ptr [ %i.ab, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit ], [ %i.cl, %.lr.ph ]
  %i.ag = shl nsw i32 %i.ae, 6                    ; 2 uses
  %i.ah = sub nsw i32 %i.y, %i.ag                 ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 64
  tail call void @llvm.assume(i1 %i.ai)
  %.not = icmp eq i32 %i.y, %i.ag
  br i1 %.not, label %_ZN5arrow8internal12unpack_exactILi32ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %._crit_edge
  %i.aj = shl nuw nsw i32 %i.ah, 5
  %i.ak = zext nneg i32 %i.aj to i64
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28
  %indvars.iv = phi i64 [ 0, %.lr.ph.i28.preheader ], [ %indvars.iv.next, %.lr.ph.i28 ] ; 2 uses
  %.024.i = phi ptr [ %.026.lcssa, %.lr.ph.i28.preheader ], [ %i.ao, %.lr.ph.i28 ] ; 2 uses
  %i.al = lshr exact i64 %indvars.iv, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.al
  %i.an = load i32, ptr %i.am, align 1
  %.sroa.0.0.insert.ext = zext i32 %i.an to i64
  store i64 %.sroa.0.0.insert.ext, ptr %.024.i, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.ap = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.ap, label %.lr.ph.i28, label %_ZN5arrow8internal12unpack_exactILi32ELb0EmEEiPKhPT1_ii.exit, !llvm.loop !316

_ZN5arrow8internal12unpack_exactILi32ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.cn, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.cl, %.lr.ph ], [ %i.ab, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit ] ; 10 uses
  %.02630 = phi ptr [ %i.cm, %.lr.ph ], [ %i.ad, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit ] ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02531, i64 24
  %i.ar = load i64, ptr %i.aq, align 1            ; 2 uses
  %i.as = load <3 x i64>, ptr %.02531, align 1    ; 2 uses
  %i.at = shufflevector <3 x i64> %i.as, <3 x i64> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2> ; 2 uses
  %i.au = lshr <4 x i64> %i.at, <i64 32, i64 0, i64 32, i64 0>
  %i.av = shufflevector <4 x i64> %i.at, <4 x i64> %i.au, <8 x i32> <i32 0, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison>
  %i.aw = extractelement <3 x i64> %i.as, i64 2
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = insertelement <8 x i64> %i.av, i64 %i.ax, i64 5
  %i.az = insertelement <8 x i64> %i.ay, i64 %i.ar, i64 6
  %i.ba = lshr i64 %i.ar, 32
  %.sroa.0353.56.vec.insert.i = insertelement <8 x i64> %i.az, i64 %i.ba, i64 7
  %i.bb = and <8 x i64> %.sroa.0353.56.vec.insert.i, splat (i64 4294967295)
  store <8 x i64> %i.bb, ptr %.02630, align 1, !tbaa !15
  %i.bc = getelementptr i8, ptr %.02531, <8 x i64> <i64 32, i64 32, i64 40, i64 40, i64 48, i64 48, i64 56, i64 56>
  %i.bd = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.bc, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.be = lshr <8 x i64> %i.bd, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.bf = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  %i.bg = and <8 x i64> %i.be, splat (i64 4294967295)
  store <8 x i64> %i.bg, ptr %i.bf, align 1, !tbaa !15
  %i.bh = getelementptr i8, ptr %.02531, <8 x i64> <i64 64, i64 64, i64 72, i64 72, i64 80, i64 80, i64 88, i64 88>
  %i.bi = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.bh, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.bj = lshr <8 x i64> %i.bi, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.bk = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.bl = and <8 x i64> %i.bj, splat (i64 4294967295)
  store <8 x i64> %i.bl, ptr %i.bk, align 1, !tbaa !15
  %i.bm = getelementptr i8, ptr %.02531, <8 x i64> <i64 96, i64 96, i64 104, i64 104, i64 112, i64 112, i64 120, i64 120>
  %i.bn = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.bm, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.bo = lshr <8 x i64> %i.bn, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.bp = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.bq = and <8 x i64> %i.bo, splat (i64 4294967295)
  store <8 x i64> %i.bq, ptr %i.bp, align 1, !tbaa !15
  %i.br = getelementptr i8, ptr %.02531, <8 x i64> <i64 128, i64 128, i64 136, i64 136, i64 144, i64 144, i64 152, i64 152>
  %i.bs = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.br, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.bt = lshr <8 x i64> %i.bs, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.bu = getelementptr inbounds nuw i8, ptr %.02630, i64 256
  %i.bv = and <8 x i64> %i.bt, splat (i64 4294967295)
  store <8 x i64> %i.bv, ptr %i.bu, align 1, !tbaa !15
  %i.bw = getelementptr i8, ptr %.02531, <8 x i64> <i64 160, i64 160, i64 168, i64 168, i64 176, i64 176, i64 184, i64 184>
  %i.bx = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.bw, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.by = lshr <8 x i64> %i.bx, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.bz = getelementptr inbounds nuw i8, ptr %.02630, i64 320
  %i.ca = and <8 x i64> %i.by, splat (i64 4294967295)
  store <8 x i64> %i.ca, ptr %i.bz, align 1, !tbaa !15
  %i.cb = getelementptr i8, ptr %.02531, <8 x i64> <i64 192, i64 192, i64 200, i64 200, i64 208, i64 208, i64 216, i64 216>
  %i.cc = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.cb, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.cd = lshr <8 x i64> %i.cc, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.ce = getelementptr inbounds nuw i8, ptr %.02630, i64 384
  %i.cf = and <8 x i64> %i.cd, splat (i64 4294967295)
  store <8 x i64> %i.cf, ptr %i.ce, align 1, !tbaa !15
  %i.cg = getelementptr i8, ptr %.02531, <8 x i64> <i64 224, i64 224, i64 232, i64 232, i64 240, i64 240, i64 248, i64 248>
  %i.ch = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.cg, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.ci = lshr <8 x i64> %i.ch, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.cj = getelementptr inbounds nuw i8, ptr %.02630, i64 448
  %i.ck = and <8 x i64> %i.ci, splat (i64 4294967295)
  store <8 x i64> %i.ck, ptr %i.cj, align 1, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %.02531, i64 256 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02630, i64 512 ; 2 uses
  %i.cn = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cn, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !317
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi33ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = mul nsw i32 %2, 33
  %i.d = add nsw i32 %i.c, %3
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi ptr [ %i.t, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.02325.i = phi i32 [ %i.h, %bb.b ], [ %3, %bb.a ] ; 5 uses
  %i.f = srem i32 %.02325.i, 8                    ; 2 uses
  %i.g = sdiv i32 %.02325.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = add nsw i32 %.02325.i, 33                ; 3 uses
  %i.i = add nsw i32 %.02325.i, 32
  %i.j = sdiv i32 %i.i, 8
  %i.k = sub nsw i32 %i.j, %i.g                   ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = icmp slt i32 %i.k, 5
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !19
  %i.n = sext i32 %i.g to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = sext i32 %i.l to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %i.o, i64 %i.p, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.b, align 8, !tbaa !19
  %i.q = zext nneg i32 %i.f to i64
  %i.r = lshr i64 %.0..0..0..0..0..0..i, %i.q
  %i.s = and i64 %i.r, 8589934591
  store i64 %i.s, ptr %.026.i, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = icmp slt i32 %i.h, %i.d
  br i1 %i.u, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !318

_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.023.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02325.i, %.lr.ph.i ], [ %i.h, %bb.b ]
  %i.v = sub nsw i32 %.023.lcssa.i, %3
  %i.w = sdiv i32 %i.v, 33                        ; 3 uses
  %i.x = mul nsw i32 %i.w, 33
  %i.y = add nsw i32 %i.x, %3
  %i.z = sub nsw i32 %2, %i.w                     ; 4 uses
  %i.aa = sdiv i32 %i.y, 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab ; 2 uses
  %i.ad = sext i32 %i.w to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ad ; 2 uses
  %i.af = sdiv i32 %i.z, 64                       ; 2 uses
  %i.ag = icmp sgt i32 %i.z, 63
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit
  %.026.lcssa = phi ptr [ %i.ae, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit ], [ %i.ek, %.lr.ph ]
  %.025.lcssa = phi ptr [ %i.ac, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit ], [ %i.ej, %.lr.ph ]
  %i.ah = shl nsw i32 %i.af, 6                    ; 2 uses
  %i.ai = sub nsw i32 %i.z, %i.ah                 ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, 64
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = mul nuw nsw i32 %i.ai, 33
  %.not = icmp eq i32 %i.z, %i.ah
  br i1 %.not, label %_ZN5arrow8internal12unpack_exactILi33ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %._crit_edge, %.lr.ph.i28
  %.024.i = phi ptr [ %i.az, %.lr.ph.i28 ], [ %.026.lcssa, %._crit_edge ] ; 2 uses
  %.02223.i = phi i32 [ %i.am, %.lr.ph.i28 ], [ 0, %._crit_edge ] ; 4 uses
  %i.al = lshr i32 %.02223.i, 3                   ; 2 uses
  %i.am = add nuw nsw i32 %.02223.i, 33           ; 2 uses
  %i.an = add nuw nsw i32 %.02223.i, 32
  %i.ao = lshr i32 %i.an, 3
  %i.ap = sub nsw i32 %i.ao, %i.al                ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1
  %i.ar = icmp slt i32 %i.ap, 5
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !19
  %i.as = zext nneg i32 %i.al to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.as
  %i.au = sext i32 %i.aq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.at, i64 %i.au, i1 false)
  %.0..0..0..0..0..0..i29 = load i64, ptr %i.a, align 8, !tbaa !19
  %i.av = and i32 %.02223.i, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 %.0..0..0..0..0..0..i29, %i.aw
  %i.ay = and i64 %i.ax, 8589934591
  store i64 %i.ay, ptr %.024.i, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = icmp samesign ult i32 %i.am, %i.ak
  br i1 %i.ba, label %.lr.ph.i28, label %_ZN5arrow8internal12unpack_exactILi33ELb0EmEEiPKhPT1_ii.exit, !llvm.loop !319

_ZN5arrow8internal12unpack_exactILi33ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.el, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.ej, %.lr.ph ], [ %i.ac, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit ] ; 19 uses
  %.02630 = phi ptr [ %i.ek, %.lr.ph ], [ %i.ae, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit ] ; 9 uses
  %i.bb = load i64, ptr %.02531, align 1          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02531, i64 8
  %i.bd = load i64, ptr %i.bc, align 1            ; 3 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bb, i64 31)
  %i.bf = getelementptr inbounds nuw i8, ptr %.02531, i64 16
  %i.bg = load i64, ptr %i.bf, align 1            ; 3 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bd, i64 29)
  %i.bi = getelementptr inbounds nuw i8, ptr %.02531, i64 24
  %i.bj = load i64, ptr %i.bi, align 1            ; 3 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bg, i64 27)
  %i.bl = getelementptr inbounds nuw i8, ptr %.02531, i64 32 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 1
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bj, i64 25)
  %i.bo = insertelement <8 x i64> poison, i64 %i.bb, i64 0
  %i.bp = insertelement <8 x i64> %i.bo, i64 %i.be, i64 1
  %i.bq = lshr i64 %i.bd, 2
  %i.br = insertelement <8 x i64> %i.bp, i64 %i.bq, i64 2
  %i.bs = insertelement <8 x i64> %i.br, i64 %i.bh, i64 3
  %i.bt = lshr i64 %i.bg, 4
  %i.bu = insertelement <8 x i64> %i.bs, i64 %i.bt, i64 4
  %i.bv = insertelement <8 x i64> %i.bu, i64 %i.bk, i64 5
  %i.bw = lshr i64 %i.bj, 6
  %i.bx = insertelement <8 x i64> %i.bv, i64 %i.bw, i64 6
  %.sroa.0385.56.vec.insert.i = insertelement <8 x i64> %i.bx, i64 %i.bn, i64 7
  %i.by = and <8 x i64> %.sroa.0385.56.vec.insert.i, splat (i64 8589934591)
  store <8 x i64> %i.by, ptr %.02630, align 1, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %.02531, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %.02531, i64 64
  %i.cb = load <4 x i64>, ptr %i.bl, align 1      ; 2 uses
  %i.cc = load <4 x i64>, ptr %i.bz, align 1
  %i.cd = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cc, <4 x i64> %i.cb, <4 x i64> <i64 23, i64 21, i64 19, i64 17>)
  %i.ce = lshr <4 x i64> %i.cb, <i64 8, i64 10, i64 12, i64 14>
  %i.cf = shufflevector <4 x i64> %i.ce, <4 x i64> %i.cd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cg = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  %i.ch = and <8 x i64> %i.cf, splat (i64 8589934591)
  store <8 x i64> %i.ch, ptr %i.cg, align 1, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %.02531, i64 72
  %i.cj = getelementptr inbounds nuw i8, ptr %.02531, i64 96
  %i.ck = load <4 x i64>, ptr %i.ca, align 1      ; 2 uses
  %i.cl = load <4 x i64>, ptr %i.ci, align 1
  %i.cm = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cl, <4 x i64> %i.ck, <4 x i64> <i64 15, i64 13, i64 11, i64 9>)
  %i.cn = lshr <4 x i64> %i.ck, <i64 16, i64 18, i64 20, i64 22>
  %i.co = shufflevector <4 x i64> %i.cn, <4 x i64> %i.cm, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cp = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.cq = and <8 x i64> %i.co, splat (i64 8589934591)
  store <8 x i64> %i.cq, ptr %i.cp, align 1, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %.02531, i64 104
  %i.cs = getelementptr inbounds nuw i8, ptr %.02531, i64 128
  %i.ct = load <4 x i64>, ptr %i.cj, align 1      ; 2 uses
  %i.cu = load <4 x i64>, ptr %i.cr, align 1
  %i.cv = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cu, <4 x i64> %i.ct, <4 x i64> <i64 7, i64 5, i64 3, i64 1>)
  %i.cw = lshr <4 x i64> %i.ct, <i64 24, i64 26, i64 28, i64 30>
  %i.cx = shufflevector <4 x i64> %i.cw, <4 x i64> %i.cv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cy = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.cz = and <8 x i64> %i.cx, splat (i64 8589934591)
  store <8 x i64> %i.cz, ptr %i.cy, align 1, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %.02531, i64 136
  %i.db = getelementptr inbounds nuw i8, ptr %.02531, i64 160
  %i.dc = load <4 x i64>, ptr %i.cs, align 1
  %i.dd = load <4 x i64>, ptr %i.da, align 1      ; 2 uses
  %i.de = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dd, <4 x i64> %i.dc, <4 x i64> <i64 32, i64 30, i64 28, i64 26>)
  %i.df = lshr <4 x i64> %i.dd, <i64 1, i64 3, i64 5, i64 7>
  %i.dg = shufflevector <4 x i64> %i.de, <4 x i64> %i.df, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.dh = getelementptr inbounds nuw i8, ptr %.02630, i64 256
  %i.di = and <8 x i64> %i.dg, splat (i64 8589934591)
  store <8 x i64> %i.di, ptr %i.dh, align 1, !tbaa !15
  %i.dj = getelementptr inbounds nuw i8, ptr %.02531, i64 168
  %i.dk = getelementptr inbounds nuw i8, ptr %.02531, i64 192
  %i.dl = load <4 x i64>, ptr %i.db, align 1
  %i.dm = load <4 x i64>, ptr %i.dj, align 1      ; 2 uses
  %i.dn = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dm, <4 x i64> %i.dl, <4 x i64> <i64 24, i64 22, i64 20, i64 18>)
  %i.do = lshr <4 x i64> %i.dm, <i64 9, i64 11, i64 13, i64 15>
  %i.dp = shufflevector <4 x i64> %i.dn, <4 x i64> %i.do, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.dq = getelementptr inbounds nuw i8, ptr %.02630, i64 320
  %i.dr = and <8 x i64> %i.dp, splat (i64 8589934591)
  store <8 x i64> %i.dr, ptr %i.dq, align 1, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %.02531, i64 200
  %i.dt = getelementptr inbounds nuw i8, ptr %.02531, i64 224
  %i.du = load <4 x i64>, ptr %i.dk, align 1
  %i.dv = load <4 x i64>, ptr %i.ds, align 1      ; 2 uses
  %i.dw = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dv, <4 x i64> %i.du, <4 x i64> <i64 16, i64 14, i64 12, i64 10>)
  %i.dx = lshr <4 x i64> %i.dv, <i64 17, i64 19, i64 21, i64 23>
  %i.dy = shufflevector <4 x i64> %i.dw, <4 x i64> %i.dx, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.dz = getelementptr inbounds nuw i8, ptr %.02630, i64 384
end_hunk_2
