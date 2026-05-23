inline.NumInlined: 962
inline.NumDeleted: 281
begin_hunk_0_@_ZN2v88internal13MutableBigInt8ToDoubleENS0_12DirectHandleINS0_10BigIntBaseEEE:bb.a
  %i.al = lshr i64 %.0.copyload.i.i.i.i71, %i.ak
  %i.am = or i64 %i.al, %i.ad
  %i.an = add nuw nsw i64 %i.o, 4294967221
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.af, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp ugt i64 %.0.copyload.i.i.i.i, 9007199254740991
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread105, %bb.f
  %.156100114 = phi i32 [ %i.ah, %.thread105 ], [ %i.k, %bb.f ]
  %.154101113 = phi i64 [ %.0.copyload.i.i.i.i71, %.thread105 ], [ %.0.copyload.i.i.i.i, %bb.f ]
  %.151102112 = phi i64 [ %i.am, %.thread105 ], [ %i.ad, %bb.f ]
  %.149104110 = phi i64 [ %i.an, %.thread105 ], [ %i.ae, %bb.f ]
  %i.ap = and i64 %.149104110, 4294967295
  %i.aq = xor i64 %i.ap, 4294967295
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp eq i32 %i.k, 0
  br i1 %i.ar, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = add nsw i32 %i.j, -2                    ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.at
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.au, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.151102111 = phi i64 [ %.151102112, %bb.g ], [ %i.ad, %bb.i ] ; 5 uses
  %.017.i = phi i32 [ %.156100114, %bb.g ], [ %i.as, %bb.i ] ; 2 uses
  %.016.i = phi i64 [ %.154101113, %bb.g ], [ %.0.copyload.i.i.i.i.i, %bb.i ] ; 2 uses
  %.0.i = phi i64 [ %i.aq, %bb.g ], [ 63, %bb.i ]
  %i.av = shl nuw i64 1, %.0.i                    ; 2 uses
  %i.aw = and i64 %i.av, %.016.i
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = add i64 %i.av, -1
  %i.az = and i64 %i.ay, %.016.i
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118

.preheader.preheader.i:                           ; preds = %bb.k
  %i.ba = icmp sgt i32 %.017.i, 0
  br i1 %i.ba, label %.lr.ph, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit

.lr.ph:                                           ; preds = %.preheader.preheader.i
  %i.bb = zext nneg i32 %.017.i to i64
  br label %bb.l

.preheader.i:                                     ; preds = %bb.l
  %i.bc = trunc nuw i64 %i.be to i32
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit, !llvm.loop !18

bb.l:                                             ; preds = %.lr.ph, %.preheader.i
  %indvars.iv.i123 = phi i64 [ %i.bb, %.lr.ph ], [ %i.be, %.preheader.i ]
  %i.be = add nsw i64 %indvars.iv.i123, -1        ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.be
  %.0.copyload.i.i.i.i24.i = load i64, ptr %i.bf, align 1
  %.not22.i = icmp eq i64 %.0.copyload.i.i.i.i24.i, 0
  br i1 %.not22.i, label %.preheader.i, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118, !llvm.loop !18

_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit: ; preds = %.preheader.i, %.preheader.preheader.i
  %i.bg = and i64 %.151102111, 1
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118

_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118: ; preds = %bb.l, %bb.k, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit
  %i.bh = add nuw nsw i64 %.151102111, 1
  %.not62 = icmp ult i64 %.151102111, 4503599627370495
  br i1 %.not62, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118
  %i.bi = add nuw nsw i64 %i.x, 1
  %i.bj = icmp ugt i32 %i.w, 1022
  br i1 %i.bj, label %bb.n, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bk = load atomic i32, ptr %i.d monotonic, align 4
  %i.bl = trunc i32 %i.bk to i1
  %i.bm = select i1 %i.bl, double -inf, double +inf
  br label %bb.o

