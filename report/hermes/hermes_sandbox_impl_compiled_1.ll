inline.NumInlined: 26868
inline.NumDeleted: 24
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpression0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3AIdentifier0x29:bb.a
  br label %bb.sw

bb.sw:                                            ; preds = %bb.sv, %bb.su
  %.012567 = phi i64 [ %.0.copyload.i15563, %bb.su ], [ %i.dkc, %bb.sv ] ; 10 uses
  %i.dke = icmp eq i32 %.0.copyload.i15560, %.0.copyload.i15561
  br i1 %i.dke, label %.loopexit15811, label %.preheader15810

end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpression0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3AIdentifier0x29:bb.a
  %.0.copyload.i15566 = load i64, ptr %i.dkt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i15566) #7, !srcloc !20
  %i.dku = lshr i64 %.012567, 47
  %i.dkv = xor i64 %i.dku, %.012567               ; 3 uses
  %i.dkw = xor i64 %.012567, -5435081209227447693 ; 3 uses
  %i.dkx = mul i64 %i.dkw, -7070675565921424023   ; 2 uses
  %i.dky = lshr i64 %i.dkx, 47
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpression0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3AIdentifier0x29:bb.a
  %i.dli = mul i64 %.012567, -5435081209227447693
  %i.dlj = xor i64 %i.dkv, %i.dli
  %i.dlk = mul i64 %i.dlj, -7070675565921424023   ; 2 uses
  %4 = xor i64 %i.dlk, %.012567
  %i.dll = lshr i64 %4, 47
  %i.dlm = xor i64 %.012567, %i.dll
  %i.dln = xor i64 %i.dlm, %i.dlk
  %i.dlo = mul i64 %i.dln, -7070675565921424023   ; 2 uses
  %i.dlp = lshr i64 %i.dlo, 47
  %i.dlq = xor i64 %i.dlp, %i.dlo
  %i.dlr = mul i64 %i.dlq, -7070675565921424023   ; 2 uses
  %i.dls = add i64 %i.dlr, %i.dlh
  %i.dlt = add i64 %i.dls, %.0.copyload.i15566    ; 3 uses
  %i.dlu = add nuw nsw i64 %i.dkr, 40             ; 2 uses
  %.val14485 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AStringLiteralTable0x3A0x3AgetStringID0x28llvh0x3A0x3AStringRef0x290x20const:bb.a
  %.val311 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.0.copyload.i330 = load i32, ptr %i.ao, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i330) #7, !srcloc !19
  %i.ap = udiv i32 %.0.copyload.i322, 341         ; 5 uses
  %i.aq = urem i32 %.0.copyload.i322, 341
  %i.ar = shl nuw nsw i32 %i.ap, 2
  %i.as = add i32 %.0.copyload.i330, %i.ar        ; 7 uses
  %.val310 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val310, i64 %i.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 36
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AStringLiteralTable0x3A0x3AgetStringID0x28llvh0x3A0x3AStringRef0x290x20const:bb.a

bb.i:                                             ; preds = %bb.h
  %i.bj = udiv i32 %i.bh, 341                     ; 2 uses
  %3 = add nuw nsw i32 %i.bj, %i.ap
  %i.bk = shl nuw nsw i32 %3, 2
  %i.bl = add i32 %i.bk, %.0.copyload.i330        ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %.val306 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val306, i64 %i.bm
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3AOptValue0x3Cdouble0x3E0x20hermes0x3A0x3AparseIntWithRadix0x3Cfalse0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x2C0x20int0x29:bb.a
  %.val1392 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val1392, i64 %i.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %.0.copyload.i1440 = load i32, ptr %i.y, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1440) #7, !srcloc !19
  %i.z = and i32 %.0.copyload.i1440, 1073741824
  %.val1391 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3AOptValue0x3Cdouble0x3E0x20hermes0x3A0x3AparseIntWithRadix0x3Cfalse0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x2C0x20int0x29:bb.a
  %i.eq = add i32 %3, 87                          ; 2 uses
  %i.er = add i32 %3, 48                          ; 2 uses
  %i.es = shl nuw i32 %.0.copyload.i1440, 1
  %i.et = and i32 %i.es, 2147483646               ; 2 uses
  %i.eu = add i32 %.2, %i.et                      ; 3 uses
  %.val1372 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val1372, i64 %i.v
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3AOptValue0x3Cdouble0x3E0x20hermes0x3A0x3AparseIntWithRadix0x3Cfalse0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x2C0x20int0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1469) #7, !srcloc !19
  %.val1371 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %.val1371, i64 %i.p
  %.0.copyload.i1470 = load i32, ptr %i.ew, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1470) #7, !srcloc !19
  %.val1370 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val1370, i64 %i.e
