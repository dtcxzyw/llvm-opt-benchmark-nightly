inline.NumInlined: 32791
inline.NumDeleted: 4746
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE26GrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj:bb.a
bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ] ; 4 uses
  %i.t = ptrtoint ptr %.0.i.i to i64
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.n, align 8
  store i64 %i.m, ptr %.0.i.i, align 8
  %i.w = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %0, ptr nonnull readonly %1, ptr nonnull readonly %.0.i.i, i8 noundef zeroext %i.h, i32 noundef %2, i32 noundef 0) ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31BasicGrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_S5_j.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.x = trunc i8 %i.h to i1
  %i.y = icmp ult i8 %i.g, 24
  %i.z = and i1 %i.y, %i.x
  %spec.select.i = select i1 %i.z, i8 5, i8 4     ; 3 uses
  %i.aa = tail call ptr @_ZN2v88internal8JSObject24GetElementsTransitionMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef nonnull %0, ptr nonnull %1, i8 noundef zeroext %spec.select.i) #23
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %0, ptr nonnull %1, ptr %i.aa, i32 noundef 0) #23
  %i.ab = load i64, ptr %1, align 8               ; 4 uses
  %i.ac = load i64, ptr %i.w, align 8             ; 5 uses
  %i.ad = add i64 %i.ab, 15                       ; 3 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  store atomic volatile i64 %i.ac, ptr %i.ae monotonic, align 8
  %i.af = trunc i64 %i.ac to i1
  br i1 %i.af, label %bb.f, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ag = and i64 %i.ab, -262144
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 262144       ; 2 uses
  %i.aj = and i64 %i.ai, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.aj, 0
  %i.ak = and i64 %i.ai, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not37.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = and i64 %i.ac, -262144
  %i.am = inttoptr i64 %i.al to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.am, align 262144
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not38.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ab, i64 noundef %i.ad, i64 %i.ac) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.j, !prof !13

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ab, i64 %i.ad, i64 %i.ac) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.j, %bb.i, %bb.e
  %i.ao = tail call noundef zeroext i1 @_ZN2v88internal8JSObject20UpdateAllocationSiteILNS0_24AllocationSiteUpdateModeE0EEEbPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef nonnull %0, ptr nonnull %1, i8 noundef zeroext %spec.select.i) #23 ; 0 uses
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31BasicGrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_S5_j.exit

bb.k:                                             ; preds = %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i
  %i.ar = load ptr, ptr @stdout, align 8
  tail call void @_ZN2v88internal8JSObject23PrintElementsTransitionEP8_IO_FILENS0_12DirectHandleIS1_EENS0_12ElementsKindENS4_INS0_14FixedArrayBaseEEES6_S8_(ptr noundef %i.ar, ptr nonnull %1, i8 noundef zeroext %i.h, ptr nonnull %.0.i.i, i8 noundef zeroext %spec.select.i, ptr nonnull %i.w) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31BasicGrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_S5_j.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE31BasicGrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_S5_j.exit: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, %bb.k
  %.sroa.025.0.i = phi i16 [ 256, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ 257, %bb.k ], [ 257, %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i ]
  ret i16 %.sroa.025.0.i
}