_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread: ; preds = %bb.j, %bb.h, %bb.e, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118, %bb.m, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit
  %.252 = phi i64 [ 0, %bb.m ], [ %i.bh, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118 ], [ %.151102111, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit ], [ %.151102111, %bb.j ], [ %i.ad, %bb.h ], [ %i.ad, %bb.e ]
  %.047 = phi i64 [ %i.bi, %bb.m ], [ %i.x, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118 ], [ %i.x, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit ], [ %i.x, %bb.j ], [ %i.x, %bb.h ], [ %i.x, %bb.e ]
  %i.bn = load atomic i32, ptr %i.d monotonic, align 4
  %i.bo = trunc i32 %i.bn to i1
  %i.bp = select i1 %i.bo, i64 -9223372036854775808, i64 0
  %i.bq = shl i64 %.047, 52
  %i.br = add i64 %i.bq, 4607182418800017408
  %i.bs = or i64 %i.br, %.252
  %i.bt = or i64 %i.bs, %i.bp
  %i.bu = bitcast i64 %i.bt to double
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, %bb.n, %bb.a
  %.2 = phi double [ 0.000000e+00, %bb.a ], [ %i.v, %bb.c ], [ %i.bm, %bb.n ], [ %i.bu, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread ]
  ret double %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim(ptr readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = xor i32 %1, -1
  %i.d = zext nneg i32 %i.c to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i32 %2, -1                       ; 2 uses
  %i.g = load i64, ptr %0, align 8
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = zext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %.0.copyload.i.i.i.i = load i64, ptr %i.l, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.017 = phi i32 [ %2, %bb.c ], [ %i.f, %bb.e ]  ; 2 uses
  %.016 = phi i64 [ %3, %bb.c ], [ %.0.copyload.i.i.i.i, %bb.e ] ; 2 uses
  %.0 = phi i64 [ %i.d, %bb.c ], [ 63, %bb.e ]
  %i.m = shl nuw i64 1, %.0                       ; 2 uses
  %i.n = and i64 %i.m, %.016
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add i64 %i.m, -1
  %i.q = and i64 %i.p, %.016
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.g
  %i.r = icmp sgt i32 %.017, 0
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.s = zext nneg i32 %.017 to i64
  %i.t = load i64, ptr %0, align 8
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.h

.preheader:                                       ; preds = %bb.h
  %i.x = trunc nuw i64 %i.z to i32
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %.loopexit, !llvm.loop !18

bb.h:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv34 = phi i64 [ %i.s, %.lr.ph ], [ %i.z, %.preheader ]
  %i.z = add nsw i64 %indvars.iv34, -1            ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z
  %.0.copyload.i.i.i.i24 = load i64, ptr %i.aa, align 1
  %.not22 = icmp eq i64 %.0.copyload.i.i.i.i24, 0
  br i1 %.not22, label %.preheader, label %..loopexit.loopexit_crit_edge, !llvm.loop !18

..loopexit.loopexit_crit_edge:                    ; preds = %bb.h
  br label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %..loopexit.loopexit_crit_edge, %bb.d, %bb.g, %bb.f, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 2, %bb.g ], [ 0, %bb.f ], [ 2, %..loopexit.loopexit_crit_edge ], [ 1, %.preheader.preheader ], [ 1, %.preheader ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6BigInt16BigIntShortPrintERSo(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i32, ptr %i.a monotonic, align 4
  %2 = lshr i32 %i.e, 1
  %i.f = and i32 %2, 1073741823
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.d
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) #18 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 3) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i.i.i.i = load i64, ptr %i.i, align 4
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.0.copyload.i.i.i.i) #18 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  ret void
}

declare void @_ZN2v86bigint6AddOneENS0_8RWDigitsENS0_6DigitsE(ptr, i32, ptr, i32) local_unnamed_addr #2

declare void @_ZN2v86bigint11SubtractOneENS0_8RWDigitsENS0_6DigitsE(ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, -14) i32 @_ZNK2v88internal6BigInt27GetBitfieldForSerializationEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = shl i32 %i.b, 3
  %i.d = and i32 %i.c, -16
  %i.e = load atomic i32, ptr %i.a monotonic, align 4
  %i.f = and i32 %i.e, 1
  %i.g = or disjoint i32 %i.f, %i.d
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i64 0, 1073741824) i64 @_ZN2v88internal6BigInt27DigitsByteLengthForBitfieldEj(i32 noundef %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = lshr i32 %0, 1
  %i.b = and i32 %i.a, 1073741823
  %i.c = zext nneg i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal6BigInt15SerializeDigitsEPhm(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = and i64 %2, -8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.b, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6BigInt20FromSerializedDigitsEPNS0_7IsolateEjNS_4base6VectorIKhEE(ptr noundef %0, i32 noundef %1, ptr readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 1
  %i.b = and i32 %i.a, 1073741823                 ; 3 uses
  %i.c = trunc i32 %1 to i1
  %i.d = add nuw nsw i32 %i.b, 7                  ; 2 uses
  %i.e = lshr i32 %i.d, 3                         ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  %brmerge.not = and i1 %i.f, %i.c
  br i1 %brmerge.not, label %_ZN2v88internal13MutableBigInt13MakeImmutableINS0_7IsolateEEENS0_6HandleINS0_6BigIntEEENS4_IS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewBigIntEjNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.e, i8 noundef zeroext 0) #18 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = shl nuw nsw i32 %i.e, 1
  %i.m = and i32 %1, 1
  %i.n = or disjoint i32 %i.l, %i.m
  store atomic i32 %i.n, ptr %i.k monotonic, align 4
  %i.o = load i64, ptr %i.g, align 8
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = zext nneg i32 %i.b to i64                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 1 %2, i64 %i.s, i1 false)
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = add i64 %i.t, %i.s
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = and i32 %i.d, 2147483640
  %i.x = sub nsw i32 %i.w, %i.b
  %i.y = zext i32 %i.x to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.y, i1 false)
  %i.z = load i64, ptr %i.g, align 8              ; 3 uses
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 5 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = lshr i32 %i.ad, 1                       ; 2 uses
  %i.af = and i32 %i.ae, 1073741823               ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.not.i.i38 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i38, label %.critedge.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ah = zext nneg i32 %i.af to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d, !llvm.loop !5

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.i.i39 = phi i64 [ %i.ah, %.lr.ph ], [ %i.ai, %bb.c ] ; 2 uses
  %i.ai = add nsw i64 %indvars.iv.i.i39, -1       ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aj, align 1
  %i.ak = icmp eq i64 %.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ak, label %bb.c, label %.critedge.split.loop.exit25.i.i, !llvm.loop !5

