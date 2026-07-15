inline.NumInlined: 2071
inline.NumDeleted: 650
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.p = load atomic volatile i64, ptr %i.o acquire, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = and i16 %i.s, 15
  switch i16 %i.t, label %bb.p [
    i16 8, label %bb.c
    i16 0, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
    i16 9, label %bb.e
    i16 1, label %bb.e
    i16 10, label %bb.f
    i16 2, label %bb.k
    i16 11, label %bb.o
    i16 3, label %bb.o
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = sext i32 %.0 to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.speculated
  br i1 %i.m, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01013.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.ac, %bb.d ], [ %.sroa.038.0140, %bb.c ] ; 2 uses
  %i.y = load i8, ptr %.01013.i.i, align 1
  %i.z = load i16, ptr %.01112.i.i, align 2
  %i.aa = zext i8 %i.y to i16
  %.not.i.i = icmp eq i16 %i.z, %i.aa
  br i1 %.not.i.i, label %bb.d, label %.thread133

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 2
  %.not16.i.i = icmp ult ptr %i.ab, %i.x
  br i1 %.not16.i.i, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !65

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.ad = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.0118.0, ptr %.sroa.038.0140, i64 %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.ad, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

bb.f:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = inttoptr i64 %i.af to ptr               ; 6 uses
  %i.ah = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  %i.al = and i16 %i.ak, 16
  %.not.i = icmp eq i16 %i.al, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #20, !inline_history !59
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.as = load ptr, ptr %i.ag, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #20, !inline_history !59
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.ar, %bb.h ], [ %i.av, %bb.i ]
  %i.aw = sext i32 %.0 to i64
  %i.ax = getelementptr inbounds i8, ptr %.0.i, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.speculated
  br i1 %i.m, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.j
  %.01013.i.i20 = phi ptr [ %i.bc, %bb.j ], [ %i.ax, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i21 = phi ptr [ %i.bd, %bb.j ], [ %.sroa.038.0140, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %i.az = load i8, ptr %.01013.i.i20, align 1
  %i.ba = load i16, ptr %.01112.i.i21, align 2
  %i.bb = zext i8 %i.az to i16
  %.not.i.i22 = icmp eq i16 %i.ba, %i.bb
  br i1 %.not.i.i22, label %bb.j, label %.thread133

bb.j:                                             ; preds = %.lr.ph.i.i19
  %i.bc = getelementptr inbounds nuw i8, ptr %.01013.i.i20, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01112.i.i21, i64 2
  %.not16.i.i24 = icmp ult ptr %i.bc, %i.ay
  br i1 %.not16.i.i24, label %.lr.ph.i.i19, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !65

bb.k:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 6 uses
  %i.bh = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.bi = add i64 %i.bh, 11
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i16, ptr %i.bj monotonic, align 2
  %i.bl = and i16 %i.bk, 16
  %.not.i26 = icmp eq i16 %i.bl, 0
  br i1 %.not.i26, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #20, !inline_history !60
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bs = load ptr, ptr %i.bg, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #20, !inline_history !60
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.m, %bb.n
  %.0.i27 = phi ptr [ %i.br, %bb.m ], [ %i.bv, %bb.n ]
  %i.bw = sext i32 %.0 to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %.0.i27, i64 %i.bw
  %bcmp.i.i28 = call i32 @bcmp(ptr %i.bx, ptr %.sroa.038.0140, i64 %i.l)
  %i.by = icmp eq i32 %bcmp.i.i28, 0
  br i1 %i.by, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

bb.o:                                             ; preds = %bb.b, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = add nsw i32 %.0, %i.cc
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.p:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.b, %bb.b, %bb.o
  %.1 = phi i32 [ %i.cd, %bb.o ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ch = sext i32 %.0 to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.ch
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.ci, ptr %.sroa.038.0140, i64 %i.l)
  %i.cj = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cj, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.j, %bb.d, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.c, %bb.e, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.sroa.038.0140, i64 %.sroa.speculated
  %i.cl = sub i64 %.sroa.6.0141, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %.thread133, label %bb.q

bb.q:                                             ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread
  store i32 0, ptr %i.a, align 4
  %i.cm = load i32, ptr %i.d, align 8
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.thread133, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit32

_ZN2v88internal18ConsStringIterator4NextEPi.exit32: ; preds = %bb.q
  %i.co = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.thread133, label %.lr.ph, !llvm.loop !66

.thread133:                                       ; preds = %bb.q, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.e, %.lr.ph.i.i19, %.lr.ph.i.i, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ false, %.lr.ph.i.i19 ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit ], [ false, %.lr.ph.i.i ], [ true, %bb.q ], [ false, %bb.e ], [ false, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i1 %.116
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE39NewOneByteInternalizedStringFromTwoByteENS_4base6VectorIKtEEj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i32 noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE28NewTwoByteInternalizedStringENS_4base6VectorIKtEEj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i32 noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE36AllocateRawOneByteInternalizedStringEij(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIthEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = ptrtoaddr ptr %0 to i64                    ; 6 uses
  %4 = ptrtoaddr ptr %1 to i64                    ; 6 uses
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i.preheader
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %5 = add i64 %4, 32
  %6 = add i64 %3, 16
  %rt.bound0169 = icmp ugt i64 %5, %3
  %rt.bound1170 = icmp ugt i64 %6, %4
  %rt.conflict171 = and i1 %rt.bound0169, %rt.bound1170
  br i1 %rt.conflict171, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %7 = add i64 %4, 30
  %8 = add i64 %3, 15
  %rt.bound0165 = icmp ugt i64 %7, %3
  %rt.bound1166 = icmp ugt i64 %8, %4
  %rt.conflict167 = and i1 %rt.bound0165, %rt.bound1166
  br i1 %rt.conflict167, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %9 = add i64 %4, 28
  %10 = add i64 %3, 14
  %rt.bound0 = icmp ugt i64 %9, %3
  %rt.bound1 = icmp ugt i64 %10, %4
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.a = load i16, ptr %1, align 2
  %i.b = trunc i16 %i.a to i8
  store i8 %i.b, ptr %0, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i16, ptr %i.c, align 2
  %i.f = trunc i16 %i.e to i8
  store i8 %i.f, ptr %i.d, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i16, ptr %i.g, align 2
  %i.j = trunc i16 %i.i to i8
  store i8 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i16, ptr %i.k, align 2
  %i.n = trunc i16 %i.m to i8
  store i8 %i.n, ptr %i.l, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i16, ptr %i.o, align 2
  %i.r = trunc i16 %i.q to i8
  store i8 %i.r, ptr %i.p, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i16, ptr %i.s, align 2
  %i.v = trunc i16 %i.u to i8
  store i8 %i.v, ptr %i.t, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.y = load i16, ptr %i.w, align 2
  %i.z = trunc i16 %i.y to i8
  store i8 %i.z, ptr %i.x, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ac = load i16, ptr %i.aa, align 2
  %i.ad = trunc i16 %i.ac to i8
  store i8 %i.ad, ptr %i.ab, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i16, ptr %i.ae, align 2
  %i.ah = trunc i16 %i.ag to i8
  store i8 %i.ah, ptr %i.af, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ak = load i16, ptr %i.ai, align 2
  %i.al = trunc i16 %i.ak to i8
  store i8 %i.al, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ao = load i16, ptr %i.am, align 2
  %i.ap = trunc i16 %i.ao to i8
  store i8 %i.ap, ptr %i.an, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.as = load i16, ptr %i.aq, align 2
  %i.at = trunc i16 %i.as to i8
  store i8 %i.at, ptr %i.ar, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = load i16, ptr %i.au, align 2
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.av, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.ay = load i16, ptr %1, align 2
  %i.az = trunc i16 %i.ay to i8
  store i8 %i.az, ptr %0, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bc = load i16, ptr %i.ba, align 2
  %i.bd = trunc i16 %i.bc to i8
  store i8 %i.bd, ptr %i.bb, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bg = load i16, ptr %i.be, align 2
  %i.bh = trunc i16 %i.bg to i8
  store i8 %i.bh, ptr %i.bf, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bk = load i16, ptr %i.bi, align 2
  %i.bl = trunc i16 %i.bk to i8
  store i8 %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i16, ptr %i.bm, align 2
  %i.bp = trunc i16 %i.bo to i8
  store i8 %i.bp, ptr %i.bn, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bs = load i16, ptr %i.bq, align 2
  %i.bt = trunc i16 %i.bs to i8
  store i8 %i.bt, ptr %i.br, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bw = load i16, ptr %i.bu, align 2
  %i.bx = trunc i16 %i.bw to i8
  store i8 %i.bx, ptr %i.bv, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ca = load i16, ptr %i.by, align 2
  %i.cb = trunc i16 %i.ca to i8
  store i8 %i.cb, ptr %i.bz, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i16, ptr %i.cc, align 2
  %i.cf = trunc i16 %i.ce to i8
  store i8 %i.cf, ptr %i.cd, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ci = load i16, ptr %i.cg, align 2
  %i.cj = trunc i16 %i.ci to i8
  store i8 %i.cj, ptr %i.ch, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cm = load i16, ptr %i.ck, align 2
  %i.cn = trunc i16 %i.cm to i8
  store i8 %i.cn, ptr %i.cl, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cq = load i16, ptr %i.co, align 2
  %i.cr = trunc i16 %i.cq to i8
  store i8 %i.cr, ptr %i.cp, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.cs = load i16, ptr %1, align 2
  %i.ct = trunc i16 %i.cs to i8
  store i8 %i.ct, ptr %0, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cw = load i16, ptr %i.cu, align 2
  %i.cx = trunc i16 %i.cw to i8
  store i8 %i.cx, ptr %i.cv, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.da = load i16, ptr %i.cy, align 2
  %i.db = trunc i16 %i.da to i8
  store i8 %i.db, ptr %i.cz, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.de = load i16, ptr %i.dc, align 2
  %i.df = trunc i16 %i.de to i8
  store i8 %i.df, ptr %i.dd, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.di = load i16, ptr %i.dg, align 2
  %i.dj = trunc i16 %i.di to i8
  store i8 %i.dj, ptr %i.dh, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.dm = load i16, ptr %i.dk, align 2
  %i.dn = trunc i16 %i.dm to i8
  store i8 %i.dn, ptr %i.dl, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dq = load i16, ptr %i.do, align 2
  %i.dr = trunc i16 %i.dq to i8
  store i8 %i.dr, ptr %i.dp, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.du = load i16, ptr %i.ds, align 2
  %i.dv = trunc i16 %i.du to i8
  store i8 %i.dv, ptr %i.dt, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = load i16, ptr %i.dw, align 2
  %i.dz = trunc i16 %i.dy to i8
  store i8 %i.dz, ptr %i.dx, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ec = load i16, ptr %i.ea, align 2
  %i.ed = trunc i16 %i.ec to i8
  store i8 %i.ed, ptr %i.eb, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.eg = load i16, ptr %i.ee, align 2
  %i.eh = trunc i16 %i.eg to i8
  store i8 %i.eh, ptr %i.ef, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.ei = load i16, ptr %1, align 2
  %i.ej = trunc i16 %i.ei to i8
  store i8 %i.ej, ptr %0, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.em = load i16, ptr %i.ek, align 2
  %i.en = trunc i16 %i.em to i8
  store i8 %i.en, ptr %i.el, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.eq = load i16, ptr %i.eo, align 2
  %i.er = trunc i16 %i.eq to i8
  store i8 %i.er, ptr %i.ep, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 3
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIthEEvPT0_PKT_m:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.jo = load i16, ptr %i.jm, align 2
  %i.jp = trunc i16 %i.jo to i8
  store i8 %i.jp, ptr %i.jn, align 1
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.js = load i16, ptr %i.jq, align 2
  %i.jt = trunc i16 %i.js to i8
  store i8 %i.jt, ptr %i.jr, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jw = load i16, ptr %i.ju, align 2
  %i.jx = trunc i16 %i.jw to i8
  store i8 %i.jx, ptr %i.jv, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ka = load i16, ptr %i.jy, align 2
  %i.kb = trunc i16 %i.ka to i8
  store i8 %i.kb, ptr %i.jz, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kc = load i16, ptr %1, align 2
  %i.kd = trunc i16 %i.kc to i8
  store i8 %i.kd, ptr %0, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.kg = load i16, ptr %i.ke, align 2
  %i.kh = trunc i16 %i.kg to i8
  store i8 %i.kh, ptr %i.kf, align 1
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.kk = load i16, ptr %i.ki, align 2
  %i.kl = trunc i16 %i.kk to i8
  store i8 %i.kl, ptr %i.kj, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ko = load i16, ptr %i.km, align 2
  %i.kp = trunc i16 %i.ko to i8
  store i8 %i.kp, ptr %i.kn, align 1
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ks = load i16, ptr %i.kq, align 2
  %i.kt = trunc i16 %i.ks to i8
  store i8 %i.kt, ptr %i.kr, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.ku = load i16, ptr %1, align 2
  %i.kv = trunc i16 %i.ku to i8
  store i8 %i.kv, ptr %0, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ky = load i16, ptr %i.kw, align 2
  %i.kz = trunc i16 %i.ky to i8
  store i8 %i.kz, ptr %i.kx, align 1
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lc = load i16, ptr %i.la, align 2
  %i.ld = trunc i16 %i.lc to i8
  store i8 %i.ld, ptr %i.lb, align 1
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.lg = load i16, ptr %i.le, align 2
  %i.lh = trunc i16 %i.lg to i8
  store i8 %i.lh, ptr %i.lf, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.li = load i16, ptr %1, align 2
  %i.lj = trunc i16 %i.li to i8
  store i8 %i.lj, ptr %0, align 1
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.lm = load i16, ptr %i.lk, align 2
  %i.ln = trunc i16 %i.lm to i8
  store i8 %i.ln, ptr %i.ll, align 1
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lq = load i16, ptr %i.lo, align 2
  %i.lr = trunc i16 %i.lq to i8
  store i8 %i.lr, ptr %i.lp, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ls = load i16, ptr %1, align 2
  %i.lt = trunc i16 %i.ls to i8
  store i8 %i.lt, ptr %0, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.lw = load i16, ptr %i.lu, align 2
  %i.lx = trunc i16 %i.lw to i8
  store i8 %i.lx, ptr %i.lv, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  %i.ly = load i16, ptr %1, align 2
  %i.lz = trunc i16 %i.ly to i8
  store i8 %i.lz, ptr %0, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.ma = icmp sgt i64 %2, 0
  br i1 %i.ma, label %iter.check, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %2
  %i.mb = shl nuw i64 %2, 1
  %scevgep148 = getelementptr i8, ptr %1, i64 %i.mb
  %bound0 = icmp ult ptr %0, %scevgep148
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check149 = icmp ult i64 %2, 16
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.mc = and i64 %2, 15
  %i.md = getelementptr i8, ptr %0, i64 %n.vec
  %i.me = shl nuw i64 %n.vec, 1
  %i.mf = getelementptr i8, ptr %1, i64 %i.me
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.mg = shl i64 %index, 1
  %next.gep150 = getelementptr i8, ptr %1, i64 %i.mg ; 2 uses
  %i.mh = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep150, align 2, !alias.scope !67
  %wide.load151 = load <8 x i16>, ptr %i.mh, align 2, !alias.scope !67
  %i.mi = trunc <8 x i16> %wide.load to <8 x i8>
  %i.mj = trunc <8 x i16> %wide.load151 to <8 x i8>
  %i.mk = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.mi, ptr %next.gep, align 1, !alias.scope !70, !noalias !67
  store <8 x i8> %i.mj, ptr %i.mk, align 1, !alias.scope !70, !noalias !67
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ml = icmp eq i64 %index.next, %n.vec
  br i1 %i.ml, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec155 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mm = and i64 %2, 3
  %i.mn = getelementptr i8, ptr %0, i64 %n.vec155
  %i.mo = shl nuw i64 %n.vec155, 1
  %i.mp = getelementptr i8, ptr %1, i64 %i.mo
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %next.gep157 = getelementptr i8, ptr %0, i64 %index156
  %i.mq = shl i64 %index156, 1
  %next.gep158 = getelementptr i8, ptr %1, i64 %i.mq
  %wide.load159 = load <4 x i16>, ptr %next.gep158, align 2, !alias.scope !67
  %i.mr = trunc <4 x i16> %wide.load159 to <4 x i8>
  store <4 x i8> %i.mr, ptr %next.gep157, align 1, !alias.scope !70, !noalias !67
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.ms, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %2, %n.vec155
  br i1 %cmp.n161, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.mc, %vec.epilog.iter.check ], [ %i.mm, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.md, %vec.epilog.iter.check ], [ %i.mn, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mf, %vec.epilog.iter.check ], [ %i.mp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.mx, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.mt = load i16, ptr %.0910.i.i.i.i.i.i.i115, align 2
  %i.mu = trunc i16 %i.mt to i8
  store i8 %i.mu, ptr %.0811.i.i.i.i.i.i.i114, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 2
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 1
  %i.mx = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.my = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.my, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, !llvm.loop !77

_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.b
  ret void

.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec:           ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %11 = load <8 x i16>, ptr %1, align 2
  %12 = trunc <8 x i16> %11 to <8 x i8>
  store <8 x i8> %12, ptr %0, align 1
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load <4 x i16>, ptr %13, align 2
  %16 = trunc <4 x i16> %15 to <4 x i8>
  store <4 x i8> %16, ptr %14, align 1
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %19 = load i16, ptr %17, align 2
  %20 = trunc i16 %19 to i8
  store i8 %20, ptr %18, align 1
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %23 = load i16, ptr %21, align 2
  %24 = trunc i16 %23 to i8
  store i8 %24, ptr %22, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar:        ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %25 = load i16, ptr %1, align 2
  %26 = trunc i16 %25 to i8
  store i8 %26, ptr %0, align 1
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %29 = load i16, ptr %27, align 2
  %30 = trunc i16 %29 to i8
  store i8 %30, ptr %28, align 1
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %33 = load i16, ptr %31, align 2
  %34 = trunc i16 %33 to i8
  store i8 %34, ptr %32, align 1
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %37 = load i16, ptr %35, align 2
  %38 = trunc i16 %37 to i8
  store i8 %38, ptr %36, align 1
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %41 = load i16, ptr %39, align 2
  %42 = trunc i16 %41 to i8
  store i8 %42, ptr %40, align 1
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %45 = load i16, ptr %43, align 2
  %46 = trunc i16 %45 to i8
  store i8 %46, ptr %44, align 1
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %49 = load i16, ptr %47, align 2
  %50 = trunc i16 %49 to i8
  store i8 %50, ptr %48, align 1
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %53 = load i16, ptr %51, align 2
  %54 = trunc i16 %53 to i8
  store i8 %54, ptr %52, align 1
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %57 = load i16, ptr %55, align 2
  %58 = trunc i16 %57 to i8
  store i8 %58, ptr %56, align 1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %61 = load i16, ptr %59, align 2
  %62 = trunc i16 %61 to i8
  store i8 %62, ptr %60, align 1
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %65 = load i16, ptr %63, align 2
  %66 = trunc i16 %65 to i8
  store i8 %66, ptr %64, align 1
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 22
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %69 = load i16, ptr %67, align 2
  %70 = trunc i16 %69 to i8
  store i8 %70, ptr %68, align 1
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %73 = load i16, ptr %71, align 2
  %74 = trunc i16 %73 to i8
  store i8 %74, ptr %72, align 1
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %77 = load i16, ptr %75, align 2
  %78 = trunc i16 %77 to i8
  store i8 %78, ptr %76, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %79 = load <8 x i16>, ptr %1, align 2
  %80 = trunc <8 x i16> %79 to <8 x i8>
  store <8 x i8> %80, ptr %0, align 1
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %83 = load <4 x i16>, ptr %81, align 2
  %84 = trunc <4 x i16> %83 to <4 x i8>
  store <4 x i8> %84, ptr %82, align 1
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %87 = load i16, ptr %85, align 2
  %88 = trunc i16 %87 to i8
  store i8 %88, ptr %86, align 1
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %91 = load i16, ptr %89, align 2
  %92 = trunc i16 %91 to i8
  store i8 %92, ptr %90, align 1
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %95 = load i16, ptr %93, align 2
  %96 = trunc i16 %95 to i8
  store i8 %96, ptr %94, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %97 = load i16, ptr %1, align 2
  %98 = trunc i16 %97 to i8
  store i8 %98, ptr %0, align 1
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %101 = load i16, ptr %99, align 2
  %102 = trunc i16 %101 to i8
  store i8 %102, ptr %100, align 1
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %105 = load i16, ptr %103, align 2
  %106 = trunc i16 %105 to i8
  store i8 %106, ptr %104, align 1
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %109 = load i16, ptr %107, align 2
  %110 = trunc i16 %109 to i8
  store i8 %110, ptr %108, align 1
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %113 = load i16, ptr %111, align 2
  %114 = trunc i16 %113 to i8
  store i8 %114, ptr %112, align 1
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %117 = load i16, ptr %115, align 2
  %118 = trunc i16 %117 to i8
  store i8 %118, ptr %116, align 1
  %119 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %121 = load i16, ptr %119, align 2
  %122 = trunc i16 %121 to i8
  store i8 %122, ptr %120, align 1
  %123 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %125 = load i16, ptr %123, align 2
  %126 = trunc i16 %125 to i8
  store i8 %126, ptr %124, align 1
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %129 = load i16, ptr %127, align 2
  %130 = trunc i16 %129 to i8
  store i8 %130, ptr %128, align 1
  %131 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %133 = load i16, ptr %131, align 2
  %134 = trunc i16 %133 to i8
  store i8 %134, ptr %132, align 1
  %135 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %137 = load i16, ptr %135, align 2
  %138 = trunc i16 %137 to i8
  store i8 %138, ptr %136, align 1
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 22
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %141 = load i16, ptr %139, align 2
  %142 = trunc i16 %141 to i8
  store i8 %142, ptr %140, align 1
  %143 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %145 = load i16, ptr %143, align 2
  %146 = trunc i16 %145 to i8
  store i8 %146, ptr %144, align 1
  %147 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %149 = load i16, ptr %147, align 2
  %150 = trunc i16 %149 to i8
  store i8 %150, ptr %148, align 1
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %153 = load i16, ptr %151, align 2
  %154 = trunc i16 %153 to i8
  store i8 %154, ptr %152, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader
  %155 = load <16 x i16>, ptr %1, align 2
  %156 = trunc <16 x i16> %155 to <16 x i8>
  store <16 x i8> %156, ptr %0, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader
  %157 = load i16, ptr %1, align 2
  %158 = trunc i16 %157 to i8
  store i8 %158, ptr %0, align 1
  %159 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %161 = load i16, ptr %159, align 2
  %162 = trunc i16 %161 to i8
  store i8 %162, ptr %160, align 1
  %163 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %165 = load i16, ptr %163, align 2
  %166 = trunc i16 %165 to i8
  store i8 %166, ptr %164, align 1
  %167 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %169 = load i16, ptr %167, align 2
  %170 = trunc i16 %169 to i8
  store i8 %170, ptr %168, align 1
  %171 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %173 = load i16, ptr %171, align 2
  %174 = trunc i16 %173 to i8
  store i8 %174, ptr %172, align 1
  %175 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %177 = load i16, ptr %175, align 2
  %178 = trunc i16 %177 to i8
  store i8 %178, ptr %176, align 1
  %179 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %181 = load i16, ptr %179, align 2
  %182 = trunc i16 %181 to i8
  store i8 %182, ptr %180, align 1
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %185 = load i16, ptr %183, align 2
  %186 = trunc i16 %185 to i8
  store i8 %186, ptr %184, align 1
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %189 = load i16, ptr %187, align 2
  %190 = trunc i16 %189 to i8
  store i8 %190, ptr %188, align 1
  %191 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %193 = load i16, ptr %191, align 2
  %194 = trunc i16 %193 to i8
  store i8 %194, ptr %192, align 1
  %195 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %197 = load i16, ptr %195, align 2
  %198 = trunc i16 %197 to i8
  store i8 %198, ptr %196, align 1
  %199 = getelementptr inbounds nuw i8, ptr %1, i64 22
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %201 = load i16, ptr %199, align 2
  %202 = trunc i16 %201 to i8
  store i8 %202, ptr %200, align 1
  %203 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %205 = load i16, ptr %203, align 2
  %206 = trunc i16 %205 to i8
  store i8 %206, ptr %204, align 1
  %207 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %209 = load i16, ptr %207, align 2
  %210 = trunc i16 %209 to i8
  store i8 %210, ptr %208, align 1
  %211 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %213 = load i16, ptr %211, align 2
  %214 = trunc i16 %213 to i8
  store i8 %214, ptr %212, align 1
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 30
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %217 = load i16, ptr %215, align 2
  %218 = trunc i16 %217 to i8
  store i8 %218, ptr %216, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE36AllocateRawTwoByteInternalizedStringEij(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EEPNS0_12LocalIsolateE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef %3) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i8 0, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit, label %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i

_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !11, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit, label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i

_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i: ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1952
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 58696 ; 2 uses
  store ptr %i.g, ptr %4, align 8
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #20
  store i8 1, ptr %i.a, align 8
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit: ; preds = %bb.a, %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i
  %i.h = ptrtoint ptr %0 to i64
  %i.i = or disjoint i64 %i.h, 1
  %.idx.i.i9 = shl nuw nsw i64 %2, 1              ; 2 uses
  %i.j = icmp eq i64 %2, 0                        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit
  %.sroa.090.0 = phi i64 [ %i.i, %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit ], [ %i.cg, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 2 uses
  %.0 = phi i32 [ 0, %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit ], [ %.1, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 7 uses
  %i.k = add i64 %.sroa.090.0, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 9 uses
  %i.m = load atomic volatile i64, ptr %i.l acquire, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = and i16 %i.p, 15
  switch i16 %i.q, label %bb.o [
    i16 8, label %bb.c
    i16 0, label %bb.d
    i16 9, label %bb.e
    i16 1, label %bb.e
    i16 10, label %bb.f
    i16 2, label %bb.j
    i16 11, label %bb.n
    i16 3, label %bb.n
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = sext i32 %.0 to i64
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.t, ptr %1, i64 %2)
  %i.u = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = sext i32 %.0 to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i9
  br i1 %i.j, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01013.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %1, %bb.d ] ; 2 uses
  %i.z = load i16, ptr %.01013.i.i, align 2
  %i.aa = load i8, ptr %.01112.i.i, align 1
  %i.ab = zext i8 %i.aa to i16
  %.not.i.i5 = icmp eq i16 %i.z, %i.ab            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1
  %.not16.i.i = icmp ult ptr %i.ac, %i.y
  %or.cond = select i1 %.not.i.i5, i1 %.not16.i.i, i1 false
  br i1 %or.cond, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, !llvm.loop !58

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.ae = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.090.0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.f:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = inttoptr i64 %i.ag to ptr               ; 6 uses
  %i.ai = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i16, ptr %i.ak monotonic, align 2
  %i.am = and i16 %i.al, 16
  %.not.i = icmp eq i16 %i.am, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.ah, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #20, !inline_history !59
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.at = load ptr, ptr %i.ah, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #20, !inline_history !59
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.as, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = sext i32 %.0 to i64
  %i.ay = getelementptr inbounds i8, ptr %.0.i, i64 %i.ax
  %bcmp.i.i6 = tail call i32 @bcmp(ptr %i.ay, ptr %1, i64 %2)
  %i.az = icmp eq i32 %bcmp.i.i6, 0
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.j:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = inttoptr i64 %i.bb to ptr               ; 6 uses
  %i.bd = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.be = add i64 %i.bd, 11
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i16, ptr %i.bf monotonic, align 2
  %i.bh = and i16 %i.bg, 16
  %.not.i7 = icmp eq i16 %i.bh, 0
  br i1 %.not.i7, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bc, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #20, !inline_history !60
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bo = load ptr, ptr %i.bc, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #20, !inline_history !60
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.l, %bb.m
  %.0.i8 = phi ptr [ %i.bn, %bb.l ], [ %i.br, %bb.m ]
  %i.bs = sext i32 %.0 to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %.0.i8, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i.i9
  br i1 %i.j, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %.lr.ph.i.i10
  %.01013.i.i11 = phi ptr [ %i.by, %.lr.ph.i.i10 ], [ %i.bt, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i12 = phi ptr [ %i.bz, %.lr.ph.i.i10 ], [ %1, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.bv = load i16, ptr %.01013.i.i11, align 2
  %i.bw = load i8, ptr %.01112.i.i12, align 1
  %i.bx = zext i8 %i.bw to i16
  %.not.i.i13 = icmp eq i16 %i.bv, %i.bx          ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01013.i.i11, i64 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01112.i.i12, i64 1
  %.not16.i.i15 = icmp ult ptr %i.by, %i.bu
  %or.cond154 = select i1 %.not.i.i13, i1 %.not16.i.i15, i1 false
  br i1 %or.cond154, label %.lr.ph.i.i10, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, !llvm.loop !58

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = lshr i64 %i.cb, 32
  %i.cd = trunc nuw i64 %i.cc to i32
  %i.ce = add nsw i32 %.0, %i.cd
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.o:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.b, %bb.b, %bb.n
  %.1 = phi i32 [ %i.ce, %bb.n ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cg = load i64, ptr %i.cf, align 8
  br label %bb.b
end_hunk_1
