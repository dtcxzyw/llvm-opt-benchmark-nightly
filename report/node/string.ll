inline.NumInlined: 4553
inline.NumDeleted: 1209
begin_hunk_0_@_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
  %i.bt = tail call noundef ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #25, !inline_history !53
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.m, %bb.n
  %.0.i21 = phi ptr [ %i.bp, %bb.m ], [ %i.bt, %bb.n ]
  %i.bu = sext i32 %.0 to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %.0.i21, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i22
  br i1 %i.o, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.o
  %.01013.i.i24 = phi ptr [ %i.ca, %bb.o ], [ %i.bv, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i25 = phi ptr [ %i.cb, %bb.o ], [ %.sroa.039.0141, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.bx = load i16, ptr %.01013.i.i24, align 2
  %i.by = load i8, ptr %.01112.i.i25, align 1
  %i.bz = zext i8 %i.by to i16
  %.not.i.i26 = icmp eq i16 %i.bx, %i.bz
  br i1 %.not.i.i26, label %bb.o, label %.thread134

bb.o:                                             ; preds = %.lr.ph.i.i23
  %i.ca = getelementptr inbounds nuw i8, ptr %.01013.i.i24, i64 2 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01112.i.i25, i64 1
  %.not16.i.i28 = icmp ult ptr %i.ca, %i.bw
  br i1 %.not16.i.i28, label %.lr.ph.i.i23, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !182

bb.p:                                             ; preds = %bb.b, %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = lshr i64 %i.cd, 32
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = add nsw i32 %.0, %i.cf
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.q:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.b, %bb.b, %bb.p
  %.1 = phi i32 [ %i.cg, %bb.p ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ci = load i64, ptr %i.ch, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.j, %bb.i
  %.0.i = phi ptr [ %i.ax, %bb.i ], [ %i.bb, %bb.j ]
  %i.cj = sext i32 %.0 to i64
  %i.ck = getelementptr inbounds i8, ptr %.0.i, i64 %i.cj
  %bcmp.i.i19 = tail call i32 @bcmp(ptr %i.ck, ptr %.sroa.039.0141, i64 %.sroa.speculated)
  %i.cl = icmp eq i32 %bcmp.i.i19, 0
  br i1 %i.cl, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.o, %bb.e, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.d, %bb.f, %bb.c, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.039.0141, i64 %.sroa.speculated
  %i.cn = sub i64 %.sroa.6.0142, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  br i1 %.not, label %.thread134, label %bb.r

bb.r:                                             ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread
  store i32 0, ptr %i.a, align 4
  %i.co = load i32, ptr %i.g, align 8
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %.thread134, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit33

_ZN2v88internal18ConsStringIterator4NextEPi.exit33: ; preds = %bb.r
  %i.cq = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.thread134, label %.lr.ph, !llvm.loop !491

.thread134:                                       ; preds = %bb.r, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.c, %bb.f, %.lr.ph.i.i23, %.lr.ph.i.i, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread ], [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i23 ], [ true, %bb.r ], [ false, %bb.f ], [ false, %bb.c ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i1 %.116
}

declare noundef zeroext i1 @_ZN2v88internal21IsIdentifierStartSlowEj(i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal20IsIdentifierPartSlowEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringIhEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.thread128, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 17
  br i1 %i.a, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = add nsw i64 %i.c, -48                    ; 5 uses
  %i.e = icmp ugt i64 %i.d, 9
  br i1 %i.e, label %.thread128, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not140 = icmp eq i32 %1, 1
  br i1 %.not140, label %._crit_edge.thread, label %.thread128

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ugt i32 %1, 10
  br i1 %i.g, label %.lr.ph155, label %.preheader141

.preheader141:                                    ; preds = %bb.f
  %.not158 = icmp eq i32 %1, 1
  br i1 %.not158, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader141
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.091150 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.o, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ugt i32 %i.k, 9
  br i1 %i.l, label %.thread128, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.m = mul i64 %.091150, 10
  %i.n = zext nneg i32 %i.k to i64
  %i.o = add i64 %i.m, %i.n                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !492

._crit_edge:                                      ; preds = %bb.g
  %i.p = icmp ugt i64 %i.o, 4294967294
  br i1 %i.p, label %._crit_edge156, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader141, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.o, %._crit_edge ], [ 0, %bb.e ], [ %i.d, %.preheader141 ]
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

.lr.ph155:                                        ; preds = %bb.f, %bb.h
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.013.i153 = phi i64 [ %i.av, %bb.h ], [ %i.d, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv168
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.h, label %.thread128

bb.h:                                             ; preds = %.lr.ph155
  %i.at = mul i64 %.013.i153, 10
  %i.au = zext nneg i32 %i.ar to i64
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next169 to i32
  %exitcond171.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond171.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !493

._crit_edge156:                                   ; preds = %bb.h, %._crit_edge
  %.013.i.lcssa = phi i64 [ %i.o, %._crit_edge ], [ %i.av, %bb.h ]
  %i.aw = icmp ugt i64 %.013.i.lcssa, 9007199254740991
  br i1 %i.aw, label %.thread128, label %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge156
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
  br i1 %i.bm, label %bb.i, label %bb.j, !prof !26

bb.i:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.bn = getelementptr i8, ptr %0, i64 %i.az
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 1
  %i.bp = zext i32 %.0.copyload.i to i64
  %i.bq = shl nuw i64 %i.bp, 32
  %.0.copyload.i37 = load i32, ptr %i.bo, align 1
  %i.br = zext i32 %.0.copyload.i37 to i64
  %i.bs = or disjoint i64 %i.bq, %i.br
  %i.bt = and i64 %i.az, 24
  %i.bu = lshr i64 %i.az, 3
  %i.bv = lshr exact i64 %i.bt, %i.bu             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %.0.copyload.i38 = load i32, ptr %i.bw, align 1
  %i.bx = zext i32 %.0.copyload.i38 to i64
  %i.by = shl nuw i64 %i.bx, 32
  %i.bz = sub nsw i64 0, %i.bv
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz
  %.0.copyload.i39 = load i32, ptr %i.ca, align 1
  %i.cb = zext i32 %.0.copyload.i39 to i64
  %i.cc = or disjoint i64 %i.by, %i.cb
  %i.cd = xor i64 %i.cc, %i.bl
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36

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
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36:  ; preds = %bb.i, %bb.j
  %.0101 = phi i64 [ %i.cd, %bb.i ], [ %i.bl, %bb.j ]
  %.0100 = phi i64 [ %i.bs, %bb.i ], [ %i.cp, %bb.j ]
  %i.cq = xor i64 %.0100, %i.bd
  %i.cr = zext i64 %i.cq to i128
  %i.cs = zext i64 %.0101 to i128
  %i.ct = mul nuw i128 %i.cr, %i.cs               ; 2 uses
  %i.cu = trunc i128 %i.ct to i64
  %i.cv = lshr i128 %i.ct, 64
  %i.cw = xor i64 %i.az, %i.cu
  %i.cx = xor i64 %i.cw, %i.ba
  %i.cy = zext i64 %i.cx to i128
  %3 = xor i128 %i.cv, %i.bf
  %i.cz = mul nuw i128 %3, %i.cy                  ; 2 uses
  %i.da = lshr i128 %i.cz, 64
  %i.db = xor i128 %i.da, %i.cz
  %i.dc = trunc i128 %i.db to i32
  %i.dd = and i32 %i.dc, 1073741823               ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = shl nuw i32 %i.dd, 2
  %i.dg = select i1 %i.de, i32 108, i32 %i.df     ; 3 uses
  %i.dh = icmp ult i32 %i.dg, 536870912
  %i.di = or i32 %i.dg, 536870912
  %spec.select = select i1 %i.dh, i32 %i.di, i32 %i.dg
  br label %bb.u

bb.k:                                             ; preds = %bb.b
  %i.dj = icmp ugt i32 %1, 16383
  br i1 %i.dj, label %bb.l, label %.thread128

bb.l:                                             ; preds = %bb.k
  %i.dk = shl i32 %1, 2
  %i.dl = or disjoint i32 %i.dk, 2
  br label %bb.u

.thread128:                                       ; preds = %.lr.ph, %.lr.ph155, %._crit_edge156, %bb.e, %bb.c, %bb.k, %bb.a
  %i.dm = load i64, ptr %2, align 8               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.do = zext i32 %1 to i64                      ; 9 uses
  %i.dp = load i64, ptr %i.dn, align 8            ; 3 uses
  %i.dq = xor i64 %i.dp, %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = load i64, ptr %i.dr, align 8            ; 4 uses
  %i.dt = zext i64 %i.dq to i128
  %i.du = zext i64 %i.ds to i128                  ; 2 uses
  %i.dv = mul nuw i128 %i.du, %i.dt               ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = xor i128 %i.dw, %i.dv
  %i.dy = trunc i128 %i.dx to i64
  %i.dz = xor i64 %i.do, %i.dy
  %i.ea = xor i64 %i.dz, %i.dm                    ; 7 uses
  %i.eb = icmp ult i32 %1, 17
  br i1 %i.eb, label %bb.m, label %bb.q, !prof !26

bb.m:                                             ; preds = %.thread128
  %i.ec = icmp samesign ugt i32 %1, 3
  br i1 %i.ec, label %bb.n, label %bb.o, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.ed = getelementptr i8, ptr %0, i64 %i.do
  %i.ee = getelementptr i8, ptr %i.ed, i64 -4     ; 2 uses
  %.0.copyload.i52 = load i32, ptr %0, align 1
  %i.ef = zext i32 %.0.copyload.i52 to i64
  %i.eg = shl nuw i64 %i.ef, 32
  %.0.copyload.i53 = load i32, ptr %i.ee, align 1
  %i.eh = zext i32 %.0.copyload.i53 to i64
  %i.ei = or disjoint i64 %i.eg, %i.eh
  %i.ej = and i64 %i.do, 24
  %i.ek = lshr i64 %i.do, 3
  %i.el = lshr exact i64 %i.ej, %i.ek             ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.el
  %.0.copyload.i54 = load i32, ptr %i.em, align 1
  %i.en = zext i32 %.0.copyload.i54 to i64
  %i.eo = shl nuw i64 %i.en, 32
  %i.ep = sub nsw i64 0, %i.el
  %i.eq = getelementptr inbounds i8, ptr %i.ee, i64 %i.ep
  %.0.copyload.i55 = load i32, ptr %i.eq, align 1
  %i.er = zext i32 %.0.copyload.i55 to i64
  %i.es = or disjoint i64 %i.eo, %i.er
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.o:                                             ; preds = %bb.m
  br i1 %.not, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.et = load i8, ptr %0, align 1
  %i.eu = zext i8 %i.et to i64
  %i.ev = shl nuw i64 %i.eu, 56
  %i.ew = lshr i64 %i.do, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 32
  %i.fb = or disjoint i64 %i.fa, %i.ev
  %i.fc = getelementptr i8, ptr %0, i64 %i.do
  %i.fd = getelementptr i8, ptr %i.fc, i64 -1
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i64
  %i.fg = or disjoint i64 %i.fb, %i.ff
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.q:                                             ; preds = %.thread128
  %i.fh = icmp ugt i32 %1, 48
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fj = load i64, ptr %i.fi, align 8            ; 3 uses
  br i1 %i.fh, label %.preheader, label %.thread131, !prof !5

.preheader:                                       ; preds = %bb.q, %.preheader
  %.065.i = phi i64 [ %i.fs, %.preheader ], [ %i.ea, %bb.q ]
  %.063.i = phi ptr [ %i.gn, %.preheader ], [ %0, %bb.q ] ; 7 uses
  %.062.i = phi i64 [ %i.go, %.preheader ], [ %i.do, %bb.q ]
  %.061.i = phi i64 [ %i.gc, %.preheader ], [ %i.ea, %bb.q ]
  %.0.i = phi i64 [ %i.gm, %.preheader ], [ %i.ea, %bb.q ]
  %.0.copyload.i56 = load i64, ptr %.063.i, align 1
  %i.fk = xor i64 %.0.copyload.i56, %i.dp
  %i.fl = getelementptr inbounds nuw i8, ptr %.063.i, i64 8
  %.0.copyload.i57 = load i64, ptr %i.fl, align 1
  %i.fm = xor i64 %.0.copyload.i57, %.065.i
  %i.fn = zext i64 %i.fk to i128
  %i.fo = zext i64 %i.fm to i128
  %i.fp = mul nuw i128 %i.fo, %i.fn               ; 2 uses
  %i.fq = lshr i128 %i.fp, 64
  %i.fr = xor i128 %i.fq, %i.fp
  %i.fs = trunc i128 %i.fr to i64                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %.0.copyload.i58 = load i64, ptr %i.ft, align 1
  %i.fu = xor i64 %.0.copyload.i58, %i.ds
  %i.fv = getelementptr inbounds nuw i8, ptr %.063.i, i64 24
  %.0.copyload.i59 = load i64, ptr %i.fv, align 1
  %i.fw = xor i64 %.0.copyload.i59, %.061.i
  %i.fx = zext i64 %i.fu to i128
  %i.fy = zext i64 %i.fw to i128
  %i.fz = mul nuw i128 %i.fy, %i.fx               ; 2 uses
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = xor i128 %i.ga, %i.fz
  %i.gc = trunc i128 %i.gb to i64                 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %.0.copyload.i60 = load i64, ptr %i.gd, align 1
  %i.ge = xor i64 %i.fj, %.0.copyload.i60
  %i.gf = getelementptr inbounds nuw i8, ptr %.063.i, i64 40
  %.0.copyload.i61 = load i64, ptr %i.gf, align 1
  %i.gg = xor i64 %.0.copyload.i61, %.0.i
  %i.gh = zext i64 %i.ge to i128
  %i.gi = zext i64 %i.gg to i128
  %i.gj = mul nuw i128 %i.gi, %i.gh               ; 2 uses
  %i.gk = lshr i128 %i.gj, 64
  %i.gl = xor i128 %i.gk, %i.gj
  %i.gm = trunc i128 %i.gl to i64                 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.063.i, i64 48 ; 3 uses
  %i.go = add i64 %.062.i, -48                    ; 5 uses
  %i.gp = icmp ugt i64 %i.go, 47
  br i1 %i.gp, label %.preheader, label %bb.r, !prof !26, !llvm.loop !494

bb.r:                                             ; preds = %.preheader
  %i.gq = xor i64 %i.gc, %i.fs
  %i.gr = xor i64 %i.gq, %i.gm                    ; 2 uses
  %i.gs = icmp samesign ugt i64 %i.go, 16
  br i1 %i.gs, label %.thread131, label %bb.t

.thread131:                                       ; preds = %bb.q, %bb.r
  %.1.i139 = phi i64 [ %i.go, %bb.r ], [ %i.do, %bb.q ] ; 3 uses
  %.164.i137 = phi ptr [ %i.gn, %bb.r ], [ %0, %bb.q ] ; 6 uses
  %.166.i135 = phi i64 [ %i.gr, %bb.r ], [ %i.ea, %bb.q ]
  %.0.copyload.i62 = load i64, ptr %.164.i137, align 1
  %i.gt = xor i64 %i.fj, %.0.copyload.i62
  %i.gu = getelementptr inbounds nuw i8, ptr %.164.i137, i64 8
  %.0.copyload.i63 = load i64, ptr %i.gu, align 1
  %i.gv = xor i64 %.166.i135, %.0.copyload.i63
  %i.gw = xor i64 %i.gv, %i.ds
  %i.gx = zext i64 %i.gt to i128
  %i.gy = zext i64 %i.gw to i128
  %i.gz = mul nuw i128 %i.gy, %i.gx               ; 2 uses
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = xor i128 %i.ha, %i.gz
  %i.hc = trunc i128 %i.hb to i64                 ; 2 uses
  %i.hd = icmp samesign ugt i64 %.1.i139, 32
  br i1 %i.hd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread131
  %i.he = getelementptr inbounds nuw i8, ptr %.164.i137, i64 16
  %.0.copyload.i64 = load i64, ptr %i.he, align 1
  %i.hf = xor i64 %.0.copyload.i64, %i.fj
  %i.hg = getelementptr inbounds nuw i8, ptr %.164.i137, i64 24
  %.0.copyload.i65 = load i64, ptr %i.hg, align 1
  %i.hh = xor i64 %.0.copyload.i65, %i.hc
  %i.hi = zext i64 %i.hf to i128
  %i.hj = zext i64 %i.hh to i128
  %i.hk = mul nuw i128 %i.hj, %i.hi               ; 2 uses
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = xor i128 %i.hl, %i.hk
  %i.hn = trunc i128 %i.hm to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread131, %bb.r
  %.1.i138 = phi i64 [ %.1.i139, %bb.s ], [ %.1.i139, %.thread131 ], [ %i.go, %bb.r ]
  %.164.i136 = phi ptr [ %.164.i137, %bb.s ], [ %.164.i137, %.thread131 ], [ %i.gn, %bb.r ]
  %.2.i24 = phi i64 [ %i.hn, %bb.s ], [ %i.hc, %.thread131 ], [ %i.gr, %bb.r ]
  %i.ho = getelementptr i8, ptr %.164.i136, i64 %.1.i138 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 -16
  %.0.copyload.i66 = load i64, ptr %i.hp, align 1
  %i.hq = getelementptr i8, ptr %i.ho, i64 -8
  %.0.copyload.i67 = load i64, ptr %i.hq, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit:    ; preds = %bb.o, %bb.n, %bb.p, %bb.t
  %.0103 = phi i64 [ %i.es, %bb.n ], [ %.0.copyload.i67, %bb.t ], [ 0, %bb.p ], [ 0, %bb.o ]
  %.0102 = phi i64 [ %i.ei, %bb.n ], [ %.0.copyload.i66, %bb.t ], [ %i.fg, %bb.p ], [ 0, %bb.o ]
  %.3.i = phi i64 [ %i.ea, %bb.n ], [ %.2.i24, %bb.t ], [ %i.ea, %bb.p ], [ %i.ea, %bb.o ]
  %i.hr = xor i64 %.0102, %i.ds
  %i.hs = xor i64 %.3.i, %.0103
  %i.ht = zext i64 %i.hr to i128
  %i.hu = zext i64 %i.hs to i128
  %i.hv = mul nuw i128 %i.hu, %i.ht               ; 2 uses
  %i.hw = trunc i128 %i.hv to i64
  %i.hx = lshr i128 %i.hv, 64
  %i.hy = xor i64 %i.do, %i.hw
  %i.hz = xor i64 %i.hy, %i.dp
  %i.ia = zext i64 %i.hz to i128
  %4 = xor i128 %i.hx, %i.du
  %i.ib = mul nuw i128 %4, %i.ia                  ; 2 uses
  %i.ic = lshr i128 %i.ib, 64
  %i.id = xor i128 %i.ic, %i.ib
  %i.ie = trunc i128 %i.id to i32
  %i.if = and i32 %i.ie, 1073741823               ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = shl nuw i32 %i.if, 2
  %i.ii = or disjoint i32 %i.ih, 2
  %i.ij = select i1 %i.ig, i32 110, i32 %i.ii
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, %bb.l
  %.1 = phi i32 [ %i.ij, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit ], [ %i.dl, %bb.l ], [ %spec.select, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36 ], [ %i.an, %._crit_edge.thread ]
  ret i32 %.1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #6 comdat align 2 {
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !495

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
  %.013.i160 = phi i64 [ %i.az, %bb.h ], [ %i.f, %bb.f ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv180
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.h, label %.lr.ph167.preheader

bb.h:                                             ; preds = %.lr.ph162
  %i.ax = mul i64 %.013.i160, 10
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond183.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond183.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !496

._crit_edge163:                                   ; preds = %bb.h, %._crit_edge
  %.013.i.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %i.az, %bb.h ]
  %i.ba = icmp ugt i64 %.013.i.lcssa, 9007199254740991
  br i1 %i.ba, label %.lr.ph167.preheader, label %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge163
  %i.bb = load i64, ptr %2, align 8               ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count187 = zext nneg i32 %1 to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %bb.k, label %bb.j, !llvm.loop !497

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit, %bb.i
  %indvars.iv184 = phi i64 [ 0, %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit ], [ %indvars.iv.next185, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv184
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = icmp ugt i16 %i.be, 255
  br i1 %i.bf, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.bg = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bb, ptr noundef nonnull %i.bc) #25
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
  br i1 %i.bv, label %bb.l, label %.thread, !prof !26

bb.l:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.not146 = icmp eq i32 %1, 1
  br i1 %.not146, label %bb.n, label %bb.m, !prof !5

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
  %3 = xor i128 %i.dr, %i.bo
  %i.dv = mul nuw i128 %3, %i.du                  ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = xor i128 %i.dw, %i.dv
  %i.dy = trunc i128 %i.dx to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit: ; preds = %bb.k, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i
  %.0.i = phi i64 [ %i.bg, %bb.k ], [ %i.dy, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i ]
  %i.dz = trunc i64 %.0.i to i32
  %i.ea = and i32 %i.dz, 1073741823               ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 0
  %i.ec = shl nuw i32 %i.ea, 2
  %i.ed = select i1 %i.eb, i32 108, i32 %i.ec     ; 3 uses
  %i.ee = icmp ult i32 %i.ed, 536870912
  %i.ef = or i32 %i.ed, 536870912
  %spec.select = select i1 %i.ee, i32 %i.ef, i32 %i.ed
  br label %bb.z

bb.o:                                             ; preds = %bb.b
  %i.eg = icmp ugt i32 %1, 16383
  br i1 %i.eg, label %bb.p, label %.lr.ph167.preheader

bb.p:                                             ; preds = %bb.o
  %i.eh = shl i32 %1, 2
  %i.ei = or disjoint i32 %i.eh, 2
  br label %bb.z

.lr.ph167.preheader:                              ; preds = %.lr.ph, %.lr.ph162, %._crit_edge163, %bb.o, %bb.c, %bb.e
  %i.ej = load i64, ptr %2, align 8               ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count192 = zext i32 %1 to i64
  br label %.lr.ph167

bb.q:                                             ; preds = %.lr.ph167
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge168, label %.lr.ph167, !llvm.loop !497

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.q
  %indvars.iv189 = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next190, %bb.q ] ; 2 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv189
  %i.em = load i16, ptr %i.el, align 2
  %i.en = icmp ugt i16 %i.em, 255
  br i1 %i.en, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit, label %bb.q

._crit_edge168:                                   ; preds = %bb.q, %.thread133.thread206
  %i.eo = phi ptr [ %i.b, %.thread133.thread206 ], [ %i.ek, %bb.q ]
  %i.ep = phi i64 [ %i.a, %.thread133.thread206 ], [ %i.ej, %bb.q ]
  %i.eq = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef %0, i32 noundef %1, i64 noundef %i.ep, ptr noundef nonnull %i.eo) #25
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit:     ; preds = %.lr.ph167
  %i.er = shl i32 %1, 1                           ; 5 uses
  %i.es = zext i32 %i.er to i64                   ; 9 uses
  %i.et = load i64, ptr %i.ek, align 8            ; 3 uses
  %i.eu = xor i64 %i.et, %i.ej
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ew = load i64, ptr %i.ev, align 8            ; 4 uses
  %i.ex = zext i64 %i.eu to i128
  %i.ey = zext i64 %i.ew to i128                  ; 2 uses
  %i.ez = mul nuw i128 %i.ey, %i.ex               ; 2 uses
  %i.fa = lshr i128 %i.ez, 64
  %i.fb = xor i128 %i.fa, %i.ez
  %i.fc = trunc i128 %i.fb to i64
  %i.fd = xor i64 %i.es, %i.fc
  %i.fe = xor i64 %i.fd, %i.ej                    ; 7 uses
  %i.ff = icmp ult i32 %i.er, 17
  br i1 %i.ff, label %bb.r, label %bb.v, !prof !26

bb.r:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.fg = icmp samesign ugt i32 %i.er, 3
  br i1 %i.fg, label %bb.s, label %bb.t, !prof !26

bb.s:                                             ; preds = %bb.r
  %i.fh = getelementptr i8, ptr %0, i64 %i.es
  %i.fi = getelementptr i8, ptr %i.fh, i64 -4     ; 2 uses
  %.0.copyload.i57 = load i32, ptr %0, align 1
  %i.fj = zext i32 %.0.copyload.i57 to i64
  %i.fk = shl nuw i64 %i.fj, 32
  %.0.copyload.i58 = load i32, ptr %i.fi, align 1
  %i.fl = zext i32 %.0.copyload.i58 to i64
  %i.fm = or disjoint i64 %i.fk, %i.fl
  %i.fn = and i64 %i.es, 24
  %i.fo = lshr i64 %i.es, 3
  %i.fp = lshr exact i64 %i.fn, %i.fo             ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 %i.fp
  %.0.copyload.i59 = load i32, ptr %i.fq, align 1
  %i.fr = zext i32 %.0.copyload.i59 to i64
  %i.fs = shl nuw i64 %i.fr, 32
  %i.ft = sub nsw i64 0, %i.fp
  %i.fu = getelementptr inbounds i8, ptr %i.fi, i64 %i.ft
  %.0.copyload.i60 = load i32, ptr %i.fu, align 1
  %i.fv = zext i32 %.0.copyload.i60 to i64
  %i.fw = or disjoint i64 %i.fs, %i.fv
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.t:                                             ; preds = %bb.r
  %.not.i.i36 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i36, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28, label %bb.u, !prof !5

bb.u:                                             ; preds = %bb.t
  %i.fx = load i8, ptr %0, align 1
  %i.fy = zext i8 %i.fx to i64
  %i.fz = shl nuw i64 %i.fy, 56
  %i.ga = lshr exact i64 %i.es, 1
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = zext i8 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 32
  %i.gf = or disjoint i64 %i.ge, %i.fz
  %i.gg = getelementptr i8, ptr %0, i64 %i.es
  %i.gh = getelementptr i8, ptr %i.gg, i64 -1
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = zext i8 %i.gi to i64
  %i.gk = or disjoint i64 %i.gf, %i.gj
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.v:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.gl = icmp ugt i32 %i.er, 48
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gn = load i64, ptr %i.gm, align 8            ; 3 uses
  br i1 %i.gl, label %.preheader, label %.thread137, !prof !5

.preheader:                                       ; preds = %bb.v, %.preheader
  %.065.i.i31 = phi i64 [ %i.gw, %.preheader ], [ %i.fe, %bb.v ]
  %.063.i.i32 = phi ptr [ %i.hr, %.preheader ], [ %0, %bb.v ] ; 7 uses
  %.062.i.i33 = phi i64 [ %i.hs, %.preheader ], [ %i.es, %bb.v ]
  %.061.i.i34 = phi i64 [ %i.hg, %.preheader ], [ %i.fe, %bb.v ]
  %.0.i.i35 = phi i64 [ %i.hq, %.preheader ], [ %i.fe, %bb.v ]
  %.0.copyload.i61 = load i64, ptr %.063.i.i32, align 1
  %i.go = xor i64 %.0.copyload.i61, %i.et
  %i.gp = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 8
  %.0.copyload.i62 = load i64, ptr %i.gp, align 1
  %i.gq = xor i64 %.0.copyload.i62, %.065.i.i31
  %i.gr = zext i64 %i.go to i128
  %i.gs = zext i64 %i.gq to i128
  %i.gt = mul nuw i128 %i.gs, %i.gr               ; 2 uses
  %i.gu = lshr i128 %i.gt, 64
  %i.gv = xor i128 %i.gu, %i.gt
  %i.gw = trunc i128 %i.gv to i64                 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 16
  %.0.copyload.i63 = load i64, ptr %i.gx, align 1
  %i.gy = xor i64 %.0.copyload.i63, %i.ew
  %i.gz = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 24
  %.0.copyload.i64 = load i64, ptr %i.gz, align 1
  %i.ha = xor i64 %.0.copyload.i64, %.061.i.i34
  %i.hb = zext i64 %i.gy to i128
  %i.hc = zext i64 %i.ha to i128
  %i.hd = mul nuw i128 %i.hc, %i.hb               ; 2 uses
  %i.he = lshr i128 %i.hd, 64
  %i.hf = xor i128 %i.he, %i.hd
  %i.hg = trunc i128 %i.hf to i64                 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 32
  %.0.copyload.i65 = load i64, ptr %i.hh, align 1
  %i.hi = xor i64 %i.gn, %.0.copyload.i65
  %i.hj = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 40
  %.0.copyload.i66 = load i64, ptr %i.hj, align 1
  %i.hk = xor i64 %.0.copyload.i66, %.0.i.i35
  %i.hl = zext i64 %i.hi to i128
  %i.hm = zext i64 %i.hk to i128
  %i.hn = mul nuw i128 %i.hm, %i.hl               ; 2 uses
  %i.ho = lshr i128 %i.hn, 64
  %i.hp = xor i128 %i.ho, %i.hn
  %i.hq = trunc i128 %i.hp to i64                 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 48 ; 3 uses
  %i.hs = add i64 %.062.i.i33, -48                ; 5 uses
  %i.ht = icmp ugt i64 %i.hs, 47
  br i1 %i.ht, label %.preheader, label %bb.w, !prof !26, !llvm.loop !494

bb.w:                                             ; preds = %.preheader
  %i.hu = xor i64 %i.hg, %i.gw
  %i.hv = xor i64 %i.hu, %i.hq                    ; 2 uses
  %i.hw = icmp samesign ugt i64 %i.hs, 16
  br i1 %i.hw, label %.thread137, label %bb.y

.thread137:                                       ; preds = %bb.v, %bb.w
  %.1.i.i26145 = phi i64 [ %i.hs, %bb.w ], [ %i.es, %bb.v ] ; 3 uses
  %.164.i.i25143 = phi ptr [ %i.hr, %bb.w ], [ %0, %bb.v ] ; 6 uses
  %.166.i.i24141 = phi i64 [ %i.hv, %bb.w ], [ %i.fe, %bb.v ]
  %.0.copyload.i67 = load i64, ptr %.164.i.i25143, align 1
  %i.hx = xor i64 %i.gn, %.0.copyload.i67
  %i.hy = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 8
  %.0.copyload.i68 = load i64, ptr %i.hy, align 1
  %i.hz = xor i64 %.166.i.i24141, %.0.copyload.i68
  %i.ia = xor i64 %i.hz, %i.ew
  %i.ib = zext i64 %i.hx to i128
  %i.ic = zext i64 %i.ia to i128
  %i.id = mul nuw i128 %i.ic, %i.ib               ; 2 uses
  %i.ie = lshr i128 %i.id, 64
  %i.if = xor i128 %i.ie, %i.id
  %i.ig = trunc i128 %i.if to i64                 ; 2 uses
  %i.ih = icmp samesign ugt i64 %.1.i.i26145, 32
  br i1 %i.ih, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread137
  %i.ii = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 16
  %.0.copyload.i69 = load i64, ptr %i.ii, align 1
  %i.ij = xor i64 %.0.copyload.i69, %i.gn
  %i.ik = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 24
  %.0.copyload.i70 = load i64, ptr %i.ik, align 1
  %i.il = xor i64 %.0.copyload.i70, %i.ig
  %i.im = zext i64 %i.ij to i128
  %i.in = zext i64 %i.il to i128
  %i.io = mul nuw i128 %i.in, %i.im               ; 2 uses
  %i.ip = lshr i128 %i.io, 64
  %i.iq = xor i128 %i.ip, %i.io
  %i.ir = trunc i128 %i.iq to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread137, %bb.w
  %.1.i.i26144 = phi i64 [ %.1.i.i26145, %bb.x ], [ %.1.i.i26145, %.thread137 ], [ %i.hs, %bb.w ]
  %.164.i.i25142 = phi ptr [ %.164.i.i25143, %bb.x ], [ %.164.i.i25143, %.thread137 ], [ %i.hr, %bb.w ]
  %.2.i.i27 = phi i64 [ %i.ir, %bb.x ], [ %i.ig, %.thread137 ], [ %i.hv, %bb.w ]
  %i.is = getelementptr i8, ptr %.164.i.i25142, i64 %.1.i.i26144 ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 -16
  %.0.copyload.i71 = load i64, ptr %i.it, align 1
  %i.iu = getelementptr i8, ptr %i.is, i64 -8
  %.0.copyload.i72 = load i64, ptr %i.iu, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28: ; preds = %bb.t, %bb.y, %bb.u, %bb.s
  %.0106 = phi i64 [ %i.fw, %bb.s ], [ %.0.copyload.i72, %bb.y ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.0105 = phi i64 [ %i.fm, %bb.s ], [ %.0.copyload.i71, %bb.y ], [ %i.gk, %bb.u ], [ 0, %bb.t ]
  %.3.i.i29 = phi i64 [ %i.fe, %bb.s ], [ %.2.i.i27, %bb.y ], [ %i.fe, %bb.u ], [ %i.fe, %bb.t ]
  %i.iv = xor i64 %.0105, %i.ew
  %i.iw = xor i64 %.3.i.i29, %.0106
  %i.ix = zext i64 %i.iv to i128
  %i.iy = zext i64 %i.iw to i128
  %i.iz = mul nuw i128 %i.iy, %i.ix               ; 2 uses
  %i.ja = trunc i128 %i.iz to i64
  %i.jb = lshr i128 %i.iz, 64
  %i.jc = xor i64 %i.es, %i.ja
  %i.jd = xor i64 %i.jc, %i.et
  %i.je = zext i64 %i.jd to i128
  %4 = xor i128 %i.jb, %i.ey
  %i.jf = mul nuw i128 %4, %i.je                  ; 2 uses
  %i.jg = lshr i128 %i.jf, 64
  %i.jh = xor i128 %i.jg, %i.jf
  %i.ji = trunc i128 %i.jh to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37: ; preds = %._crit_edge168, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28
  %.0.i30 = phi i64 [ %i.eq, %._crit_edge168 ], [ %i.ji, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28 ]
  %i.jj = trunc i64 %.0.i30 to i32
  %i.jk = and i32 %i.jj, 1073741823               ; 2 uses
  %i.jl = icmp eq i32 %i.jk, 0
  %i.jm = shl nuw i32 %i.jk, 2
  %i.jn = or disjoint i32 %i.jm, 2
  %i.jo = select i1 %i.jl, i32 110, i32 %i.jn
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.thread, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37, %bb.p
  %.1 = phi i32 [ %i.jo, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37 ], [ %i.ei, %bb.p ], [ %spec.select, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit ], [ %i.ar, %._crit_edge.thread ]
  ret i32 %.1
}

declare noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE16_M_push_back_auxIJS6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %i.an = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  store ptr %i.as, ptr %i.o, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8
  store ptr %i.as, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8
  store ptr %i.aa, ptr %i.t, align 8
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8
  store ptr %i.ak, ptr %i.aj, align 8
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE15_M_allocate_mapEm.exit, !prof !5

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt11_Deque_baseISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #30 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
end_hunk_0