.critedge.split.loop.exit25.i.i:                  ; preds = %bb.d
  %i.al = trunc nuw nsw i64 %indvars.iv.i.i39 to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c, %bb.b, %.critedge.split.loop.exit25.i.i
  %.not.i.i36 = phi i1 [ false, %.critedge.split.loop.exit25.i.i ], [ true, %bb.b ], [ true, %bb.c ]
  %.0.lcssa.i.i = phi i32 [ %i.al, %.critedge.split.loop.exit25.i.i ], [ 0, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.not14.i.i = icmp eq i32 %i.af, %.0.lcssa.i.i
  br i1 %.not14.i.i, label %_ZN2v88internal13MutableBigInt13MakeImmutableINS0_7IsolateEEENS0_6HandleINS0_6BigIntEEENS4_IS1_EE.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i.i
  %i.am = and i64 %i.z, -262144
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 262144
  %i.ap = and i64 %i.ao, 256
  %.not23.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not23.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 55464
  %i.at = shl i32 %i.ae, 3
  %i.au = add i32 %i.at, 16
  %i.av = shl i32 %.0.lcssa.i.i, 3
  %i.aw = add i32 %i.av, 16
  tail call void @_ZN2v88internal4Heap22NotifyObjectSizeChangeENS0_6TaggedINS0_10HeapObjectEEEiiNS0_18ClearRecordedSlotsE(ptr noundef nonnull align 8 dereferenceable(2992) %i.as, i64 %i.z, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef 1) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ax = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ay = and i32 %i.ax, -2147483647
  %i.az = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.ba = or disjoint i32 %i.ay, %i.az
  store atomic i32 %i.ba, ptr %i.ac monotonic, align 4
  br i1 %.not.i.i36, label %bb.h, label %_ZN2v88internal13MutableBigInt13MakeImmutableINS0_7IsolateEEENS0_6HandleINS0_6BigIntEEENS4_IS1_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.bb = load atomic i32, ptr %i.ac monotonic, align 4
  %i.bc = and i32 %i.bb, -2
  store atomic i32 %i.bc, ptr %i.ac monotonic, align 4
  br label %_ZN2v88internal13MutableBigInt13MakeImmutableINS0_7IsolateEEENS0_6HandleINS0_6BigIntEEENS4_IS1_EE.exit

_ZN2v88internal13MutableBigInt13MakeImmutableINS0_7IsolateEEENS0_6HandleINS0_6BigIntEEENS4_IS1_EE.exit: ; preds = %bb.h, %bb.g, %.critedge.i.i, %bb.a
  %.sroa.023.0 = phi ptr [ null, %bb.a ], [ %i.g, %.critedge.i.i ], [ %i.g, %bb.g ], [ %i.g, %bb.h ]
  ret ptr %.sroa.023.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6BigInt6AsIntNEPNS0_7IsolateEmNS0_12DirectHandleIS1_EE(ptr noundef %0, i64 noundef %1, ptr readonly captures(ret: address, provenance) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = and i32 %i.e, 2147483646
  %i.g = icmp eq i32 %i.f, 0
  %i.h = icmp ugt i64 %1, 1073741824
  %i.i = or i1 %i.h, %i.g
  br i1 %i.i, label %_ZN2v88internal13MutableBigInt4ZeroINS0_7IsolateEEENS0_6HandleINS0_6BigIntEEEPT_NS0_14AllocationTypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewBigIntEjNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 0, i8 noundef zeroext 0) #18 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store atomic i32 0, ptr %i.o monotonic, align 4
  %i.p = load i64, ptr %i.k, align 8              ; 3 uses
  %i.q = add i64 %i.p, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = lshr i32 %i.t, 1                         ; 2 uses
  %i.v = and i32 %i.u, 1073741823                 ; 3 uses
end_hunk_0
