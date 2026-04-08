inline.NumInlined: 4552
inline.NumDeleted: 1209
begin_hunk_0_@_ZN2v88internal6String16HasOneBytePrefixENS_4base6VectorIKcEE:bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = or disjoint i64 %i.e, 1
  %.idx.i.i8 = shl nuw nsw i64 %2, 1              ; 2 uses
  %4 = icmp eq i64 %2, 0                          ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE1EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_1EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_1EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_1EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_1EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_1EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_1EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %bb.b
end_hunk_0
begin_hunk_1_@_ZN2v88internal6String16HasOneBytePrefixENS_4base6VectorIKcEE:bb.a
  %i.s = sext i32 %.0 to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i8
  br i1 %4, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE1EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.01013.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %1, %bb.e ] ; 2 uses
  %i.v = load i16, ptr %.01013.i.i, align 2
end_hunk_1
begin_hunk_2_@_ZN2v88internal6String16HasOneBytePrefixENS_4base6VectorIKcEE:bb.a
  %i.bo = sext i32 %.0 to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %.0.i7, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i8
  br i1 %4, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE1EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %.lr.ph.i.i9
  %.01013.i.i10 = phi ptr [ %i.bu, %.lr.ph.i.i9 ], [ %i.bp, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i11 = phi ptr [ %i.bv, %.lr.ph.i.i9 ], [ %1, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.br = load i16, ptr %.01013.i.i10, align 2
end_hunk_2
begin_hunk_3_@_ZN2v88internal6String16HasOneBytePrefixENS_4base6VectorIKcEE:bb.a
  %i.cc = load i64, ptr %i.cb, align 8
  br label %bb.c

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE1EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %.lr.ph.i.i9, %.lr.ph.i.i, %bb.e, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.f, %bb.d
  %.sroa.047.1.ph = phi i1 [ %i.av, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ], [ %.not.i.i, %.lr.ph.i.i ], [ %i.aa, %bb.f ], [ %i.q, %bb.d ], [ true, %bb.e ], [ true, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.not.i.i12, %.lr.ph.i.i9 ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !9
  %i.cd = trunc nuw i8 %.pre to i1
end_hunk_3
begin_hunk_4_@_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = zext i32 %i.m to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0142, i64 %i.n) ; 7 uses
  %.idx.i.i22 = shl nuw nsw i64 %.sroa.speculated, 1 ; 2 uses
  %5 = icmp eq i64 %.sroa.speculated, 0           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %.lr.ph
end_hunk_4
begin_hunk_5_@_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.aa = sext i32 %.0 to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i22
  br i1 %5, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %6
  %.01013.i.i = phi ptr [ %7, %6 ], [ %i.ab, %bb.d ] ; 2 uses
  %.01112.i.i = phi ptr [ %8, %6 ], [ %.sroa.039.0141, %bb.d ] ; 2 uses
  %i.ad = load i16, ptr %.01013.i.i, align 2
  %i.ae = load i8, ptr %.01112.i.i, align 1
  %i.af = zext i8 %i.ae to i16
  %.not.i.i = icmp eq i16 %i.ad, %i.af
  br i1 %.not.i.i, label %6, label %.thread134

6:                                                ; preds = %.lr.ph.i.i
  %7 = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1
  %.not16.i.i = icmp ult ptr %7, %i.ac
  br i1 %.not16.i.i, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !165

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.ag = tail call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.0119.0, ptr %.sroa.039.0141, i64 %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(16) %3)
end_hunk_5
begin_hunk_6_@_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #26
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.av = load ptr, ptr %i.aj, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #26
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.j:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 16
end_hunk_6
begin_hunk_7_@_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.br = sext i32 %.0 to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %.0.i21, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i22
  br i1 %5, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %9
  %.01013.i.i24 = phi ptr [ %10, %9 ], [ %i.bs, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i25 = phi ptr [ %11, %9 ], [ %.sroa.039.0141, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.bu = load i16, ptr %.01013.i.i24, align 2
  %i.bv = load i8, ptr %.01112.i.i25, align 1
  %i.bw = zext i8 %i.bv to i16
  %.not.i.i26 = icmp eq i16 %i.bu, %i.bw
  br i1 %.not.i.i26, label %9, label %.thread134

9:                                                ; preds = %.lr.ph.i.i23
  %10 = getelementptr inbounds nuw i8, ptr %.01013.i.i24, i64 2 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.01112.i.i25, i64 1
  %.not16.i.i28 = icmp ult ptr %10, %i.bt
  br i1 %.not16.i.i28, label %.lr.ph.i.i23, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !165

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
end_hunk_7
begin_hunk_8_@_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.cd = load i64, ptr %i.cc, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.i, %bb.h
  %.0.i = phi ptr [ %i.au, %bb.h ], [ %i.ay, %bb.i ]
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds i8, ptr %.0.i, i64 %12
  %bcmp.i.i19 = tail call i32 @bcmp(ptr %13, ptr %.sroa.039.0141, i64 %.sroa.speculated)
  %14 = icmp eq i32 %bcmp.i.i19, 0
  br i1 %14, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %9, %6, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.d, %bb.e, %bb.c, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.039.0141, i64 %.sroa.speculated
  %i.cf = sub i64 %.sroa.6.0142, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %.thread134, label %bb.p

end_hunk_8
begin_hunk_9_@_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.thread134, label %.lr.ph, !llvm.loop !468

.thread134:                                       ; preds = %bb.p, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.c, %bb.e, %.lr.ph.i.i23, %.lr.ph.i.i, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread ], [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i23 ], [ true, %bb.p ], [ false, %bb.e ], [ false, %bb.c ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i1 %.116
end_hunk_9