declare void @_ZN2v88internal4Heap14RightTrimArrayINS0_16FixedDoubleArrayEEEvNS0_6TaggedIT_EEii(ptr noundef nonnull align 8 dereferenceable(2992), i64, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8
  %i.b = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.c = icmp ult i32 %4, 134217729
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 238, ptr null, i64 0) #23
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.e, ptr noundef null) #23 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewFixedDoubleArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %4, i8 noundef zeroext 0) #23 ; 2 uses
  %i.h = and i8 %3, 1
  %i.i = icmp eq i8 %i.h, 0
  %i.j = icmp ult i8 %3, 5
  %i.k = and i1 %i.j, %i.i
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %1, align 8                ; 2 uses
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 2119
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = add i64 %i.l, 23
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.x, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ]
  %i.y = load i64, ptr %2, align 8
  %i.z = load i64, ptr %i.g, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE16CopyElementsImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEEjSC_S5_jii(ptr noundef nonnull %0, i64 %i.y, i32 noundef 0, i64 %i.z, i8 noundef zeroext %3, i32 noundef %5, i32 noundef %.0, i32 noundef -1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.053.0 = phi ptr [ %i.g, %bb.f ], [ null, %bb.b ]
  ret ptr %.sroa.053.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_32FastPackedDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE4EEEE16CopyElementsImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEEjSC_S5_jii(ptr nofree noundef readonly captures(none) %0, i64 %1, i32 noundef %2, i64 %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 align 2 {
bb.a:
  switch i8 %4, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 4, label %bb.m
    i8 5, label %bb.m
    i8 2, label %bb.r
    i8 10, label %bb.r
    i8 8, label %bb.r
    i8 6, label %bb.r
    i8 3, label %bb.r
    i8 11, label %bb.r
    i8 9, label %bb.r
    i8 7, label %bb.r
    i8 12, label %bb.r
    i8 13, label %bb.ab
    i8 14, label %bb.ac
    i8 15, label %bb.ac
    i8 16, label %bb.ac
    i8 17, label %bb.ac
    i8 42, label %bb.ac
    i8 43, label %bb.ac
    i8 18, label %bb.ac
    i8 19, label %bb.ac
    i8 20, label %bb.ac
    i8 21, label %bb.ac
    i8 22, label %bb.ac
    i8 23, label %bb.ac
    i8 24, label %bb.ac
    i8 25, label %bb.ac
    i8 26, label %bb.ac
    i8 27, label %bb.ac
    i8 28, label %bb.ac
    i8 29, label %bb.ac
    i8 30, label %bb.ac
    i8 31, label %bb.ac
    i8 32, label %bb.ac
    i8 33, label %bb.ac
    i8 34, label %bb.ac
    i8 35, label %bb.ac
    i8 36, label %bb.ac
    i8 37, label %bb.ac
    i8 38, label %bb.ac
    i8 39, label %bb.ac
    i8 40, label %bb.ac
    i8 41, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %7, 0
  br i1 %i.a, label %bb.c, label %.loopexit39.i

bb.c:                                             ; preds = %bb.b
  %i.b = sub i32 %6, %2                           ; 5 uses
  %i.c = add i64 %3, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32                ; 4 uses
  %i.i = add i32 %i.b, %5                         ; 6 uses
  %i.j = icmp ult i32 %i.i, %i.h
  br i1 %i.j, label %.lr.ph.i, label %.loopexit39.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.l = add i32 %6, %5
  %8 = sub i32 %2, %i.l
  %9 = add i32 %8, %i.h                           ; 3 uses
  %min.iters.check = icmp ult i32 %9, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i
  %i.m = add i32 %2, %i.h
  %i.n = xor i32 %6, -1
  %i.o = add i32 %i.m, %i.n
  %i.p = add i32 %i.b, %i.o
  %i.q = icmp slt i32 %i.p, %i.i
  br i1 %i.q, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %9, -4                         ; 3 uses
  %i.r = add i32 %i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = add i32 %i.i, %index
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x i64> splat (i64 -2251799814209537), ptr %i.u, align 1
  store <2 x i64> splat (i64 -2251799814209537), ptr %i.v, align 1
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.w = icmp eq i32 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !3464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %9, %n.vec
  br i1 %cmp.n, label %.loopexit39.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.i, %middle.block
  %.03140.i.ph = phi i32 [ %i.i, %vector.scevcheck ], [ %i.i, %.lr.ph.i ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03140.i = phi i32 [ %i.z, %scalar.ph ], [ %.03140.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.x = sext i32 %.03140.i to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.x
  store i64 -2251799814209537, ptr %i.y, align 1
  %i.z = add nuw i32 %.03140.i, 1                 ; 2 uses
  %i.aa = icmp ult i32 %i.z, %i.h
  br i1 %i.aa, label %scalar.ph, label %.loopexit39.i, !llvm.loop !3465

.loopexit39.i:                                    ; preds = %scalar.ph, %middle.block, %bb.c, %bb.b
  %.030.i = phi i32 [ %7, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %middle.block ], [ %i.b, %scalar.ph ]
  %i.ab = icmp eq i32 %.030.i, 0
  br i1 %i.ab, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit39.i
  %i.ac = add i32 %6, %2                          ; 2 uses
  %i.ad = icmp ult i32 %2, %i.ac
  br i1 %i.ad, label %.lr.ph43.i, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit

.lr.ph43.i:                                       ; preds = %bb.d
  %i.ae = add i64 %1, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %i.ah = add i64 %3, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %xtraiter76 = and i32 %6, 1
  %lcmp.mod77.not = icmp eq i32 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph43.i
  %i.ak = sext i32 %2 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = sext i32 %5 to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  store double %i.ap, ptr %i.ar, align 1
  %i.as = add i32 %2, 1
  %i.at = add i32 %5, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph43.i
  %.042.i.unr = phi i32 [ %2, %.lr.ph43.i ], [ %i.as, %.prol.loopexit.unr-lcssa ]
  %.02941.i.unr = phi i32 [ %5, %.lr.ph43.i ], [ %i.at, %.prol.loopexit.unr-lcssa ]
  %i.au = icmp eq i32 %6, 1
  br i1 %i.au, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit, label %.lr.ph43.i.new

.lr.ph43.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph43.i.new
  %.042.i = phi i32 [ %i.bn, %.lr.ph43.i.new ], [ %.042.i.unr, %.prol.loopexit ] ; 3 uses
  %.02941.i = phi i32 [ %i.bo, %.lr.ph43.i.new ], [ %.02941.i.unr, %.prol.loopexit ] ; 3 uses
  %i.av = sext i32 %.042.i to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.av
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = lshr i64 %i.ax, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = sitofp i32 %i.az to double
  %i.bb = sext i32 %.02941.i to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bb
  store double %i.ba, ptr %i.bc, align 1
  %i.bd = add i32 %.042.i, 1
  %i.be = add i32 %.02941.i, 1
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bf
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.bi = lshr i64 %i.bh, 32
  %i.bj = trunc nuw i64 %i.bi to i32
  %i.bk = sitofp i32 %i.bj to double
  %i.bl = sext i32 %i.be to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bl
  store double %i.bk, ptr %i.bm, align 1
  %i.bn = add i32 %.042.i, 2                      ; 2 uses
  %i.bo = add i32 %.02941.i, 2
  %exitcond.not.i.1 = icmp eq i32 %i.bn, %i.ac
  br i1 %exitcond.not.i.1, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit, label %.lr.ph43.i.new, !llvm.loop !3466

bb.e:                                             ; preds = %bb.a
  %i.bp = icmp slt i32 %7, 0
  br i1 %i.bp, label %bb.f, label %.loopexit46.i

bb.f:                                             ; preds = %bb.e
  %i.bq = add i64 %1, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = trunc nuw i64 %i.bu to i32
  %i.bw = sub i32 %i.bv, %2                       ; 3 uses
  %i.bx = add i32 %i.bw, %5                       ; 2 uses
  %i.by = add i64 %3, -1
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = lshr i64 %i.cb, 32
  %i.cd = trunc nuw i64 %i.cc to i32
  %i.ce = icmp slt i32 %i.bx, %i.cd
  br i1 %i.ce, label %.lr.ph.i37, label %.loopexit46.i

.lr.ph.i37:                                       ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cg = sext i32 %i.bx to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i37
  %indvars.iv.i = phi i64 [ %i.cg, %.lr.ph.i37 ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %indvars.iv.i
  store i64 -2251799814209537, ptr %i.ch, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ci = load i64, ptr %i.ca, align 8
  %i.cj = ashr i64 %i.ci, 32
  %i.ck = icmp slt i64 %indvars.iv.next.i, %i.cj
  br i1 %i.ck, label %bb.g, label %.loopexit46.i, !llvm.loop !3467

.loopexit46.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  %.028.i = phi i32 [ %7, %bb.e ], [ %i.bw, %bb.f ], [ %i.bw, %bb.g ] ; 2 uses
  %i.cl = icmp eq i32 %.028.i, 0
  br i1 %i.cl, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit46.i
  %i.cm = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 10624
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = add i32 %.028.i, %2                     ; 2 uses
  %i.cs = icmp ult i32 %2, %i.cr
  br i1 %i.cs, label %.lr.ph50.i, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit

.lr.ph50.i:                                       ; preds = %bb.h
  %i.ct = add i64 %1, -1
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = add i64 %3, -1
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph50.i
  %.049.i = phi i32 [ %2, %.lr.ph50.i ], [ %i.dk, %bb.l ] ; 2 uses
  %.02748.i = phi i32 [ %5, %.lr.ph50.i ], [ %i.dl, %bb.l ] ; 3 uses
  %i.cz = sext i32 %.049.i to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cz
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, %i.cq
  br i1 %i.dc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dd = sext i32 %.02748.i to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dd
  store i64 -2251799814209537, ptr %i.de, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.df = lshr i64 %i.db, 32
  %i.dg = trunc nuw i64 %i.df to i32
  %i.dh = sitofp i32 %i.dg to double
  %i.di = sext i32 %.02748.i to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.di
  store double %i.dh, ptr %i.dj, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE26GrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj:bb.a
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ] ; 4 uses
  %i.t = ptrtoint ptr %.0.i.i to i64
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.n, align 8
  store i64 %i.m, ptr %.0.i.i, align 8
  %i.w = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef nonnull %0, ptr nonnull readonly %1, ptr nonnull readonly %.0.i.i, i8 noundef zeroext %i.h, i32 noundef %2, i32 noundef 0) ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31BasicGrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_S5_j.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.x = tail call ptr @_ZN2v88internal8JSObject24GetElementsTransitionMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef nonnull %0, ptr nonnull %1, i8 noundef zeroext 5) #23
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %0, ptr nonnull %1, ptr %i.x, i32 noundef 0) #23
  %i.y = load i64, ptr %1, align 8                ; 4 uses
  %i.z = load i64, ptr %i.w, align 8              ; 5 uses
  %i.aa = add i64 %i.y, 15                        ; 3 uses
  %i.ab = inttoptr i64 %i.aa to ptr
  store atomic volatile i64 %i.z, ptr %i.ab monotonic, align 8
  %i.ac = trunc i64 %i.z to i1
  br i1 %i.ac, label %bb.f, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = and i64 %i.y, -262144
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 262144       ; 2 uses
  %i.ag = and i64 %i.af, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ag, 0
  %i.ah = and i64 %i.af, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not37.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = and i64 %i.z, -262144
  %i.aj = inttoptr i64 %i.ai to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 262144
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not38.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.y, i64 noundef %i.aa, i64 %i.z) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, label %bb.j, !prof !13

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.y, i64 %i.aa, i64 %i.z) #23
  br label %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i

