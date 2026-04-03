begin_hunk_0
  %i.d = ptrtoint ptr %0 to i64
  %i.e = or disjoint i64 %i.d, 1
  %.idx.i.i9 = shl nuw nsw i64 %2, 1              ; 2 uses
  %4 = icmp eq i64 %2, 0                          ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %bb.b
end_hunk_0
begin_hunk_1
  %i.r = sext i32 %.0 to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i9
  br i1 %4, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.01013.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.s, %bb.e ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %1, %bb.e ] ; 2 uses
  %i.u = load i16, ptr %.01013.i.i, align 2
end_hunk_1
begin_hunk_2
  %i.bn = sext i32 %.0 to i64
  %i.bo = getelementptr inbounds [2 x i8], ptr %.0.i8, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i9
  br i1 %4, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %.lr.ph.i.i10
  %.01013.i.i11 = phi ptr [ %i.bt, %.lr.ph.i.i10 ], [ %i.bo, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i12 = phi ptr [ %i.bu, %.lr.ph.i.i10 ], [ %1, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.bq = load i16, ptr %.01013.i.i11, align 2
end_hunk_2
begin_hunk_3
  %i.cb = load i64, ptr %i.ca, align 8
  br label %bb.c

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %.lr.ph.i.i10, %.lr.ph.i.i, %bb.e, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.f, %bb.d
  %.sroa.048.1.ph = phi i1 [ %i.au, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ], [ %.not.i.i, %.lr.ph.i.i ], [ %i.z, %bb.f ], [ %i.p, %bb.d ], [ true, %bb.e ], [ true, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.not.i.i13, %.lr.ph.i.i10 ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !26
  %i.cc = trunc nuw i8 %.pre to i1
end_hunk_3
begin_hunk_4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.6.0142, i64 %i.k) ; 7 uses
  %.idx.i.i22 = shl nuw nsw i64 %.sroa.speculated, 1 ; 2 uses
  %5 = icmp eq i64 %.sroa.speculated, 0           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %.lr.ph
end_hunk_4
begin_hunk_5
  %i.x = sext i32 %.0 to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i22
  br i1 %5, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %6
  %.01013.i.i = phi ptr [ %7, %6 ], [ %i.y, %bb.d ] ; 2 uses
  %.01112.i.i = phi ptr [ %8, %6 ], [ %.sroa.039.0141, %bb.d ] ; 2 uses
  %i.aa = load i16, ptr %.01013.i.i, align 2
  %i.ab = load i8, ptr %.01112.i.i, align 1
  %i.ac = zext i8 %i.ab to i16
  %.not.i.i = icmp eq i16 %i.aa, %i.ac
  br i1 %.not.i.i, label %6, label %.thread134

6:                                                ; preds = %.lr.ph.i.i
  %7 = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1
  %.not16.i.i = icmp ult ptr %7, %i.z
  br i1 %.not16.i.i, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !312

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.ad = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.0119.0, ptr %.sroa.039.0141, i64 %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(16) %3)
end_hunk_5
begin_hunk_6
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.as = load ptr, ptr %i.ag, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #22
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.j:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
end_hunk_6
begin_hunk_7
  %i.bo = sext i32 %.0 to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %.0.i21, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i22
  br i1 %5, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %9
  %.01013.i.i24 = phi ptr [ %10, %9 ], [ %i.bp, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i25 = phi ptr [ %11, %9 ], [ %.sroa.039.0141, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.br = load i16, ptr %.01013.i.i24, align 2
  %i.bs = load i8, ptr %.01112.i.i25, align 1
  %i.bt = zext i8 %i.bs to i16
  %.not.i.i26 = icmp eq i16 %i.br, %i.bt
  br i1 %.not.i.i26, label %9, label %.thread134

9:                                                ; preds = %.lr.ph.i.i23
  %10 = getelementptr inbounds nuw i8, ptr %.01013.i.i24, i64 2 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.01112.i.i25, i64 1
  %.not16.i.i28 = icmp ult ptr %10, %i.bq
  br i1 %.not16.i.i28, label %.lr.ph.i.i23, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !312

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 24
end_hunk_7
begin_hunk_8
  %i.ca = load i64, ptr %i.bz, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.i, %bb.h
  %.0.i = phi ptr [ %i.ar, %bb.h ], [ %i.av, %bb.i ]
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds i8, ptr %.0.i, i64 %12
  %bcmp.i.i19 = call i32 @bcmp(ptr %13, ptr %.sroa.039.0141, i64 %.sroa.speculated)
  %14 = icmp eq i32 %bcmp.i.i19, 0
  br i1 %14, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %9, %6, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.d, %bb.e, %bb.c, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.039.0141, i64 %.sroa.speculated
  %i.cc = sub i64 %.sroa.6.0142, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %.thread134, label %bb.p

end_hunk_8
begin_hunk_9
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.thread134, label %.lr.ph, !llvm.loop !313

.thread134:                                       ; preds = %bb.p, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.c, %bb.e, %.lr.ph.i.i23, %.lr.ph.i.i, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ false, %.lr.ph.i.i23 ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit ], [ false, %.lr.ph.i.i ], [ true, %bb.p ], [ false, %bb.e ], [ false, %bb.c ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 %.116
end_hunk_9
begin_hunk_10

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.j, %bb.d, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.c, %bb.e, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.sroa.038.0140, i64 %.sroa.speculated
  %i.cl = sub i64 %.sroa.6.0141, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %.thread133, label %bb.q

end_hunk_10
