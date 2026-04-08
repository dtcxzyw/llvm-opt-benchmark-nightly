inline.NumInlined: 2071
inline.NumDeleted: 650
begin_hunk_0_@_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE:bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = or disjoint i64 %i.a, 1
  %.idx.i.i7 = shl nuw nsw i64 %2, 1              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %bb.a
end_hunk_0
begin_hunk_1_@_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE:bb.a
  %i.o = sext i32 %.0 to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i7
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.01013.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %1, %bb.d ] ; 2 uses
  %i.r = load i16, ptr %.01013.i.i, align 2
end_hunk_1
begin_hunk_2_@_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE:bb.a
  %i.bk = sext i32 %.0 to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %.0.i6, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i.i7
  br label %.lr.ph.i.i8

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i.i8, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit
  %.01013.i.i9 = phi ptr [ %i.bq, %.lr.ph.i.i8 ], [ %i.bl, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i10 = phi ptr [ %i.br, %.lr.ph.i.i8 ], [ %1, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.bn = load i16, ptr %.01013.i.i9, align 2
end_hunk_2
begin_hunk_3_@_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE:bb.a
  %i.by = load i64, ptr %i.bx, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %.lr.ph.i.i8, %.lr.ph.i.i, %bb.c, %bb.e, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  %.sroa.046.1.ph = phi i1 [ %.not.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ], [ %i.ar, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ], [ %i.w, %bb.e ], [ %.not.i.i11, %.lr.ph.i.i8 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !range !11, !noundef !12
  %i.cb = trunc nuw i8 %i.ca to i1
end_hunk_3
begin_hunk_4_@_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.6.0142, i64 %i.k) ; 6 uses
  %.idx.i.i22 = shl nuw nsw i64 %.sroa.speculated, 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %.lr.ph
end_hunk_4
begin_hunk_5_@_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.x = sext i32 %.0 to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i22
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.01013.i.i = phi ptr [ %5, %.lr.ph.i.i ], [ %i.y, %bb.d ] ; 2 uses
  %.01112.i.i = phi ptr [ %6, %.lr.ph.i.i ], [ %.sroa.039.0141, %bb.d ] ; 2 uses
  %i.aa = load i16, ptr %.01013.i.i, align 2
  %i.ab = load i8, ptr %.01112.i.i, align 1
  %i.ac = zext i8 %i.ab to i16
  %.not.i.i = icmp eq i16 %i.aa, %i.ac            ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1
  %.not16.i.i = icmp ult ptr %5, %i.z
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not16.i.i, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, !llvm.loop !48

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.ad = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.0119.0, ptr %.sroa.039.0141, i64 %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(16) %3)
end_hunk_5
begin_hunk_6_@_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.as = load ptr, ptr %i.ag, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #21
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.ar, %bb.h ], [ %i.av, %bb.i ]
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i8, ptr %.0.i, i64 %7
  %bcmp.i.i19 = call i32 @bcmp(ptr %8, ptr %.sroa.039.0141, i64 %.sroa.speculated)
  %9 = icmp eq i32 %bcmp.i.i19, 0
  br i1 %9, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

bb.j:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
end_hunk_6
begin_hunk_7_@_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.bo = sext i32 %.0 to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %.0.i21, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i22
  br label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i.i23, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit
  %.01013.i.i24 = phi ptr [ %10, %.lr.ph.i.i23 ], [ %i.bp, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i25 = phi ptr [ %11, %.lr.ph.i.i23 ], [ %.sroa.039.0141, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.br = load i16, ptr %.01013.i.i24, align 2
  %i.bs = load i8, ptr %.01112.i.i25, align 1
  %i.bt = zext i8 %i.bs to i16
  %.not.i.i26 = icmp eq i16 %i.br, %i.bt          ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.01013.i.i24, i64 2 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.01112.i.i25, i64 1
  %.not16.i.i27 = icmp ult ptr %10, %i.bq
  %or.cond.i.i28 = select i1 %.not.i.i26, i1 %.not16.i.i27, i1 false
  br i1 %or.cond.i.i28, label %.lr.ph.i.i23, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, !llvm.loop !48

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 24
end_hunk_7
begin_hunk_8_@_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.ca = load i64, ptr %i.bz, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %.lr.ph.i.i23, %.lr.ph.i.i
  %.sroa.077.2.ph = phi i1 [ %.not.i.i, %.lr.ph.i.i ], [ %.not.i.i26, %.lr.ph.i.i23 ]
  br i1 %.sroa.077.2.ph, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.e, %bb.c, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.039.0141, i64 %.sroa.speculated
  %i.cc = sub nuw i64 %.sroa.6.0142, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %.thread134, label %bb.p

end_hunk_8
begin_hunk_9_@_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.thread134, label %.lr.ph, !llvm.loop !49

.thread134:                                       ; preds = %bb.p, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.c, %bb.e, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit ], [ true, %bb.p ], [ false, %bb.e ], [ false, %bb.c ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ false, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.116
end_hunk_9
begin_hunk_10_@_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.j, %bb.d, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.c, %bb.e, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.sroa.038.0140, i64 %.sroa.speculated
  %i.cl = sub nuw i64 %.sroa.6.0141, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %.thread133, label %bb.q

end_hunk_10
begin_hunk_11_@_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EEPNS0_12LocalIsolateE:bb.a
  %i.h = ptrtoint ptr %0 to i64
  %i.i = or disjoint i64 %i.h, 1
  %.idx.i.i9 = shl nuw nsw i64 %2, 1              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit
end_hunk_11
begin_hunk_12_@_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EEPNS0_12LocalIsolateE:bb.a
  %i.v = sext i32 %.0 to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i9
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.01013.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %1, %bb.d ] ; 2 uses
  %i.y = load i16, ptr %.01013.i.i, align 2
end_hunk_12
begin_hunk_13_@_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EEPNS0_12LocalIsolateE:bb.a
  %i.br = sext i32 %.0 to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %.0.i8, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i9
  br label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i.i10, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit
  %.01013.i.i11 = phi ptr [ %i.bx, %.lr.ph.i.i10 ], [ %i.bs, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i12 = phi ptr [ %i.by, %.lr.ph.i.i10 ], [ %1, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.bu = load i16, ptr %.01013.i.i11, align 2
end_hunk_13
begin_hunk_14_@_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EEPNS0_12LocalIsolateE:bb.a
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %.lr.ph.i.i10, %.lr.ph.i.i, %bb.c, %bb.e, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  %.sroa.048.1.ph = phi i1 [ %.not.i.i5, %.lr.ph.i.i ], [ %i.t, %bb.c ], [ %i.ay, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ], [ %i.ad, %bb.e ], [ %.not.i.i13, %.lr.ph.i.i10 ]
  %i.cg = load i8, ptr %i.a, align 8, !range !11, !noundef !12
  %i.ch = trunc nuw i8 %i.cg to i1
  store i8 0, ptr %i.a, align 8
end_hunk_14