end_hunk_7
begin_hunk_8_@w2c_hermes_hermes0x3A0x3AOptValue0x3Cdouble0x3E0x20hermes0x3A0x3AparseIntWithRadix0x3Cfalse0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x2C0x20int0x29:bb.a
  %.0.copyload.i1471 = load i32, ptr %i.ey, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1471) #7, !srcloc !19
  %i.ez = sitofp i32 %.0.copyload.i1471 to double ; 2 uses
  br i1 %.not1318, label %bb.ao, label %.preheader1555

.preheader1555:                                   ; preds = %bb.ad
  %i.fa = zext i32 %.0.copyload.i1441 to i64
  %4 = and i32 %.0.copyload.i1440, 1073741823
  %i.fb = add i32 %.0.copyload.i1470, %4
  %5 = shl i32 %i.fb, 1
  %i.fc = zext i32 %.0.copyload.i1469 to i64      ; 2 uses
  br label %bb.ae

end_hunk_8
begin_hunk_9_@w2c_hermes_hermes0x3A0x3AOptValue0x3Cdouble0x3E0x20hermes0x3A0x3AparseIntWithRadix0x3Cfalse0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x2C0x20int0x29:bb.a

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af
  %.0 = phi i32 [ %i.fn, %bb.af ], [ %i.ga, %bb.aj ], [ %i.fp, %bb.ah ], [ %i.fq, %bb.ai ]
  %i.gb = add i32 %5, %.0
  %i.gc = icmp eq i32 %.11270, %i.gb
  br i1 %i.gc, label %.critedge, label %bb.al

end_hunk_9
begin_hunk_10_@w2c_hermes_hermes0x3A0x3AOptValue0x3Cdouble0x3E0x20hermes0x3A0x3AparseIntWithRadix0x3Cfalse0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x2C0x20int0x29:bb.a

bb.ao:                                            ; preds = %bb.ad
  %i.gt = add i32 %.0.copyload.i1441, %i.et
  %6 = shl i32 %.0.copyload.i1470, 1
  %i.gu = add i32 %i.gt, %6                       ; 2 uses
  %i.gv = icmp eq i32 %i.gu, %i.eu
  br i1 %i.gv, label %.critedge, label %.preheader1552

end_hunk_10
begin_hunk_11_@w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29:bb.a
  %i.l = trunc nuw i64 %i.k to i32                ; 4 uses
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.k) ; 3 uses
  %i.n = trunc nuw i64 %i.m to i32                ; 11 uses
  %i.o = add i32 %i.n, 1                          ; 30 uses
  %.not = icmp eq i32 %1, 0                       ; 6 uses
  br i1 %.not, label %._crit_edge, label %bb.b

end_hunk_11
begin_hunk_12_@w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29:bb.a

bb.m:                                             ; preds = %bb.k, %bb.l
  %.11446 = phi i32 [ %.01445, %bb.l ], [ %i.as, %bb.k ] ; 26 uses
  %i.bk = shl i32 %i.o, 3                         ; 2 uses
  %i.bl = add i32 %.11446, %i.bk                  ; 4 uses
  %i.bm = select i1 %.not, i32 %i.o, i32 %i.ay    ; 2 uses
  %i.bn = shl i32 %i.bm, 3
  %i.bo = add i32 %i.bl, %i.bn                    ; 4 uses
  %i.bp = add nuw nsw i64 %i.x, 56                ; 2 uses
  %.val1554 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1554, i64 %i.bp
end_hunk_12
begin_hunk_13_@w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29:bb.a
  br i1 %.not1494, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %7 = add i32 %i.bm, %i.o
  %8 = shl i32 %7, 3
  %i.br = add i32 %i.bl, %8
  %.val1553 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1553, i64 %i.bp
  store i32 %i.br, ptr %i.bs, align 1
end_hunk_13
begin_hunk_14_@w2c_hermes_hermes0x3A0x3AaddRangeArrayPoolToBracket0x28hermes0x3A0x3ACodePointSet0x2A0x2C0x20llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3AUnicodeRangePoolRef0x3E0x2C0x20bool0x29:bb.a
  %i.z = zext i16 %.0.copyload.i1508 to i64
  %i.aa = add nuw nsw i64 %i.z, %i.x
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %4 = add nuw nsw i64 %i.ab, 84648
  %5 = zext i16 %.0.copyload.i1508 to i64
  %6 = shl nuw nsw i64 %5, 3
  %i.ac = add nuw nsw i64 %6, 84656
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ %i.ac, %bb.d ] ; 4 uses
  %.01328 = phi i32 [ %i.fi, %bb.z ], [ 0, %bb.d ] ; 15 uses
  %.val1470 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1470, i64 %indvars.iv