_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i: ; preds = %bb.j, %bb.i, %bb.e
  %i.al = tail call noundef zeroext i1 @_ZN2v88internal8JSObject20UpdateAllocationSiteILNS0_24AllocationSiteUpdateModeE0EEEbPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef nonnull %0, ptr nonnull %1, i8 noundef zeroext 5) #23 ; 0 uses
  %i.am = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1925), align 1, !range !16, !noundef !17
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31BasicGrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_S5_j.exit

bb.k:                                             ; preds = %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i
  %i.ao = load ptr, ptr @stdout, align 8
  tail call void @_ZN2v88internal8JSObject23PrintElementsTransitionEP8_IO_FILENS0_12DirectHandleIS1_EENS0_12ElementsKindENS4_INS0_14FixedArrayBaseEEES6_S8_(ptr noundef %i.ao, ptr nonnull %1, i8 noundef zeroext %i.h, ptr nonnull %.0.i.i, i8 noundef zeroext 5, ptr nonnull %i.w) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31BasicGrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_S5_j.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE31BasicGrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_S5_j.exit: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i, %bb.k
  %.sroa.025.0.i = phi i16 [ 256, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ 257, %bb.k ], [ 257, %_ZN2v88internal8JSObject17SetMapAndElementsEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEENS4_INS0_14FixedArrayBaseEEE.exit.i ]
  ret i16 %.sroa.025.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8
  %i.b = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.c = icmp ult i32 %4, 134217729
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 238, ptr null, i64 0) #23
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.e, ptr noundef null) #23 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewFixedDoubleArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %4, i8 noundef zeroext 0) #23 ; 2 uses
  %i.h = and i8 %3, 1
  %i.i = icmp eq i8 %i.h, 0
  %i.j = icmp ult i8 %3, 5
  %i.k = and i1 %i.j, %i.i
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %1, align 8                ; 2 uses
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 2119
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = add i64 %i.l, 23
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.x, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ]
  %i.y = load i64, ptr %2, align 8
  %i.z = load i64, ptr %i.g, align 8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE16CopyElementsImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEEjSC_S5_jii(ptr noundef nonnull %0, i64 %i.y, i32 noundef 0, i64 %i.z, i8 noundef zeroext %3, i32 noundef %5, i32 noundef %.0, i32 noundef -1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.053.0 = phi ptr [ %i.g, %bb.f ], [ null, %bb.b ]
  ret ptr %.sroa.053.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_126FastDoubleElementsAccessorINS1_31FastHoleyDoubleElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE5EEEE16CopyElementsImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEEjSC_S5_jii(ptr nofree noundef readonly captures(none) %0, i64 %1, i32 noundef %2, i64 %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 align 2 {
bb.a:
  switch i8 %4, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 4, label %bb.m
    i8 5, label %bb.m
    i8 2, label %bb.r
    i8 10, label %bb.r
    i8 8, label %bb.r
    i8 6, label %bb.r
    i8 3, label %bb.r
    i8 11, label %bb.r
    i8 9, label %bb.r
    i8 7, label %bb.r
    i8 12, label %bb.r
    i8 13, label %bb.ab
    i8 14, label %bb.ac
    i8 15, label %bb.ac
    i8 16, label %bb.ac
    i8 17, label %bb.ac
    i8 42, label %bb.ac
    i8 43, label %bb.ac
    i8 18, label %bb.ac
    i8 19, label %bb.ac
    i8 20, label %bb.ac
    i8 21, label %bb.ac
    i8 22, label %bb.ac
    i8 23, label %bb.ac
    i8 24, label %bb.ac
    i8 25, label %bb.ac
    i8 26, label %bb.ac
    i8 27, label %bb.ac
    i8 28, label %bb.ac
    i8 29, label %bb.ac
    i8 30, label %bb.ac
    i8 31, label %bb.ac
    i8 32, label %bb.ac
    i8 33, label %bb.ac
    i8 34, label %bb.ac
    i8 35, label %bb.ac
    i8 36, label %bb.ac
    i8 37, label %bb.ac
    i8 38, label %bb.ac
    i8 39, label %bb.ac
    i8 40, label %bb.ac
    i8 41, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %7, 0
  br i1 %i.a, label %bb.c, label %.loopexit39.i

bb.c:                                             ; preds = %bb.b
  %i.b = sub i32 %6, %2                           ; 5 uses
  %i.c = add i64 %3, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32                ; 4 uses
  %i.i = add i32 %i.b, %5                         ; 6 uses
  %i.j = icmp ult i32 %i.i, %i.h
  br i1 %i.j, label %.lr.ph.i, label %.loopexit39.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.l = add i32 %6, %5
  %8 = sub i32 %2, %i.l
  %9 = add i32 %8, %i.h                           ; 3 uses
  %min.iters.check = icmp ult i32 %9, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i
  %i.m = add i32 %2, %i.h
  %i.n = xor i32 %6, -1
  %i.o = add i32 %i.m, %i.n
  %i.p = add i32 %i.b, %i.o
  %i.q = icmp slt i32 %i.p, %i.i
  br i1 %i.q, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %9, -4                         ; 3 uses
  %i.r = add i32 %i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = add i32 %i.i, %index
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x i64> splat (i64 -2251799814209537), ptr %i.u, align 1
  store <2 x i64> splat (i64 -2251799814209537), ptr %i.v, align 1
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.w = icmp eq i32 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !3506

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %9, %n.vec
  br i1 %cmp.n, label %.loopexit39.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.i, %middle.block
  %.03140.i.ph = phi i32 [ %i.i, %vector.scevcheck ], [ %i.i, %.lr.ph.i ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03140.i = phi i32 [ %i.z, %scalar.ph ], [ %.03140.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.x = sext i32 %.03140.i to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.x
  store i64 -2251799814209537, ptr %i.y, align 1
  %i.z = add nuw i32 %.03140.i, 1                 ; 2 uses
  %i.aa = icmp ult i32 %i.z, %i.h
  br i1 %i.aa, label %scalar.ph, label %.loopexit39.i, !llvm.loop !3507

.loopexit39.i:                                    ; preds = %scalar.ph, %middle.block, %bb.c, %bb.b
  %.030.i = phi i32 [ %7, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %middle.block ], [ %i.b, %scalar.ph ]
  %i.ab = icmp eq i32 %.030.i, 0
  br i1 %i.ab, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit39.i
  %i.ac = add i32 %6, %2                          ; 2 uses
  %i.ad = icmp ult i32 %2, %i.ac
  br i1 %i.ad, label %.lr.ph43.i, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit

.lr.ph43.i:                                       ; preds = %bb.d
  %i.ae = add i64 %1, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %i.ah = add i64 %3, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %xtraiter76 = and i32 %6, 1
  %lcmp.mod77.not = icmp eq i32 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph43.i
  %i.ak = sext i32 %2 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = sext i32 %5 to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  store double %i.ap, ptr %i.ar, align 1
  %i.as = add i32 %2, 1
  %i.at = add i32 %5, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph43.i
  %.042.i.unr = phi i32 [ %2, %.lr.ph43.i ], [ %i.as, %.prol.loopexit.unr-lcssa ]
  %.02941.i.unr = phi i32 [ %5, %.lr.ph43.i ], [ %i.at, %.prol.loopexit.unr-lcssa ]
  %i.au = icmp eq i32 %6, 1
  br i1 %i.au, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit, label %.lr.ph43.i.new

.lr.ph43.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph43.i.new
  %.042.i = phi i32 [ %i.bn, %.lr.ph43.i.new ], [ %.042.i.unr, %.prol.loopexit ] ; 3 uses
  %.02941.i = phi i32 [ %i.bo, %.lr.ph43.i.new ], [ %.02941.i.unr, %.prol.loopexit ] ; 3 uses
  %i.av = sext i32 %.042.i to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.av
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = lshr i64 %i.ax, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = sitofp i32 %i.az to double
  %i.bb = sext i32 %.02941.i to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bb
  store double %i.ba, ptr %i.bc, align 1
  %i.bd = add i32 %.042.i, 1
  %i.be = add i32 %.02941.i, 1
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bf
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.bi = lshr i64 %i.bh, 32
  %i.bj = trunc nuw i64 %i.bi to i32
  %i.bk = sitofp i32 %i.bj to double
  %i.bl = sext i32 %i.be to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bl
  store double %i.bk, ptr %i.bm, align 1
  %i.bn = add i32 %.042.i, 2                      ; 2 uses
  %i.bo = add i32 %.02941.i, 2
  %exitcond.not.i.1 = icmp eq i32 %i.bn, %i.ac
  br i1 %exitcond.not.i.1, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit, label %.lr.ph43.i.new, !llvm.loop !3466

bb.e:                                             ; preds = %bb.a
  %i.bp = icmp slt i32 %7, 0
  br i1 %i.bp, label %bb.f, label %.loopexit46.i

bb.f:                                             ; preds = %bb.e
  %i.bq = add i64 %1, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = trunc nuw i64 %i.bu to i32
  %i.bw = sub i32 %i.bv, %2                       ; 3 uses
  %i.bx = add i32 %i.bw, %5                       ; 2 uses
  %i.by = add i64 %3, -1
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = lshr i64 %i.cb, 32
  %i.cd = trunc nuw i64 %i.cc to i32
  %i.ce = icmp slt i32 %i.bx, %i.cd
  br i1 %i.ce, label %.lr.ph.i37, label %.loopexit46.i

.lr.ph.i37:                                       ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cg = sext i32 %i.bx to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i37
  %indvars.iv.i = phi i64 [ %i.cg, %.lr.ph.i37 ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %indvars.iv.i
  store i64 -2251799814209537, ptr %i.ch, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ci = load i64, ptr %i.ca, align 8
  %i.cj = ashr i64 %i.ci, 32
  %i.ck = icmp slt i64 %indvars.iv.next.i, %i.cj
  br i1 %i.ck, label %bb.g, label %.loopexit46.i, !llvm.loop !3467

.loopexit46.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  %.028.i = phi i32 [ %7, %bb.e ], [ %i.bw, %bb.f ], [ %i.bw, %bb.g ] ; 2 uses
  %i.cl = icmp eq i32 %.028.i, 0
  br i1 %i.cl, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit46.i
  %i.cm = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 10624
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = add i32 %.028.i, %2                     ; 2 uses
  %i.cs = icmp ult i32 %2, %i.cr
  br i1 %i.cs, label %.lr.ph50.i, label %_ZN2v88internal12_GLOBAL__N_129CopyPackedSmiToDoubleElementsENS0_6TaggedINS0_14FixedArrayBaseEEEjS4_jii.exit

.lr.ph50.i:                                       ; preds = %bb.h
  %i.ct = add i64 %1, -1
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = add i64 %3, -1
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph50.i
  %.049.i = phi i32 [ %2, %.lr.ph50.i ], [ %i.dk, %bb.l ] ; 2 uses
  %.02748.i = phi i32 [ %5, %.lr.ph50.i ], [ %i.dl, %bb.l ] ; 3 uses
  %i.cz = sext i32 %.049.i to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cz
  %i.db = load atomic volatile i64, ptr %i.da monotonic, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, %i.cq
  br i1 %i.dc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dd = sext i32 %.02748.i to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dd
  store i64 -2251799814209537, ptr %i.de, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.df = lshr i64 %i.db, 32
  %i.dg = trunc nuw i64 %i.df to i32
  %i.dh = sitofp i32 %i.dg to double
  %i.di = sext i32 %.02748.i to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.di
  store double %i.dh, ptr %i.dj, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_1
