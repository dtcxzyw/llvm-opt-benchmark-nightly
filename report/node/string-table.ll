Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/string-table?download=true
inline.NumInlined: 2071
inline.NumDeleted: 650
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %.01112.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %i.y = load i8, ptr %.01112.i.i, align 1
  %i.z = load i16, ptr %.01013.i.i, align 2
  %i.aa = zext i8 %i.y to i16
  %.not.i.i = icmp eq i16 %i.z, %i.aa
  br i1 %.not.i.i, label %bb.d, label %.thread133

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2
  %.not16.i.i = icmp ult ptr %i.ab, %i.x
  br i1 %.not16.i.i, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !9

.split:                                           ; preds = %bb.b, %bb.b
  %i.ad = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.0118.0, ptr %.sroa.038.0141, i64 %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.ad, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = inttoptr i64 %i.af to ptr               ; 6 uses
  %i.ah = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  %i.al = and i16 %i.ak, 16
  %.not.i = icmp eq i16 %i.al, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #20, !inline_history !7
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.as = load ptr, ptr %i.ag, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #20, !inline_history !7
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.ar, %bb.g ], [ %i.av, %bb.h ]
  %i.aw = sext i32 %.0 to i64
  %i.ax = getelementptr inbounds i8, ptr %.0.i, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.speculated
  br i1 %i.m, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.i
  %.01013.i.i20 = phi ptr [ %i.bd, %bb.i ], [ %.sroa.038.0141, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i21 = phi ptr [ %i.bc, %bb.i ], [ %i.ax, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %i.az = load i8, ptr %.01112.i.i21, align 1
  %i.ba = load i16, ptr %.01013.i.i20, align 2
  %i.bb = zext i8 %i.az to i16
  %.not.i.i22 = icmp eq i16 %i.ba, %i.bb
  br i1 %.not.i.i22, label %bb.i, label %.thread133

bb.i:                                             ; preds = %.lr.ph.i.i19
  %i.bc = getelementptr inbounds nuw i8, ptr %.01112.i.i21, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01013.i.i20, i64 2
  %.not16.i.i24 = icmp ult ptr %i.bc, %i.ay
  br i1 %.not16.i.i24, label %.lr.ph.i.i19, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !9

bb.j:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 6 uses
  %i.bh = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.bi = add i64 %i.bh, 11
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i16, ptr %i.bj monotonic, align 2
  %i.bl = and i16 %i.bk, 16
  %.not.i26 = icmp eq i16 %i.bl, 0
  br i1 %.not.i26, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #20, !inline_history !8
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bs = load ptr, ptr %i.bg, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #20, !inline_history !8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.l, %bb.m
  %.0.i27 = phi ptr [ %i.br, %bb.l ], [ %i.bv, %bb.m ]
  %i.bw = sext i32 %.0 to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %.0.i27, i64 %i.bw
  %bcmp.i.i28 = call i32 @bcmp(ptr %i.bx, ptr %.sroa.038.0141, i64 %i.l)
  %i.by = icmp eq i32 %bcmp.i.i28, 0
  br i1 %i.by, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = add nsw i32 %.0, %i.cc
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.o:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.b, %bb.b, %bb.n
  %.1 = phi i32 [ %i.cd, %bb.n ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ch = sext i32 %.0 to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.ch
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.ci, ptr %.sroa.038.0141, i64 %i.l)
  %i.cj = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cj, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.i, %bb.d, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.c, %.split, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.sroa.038.0141, i64 %.sroa.speculated
  %i.cl = sub i64 %.sroa.6.0140, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %.thread133, label %bb.p

bb.p:                                             ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread
  store i32 0, ptr %i.a, align 4
  %i.cm = load i32, ptr %i.d, align 8
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.thread133, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit32

_ZN2v88internal18ConsStringIterator4NextEPi.exit32: ; preds = %bb.p
  %i.co = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.thread133, label %.lr.ph, !llvm.loop !67

.thread133:                                       ; preds = %bb.p, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %.split, %.lr.ph.i.i19, %.lr.ph.i.i, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ false, %.lr.ph.i.i19 ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit ], [ false, %.lr.ph.i.i ], [ true, %bb.p ], [ false, %.split ], [ false, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ]
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
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 6 uses
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i
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
  %i.c = add i64 %i.b, 32
  %i.d = add i64 %i.a, 16
  %rt.bound0167 = icmp ugt i64 %i.c, %i.a
  %rt.bound1168 = icmp ugt i64 %i.d, %i.b
  %rt.conflict169 = and i1 %rt.bound0167, %rt.bound1168
  br i1 %rt.conflict169, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, !prof !74

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %i.e = add i64 %i.b, 30
  %i.f = add i64 %i.a, 15
  %rt.bound0163 = icmp ugt i64 %i.e, %i.a
  %rt.bound1164 = icmp ugt i64 %i.f, %i.b
  %rt.conflict165 = and i1 %rt.bound0163, %rt.bound1164
  br i1 %rt.conflict165, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, !prof !74

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %i.g = add i64 %i.b, 28
  %i.h = add i64 %i.a, 14
  %rt.bound0 = icmp ugt i64 %i.g, %i.a
  %rt.bound1 = icmp ugt i64 %i.h, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, !prof !74

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.i = load i16, ptr %1, align 2
  %i.j = trunc i16 %i.i to i8
  store i8 %i.j, ptr %0, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i16, ptr %i.k, align 2
  %i.n = trunc i16 %i.m to i8
  store i8 %i.n, ptr %i.l, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.q = load i16, ptr %i.o, align 2
  %i.r = trunc i16 %i.q to i8
  store i8 %i.r, ptr %i.p, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.u = load i16, ptr %i.s, align 2
  %i.v = trunc i16 %i.u to i8
  store i8 %i.v, ptr %i.t, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i16, ptr %i.w, align 2
  %i.z = trunc i16 %i.y to i8
  store i8 %i.z, ptr %i.x, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ac = load i16, ptr %i.aa, align 2
  %i.ad = trunc i16 %i.ac to i8
  store i8 %i.ad, ptr %i.ab, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ag = load i16, ptr %i.ae, align 2
  %i.ah = trunc i16 %i.ag to i8
  store i8 %i.ah, ptr %i.af, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ak = load i16, ptr %i.ai, align 2
  %i.al = trunc i16 %i.ak to i8
  store i8 %i.al, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i16, ptr %i.am, align 2
  %i.ap = trunc i16 %i.ao to i8
  store i8 %i.ap, ptr %i.an, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.as = load i16, ptr %i.aq, align 2
  %i.at = trunc i16 %i.as to i8
  store i8 %i.at, ptr %i.ar, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aw = load i16, ptr %i.au, align 2
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.av, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ba = load i16, ptr %i.ay, align 2
  %i.bb = trunc i16 %i.ba to i8
  store i8 %i.bb, ptr %i.az, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.be = load i16, ptr %i.bc, align 2
  %i.bf = trunc i16 %i.be to i8
  store i8 %i.bf, ptr %i.bd, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.bg = load i16, ptr %1, align 2
  %i.bh = trunc i16 %i.bg to i8
  store i8 %i.bh, ptr %0, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bk = load i16, ptr %i.bi, align 2
  %i.bl = trunc i16 %i.bk to i8
  store i8 %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bo = load i16, ptr %i.bm, align 2
  %i.bp = trunc i16 %i.bo to i8
  store i8 %i.bp, ptr %i.bn, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bs = load i16, ptr %i.bq, align 2
  %i.bt = trunc i16 %i.bs to i8
  store i8 %i.bt, ptr %i.br, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bw = load i16, ptr %i.bu, align 2
  %i.bx = trunc i16 %i.bw to i8
  store i8 %i.bx, ptr %i.bv, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ca = load i16, ptr %i.by, align 2
  %i.cb = trunc i16 %i.ca to i8
  store i8 %i.cb, ptr %i.bz, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ce = load i16, ptr %i.cc, align 2
  %i.cf = trunc i16 %i.ce to i8
  store i8 %i.cf, ptr %i.cd, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ci = load i16, ptr %i.cg, align 2
  %i.cj = trunc i16 %i.ci to i8
  store i8 %i.cj, ptr %i.ch, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load i16, ptr %i.ck, align 2
  %i.cn = trunc i16 %i.cm to i8
  store i8 %i.cn, ptr %i.cl, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cq = load i16, ptr %i.co, align 2
  %i.cr = trunc i16 %i.cq to i8
  store i8 %i.cr, ptr %i.cp, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cu = load i16, ptr %i.cs, align 2
  %i.cv = trunc i16 %i.cu to i8
  store i8 %i.cv, ptr %i.ct, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cy = load i16, ptr %i.cw, align 2
  %i.cz = trunc i16 %i.cy to i8
  store i8 %i.cz, ptr %i.cx, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.da = load i16, ptr %1, align 2
  %i.db = trunc i16 %i.da to i8
  store i8 %i.db, ptr %0, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.de = load i16, ptr %i.dc, align 2
  %i.df = trunc i16 %i.de to i8
  store i8 %i.df, ptr %i.dd, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.di = load i16, ptr %i.dg, align 2
  %i.dj = trunc i16 %i.di to i8
  store i8 %i.dj, ptr %i.dh, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.dm = load i16, ptr %i.dk, align 2
  %i.dn = trunc i16 %i.dm to i8
  store i8 %i.dn, ptr %i.dl, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dq = load i16, ptr %i.do, align 2
  %i.dr = trunc i16 %i.dq to i8
  store i8 %i.dr, ptr %i.dp, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.du = load i16, ptr %i.ds, align 2
  %i.dv = trunc i16 %i.du to i8
  store i8 %i.dv, ptr %i.dt, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dy = load i16, ptr %i.dw, align 2
  %i.dz = trunc i16 %i.dy to i8
  store i8 %i.dz, ptr %i.dx, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ec = load i16, ptr %i.ea, align 2
  %i.ed = trunc i16 %i.ec to i8
  store i8 %i.ed, ptr %i.eb, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load i16, ptr %i.ee, align 2
  %i.eh = trunc i16 %i.eg to i8
  store i8 %i.eh, ptr %i.ef, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ek = load i16, ptr %i.ei, align 2
  %i.el = trunc i16 %i.ek to i8
  store i8 %i.el, ptr %i.ej, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.eo = load i16, ptr %i.em, align 2
  %i.ep = trunc i16 %i.eo to i8
  store i8 %i.ep, ptr %i.en, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.eq = load i16, ptr %1, align 2
  %i.er = trunc i16 %i.eq to i8
  store i8 %i.er, ptr %0, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.eu = load i16, ptr %i.es, align 2
  %i.ev = trunc i16 %i.eu to i8
  store i8 %i.ev, ptr %i.et, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ey = load i16, ptr %i.ew, align 2
  %i.ez = trunc i16 %i.ey to i8
  store i8 %i.ez, ptr %i.ex, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 3
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIthEEvPT0_PKT_m:bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ie = load i16, ptr %i.ic, align 2
  %i.if = trunc i16 %i.ie to i8
  store i8 %i.if, ptr %i.id, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ii = load i16, ptr %i.ig, align 2
  %i.ij = trunc i16 %i.ii to i8
  store i8 %i.ij, ptr %i.ih, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.im = load i16, ptr %i.ik, align 2
  %i.in = trunc i16 %i.im to i8
  store i8 %i.in, ptr %i.il, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i62.preheader:                 ; preds = %bb.a
  %i.io = load i16, ptr %1, align 2
  %i.ip = trunc i16 %i.io to i8
  store i8 %i.ip, ptr %0, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.is = load i16, ptr %i.iq, align 2
  %i.it = trunc i16 %i.is to i8
  store i8 %i.it, ptr %i.ir, align 1
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.iw = load i16, ptr %i.iu, align 2
  %i.ix = trunc i16 %i.iw to i8
  store i8 %i.ix, ptr %i.iv, align 1
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ja = load i16, ptr %i.iy, align 2
  %i.jb = trunc i16 %i.ja to i8
  store i8 %i.jb, ptr %i.iz, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.je = load i16, ptr %i.jc, align 2
  %i.jf = trunc i16 %i.je to i8
  store i8 %i.jf, ptr %i.jd, align 1
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ji = load i16, ptr %i.jg, align 2
  %i.jj = trunc i16 %i.ji to i8
  store i8 %i.jj, ptr %i.jh, align 1
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.jm = load i16, ptr %i.jk, align 2
  %i.jn = trunc i16 %i.jm to i8
  store i8 %i.jn, ptr %i.jl, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i57.preheader:                 ; preds = %bb.a
  %i.jo = load i16, ptr %1, align 2
  %i.jp = trunc i16 %i.jo to i8
  store i8 %i.jp, ptr %0, align 1
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.js = load i16, ptr %i.jq, align 2
  %i.jt = trunc i16 %i.js to i8
  store i8 %i.jt, ptr %i.jr, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.jw = load i16, ptr %i.ju, align 2
  %i.jx = trunc i16 %i.jw to i8
  store i8 %i.jx, ptr %i.jv, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ka = load i16, ptr %i.jy, align 2
  %i.kb = trunc i16 %i.ka to i8
  store i8 %i.kb, ptr %i.jz, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ke = load i16, ptr %i.kc, align 2
  %i.kf = trunc i16 %i.ke to i8
  store i8 %i.kf, ptr %i.kd, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ki = load i16, ptr %i.kg, align 2
  %i.kj = trunc i16 %i.ki to i8
  store i8 %i.kj, ptr %i.kh, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kk = load i16, ptr %1, align 2
  %i.kl = trunc i16 %i.kk to i8
  store i8 %i.kl, ptr %0, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ko = load i16, ptr %i.km, align 2
  %i.kp = trunc i16 %i.ko to i8
  store i8 %i.kp, ptr %i.kn, align 1
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ks = load i16, ptr %i.kq, align 2
  %i.kt = trunc i16 %i.ks to i8
  store i8 %i.kt, ptr %i.kr, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.kw = load i16, ptr %i.ku, align 2
  %i.kx = trunc i16 %i.kw to i8
  store i8 %i.kx, ptr %i.kv, align 1
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.la = load i16, ptr %i.ky, align 2
  %i.lb = trunc i16 %i.la to i8
  store i8 %i.lb, ptr %i.kz, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.lc = load i16, ptr %1, align 2
  %i.ld = trunc i16 %i.lc to i8
  store i8 %i.ld, ptr %0, align 1
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.lg = load i16, ptr %i.le, align 2
  %i.lh = trunc i16 %i.lg to i8
  store i8 %i.lh, ptr %i.lf, align 1
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lk = load i16, ptr %i.li, align 2
  %i.ll = trunc i16 %i.lk to i8
  store i8 %i.ll, ptr %i.lj, align 1
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.lo = load i16, ptr %i.lm, align 2
  %i.lp = trunc i16 %i.lo to i8
  store i8 %i.lp, ptr %i.ln, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.lq = load i16, ptr %1, align 2
  %i.lr = trunc i16 %i.lq to i8
  store i8 %i.lr, ptr %0, align 1
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.lu = load i16, ptr %i.ls, align 2
  %i.lv = trunc i16 %i.lu to i8
  store i8 %i.lv, ptr %i.lt, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ly = load i16, ptr %i.lw, align 2
  %i.lz = trunc i16 %i.ly to i8
  store i8 %i.lz, ptr %i.lx, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ma = load i16, ptr %1, align 2
  %i.mb = trunc i16 %i.ma to i8
  store i8 %i.mb, ptr %0, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.me = load i16, ptr %i.mc, align 2
  %i.mf = trunc i16 %i.me to i8
  store i8 %i.mf, ptr %i.md, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.mg = load i16, ptr %1, align 2
  %i.mh = trunc i16 %i.mg to i8
  store i8 %i.mh, ptr %0, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.mi = icmp sgt i64 %2, 0
  br i1 %i.mi, label %iter.check, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %2
  %i.mj = shl nuw i64 %2, 1
  %scevgep147 = getelementptr i8, ptr %1, i64 %i.mj
  %bound0 = icmp ult ptr %0, %scevgep147
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check148 = icmp ult i64 %2, 16
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mk = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.ml = and i64 %2, 15
  %i.mm = getelementptr i8, ptr %0, i64 %n.vec
  %i.mn = shl nuw i64 %n.vec, 1
  %i.mo = getelementptr i8, ptr %1, i64 %i.mn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.mp = shl i64 %index, 1
  %next.gep149 = getelementptr i8, ptr %1, i64 %i.mp ; 2 uses
  %i.mq = getelementptr i8, ptr %next.gep149, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep149, align 2, !alias.scope !75
  %wide.load150 = load <8 x i16>, ptr %i.mq, align 2, !alias.scope !75
  %i.mr = trunc <8 x i16> %wide.load to <8 x i8>
  %i.ms = trunc <8 x i16> %wide.load150 to <8 x i8>
  %i.mt = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.mr, ptr %next.gep, align 1, !alias.scope !76, !noalias !75
  store <8 x i8> %i.ms, ptr %i.mt, align 1, !alias.scope !76, !noalias !75
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !79

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mv = and i64 %2, 3
  %i.mw = getelementptr i8, ptr %0, i64 %n.vec153
  %i.mx = shl nuw i64 %n.vec153, 1
  %i.my = getelementptr i8, ptr %1, i64 %i.mx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 3 uses
  %next.gep155 = getelementptr i8, ptr %0, i64 %index154
  %i.mz = shl i64 %index154, 1
  %next.gep156 = getelementptr i8, ptr %1, i64 %i.mz
  %wide.load157 = load <4 x i16>, ptr %next.gep156, align 2, !alias.scope !75
  %i.na = trunc <4 x i16> %wide.load157 to <4 x i8>
  store <4 x i8> %i.na, ptr %next.gep155, align 1, !alias.scope !76, !noalias !75
  %index.next158 = add nuw i64 %index154, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.nb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %2, %n.vec153
  br i1 %cmp.n159, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.ml, %vec.epilog.iter.check ], [ %i.mv, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.mm, %vec.epilog.iter.check ], [ %i.mw, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mo, %vec.epilog.iter.check ], [ %i.my, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.ng, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.nc = load i16, ptr %.0910.i.i.i.i.i.i.i115, align 2
  %i.nd = trunc i16 %i.nc to i8
  store i8 %i.nd, ptr %.0811.i.i.i.i.i.i.i114, align 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 2
  %i.nf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 1
  %i.ng = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.nh = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.nh, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, !llvm.loop !73

_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  ret void

.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec:           ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.ni = load <8 x i16>, ptr %1, align 2
  %i.nj = trunc <8 x i16> %i.ni to <8 x i8>
  store <8 x i8> %i.nj, ptr %0, align 1
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nm = load <4 x i16>, ptr %i.nk, align 2
  %i.nn = trunc <4 x i16> %i.nm to <4 x i8>
  store <4 x i8> %i.nn, ptr %i.nl, align 1
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.nq = load i16, ptr %i.no, align 2
  %i.nr = trunc i16 %i.nq to i8
  store i8 %i.nr, ptr %i.np, align 1
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.nu = load i16, ptr %i.ns, align 2
  %i.nv = trunc i16 %i.nu to i8
  store i8 %i.nv, ptr %i.nt, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar:        ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.nw = load i16, ptr %1, align 2
  %i.nx = trunc i16 %i.nw to i8
  store i8 %i.nx, ptr %0, align 1
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.oa = load i16, ptr %i.ny, align 2
  %i.ob = trunc i16 %i.oa to i8
  store i8 %i.ob, ptr %i.nz, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.oe = load i16, ptr %i.oc, align 2
  %i.of = trunc i16 %i.oe to i8
  store i8 %i.of, ptr %i.od, align 1
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.oi = load i16, ptr %i.og, align 2
  %i.oj = trunc i16 %i.oi to i8
  store i8 %i.oj, ptr %i.oh, align 1
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.om = load i16, ptr %i.ok, align 2
  %i.on = trunc i16 %i.om to i8
  store i8 %i.on, ptr %i.ol, align 1
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.oq = load i16, ptr %i.oo, align 2
  %i.or = trunc i16 %i.oq to i8
  store i8 %i.or, ptr %i.op, align 1
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ou = load i16, ptr %i.os, align 2
  %i.ov = trunc i16 %i.ou to i8
  store i8 %i.ov, ptr %i.ot, align 1
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.oy = load i16, ptr %i.ow, align 2
  %i.oz = trunc i16 %i.oy to i8
  store i8 %i.oz, ptr %i.ox, align 1
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pc = load i16, ptr %i.pa, align 2
  %i.pd = trunc i16 %i.pc to i8
  store i8 %i.pd, ptr %i.pb, align 1
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.pg = load i16, ptr %i.pe, align 2
  %i.ph = trunc i16 %i.pg to i8
  store i8 %i.ph, ptr %i.pf, align 1
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.pk = load i16, ptr %i.pi, align 2
  %i.pl = trunc i16 %i.pk to i8
  store i8 %i.pl, ptr %i.pj, align 1
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.po = load i16, ptr %i.pm, align 2
  %i.pp = trunc i16 %i.po to i8
  store i8 %i.pp, ptr %i.pn, align 1
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ps = load i16, ptr %i.pq, align 2
  %i.pt = trunc i16 %i.ps to i8
  store i8 %i.pt, ptr %i.pr, align 1
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.pw = load i16, ptr %i.pu, align 2
  %i.px = trunc i16 %i.pw to i8
  store i8 %i.px, ptr %i.pv, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.py = load <8 x i16>, ptr %1, align 2
  %i.pz = trunc <8 x i16> %i.py to <8 x i8>
  store <8 x i8> %i.pz, ptr %0, align 1
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qc = load <4 x i16>, ptr %i.qa, align 2
  %i.qd = trunc <4 x i16> %i.qc to <4 x i8>
  store <4 x i8> %i.qd, ptr %i.qb, align 1
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.qg = load i16, ptr %i.qe, align 2
  %i.qh = trunc i16 %i.qg to i8
  store i8 %i.qh, ptr %i.qf, align 1
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.qk = load i16, ptr %i.qi, align 2
  %i.ql = trunc i16 %i.qk to i8
  store i8 %i.ql, ptr %i.qj, align 1
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.qo = load i16, ptr %i.qm, align 2
  %i.qp = trunc i16 %i.qo to i8
  store i8 %i.qp, ptr %i.qn, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.qq = load i16, ptr %1, align 2
  %i.qr = trunc i16 %i.qq to i8
  store i8 %i.qr, ptr %0, align 1
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.qu = load i16, ptr %i.qs, align 2
  %i.qv = trunc i16 %i.qu to i8
  store i8 %i.qv, ptr %i.qt, align 1
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.qy = load i16, ptr %i.qw, align 2
  %i.qz = trunc i16 %i.qy to i8
  store i8 %i.qz, ptr %i.qx, align 1
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.rc = load i16, ptr %i.ra, align 2
  %i.rd = trunc i16 %i.rc to i8
  store i8 %i.rd, ptr %i.rb, align 1
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.rg = load i16, ptr %i.re, align 2
  %i.rh = trunc i16 %i.rg to i8
  store i8 %i.rh, ptr %i.rf, align 1
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.rk = load i16, ptr %i.ri, align 2
  %i.rl = trunc i16 %i.rk to i8
  store i8 %i.rl, ptr %i.rj, align 1
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ro = load i16, ptr %i.rm, align 2
  %i.rp = trunc i16 %i.ro to i8
  store i8 %i.rp, ptr %i.rn, align 1
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.rs = load i16, ptr %i.rq, align 2
  %i.rt = trunc i16 %i.rs to i8
  store i8 %i.rt, ptr %i.rr, align 1
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rw = load i16, ptr %i.ru, align 2
  %i.rx = trunc i16 %i.rw to i8
  store i8 %i.rx, ptr %i.rv, align 1
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.sa = load i16, ptr %i.ry, align 2
  %i.sb = trunc i16 %i.sa to i8
  store i8 %i.sb, ptr %i.rz, align 1
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.se = load i16, ptr %i.sc, align 2
end_hunk_1
begin_hunk_2_@_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EEPNS0_12LocalIsolateE:bb.a
  %i.af = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.089.0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.f:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = inttoptr i64 %i.ah to ptr               ; 6 uses
  %i.aj = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = and i16 %i.am, 16
  %.not.i = icmp eq i16 %i.an, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #20, !inline_history !7
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #20
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.au = load ptr, ptr %i.ai, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #20, !inline_history !7
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.at, %bb.h ], [ %i.ax, %bb.i ]
  %i.ay = sext i32 %.0 to i64
  %i.az = getelementptr inbounds i8, ptr %.0.i, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %2
  br i1 %i.k, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %.lr.ph.i.i6
  %.01013.i.i7 = phi ptr [ %i.bf, %.lr.ph.i.i6 ], [ %1, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i8 = phi ptr [ %i.be, %.lr.ph.i.i6 ], [ %i.az, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %i.bb = load i8, ptr %.01112.i.i8, align 1
  %i.bc = load i16, ptr %.01013.i.i7, align 2
  %i.bd = zext i8 %i.bb to i16
  %.not.i.i9 = icmp eq i16 %i.bc, %i.bd           ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01112.i.i8, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01013.i.i7, i64 2
  %.not16.i.i11 = icmp ult ptr %i.be, %i.ba
  %or.cond153 = select i1 %.not.i.i9, i1 %.not16.i.i11, i1 false
  br i1 %or.cond153, label %.lr.ph.i.i6, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, !llvm.loop !9

bb.j:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = inttoptr i64 %i.bh to ptr               ; 6 uses
  %i.bj = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.bk = add i64 %i.bj, 11
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i16, ptr %i.bl monotonic, align 2
  %i.bn = and i16 %i.bm, 16
  %.not.i13 = icmp eq i16 %i.bn, 0
  br i1 %.not.i13, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.bi, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #20, !inline_history !8
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bu = load ptr, ptr %i.bi, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #20, !inline_history !8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.l, %bb.m
  %.0.i14 = phi ptr [ %i.bt, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = sext i32 %.0 to i64
  %i.bz = getelementptr inbounds [2 x i8], ptr %.0.i14, i64 %i.by
  %bcmp.i.i15 = tail call i32 @bcmp(ptr %i.bz, ptr %1, i64 %i.j)
  %i.ca = icmp eq i32 %bcmp.i.i15, 0
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = lshr i64 %i.cc, 32
  %i.ce = trunc nuw i64 %i.cd to i32
  %i.cf = add nsw i32 %.0, %i.ce
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.o:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.b, %bb.b, %bb.n
  %.1 = phi i32 [ %i.cf, %bb.n ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ch = load i64, ptr %i.cg, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %.lr.ph.i.i6, %.lr.ph.i.i, %bb.d, %bb.e, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.c
  %.sroa.047.0.ph = phi i1 [ true, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ], [ %.not.i.i5, %.lr.ph.i.i ], [ %i.af, %bb.e ], [ %i.ae, %bb.d ], [ true, %bb.c ], [ %i.ca, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.not.i.i9, %.lr.ph.i.i6 ]
  %i.ci = load i8, ptr %i.a, align 8, !range !19, !noundef !20
  %i.cj = trunc nuw i8 %i.ci to i1
  store i8 0, ptr %i.a, align 8
  br i1 %i.cj, label %bb.p, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.p:                                             ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ck = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #20
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i1 %.sroa.047.0.ph
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE39NewOneByteInternalizedStringFromTwoByteENS_4base6VectorIKtEEj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i32 noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE28NewTwoByteInternalizedStringENS_4base6VectorIKtEEj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal23StringTableInsertionKey7IsMatchINS0_7IsolateEEEbPT_NS0_6TaggedINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal23StringTableInsertionKey7IsMatchINS0_12LocalIsolateEEEbPT_NS0_6TaggedINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

declare void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jjRKNS0_31SharedStringAccessGuardIfNeededE(i64, ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringIhEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.thread129, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 17
  br i1 %i.a, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = add nsw i64 %i.c, -48                    ; 5 uses
  %i.e = icmp ugt i64 %i.d, 9
  br i1 %i.e, label %.thread129, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not141 = icmp eq i32 %1, 1
  br i1 %.not141, label %._crit_edge.thread, label %.thread129

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ugt i32 %1, 10
  br i1 %i.g, label %.lr.ph156, label %.preheader142

.preheader142:                                    ; preds = %bb.f
  %.not159 = icmp eq i32 %1, 1
  br i1 %.not159, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader142
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.092151 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.o, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ugt i32 %i.k, 9
  br i1 %i.l, label %.thread129, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.m = mul i64 %.092151, 10
  %i.n = zext nneg i32 %i.k to i64
  %i.o = add i64 %i.m, %i.n                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.g
  %i.p = icmp ugt i64 %i.o, 4294967294
  br i1 %i.p, label %._crit_edge157, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader142, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.o, %._crit_edge ], [ 0, %bb.e ], [ %i.d, %.preheader142 ]
  %i.q = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load i32, ptr %i.v, align 8
  %i.x = lshr i32 %i.q, 12
  %i.y = xor i32 %i.x, %i.q
  %i.z = mul i32 %i.y, %i.s                       ; 2 uses
  %i.aa = lshr i32 %i.z, 12
  %i.ab = and i32 %i.aa, 4095
  %i.ac = xor i32 %i.ab, %i.z
  %i.ad = mul i32 %i.ac, %i.u                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.w
  %i.ai = and i32 %i.ah, 16777215                 ; 2 uses
  %i.aj = lshr i32 %i.ai, 12
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = shl nuw nsw i32 %i.ak, 2
  %i.am = shl nuw nsw i32 %1, 26
  %i.an = or disjoint i32 %i.al, %i.am
  br label %bb.u

.lr.ph156:                                        ; preds = %bb.f, %bb.h
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.011.i155 = phi i64 [ %i.av, %bb.h ], [ %i.d, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv169
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.h, label %.thread129

bb.h:                                             ; preds = %.lr.ph156
  %i.at = mul i64 %.011.i155, 10
  %i.au = zext nneg i32 %i.ar to i64
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next170 to i32
  %exitcond172.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond172.not, label %._crit_edge157, label %.lr.ph156, !llvm.loop !81

._crit_edge157:                                   ; preds = %bb.h, %._crit_edge
  %.011.i.lcssa = phi i64 [ %i.o, %._crit_edge ], [ %i.av, %bb.h ]
  %i.aw = icmp ugt i64 %.011.i.lcssa, 9007199254740991
  br i1 %i.aw, label %.thread129, label %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge157
  %i.ax = load i64, ptr %2, align 8               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = zext nneg i32 %1 to i64                 ; 7 uses
  %i.ba = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.bb = xor i64 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = zext i64 %i.bb to i128
  %i.bf = zext i64 %i.bd to i128                  ; 2 uses
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64
  %i.bk = xor i64 %i.az, %i.bj
  %i.bl = xor i64 %i.bk, %i.ax                    ; 2 uses
  %i.bm = icmp ugt i32 %1, 3
  br i1 %i.bm, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.bn = getelementptr i8, ptr %0, i64 %i.az
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 1
  %i.bp = zext i32 %.0.copyload.i to i64
  %i.bq = shl nuw i64 %i.bp, 32
  %.0.copyload.i38 = load i32, ptr %i.bo, align 1
  %i.br = zext i32 %.0.copyload.i38 to i64
  %i.bs = or disjoint i64 %i.bq, %i.br
  %i.bt = and i64 %i.az, 24
  %i.bu = lshr i64 %i.az, 3
  %i.bv = lshr exact i64 %i.bt, %i.bu             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %.0.copyload.i39 = load i32, ptr %i.bw, align 1
  %i.bx = zext i32 %.0.copyload.i39 to i64
  %i.by = shl nuw i64 %i.bx, 32
  %i.bz = sub nsw i64 0, %i.bv
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz
  %.0.copyload.i40 = load i32, ptr %i.ca, align 1
  %i.cb = zext i32 %.0.copyload.i40 to i64
  %i.cc = or disjoint i64 %i.by, %i.cb
  %i.cd = xor i64 %i.cc, %i.bl
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.ce = shl nuw nsw i64 %i.c, 56
  %i.cf = lshr i64 %i.az, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 32
  %i.ck = or disjoint i64 %i.cj, %i.ce
  %i.cl = getelementptr i8, ptr %0, i64 %i.az
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37:  ; preds = %bb.i, %bb.j
  %.0102 = phi i64 [ %i.cd, %bb.i ], [ %i.bl, %bb.j ]
  %.0101 = phi i64 [ %i.bs, %bb.i ], [ %i.cp, %bb.j ]
  %i.cq = xor i64 %.0101, %i.bd
  %i.cr = zext i64 %i.cq to i128
  %i.cs = zext i64 %.0102 to i128
  %i.ct = mul nuw i128 %i.cr, %i.cs               ; 2 uses
  %i.cu = trunc i128 %i.ct to i64
  %i.cv = lshr i128 %i.ct, 64
  %i.cw = xor i64 %i.az, %i.cu
  %i.cx = xor i64 %i.cw, %i.ba
  %i.cy = zext i64 %i.cx to i128
  %i.cz = xor i128 %i.cv, %i.bf
  %i.da = mul nuw i128 %i.cz, %i.cy               ; 2 uses
  %i.db = lshr i128 %i.da, 64
  %i.dc = xor i128 %i.db, %i.da
  %i.dd = trunc i128 %i.dc to i32
  %i.de = and i32 %i.dd, 1073741823               ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = shl nuw i32 %i.de, 2
  %i.dh = select i1 %i.df, i32 108, i32 %i.dg     ; 3 uses
  %i.di = icmp ult i32 %i.dh, 536870912
  %i.dj = or i32 %i.dh, 536870912
  %spec.select = select i1 %i.di, i32 %i.dj, i32 %i.dh
  br label %bb.u

bb.k:                                             ; preds = %bb.b
  %i.dk = icmp ugt i32 %1, 16383
  br i1 %i.dk, label %bb.l, label %.thread129

bb.l:                                             ; preds = %bb.k
  %i.dl = shl i32 %1, 2
  %i.dm = or disjoint i32 %i.dl, 2
  br label %bb.u

.thread129:                                       ; preds = %.lr.ph, %.lr.ph156, %._crit_edge157, %bb.e, %bb.c, %bb.k, %bb.a
  %i.dn = load i64, ptr %2, align 8               ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dp = zext i32 %1 to i64                      ; 9 uses
  %i.dq = load i64, ptr %i.do, align 8            ; 3 uses
  %i.dr = xor i64 %i.dq, %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = load i64, ptr %i.ds, align 8            ; 4 uses
  %i.du = zext i64 %i.dr to i128
  %i.dv = zext i64 %i.dt to i128                  ; 2 uses
  %i.dw = mul nuw i128 %i.dv, %i.du               ; 2 uses
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = xor i128 %i.dx, %i.dw
  %i.dz = trunc i128 %i.dy to i64
  %i.ea = xor i64 %i.dp, %i.dz
  %i.eb = xor i64 %i.ea, %i.dn                    ; 7 uses
  %i.ec = icmp ult i32 %1, 17
  br i1 %i.ec, label %bb.m, label %bb.q, !prof !16

bb.m:                                             ; preds = %.thread129
  %i.ed = icmp samesign ugt i32 %1, 3
  br i1 %i.ed, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.ee = getelementptr i8, ptr %0, i64 %i.dp
  %i.ef = getelementptr i8, ptr %i.ee, i64 -4     ; 2 uses
  %.0.copyload.i53 = load i32, ptr %0, align 1
  %i.eg = zext i32 %.0.copyload.i53 to i64
  %i.eh = shl nuw i64 %i.eg, 32
  %.0.copyload.i54 = load i32, ptr %i.ef, align 1
  %i.ei = zext i32 %.0.copyload.i54 to i64
  %i.ej = or disjoint i64 %i.eh, %i.ei
  %i.ek = and i64 %i.dp, 24
  %i.el = lshr i64 %i.dp, 3
  %i.em = lshr exact i64 %i.ek, %i.el             ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  %.0.copyload.i55 = load i32, ptr %i.en, align 1
  %i.eo = zext i32 %.0.copyload.i55 to i64
  %i.ep = shl nuw i64 %i.eo, 32
  %i.eq = sub nsw i64 0, %i.em
  %i.er = getelementptr inbounds i8, ptr %i.ef, i64 %i.eq
  %.0.copyload.i56 = load i32, ptr %i.er, align 1
  %i.es = zext i32 %.0.copyload.i56 to i64
  %i.et = or disjoint i64 %i.ep, %i.es
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.o:                                             ; preds = %bb.m
  br i1 %.not, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, label %bb.p, !prof !18

bb.p:                                             ; preds = %bb.o
  %i.eu = load i8, ptr %0, align 1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw i64 %i.ev, 56
  %i.ex = lshr i64 %i.dp, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 32
  %i.fc = or disjoint i64 %i.fb, %i.ew
  %i.fd = getelementptr i8, ptr %0, i64 %i.dp
  %i.fe = getelementptr i8, ptr %i.fd, i64 -1
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = zext i8 %i.ff to i64
  %i.fh = or disjoint i64 %i.fc, %i.fg
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.q:                                             ; preds = %.thread129
  %i.fi = icmp ugt i32 %1, 48
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fk = load i64, ptr %i.fj, align 8            ; 3 uses
  br i1 %i.fi, label %.preheader, label %.thread132, !prof !18

.preheader:                                       ; preds = %bb.q, %.preheader
  %.065.i = phi i64 [ %i.ft, %.preheader ], [ %i.eb, %bb.q ]
  %.063.i = phi ptr [ %i.go, %.preheader ], [ %0, %bb.q ] ; 7 uses
  %.062.i = phi i64 [ %i.gp, %.preheader ], [ %i.dp, %bb.q ]
  %.061.i = phi i64 [ %i.gd, %.preheader ], [ %i.eb, %bb.q ]
  %.0.i = phi i64 [ %i.gn, %.preheader ], [ %i.eb, %bb.q ]
  %.0.copyload.i57 = load i64, ptr %.063.i, align 1
  %i.fl = xor i64 %.0.copyload.i57, %i.dq
  %i.fm = getelementptr inbounds nuw i8, ptr %.063.i, i64 8
  %.0.copyload.i58 = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %.0.copyload.i58, %.065.i
  %i.fo = zext i64 %i.fl to i128
  %i.fp = zext i64 %i.fn to i128
  %i.fq = mul nuw i128 %i.fp, %i.fo               ; 2 uses
  %i.fr = lshr i128 %i.fq, 64
  %i.fs = xor i128 %i.fr, %i.fq
  %i.ft = trunc i128 %i.fs to i64                 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %.0.copyload.i59 = load i64, ptr %i.fu, align 1
  %i.fv = xor i64 %.0.copyload.i59, %i.dt
  %i.fw = getelementptr inbounds nuw i8, ptr %.063.i, i64 24
  %.0.copyload.i60 = load i64, ptr %i.fw, align 1
  %i.fx = xor i64 %.0.copyload.i60, %.061.i
  %i.fy = zext i64 %i.fv to i128
  %i.fz = zext i64 %i.fx to i128
  %i.ga = mul nuw i128 %i.fz, %i.fy               ; 2 uses
  %i.gb = lshr i128 %i.ga, 64
  %i.gc = xor i128 %i.gb, %i.ga
  %i.gd = trunc i128 %i.gc to i64                 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %.0.copyload.i61 = load i64, ptr %i.ge, align 1
  %i.gf = xor i64 %i.fk, %.0.copyload.i61
  %i.gg = getelementptr inbounds nuw i8, ptr %.063.i, i64 40
  %.0.copyload.i62 = load i64, ptr %i.gg, align 1
  %i.gh = xor i64 %.0.copyload.i62, %.0.i
  %i.gi = zext i64 %i.gf to i128
  %i.gj = zext i64 %i.gh to i128
  %i.gk = mul nuw i128 %i.gj, %i.gi               ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = xor i128 %i.gl, %i.gk
  %i.gn = trunc i128 %i.gm to i64                 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.063.i, i64 48 ; 3 uses
  %i.gp = add i64 %.062.i, -48                    ; 5 uses
  %i.gq = icmp ugt i64 %i.gp, 47
  br i1 %i.gq, label %.preheader, label %bb.r, !prof !16, !llvm.loop !10

bb.r:                                             ; preds = %.preheader
  %i.gr = xor i64 %i.gd, %i.ft
  %i.gs = xor i64 %i.gr, %i.gn                    ; 2 uses
  %i.gt = icmp samesign ugt i64 %i.gp, 16
  br i1 %i.gt, label %.thread132, label %bb.t

.thread132:                                       ; preds = %bb.q, %bb.r
  %.1.i24140 = phi i64 [ %i.gp, %bb.r ], [ %i.dp, %bb.q ] ; 3 uses
  %.164.i138 = phi ptr [ %i.go, %bb.r ], [ %0, %bb.q ] ; 6 uses
  %.166.i136 = phi i64 [ %i.gs, %bb.r ], [ %i.eb, %bb.q ]
  %.0.copyload.i63 = load i64, ptr %.164.i138, align 1
  %i.gu = xor i64 %i.fk, %.0.copyload.i63
  %i.gv = getelementptr inbounds nuw i8, ptr %.164.i138, i64 8
  %.0.copyload.i64 = load i64, ptr %i.gv, align 1
  %i.gw = xor i64 %.166.i136, %.0.copyload.i64
  %i.gx = xor i64 %i.gw, %i.dt
  %i.gy = zext i64 %i.gu to i128
  %i.gz = zext i64 %i.gx to i128
  %i.ha = mul nuw i128 %i.gz, %i.gy               ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = xor i128 %i.hb, %i.ha
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = icmp samesign ugt i64 %.1.i24140, 32
  br i1 %i.he, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread132
  %i.hf = getelementptr inbounds nuw i8, ptr %.164.i138, i64 16
  %.0.copyload.i65 = load i64, ptr %i.hf, align 1
  %i.hg = xor i64 %.0.copyload.i65, %i.fk
  %i.hh = getelementptr inbounds nuw i8, ptr %.164.i138, i64 24
  %.0.copyload.i66 = load i64, ptr %i.hh, align 1
  %i.hi = xor i64 %.0.copyload.i66, %i.hd
  %i.hj = zext i64 %i.hg to i128
  %i.hk = zext i64 %i.hi to i128
  %i.hl = mul nuw i128 %i.hk, %i.hj               ; 2 uses
  %i.hm = lshr i128 %i.hl, 64
  %i.hn = xor i128 %i.hm, %i.hl
  %i.ho = trunc i128 %i.hn to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread132, %bb.r
  %.1.i24139 = phi i64 [ %.1.i24140, %bb.s ], [ %.1.i24140, %.thread132 ], [ %i.gp, %bb.r ]
  %.164.i137 = phi ptr [ %.164.i138, %bb.s ], [ %.164.i138, %.thread132 ], [ %i.go, %bb.r ]
  %.2.i25 = phi i64 [ %i.ho, %bb.s ], [ %i.hd, %.thread132 ], [ %i.gs, %bb.r ]
  %i.hp = getelementptr i8, ptr %.164.i137, i64 %.1.i24139 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 -16
  %.0.copyload.i67 = load i64, ptr %i.hq, align 1
  %i.hr = getelementptr i8, ptr %i.hp, i64 -8
  %.0.copyload.i68 = load i64, ptr %i.hr, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit:    ; preds = %bb.o, %bb.n, %bb.p, %bb.t
  %.0104 = phi i64 [ %i.et, %bb.n ], [ %.0.copyload.i68, %bb.t ], [ 0, %bb.p ], [ 0, %bb.o ]
  %.0103 = phi i64 [ %i.ej, %bb.n ], [ %.0.copyload.i67, %bb.t ], [ %i.fh, %bb.p ], [ 0, %bb.o ]
  %.3.i = phi i64 [ %i.eb, %bb.n ], [ %.2.i25, %bb.t ], [ %i.eb, %bb.p ], [ %i.eb, %bb.o ]
  %i.hs = xor i64 %.0103, %i.dt
  %i.ht = xor i64 %.3.i, %.0104
  %i.hu = zext i64 %i.hs to i128
  %i.hv = zext i64 %i.ht to i128
  %i.hw = mul nuw i128 %i.hv, %i.hu               ; 2 uses
  %i.hx = trunc i128 %i.hw to i64
  %i.hy = lshr i128 %i.hw, 64
  %i.hz = xor i64 %i.dp, %i.hx
  %i.ia = xor i64 %i.hz, %i.dq
  %i.ib = zext i64 %i.ia to i128
  %i.ic = xor i128 %i.hy, %i.dv
  %i.id = mul nuw i128 %i.ic, %i.ib               ; 2 uses
  %i.ie = lshr i128 %i.id, 64
  %i.if = xor i128 %i.ie, %i.id
  %i.ig = trunc i128 %i.if to i32
  %i.ih = and i32 %i.ig, 1073741823               ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  %i.ij = shl nuw i32 %i.ih, 2
  %i.ik = or disjoint i32 %i.ij, 2
  %i.il = select i1 %i.ii, i32 110, i32 %i.ik
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, %bb.l
  %.1 = phi i32 [ %i.il, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit ], [ %i.dm, %bb.l ], [ %spec.select, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit37 ], [ %i.an, %._crit_edge.thread ]
  ret i32 %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

declare void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jjRKNS0_31SharedStringAccessGuardIfNeededE(i64, ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread133.thread206, label %bb.b

.thread133.thread206:                             ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %._crit_edge168

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %1, 17
  br i1 %i.c, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %0, align 2                ; 3 uses
  %i.e = zext i16 %i.d to i64
  %i.f = add nsw i64 %i.e, -48                    ; 5 uses
  %i.g = icmp ugt i64 %i.f, 9
  %i.h = lshr i16 %i.d, 8
  %i.i = zext nneg i16 %i.h to i64
  br i1 %i.g, label %.lr.ph167.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not147 = icmp eq i32 %1, 1
  br i1 %.not147, label %._crit_edge.thread, label %.lr.ph167.preheader

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 10
  br i1 %i.k, label %.lr.ph162, label %.preheader148

.preheader148:                                    ; preds = %bb.f
  %.not169 = icmp eq i32 %1, 1
  br i1 %.not169, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader148
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.096157 = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.s, %bb.g ]
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ugt i32 %i.o, 9
  br i1 %i.p, label %.lr.ph167.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.q = mul i64 %.096157, 10
  %i.r = zext nneg i32 %i.o to i64
  %i.s = add i64 %i.q, %i.r                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.g
  %i.t = icmp ugt i64 %i.s, 4294967294
  br i1 %i.t, label %._crit_edge163, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader148, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.s, %._crit_edge ], [ 0, %bb.e ], [ %i.f, %.preheader148 ]
  %i.u = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = lshr i32 %i.u, 12
  %i.ac = xor i32 %i.ab, %i.u
  %i.ad = mul i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.y                     ; 2 uses
  %i.ai = lshr i32 %i.ah, 12
  %i.aj = and i32 %i.ai, 4095
  %i.ak = xor i32 %i.aj, %i.ah
  %i.al = mul i32 %i.ak, %i.aa
  %i.am = and i32 %i.al, 16777215                 ; 2 uses
  %i.an = lshr i32 %i.am, 12
  %i.ao = xor i32 %i.an, %i.am
  %i.ap = shl nuw nsw i32 %i.ao, 2
  %i.aq = shl nuw nsw i32 %1, 26
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %bb.z

.lr.ph162:                                        ; preds = %bb.f, %bb.h
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.011.i161 = phi i64 [ %i.az, %bb.h ], [ %i.f, %bb.f ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv180
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.h, label %.lr.ph167.preheader

bb.h:                                             ; preds = %.lr.ph162
  %i.ax = mul i64 %.011.i161, 10
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond183.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond183.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !83

._crit_edge163:                                   ; preds = %bb.h, %._crit_edge
  %.011.i.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %i.az, %bb.h ]
  %i.ba = icmp ugt i64 %.011.i.lcssa, 9007199254740991
  br i1 %i.ba, label %.lr.ph167.preheader, label %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge163
  %i.bb = load i64, ptr %2, align 8               ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count187 = zext nneg i32 %1 to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %bb.k, label %bb.j, !llvm.loop !84

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit, %bb.i
  %indvars.iv184 = phi i64 [ 0, %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit ], [ %indvars.iv.next185, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv184
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = icmp ugt i16 %i.be, 255
  br i1 %i.bf, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.bg = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bb, ptr noundef nonnull %i.bc) #20
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41:   ; preds = %bb.j
  %i.bh = shl nuw nsw i32 %1, 1
  %i.bi = zext nneg i32 %i.bh to i64              ; 7 uses
  %i.bj = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.bk = xor i64 %i.bj, %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = zext i64 %i.bk to i128
  %i.bo = zext i64 %i.bm to i128                  ; 2 uses
  %i.bp = mul nuw i128 %i.bo, %i.bn               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  %i.bt = xor i64 %i.bi, %i.bs
  %i.bu = xor i64 %i.bt, %i.bb                    ; 3 uses
  %i.bv = icmp ult i32 %1, 9
  br i1 %i.bv, label %bb.l, label %.thread, !prof !16

bb.l:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.not146 = icmp eq i32 %1, 1
  br i1 %.not146, label %bb.n, label %bb.m, !prof !18

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 2
  %i.by = zext i32 %.0.copyload.i to i64
  %i.bz = shl nuw i64 %i.by, 32
  %.0.copyload.i42 = load i32, ptr %i.bx, align 1
  %i.ca = zext i32 %.0.copyload.i42 to i64
  %i.cb = or disjoint i64 %i.bz, %i.ca
  %i.cc = and i64 %i.bi, 24
  %i.cd = lshr i64 %i.bi, 3
  %i.ce = lshr exact i64 %i.cc, %i.cd             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.0.copyload.i43 = load i32, ptr %i.cf, align 1
  %i.cg = zext i32 %.0.copyload.i43 to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = sub nsw i64 0, %i.ce
  %i.cj = getelementptr inbounds i8, ptr %i.bx, i64 %i.ci
  %.0.copyload.i44 = load i32, ptr %i.cj, align 1
  %i.ck = zext i32 %.0.copyload.i44 to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cm = and i16 %i.d, 255
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 56
  %i.cp = shl nuw nsw i64 %i.i, 32
  %i.cq = or disjoint i64 %i.cp, %i.co
  %i.cr = getelementptr i8, ptr %0, i64 %i.bi
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cq, %i.cu
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

.thread:                                          ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.0.copyload.i51 = load i64, ptr %0, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = xor i64 %i.cx, %.0.copyload.i51
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i52 = load i64, ptr %i.cz, align 2
  %i.da = xor i64 %i.bm, %.0.copyload.i52
  %i.db = xor i64 %i.da, %i.bu
  %i.dc = zext i64 %i.cy to i128
  %i.dd = zext i64 %i.db to i128
  %i.de = mul nuw i128 %i.dd, %i.dc               ; 2 uses
  %i.df = lshr i128 %i.de, 64
  %i.dg = xor i128 %i.df, %i.de
  %i.dh = trunc i128 %i.dg to i64
  %i.di = getelementptr i8, ptr %0, i64 %i.bi     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -16
  %.0.copyload.i55 = load i64, ptr %i.dj, align 1
  %i.dk = getelementptr i8, ptr %i.di, i64 -8
  %.0.copyload.i56 = load i64, ptr %i.dk, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i:  ; preds = %.thread, %bb.n, %bb.m
  %.0108 = phi i64 [ %i.cl, %bb.m ], [ %.0.copyload.i56, %.thread ], [ 0, %bb.n ]
  %.0107 = phi i64 [ %i.cb, %bb.m ], [ %.0.copyload.i55, %.thread ], [ %i.cv, %bb.n ]
  %.3.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.dh, %.thread ], [ %i.bu, %bb.n ]
  %i.dl = xor i64 %.0107, %i.bm
  %i.dm = xor i64 %.3.i.i, %.0108
  %i.dn = zext i64 %i.dl to i128
  %i.do = zext i64 %i.dm to i128
  %i.dp = mul nuw i128 %i.do, %i.dn               ; 2 uses
  %i.dq = trunc i128 %i.dp to i64
  %i.dr = lshr i128 %i.dp, 64
  %i.ds = xor i64 %i.bi, %i.dq
  %i.dt = xor i64 %i.ds, %i.bj
  %i.du = zext i64 %i.dt to i128
  %i.dv = xor i128 %i.dr, %i.bo
  %i.dw = mul nuw i128 %i.dv, %i.du               ; 2 uses
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = xor i128 %i.dx, %i.dw
  %i.dz = trunc i128 %i.dy to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit: ; preds = %bb.k, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i
  %.0.i = phi i64 [ %i.bg, %bb.k ], [ %i.dz, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i ]
  %i.ea = trunc i64 %.0.i to i32
  %i.eb = and i32 %i.ea, 1073741823               ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  %i.ed = shl nuw i32 %i.eb, 2
  %i.ee = select i1 %i.ec, i32 108, i32 %i.ed     ; 3 uses
  %i.ef = icmp ult i32 %i.ee, 536870912
  %i.eg = or i32 %i.ee, 536870912
  %spec.select = select i1 %i.ef, i32 %i.eg, i32 %i.ee
  br label %bb.z

bb.o:                                             ; preds = %bb.b
  %i.eh = icmp ugt i32 %1, 16383
  br i1 %i.eh, label %bb.p, label %.lr.ph167.preheader

bb.p:                                             ; preds = %bb.o
  %i.ei = shl i32 %1, 2
  %i.ej = or disjoint i32 %i.ei, 2
  br label %bb.z

.lr.ph167.preheader:                              ; preds = %.lr.ph, %.lr.ph162, %._crit_edge163, %bb.o, %bb.c, %bb.e
  %i.ek = load i64, ptr %2, align 8               ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count192 = zext i32 %1 to i64
  br label %.lr.ph167

bb.q:                                             ; preds = %.lr.ph167
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge168, label %.lr.ph167, !llvm.loop !84

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.q
  %indvars.iv189 = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next190, %bb.q ] ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv189
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = icmp ugt i16 %i.en, 255
  br i1 %i.eo, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit, label %bb.q

._crit_edge168:                                   ; preds = %bb.q, %.thread133.thread206
  %i.ep = phi ptr [ %i.b, %.thread133.thread206 ], [ %i.el, %bb.q ]
  %i.eq = phi i64 [ %i.a, %.thread133.thread206 ], [ %i.ek, %bb.q ]
  %i.er = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef %0, i32 noundef %1, i64 noundef %i.eq, ptr noundef nonnull %i.ep) #20
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit:     ; preds = %.lr.ph167
  %i.es = shl i32 %1, 1                           ; 5 uses
  %i.et = zext i32 %i.es to i64                   ; 9 uses
  %i.eu = load i64, ptr %i.el, align 8            ; 3 uses
  %i.ev = xor i64 %i.eu, %i.ek
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load i64, ptr %i.ew, align 8            ; 4 uses
  %i.ey = zext i64 %i.ev to i128
  %i.ez = zext i64 %i.ex to i128                  ; 2 uses
  %i.fa = mul nuw i128 %i.ez, %i.ey               ; 2 uses
  %i.fb = lshr i128 %i.fa, 64
  %i.fc = xor i128 %i.fb, %i.fa
  %i.fd = trunc i128 %i.fc to i64
  %i.fe = xor i64 %i.et, %i.fd
  %i.ff = xor i64 %i.fe, %i.ek                    ; 7 uses
  %i.fg = icmp ult i32 %i.es, 17
  br i1 %i.fg, label %bb.r, label %bb.v, !prof !16

bb.r:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.fh = icmp samesign ugt i32 %i.es, 3
  br i1 %i.fh, label %bb.s, label %bb.t, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.fi = getelementptr i8, ptr %0, i64 %i.et
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4     ; 2 uses
  %.0.copyload.i57 = load i32, ptr %0, align 1
  %i.fk = zext i32 %.0.copyload.i57 to i64
  %i.fl = shl nuw i64 %i.fk, 32
  %.0.copyload.i58 = load i32, ptr %i.fj, align 1
  %i.fm = zext i32 %.0.copyload.i58 to i64
  %i.fn = or disjoint i64 %i.fl, %i.fm
  %i.fo = and i64 %i.et, 24
  %i.fp = lshr i64 %i.et, 3
  %i.fq = lshr exact i64 %i.fo, %i.fp             ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 %i.fq
  %.0.copyload.i59 = load i32, ptr %i.fr, align 1
  %i.fs = zext i32 %.0.copyload.i59 to i64
  %i.ft = shl nuw i64 %i.fs, 32
  %i.fu = sub nsw i64 0, %i.fq
  %i.fv = getelementptr inbounds i8, ptr %i.fj, i64 %i.fu
  %.0.copyload.i60 = load i32, ptr %i.fv, align 1
  %i.fw = zext i32 %.0.copyload.i60 to i64
  %i.fx = or disjoint i64 %i.ft, %i.fw
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.t:                                             ; preds = %bb.r
  %.not.i.i36 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i36, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28, label %bb.u, !prof !18

bb.u:                                             ; preds = %bb.t
  %i.fy = load i8, ptr %0, align 1
  %i.fz = zext i8 %i.fy to i64
  %i.ga = shl nuw i64 %i.fz, 56
  %i.gb = lshr exact i64 %i.et, 1
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = zext i8 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 32
  %i.gg = or disjoint i64 %i.gf, %i.ga
  %i.gh = getelementptr i8, ptr %0, i64 %i.et
  %i.gi = getelementptr i8, ptr %i.gh, i64 -1
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = zext i8 %i.gj to i64
  %i.gl = or disjoint i64 %i.gg, %i.gk
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.v:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.gm = icmp ugt i32 %i.es, 48
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.go = load i64, ptr %i.gn, align 8            ; 3 uses
  br i1 %i.gm, label %.preheader, label %.thread137, !prof !18

.preheader:                                       ; preds = %bb.v, %.preheader
  %.065.i.i31 = phi i64 [ %i.gx, %.preheader ], [ %i.ff, %bb.v ]
  %.063.i.i32 = phi ptr [ %i.hs, %.preheader ], [ %0, %bb.v ] ; 7 uses
  %.062.i.i33 = phi i64 [ %i.ht, %.preheader ], [ %i.et, %bb.v ]
  %.061.i.i34 = phi i64 [ %i.hh, %.preheader ], [ %i.ff, %bb.v ]
  %.0.i.i35 = phi i64 [ %i.hr, %.preheader ], [ %i.ff, %bb.v ]
  %.0.copyload.i61 = load i64, ptr %.063.i.i32, align 1
  %i.gp = xor i64 %.0.copyload.i61, %i.eu
  %i.gq = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 8
  %.0.copyload.i62 = load i64, ptr %i.gq, align 1
  %i.gr = xor i64 %.0.copyload.i62, %.065.i.i31
  %i.gs = zext i64 %i.gp to i128
  %i.gt = zext i64 %i.gr to i128
  %i.gu = mul nuw i128 %i.gt, %i.gs               ; 2 uses
  %i.gv = lshr i128 %i.gu, 64
  %i.gw = xor i128 %i.gv, %i.gu
  %i.gx = trunc i128 %i.gw to i64                 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 16
  %.0.copyload.i63 = load i64, ptr %i.gy, align 1
  %i.gz = xor i64 %.0.copyload.i63, %i.ex
  %i.ha = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 24
  %.0.copyload.i64 = load i64, ptr %i.ha, align 1
  %i.hb = xor i64 %.0.copyload.i64, %.061.i.i34
  %i.hc = zext i64 %i.gz to i128
  %i.hd = zext i64 %i.hb to i128
  %i.he = mul nuw i128 %i.hd, %i.hc               ; 2 uses
  %i.hf = lshr i128 %i.he, 64
  %i.hg = xor i128 %i.hf, %i.he
  %i.hh = trunc i128 %i.hg to i64                 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 32
  %.0.copyload.i65 = load i64, ptr %i.hi, align 1
  %i.hj = xor i64 %i.go, %.0.copyload.i65
  %i.hk = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 40
  %.0.copyload.i66 = load i64, ptr %i.hk, align 1
  %i.hl = xor i64 %.0.copyload.i66, %.0.i.i35
  %i.hm = zext i64 %i.hj to i128
  %i.hn = zext i64 %i.hl to i128
  %i.ho = mul nuw i128 %i.hn, %i.hm               ; 2 uses
  %i.hp = lshr i128 %i.ho, 64
  %i.hq = xor i128 %i.hp, %i.ho
  %i.hr = trunc i128 %i.hq to i64                 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 48 ; 3 uses
  %i.ht = add i64 %.062.i.i33, -48                ; 5 uses
  %i.hu = icmp ugt i64 %i.ht, 47
  br i1 %i.hu, label %.preheader, label %bb.w, !prof !16, !llvm.loop !10

bb.w:                                             ; preds = %.preheader
  %i.hv = xor i64 %i.hh, %i.gx
  %i.hw = xor i64 %i.hv, %i.hr                    ; 2 uses
  %i.hx = icmp samesign ugt i64 %i.ht, 16
  br i1 %i.hx, label %.thread137, label %bb.y

.thread137:                                       ; preds = %bb.v, %bb.w
  %.1.i.i26145 = phi i64 [ %i.ht, %bb.w ], [ %i.et, %bb.v ] ; 3 uses
  %.164.i.i25143 = phi ptr [ %i.hs, %bb.w ], [ %0, %bb.v ] ; 6 uses
  %.166.i.i24141 = phi i64 [ %i.hw, %bb.w ], [ %i.ff, %bb.v ]
  %.0.copyload.i67 = load i64, ptr %.164.i.i25143, align 1
  %i.hy = xor i64 %i.go, %.0.copyload.i67
  %i.hz = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 8
  %.0.copyload.i68 = load i64, ptr %i.hz, align 1
  %i.ia = xor i64 %.166.i.i24141, %.0.copyload.i68
  %i.ib = xor i64 %i.ia, %i.ex
  %i.ic = zext i64 %i.hy to i128
  %i.id = zext i64 %i.ib to i128
  %i.ie = mul nuw i128 %i.id, %i.ic               ; 2 uses
  %i.if = lshr i128 %i.ie, 64
  %i.ig = xor i128 %i.if, %i.ie
  %i.ih = trunc i128 %i.ig to i64                 ; 2 uses
  %i.ii = icmp samesign ugt i64 %.1.i.i26145, 32
  br i1 %i.ii, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread137
  %i.ij = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 16
  %.0.copyload.i69 = load i64, ptr %i.ij, align 1
  %i.ik = xor i64 %.0.copyload.i69, %i.go
  %i.il = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 24
  %.0.copyload.i70 = load i64, ptr %i.il, align 1
  %i.im = xor i64 %.0.copyload.i70, %i.ih
  %i.in = zext i64 %i.ik to i128
  %i.io = zext i64 %i.im to i128
  %i.ip = mul nuw i128 %i.io, %i.in               ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = xor i128 %i.iq, %i.ip
  %i.is = trunc i128 %i.ir to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread137, %bb.w
  %.1.i.i26144 = phi i64 [ %.1.i.i26145, %bb.x ], [ %.1.i.i26145, %.thread137 ], [ %i.ht, %bb.w ]
  %.164.i.i25142 = phi ptr [ %.164.i.i25143, %bb.x ], [ %.164.i.i25143, %.thread137 ], [ %i.hs, %bb.w ]
  %.2.i.i27 = phi i64 [ %i.is, %bb.x ], [ %i.ih, %.thread137 ], [ %i.hw, %bb.w ]
  %i.it = getelementptr i8, ptr %.164.i.i25142, i64 %.1.i.i26144 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 -16
  %.0.copyload.i71 = load i64, ptr %i.iu, align 1
  %i.iv = getelementptr i8, ptr %i.it, i64 -8
  %.0.copyload.i72 = load i64, ptr %i.iv, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28: ; preds = %bb.t, %bb.y, %bb.u, %bb.s
  %.0106 = phi i64 [ %i.fx, %bb.s ], [ %.0.copyload.i72, %bb.y ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.0105 = phi i64 [ %i.fn, %bb.s ], [ %.0.copyload.i71, %bb.y ], [ %i.gl, %bb.u ], [ 0, %bb.t ]
  %.3.i.i29 = phi i64 [ %i.ff, %bb.s ], [ %.2.i.i27, %bb.y ], [ %i.ff, %bb.u ], [ %i.ff, %bb.t ]
  %i.iw = xor i64 %.0105, %i.ex
  %i.ix = xor i64 %.3.i.i29, %.0106
  %i.iy = zext i64 %i.iw to i128
  %i.iz = zext i64 %i.ix to i128
  %i.ja = mul nuw i128 %i.iz, %i.iy               ; 2 uses
  %i.jb = trunc i128 %i.ja to i64
  %i.jc = lshr i128 %i.ja, 64
  %i.jd = xor i64 %i.et, %i.jb
  %i.je = xor i64 %i.jd, %i.eu
  %i.jf = zext i64 %i.je to i128
  %i.jg = xor i128 %i.jc, %i.ez
  %i.jh = mul nuw i128 %i.jg, %i.jf               ; 2 uses
  %i.ji = lshr i128 %i.jh, 64
  %i.jj = xor i128 %i.ji, %i.jh
  %i.jk = trunc i128 %i.jj to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37: ; preds = %._crit_edge168, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28
  %.0.i30 = phi i64 [ %i.er, %._crit_edge168 ], [ %i.jk, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28 ]
  %i.jl = trunc i64 %.0.i30 to i32
  %i.jm = and i32 %i.jl, 1073741823               ; 2 uses
  %i.jn = icmp eq i32 %i.jm, 0
  %i.jo = shl nuw i32 %i.jm, 2
  %i.jp = or disjoint i32 %i.jo, 2
  %i.jq = select i1 %i.jn, i32 110, i32 %i.jp
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.thread, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37, %bb.p
  %.1 = phi i32 [ %i.jq, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37 ], [ %i.ej, %bb.p ], [ %spec.select, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit ], [ %i.ar, %._crit_edge.thread ]
  ret i32 %.1
}

declare noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14StringTableKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { builtin nounwind }

!llvm.module.flags = !{!11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{!0, !17}
!1 = distinct !{!1, !17}
!2 = distinct !{!2, !17}
!3 = distinct !{!3, !17}
!4 = distinct !{null, null}
!5 = distinct !{null}
!6 = distinct !{!6, !17}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{!9, !17}
!10 = distinct !{!10, !17}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{i64 17124954}
!22 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{null, null, null, null}
!37 = distinct !{!37, !"_ZN2v88internal11StringTable4Data3NewEi"}
!38 = distinct !{!38, !37, !"_ZN2v88internal11StringTable4Data3NewEi: argument 0"}
!39 = !{!38}
!40 = distinct !{null}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !"_ZSt11make_uniqueIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!44 = distinct !{!44, !43, !"_ZSt11make_uniqueIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!45 = distinct !{null, null}
!46 = !{!44}
!47 = distinct !{!47, !"_ZSt11make_uniqueIA_tENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!48 = distinct !{!48, !47, !"_ZSt11make_uniqueIA_tENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!49 = distinct !{null, null}
!50 = !{!48}
!51 = distinct !{null, null}
!52 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!53 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
!54 = distinct !{!54, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!55 = distinct !{!55, !54, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!56 = distinct !{!56, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!57 = distinct !{!57, !56, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!58 = !{!55}
!59 = !{!57}
!60 = distinct !{!60, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!61 = distinct !{!61, !60, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!62 = !{!61}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!65 = distinct !{!65, !64, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!66 = !{!65}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !"LVerDomain"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !17, !77, !78}
!72 = distinct !{!72, !17, !77, !78}
!73 = distinct !{!73, !17, !77}
!74 = !{!"branch_weights", i32 1, i32 1048575}
!75 = !{!69}
!76 = !{!70}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!"branch_weights", i32 4, i32 12}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
end_hunk_2