end_hunk_14
begin_hunk_15_@w2c_hermes_hermes0x3A0x3AaddRangeArrayPoolToBracket0x28hermes0x3A0x3ACodePointSet0x2A0x2C0x20llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3AUnicodeRangePoolRef0x3E0x2C0x20bool0x29:bb.a
bb.z:                                             ; preds = %bb.e, %bb.y, %bb.x, %bb.t
  %i.fi = add i32 %.0.copyload.i1509, 1           ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %.not1400 = icmp eq i64 %indvars.iv, %4
  br i1 %.not1400, label %bb.aa, label %bb.e

bb.aa:                                            ; preds = %bb.z
end_hunk_15
begin_hunk_16_@w2c_hermes_hermes0x3A0x3AaddRangeArrayPoolToBracket0x28hermes0x3A0x3ACodePointSet0x2A0x2C0x20llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3AUnicodeRangePoolRef0x3E0x2C0x20bool0x29:bb.a
  %i.he = zext i16 %.0.copyload.i1548 to i64
  %i.hf = add nuw nsw i64 %i.he, %i.hc
  %i.hg = shl nuw nsw i64 %i.hf, 3
  %7 = add nuw nsw i64 %i.hg, 84648
  %8 = zext i16 %.0.copyload.i1548 to i64
  %9 = shl nuw nsw i64 %8, 3
  %i.hh = add nuw nsw i64 %9, 84656
  br label %bb.ag

bb.ag:                                            ; preds = %bb.bb, %bb.af
  %indvars.iv1663 = phi i64 [ %indvars.iv.next1664, %bb.bb ], [ %i.hh, %bb.af ] ; 4 uses
  %.val1436 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val1436, i64 %indvars.iv1663
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
end_hunk_16
begin_hunk_17_@w2c_hermes_hermes0x3A0x3AaddRangeArrayPoolToBracket0x28hermes0x3A0x3ACodePointSet0x2A0x2C0x20llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3AUnicodeRangePoolRef0x3E0x2C0x20bool0x29:bb.a

bb.bb:                                            ; preds = %bb.ag, %bb.ba, %bb.az, %bb.au
  %indvars.iv.next1664 = add nuw nsw i64 %indvars.iv1663, 8
  %.not1382 = icmp eq i64 %indvars.iv1663, %7
  br i1 %.not1382, label %.loopexit1596, label %bb.ag

.loopexit1596:                                    ; preds = %bb.bb, %.preheader1597
end_hunk_17
begin_hunk_18_@w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3AprintDiagnostic0x28llvh0x3A0x3ASMDiagnostic0x20const0x260x2C0x20void0x2A0x29:bb.a
  br label %bb.er

bb.er:                                            ; preds = %.preheader4335, %bb.gf
  %.103499 = phi i32 [ %i.akj, %bb.gf ], [ %i.acp, %.preheader4335 ] ; 20 uses
  %i.acw = and i32 %.103499, 7                    ; 3 uses
  %i.acx = sub nuw nsw i32 8, %i.acw              ; 16 uses
  %.val3769 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_18
begin_hunk_19_@w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3AprintDiagnostic0x28llvh0x3A0x3ASMDiagnostic0x20const0x260x2C0x20void0x2A0x29:bb.a
  %i.adl = getelementptr inbounds nuw i8, ptr %.val3767, i64 %i.acq
  %.0.copyload.i4154 = load i32, ptr %i.adl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4154) #7, !srcloc !19
  %i.adm = select i1 %.not3630, i32 %i.ach, i32 %.0.copyload.i4154 ; 4 uses
  %i.adn = icmp ult i32 %i.adg, 2
  %i.ado = icmp eq i32 %i.acx, %i.adh
  %or.cond3701 = select i1 %i.adn, i1 true, i1 %i.ado
end_hunk_19
begin_hunk_20_@w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3AprintDiagnostic0x28llvh0x3A0x3ASMDiagnostic0x20const0x260x2C0x20void0x2A0x29:bb.a

bb.eu:                                            ; preds = %bb.et
  %i.adp = shl nsw i32 %.103499, 2
  %i.adq = add nsw i32 %i.acx, %.103499
  %i.adr = shl i32 %i.adq, 2
  %3 = add i32 %i.adm, %i.adr
  %i.ads = add i32 %i.adp, 4
  %i.adt = add i32 %i.ads, %i.adm
  %i.adu = sub nuw i32 %i.adg, %i.adh
  %i.adv = shl i32 %i.adu, 2
  %i.adw = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.adt, i32 noundef %i.adv) #7 ; 0 uses
  br label %bb.fi

bb.ev:                                            ; preds = %bb.er
end_hunk_20
